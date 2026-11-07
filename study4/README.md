# study4 - systems, concurrency and scripting programs

13 programs (2,495 lines, 14 files) written the way an experienced Go/Rust/Python programmer new to olang would write
them, against `/home/user/wt/s3c/build/out` (olang at 0a1b122), on 2026-10-09 between 22:50 and 23:59 CEST. Each
program was written naturally first and then changed only as far as the compiler (or a wrong answer) forced; every
change is listed below with its rule. All 13 build with `-b`; every one with tasks was run under `-r`
(ThreadSanitizer) with no report; every one without tasks was run under `-i` and agreed with `-b`.

Layout: `*.olang` the programs (final form) and `todo_session.sh` (the scripted session `todo` was checked with);
`first/` the first-written versions of nine of them; `repro/rNN-*.olang` one minimal reproducer per finding, each with
a header giving the rule, the expected and the actual behaviour, verified against the snapshot; `min/` the bisection
and probe programs the reproducers came from (memory measurements: `min/mem.sh PROG N...`); `out/` program outputs
under `-b` and `-i`; `notes.md` the raw log kept while writing; `recheck/` study 3's reproducers rerun.

Classes: **(a) BUG** - a crash, a wrong answer, a hang, unbounded memory the program did not ask for, or `-b`/`-i`
disagreeing; **(b) OVER-REJECTION** - a correct program refused; **(c) DIAGNOSTIC** - the message did not say what to
write, or said something false; **(d) FRICTION** - by the rules, rigid in real code.

## Study 3's findings on this snapshot

Rerun from `recheck/`: r01 (List/Map copies), r02 (fixed-array return IR), r03 (`==` on array references), r04
(recursive descent), r05, r07, r08 (O17), r09 (`Keys()`), r11 (context struct), r12, r13 (`l[i]++`) are fixed. r06
(for-in copy lent to a callee) and r10 (one scope for a list's chunks and its elements' referents) are the recorded
limits, and both were hit again here in new shapes (r09, r25 below).

## Findings, most serious first

| # | class | rule | finding | reproducer |
|---|-------|------|---------|------------|
| 1 | (a) | O26a | **A loop's per-iteration temporaries are kept for the life of the result when only a NUMBER computed from them reaches the returned value.** `line := mk(i); v := measure(line); if v > s.best { s.best = v }` in a function returning `s` (a struct holding any reference) moves `line` into the result scope: the IR passes `%sarg0` to `mk`. 4M iterations: 96 MB, against 11 MB when `v` only feeds a condition. O26a says "never ... a field holding no reference, or a call that cannot keep it". The log tailer following 1M lines retained 630 MB while keeping three. | `repro/r01-o26a-number-flow-retains.olang` |
| 2 | (a) | T2b | **A null dereference the optimizer can see is a miscompile, not a trap.** Peeking an empty stack (`s.top.v` with `top` defaulted to null, after inlining) under the default `-O3`+LTO deletes the rest of `main` including its return: control falls into the C `main` that calls it, and the program prints its first lines forever. Variants: prints nothing and exits 48; prints 20 garbage bytes and exits 0; prints an earlier line twice. T2b says UB, "in practice a deterministic trap" - only `-d` traps (139); `-i` reports it. | `repro/r02-null-deref-miscompiles.olang` |
| 3 | (c) | B11, O10c | **The scope note proposes a fix that is already written** - "make it where 'out' lives: 'Join&out(...)'" pointing at a line that says `Join&out(...)`; rebuilding gives the same error and note. Six times in six programs: a callee returning a String *value* (the scope argument does not move the local's own storage), and a destination that is an O26a-returned local (#4). Each time the fix that worked was a different spelling (`p String&out = ...`, `String&return`, a `$` copy). | `repro/r05-note-proposes-what-is-written.olang` |
| 4 | (b)+(c) | O26a, O25a, E25 | **`&x` naming a local the function returns means the local's block, not the result scope it lives in.** `text := mk&out(...)` and `text String&out = ...` cannot go into `out`; `String&return` can. The C2d note suggests `T&x(...)`, the O10c note `Env&c(...)`. | `repro/r03-scope-of-returned-local.olang` |
| 5 | (b) | O17 | **The grouping idiom `l := try m.Get(k); l.Push(x)` (a Map of Lists) is refused inside a loop**, even pushing a literal: "the callee can store through it". A List is a handle; Push writes the list's state, which lives where the map does, never `l`'s own slot. Outside a loop it compiles. | `repro/r07-o17-list-from-map-in-loop.olang` |
| 6 | (b)+(c) | O10c, O25h | **A depth-first walk over records in a Map** (`r := try g.rules.Get(t); for d in r.Deps { g.visit(d) }`) is refused at the recursive call, the note pointing into the callee's `g.seen.Put(t, true)` and saying nothing to change. `r Rule&g = ...` compiles. Make's dependency walk. | `repro/r25-dfs-over-map-copy.olang` |
| 7 | (b)+(c) | O26a, O26 | **A text local that starts as `""` and is assigned a join on some path, returned inside a constructor** (`return R(n, note)`), is O26 "build it in '&return'" - at the constructor, without naming the local; `return note` alone compiles. Twice: a fetcher's per-URL note, a test runner's failure detail. | `repro/r06-o26-text-local-in-constructor.olang` |
| 8 | (b)+(c) | C2d, O23a | **A struct holding a List, built for a Map field of a `mut` receiver**, is refused even when the list is declared where the receiver lives - the note's own fix (`deps mut List<String&>&m = ...`) gives the same error and note. In a plain function with a local map it compiles. Worked around by Putting the rule empty, fetching it back as `r mut Rule&m` and filling it in place. | `repro/r08-c2d-list-for-receiver-map.olang` |
| 9 | (b)+(c) | O25, O26a | **"declare it with ':='" for a local declared with `:=`**: `fields := line.Split(" ")` where `line` was moved to the result scope by O26a and `fields` was not. Adding an unrelated `s.last.Push(line)` makes it compile. | `repro/r04-o25-colon-equals-says-colon-equals.olang` |
| 10 | (b) | O10c, O25h | **Nested for-in copies**: `for p in parts { for m in p { all.Push(m) } }` - concatenating per-task result lists - is refused with no note; one level, or indexing the outer level, compiles. Study 3's r06 limit one level further. | `repro/r09-nested-for-in-copies.olang` |
| 11 | (a) | P7, S2 | Under `-r` with `os.OnCrash` set, a fault inside ThreadSanitizer's own bookkeeping (a recursion past its trace's depth) **hangs the process**: the crash handler blocks in `__tsan_atomic64_load` (gdb). Without OnCrash the same program aborts (66) or completes. Narrow, but a hang loses the report. | `repro/r11-race-oncrash-hang.olang` |
| 12 | (b) | S12b, E28 | A match giving arrays of different lengths into an `Array<I64>` result: "every value of this match is Array<I64, 3>, found Array<I64, 2>"; the conditional form compiles. | `repro/r10-match-value-array-lengths.olang` |
| 13 | (c) | T20, E22 | **An error type is accepted as the type of a parameter, local or field**, though no value of it can exist (`fn retryable(e http.HttpError) Bool` - what a Go programmer writes). It surfaces later as "'E' is not an enum type" or "'$' has nothing to render - this call returns no value". | `repro/r13-error-type-as-value-type.olang` |
| 14 | (c) | E11b | Join-piece hints only in some positions: a name after a `$` piece is "expected ')', found 'mark'"; `"," ("a" if c else $n)` on one line is "expected '(', found end of line" at the line's end. After a literal, and with a line break before `(`, the good E11b hints appear. | `repro/r12-join-piece-messages.olang` |
| 15 | (c) | M10, S8a, L9 | Cascades: a type written without its module (`Json` for `json.Json`) gives 11 errors for one cause - every case pattern, every binding at every use, a bogus S8a "the same on every build" - and no "did you mean 'json.Json'" (39 errors for 2 causes in json2csv); a keyword field (`done`) gives L9 plus a parse error at every use. | `repro/r14-cascades.olang` |
| 16 | (c)+(d) | B9c, B10 | A top-level `if Profile == "prod"` with no `-D Profile` says "this top-level condition uses what exists only in the branches it decides, or does not check" - nothing about `-D`. And a build constant cannot have a default: declaring it is B10's error whenever `-D` defines it. | `repro/r15-undefined-build-constant.olang` |
| 17 | (c) | R11, S3 | A catch block ending in its value (Rust/Kotlin: `catch { log(); -1 }`) gives R11 and S3 per clause; made twice in this study (6 errors in jobrun). The message pair never connects the block's last line with `default`. | `repro/r20-catch-block-value.olang` |
| 18 | (c) | P1g, T7a | Per-task array results: the results array must be `Array<Array<I64>&>` (T7a), and a task returning `Array<I64>` gets "convert after the join" - impossible; the fix is the function's result `Array<I64>&`. | `repro/r16-p1g-convert-after-join.olang` |
| 19 | (c) | R11, B5b | `catch os.OsError { eprintln(...); os.Exit(2) }` in value position: "a clause here leaves, or gives the value with 'default v'" - nothing says os.Exit is an ordinary call needing `unreachable` after it. | `repro/r18-r11-after-exit.olang` |
| 20 | (c) | T7a, G16b | `nums.Map(fn(n) String { ... }).Join(";")`: T7a twice at the call with notes into the prelude, then "Array<String> has no method 'Join'"; the fix (`String&` as the lambda's result) is never pointed at. | `repro/r19-map-to-text-t7a-in-prelude.olang` |
| 21 | (c) | E11b | For a method chain holding a lambda, E11b's hint is "write '$cols'" - the chain's first name; without the lambda it is the whole chain. | `repro/r17-e11b-hint-first-name.olang` |
| 22 | (d) | std/io | **`io.Lines` latches the end of the file**: after one Exhausted, Next never reads again, so it cannot follow a file being written (tail -f). The tailer wrote its own reader over `io.Read`. | `repro/r21-io-lines-latches-eof.olang` |
| 23 | (d) | principle 1 | **What a loop puts into a long-lived scope stays there**: a StringBuilder field replaced per turn (no `StringBuilder.Clear`) costs ~190 B a turn (1M turns: 193 MB); text sent through a `Chan<String&>` lives as long as the channel (~23 B a message; `Chan<String>` is T7a's error); `List.RemoveAt` keeps the removed copies. Long-running services written the Go way grow without bound. | `repro/r22-long-lived-scope-growth.olang`, `min/pipemem.olang` |
| 24 | (d) | B3e, K1 | **`-i` refuses tasks** - every concurrent program here (8 of 13) stops at its first `join` - while the compile-time evaluator runs the same join's tasks in sequence and bakes the global (`constant double`). When -i stops, deferred code does not run, so temp directories are left behind. | `repro/r23-interpreter-refuses-tasks-evaluator-runs.olang` |
| 25 | (d) | O25 | A default table from a global replaced by loaded data (`cases := Builtin; if ... { cases = loaded.ToArray() }`) cannot be one variable: exact scopes. The global's elements were copied into the local list. | `repro/r24-global-or-local-table.olang` |

Smaller friction, no reproducer:

- **std/chan has no Close.** Draining a pool after a cancellation needs hand-made end markers; my first collector
  deadlocked on the rendezvous channel exactly as the same Go code would without `close` (jobrun now sends an exit
  marker from each worker's `defer`).
- **os.Exec** has no working directory (mk declared `extern fn chdir`; sandbox ran the compiler through `env -C`), no
  timeout or kill for a hung child, and there is no way to start a process without waiting (fetch started its test
  server with `os.Run("... & echo $! > pidfile")` and killed it with `os.Run("kill ...")`).
- **Spawned functions cannot fail** (P4): every task needed a wrapper catching into a default value.
- **Lambda captures** (D16c, study 3's r28): capturing a local List or Map for `os.RunOnStack` or `Filter` needs it
  declared `mut List<T>&` (2 errors each, D16c + T25c); a number cannot be written from a lambda or be a reference
  (T24), so RunOnStack's result went through a global (3 errors for one intent).
- **No message for a program error**: `assert false, "no flag named " $name` in an error path is decided while
  compiling (S18c) and `abort`/`unreachable` take no message - written as `eprintln(...)` then `abort`.
- **Keywords as names**: `done` was the natural name of a counter, a field and a local three times (L9; L9a admits
  keywords only as method names). D3a forbids `Kind Kind` (a field named like its type) twice.
- **Integer widths**: `x := 0` is I32 and every count is I64 (`total += n` is T6b's error); `-D Workers=4` is an I32,
  so `Workers * 1000000000` wraps silently to -294967296 (E6c).
- **`_ := f()`** is D8c's error; discarding a value is `try f() catch E { }`.
- **Errors carry no data** (T20): config's "unknown key 'x'" had to live on a struct the failing call never returned.
- **Nested trys**: `try Item(try a, try b) catch E { ... }` - one catch over several fallible fields - is 9 errors;
  a helper function declaring `? E` is the spelling.
- **`fail` and `os.Exit` skip deferred code** (S19c), as Go's os.Exit does: mk's first demo left its temp directory;
  the fix was `os.Exit(run())`.
- **D13c**: `Array<List<T>>(n)` needs a fill, and the fill is one shared list (T8) - right for spawn targets that
  replace each element, a trap for anything that pushes into them.
- **-i memory** (study 3's r16): a 230 KB JSON file kills `-i` after 32 s (`-b`: 14 ms); config's 5,000-deep self-test
  takes 2.9 GB under `-i` (17 MB at 50,000 deep under `-b`).

## Programs

| program | lines | what it uses | workarounds | runs |
|---------|-------|--------------|-------------|------|
| `pgrep.olang` - parallel grep over a tree | 179 | os.ReadDir/Stat, filepath.Join, `spawn parts[t] = f()`, atomics on globals (`AtomicAdd`/`AtomicLoad`), List.Sort, os.Exit, eprintln | 6: `p String&out = Join(...)` after the note's `Join&out` (#3); `text String&return = ReadFile(...)` after `ReadFile&out` (#4); indexed outer loop (#10); a shared fill for the results (D13c); `$` on three text pieces (E11b) | -b (= a Python reference on 784 files, 659 matches), -r clean, -i: tasks |
| `jobrun.olang` - worker pool, per-job timeouts, fail-fast and run-deadline cancellation | 189 | std/chan bounded + rendezvous, RecvUntil/SendUntil, cancel.After/Cancel, defer, `is`/`as` on enums, match values, Map.Update, Keys().ToList() | 4: `} default -1` (#17); statement match for the job lists (#12); `$word` copy after `describe&tally` (#3); exit markers from `defer` (no Close; my deadlock) | -b, -r clean, -i: tasks |
| `mk.olang` - make: rules, mtime staleness, os.Exec | 252 | os.Exec (uncaptured), MkTemp/RemoveAll/WriteFile/Stat, filepath, defer, a recursive DFS with cycle detection | 7: `r mut Rule&m = Get(...)` (O17 then T25c, good notes); rule Put empty and filled in place (#8); `catch { unreachable }` after Has (R9); `r Rule&m` for the DFS (#6); parenthesized multi-line join; `extern fn chdir`; `os.Exit(run())` so defer runs | -b, -i (same output, 1.3 s) |
| `tailer.olang` - follows a log another task writes | 166 | io.Write/Read, `spawn x = f()` for two tasks, cancel deadline, Map.Update, List.RemoveAt, io.Writer + PadStart/PadEnd, rand | 5: `Array<I64, 4>` field (T7a); `$` pieces; `$mark` after a parse error (#14); P4 wrappers; a hand-written follower (#22). Unfixed: retains every line (#1) | -b, -r clean (3 runs), -i: tasks |
| `json2csv.olang` - JSON array of objects to CSV | 164 | std/json (Parse, Position, `is`, match on Json), Map, io.Writer, Replace, os.Create/Close | 6: `json.Json` and `import "std/math"` (39 errors, #15); `String&` lambda result (#20); rows Put empty, fetched as `row mut Map&t = try t.rows.Last()` after the note's fix failed (#3); `$(...)` for a chain (#21); `unreachable` after os.Exit (#19) | -b (2,000 rows checked with Python's csv), -i same on the sample; -i killed on 230 KB |
| `fetch.olang` - parallel HTTP downloads with retries and backoff | 181 | std/http (Send with timeout, Header), local `python3 -m http.server` started late so the first tries fail, `spawn results[i] = f()`, cancel token, os.Run, WriteFile | 5: `String&url` result (O14, good note); catch clauses instead of an error-typed parameter (#13); `note String&return` (#7); `$(...)` piece; server started through the shell (no background start) | -b (self-check: 0 problems), -r clean, -i: tasks |
| `dedup.olang` - duplicate files by two 64-bit hashes | 197 | struct Map key with supplied Hash/Eq (E10b), os.RunOnStack around a recursive walk, Filter/Sort, parallel hashing, os.Remove | 4: `files mut List&` and `bySize mut Map&` for lambdas (D16c); `Array<Digest>&` result (#18); `l mut List<String&>&groups` (#5) | -b (= Python's grouping of the s3c tree), -r clean, -i: tasks |
| `pipeline.olang` - source -> parsers -> sink with backpressure and a stop record | 139 | bounded channels, SendUntil with a token cancelled by a parser, reorder buffer in a Map, atomics, `spawn x = f()` | 3: `$(...)` after "expected '('" (#14); `done` renamed (L9); `rec String&raw` (note right) | -b, -r clean (3 runs), -i: tasks |
| `pmat.olang` - parallel matrix product, static bands and an atomic work counter, power iteration | 199 | `spawn a[t], b[t] = f()` (two results), AtomicAdd/AtomicStore/AtomicCompareSwap on F64 bits, slices of a `mut` array, linalg.Gemm check, a global baked from a join | 0 | -b (= linalg.Gemm; the baked global = the run time), -r clean, -i: tasks (even the baked global's initializer) |
| `sandbox.olang` - builds and runs olang programs in MkTemp dirs | 154 | os.Exec capturing (the compiler, the binaries), os.Env, MkTemp/RemoveAll, defer with a flag, Rename for an atomic report, OnCrash, atomic work counter | 6: `try` before a catch (my slip); `$(...)` pieces; `detail String&return` (#7); `src String&loaded`; global table copied into the local list (#25); `env -C` for the working directory | -b (3/5 pass, the 2 failures intended), -r clean, -i: tasks |
| `cli.olang` + `todo.olang` - a GNU-style flags library and a to-do CLI on a JSON file | 194 + 149 | error sets across modules (`cli.CliError`, `os.OsError`, `json.JsonError`, own), match on text with several values, json.Object/Encode, WriteFile + Rename, PadEnd/ToUpper, `-t` tests | 10: `FlagKind` (D3a); `String&p` results (good notes); eprintln + abort for a message (S18c); `itemOf` helper for nested trys (9 errors); `$` copy plus `itemOf&s(j)` after two notes that led nowhere (#3); `$text`, `$json.Encode` pieces | -t (2 tests), -b, -i same on a 15-command session (`todo_session.sh`) |
| `config.olang` - defaults by `-D Profile`, a file, env overrides, a 50,000-deep self-test | 254 | top-level `if` on `-D` and TargetOs, recursive-descent parser, os.Env, RunOnStack, io.Writer | 8: always `-D Profile` (#16); `ValueKind` (D3a); `String&p`; `$` copies of words; `v String&return` after `Env&c` and `String&c` (#3, #4); `catch { unreachable }` ×2; a global for RunOnStack's result; a path-list parser (my quadratic keys: 7.4 GB) | -b, -r, -i same at depth 2,000; -i 2.9 GB at 5,000, killed at 50,000 |
| `sysinfo.olang` - machine report through std/ffi and extern | 78 | ffi.Call with array arguments (gethostname, getloadavg, strlen), Pack/Unpack, ffi.Has, extern beside ffi | 2: `raw mut Array<U8>&return` (O10d); `catch ... default` (#17) | -b, -i same |

Probes beyond the programs, all correct and TSan-clean except r11: `min/rdv.olang` (4 senders with 1 ms SendUntil
deadlines on a rendezvous: every value reported sent was received exactly once, 5 runs), `min/spawnlist.olang` (lists
of new text handed back through spawn targets, read after churning: 0 bad), `min/joinpaths.olang` (leaving a join by
return, error and break waits for every task; defer in tasks; 1,000 spawned lambdas), `min/histo.olang` (AtomicAdd on
array elements from 8 tasks, spawn targets that are fields, 4 parallel os.Exec of 200,000 lines), `min/taskprint.olang`
(RunOnStack inside tasks).

## Recommendations, by PRINCIPLES.md

1. **Fix O26a's flow (#1) - principle 1.** A value that holds no reference (a number, a Bool) carries nothing to the
   result; only a reference, or a value holding references, read out of the local should count as the local reaching
   the result. Today a loop over a stream into a returned summary - the shape of every tailer, counter and parser - keeps
   every turn's temporaries, which is exactly the garbage principle 1 promises a scope reclaims.
2. **Make null reads trap as T2b says (#2) - principles 2 and "the compiler checks what it can".** Give olang's
   functions LLVM's `null_pointer_is_valid` attribute (the kernel's `-fno-delete-null-pointer-checks`): a load through
   null stays a load and faults, at no per-operation cost - only the optimizer's licence to assume a dereferenced pointer
   non-null goes. Tried by hand on the snapshot's IR: with the attribute added to the root module's attribute group, r02
   traps (status 139) after its two lines; bench/binarytrees at depth 14 runs 144,462,819 instructions against
   144,427,699 (+0.02%, valgrind), same output. Today the commonest null bug (peek of an empty stack) turns into an
   infinite loop of earlier output, which no amount of testing under `-d` shows.
3. **Notes must only propose what compiles (#3, #4, #8) - "solid and smooth".** Before printing "make it where 'y'
   lives: ...", check that the suggested binding would discharge the obligation; when the local is a value (a String
   result), suggest `x T&y = ...`; when the destination is an O26a local, suggest `&return` - or, better, make `&x` of an
   O26a-moved local mean the scope it lives in (#4), so the obvious spelling works.
4. **Handles are their state (#5, #6, #8, #10).** List, Map and StringBuilder are now one `mut` reference to a record; a
   copy of one, or a for-in copy of one, should lend exactly that reference. O17's "can keep what it builds in the value's
   slots" and O25h's copy homes treat the handle like a struct of slots, which is where the grouping idiom, the DFS over a
   map, the receiver-built rule and the nested concatenation all fail. One rule - a value whose only state is a
   reference is lent as that reference - closes all four.
5. **O26a through constructors for assigned text (#7).** A local initialized from a static literal and later assigned
   built text should move like one initialized by a temporary when the returned value holds it.
6. **Long-running loops (#23) - principle 1.** Add `StringBuilder.Clear` (List.Clear already keeps its chunks), and state
   the arena rule where users will meet it (std/chan, io): what is put into a longer-lived scope stays until it closes.
   For channels of text, consider having Send copy into the ring's own scope and Recv build where the result lands, so
   a `Chan<String&>` reuses its slots' storage instead of accumulating every message.
7. **io.Lines follows (#22).** Do not latch the end of the file: a Next after Exhausted reads again (one system call).
   That makes "tail -f" `for { line := try lines.Next() catch Exhausted { wait; continue } }`, as Go's bufio allows.
8. **chan.Close** with Recv/RecvUntil failing with a `Closed` word and `for v in ch` ending at it. Every pool in this study
   reinvented end markers, and the first attempt deadlocked.
9. **os.Exec options and process handles - principle 5 (scripting, tools).** A `dir` parameter
   (`posix_spawn_file_actions_addchdir_np`), a cancel token for a timeout that kills the child, and `os.Start` returning a
   process with Wait and Kill. A make, a test runner and an HTTP test harness each needed one of the three.
10. **-i runs joins (#24) - principle 5.** Run a join's tasks in sequence at the join, as K1 already does while compiling,
    so fan-out programs work as scripts (a channel between two tasks would still need threads - stop with the current
    message there). And run deferred code when -i stops, so a script's temp directories go.
11. **A default for a build constant (#16).** Let an immutable top-level declaration be overridden by `-D` of the same
    name (Go's `-ldflags -X`), instead of B10's error - "configuration knobs belong in -D" then works without `-D`. Say
    "unknown name 'Profile' - define it with -D Profile=VALUE" when it is missing.
12. **Reject an error type as a value's type (#13)** at the declaration, naming catch clauses as the way to tell words
    apart.
13. **Diagnostics (#14, #15, #17-#21)**: E11b's hint wherever a piece follows a piece; one error per unknown name (suppress
    errors on a pattern's bindings and S8a when the subject's type is unknown) with "did you mean 'json.Json'" for a type an
    import exports; "a block's last value is not the clause's value - write '} default v'"; "a call that ends the program
    is not a leave - write 'unreachable' after it"; P1g naming the function's result type; T7a through a generic pointed
    at the lambda's result.
14. **Words as names - principle 3.** `done` is the natural word for a counter or a flag; extend L9a to field names
    after `.` (a field is only ever reached through its owner), and consider `abort "message"` so a program error can say
    what went wrong without being decided while compiling.
15. **Direction questions** (not decided here): whether `x := 0` should be I64 now that every count and length is I64
    (T6a); whether a spawned function may fail with the error delivered at the join (P4); whether a lambda may capture a
    handle (List/Map) by value, since a copy of one is the same collection.

## What worked well

Concurrency was the strongest area: join/spawn with several results per task, spawn targets that are fields and
array elements, a rendezvous channel whose SendUntil really withdraws a timed-out value, cancellation tokens, atomics
as methods on globals, fields and array elements, a work-stealing counter and a compare-and-swap on F64 bits - all
right the first time, and ThreadSanitizer silent on every program (8 concurrent programs and 5 probes), including
parallel os.Exec. pmat compiled on its first attempt, and a global computed with join/spawn was baked as a constant
equal to the run time's answer. os.Exec (captured and not), MkTemp/RemoveAll, Rename, ReadDir, Stat, std/json,
std/http against a local server, std/ffi with array arguments, filepath, io.Writer with defer, RunOnStack for a
50,000-deep recursive parse, OnCrash on a segfault and on a failed slice check (now with FILE:LINE), and `-b`/`-i`
agreement on every program `-i` could run. Many messages were exactly right: O14's "borrow it: 'T&p'", T25c's
"declare it 'x mut T&'", E11b's "'(' after a piece of text calls it - write '$(...)'", D16c's "capture a reference to
it", T7a's "write Array<T, N>".

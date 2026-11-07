# Bulk review 8 - tools area

## Progress
Covered (each compared built, -debug -sanitize, interpret, and where it applies test / test -interpret):
- payload stack: raises in defers/errdefers while another is in flight, rethrow, multi-type clauses, generators,
  tasks (nested joins, task clauses), main escape, test escape, across modules, memory over many raises (flat both).
- captures (closures, generators, tasks - mixed value/reference/array/value-holding-reference captures).
- destructor order (loops, errors, Vec/Map/struct holders, partial generator walks) - agree.
- explain -asm/-ir (functions, methods, generic instances, generators, values, -quick, unknown names).
- doc/explain/LSP hover for builders, payload words, raised-by-name errors, packed structs, contract functions,
  deprecation (doc marks, LSP hints and hover), "not a value"/"as a value" lines, effects/facts (contracts allocate,
  payload raises, drop effects), olang api rows.
- tidy: reproducible builds (plain, -debug, -quick, -sanitize; a C import and a .c import), profiler on small stacks
  and tasks, K2 abort said once, S18c at the program's call, T.Nullable (built, baked, interpreted), json keys per
  policy (built, baked, interpreted).
- olang fix over old programs (builders, literals, prelude builders) and idempotence on today's files.
- std error payloads (os's paths per call, built = interpreted).
Not covered: msgs.olang's cleanup beyond spot checks, MCP, doc -html, explain -asm for other targets.

## Findings

### F1 (low, NEW: test -interpret, ad6be32/53c380a) `olang test -interpret` drops the error trace after a `!` in a test
Reproducer f04_testbang.olang. Built test binary prints `FILE:LINE: PE.Bad(3)` then the S18d trace (`raised here`,
`try passed it on`) then `FAIL - ...`; `test -interpret` prints the first line and the FAIL line, no trace. Also a
contract's `!` in a test (f02_tests.olang: the condition's trace line `twice: x >= 0` missing). interp.olang RunTests
prints `TraceText` only for Escaped and Raised stops; RunMain prints it for `ExitKind.Error` (main's `!` agrees). B3e
says the output is the binary's line for line; evaldiff compares only ok/FAIL keys, so the suite does not see it.

### F2 (medium, NEW: builder_migrate 0c9c07b/49310a9, olang fix B17) `olang fix` leaves calls of std functions whose name changed when they became builders
Reproducer fixold/old2.orig (and old1.orig): a program written against std as of fcdb202. `olang fix` rewrites
`net.Loopback4()` -> `net.IP.Loopback4()`, `time.Parse` -> `time.Date.Parse`, `os.Exec` -> `os.Output.Exec`,
`os.Stat` -> `os.FileInfo.Stat`, `regex.Compile`, `utf8.Runes`, `list.Of`, `json.Parse`, `"42".ParseAs<I64>(10)`
-> `I64.Parse("42", 10)` - every builder whose name stayed - but leaves `net.ParseIP`, `net.ParseAddr`,
`time.DateOf` (and `net.ListenUDP` by the same mechanism) untouched: the tool reads the importer's std as it is now,
where those names are gone (`IP.Parse`, `Addr.Parse`, `Date.Of`, `UDP.Listen`), and only finds a builder whose name
equals the old one. The fixed file then fails to compile (`module std/net declares no 'ParseIP'`). B17's promise: "a
file from any earlier time reads in today's language in one command". Fix: the tool needs the renames std made (a table
of the stripped names, or reverse the stripping: `ParseIP` = `Parse` + `IP` for a builder `IP.Parse`).
Also seen on the way: the diagnostic `module std/net declares no 'ParseIP'` has no rule tag and no did-you-mean (it gives
`did you mean 'Date.Of'?` for DateOf by edit distance, nothing for ParseIP), and a second error R14 `the call does not
fail with Error` at the same statement for the same cause.

### F3 (low, OLDER, diagnostics) a constructor called with no arguments says E14 three times, "found 0", "found 1", "found 2"
Reproducer f08_e14thrice.olang: `P()` for `struct(a I64, b String, c I64)` gives three E14 rows at one place. OLDER
(the same six rows at fcdb202). B11: one cause, one error.

### Note: `olang fix` intermittently said `olang fix: cannot run .../tools_X` (variadic_migrate, clone_migrate,
int_literal_i64 three runs in a row) with status 2, then ran the same tool fine; not reproduced in 5 later runs. The
message does not say why (os.Output.Exec's error, which now carries the path, is dropped). Not chased further.

### F4 (HIGH, NEW: T19b, 332caf4/e9d8fde - lower.olang `mainPayloads`) an error whose word carries a payload escaping `main` skips every defer, errdefer and destructor of main
Reproducers f16_mainescape.olang (a unique resource, defer, errdefer, an inner block's defer), f17_oserror_main.olang
(the everyday case: `defer w.Flush()!` in main, `try os.ReadFile(...)` failing - os.Error's words all carry the path
now, so the buffered line is lost; the compiler at fcdb202 printed it). f16_plain.olang, the same program with a
payload-free word, runs `inner deferred, errdeferred, deferred 1, destruct 1` before `unhandled error`; with `Bad(n
I64)` nothing of it runs - built, -debug and interpret alike. Cause: `lowering.raise` calls `mainPayloads` (which ends
the block with `Term.Exit(Unhandled)`) before `ln.leave(0)`, so the exit is taken at the raise/try site with every
scope of main still open. Violates S19 (defer on every way out but the process-ending ones - an escaping error is
main's way out, as for plain words), S19e, O15 (a destructor runs once where its holder lets go - here never). Fix:
say the payload after `leave(0)` (the payload record lives on its own stack, untouched by the deferred code).

### F5 (medium, NEW: test -interpret 53c380a/ad6be32) `olang test -interpret` runs no destructor of a test that fails
Reproducers f19_testassert.olang (an assert failing in a helper), f18_plain.olang / f18_testescape.olang (an error
leaving the test). The built test binary unwinds the failed test's open scopes (P1d): `destruct 2`, `destruct 1`
before the FAIL line; `test -interpret` prints none of them - the failed test's resources are never released, and the
run goes on to the next test in the same process (a file, a socket, a lock held across tests). B3e/CLAUDE.md say
its output is the built binary's line for line; evaldiff compares only the ok/FAIL keys, so the suite cannot see it.

### F6 (medium, OLDER - same at fcdb202) an error leaving a test's body skips the test's deferred code
Reproducer f18_plain.olang: `defer io.Println("deferred " $r.id)!` in a test whose `try f()` lets E.Bad through: the
built binary runs the destructor (`destruct 1`) but never the deferred code; same at fcdb202. S19 says deferred code
runs on every way out of its block, "an error leaving the function - ... a `try` whose error no clause takes"
included; S16 makes an error leaving a test an ordinary failure, not a process-ending one. (A failed assert is S16d/S18's
"no cleanup" class, so f19's skipped `helper defer`/`deferred` is as specified - only the destructors are P1d's.)

### F7 (low, NEW: test -interpret) `test -interpret`'s "no test is named by 'w'" line has no did-you-mean
f02_tests.olang with word `twce`: built `... - did you mean 'twice'?`, interpreted the bare line (B11's did-you-mean,
B3a). Also with several files (f04_testbang.olang f19_testassert.olang next).

### F8 (low, NEW: B21 x R3b payloads) `olang api` calls a raised error's change a "changed global"
api/old, api/new: `error Raised(n I64)` -> `Raised(n I64, why String)` is listed `breaking  changed global: error
Raised(n I64)`. Correctly breaking; the kind word is wrong (an error, not a global). The rest of api's rows checked and
right: a payload's field type changed, a payload added to a plain word, a builder's defaulted parameter, a builder
removed and added, a packed struct's field widths.

### F9 (medium, NEW: T19b, lower.olang `isMain`) a method named `main` in the root module ends the program when it lets a payload error out
Reproducer f29_methodmain.olang: `fn (r Runner) main() I64 ? PE` raising `PE.Bad(3)`, its caller `try
Runner(...).main() catch PE e default -e.n` - built and interpreted, the program prints `unhandled error: PE.Bad(3)`
and exits 1 instead of the caller taking it. `lowering.isMain` asks only "the root module's, named main" -
`FnDecl(f).Name`, which a method's name is too (a builder named `main` cannot give an I64, D19, so only methods). Should be
the program's entry (the checker knows it: interp's `Entries()`), not the name.

### F10 (low, OLDER - same at fcdb202) a length known at the program's call is lost through a generic that passes its by-value array on
Reproducers f33_s18c2.olang / f33b.olang. `first<T>(xs Array<T>)` asserting `xs.Len() > 0`, called with
`Array<I64>(0)`: directly (f33b) both S18c and E16 decide it while compiling; through `wrap<T>(xs Array<T>) T {
return first(xs) }` (f33_s18c2) `wrap` gets one instance (it decides nothing on the length) and `first` an instance
of length -1 (`explain first`: `first<I64, -1>`), so the false assert aborts at run time. G29/G30 say a by-value array
parameter binds its length per call and its asserts on lengths are decided per instance. Not unsound (the check still
runs); a compile-time error became a run-time abort.

### Also seen, not filed (OLDER, docs): SPEC still writes error words upper case in examples (`ListError.EMPTY`, R1c,
B5, G33's `io.Error.FULL`), std/json's comments `io.Error.FULL` (three places); std/net's and std/time's header comments
name `ParseIP`/`ParseAddr`/`time.DateOf`, renamed by the builders round (NEW, trivial). explain -ir's "inlined into it"
list of one function's code differs depending on which inlined function is asked (f32_asm2.olang: `viaValue` vs
`big`). LSP hover on a payload word (`ReadErr.Bad` in a raise) and on an imported error type in a catch clause gives
nothing (docmod/main.olang 5:54, lib.olang 18:37).

## Checked and found sound (tools area)
- The payload stack (T19b) under build, -debug -sanitize and interpret: raises inside defer/errdefer while another
  error is in flight, a clause raising anew, item-less and several-type clauses, statement clauses, generators,
  tasks with clauses and nested joins (the earliest-spawned failure's payload), across modules, errors kept in a Vec,
  2M raises flat (1.7 MB built; interpret flat at 56 MB). f01, f24, f28, docmod/main2.
- The capture fix (bde0b1e): closures, generators and task lambdas with mixed captures agree with the build (f05, f27).
- Destructor order build vs interpret (f09): loops with break/continue, errors through errdefer/defer, Vec/Map/struct
  holders, a Map replace, a partially walked generator.
- test -interpret: words, status 3, the option table (-quick/-debug refused, `build -interpret` refused), property
  tests through a forked child (f30) - same lines as built but F1/F5/F7.
- explain -asm/-ir: generic instances listed each, a method, a generator, a function used as a value, -quick, an
  uncalled function, unknown names refused (no did-you-mean - B11d/B11b, cosmetic).
- doc/explain/hover/completion/doc -html for builders, payload words, raised-by-name errors, packed structs,
  contracts, deprecation; api rows (F8's word aside).
- Tidy: reproducible builds byte for byte (plain, -debug, -quick, -sanitize, C header and .c imports); the profiler
  over 20,000 small-stack threads and tasks; K2 one error; S18c at the program's call for std's BitSet; T.Nullable
  built = baked = interpreted; json keys per policy and @json.Key/@json.Naming built = baked = interpreted (f13).
- Effects/facts: contracts and payloads owning storage say allocates, plain payloads do not; drop effects through a
  holder (f14, f22).
- olang fix: literal_migrate on every old literal form tried (f old3), the prelude's builders, std builders whose name
  stayed; idempotent over 15 of today's files (0 changed).
- std payloads: os's path per call, net/time/regex/csv/json offsets and texts (f20, f31), built = interpreted but
  getaddrinfo (a listed limit).

## Report
High: F4 (a payload error escaping main skips main's defers, errdefers and destructors - os.Error escaping main loses a
deferred Flush). Medium: F2 (olang fix misses std functions renamed into builders: ParseIP, ParseAddr, DateOf,
ListenUDP), F5 (test -interpret runs no destructor of a failed test), F6 OLDER (an error leaving a test skips its
deferred code), F9 (a root-module method named main ends the program on a payload error). Low: F1 (test -interpret
drops a `!`'s trace), F3 OLDER (E14 three times), F7, F8, F10 OLDER.

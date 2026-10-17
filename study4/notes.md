# working notes (raw)

## pgrep
- O10c out.Push(p), p := filepath.Join(dir,name) in loop; note says 'Join&out(...)' - applying it changes nothing (same error, same note). Works: p String&out = ..., out.Push(Join(..)) direct, out.Push($p). (c) min/join1.olang
- C2d Match(path, n, line) - line from text read per iteration: correct. Fix 'ReadFile&out(path)' still C2d because out is an O26a-returned local: &out names its block, the instance lands in the result scope. 'String&return' works. (b)+(c) min/lines2,lines3
- O10c nested for-in: for p in parts { for m in p { all.Push(m) } } (b) - no note; parts[i] indexing works. min/nest1-3
- D13c Array<List<Match>>(tasks): 'give a fill' -> fill shares one list (T8); fine here since spawn replaces each. (d)
- E11b x3 ($ on String pieces) known.
- -i: refuses tasks (stage 1).
- -r: clean.

## jobrun
- R11+S3: catch block ending in a value expression ('-1', Rust/Kotlin habit): R11 + S3 per clause (6 errors for 3 causes). fixed with '} default -1'. (c) cascade
- S12b: match value of array literals of different lengths into a return of Array<Job&> -> "every value is Array<Job&, 6>, found Array<Job&, 4>"; the conditional form accepts it. (b) min/matcharr.olang
- O10c tally.Update(word) with word from line := describe(r.Result) in the loop: correct rejection; note says 'describe&tally(...)', applying it gives the same error and the same note (c). fixed with $word.
- my bug: rendezvous results + early drain = deadlock. No chan Close -> exit marker sent by each worker's defer. (d) no Close
- -b ok, -r clean, -i refuses tasks.

## mk
- O17: r := try m.rules.Get(cur); r.Commands.Push(x) -> O17 note 'x T&y'; then T25c 'r mut Rule&'; final r mut Rule&m = ... ok (2 steps, messages fine)
- C2d: deps := List<String&>() in loop, m.rules.Put(t, Rule(t, deps)) in a mut receiver method: correct (state in loop block). Note's fix 'deps mut List<String&>&m = ...' still C2d with the same note. In a plain fn with a local map, '&rules' works. (b)+(c) min/rule1.olang. Workaround: Put(Rule(t, List()), then r mut Rule&m = Get, push.
- R9 return try m.built.Get(t) after Has(t): catch { unreachable } (d)
- O10c: r := try m.rules.Get(t) (value copy); for d in r.Deps { m.make(d) } -> O10c pointing at callee's m.built.Put(target, false), no note. r Rule&m fixes. (b)/(c)
- multi-line join needs parens (known)
- os.Exec has no working dir; no os.Chdir (d) -> extern chdir
- fail skips defer: temp dir leaked (S19c) (d) -> os.Exit(run())
- -b == -i (os.Exec, MkTemp, RemoveAll under -i fine)
- x := 0 is I32 vs Len() I64: 'total += n' T6b (d) (min/uaf1)

## tailer
- T7a: perLevel Array<I64> = Array<I64>(4) in a struct -> Array<I64, 4> (message good) (d known)
- E11b: '$n mark "\n"' (name after a $ piece) -> raw parse error "expected ')', found 'mark'"; after a literal it is E11b's hint (c) min/joinpiece*.olang
- P4: spawned fn may not declare errors -> wrappers with catch default (d) known rule
- io.Lines latches EOF: Exhausted forever; cannot follow a growing file (d) -> hand-written Follower over io.Read
- StringBuilder has no Clear; replacing a field builder in a long-lived struct leaks ~190B/turn (min/memB) (d)
- O25 self-contradiction: fields := line.Split(" ") in a loop whose line feeds a returned struct's map: 'declare it with :=' though it is := ; adding an unrelated s.last.Push(line) makes it compile (b)+(c) min/keys1,keys2,keys3
- BUG O26a: a per-iteration line whose NUMBER (measure(line) -> I64) is stored in a field of a returned struct that holds references is moved into the result scope: every iteration retained. leak8: 96MB at 4M iterations, leak11 (number only in a condition) 11MB. tailer: 630MB for 1M lines. IR: mk gets %sarg0. (a) min/leak8,leak10,leak11
- RemoveAt on a List of copies keeps the copies' memory (arena) - expected
- -r clean; -i refuses tasks

## json2csv
- 'Json' unqualified (must be json.Json) + missing import math -> 39 errors: every pattern binding of an unknown case 'unknown name' at each use, bogus S8a on 'it is Json.Arr or it is Json.Obj', R11, "'o' is no import here"; no did-you-mean 'json.Json' (c)
- items.Map(fn(x) String {...}) -> T7a twice inside the prelude (notes), then 'Array<String> has no method Join'; fix: lambda result String& (c)/(d) (r34 kin)
- O10c t.rows.Push(row), row := Map() in loop of a fn with t mut Table&: note 'row mut Map<..>&t = ...' applied -> same error, same note (c)+(b). Worked: t.rows.Push(Map()); row mut Map&t = try t.rows.Last() catch {unreachable}
- E11b hint on 'cols.ToArray().Map(..).Join(",") "\n"' says "write '$cols'" - the first name of the chain only (c)
- R11: catch { eprintln; os.Exit(2) } - os.Exit is no leave (D10a); needs 'unreachable' after; message doesn't say (c)/(d)
- -b == -i on the sample; a 230KB JSON (2000 rows): -b 14 ms, -i killed (OOM) after 32 s (r16 known)

## fetch
- O14 saveName returning Base(...) of the param from a built String& result: message names 'T&p' (good) -> String&url
- E22: fn retryable(e http.HttpError) accepted (error type as param/local/field type!), 'e != http.HttpError.BAD_URL' -> "'HttpError' is not an enum type"; '$x' on such a local says "this call returns no value" (c) min/errparam*.olang
- O26: note := "" ; note = "x" $n in a branch; return R(n, note) -> O26 'build it in &return' without naming note; returning note itself compiles (b)+(c) min/note1.olang. fix note String&return = ""
- E11b '(' after a piece: good message
- no os.Start / background process: server started with os.Run("... & echo $! > pidfile") and killed with os.Run("kill ..") (d)
- -b ok, -r clean, -i refuses tasks

## dedup
- D16c+T25c: os.RunOnStack(.., fn() { walk(root, files) }) with files := List<Entry>() -> 2 errors (D16c 'capture a reference to it' + T25c cascade). fix files mut List<Entry>& = List() (r28 known; List is a handle now, a captured copy is the same list)
- D16c: Filter(fn(f) { bySize.Get(..) }) capturing a local Map read-only -> same; fix bySize mut Map& (r28 known, still open)
- P1g: spawn parts[t] = digestRange(..) with parts Array<Array<Digest>&> (T7a forces &) and the fn returning Array<Digest>: 'convert after the join' - impossible; the fix is the fn's result Array<Digest>& (c)
- O17: l := try groups.Get(d); l.Push(x) inside a loop (m in the fn block): O17 even pushing a literal; outside a loop fine (b) min/handle4,handle5. fix l mut List<String&>&groups = ...
- E10b struct Digest(A U64, B U64, Size I64) as Map key: works
- agrees with python on s3c tree; -r clean; -i refuses tasks

## pipeline
- '$i "," ("stop" if c else $x)' on one line: "expected '(', found end of line" at the line's end (c); with a line break before '(' the message is E11b's good one. min/paren1,paren2
- L9: 'done' is a keyword - natural variable name (d)
- O10c SendUntil(raw, rec) with rec built in the source's loop: correct; note 'rec mut String&raw = ...' works (mut unneeded)
- text through a channel accumulates where the channel lives: ~23 B/message retained (1M msgs 33MB); Chan<String> is T7a's error, so no by-value text channel (d) min/pipemem, chanval
- -b ok, -r clean (3 runs), -i refuses tasks

## pmat
- compiled first try: spawn sums[t], ns[t] = band(...) (two results), slices of a mut array per row, AtomicAdd work counter, AtomicCompareSwap on F64 bits, linalg.Gemm cross-check
- SmallBands := smallBands(12, 3) (join/spawn inside) baked as constant double, agrees with run time
- -i refuses tasks even in that global's initializer (pmat.olang:147) - the evaluator ran the same join while compiling (d)/(a?) inconsistency
- -r clean

## sandbox
- 'x.Next() catch default ""' without try: "expected end of line, found 'catch'" (c minor)
- E11b with conditional pieces: "write '$(...)'" good
- O26 again: detail := "" assigned in branches, returned in Outcome(...) -> detail String&return (b)+(c) (note1)
- C2d: loaded.Push(Case(Base(f), src)), src := ReadFile in the loop: correct; no note; src String&loaded works
- O10c/O25: cases := Builtin (global) then cases = loaded.ToArray() (local) impossible: one variable cannot point at the global table or local data (exact scope) (d) min/globsel*.olang - copied the globals into the local list
- os.Exec has no working dir: 'env -C dir' (d); no timeout / kill for a hung child (d)
- os.OnCrash: segfault (index) and abort (slice) print the message, status 139/134 kept
- BUG?: null dereference at -O3 prints garbage and exits 0 (spec T2b: 'in practice a deterministic trap'); -d traps 139; -i stops with a message. null3: println("v") printed TWICE (UB exploited). min/null1,null3
- deep recursion tests collapsed by LLVM (TRE) - no overflow; see config for RunOnStack
- -b ok, -r clean, -i refuses tasks

## cli + todo
- D3a: struct(Name.., Kind Kind, ..) - a field/param named like its type (Go's 'Kind Kind') (d); renamed the type FlagKind
- T25c/O14 returning a Map's String& value from a built String& result: good message -> String&p
- S18c: 'assert false, "no flag named " $name' in a catch is decided while compiling; abort/unreachable take no message -> eprintln + abort (d)
- R20+R9: 'try Item(try a, try b, ..) catch JsonError {..}' -> 9 errors; nested trys each propagate, no catch over a block of trys; helper fn itemOf (d)/(c)
- store loading: s.items.Push(it) from JSON: note 'it mut Item&s' (no help), then 'ReadFile&s(...)' (applied -> same error, same note), Parse&s needs text in s too, finally $-copy of the text + 'itemOf&s(j)' (the 3rd note). 5 tries. (c)
- -b == -i on a 15-command session (6.6 s under -i); cli tests pass; -r ok

## config
- no -D given: "error[B9c]: this top-level condition uses what exists only in the branches it decides, or does not check" for an undefined 'Profile' (c); no way to give a build constant a default (d)
- D3a Kind Kind again
- RunOnStack lambda returning a number: depth mut I64& (T24 + D11a) and depth = .. (D16c) - 3 errors; a global instead (d) r28
- note 'key mut String&out' for 'name if .. else $prefix "." $name' -> T25c + O25 (c); fix $name copy
- word() String&p (receiver) loses that the slice is of src -> O10c at p.entries with note 'p mut Parser&out' (d) provenance; fix $p.word()
- F1 again: v String&c / os.Env&c(...) with c an O26a-returned local -> same note 'Env&c(...)'; String&return works
- my quadratic key building: 7.4 GB at 50,000 deep (Go would also hold the keys in its frames); rewrote with a path list: 17 MB
- T20: the problem text set on the Config inside load is lost when load fails (d known)
- -b == -i at depth 2000; -i 2.9 GB at 5000 deep, 5.5 GB at 10000, killed at 50000 (-b 17 MB) (r16)
- small stack (8KB) -> segfault 139 (expected)
- -r ok; Profile=prod requires cert -> 'problem'

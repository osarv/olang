---
name: project-olang-pending-decisions
description: "Ledger of every olang decision I flagged for the user that is still unanswered - question, default in effect meanwhile, my recommendation; re-raise when the area comes up"
metadata:
  node_type: memory
  type: project
  originSessionId: 7f2a5325-2cc9-4c97-9679-ec83bcdf63a5
  modified: 2026-10-17
---

Every question I put to the user goes here the moment I ask it, and leaves only when they answer - the answer then goes
into CLAUDE.md/HISTORY.md as any design decision does. Unanswered is not consent: the default stays in effect and the
entry is re-raised when its area comes up or at the end of a report. One decision per number, each with the default in
effect and my recommendation. See [[feedback-record-flagged-decisions]]. Rebuilt 2026-10-08 after an audit of
CLAUDE.md, HISTORY.md and the old ledger (the full old ledger is in git at bc9f9c9). Slimmed 2026-10-17: answered questions and the numbered decisions 1-51 are in archive/decisions_log.md (not imported). Recorded future work that asks
nothing of the user is in [[project-olang-next-steps]], not here.

**Decided 2026-10-08, next after the current batch:** runtime interfaces back as `any Trait&` (the user: "any widget is
good"): a trait stays a constraint; `any Trait&` is a run-time value written on purpose, itself satisfying the trait;
only structs/enums convert, no widening at first, defaults/overrides through the table, `is`/`as` kept; the removed
code comes back from git (T30). GUI style (retained vs immediate mode) left to me (the user: "I don't know about GUI
design. Do what you want") - nothing to decide until a GUI is written.

**Asked 2026-10-11 (contract work, [[project-outreach]]):**
- QL1. The company's name. Recommended: Osarv (also offered: O Labs/Olab, Hotpath, Measured, Cycles, Kvick, Rask). In
  effect: `[company]` in the letters. Also offered: checking the name (Bolagsverket, .se/.com domains, EUIPO).
  The user, 2026-10-11: "I want an English name, and preferably one that starts with O ... Olab or something like that
  is really good too"; Hotpath maybe later, for a separate solution-specific company. Asked how to start a company in
  Sweden (answered: enskild firma vs aktiebolag, F-skatt/moms via verksamt.se). Name still open; availability check
  still offered.
- QL2. The outreach doc's six "Before sending" decisions: the guarantee, prices, the AI-use line, the signature (company
  name and background line), quoting olang/oann results, and invoicing. In effect: the defaults written into the
  letters. Nothing is sent before the user OKs them.
- QL3. Send order, asked as a comment in the doc: the strongest fits first, as listed (in effect), or the five Swedish
  companies first, so a reply can become a meeting.
- QL4. Offered, no answer yet: drafting a compute-credits application.

**Asked 2026-10-17 (the user: "Make sure you don't lose any work when the limits are hit"):**
- QM. ANSWERED YES 2026-10-17 ("You can push to GitHub ... Else is rather run locally") - built, wipsnap.sh. Was: May I push agents' work branches (`wt-*`, or `refs/wip/*` snapshots) to GitHub as backups? Only a push survives a
  lost container; the designated branch rule forbids other branches without the user's OK. In effect: local only
  (2-hourly snapshots and commits survive restarts, as on 10-10 and 10-17). Recommended: yes, as `backup/<name>`
  branches, pushed by the 2-hourly check-in, deleted once merged.

**Asked/answered 2026-10-17 (syntax talk):**
- QN (Python-like indentation instead of `{}`): ANSWERED - keep `{}` ("Ok we keep {}"), after my recommendation
  against (blocks inside expressions - lambdas, catch-with-default, match values - and silent misindentation).
- QO1 ANSWERED 2026-10-17 (the user: "Do 2. This fits nicely with main cleanliness and also olang decisions made so
  far."): inferred error sets, as Zig's - a bare `?` is the set the body can produce (a fixed point over calls), `? E` a
  written promise the body is held to, function types write their set. And (the user: "For using just error without an
  error, that has to go. error should always require an actual error to throw"): the default error is removed - no bare
  `error` statement, no generalization (R17); std's default-error failures get named errors. Details mine. QUEUED with
  QO4 (std misuse as named errors) as one batch after wt-ioprint and wt-e31view merge; the port's checker told.
- QO1 follow-up (the user: "No we just need one or maybe a few error sets in prelude for the compiler carve-out
  errors like overflow division by zero etc that have hardware hooks and can't be written in code"). Reading taken:
  no general-purpose error replaces the default error. The prelude's own error sets are the compiler's carve-outs only:
  BuiltinError (OVERFLOW, DIVIDE_BY_ZERO, OUT_OF_BOUNDS, INVALID - raised by `try` checks) and Exhausted (the loop
  protocol). Details mine: std's misuse checks reuse BuiltinError's words (RemoveAt/Insert out of range and Pop/First/
  Last on an empty list OUT_OF_BOUNDS, a bad base INVALID); a "nothing there" failure that is no misuse (Map.Get's
  missing key, Find/IndexOf with no match, os.Env unset) gets an error declared beside its function, in its own file.
- QO1 follow-up 2, ANSWERED ("I agree btw", read as the reply to my "Agree?"): BuiltinError keeps its four words and is
  raised only by `try` on built-in operations (the line is "the compiler writes the check", not "hardware"); std never
  raises BuiltinError - every std failure, misuse included (RemoveAt/Insert out of range, Pop on empty, a bad base),
  has an error declared beside its function. Supersedes follow-up 1's reuse of BuiltinError's words.
- QO6 ANSWERED 2026-10-17 ("Yes. You could also add checks for more operations like << >>, etc"): INVALID keeps IEEE's
  meaning - a shift amount out of range is OUT_OF_BOUNDS, a failed `as` WRONG_CASE. More checks under `try` (details
  mine): `<<` shifting out set bits (the true value x*2^n does not fit) is OVERFLOW; every float narrowing - to F32,
  F16 or BF16 - turning a finite value infinite is OVERFLOW (only F64->F32 was listed); any integer conversion changing
  the value, sign changes of one width included (I64 -1 to U64), is OVERFLOW. `>>` can lose nothing but its amount.
  Same batch as inferred sets.
- QP1 ANSWERED 2026-10-17 ("I like all of this. Lock it in as the new rules."): one array constructor. `Array<T>(n)` /
  `Array<T>(n, fill)` is an `Array<T, n>` when n is a compile-time constant (literal, constant, K1a-evaluable call),
  else a run-time `Array<T>`; `Array<T, N>()` goes; `:=` keeps the fixed type (a field stored in place, a local on the
  stack); `Array<T, N>` is written only as a type (parameters, results, elements, constructor parameters, generic
  shapes); a written target type wins. QUEUED with the error batch; the port's checker told. The user next wants to
  discuss how relevant `Array<T, N>` as a type is at all (QP2).
- QP2 ANSWERED 2026-10-17: drop both - the written `Array<T, N>` and constant generics (G20-G28). The user: "This still
  doesn't give more information than inferring a known size at compile time", and asked why the evaluator does not
  simulate calls to learn a returned array's size. My answer: the evaluator runs calls only when every value is known;
  what is wanted is a length followed through calls with the contents unknown, which is the checker's inference, not
  evaluation. Proposed (QP3, asked): (1) fixed storage inferred where made (QP1); (2) a function's array result is fixed
  when every return gives one length, inferred from the body as the error set is; (3) D9a relaxed - arrays passed by
  value; a by-value array parameter makes the function, invisibly, one instance per known argument length (fixed in
  that instance: registers, unrolled, its asserts on lengths decided at compile time, so a shape mismatch is a
  compile-time error at that call); a reference parameter makes no instances. QP3 ANSWERED: "Do A for now and if it becomes a problem we will
  expand to B" - a run-time-length array passed by value is a compile-time error (write `&` or copy explicitly). All of
  QP1-QP3 QUEUED as the arrays batch, after the error batch (both rewrite semantic.c).
- QP4 ASKED 2026-10-17 (the user: "add a cap on how long arrays you can pass as arguments to functions ... 64 bytes per
  Array? Since they are all known at comptime it's always checkable"). Recommended: 128 bytes per by-value array
  parameter - a 4x4 F64 transform fits, it is the size at which a by-value struct already goes through memory, two
  cache lines; checked per instance, the error naming the size and `&`. Parameters only (a result is built where it
  lands, no copy). The user, the same day: "That is pass as values" (the cap is for by-value parameters only; a
  reference has none) and "Let's do a cap for structs as well the same one 128 bytes" -> DECIDED: every by-value
  parameter of an aggregate type - struct, enum, array, a by-value receiver, a constructor's or lambda's parameter, a
  generic's parameter checked per instantiation - holds at most 128 bytes as laid out (padding included); a larger one
  is a compile-time error naming its size and `&`. Results are not capped. Part of the arrays batch; the corpus and std
  migrated by the compiler's own errors.
- Arrays phase 1 (wt-arrays f43feae..61603a4, docs/arrays.md, SPEC rewritten - merges only with phase 2, since checks
  require errmsg's rules to exist in SPEC). Its two questions DECIDED by me (details within QP2/QP4): (1) a struct's
  inline array never takes its length from a constructor argument - no inferred constant generics; the field declares
  its length or holds a reference; (2) QP4's cap applies to parameters whose WRITTEN type is an aggregate (struct,
  enum, array, by-value receiver); a bare type variable `x T` is exempt, so List/Map/Sort over big structs keep
  working - the container's own semantics, not a copy the caller wrote. Phase 2 (3-4 rounds) after the errors batch.
- QQ1 DECIDED 2026-10-17 (the user: "try (...) should cover all of ..."; "try f().g() should bind to both. Why did we
  decide against that?" - answered: never decided, an artifact of the one-call allowance, E13b/E24 2026-10-07/09).
  Proposed and confirmed in substance ("So try is for calls and checked for operators and calls?" - yes): `try` covers
  every fallible call in its operand, a parenthesized expression or a chain included, and never turns on a check;
  `checked (...)` / `checked a[i]` / `checked a[lo:hi]` / `checked x[i] = v` is try plus the E15a checks (built-in
  operations, a type's Try forms), calls included; a type with only a Try form is usable only under `checked`
  - SUPERSEDED, proposed: the user asked whether an operator with only an error version must always be written
  `checked`; proposed instead that a plain operator method may declare errors (reversing E31a's rule), making the
  operator fallible as written and written with `try`, like a call; Checked forms only as opt-in variants of
  infallible operators. The user then: either operators under try never fail, or try has errors and checked has
  extra ones - "I don't like that operators can sometimes have a try but no checked". RECOMMENDED (asked): the second -
  a plain operator method may declare errors (`try` handles them, as for a call); its Checked form must declare a
  superset of them (checked at the declaration), so checked only adds; with no Checked form, `checked` calls the plain
  method (indexing keeps its derived Len check). DECIDED (the user: "This requires the checked version to have a
  superset of errors right?" - yes - "Anything else is a compile error"; reading taken: the whole QQ1 design accepted):
  try for what fails as written (calls, chains, operators whose plain method declares errors; covers every such call in
  its operand); checked = try + every optional check; Checked forms' errors a superset of the plain method's, else a
  compile error at the declaration; no try-block. QUEUED in the errors batch.
  The Try forms are renamed to match (the user: "So then tryAt etc becomes checkedAt?" - yes): CheckedAt, CheckedPlus,
  CheckedSetAt, CheckedSlice, ... (private checkedAt), reversing the user's own TryAt pick of 2026-10-07. `try { block }` declined for now (hides exits; arithmetic in it either checked or inconsistent). In effect: nothing
  built; awaiting the user's go; then part of the errors batch (replaces E15a/E16c/E16d/R21's try spellings).
- QR DECIDED 2026-10-17 (the user: "We need two more modes. One 'build and run' mode and a formatter"). Proposed:
  (1) `olang main.olang [args...]` with NO mode flag builds as -b (cached objects), runs the binary with the remaining
  arguments and exits with its status; modifiers apply; makes `#!/usr/bin/env olang` scripts work (`#` is a comment);
  alternative a flag like `-x`. (2) `olang -f files...` formats in place, gofmt-style with no options: 4-space indent,
  spaces around binary operators/after commas, blank lines kept (max one), comments kept, no automatic wrapping;
  meaning-preserving and idempotent, tested over the corpus; `-f -c` to only check (CI) if wanted. Build-and-run goes
  into the C driver now (tiny) and the port's; the formatter is written in olang on the port's scanner/parser
  (compiler/), the C `-f` handing files to it until self-hosting. Asked: 1. no flag or a flag; 2. 4 spaces, no wrap.
  DECIDED (the user: "1) and 2) are good. Is -f unused today?" - yes, free): no flag runs; `-f` formats, 4 spaces,
  no wrapping. Being built (wt-runfmt). And (the user: "add an option to decide output file for building and compiling"): `-o PATH`
  names the executable (-b) or object (-c); default unchanged. Being built in wt-runfmt.
  ASKED: the user objected to `-f -c` (clashes with -c) and suggested `-fc`; proposed `-l` instead (gofmt's name, one
  character, no clash). DECIDED (the user: "Do that for now yes"): `olang -l files...`.
- QS DECIDED 2026-10-17 (the user: "Is there any reason why we should not have longer option names really? Could you
  give me some alternatives"): reverses B1 (the user's 2026-10-08 one-character rule) if taken. Options: (1) keep one
  character; (2) GNU short+long; (3) Go-style single-dash words; (4) subcommands for modes (`olang build/compile/test/
  interpret/format/explain`, bare `olang FILE` runs) with single-dash word modifiers (-debug -race -sanitize -target
  -define -update -o). Recommended 4. In effect: one-character flags (B1).
  The user chose 4 ("mutually exclusive options like build compile interpret etc have their own branches ... Full
  names are readable"). Proposed list (awaiting OK): modes - bare FILE (run, new), build (-b), compile (-c), test (-t),
  interpret (-i), format (-f), explain (-e), help (new); options - -output (-o: build, compile), -debug (-d), -race (-r),
  -sanitize (-s) (run build compile test), -target (-a: build, compile), -define (-D) and -update (-u) (run build compile
  test interpret), -check (-l: format); single dash, no aliases for the old flags. DECIDED (the user: "The list is good 1) and 2)
  are good"). Being built in wt-runfmt after its current work.
- QT ASKED 2026-10-17 (after "Write everything in Olang"): should the makefile also become an olang program
  (`olang build.olang verify`)? Recommended yes (its job is running olang; object caching already does make's
  incremental part). In effect: the makefile stays.
- QU DECIDED 2026-10-17 (the user: "Now that we have os.exit() and I would assume os.abort() should we really still have
  done fail abort as keywords? This runs against the no-duplicates rule which is held very strongly"). No os.Abort exists.
  Proposed: (1) remove `abort` (`assert false, "why"`); (2) remove `done`/`fail`, os.Exit test-aware (in a test 0 ends it
  passed, else failed; else the process) - reverses B5b; (3) a prelude result type `Never` (fn Exit(code I32) Never) -
  D10a counts a call to one as leaving, its body checked never to return (Zig noreturn, Rust !); (4) keep `unreachable`
  (the checker inserts and needs it). Asked: all four, or unreachable gone too. In effect: the four keywords stay.
  REVISED after the user: "I think a test structure where every test is a rejection is both exhaustive and more
  natural right? ... we pass the test when we don't fail any asserts". Counted: fail ~180 (125 `catch { fail }`, 51
  `if c { fail }`), done ~20 (expected error, skips, done's own tests), abort 5. Proposed: (1) remove done/fail/abort;
  (2) a test passes by reaching its end or `return` (S15's error reversed), fails on a failed assert, unreachable, `!`,
  or an error leaving it (tests may `try` without catching); (3) programs: main normal 0, error 1, os.Exit(code) -
  os.Exit stays process-wide (B5b kept); (4) keep unreachable; (5) Never result type for os.Exit (recommended). Early
  exits from helpers (P1d unwinding tests) move to checks/ cases. ~200 sites, in the errors batch. Awaiting the user.
  The user then asked: os.Abort? main without ?? why exit/abort library but assert not? free done/fail as names;
  Never vs a keyword (exits/leaves). Answered: (1) no os.Abort - `assert false, "why"`/unreachable cover it; (2) main may
  omit `?`; (3) the line: language = what the compiler understands (assert is decided while compiling, its message
  evaluated only on failure, reports its line, test-aware); library = OS calls (Exit) - so the language keeps assert and
  unreachable only; done/fail/abort freed as names; (4) Never as a type (Swift Never, Kotlin Nothing, Zig noreturn, Rust
  !): fits result positions, function types and generics, a call to one fits where a value is expected. Awaiting OK.
  The user: "Not final shape yet. Still thinking"; Never as a type allows `n Never` (nonsense) - agreed: a marker in
  the result position, lowercase `never` (fn Exit(code I32) never; also in function types; a call to one fits where a
  value is expected). Asked how os.Exit differs from halting: in a program done/fail are os.Exit(0/1) exactly; in a
  test they end the test, unwinding its scopes; an unwinding halt in production (defers, destructors) would need
  open-scope tracking on every block (2.4x measured in test builds) - principle 2 says no. Options: keep halting
  (differs only in tests) or tests-pass-by-ending (recommended). THE USER IS STILL THINKING - do not build.
  DECIDED (the user: "noreturn is a lot better for this keyword than never. Do 2) I want to free up fail and done.
  Also don't have abort."): `noreturn` result marker (functions and function types; a call to one leaves the path and
  fits where a value is expected); done/fail/abort removed, free as names; tests pass by reaching their end or `return`,
  fail on a failed assert, unreachable, `!` or an error leaving them; main may omit `?`; os.Exit(code) noreturn stays
  process-wide. Part of the errors batch. ASKED: keep `unreachable` (recommended - a checked claim the checker inserts
  and requires; `abort` would read as a fourth way to stop) or rename it `abort`. In effect: unreachable. ANSWERED (the user: "the abort fail done unreachable
  logic is all good the way you proposed. Build it"): `unreachable` kept. Plus the error return trace (test and -d
  builds). All in the errors batch (wt-errors), being built.
- QV DECIDED 2026-10-17 (the user: "Since ! is now free, can we do something fun with it?"). Options: (1) postfix `!` =
  must be evaluated at compile time, else a compile error naming why (K1a's reason) - Zig's comptime at the use site,
  no colouring; (2) `!` as the Never type (QU) - prefer the word Never; (3) unwrap-or-abort `f()!` - against errors are
  errors / no std exits, rejected; (4) non-null assertion - unneeded (T2b). Recommended 1; `!` directly before `=`
  lexes as `!=`. In effect: `!` unused.
  DECIDED (the user: "I like it as a 'don't fail or abort' thing. This way we can call io.Print()! without try"):
  postfix `!` handles what fails as written (a call, a chain, a parenthesized expression - try's reach) by ending the
  program as a failed assert does (in a test, failing it; `FILE:LINE: Type.WORD`); never turns on a check; `!` on
  nothing fallible is an error; the enclosing function needs no `?` for it; `!` before `=` still lexes `!=`. Hello
  world: `fn main() { io.Println("Hello World!")! }`. Part of the errors batch. Option 1 (compile-time) loses `!`.
- QW ASKED 2026-10-17 (the user: "nested generics produce really ugly code <<<T>>, G> is a mess"). Proposed: a
  function introduces its type variables in a list after its name (`fn max<T>(a T, b T) T`, constraints in the list
  `fn area<T Shape>(x T)`, order free within it); a method on a generic type gets the type's parameters from its
  receiver's type arguments (Go's rule: `fn (l List<T>&) Push(x T)`), a list only for variables of its own (`fn (l
  List<T>&) Map<U>(...)`); type arguments at calls stay inferred. Reverses G8b and G3's no-list rule; ~860 sites by an
  olang tool; folded into arrays phase 2 (it drops constant generics). In effect: G8b.
- (QO1's history: `? IoError` read as fewer errors than bare `?`; options were keep, inferred, open named, `? E + error`.)
- PRINT, DECIDED 2026-10-17 (the user: "We only want one Print pathway and it should be in IO. We really do not want
  to go the path of other languages where there is a compiler artifact print that gets used"): io.Print/Println/
  PrintErr/PrintErrln, no try, stop the program on a failed write; io.Write stays fallible; the prelude's
  print/println/eprint/eprintln and M19f's exception removed; tools/io_print.py migrates (wt-ioprint, started).
- QO3 WITHDRAWN 2026-10-17. The user first chose bare `?` = the built-in errors (BuiltinError + the default error,
  named errors on top), then, told the cost (every callee may fail with the built-ins, so a complete `catch Named` in a
  function without `?` needs another catch), said "Ok nvm. Let's just not have built in errors". Reading taken: the
  built-in set is dropped and error sets stay as they are (bare `?` = the default error, named sets closed,
  BuiltinError only under `try`). Still standing from the user: "No std function may ever exit" (so Print's
  stop-the-program is provisional and Print becomes fallible, "another story"), and callbacks may carry `?`. Open:
  QO4 ANSWERED the same day (reading taken, stated to the user): "if try is fine for Print then it's basically always
  fine" -> (a): std's misuse checks (RemoveAt/Insert out of range, Send on a closed channel, a bad base, a percentile
  outside 0..100, ...) fail with a named error and callers write `try`; language guarantees (a failed assert,
  unreachable, out of memory, a thread that will not start) still abort; plain indexing stays unchecked. QUEUED after
  wt-ioprint merges.
- QO5 ANSWERED 2026-10-17: the user, after the no-try proposal: "I guess try for Print isn't that bad after all". So
  io.Print/Println/PrintErr/PrintErrln fail with IoError and are written `try io.Print(...)`; nothing stops the program;
  main keeps its rule. Hello world: `fn main() ? { try io.Println("Hello World!") }`. wt-ioprint changed course to this.
- QO2 CLOSED 2026-10-17 (the user: try "is basically always fine"). Was: too many `try`s. Measured: 320 of them are `try io.Print(...)`, which `print`/`println` (M19f, no try) already
  replace. Options: (a) migrate those, and make std calls whose failure a program cannot usefully handle abort, keeping
  Try forms; (b) a `try { }` block propagating every failure inside it; (c) implicit propagation (rejected: hidden
  control flow). Recommended: (a) now, (b) only if real code still reads noisy.

**QUESTIONS for the user** - direction-level only since 2026-10-08 ([[feedback-decide-details]]):
(Answered questions - QA-QE, QG-QI, Q1-Q21, the user's oann and settling-network decisions - are in archive/decisions_log.md.)
**Asked 2026-10-10 (from usage study 6, /home/user/review/study6 r08/r09/r10):**
- QF. Long-lived, mutated structures only ever grow: what is removed from or replaced in a List/Map/struct that lives
  for the whole program (an interpreter's frames and values, an ECS world, an editor's undo stack) stays in its scope
  until that scope closes - 1.8 KB per interpreter loop turn (717 MB at 400k turns), ~0.8 KB per ECS step. Scopes are
  lexical, so there is no way to move a structure into a fresh scope and close the old one while the program runs.
  In effect: nothing (it grows). Options: (a) a library/language "generation" idiom - a value rebuilt into a fresh
  scope every N steps by a loop whose scope holds two generations (needs a scope that outlives one iteration but not
  the program - e.g. a `region` value: an arena you can create, build into, and drop explicitly, the compiler checking
  nothing escapes it); (b) per-collection recycling only (Map already reuses slots, List keeps chunks) - covers fixed-
  size elements, not text/nested lists; (c) a tracing collector or reference counting for one opt-in type - against
  principle 1. My recommendation: (a) as a first-class region value checked by section 8 (a named, droppable scope
  created at run time - `r := Region(); x := Build&r(...); ... r.Drop()` with drop refused while anything outlives
  it) - it keeps "no GC, no free" in spirit (no per-object free; a whole region at once), and is what game engines and
  compilers do with arenas. Needs design work; not built.
  The user, 2026-10-10 08:15 CEST: "I don't necessarily understand how this would work. Wouldn't it break the compile
  time guarantees? Maybe if we make them owned and unreferencable? Basically a "don't borrow this it's not safe" way?
  What is your plan?" -> PLAN GIVEN, awaiting their go: `Region<T>`, contents reachable only inside `r.With(fn(w mut
  T&) ...)` where w's scope is opaque (lambda parameter scopes already are, O4b/T22a), so nothing outside ever points
  in; `r.Set(...)`/`r.Compact(fn(old T&) T ...)` replace the contents and free the old arena at once (Compact forbids
  new->old pointers: unrelated scopes, so a checked hand-written copying collector); contents may reference only the
  program scope outside; a Set/Compact on a region inside its own With (reached another way) aborts at run time, one
  compare per Set; the handle itself is passed freely and its arena freed when the scope it was made in closes. Not
  built until the user says go.
  The user, 2026-10-10 08:25 CEST: "That way we could assign shorter lived structures to longer moves contexts and null
  the reference when we free because we always know where the one reference is. Null variables are already a "the
  problem might fail like this"-gap so it doesn't really introduce anything new" -> taken as GO, with their early free:
  decision 51 below. Queued after decision 50 (QE).
  STATUS 2026-10-17: redirected by the user into `own` (QG, then QH/QI; decision 51 and QG are in
  archive/decisions_log.md); own and Vec are built (CLAUDE.md, ownership). Close QF once the user confirms own covers it.

**Asked 2026-10-10 20:00 CEST (from the own spec, wt-own fdc5848, docs/own.md):**
- QJ1. `b := a` means different things for the two growable types: on a `Vec` it is a borrowed copy (b cannot push;
  `take a` moves, `a.Clone()` copies), on a `List` it is a second name for the same list (a handle). Recommended:
  keep it - a handle `Vec` would make every `Vec` of one element type conflict with every other in the borrow check.
- QJ2. A callback cannot free an own object through what it captures or a global (O40): an event-handler lambda that
  closes a connection takes the server as a parameter. Recommended: accept for now - otherwise every call through a
  function value (Fold, Map, Any) conflicts with every live borrow.
In effect: both as recommended; implementation waits for decision 49 to merge.

**DECIDED OVERNIGHT 2026-10-09/10, FOR THE USER'S REVIEW** (the user: "make some hard decisions yourself ... record
them and tell me tomorrow/tonight"): decisions 1-51, each recorded in CLAUDE.md/HISTORY.md, are listed in
archive/decisions_log.md. Append new hard decisions here, numbered from 52, one or two lines each with the rule and
where it is recorded; the morning report lists them, then they move to the archive.

**OWED BY ME to the user**: a detailed proposal for R4 (a local's scope taken from where it is later installed -
built-then-installed temps, null-initialized cursors) - partly overtaken by O25h/O18c (2026-10-09); bring it with the
permissions batch if friction remains. Answered 2026-10-09 15:30 CEST: "List<Counter> should work for most counters?"
(yes - only a constructor with an effect has no zero value; hold those as `List<T&>`) and "any more overrides?" (none
worth it; struct patterns in `match` later if code needs them).

**MY CALLS (10-71)** - the details I decided while building and listed for review on 2026-10-08. Since the user gave
me authority over details the same day, they stand as decisions; each is recorded in CLAUDE.md/HISTORY.md with its
feature, and the full numbered list is in git (commit 730f9fe of this file) if the user wants to revisit one.

**ON HOLD (the user: "hold it off"):** passing arrays by value (dropping D9a for parameters). Returning one by value
already exists (T7b).

**DEFERRED by the user:** `:` as the module separator (`lib:Name`); relaxing comprehensions (inferred element type,
maybe for array literals too; several `for` clauses; a lazy form; elements holding references); O10b inferred
obligations (come back to it with more code); built-in Number/Ordered constraints over primitives (they would give only
errors and documentation - generic `+` already works).

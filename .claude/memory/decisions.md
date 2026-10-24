---
name: decisions
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
effect and my recommendation. See rules.md, "How to decide and record". Rebuilt 2026-10-08 after an audit of
CLAUDE.md, HISTORY.md and the old ledger (the full old ledger is in git at bc9f9c9). Slimmed 2026-10-17: answered questions and the numbered decisions 1-51 are in archive/decisions_log.md (not imported). Recorded future work that asks
nothing of the user is in plan.md, not here.

**Decided 2026-10-08, next after the current batch:** runtime interfaces back as `any Trait&` (the user: "any widget is
good"): a trait stays a constraint; `any Trait&` is a run-time value written on purpose, itself satisfying the trait;
only structs/enums convert, no widening at first, defaults/overrides through the table, `is`/`as` kept; the removed
code comes back from git (T30). GUI style (retained vs immediate mode) left to me (the user: "I don't know about GUI
design. Do what you want") - nothing to decide until a GUI is written.

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
- QT ANSWERED 2026-10-17 ("make can stay make"): the makefile stays. Was asked (after "Write everything in Olang"): should the makefile also become an olang program
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
- QW DECIDED 2026-10-17 (the user: "nested generics produce really ugly code <<<T>>, G> is a mess"). Proposed: a
  function introduces its type variables in a list after its name (`fn max<T>(a T, b T) T`, constraints in the list
  `fn area<T Shape>(x T)`, order free within it); a method on a generic type gets the type's parameters from its
  receiver's type arguments (Go's rule: `fn (l List<T>&) Push(x T)`), a list only for variables of its own (`fn (l
  List<T>&) Map<U>(...)`); type arguments at calls stay inferred. Reverses G8b and G3's no-list rule; ~860 sites by an
  olang tool; folded into arrays phase 2 (it drops constant generics). In effect: G8b.
  DECIDED (the user: "I don't really understand what would change if we do this. I think I want the change tho" -
  explained with std's own lines; signatures only, bodies/calls/type declarations unchanged). In arrays phase 2.
- QX ASKED 2026-10-17 (the user: "Any other really cool language features from other languages I should consider?"):
  offered generators (`yield`, lowered to an iterator struct), compile-time reflection (unlocks serialization), units
  of measure (F#), portable SIMD vectors, arbitrary-width ints and fixed point (FPGA), embed a file, errdefer,
  contracts (requires/ensures), doc tests; declined async, exceptions, macros, |>, ?. chaining. Recommended top 3:
  generators, reflection, units. Ideas only - nothing built until the user picks. Written out one per section in
  docs/ideas.md (the user: "Record all the new languages so I can work through them one by one").
- QY DECIDED 2026-10-17 (the user: "in general 'listing' is done with commas on the same line and newline marker on a
  new line. This should go for struct members, error set members, function arguments. Return types and error types too.
  Anywhere we list things. Literal lists too. Change error set unions in return types from '+' to normal listing rules
  ... Migrate the corpus"). One listing rule everywhere a list appears - parameters, arguments, results, error sets,
  error words, enum cases, constructor fields, type parameter/argument lists, array literals, catch items: items on one
  line are separated by `,`, items on different lines by the line break. Details mine: a line break separates where it
  would end a statement (L18's test), so a line ending in an operator continues the item; a comma directly before a line
  break is an error (one way to write it; reverses L18a's trailing comma and T17/T19/C2's comma-is-an-error); `+` in
  error sets and catch items is gone (`? IoError, ParseError`, `catch A, B.X`); in a function TYPE inside another list a
  multi-item error set is parenthesized (`f fn(I64) ? (A, B)`); `x, y I64` (D12b several names, one declaration) is
  unchanged. Core syntax: both compilers. Planned as a syntax batch after the errors batch, together with QW (moved out
  of arrays phase 2); migration by an olang tool, then oann.
- QZ ASKED 2026-10-17 (the user: "Should std be part of prelude?"): answered no - the prelude stays what built-in
  types and language protocols need (prelude names are reserved everywhere under D3a; every build parses and checks it;
  imports show what a file touches; ffi/http carry link and tool needs; only the prelude may add methods to built-in
  types). Asked: move std/math into the prelude as methods on the floats (`x.Sqrt()` instead of `math.Sqrt(x)`)?
  Recommended yes (reserves no type names). ANSWERED YES ("Yes move math into the prelude"). Details mine: functions
  become methods on the numbers (`x.Sqrt()`, `a.Min(b)`, integer `x.Abs()`); the constants stay `math.Pi`/`math.E` in
  std/math (a bare prelude `E` would be reserved everywhere - a common type-parameter and enum name). The user then:
  "don't move math as much as move the math stuff onto the types themselves" - same plan, and the free functions
  `math.Sqrt(x)` go (one way to write it). The user then: "a bunch of repeated code? a module with just math constants
  is kinda lame". Plan given (in effect unless they object): one generic method per operation over a sealed prelude
  trait only the four floats satisfy (`fn (x T) Sqrt() T`, the match T inside as today); std/math removed; `Pi`, `Inf`,
  `NaN` prelude constants; the rest computed in place and folded while compiling (`1.0.Exp()`, `2.0.Sqrt()`,
  `2.0.Log()`); E4a extended: an immutable global whose value is literal-only adapts like that literal (so `f F32 = Pi`).
  The user then: "calling methods on literals makes zero sense" - so no `1.0.Exp()` constants. ASKED: (1) prelude
  constants `Pi Euler Sqrt2 Ln2 Ln10 Inf NaN` (no bare `E` - a common type-parameter/enum name), or (2) std/math kept
  with constants only (`math.Pi`, `math.E`). Recommended 1, with the E4a extension either way. Also offered: a method
  call on a number literal as a compile error (text literals keep methods). In effect: nothing built.
  The user then proposed both: std/math's functions back, and methods on the types calling them. Answered: two
  spellings per operation (against one-way) and the prelude importing std. ASKED: (1) std/math as today - free
  functions + constants, nothing built (recommended); (2) methods only. ANSWERED (1) ("Yes drop the move"): std/math
  stays as it is - free functions and constants; nothing built. QZ is closed.
  Queued after
  wt-errors2 merges (std files).
- QAA DECIDED 2026-10-17 (the user: "Literals cant call methods, only variables can"): a method call whose receiver is
  a literal - number, text, array, comprehension - is a compile-time error (`"a,b".Split(",")`, `7.Hash()`); reading
  taken (stated to the user): any non-literal receiver stays legal (`f().g()`, `x[i].M()`). Both compilers; corpus
  migrated (receiver into a local); queued after the syntax batch.
  The user then: "Maybe we should allow on literals tho. It makes sense for Strings doesn't it?" ASKED: (1) allow on
  every literal, as today (no rule - recommended), or (2) text and array literals only, numbers refused. ON HOLD until
  answered; nothing built.
  The user then: "What does .Hash do on a number? 2.0.Sqrt reads really bad because 2.0 is a float with a dot
  already. Math stuff isn't supposed to be defined on numbers tho right?" Answered (Hash is Map's protocol; math stays
  free functions); recommendation changed to (2): refuse methods on number literals, keep them on text/array literals.
  DECIDED (the user: "Do that, disallow for numbers, allow for array and text"): a method call on a number literal is a
  compile-time error (written through a variable); text, array literals and comprehensions keep methods. Both
  compilers, queued after the syntax batch with the Pair move.
- QJ1/QJ2/QF explained again 2026-10-17 (the user asked "tell me about 2-4"); recommendations unchanged (QJ1 keep -
  or a bare `b := a` on a Vec an error; QJ2 keep; QF open until Vec phase 2b's move-aware collections, closed with a
  test of a long-running Map of owned objects staying flat).
- QJ2 ANSWERED 2026-10-17 ("sounds right the way you have done it yes, although I am not sure exactly"): kept - a
  callback frees nothing through its captures (O40); the handler takes the owner as a parameter. Revisit (additive) if
  real code keeps hitting it.
- QF CLOSED as a question 2026-10-17 (the user: "no decision for me to make ... wait for the right time to build it"):
  covered by `own` once Vec phase 2b makes List/Map move-aware; a work item, closed by a test of a long-running Map of
  owned objects staying flat.
- QJ1 revised 2026-10-17 (the user: "isn't it best not to allow copies of owned things in general? So if you want to
  move it you use take always?"). Proposed: a value that owns something (Vec, a struct holding an owner) is never
  copied implicitly - `b := a`, `b = a`, a by-value argument, a store into a field/element are errors; write `take a`
  (move), `a.Clone()` (copy) or a reference (`b Vec<T>& = a`, parameter `v Vec<T>&`, as D9a for arrays). Removes
  borrowed copies (QJ1's asymmetry, and the source of own4-own6's findings). List (a handle) unchanged. ASKED: agreed?
  Then it goes into the Vec phase 2b design. In effect: borrowed copies.
  MOOT 2026-10-17: owned values themselves go with `own` (QAB).
- QAB ASKED 2026-10-17 (the user, on ownership: "I am just worried we are introducing a lot of complexity now that
  doesn't feel very smooth", "Can we hide reallocating away from the user completely?", "it's always the growing,
  lessening part that is the problem", then "I want it gone completely somehow and the memory model more
  streamlined"). Proposed: remove `own`/`take`/borrows from the language; one memory model - everything lives in a
  scope: (1) blocks and the program, as today; (2) Vec as a handle (header + buffer, like List): growth keeps old
  buffers until the scope closes (bounded ~2x peak), shrinking keeps capacity, a view held across a growth goes stale
  (Go's append footgun; the local case refused); (3) a resettable scope as a std value `Slot<T>` (name open):
  `s.Set(...)` builds into its own arena and frees the old one, `s.With(fn(c mut T&) {...})` gives access - the existing
  scope rules keep references from escaping (a lambda parameter's scope cannot be named outside); `Set` inside its own
  `With` aborts (one compare per Set). Reverses the user's own design (QG-QI, 2026-10-10); a large removal in both
  compilers. ASKED: write it up first in docs/memory.md (server and interpreter worked through) for review? In effect:
  own stays; ownership work frozen (no Vec phase 2b) until answered.
  The user then: "The compiler is allowed to do tricks all it wants, but the user should not have to deal with it".
  Revised proposal: no user-visible mechanism at all (no Slot either) - the language rule is only "everything lives in
  a scope"; freeing earlier is an optimization the compiler makes wherever it proves nothing still refers to the old
  storage (an overwritten slot, a Vec's old buffer, a removed Map entry - region inference, run on the analysis the
  own checker does today), else it keeps it until the scope closes (always safe, never an error). Unobservable except
  in memory, so stage 0 just drops `own` and never frees early; the port does the analysis in its scope pass. A report
  (`olang build -memory`) lists where replaced storage is kept and why. ASKED: write docs/memory.md for review?
  ANSWERED ("I think this is a good idea yes, as long as we can make it effective at actually finding the places
  where memory can be freed and the rules to trigger it somewhat explicit so a programmer can make it happen at will";
  then on Vec: two loads per access are fine if hoisted, loops are why Vec exists). Being written: docs/memory.md
  (wt-memory) - the one-sentence rule, Vec as a handle and its hoisting, the report, removal of own from both
  compilers, migration. Nothing removed before the user reviews it.
  The user then: "I feel like there is a simpler solution here somehow". Proposed (recommended): drop Vec - Array for
  fixed sizes, List for growing (never moves: no stale views, growth frees nothing), `l.ToArray()` (one visible copy)
  where contiguity is needed; early freeing stays as the compiler's optimization for long-lived structures. Costs:
  List random indexing ~5-6x an array's instructions; Vec phase 1 removed. The doc compares it with the handle design.
  ANSWERED: "No don't drop vec yet" - Vec stays (the handle design is the doc's main design; drop-Vec only a note).
  The user then: "Vec is basically a normal array hidden behind an access gate. The error we get when vec moves is a
  correctness bug not a memory bug. This is kinda inevitable and what makes Vec problematic is how hidden it is".
  Decided (in the doc): make it visible, not analysed - no implicit Vec -> Array<T>& conversion; `v.View()` explicit
  ("a window on the current buffer, valid until v grows"); a view used after a growth of the same Vec in the same
  function is a compile error; no cross-call may-grow analysis (a documented hazard, memory-safe).
  Then ("Why drop the cross call error check?" ... "Ye let's add it. Make this part of the comptime analysis"):
  a narrow exact cross-call check - the same Vec seen on both sides of a call (its view plus v or a writable holder of
  v; or v a mutable global the callee may grow, by name) - in the compile-time checks; reading taken: also the
  compile-time evaluator and `interpret` report a stale view read exactly (they know each view's Vec), and
  `-sanitize` poisons old buffers on growth. In the doc.
- QAC OPEN 2026-10-17: the static race-safety idea (next steps, recorded the same day) was built on `own`/`take` (a
  task's writable arguments moved in); with own removed (QAB) it needs a version without ownership, or dropping in
  favour of `-race`. Mine to bring back once docs/memory.md is settled.
  The user: "2) good, do that" - rethought: without ownership the compiler cannot know two writable references are
  distinct (why P3 was withdrawn), so static race safety is dropped; `-race` stays the checker (Go's position); safe
  shapes made easy: `spawn out[i] = f(i)` (race-free by construction) and a std helper splitting an array into
  disjoint pieces (`a.Chunks(n)`, as Rust's chunks_mut). In effect unless the user objects.
- QAB APPROVED IN ADVANCE 2026-10-17 (the user, on docs/memory.md: "1) do it"): build as soon as the doc lands - own
  and take removed from both compilers, Vec as a handle with explicit `v.View()`, early freeing by the compiler,
  destructors unchanged at scope close, idempotent Close in std; come back only for a real direction question.
- QAD ASKED (for the morning) from docs/memory.md (merged cb80059, section 6): (1) pins - a view held across a call
  that may let go makes that place keep everything; pins (two stores at each such call, listed by the report) would
  make it exact. Recommended: no pins in the first version (additive later). (2) disarming a destructor - a type's own
  methods may cancel its destructor once Close() has done its work (`x.Disarm()`), so a closed resource's storage can be
  freed when removed; without it long-lived structures holding std resources grow with every resource ever held.
  Recommended yes. In effect: neither; both matter only for round 6 (the port's early freeing). Rounds 1-4 proceed.
- QAD revised 2026-10-18 (the user: "What are pins? For the disarming of the destructor. Why? Also I don't want to
  require destructors to be idempotent, I want every destructor to run once only. 3) I don't understand"): pins
  explained, recommendation unchanged (none for now). Disarm replaced, ASKED: `x.Destroy()` (name open) runs the
  destructor now, exactly once (nothing at scope close for it); its storage may then be freed early; use after it is
  refused locally, caught by the evaluator/interpret/-sanitize elsewhere, and std resource methods fail with an error.
  No Close, no idempotent destructors. In effect: neither.
  ANSWERED (the user: "We don't want pins yet at least. For Destruct(). Only allow this if it can be proven memory
  safe? Alternatively force server loops to exit and restart every once in a while to free up memory? Premature
  destruction should never introduce use after frees"): no pins. DECIDED: `x.Destroy()` compiles only where the
  compiler proves x is the sole way left to reach the object (the early-free proof: no reference to it stored
  elsewhere, no live view; e.g. a value just taken out of a Map with `Take`), else an error naming what else reaches
  it; use after it in the same function refused; destructors run exactly once (scope close or a proven Destroy); no
  Close, no idempotent destructors; stage 0 a simple local version (a local straight from Take or a constructor, never
  stored or passed), the port the full analysis; the restart pattern (a block in the server loop left every N
  requests) documented as the fallback. Into docs/memory.md's build plan.
- QAE DECIDED by me 2026-10-18 (the user did not follow the question; a tidy-up): SPEC section 8 is restated in the
  model's form (general rules, special cases as applications, no change in meaning), beside M6.
- QAE ASKED (for the morning) from docs/scope-model.md (merged 2026-10-18): restate SPEC section 8 in the model's form
  when memory round 3 rewrites it - general rules first, the special cases as applications, no change in meaning?
  Recommended yes, written beside M6. In effect: round 3 cuts section 8.8 and leaves the rest of section 8's text.
- QAF 2026-10-18 (the user: "math.Sqrt(4) should not be an error. Only the form 4.Sqrt() should be. And honestly
  2.0.Sqrt() is not that bad. Should we maybe move math methods back on types? ... the main argument against it ... we
  don't want to overload the method set"). DECIDED (mine, a detail): a type variable reached only by literals whose
  constraint excludes the literal's own type binds the constraint's natural type (Float -> F64, Integer -> I64), as a
  literal adapts to a typed target - `math.Sqrt(4)` works; a variable keeps its type (`math.Sqrt(n)` with n I64 stays an
  error). Being fixed in both compilers. ANSWERED the methods question with a recommendation: keep std/math's free
  functions (the method-set overload incl. through extends, several-argument functions, one place). In effect: free
  functions; E13c unchanged (`4.Sqrt()`/`2.0.Sqrt()` stay errors).
  CONFIRMED 2026-10-18 (the user: "Keep in math lib"; moving only Sqrt/Exp would be arbitrary). Also confirmed:
  static race safety dropped ("an artifact" of own/take); Char does not satisfy Number (the numtraits decision).
  REVERSED the same day (the user: "this kinda makes moving the math functions onto the type viable again. If integers
  only take min max clamp, isqrt and exp... floats are a compsci type", then "Also abs for integers"): math becomes
  methods - floats (F16, BF16, F32, F64) get every std/math function as a method written once over the Float trait
  (x.Sqrt(), y.Atan2(x), a.Hypot(b), x.Fma(a, b) ...); integers get Abs, Min, Max, Clamp, ISqrt; prelude constants Pi,
  Euler, Inf, NaN (others computed, folded: F64(2).Sqrt()); std/math removed, the free functions gone, corpus and std
  migrated by an olang tool. Then (the user: "Yes let's do this. I want an integer power as well for the integer set.
  And 2.0.Sqrt() should be valid code. Don't make an exception for floats like that"): integers also get Pow (exponent
  a U32, wrapping as `*`, checked under `checked`); E13c REVERSED - methods on number literals are allowed again
  (7.Hash(), 2.0.Sqrt()), both compilers. Being built (wt-mathmeth).
- QAO ASKED 2026-10-18 (the user: "Next up, Option"): (1) references non-null by default, absence written
  `Option<T>` (prelude generic enum, Result's family; a T flows in implicitly, `null` its empty value, one pointer for
  `Option<Node&>`), or keep nullable references (T2a/T2b) - recommended non-null; (2) spelling `Option<T>` vs a word
  (`maybe Node&`; `Node&?` collides with error sets) - recommended Option<T>; (3) narrowing `if x is not null { x.v }`
  for locals only (fields unsound), else bind by match - recommended locals only; (4) the error `try x` raises (a
  prelude `Absent` with one word?). Unwrap as Result: `x!`, `try x [catch default d]`, `match`. Cost measured: ~1,300
  `null`s, 900 in compiler/. In effect: nullable references. Port only, after self-hosting.
  REVISED 2026-10-18 (the user: "I don't really see why Option is superior to null. Narrowing is fine ig", "do
  something like Absent.NULL", unfamiliar with Option): Option<T> dropped from the proposal. Now: keep `null`; a
  reference is non-null unless its type says `maybe` (`next maybe Node&`); reading through a maybe reference without
  handling null is an error; `if x is not null { }` narrows locals (agreed); `x!` aborts on null; `try x` raises
  `Absent.NULL` (agreed). Explained honestly: the payoff is smaller in olang than Java/Go, since functions report
  absence by errors - null remains only in stored absence (next, parent, AST parts, zero values). ASKED: (1) want it
  at all - recommended yes, light form; (2) the word - recommended `maybe` (or nullable, optional). In effect: nullable
  references (T2a/T2b).
  PARKED 2026-10-18 (the user, overwhelmed: "? is exactly the tool for the job no?", "maybe is Option by proxy",
  "I don't get why we want to not just crash on null", "it kinda lines up with Result and I like the uniformity").
  Answered: `?` would be ideal but for the clash; no compile-time-evaluation gain; `maybe` = Option by another name;
  the gain is only that the compiler points at every unhandled null - a nice-to-have. Parked until after self-hosting;
  nothing changes (nullable references, T2a/T2b). Bring back then, briefly.
- QAP ASKED 2026-10-18 (the user: "is null should not be valid code right since we can do == null? Or ... maybe is
  is just a really bad word in general. Record that as a question"): `x is null` and `x == null` are two spellings of
  one test (against one-way), and is `is` a good word at all (it is identity, E10c, and the case/type test, E32)?
  In effect: both spellings valid. Not discussed yet.
- QAN DECIDED 2026-10-18 (the user: "Nah, let's do it"; earlier not sure): `T ? E` is a type - the
  outcome of a fallible call held as a value, `Result` its name, a generic enum with cases Ok(value)/Failed(error);
  `fn f() T ? E` returns one; a call must still say what happens to its failure (`try`, `!`, catch, or postfix `?` =
  keep the outcome: `r := parse(s)?`), so `x := parse(s)` stays an error; after a type's `?` one error type (a named
  set is one); `try r.Get()` raises the stored error; `$r` prints Ok(5)/Failed(ParseError.BAD). The user kept postfix
  `?` over a `keep` word ("func() is a value not a type, so it isn't that confusing"). Built in the port after
  self-hosting (plan.md item 14). Loose ends DECIDED (the user): cases `Ok`/`Err`; a kept result unwrapped by `try r`, `r!`, catch
  clauses (no r.Get()); both spellings allowed, `T ? E` and `Result<T, E>` ("one would never use Result<T, E> but
  making it an error feels kinda extreme"). `save(f)?` on a function with no result gives the error value itself (`e := save(f)?` is an IoError, null when
  it succeeded - the user: "That's even better"). An error value compares only with its own words, its set's words and
  null (`e == 0`, or a word of a type outside the set, is a compile-time error - the user's point). DECIDED (the user: "Yes,
  do it"): methods on error types (`fn (e IoError) Transient() Bool`), declared in the type's module as for any type;
  a named set has its own methods, none inherited from its members; `Str` may give `$e` a message, `==`/`Hash` built in.
  Details (loose ends, revised by the user): the zero value of a result is `Err(null)` (the user: "can't it have null
  as zero value?") - an unset outcome; unwrapping it (`try r`, `r!`) aborts as raising a null error does; a function's result is a `T ? E`
  only through its own signature (`fn f() T ? E`; `Result<T, E>` written as a result type is an error naming that form,
  since a function that fails says so with `?`), and `return r` of a kept result in such a function passes its outcome
  through; a `match` on an error value has `case null` for "no error" where null is possible, and `case null` is an error where
  the value is known not to be null - known structurally, never by the evaluator: a catch binding (the user: "have we
  caught this error to end up here") or an error word written out (the user's refinement). DECIDED (the user's
  proposal; "if you think the two meanings have valid niches then sure, also disallow variable creation with ?"):
  `T ? E` only in function signatures ("this fails"), `Result<T, E>` for values (variables, fields, type
  arguments, and the result of a function that returns an outcome as data without failing); `r := f()?` gives a
  `Result<T, E>`. Niches judged valid (a failing call vs a kept outcome - batches, tasks, channels,
  reporting functions). `T ? E` anywhere but a signature is a compile-time error naming `Result<T, E>`.
  Last details (mine): `Result<T, E Error>` - `Error` a sealed prelude trait every error type satisfies, so only an error
  type is an E; a named set lists error types only and never adds words (new words make a new error type), sets nest
  and flatten (`type AnyError error LoadError, ChanError`), words stay qualified by their own type (`IoError.FULL`),
  `catch LoadError e` takes every member; error values hash (a Map key), `Result` compares and renders structurally.
  REVISED 2026-10-18 (the user: "type my error error Error1, {WORD}, error2 be valid too ... probably on the form where
  the brackets come last only. What do you want?"): a declaration may have members and words of its own, words last -
  one grammar `type Name error [Member, ...] [{ WORDS }]`, at least one of the two: `type LoadError error IoError,
  ParseError { TIMEOUT }`. Its own words are `LoadError.TIMEOUT` and the type is one member of its own set (flattened as
  any member), so `catch LoadError` takes everything, `catch LoadError.TIMEOUT` the word alone; a word may not repeat a
  member's (words are qualified anyway, so this is only against confusion - mine); braces mid-list are a syntax error.
- QAM 2026-10-18 (errors as values; the user: "1) ... I want this feature tho 2) yes, disallow this 3) reserve the
  first error word to mean nothing ... 4) looks good"). DECIDED: an error type may be a value's type, of one type or a
  set; an error type as one of several results is an error (no Go `value, err`); `catch IoError e { }` binds what was
  caught, `error e` raises a held one; the zero value means "no error" (it is code 0 in the error-union ABI already).
  DECIDED further (the user: "Remove the () form yes"; "we can always capture an error set with catch E {}"): a set
  of several error types is written by name everywhere except after a signature's own `?` (`fn f() T ? A, B`): `type
  LoadError error IoError, ParseError`; a function type's set too (`f fn(I64) ? LoadError` - my parenthesized
  `fn(I64) ? (A, B)` of 2026-10-17 is removed); a catch binding takes the set its clause covers, unnamed, and a named
  set is the same type as that set unnamed, so it flows into a `List<LoadError>`. The only ways to get an error value:
  a catch binding, or an error word written (`IoError.FULL`). DECIDED (the user: "Both of these are good") - error types declared as types - `type IoError error { FULL  DENIED }` (replacing `error IoError
  { }`) and a named set `type LoadError error IoError, ParseError`, usable as a value's type and in a signature
  (`? LoadError`); the zero written `null` (`e == null`), raising a null error aborts (one compare on the raise path);
  no postfix `?` (one way: `try`, which covers a whole chain; `?` already marks error sets; the user did not object).
  Built in the port after self-hosting (plan.md build list item 14).
- QAL DECIDED 2026-10-18 (the user: "Yes remove it but keep in git"): bootstrap/ is removed from the tree once the port
  self-hosts and the seed has rebuilt the compiler from nothing, the last commit holding it tagged `stage0-final`. Was: QAL ASKED 2026-10-18 (the user: "Do we remove the C compiler eventually as well or keep it in the project?").
  Recommended: keep it as stage 0 until the port is self-hosting and the seed has rebuilt the compiler from nothing at
  least once; then remove bootstrap/ from the tree, tagged (`stage0-final`) so git can always bring it back; the seed
  stays. Trade-off stated: the C compiler is the one human-readable route from source to a compiler (no generated
  seed to trust); removing it keeps that route in history only. In effect: kept.
- QAK RESOLVED 2026-10-18: bootstrap by a generated, committed seed (the user: "I want it that way yes"); C frozen at
  self-hosting; features after it built once. Was: QAK ASKED 2026-10-18 (the user: one-step bootstrap from C, always; "Start with removing own for sure"). Recommended:
  features compiler/ does not use go into the self-hosted compiler only (built once), compiler/ written in the subset
  stage 0 accepts; a feature the compiler wants goes into stage 0 first. Alternative: every feature into both, always.
  In effect: both (the user's earlier "syntax goes in both"). Order: memory round 3 (own/take removed) first.
- QAI FINAL 2026-10-18 (the user: "I want to avoid unchecked as a keyword, because we don't nest into functions it's
  not a problem really. And I think that probably answers the 'do functions automatically get a checked version'"): no
  `unchecked`; no checked version derived from a function's body (only checked At/SetAt/Slice from Len, overridable by a
  written one, as trait defaults are); -debug's program-wide aborting checks DROPPED with it (mine: without `unchecked`
  it would flag std's intended wraps). Everything else in QAI below stands.
- QAI REVISED 2026-10-18 (the user: "make checked overload a function ... fn checked Plus ... requires Plus to exist
  without checked or else it's an error", then "No, checked works on any function no? Operators are normal functions").
  DECIDED (the user: "Checked is basically the keyword telling you to call the checked function versions of everything
  in the () (binds as a normal unary)"): built-in operators are functions with a checked version built in; `checked` is
  a unary binding as `not`/`-` do (`checked a + b` checks only `a`, so `checked (a + b)`; postfix binds tighter, so
  `checked a[i]`, `checked x.Pow(n)`, `checked I32(x)` cover the whole postfix chain); a `checked` covering nothing with
  a checked version is an error, as an empty try is. Details as proposed: any function or method may have a checked overload (`fn checked parse(...)`, `fn (a Money)
  checked Plus(...)`); `checked (e)` is try plus the built-in operators' checks, and every call in e (operators
  included) whose callee has a checked overload calls that overload instead; the plain form must exist, the same
  parameters and result, errors a superset of the plain one's; a function value is always the plain function (not
  reached); externs and lambdas have none; checked At/Slice/SetAt still derived from Len; one level only (the overload's
  body is what its author wrote). Replaces the CheckedX names. Queued with QAH after wt-mathmeth and wt-mem2.
- QAI DECIDED 2026-10-18 (the user: "This is all good"): `checked` binds to its operand (one index/slice/conversion or a
  parenthesized expression - every built-in operation in it), never into calls or function values; the Checked forms
  and the superset rule go (a user type's operators check themselves; `checked x[i]` on At+Len types keeps the derived
  Len check); `-debug` aborts on every such check program-wide; `unchecked (e)` marks intended wraps, truncations and
  infinities (std's hashes, RNGs, checksums, Fixed's limbs); BuiltinError is renamed CheckError. Both compilers; queued
  with QAH after wt-mathmeth (whose CheckedPow is taken out) and wt-mem2 merge.
- QAJ RESOLVED 2026-10-18 by QAI: `checked` on a prototype is the checked overload (`fn checked f`). Was: QAJ ASKED 2026-10-18 (the user: "settle checked on function prototypes, is this something to have?"): `checked fn f`
  (every operation of the body checked). Recommended: not now - it makes every `+` in the body an error exit not marked
  at its line (the reason `try { }` was declined), and -debug covers the find-every-overflow job; add later if parser
  code reads noisy with `checked (...)`. In effect: not built.
- QAI 2026-10-18 (checked reaching into callees). DECIDED (the user): a call through a function value is never checked
  (a lambda written inside the checked expression is). ASKED: (1) keep `checked` local as today but drop the Checked
  forms (a user operator method is an ordinary call; `checked x[i]` on At+Len types keeps the derived bounds check),
  move the program-wide "find every overflow" job to a build option (aborting checks under -debug, Rust's debug
  overflow), and add `unchecked (e)` to mark intended wraps/truncations for that mode - recommended over deep checked
  (checked copies of every reached function, BuiltinError in every reached set, std's wraps marked) as too much for its
  payoff; (2) rename BuiltinError to CheckError (recommended; raised only by checked). In effect: today's design.
- QAH DECIDED 2026-10-18 (the user: "If this make sense in general we do it in general yes"): generics over error sets.
  A declaration's type parameter list may end in one error-set parameter after `?` (`trait Iterator<T ? E>`, `fn
  Fold<U ? E>(init U, f fn(acc U, x T) U ? E) U ? E`), usable wherever an error set is written; inferred like a type
  variable from the error sets of function values and iterators passed; empty when nothing fallible binds it (then no
  `try` is needed); absent = empty (`Iterator<I64>`); monomorphized per error set. Not a stored error (no Result type).
  Iterator becomes `trait Iterator<T ? E> { mut Next() T ? E, Exhausted }`; generators write `fn lines(p String&)
  Iterator<String ? IoError>` and have no `?` of their own. std's helpers (Fold, Map, Filter, Any, All, Count, Sort's
  comparator, linalg Map) take fallible callbacks. Core generics: both compilers. Queued after wt-mathmeth and wt-mem2
  merge (semantic.c).
- QAG GENERATORS REVISED 2026-10-18 (the user: "settle on fn evens (n I64) Iterator<T> ... the compiler knows this is a
  generator because of the return type and the yields and the user doesn't need to know"): no `generator` keyword and no
  `yields` marker - a `fn` whose result is `Iterator<T>` and whose body yields is a generator; `Iterator<T>` there is the
  hidden type. BOTH COMPILERS (the user, 2026-10-18: syntax goes in both), after QAH (needs Iterator<T ? E>). Details mine: its `? E` is Next's errors; a trait as a result type is allowed only for such a generator
  (general `impl Trait` results not now). OPERATORS also reverted the same day to today's E31 methods (the user: "Let's
  take operators back to where we started"). Below is the superseded record.
- QAG DECIDED 2026-10-18 (the user, on ideas.md #1 and operators: "maybe we want a new keyword ... generator? ... and
  maybe we want operator for operators?", clarified: the keyword replaces `fn`; "Record it yes"): a declaration's first
  word says its kind - `fn`, `generator`, `operator`. GENERATORS (ideas #1): `generator evens(n I64) I64 { ... yield i
  ... }`, the result written is the element type, the caller gets an Iterator<I64>; `yield v` is a statement only (no
  send-back - the Python coroutine extra declined for now, additive later); four rules: (1) a `fn` may not contain
  yield, a generator must; the end or a bare `return` ends it, `return v` is an error; (2) `? E` comes out of Next;
  (3) no yield inside a lambda, a join or deferred code; (4) no defer open across a yield (relaxable). Port only (an
  extra), after self-hosting. OPERATOR: every method the compiler calls by itself is declared `operator` (symbols,
  Eq/Str/Hash/Next/Iter/Len/Call/Has/Contains...), must have its role's shape; a `fn` method is never called
  implicitly - replaces E31's "operator only in its shape". Core syntax: both compilers, migrated by a tool.
  ASKED: operators named by their symbol now that `operator` marks them (`operator (a V) +(b V) V`, `[]`, `[]=`, `[:]`,
  `==`, `<`, `$`, `in`, `()`, `checked +`; Next/Iter/RunFrom/Len/Hash keep names) - names like Plus freed; an operator
  visible wherever its type is (no private spelling); no call by name. Recommended yes. In effect: not built.
  REVISED by the user ("I don't want them to be methods anymore. Many operators are commutative etc. What if we do
  operator X Number + y Number Number"; then "many of these, like iter or len aren't even operators"; then "Or next",
  read as "OK, next" - stated to the user): operators are free declarations shaped like their use - `operator (a V) +
  (b V) V`, `operator - (a V) V`, `operator (m Mat&) [i I64, j I64] F64`, `operator (m mut Mat&) [i I64, j I64] = (x F64)`,
  `operator (a P) == (b P) Bool`, `operator (a P) < (b P) Bool`, `operator $ (p P) String`, `in`, `()`; looked up by
  both operand types (a literal adapting; exactly one match); declared only in the module of one operand's type;
  built-in with built-in fixed; commutativity written out (both orders); derived forms (+= != > <= >= ++) derived;
  `operator checked (a M) + (b M) M ? E` is what checked uses, superset rule kept; traits may list operator signatures
  for generic code. Protocols are NOT operators: Next, Iter, RunFrom, Len, Hash stay ordinary methods, each named by a
  prelude trait (Iterator, Iterable, Indexable, Hashable); anything called implicitly is an operator or a prelude
  trait's method. Names like Plus/At/Eq freed. Core syntax, both compilers, migrated by a tool. Queued after the
  current batches.
- QX (docs/ideas.md): the user, 2026-10-17: "let's do these tomorrow" (2026-10-18).
- QZ4 ASKED 2026-10-17 (the user: "Pair should not go there I feel. Is pair really that useful? I guess it pairs with
  Map?"): no - Map's entries are MapEntry (Key/Value) and a struct is already a Map key (supplied Hash). Pair (D8d's "two
  things kept together") is used ~100 times (tests, the port's names/parse/generic/load, list tests). Options: (1) remove
  Pair, each use a small named struct (`type Span struct(Start I64, End I64) { Start End }`) - it is the tuple olang
  chose not to have, `First`/`Second` naming nothing; (2) move it to std/pair. Recommended 1. In effect: Pair in the
  prelude. (The prelude line otherwise: Vec, Map, String, StringBuilder in; List and future containers to std.)
  ANSWERED (2): "Pair goes in Std not prelude" - std/pair (`pair.Pair<A, B>`), uses gaining the import. Queued after
  the syntax batch (it touches the port and tests, as that batch does).
- QZ3 ASKED 2026-10-17 (the user: "Do we have traits that only integers satisfy? Floats? Signed unsigned?"): no -
  only Hashable, Iterator, Indexable; std/math limits types by `match T` exhaustiveness (an error at the call, worded as
  a non-exhaustive match with a note into std). Proposed: prelude traits `Integer`, `Signed`, `Unsigned`, `Float`
  (maybe `Number`), sealed by a private method so only the primitives satisfy them (and declared types extending one),
  used as `fn Sqrt(x <T Float>) T`. Reverses the user's 2026-10-07 deferral. Recommended yes. In effect: none.
  ANSWERED ("Yes, add those traits in the prelude. Do one for Float Integer Number. Are SignedInteger and
  UnsignedInteger worth it?"): Float, Integer, Number built (wt-numtraits); Signed/UnsignedInteger not now - no std
  function splits them (only inside math.Abs, which takes both); additive later, named SignedInteger/UnsignedInteger.
- QZ2 ASKED 2026-10-17 (the user: "Why is List map and vec in prelude? Isn't array the one that has to be there"):
  Array is built in (the prelude only gives it methods); List/Map/Vec are there because the prelude's iterator helpers
  and `a.ToList()` build Lists (M19d: methods on built-ins live only in the prelude) and for convenience. Options: (a)
  keep all three; (b) minimal prelude - helpers return `Array<T>`, List/Map/Vec move to std/list, std/map, std/vec,
  `a.ToList()` becomes `List(a)`; (c) keep Vec and Map, move List out once Vec can be a type argument (Vec phase 2b) so
  the helpers return Vec. Recommended (c). In effect: (a).
  The user then: "do we run into a lot of problems if we remove them from the prelude and only have array? I don't
  want the stdlib quality to drop". Answered (measured): no compiler knows the names; ~250/110/70/45 files use
  List/Vec/Map/StringBuilder (an import line each, by a tool); the real cost is the prelude needing a growable buffer
  (iterator Map/Filter/ToList and StringBuilder grow as they go) - with Array only it would be a hidden second Vec.
  Recommended: keep Vec in the prelude, rebuild the helpers and StringBuilder on it (`a.ToVec()`), move List and Map
  to std/list and std/map; after Vec phase 2b (Vec as a type argument, in tasks/lambdas), benchmarks before/after.
  ASKED: plan it that way? In effect: (a).
  The user then: "will there be more very basic data types like vec and map ... or will these stay the four main
  ones?" Answered: a rule keeps the prelude fixed - only what the language and built-in types need plus the
  everyday containers; future containers (Set, Deque, Heap, ordered map, Utf8 text) go to std. Revised: moving Map
  out means `map.Map<K, V>` everywhere (imports are whole modules, names qualified), so keep Map in the prelude (as Go
  and Python build it in). Recommended now: prelude = methods on built-ins, protocol traits/errors, Vec, Map,
  String, StringBuilder, Pair; std = List and every future container (Set starts in std). After Vec phase 2b.
  ANSWERED ("I think that is good yes", after Pair went to std): prelude = methods on built-in types, protocol traits
  and errors, Vec, Map, StringBuilder (String and Array are built in); std = List (std/list), Pair (std/pair) and
  every future container (Set, Deque, Heap, a sorted map). The iterator helpers and StringBuilder move onto Vec
  (`a.ToVec()`). List moves after Vec phase 2b; Pair after the syntax batch. QZ2 closed.
- (QO1's history: `? IoError` read as fewer errors than bare `?`; options were keep, inferred, open named, `? E + error`.)
- PRINT, DECIDED 2026-10-17 (the user: "We only want one Print pathway and it should be in IO. We really do not want
  to go the path of other languages where there is a compiler artifact print that gets used"): io.Print/Println/
  PrintErr/PrintErrln, no try, stop the program on a failed write; io.Write stays fallible; the prelude's
  print/println/eprint/eprintln and M19f's exception removed; tools/io_print (now olang) migrates (wt-ioprint, started).
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

**QUESTIONS for the user** - direction-level only since 2026-10-08 (rules.md, "How to decide and record"):
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
52. (2026-10-17, from the errors batch's spec review /home/user/review/errors1) IEEE's invalid operation is INVALID
   (NaN results, 0.0/0.0, inf-inf, NaN/inf to an integer); DIVIDE_BY_ZERO only for finite/0 and integers; `<<` checked by
   value fit; int-to-narrow-float infinity is OVERFLOW; noreturn fits any value position, takes no part in inference, no
   noreturn lambdas, T31 matches noreturn, extern may be noreturn; `!`/`try` take a clause-less `checked` operand;
   `spawn f()!` allowed (ends the program); a Checked form requires its plain form; superset rule per instantiation;
   lambdas infer errors without `?` in canonical order; error words may be written in a set (`? ListError.EMPTY`) so
   catches are complete; one bad-base error for ParseInt/Format. Being built in wt-errors2.

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
- QAQ ANSWERED 2026-10-22 (the seed, M11; the user: "only reseed when needed yes", "keep bootstrap until we pass
  everything properly, then delete it"): (1) the committed seed (`seed/*.ll.xz`, `make seed`) is regenerated only when
  compiler/ needs something the seed's compiler cannot build (Zig's zig1.wasm cadence; `make bootstrap` shows it),
  not on every compiler change; (2) bootstrap/ stays until the port passes the whole suite on its own and the
  stage-0 comparisons are replaced by stored goldens; then tag `stage0-final` and remove it (QAL's condition, made
  precise).
- QAR ASKED 2026-10-24 (from the port verbosity audit, /home/user/review/verbosity/README.md): the compiler's 58k lines
  are about C's density in lines but repetitive in specific places. Three language changes would cut ~2,000-3,000 lines:
  (1) `is` binding a pattern (`if e is Expr.Call(f, args) { ... }`, and an else-leaving form) - 264 one-case matches,
  ~790 lines; reuses `is` and the pattern grammar. Recommended yes. (2) a constructor with no body means its parameters
  are the fields (`type Span struct(Start I64, End I64)`) - 74 structs, ~510 lines; partly reverses T13 (no field-list
  structs). Recommended yes, as a shorthand that is still a constructor. (3) string-valued enum cases (`Plus = "+"`) -
  token/msgs tables, ~700 lines. Recommended later. Also, decided by me (no language change): msgs.olang's echo comments
  and blank lines dropped (~1,090 lines); redundant integer casts cleaned up; a child-walk for enum trees comes with
  reflection (build list item 5). In effect: nothing built.
- QAS ASKED 2026-10-24 (compile speed round 8): an opt-in development build at -O2 without LTO - measured on the
  compiler itself: clean 31.5 -> 20.8 s, an edit to widely inlined code 17.9 -> 3.8 s, the built program ~18% slower.
  Asked: add it, and what to call it (a mode, `-fast`, ...)? Recommended yes, as an option (`-quick`?) - the default
  stays -O3 + LTO (B2c). In effect: not built.
- AGENDA ASKED 2026-10-24 (the user: "Today we are going to settle design questions as well"), numbered as asked:
  1 QAS dev build (rec yes, `-quick`); 2 QAR1 `is` binding a pattern (rec yes); 3 QAR2 bodyless constructor = fields
  (rec yes); 4 QAR3 text-valued enum cases (rec later); 5 QAP one null test `x is null` (rec yes, migrate); 6 units of
  measure (rec defer; if built: `unit m`, `F64<m/s>`, literals unitless); 7 contracts (rec no syntax, leading asserts);
  8 doc tests (rec yes, `#` + four spaces); 9 method overloading (rec no); 10 constructor overloading (rec no, named
  functions); 11 fixed point (rec with FPGA); 12 QAO maybe/Option (rec drop, keep nullable). In effect: nothing changed.
- AGENDA ANSWERED 2026-10-24 (the user, by number): 1 dev build YES, the name must say what is quick ("quickcomp is
  maybe a bit too long ... Quick is kinda ambiguous") - ASKED: `-quickbuild` (rec) or `-draft`. 2 `is` binding a
  pattern YES. 3 no bodyless form - "Can't you just write {x, y} on the same line? ... keep the general form": it
  already compiles (`struct(A I64, B I64) { A, B }`); compiler/'s structs rewritten that way, no language change. 5 one
  null test `x is null` YES; the user asked for precise identity/value definitions - given; ASKED 5a: `==` always value
  equality, `is` always identity, a type reaching itself through references has no `==` unless it declares `Eq`
  (rec yes; today struct/enum references compare identity unless Eq). 6 units DROPPED ("the type system supports
  catching errors on type mismatch well enough"). 7 contracts: "take the inferred obligations and optionally put them
  in the signature" - sketch given (`requires cond, b outlives a`, decided at calls, `checked` at run time, a tool
  printing the inferred signature); ASKED: the word, `ensures`, scope relations in the clause. 8 doc tests - explained,
  rec now: not until a doc generator exists. 9/10 overloading: the user: "can be solved with generics right?" -
  explained (match T per type, defaults per count, named functions for the rest); rec no overloading; ASKED 9b
  `<T Vec2 or I64>` constraint lists, 10b named constructors later. 11 fixed point DEFERRED to FPGA. 12 maybe/null -
  explained (zero values decide it), rec keep nullable; awaiting the user.
- AGENDA ROUND 2 2026-10-24: 8 doc tests DEFERRED until a doc generator. 12 nullable references KEPT (QAO dropped); the
  user: "Maybe revert the Result work as well? ... free up ?" - recommended: drop QAN (Result, postfix `?` keep-outcome;
  a generic enum covers it later), KEEP QAM (errors as values: catch bindings, `error e`, `type X error {}`, named sets);
  postfix `?` free. 5: the user proposed removing `is` (== identity on references) or a non-nesting == with case tests
  as ==; recommended instead: `==` = contents (following references, Eq overriding, 5a: self-reaching types need Eq),
  `is` = same instance / null / case with bindings. 7: the user's brackets `fn f(x I32) [x > 0] F64 ? E` - recommended
  as the contract syntax (parameters and constants only, decided at known calls, `checked f(x)` at run time, replacing
  call-site leading asserts, no ensures); scope relations `[b outlives a]`. 9/10: recommended overloading by parameter
  COUNT only, extra constructors as functions named for the type ending in a call to the main one (D2 exception);
  overloading by type stays generics + match T, 9b `<T Vec2 or I64>`. ASKED, numbered: 1 dev build name `-quickbuild`
  or `-draft`; 2 the ==/is plan with 5a; 3 `outlives`; 4 overloading by count + named-for-type constructors; 5 9b.
- AGENDA ROUND 3 2026-10-24: DECIDED dev build flag `-quick` (build, compile, test, run; the user leaned to it). Asked,
  numbered: 1 narrowing instead of pattern names (`if e is Expr.Call { e.f }`, locals/params not assigned in the block,
  also after a leaving `if e is not C`) - the user: "without the args we can just access them as e.f"; rec yes.
  2 the user's equality: "Don't follow references but compare them ... equal in memory" - made precise: `==` = stored
  values, references by identity unless the type declares Eq (then Eq at any depth), prelude Array/String/List/Map/Vec
  declare Eq by contents; `is` = null/case only (`a is b` removed; `x == null` an error); rec yes. 3 scope relation
  `a outlives b` only (equality is `b Node&a`); contract conditions any comptime-evaluable expression (the user). 4
  overloading: (a) generics+defaults, (b) Java-style full overloading without defaults, (c) defaults+by-count - rec (c);
  constructors listed one per line under `type Color` each declaring the same fields (the user wanted them in the decl).
  5 nullable references `?Node&` PREFIX (suffix clashes with `fn f() Node&?`), the user now wants `?` nullable;
  `x!` unwraps, narrowing by `is not null`; rec yes. 6 traits: type lists `trait Float { F16, BF16, F32, F64 }` (also 9b),
  `and` constraints, `trait A extends B`, explicit type args `big<I64>` (G12 today: a generic is no value) - rec all four.
- AGENDA ROUND 4 2026-10-24, DECIDED (the user): enum case tests by `==` ("I want == always. It generalizes better into
  the payload case"): `e == Shape.Circle` tests the case, with a payload compares it, `_` matches a part; narrowing after
  `if e == C` (the user's e.f idea); `is` only `x is null`/`is not null`; equality = stored values, references by
  identity unless Eq (prelude collections declare Eq by contents); contracts in brackets after the parameter list,
  any comptime-evaluable condition, scope relation `a outlives b` only (word kept, nothing shorter found); NO
  overloading and no extra constructors ("only generics with defaults ... monomorphism of generics ... the only way to
  achieve polymorphism") - the user's skip-by-type default idea declined by me (overloading in disguise; `default`
  covers it); explicit type arguments `big<I64>`; `trait A extends B`; traits open (methods), parameter type lists
  closed (the user's split). RUNTIME TRAITS (`any Trait&`): the user wants to discuss them before anything is built.
  ASKED: 1 nullable prefix `?Node&` (rec) or suffix `Node&?` with error sets marked `!`; 2 type lists spelled
  `<T (I32, F64)>`; 3 Float/Integer/Number as named type lists `type Float (F16, BF16, F32, F64)` (rec) or sealed traits.
- AGENDA ROUND 5 2026-10-24: the user: "?Node& and Node&! do basically two versions of the same thing and yet they
  declare the ? and ! in different places. That just reads ugly". Proposed (rec): both suffixes - `Node&?` nullable,
  error sets marked `!` after the result (`fn f() Node& ! E`, bare `!` inferred, `Iterator<T ! E>`), `x!`/`f()!` unwrap
  at the use site; every signature's `?` migrated by a tool. Awaiting a yes; still open: type lists `<T (I32, F64)>`,
  named type lists replacing the sealed number traits.
- DECIDED 2026-10-24 (the user: "?Node& is a type marker and ! is for expressions ... We can keep the ? as a prefix"):
  nullable references written `?Node&` (prefix, part of the type, anywhere a type goes); `Node&` never null and flows
  into `?Node&`; error sets keep `? E` after the result (no migration); `!` stays expression-only (`x!` on null, `f()!`
  on failure); reading through `?Node&` needs narrowing (`if x is not null`); `fn f() ?Node&` vs `fn f() ? E` told apart
  by the `&` (only references are nullable). Supersedes QAO's parking. Still open: `<T (I32, F64)>`, named type lists.
- REVISED 2026-10-24 (the user: "Or we put it before the &?"): the nullable marker is `?&` - `Node?&`, `mut Node?&`,
  `List<Node?&>`, `Point?&q` - on the reference marker it modifies; no ordering question with `mut`; told apart from an
  error set by the `&` that follows. Rec yes; treated as decided unless the user objects.
- TRAITS PROPOSED 2026-10-24 (the user: "Do you have a grand solution to trait mixing ... traits that name a restricted
  set of types ... and a way to open up so that a type that knows the trait may implement it"): one `trait`, two forms -
  parentheses list types (CLOSED: nothing else joins, `match T` complete without nomatch, built-in ops usable; sets list
  sets, flattened), braces list methods (OPEN: implicit satisfaction as today, `extends` between traits); both together
  = closed with every member checked for the methods; inline `<T (I32, F64)>`; `and` combines; the bridge: a generic over
  an open trait may `match T` known types with a `nomatch` arm using the methods. No declared `satisfies` (possible later
  as a check only). Float/Integer/Number become closed sets (sealed private-method trick removed). Awaiting the user.
- TRAITS REVISED 2026-10-24 (the user: no parentheses, no explicit implements, "isn't a closed trait also dependant on
  declaring functions, just restricting who is in"): a closed trait is an ordinary trait plus a member list after
  `for`: `trait Float for F16, BF16, F32, F64 { Sqrt() T }`; members checked at the declaration to have the methods
  (the trait module's defaults count); `match T` complete; a member may be a closed trait (flattened); a pure set needs
  no methods (`trait Number for Integer, Float`); no `for` = open as today; no inline sets; `and`, trait `extends`, the
  match-with-nomatch bridge. Proposed; awaiting the user.
- TRAITS 2026-10-24: the user LIKES the `for` syntax (decided: `trait Float for F16, BF16, F32, F64 { ... }`), and asked
  for unnamed sets in declarations "as with errors and return values". Proposed: inline members joined by `or` (commas
  separate type parameters): `fn mix<T for I32 or F64>(a T, b T)`, `<T Shape for Circle or Square>` (closed and must
  have Shape's methods); named traits keep commas. Rec; awaiting a yes.
- DECIDED 2026-10-24 (the user: "let's do parenthesis as <T (I32, I64), U>"): an inline closed set is parenthesized in
  the type parameter list, `<T Shape (Circle, Square)>` adding Shape's methods. The user asked whether parentheses
  should become general listing / tuples: rec grouping only ("a parenthesized list is one item of the list around
  it" - results in function types, constraint sets), no tuple values (D8c). ASKED: under that rule, bring back
  `fn(I64) ? (A, B)` for a function type's error set (removed earlier for named sets)?
  (Clarified to the user: error sets after `?` are built; `fn(x I64) I64 ? (A, B)` in function types is built today;
  named sets are decided not built, QAM, and QAM removes the parenthesized form. Rec now: keep it beside named sets as
  the grouping rule applied.)
  The user: "When I removed the parenthesis form I didn't mean remove the grouping, just remove the parenthesis no?" -
  explained the ambiguity inside a list of types (`Map<String&, fn(x I64) I64 ? A, B>`); rec: parentheses only where a
  set sits inside a list (built today, same rule as `<T (I32, I64), U>`), a signature's own set stays bare. Reading
  taken: QAM's removal reversed for that case; awaiting a yes.
  The user asked whether `<T I32, F64>` may be bare when T is the only parameter: rec no - parentheses always (comma
  means next parameter there, `<T Shape>` trait vs one-member set, one spelling).
- CONSTRAINT ALGEBRA PROPOSED 2026-10-24 (the user: "isn't listing several traits narrowing ... <T Shape House>"):
  side by side = intersection (`<T Shape House>`, `<T Shape (Circle, Square)>`), parentheses = union of member types,
  comma = next type parameter; named: `trait Number for Integer, Float` (union), `trait Dwelling extends Shape, House`
  (intersection). Rec juxtaposition over `and`. Supersedes the earlier `and` proposal; awaiting a yes.
  The user asked whether `<T: ...>` would clear things up: rec no - the comma still ends the constraint, so a union
  still needs parentheses; `name Type` everywhere else; `:` kept free (deferred `lib:Name`).
- DECIDED 2026-10-24 (the user: "Keep it as it is then ... The alternative is not listing valid types, which I would
  also be okay with ... What do you say?" - I recommended dropping inline sets): traits: open (methods) or closed
  (`trait Float for F16, BF16, F32, F64 { ... }`, members checked for the methods, `match T` complete, members may be
  closed traits); constraints side by side = intersection (`<T Shape House>`); `trait A extends B, C`; NO inline type
  lists for now (additive later as `<T (I32, F64)>`); explicit type arguments `big<I64>`; no `:`. Run-time traits to
  be discussed before building.
- CONTRACTS OPEN 2026-10-24 (asked, numbered): 1 conditions read parameters, constants, immutable globals, evaluable
  calls (no mutable globals); 2 `checked f(x)` fails with BuiltinError.CONTRACT; 3 test and -debug builds check every
  contract at entry (rec yes); 4 a function with conditions may be a value, calls through it unchecked; with a written
  scope relation it may not (T22a); 5 no conditions on trait methods for now; 6 no `ensures` for now; 7 constructors
  take conditions; 8 a command printing the inferred signature (`olang explain FILE NAME` or a `signature` mode).
  Decided earlier today: brackets after the parameter list, comptime-evaluable conditions decided at known calls,
  `checked` at run time, `outlives`, leading asserts no longer decided at calls.
- CONTRACTS 2026-10-24, DECIDED (the user): chains `[a outlives b outlives c]` allowed and transitive; a condition may
  read anything known at that point in compiling, as Array<T>(n) decides its length; constructors take conditions.
  Explained: decided while compiling where known (false = error at the call), otherwise unchecked unless the caller
  writes `checked f(x)`. Still open (renumbered): 1 the failing `checked` error `BuiltinError.CONTRACT`; 2 test/-debug
  builds check every contract on entry (rec yes); 3 functions with conditions may be values, calls through them
  unchecked; 4 no conditions on trait methods now; 5 no `ensures` now; 6 a command printing the inferred signature.
- CONTRACTS 2026-10-24: the user, torn on run-time checks ("it will allow extra instructions to be added"): rec run-time
  checking only where `checked f(x)` is written (the same opt-in as `checked a[i]`), failing with `CheckError.CONTRACT`
  (the user: "not built-in remember" - CheckError per QAI); undecidable calls unchecked otherwise; DROP the
  test/-debug entry checks (instructions not written). Awaiting a yes; still open: functions with conditions as values
  (calls through them unchecked), no trait-method conditions, no `ensures`, a command printing inferred signatures.
- CONTRACTS DECIDED 2026-10-24 (the user: "Yes thats good"): decided per condition while compiling where known (a
  false one an error at a plain call), otherwise unchecked unless the caller writes `checked f(x)` (CheckError.CONTRACT);
  no test/-debug entry checks. Still open (my recs stand): functions with conditions as values (calls through them
  unchecked), no trait-method conditions, no `ensures`, a command printing inferred signatures.
  The user asked whether `checked` on conversions confuses since conversions look like constructors: proposed (rec) a
  conversion IS the built-in type's constructor with a contract `[x fits I32]` - constant arguments decided while
  compiling (out of range an error at the call), `checked I32(x)` at run time with OVERFLOW/INVALID; `try` = declared
  errors, `checked` = opted-in conditions, for every call alike.
- DECIDED 2026-10-24 (mine, the user asked "Should unreachable also have a why?"): `unreachable "why"` - an optional
  message, evaluated only when reached, printed `FILE:LINE: unreachable reached: why`; no comma (nothing precedes it).
  Also confirmed to the user: assert stays a language statement (decided, message lazy, FILE:LINE, test-aware); abort,
  done, fail are gone (2026-10-17). Into the next batch with today's decisions.
- CONTRACTS 2026-10-24, DECIDED (the user): functions with value conditions may be values, calls through them
  unchecked; obligations are implicit contracts - conditions on scopes, always decided at the call (a call that can't
  meet one is an error), which is why a function with scope conditions can't be a value; `olang explain FILE NAME`
  prints any top-level item (functions/methods with inferred errors, scope and value conditions; types with
  constructor, fields, methods, traits met; globals with type and baked value). The user wants trait-method conditions
  and result guarantees. Proposed: a call through a constraint is held to the trait's conditions AND, per instance, the
  implementing method's (no implication proofs; `any Trait&` calls get the trait's only); guarantees in brackets after
  the result type `fn sqrt(x F64) [x >= 0.0] F64 [result >= 0.0]`, checked where the evaluator runs the call (blaming
  the callee) and after the call under `checked`; optional later: a caller condition literally matching a guarantee is
  decided. ASKED: `result` as the name (keyword only in those brackets); single results only for now (rec) or
  `result.0`.
- CONTRACTS 2026-10-24, DECIDED (the user): result guarantees name the results that carry them - `fn sqrt(x F64)
  [x >= 0.0] r F64 [r >= 0.0]`, `(q I64, r I64) [0 <= r < b]` - names usable only in those brackets (mine: no naked
  returns); the guarantee comes before `? E` and holds only on a normal return (mine). DIRECTION (the user): "We are going
  to do theorem proving" - the g(sqrt(x)) special case dropped. Rule fixed now (mine): the prover only moves conditions
  out of "unchecked" (proved: no check even under checked; refuted: compile error; neither: unchecked unless checked),
  so a better prover never changes a program's meaning. Prover design (logic: bit-vectors for wrapping integers;
  own solver or an existing one) later. Trait-method conditions parked until run-time traits are discussed.
- 2026-10-24: no naked returns (the user, confirmed). The user: "Why are you parenthesising the return values? We don't
  want that no?" - proposed (rec): several results bare in a declaration (`fn divmod(a I64, b I64) q I64, r I64 [..] ?
  E {`), parenthesized only in a function type inside a list (`List<fn(x I64) (I64, I64)>`), the grouping rule;
  reverses D8c's parenthesized form for declarations; a tool migrates. ASKED: include in today's batch?
- 2026-10-24 (the user: "it is unnecessary syntax, the same should go for parenthesis around something that doesn't
  need them in general ... make the listing one group the entire object ... for function types in lists"): DECIDED
  several results bare in declarations, in today's batch. PROPOSED (rec, examples given): an item of a list with a
  top-level comma of its own is parenthesized whole - `Map<String&, (fn(x I64) I64, I64 ? IoError, ParseError)>`,
  `fn apply(f (fn(x I64) I64, I64), n I64)` - replacing the inner `(I64, I64)` and `? (A, B)`; a function type outside
  a list (a field, a lambda, a declaration) never wrapped. One migration tool for both. Awaiting "gold".

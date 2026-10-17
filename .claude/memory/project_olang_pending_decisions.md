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
- QQ1 ASKED 2026-10-17 (the user: "try (...) should cover all of ..."; "try f().g() should bind to both. Why did we
  decide against that?" - answered: never decided, an artifact of the one-call allowance, E13b/E24 2026-10-07/09).
  Proposed and confirmed in substance ("So try is for calls and checked for operators and calls?" - yes): `try` covers
  every fallible call in its operand, a parenthesized expression or a chain included, and never turns on a check;
  `checked (...)` / `checked a[i]` / `checked a[lo:hi]` / `checked x[i] = v` is try plus the E15a checks (built-in
  operations, a type's Try forms), calls included; a type with only a Try form is usable only under `checked`
  - SUPERSEDED, proposed: the user asked whether an operator with only an error version must always be written
  `checked`; proposed instead that a plain operator method may declare errors (reversing E31a's rule), making the
  operator fallible as written and written with `try`, like a call; Checked forms only as opt-in variants of
  infallible operators. Awaiting the user.
  The Try forms are renamed to match (the user: "So then tryAt etc becomes checkedAt?" - yes): CheckedAt, CheckedPlus,
  CheckedSetAt, CheckedSlice, ... (private checkedAt), reversing the user's own TryAt pick of 2026-10-07. `try { block }` declined for now (hides exits; arithmetic in it either checked or inconsistent). In effect: nothing
  built; awaiting the user's go; then part of the errors batch (replaces E15a/E16c/E16d/R21's try spellings).
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

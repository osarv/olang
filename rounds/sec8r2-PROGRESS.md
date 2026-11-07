# Round sec8r2 - section 8 round 2: O27 as placement (wt-sec8r2)

Brief: /home/user/review/rounds/sec8r2-brief.md; rules: /home/user/review/rounds/finish-rules.md; design: docs/sec8.md
sections 4 and 9 ("Round 2"); round 1's hand-off: /home/user/review/rounds/nll-PROGRESS.md.

(CLAUDE.md and HISTORY.md were restored by merging wt-merge 94ce796.)

Development compiler: build/olang.base (wt-merge's olq4, 13:02), then
`/home/user/blk build/olang.base build -quick -output build/olq compiler/olang.olang` (~2.5 min).

## Done

- 51c5ea5: scope.olang - views, parts and captures propose their storage (proposeView, viewBase, tempSite,
  proposeStorage, convertedLocal, borrowedCall, choiceInit, viewedBy); inferClaims in two phases (whole lifts, then -
  only where viewWanted - views); part lifts once the field inference settles (partsOn, partWanted/partNow);
  View relations lift at calls in the second phase; temporaries homed where a kept slice needs them (Plan.TempKept,
  lowering's tempLocal).
- a391837: SPEC O27, O28, O14, T22, D18c, D18e, B18; msgs ViewKept/ViewReturned reworded, ViewKeptDestructor,
  ViewKeptCopy, PartKeptDestructor; the destructor refusal (mayHoldDtor in proposeStorage, captures, borrowed calls,
  parts); C4 (summary.Erred: callers do not discharge a body that erred); -memory's rows (Scoper.Placements,
  PlacedReport, printed by olang.olang after early freeing's).
- 8a3fc38: the language server's hint (session.Placed, lsp's deprecations()).
- 56f18aa, 70b0a12: 24 cases now run cases (-debug -sanitize, read back after a churn, interpret agreeing); new fail
  cases o27destructorview, o27destructorgen (C4's one error).
- 56015d6: tests/viewplace.olang (K2 global, S17a asserts); the stand-in placement homes a viewed temporary in the
  program's scope (lowering.viewing) - the evaluator had read a slice of one from a closed frame.
- 05c609d: checks scenario memoryplaced (fixture checks/fixtures/memoryplaced).
- 98e2dc1: CLAUDE.md entry "Storage kept for a view", HISTORY.md "Storage kept for a view: O27 as placement".
- b08d404: the first phase exactly as before (judgeOnce proposes no view; a borrowed call keeps its own landing; a local
  declared from one proposes only in phase 2); C4 narrowed to the reports (an erred callee's obligations still pass up)
  - the first C4 changed the field inference's rounds and cost the scope phase 15-20% on compiler/.
- a6d2971: free.olang viewCtor records array leaves (kept); checks/cases/o8dviewctorarray.
- d5af412: fuzz/scopegen - kept-view scenarios; the header's helpers as type-level builders (D19a had refused every
  generated program since the builders round; smoke runs: scope 4 programs/21 scenarios, free 2 programs - 0 findings).
- f5fc959: checks/cases/p2viewtask (a view handed to a task: storage at the join's level).
- Gates measured (before the last commits; the code since changed only C4's reports and phase-1 parity, which brought
  the stats back to the base's): bench's 16 programs and compiler/'s 315 modules IR byte-identical to the base compiler
  (scratchpad irgate.sh: objects are named by their IR's hash, so side b writing no `*.quick.ll` means identical);
  OLANG_SCOPESTATS on compiler/ identical to the base (294 locals lifted, 186 calls landed, 3 needing a W, 72 version
  re-judgings, 0 second phases), scope phase 3.6-3.9 s both. The full checks cases run: all pass (after the seven newly
  accepted fail cases became run cases). tests/nll, kept, drops, unique, viewplace, iterator pass; nll, kept, drops
  under -debug -sanitize too.

- 4d57e93: the checks' interp scenario refused program is now a view of a destructor-holding local kept longer (what
  stays refused); its check reads `error[O27`.
- 811b5ed: compiler/goldens/diag.txt recaptured (my 21 run cases and 2 refusals, round 1's four stale rows; it also
  gained the nll and columns cases' rows the golden lacked - identical to wt-merge's golden at cee098e).

## make quick (2026-11-07, second run, 9m42s)

Every test file and every checks case passes; the checks scenarios pass (after 4d57e93). Failing only on goldens:
diaggold (recaptured, 811b5ed); tokdiff (354 of 2298 files), astdiff, layoutdiff and drvdiff - stale goldens, mostly
other merged rounds' files (bench, d19 cases, std/io Writer, std/json layouts, interp's `-interpret` option); mine among
them: drvdiff's `-memory` help line (three command lines), the tokens/trees of my new files, Scoper/Plan layouts. Left
to the coordinator's end-of-day recapture (drvgold is not mine to recapture per finish-rules; tok/ast/layout are not
all mine).

## Decided (mine)

1. Views propose only in a second phase run where the settled first phase still met a view kept too long - accepted
   programs pay no judging and place byte-identically.
2. Parts propose only once the field inference settled, then only in the second phase, every component judged afresh.
3. A local declared from a conditional or a match proposes each value as stored alone (E28), in the second phase.
4. A call handing back a borrow of an argument (O13) is a view of that argument: the argument proposed.
5. A slice of a temporary homes the temporary where the view is kept (Plan.TempKept), a new object each time.
6. Storage holding a destructor value is never placed longer for a view, part or capture (question 2 as recommended).
7. C4: what a body that erred requires is not said again at its calls (summary.Erred); its obligations still pass up
   and lift (the first version skipped them and cost the scope phase 15-20% on compiler/).
8. -memory rows after early freeing's, in source order; the language server a hint with code O27.
9. The stand-in placement homes a temporary a slice or borrow is taken of in the program's scope (evaluation only).
10. D18e: emit's elision dataflow already refuses a walk placed in an outer block and called each turn - emit unchanged.
11. viewCtor's array leaves are recorded as values not made for the place (kept), never as fresh ones: nothing reaches
    the path today (a viewing constructor's copy stored in place - every place it reaches keeps for other reasons), so
    the conservative reading closes the hole without relying on the region placement of a D9h copy's arrays.
12. The unique hand-on move is NOT built in this round (below): it is a section-8 change of its own.
13. fuzz/scopegen's header helpers are type-level builders (D19a refused every generated program since the builders
    round - the scope fuzzer ran no scenario); a kept-view scenario added (one in sixteen).

## The unique hand-on move (brief item 1) - not built, the analysis for whoever builds it

Measured (scratchpad programs, 1M cycles, a unique `Res` owning an `Array<I64>(32)`, `Map<I64, Res>`, key i % 64):
put+Take 517 MB, Put replacing 260 MB, put+Remove 517 MB (0.2-0.4 s). `OLANG_FREEDUMP=1` says why: the place
`Res.1` (the data array) is not sole - "a value holding it is made with no store into it, by a copy of a value holding
it: 'value'": check's valueArg/partCopy make a MakeKind.Copy at every hand-on of the by-value parameter (Put's
`m.add(b, key, value)` map.olang:122, add's `MapEntry<K, V>(key, value)` map.olang:82, :36), so the values the Map
stores are copies, never made for the place, and a let-go (Put over, Take's vacate, Remove's vacate) frees nothing.

What a move needs (each a piece of its own, in this order):
1. check: valueArg, partCopy and storeOver's held copy skip ownCopy where x is a unique by-value parameter's hand-on at
   its last mention (uniqueLand took the handedOn path; the Seq with Gone) - the value then flows on as itself.
2. types.ScopeVarsOf: a by-value parameter of a unique type owning parts (OwnsParts, not HoldsRefs) gets a scope
   variable - where its owned storage lives - so that storing it moved into a longer place is an obligation its caller
   meets by building the argument there (O18b). Only unique types: a plain value's by-value argument is a copy by
   meaning. Programs with no such type keep their function types' scope variables, so their IR stays as it is.
3. scope.olang: `read`/`val` of a unique value owning parts give its owned storage a term (Val.existing of the
   parameter's variable, or a local's storage term) instead of Val.plain (Res holds no reference, so every fit is
   skipped today - which is why the drop-order round's attempt read freed storage under -sanitize); assign/let/args
   fit it against the slot's storage term; a fresh argument for such a parameter is built where the variable is bound.
4. free.olang: with the copies gone the place's values are all made by Res's constructor (made for the place) - check
   the place comes out sole and the Map's let-goes release it (Part C's destructor-modelled release); measure the three
   patterns flat (under ~8 MB), and under -debug -sanitize and interpret.
5. Gates: bench IR identical (no unique type owning parts there), the compiler's IR (none in compiler/), the suite.
The drop-order round's alternative (tracking each copy as made for the place and releasing the handed-on source) also
works for Put but needs the copies' sources released - more machinery for the same result; the move removes copies.

## Next - round 3 (T22a's relations, docs/sec8.md section 5), for a fresh agent

- Read docs/sec8.md section 5 and 9's "Round 3", this note, round 1's (/home/user/review/rounds/nll-PROGRESS.md).
- Where round 2 left the code (compiler/scope.olang): `proposeView` (views, captures, borrowed calls, conversions,
  temporaries), `proposeFrom`'s terminal (viewedBy, borrowedCall, choiceInit), `inferClaims`/`inferRounds` (the phases,
  viewWanted), `liftLocal` (partsOn/partNow, placed), `inferFields` (partsOn), `Placements`/`PlacedReport`,
  `summary.Erred` (C4). Records travel (5.2) along locals' versions as terms do; a function value's record is new state
  beside `defTerms` - keep it out of the second phase's gating (records are no lifts).
- T22a's boundary check moves from `fnValues` (after every judging) into the walk (5.4); `valueRels` stays for
  unknown records. callvaluekeepsblock becomes a run case (its closure's `m` built where `kp` lives - round 2's
  closures-as-views already does the placement part).
- Gates as round 2's: bench IR byte-identical to round 2's (scratchpad irgate.sh's method: build with both compilers,
  objects are named by their IR's hash, so side b writing no `*.quick.ll` means identical), the self-build, `make quick`.
- Also open: the unique hand-on move (above), which is its own round (section 8 + check + free.olang).

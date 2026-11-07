# Section 8, next round: NLL, O27 as placement, function values with relations (sec8)

The design note for the section-8 round after the build batch (2026-11-07, for review; nothing built). It settles the
three decisions of 2026-11-03 - reference locals typed per assignment ("NLL DECIDED"), O27 as placement and T22a's
function values carrying their inferred relations ("QCR (1) DECIDED") - and the items folded into the round (LIST.md
C3, C4, C6 and the T25d imprecision). The current state is SPEC.md section 8 and CLAUDE.md's "Memory and scopes";
the model it extends is docs/scope-model.md and docs/rework.md section 2.

## Progress

Hand-off for a fresh agent after a restart. Brief: /home/user/review/rounds/sec8-brief.md. Output: this file and one
line in docs/README.md, committed on wt-sec8 (only those paths; no push). Experiments: the compiler built at fe143d3
(copied from /home/user/wt/merge/build/olang to the scratchpad), run with `OLANG_STD=/home/user/wt/sec8/std`.

- [x] read the state: SPEC section 8, T21-T25d, D16c/D16d, D18e, B18; CLAUDE.md's memory entries; decisions.md (NLL
  DECIDED, QCR (1) DECIDED); HISTORY.md ("the three dump tools", C3, C6); LIST.md; the WIP patch
- [x] read compiler/scope.olang's terms, fit, order, inference (lifts, views, parts), judging order, keeps analysis,
  T22a (fnValues, valueRels); where -memory is printed
- [x] reproduced every shape (section 1): the cursor, a constant then a view, the dump tools, the T25d element, O27's
  and T22a's refusals, gen_walkkept; found C3 and C6 compiling already
- [ ] the design: sections 2-6 (writing)
- [ ] the evaluator, the touch points, the build plan, decisions, questions: sections 7-11
- [ ] docs/README.md line; committed

## 0. Summary

**The design in a few lines.**

1. **NLL - versions.** A reference local (a reference parameter, a local holding a function value) gets a *version*
   at its declaration and at every whole assignment, each with the exact scope of the value it was given. A
   structured reaching-definitions walk (one walker in typed.olang, beside `Landings`) says which versions may reach
   each statement; the scope pass reads a local's term at a statement as the versions reaching it (one term, or O12's
   "not known here" where they differ). The assignment itself requires nothing; every *read* requires its versions to
   be valid where it stands (their scope open there) - a failure proposes a placement first, an error only where the
   value's storage cannot be built longer. `at = at.parent` converges because an underestimate (O23's "a scope that
   outlives t") is interned by the term it stands above. Compile time only.
2. **O27 as placement.** Every edge lifts: a view of storage kept longer builds that storage where the view is kept,
   as item 17 builds a kept local there (O28, `plan.Stored`, `homeKept`). View lifts are gathered only after whole
   lifts have settled, and part lifts only after the field inference has settled, so a program accepted today places
   exactly as today. What stays refused: a by-value parameter's own storage, a generator `Next()`'s result scope,
   and (question 2) storage holding a value with a destructor. `-memory` lists every placement made for a view with
   the view that keeps it and the copy that would let it go with its turn; the language server hints at it.
3. **T22a - relations travel with the value.** A function value carries a *record*: the body it is and, for a lambda,
   where each capture lived when it was made. Records travel along what the inference sees whole - a body's locals
   (each version), conditionals and matches, a call's result (the callee's summary) - and a call through a value with
   a record is judged as the direct call it is. They stop at places shared by code judged once for many values:
   parameters, fields, elements, globals, captures, `any`, and (question 1) a generic's type variable. There T22's
   contract is all a call relies on, and T22a's error is said where a value carrying more reaches such a place.

**Rounds** (section 9): 1 - NLL, with the T25d fix, the keeps analysis over versions, C3/C6 pinned and the dump tools
built by verify; 2 - O27 as placement, with closures' captures, C4, `-memory` and the hint; 3 - T22a's records; 4 -
only if question 1 says yes: generic type variables carrying relations (scope twins). Then reuse in place.

## 1. Where things stand (measured at fe143d3)

Each shape below was built with the compiler of fe143d3 (scratch programs, not committed).

| shape | today | rule | after |
|---|---|---|---|
| the widget tree's click as a loop, `at mut Widget?& = w` ... `at = a.parent` (docs/values-study/gui/refs.olang) | refused | O25 (`parent` has a binding of its own, read through a local at an underestimate) | round 1 |
| `op := " < " if k == 0 else " == "` then `op = String&[" + ", " - ", " * "][k - 2]` | refused | O25 (the element scoped to the literal's temporary block) | round 1 (T25d alone fixes it; NLL too) |
| `planAt String& = ""` then `planAt = args[k]` (compiler/tools' scopedump, lowerdump, emitdump) | the obligation `args outlives the program`; `os.RunOnStack(.., fn() { run(args) })` then T22a | O25b's equality, then T22a | round 1: no obligation, the tools build |
| `keep.Push(String&["a", "b"][k])`, `w = String&["a", "b"][k]` | refused | O10c, O25 (T25d imprecision) | round 1 |
| `keep = try mk(i) catch default inner`, `inner` the loop's (checks/cases/r9adefaultinner) | refused | O25 | round 1 (a version read after the loop: `inner` built where it is read) |
| a turn's text kept through views: `t := $k ...; keep.Push(t[0:1])`, a generator's borrowed words kept (o27genborrow, d18cinputoutlived) | refused | O27 | round 2 |
| a generator yielding views of a local it made (d18cyieldlocal, d18cyieldframe, bulk 6's gen_walkkept) | refused, gen_walkkept twice (O27 in the generator, O10c at the consumer - C4) | O27, O10c | round 2 |
| a slice of a temporary stored into a parameter's field (rv9slicetemp, -as, -view), `h.s = Bytes(local)` (t29aconvlifetime), an element's borrow stashed (o10celementstash), views through a callee (o25enote), through a function value (t22aviewkept, t22borrowedresult) | refused | O20, O27 | round 2 |
| a lambda capturing a block's reference, stored where it outlives the block (d16cstore) | refused | O20 | round 2 (a closure is a view of its captures) |
| a part of a local's instance kept longer where no field binding serves (o23adepth) | refused | O20 (PartKept) | round 2 |
| `g := link; g(x, N(5))`; `add := fn(k String&) { names.Push(k) }; add("a")`; `f := mk(gone); f("b")` | refused | T22a | round 3 |
| `put(link, x, 42)` with `put(f fn&(a mut N&, b N&), ..)` (t22sharedscope, -type, t22aobligation), a keeping lambda stored in a field (t22alambdakeeps), Call adapters through written types (callvaluekeeps*), an `any`'s method (t32anyscopes) | refused | T22a, T32a | stay refused (a written function type) |
| `keep<F>(f F) F`, `f := keep(link)` (t22sharedscopegeneric) | refused | T22a | question 1 (default: stays refused) |
| a by-value parameter's own storage returned or kept (o26own, e31calllocal, r9adefaultlocal, o10dd9bslice) | refused | O10d, O14 | stay refused |
| a reference stored into a field with a binding of its own, from a longer scope (o25gfieldbinding) | refused | O25h | stays refused (exactness at a slot - fields get no versions) |
| C3: `x2 := x1; return x2` of a constructed local, with and without `x1` read after | **accepted, clean under `-debug -sanitize`** | - | pinned by a run case (round 1) |
| C6: `chan.Select(chan.SendOf(r, 9), chan.SendOf(full, 4))` written inside a join block | **accepted, clean under `-debug -sanitize`** | - | pinned by a run case (round 1) |

C3 was fixed on the way by D9i's widenings (a returned whole-local copy placing the local where the result goes,
String immutable's batch); C6 by the kept round (C1: a callee building into a derived scope is given the program's
scope; item 17). Neither has a case that holds it: round 1 adds both.

Two things the probes showed that shape the design:

- **A reassigned reference local is already conservative in the keeps analysis.** `fn f(p mut N&, q mut N&) { c :=
  q; c = p; c.next = N(7) }` is refused for a split value lent for either parameter (O17) - the store through `c` is
  counted against both regions. Today that holds because `c = p` makes `p` and `q` one scope (O25b's equality); NLL
  removes the equality, so the keeps analysis must keep naming every region any version names (3.6, decision 8).
- **Function values held only in locals are refused today**, though a call through such a local sees exactly which
  function it calls: the commonest is a local helper closure pushing into a captured collection (`add := fn(k
  String&) { names.Push(k) }`), refused as "this lambda keeps 'k' beyond the call".

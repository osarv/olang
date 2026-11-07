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

## 2. The model this round extends

Unchanged, and relied on below (docs/scope-model.md, docs/rework.md 2.1-2.7, scope.olang's header): a body's terms
are its blocks (`Block`), its scope variables (`Var`: reference parameters, by-value ones holding references, the
result scope, an instance, a capture), the program's scope, derived scopes (`Derived(p, w)`, O23a) and two static
ones - a set of terms not known here (`Set`, O12) and an untraced one; an **underestimate** is a `Derived` with a
negative index whose `under` entry is the term it stands above (O23: "the container's scope - an underestimate and
never a claim"). `order` judges "outlives" (Holds, Obliged, FailsBlock, FailsUnknown); `fit` puts existing storage
into a slot (outlive it, exactly where something can be stored through it, O25g); a temporary is built where it lands.
A local has one **claim** (`terms[l]`), proposed by quiet judgings that gather **lifts** (`propose`, `liftLocal`,
`proposeSite`) until none grows (`inferClaims`; a lone body `judgeOnce`, redone where it lifted or said something),
then judged reporting. Only whole flows lift today: a view (`viewRoot`: a slice, a borrow of a part; a callee's
relation marked `View`; a part of an instance a local builds, `partFlow`) proposes nothing, and a failing fit of one is
O27's or O20's error (`viewKept`, `partKept`). Obligations are summaries over Tarjan's components, callees first.
T22a: a function named or made a value is recorded (`fnUses`) and refused after every judging (`fnValues`) unless its
obligations are only what T22 says of every call through a value (`valueRels`, `valueCovered`).

## 3. NLL: a reference local takes the scope of what each assignment gives it

### 3.1 The rule, as SPEC would state it

**O25a** (revised, the first sentence kept): "A local lives where the inference places it (O28) ... `x := e` takes `e`'s
exact scope. A reference local or parameter, and a local holding a function value, take at each assignment the scope
of what it gives them - a new **version** (O25i); every other local (a value holding references, O25h) keeps one claim."

**O25b** (replaced): "Assigning to a reference local or parameter, or to a local holding a function value, gives it a
new version holding the value's exact scope; nothing is required of the assignment itself (a temporary assigned is built
where the version's reads need it, O28). Each read is judged against the versions that may reach it (O25i). Storing
into a field, an element or a payload is unchanged: O25c."

**O25i** (new). **Versions.** "A version is what the declaration or one assignment gives a local. It reaches every
read a path from that assignment arrives at with no other assignment of the local between them - through branches,
through a loop into its next turn and out of it, into a `catch` clause from anywhere in what its `try` covers, and into
deferred code, which any version of the local in its body reaches (it runs at a way out of its block). A lambda reads the
local where it is made (D16c), a task where it is spawned. At a read:

1. every version reaching it must still be valid there: the scope where its referent lives must be open where the
   read stands. Where it is a block the read is not inside, what the version names is built where the read needs it,
   if it can be (O28) - else the read is a compile-time error naming the assignment and a copy (`$x`, `x.Copy()`);
2. the value read lives where its versions do: one version, exactly there; several living in different scopes, where
   it lives is not known here (O12) - it may be read, compared, walked and passed where outliving suffices, but nothing
   is built through it, and it determines no scope variable through which something can be stored (O25e, O25g): an
   error there names the assignments whose scopes differ.

A version is judged by what it holds, never by the local's other versions: `at = at.parent` walks a chain of parents
whatever their scopes."

**O12** (one item added): "... or a read of a local reached by versions living in different scopes (O25i)."

**T25d** (extended): "An element of a static literal is static data too: walked by `for ... in`, read by an index or a
slice, or bound by an array pattern (`String&["a", "b"][k]`) - it lives in the program's scope and may be stored
anywhere." (The folded T25d imprecision; section 6.)

What does not change: fields, elements and payloads (O25c - a slot's exactness, o25gfieldbinding stays refused);
value locals holding references (O25h's one claim); obligations (O10b) except that reassignment no longer makes two
scope variables equal; O26a's move of a returned local (it keeps moving the whole local, every version's temporaries -
an over-approximation, as today).

### 3.2 Versions: a reaching-definitions walk

The reading "which versions reach this read" is syntactic, so it is computed once per body before the scope pass
judges it - no dataflow over terms is needed for it.

- **Which locals.** A *cursor* is a local of kind Var or Param whose type is a reference or a function value and which
  is assigned whole after its declaration (`assignedTo`, which scope.olang's `walkBody` already computes). Bodies with
  none - nearly all - are untouched: their locals keep one version, today's claim.
- **The walk** is a may-analysis of the shape `typed.Landings` has (paths saved and restored at branches, a loop's
  breaks and continues collected, code that runs later): `typed.Versions(body, cursors)` numbers each cursor's
  definitions - its declaration (version 0; none for a declaration with no value, D13d) and each `Assign` whose target
  is the whole local - and gives, for each statement, the definitions of each cursor reaching its start: `If` merges its
  branches (a missing `else` merges the condition's fall-through); `Loop` iterates its body until the definitions at
  its head stop growing (bit sets: a few passes), `Jump` sends its state to the loop's exit or head, `Return`, `Raise`,
  `Reraise`, `Exit`, a `become` and a `noreturn` call end a path; a `match`'s arms and a conditional's values (statements
  inside expressions, `Seq`) merge as branches; a `catch` clause starts from the union of the states inside what its
  `try` covers; `Defer`, a join's clauses and deferred code read every definition of the cursor in the body (they run
  at a way out, after anything - `Landings`' "later"); a `Spawn`'s task and a lambda read where they stand.
- **Keys.** A statement is named by where it starts. Two statements check makes at one place (a desugared `do ... for`,
  a for-in's hidden statements) get the union of what reaches either - sound, never more precise than needed. A
  statement holding a nested assignment of a cursor (in a `catch` block or a `match` arm inside it) reads that cursor
  with the union of what reaches the statement and every definition inside it.
- **Where it lives.** typed.olang, beside `Landings`, `DropsRun` and `BreaksOut` (the shared structural walkers), with
  test blocks over every construct; the scope pass asks it once per body that has a cursor and keeps the answer with the
  body's other pre-scans (`assignedTo`, `borrowedTo`). check needs nothing; the typed core is unchanged.

### 3.3 Version terms in the scope pass

- **A definition's term** is fixed where its statement is judged: the declaration's as `let` fixes a claim today
  (`markTerm`, `:=` taking its initializer's exact term, constant data the program's scope); an assignment's is the
  value's term (`valTerm`) - existing storage exactly where it lives, a temporary at the site's placement (3.5). The
  assignment's `fit` against the local's claim goes, for cursors only (`assign`'s `FitLocal` path; the WIP patch's
  `cursorAssign` did the opposite and is not taken).
- **A cursor's term at a statement** is the term of the definitions reaching it: before `stmt` judges a statement it
  sets `terms[l]` of each cursor to `setOf` their terms (one term where they agree). So the 28 places that read a local's
  term (`terms[...]`, `peekPlace`, `slotOf`, `valTerm`) read the right version with no change of their own - the one
  reason to key the walk by statement.
- **Across a body's judgings.** A definition later in the walk than a read it reaches (a loop's next turn) has no term
  yet when the read is judged: the read uses what the definition had in the body's previous judging - none in the first.
  Each definition's term is kept between judgings (`defTerms`, keyed by body and definition) as plain terms - blocks,
  scope variables, the program's, derived scopes - and underestimates by the term they stand above, since `Set` ids and
  `under` indices are numbered afresh in each judging. An underestimate of an underestimate is the first one, and of a
  set the set of underestimates, so a definition's term is drawn from a finite universe and only grows.
- **When to judge again.** At the end of a judging the scope pass compares each loop-carried definition's term with
  the sets the reads it reaches were judged with: only where it adds a member to one is the body judged again (as
  `liftGrew` asks today; `judgeOnce` redoes it). `at = at.next` over a bare field adds nothing - the read already held
  the declaration's term - so the commonest cursor costs no second judging; the widget's parent walk costs one (it
  adds an underestimate once, then nothing). Where a body is judged quietly first for its assigned locals' records
  (`lateGather`, which every cursor of a type with constructor parameters already causes), that judging seeds the terms.

### 3.4 Reads: validity and exactness

- **Validity** (O25i item 1). At a read of a cursor reached by an assignment's version, `fit(term, Block(here), not
  exact, FitLive)`: each member must outlive the innermost block around the read. A read in deferred code is judged
  against its registering block; a capture, at the lambda; a spawned task's argument also outlives the join (P2, as
  today). Reads reached only by version 0 need no check - the declaration's term encloses its block, as today.
- A failing validity fit is a **lift proposal** like any other (3.5): what the version names is built where the read
  is - `inner` in r9adefaultinner is built in `main`'s block, a new one each turn - so the read error arises only where
  the version's storage cannot be built longer (O27's list, 4.3), worded as O25i's.
- **Exactness** (item 2). A read whose versions differ is a `Set`: `fit` judges it per member for outliving, and
  every exact use - a temporary stored through it (`at.next = Node()`), an argument binding a scope variable something
  can be stored through (O25e), an exact slot (O25c) - is O12's error, with a note at each assignment whose scope
  differs. One version's term is exact (it took the value's exact scope), so stores through a cursor that holds one
  version, or versions of one scope, build where its referent lives: `cur = cur.next!` over a bare field and then
  `cur.next = N(v)` builds in the list's scope.
- **Underestimates** read and compare as the term they stand above (`order(floor(t), b) = order(t, b)`), and are never
  exact or built into - the widget's `at` may be clicked, compared, returned or stored where outliving suffices.

### 3.5 Lifts through versions

`propose(x, t)` with `x` reading a cursor follows the versions reaching that read to their values: for each, it
proposes on the definition's value expression - a temporary's site is lifted (`proposeSite`, so a version's temporary
is built where its own reads need it - floor: the local's block - and never where the local's other versions are
kept), another local is lifted (`proposeLocal`), a parameter's or the program's storage proposes nothing (an
obligation, or nothing to do). A definition whose value reads a cursor (`at = at.parent`) proposes through the versions
reaching that inner read, with a visited set. So a lift asked by one read lifts only what can reach it, and NLL
never builds a value longer than the reads of its own version need - shorter than today, where a temporary assigned to
a reference local is built where the local's whole claim is (decision 6).

### 3.6 Everything else that reads a local's scope

- **The keeps analysis** (O17: `computeKeeps`, `aliasOf`, `regionOnly`). A cursor names, for what a body keeps and
  stores, every region any of its versions names: `aliasOf` becomes a set for cursors, and a store through one is a store
  into each region (decision 8). Today's conservatism (section 1) came from O25b's equality; it must not go with it.
  Cases: the two probes of section 1, as O17 fail cases.
- **Records** (O23a's per-instance bindings of a local, `late`, `noteLate`) stay as today: a reassigned local's record
  is the merge of every value it is given. Per-version records are a refinement left out (nothing refused needs it).
- **O26a** (a returned local in the result scope): unchanged - a returned cursor moves whole, every version's temporary
  built in the result scope. The per-read lifts of 3.5 would place them precisely; replacing O26a's syntactic move for
  cursors is a later refinement (a plan change for accepted programs, measured first).
- **Captures** (D16c, D16d): a lambda captures the version reaching it; the closure's term is built from those
  versions' terms, as today from the claim.
- **Generators**: a `yield` is a path point like any; a version never holds a `Next()` result scope (temporaries of an
  assignment are built at the version's placement, and `liftLocal` refuses that scope, D18b).
- **Narrowing** (S8e) is check's and is unchanged: a narrowing still ends at a statement assigning the local.

### 3.7 Why it is sound

The run-time invariants are docs/scope-model.md's: I1 (a reference stored in a slot points into a scope that outlives
the slot's), I2 (exactness where something can be stored through it). A reference local's slot is a special slot:
nothing can name it (T11: no reference to a reference), so nothing is stored through the *slot*, and the only thing
I1 protects there is that a **read** of it finds its referent alive. NLL replaces "the referent outlives the local's
block" by the weaker invariant it needs:

> **N.** For every read of a local at a point u, and every value v the local may hold at u, the scope v's referent
> lives in is open at u.

- *Reaching definitions over-approximate.* Every value the local holds at u at run time was given by a definition
  with a path to u free of other definitions; the structured walk includes every such definition (a may-analysis over
  every path the core's control flow has - branches, loops, jumps, clauses, deferred code at every exit). So the
  versions reaching u include every dynamic value at u.
- *A version's term is exact.* A definition takes its value's exact scope (O25: a reference's tag is exact); a
  temporary is built at its placement, which is its term. So "the version's term is open at u" is "the referent is
  alive at u", and item 1 of O25i is N, checked at every read reached by an assignment (version 0's term encloses its
  block, so its reads hold N by the declaration's own judgment, as today).
- *Stores through a read* build into its term (E12c); I2 needs that term to be where the referent really is, which
  holds for one version (exact) and is refused for several of different scopes (O12) and for underestimates. So I2
  holds for everything built through a cursor.
- *Values read flow on as today.* A read's value carries its versions' terms; every slot it reaches is judged by FIT
  with that term (a set per member), so I1 holds for every slot by the existing argument.
- *The loop fixed point.* Definition terms live in a finite universe (the body's terms, underestimates interned by
  base, sets as subsets) and only grow (a value's term is monotone in the terms of the reads it is built from), so the
  iteration reaches the least fixed point; the reporting judging uses it, so every read is judged with a set that
  contains every reaching version's term.
- *Obligations* only shrink (O25b's equality between two scope variables is gone); a caller's discharge is O10c's.
- *The keeps analysis* over-approximates (every region any version names), so O17's lending stays sound.

Nothing changes at run time: versions are the scope pass's reading of the typed core; the only plan change is where a
version's temporary is built, which FIT then judges as any placement.

### 3.8 Cost

`typed.Versions` runs only on bodies with a cursor (one linear walk; a loop's body re-walked until its head's bit sets
settle, two or three passes). A second judging only where a loop-carried version adds a scope (3.3). The scope phase on
compiler/ is ~1.35 s; the round measures it with `OLANG_TIMES` and counts version re-judgings in `OLANG_SCOPESTATS`
beside `Redone`, and holds it within 2%. Expected well under that: judgeOnce already redoes about one body in fifty, and
cursors whose versions add a scope are rarer than cursors.

### 3.9 Programs

Newly compiling: the widget tree's click loop; `planAt` (so scopedump, lowerdump and emitdump build - decision 19 puts
them into verify); `op`'s element of a literal; r9adefaultinner (its `inner` built in `main`'s block, the read after the
loop valid - the case becomes a run case read back after a churn); a list's tail found by a cursor and appended to;
a cursor over two parameters read and compared. Staying refused: a cursor given values of two scopes and then built
through (new case, O12 naming both assignments); the keeps analysis' two probes (O17); a slot's exactness
(o25gfieldbinding).

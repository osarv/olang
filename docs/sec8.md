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
- [x] the design: sections 2-6
- [x] the evaluator, the touch points, the build plan, decisions, questions: sections 7-11
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
proposes on the definition's value expression (version 0 is lifted as a local's claim is today, `liftLocal`, its
temporary built at the claim) - a temporary's site is lifted (`proposeSite`, so a version's temporary
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

## 4. O27 as placement: storage a view needs is built where the view is kept

### 4.1 The rule, as SPEC would state it

**O27** (replaced). **Storage kept for a view.** "A view of storage - a slice, a borrow of a part, what a callee hands
back of an argument's storage, a closure of what it captured - kept where that storage does not already live has the
storage built where the view is kept, as a whole value kept longer is (O28): `for k in range n { t := $k "-x";
keep.Push(t[0:1]) }` builds each turn's `t` where `keep` lives, a new one each turn, kept until that scope closes.
`-memory` lists each such placement with the view that keeps it (B18), and the copy that would let the storage go with
its turn (`keep.Push($t[0:1])`). A part of an instance a local's constructor built, kept longer, gives the field a binding
of its own where the constructor can bind it (O28), else has the instance built where the part is kept. Storage that
cannot be built elsewhere stays where it is, and keeping a view of it longer is a compile-time error naming a copy of
what the view shows: a by-value parameter's own storage (the call's copy, O14, C2d), a match binding's or a capture's
own copy (S13b, D16c), a generator `Next()`'s result scope
(D18b), storage reached through a derived scope or a scope not known here (O23a, O12), and storage holding a value
whose destructor is still to run (O15: it would run later than its holder lets go) [question 2]."

**O28** (its last paragraph): "The placement never extends storage past the loop turn or the block that made it for a
part of it (O27)" becomes "The placement extends storage only for what is kept: a whole value where it is kept, the
storage a view shows where the view is kept (O27)"; "where no placement satisfies every use, the program is refused"
keeps its list minus O27's copy.

**O14**: "and not a view of storage such a block built (O27)" becomes "a view of storage the function builds has that
storage built in the result scope, as a returned local is (O26a, O27)".

**T22**: "as a view: met by where the argument already lives, never by building it longer (O27)" becomes "an argument's
storage the caller builds is built where the result lands (O27)".

**D18c**: a generator yielding views of a local it made builds that local where the generator lives (the third form,
"kept by the walk"). **D18e**: "Such a walk lives in the block the loop's statement is ... whatever the generator was
given" gains "- unless what it yields is a view of what the walk keeps and the loop's body keeps it longer: the walk is
then made where that is kept (O27), and walked as D18b says".

**B18** (a paragraph added): "Then a row for each placement made for a view (O27): `path:line:column: memory: 'X' is
built where 'Y' lives, a new one each time it is made, for a view of it kept here` at the view, a `note:` at X's
declaration, and the copy that would build it per turn; a line counting them."

### 4.2 The inference

Every edge lifts; the rest is when.

- **A view proposes.** In `propose`, where the value is no whole local's (`wholeRoot < 0`), its view's root is
  proposed - `viewRoot` (a slice of a place rooted at a local, a borrow of a part) through `viewSource`'s origins -
  with its storage (`proposeLocal(root, t, stor = true)`: item 17's path, `liftStor`, `plan.Stored`, lowering's
  `homeKept`: a new value each time the declaration runs); a slice of a temporary lifts the temporary's site
  (`proposeSite`); a reference local's view lifts what it names (its claim, or its versions' values, 3.5).
- **Through calls.** `liftAtCall` no longer skips a relation marked `View`: the argument determining its outliving side
  is proposed, its storage with it. The mark stays on relations and lifts only to say, in `-memory`, which placements a
  view caused.
- **A closure is a view of its captures.** A lambda kept longer than what it captured (D16d: it lives where its
  captures do) proposes each capture's outer local - a reference's claim or versions, a borrowed value array's storage
  (D16c). d16cstore's `p` is built where `b` lives.
- **Order, so accepted programs do not move.** View lifts are gathered in a second phase: the quiet judgings first
  gather whole lifts to their fixed point exactly as today, then judge with view proposals on, then again until nothing
  grows. Part lifts (a field or element read out of what a local builds, `partFlow`) are turned on only once the field
  inference has settled - promoting a field costs nothing, building the instance longer costs memory, so the field
  inference gets the refusals first (its gathering judgings never lift for a part). A program accepted today has no
  failing view or part fit once whole lifts have settled, so it proposes nothing new and places exactly as today - its
  plans byte-identical (decision 10). (Without the phases, a view proposal arriving first could change which of two
  unordered scope variables a join keeps - `joinTerm` keeps the first, hidden variables `W` not being built - and with it
  the obligations.)
- **Conditionals and matches** propose each value as though stored alone (E28 - `propose` already walks them); a value
  built for the conditional lands with it. stro20condstore is checked against this in the round.
- **Generators.** A yielded view of a local the walk keeps lifts the local to the generator's home (`homeVar`, the
  hidden capture of where the generator lives); a for-in walk whose such elements the loop keeps longer lands where they
  are kept (the D18e change above - that walk is not elided, an arena frame as D18b's). Nothing is lifted into a
  `Next()` result scope (`genResult`).
- **Tasks.** A view handed to a task has its storage built at the join's level, as a whole argument is (P2).

### 4.3 What stays refused, and why

| storage the view shows | why it cannot be built longer | the error |
|---|---|---|
| a by-value parameter's own storage | the call's copy, made by the caller where the call stands (O14, item 17's exception) | O14/C2d, as today: return the value or take `p T&` |
| a match binding's or a lambda capture's own copy | made by the match or the lambda where it stands (S13b, D16c); not `liftable` - additive later if code asks | O20/O27, naming a copy |
| a generator `Next()`'s result scope | one call's; the walk keeps nothing in it (D18b) | D18b's |
| reached through a derived scope or a scope not known here | exists at no run time / where it lives is not known (O23a, O12) | O23a's, O12's - as a whole value's today |
| holding a value whose destructor is still to run (`mayHoldDtor`) | it would run where the view's holder lets go, not where its own holder does (O15) - a file kept open for the name of it | reworded O27: "this keeps a view of 'f', whose destructor runs when its block ends - keep a copy of what it shows" [question 2] |

These are `liftLocal`'s refusals today (`liftable`, `genResult`, `Runs`) plus the destructor one; `fitError`'s
`viewKept` and `partKept` stay only for them, their messages reworded to say which.

### 4.4 Memory

The decision trades refusals for memory, so the memory must be visible and the fix named:

- **`-memory`** gets a section of placements made for a view (B18 above). The scope pass records each lift whose
  proposal came from a view, a part or a capture (`placed`: body, local or site, the term, the view's place); the
  driver prints them after early freeing's rows (olang.olang, where `fr.Report()` is printed). For o27genborrow:
  `o27genborrow.olang:22:46: memory: 't' is built where 'out' lives (main's scope), a new one each time it is made, for
  a view of it kept here - keep a copy of what it shows ('$w') to build it per turn`.
- **The language server** publishes the same as a hint (severity 4, as deprecation's) at the view - no compiler
  warning: the compiler says errors only.
- **Early freeing** is unchanged: placed storage lives in its new scope, freed there or earlier by O8d where a place
  lets go of it as its only holder.

### 4.5 Why it is sound

Placement decides where storage is *built*; FIT still judges every edge against the placement (rework 2.4, step 4).
Lifting a view's root to the slot's term makes the view's term - the storage's scope - outlive the slot, which is I1
for that edge; the judgment after the lift is the same FIT as before with a longer claim. What a lift can disturb is
re-judged: a store into the lifted storage (`t.x = y`, now in a longer scope) must have `y` outlive the new term, and
proposes or fails in the next round; a lifted local is exactly in its new term (it is built there), so stores through it
build there (I2). Lifts go only into terms that exist at run time (`Runs`) and only of storage the program builds
(`liftable`: a local or a hidden one, never a parameter's, a capture's or a match binding's copy), and they only lengthen (`joinTerm`), in a finite
lattice, so the iteration ends at a least solution. A destructor never runs later than its holder lets go (4.3). A
view handed to a task is built at the join's level, so P2 holds.

### 4.6 Cost

Nothing for a program accepted today (4.2's phases: no new proposal, no new judging). A program that today stops at
O27 or O20 pays the judgings its lifts need - a few - instead of an error. compiler/ is accepted today, so the scope
phase on it is unchanged; the round checks that compiler/'s and bench's IR are byte-identical before and after.

### 4.7 Programs

Newly compiling - each becomes a run case built `-debug -sanitize` and read back after an arena churn: d18cinputoutlived,
d18cyieldframe, d18cyieldlocal, o10celementstash, o25enote, o27genborrow, t22aviewkept, t22borrowedresult, d16cstore,
rv9slicetemp, rv9slicetempas, rv9slicetempview, t29aconvlifetime, o23adepth, stro20condstore (if 4.2 covers it), bulk 6's
gen_walkkept and gen_walkkept2 (C4). o23aliaswrite becomes either accepted (its `c` and `x` built in `main`'s block) or
refused at `arr[0].at = x` by O23's unknown binding - both sound; the round runs it under `-sanitize` and pins what it
gives. Staying refused: o26own, e31calllocal, r9adefaultlocal, o10dd9bslice (a by-value parameter's storage); a new case
keeping a view of a destructor-holding local past its block (question 2).

## 5. T22a: a function value carries its relations

### 5.1 The rule, as SPEC would state it

**T22a** (replaced). "A function's inferred relations (§8 O10b) - between its parameters' scopes and its result's,
and, for a lambda or a type's `Call` (E31), between those and what it captured - are carried by the function value it
becomes wherever the inference follows that value whole: through the locals of the body holding it (each version,
O25i), a conditional's or a `match`'s value, and a call's result (what every return of the callee gives, O13c). A call
through such a value is held to its relations as a direct call is held to its callee's obligations (O10c), what it
captured taken where it lived when the lambda was made. A place where the value meets code judged once for many values -
an argument for a parameter, a field, an element, a payload, a global, a type argument, a capture, an `any` (T32a), a
task, a type variable's binding [question 1] - holds only what its written function type says of every call (T22): a
value carrying more there is a compile-time error naming the relations and the place. `olang explain` says of every
function carrying relations where it can and cannot go (B11b)."

**T22** keeps its last sentences for a written function type ("every parameter its own scope, and a result holding
references may hand back what its reference parameters refer to"), minus O27's clause (4.1). **O13c** gains a third
thing a call's result carries: "for a function value, what every `return` gives carries (T22a), resolved through the
call". **D16d** is unchanged: where a lambda lives is still where its captures do.

### 5.2 Records: what a value carries, where it travels, where it stops

- **A record** is the body a function value calls and, for a lambda, the term each capture had where the lambda was
  made (in the holding body's terms); for an adapter (`kp` given as a function value through its `Call`, E31), its
  receiver's term. A named function's record has no captures. A value may carry several records (versions reaching a
  read, a conditional of two functions) and **unknown**: a value from a parameter, a field, an element - anything whose
  record is not followed - which T22's contract describes, as every value does today.
- **Travels** along what one judgment sees whole: a `Fn` expression gives its record; a read of a local gives its
  versions' records (3.3: `fnRecs` beside `defTerms`, set per statement as terms are); `Cond`, `Match` and a `catch`
  default give the union; a call gives what its callee's summary says every return gives (`summary.ResFn`, in the
  callee's terms, translated through the call's bindings - a capture of the callee's parameter's referent becomes the
  argument's term, the result scope where the call lands). `ResFn` is computed for bodies outside a cycle; a body in a
  cycle, or one not wholly checked, gives unknown, and its returns of a value with relations are boundaries (judged at
  the `return`).
- **Stops** at every place that code judged once for many values reads: an argument (whatever the callee - its
  parameter's type is all its body was judged with), a store into a field, an element, a payload, a global, a type
  argument (`v.Push(f)`), a capture (a lambda's body is judged once, before the body making it, so its captures are
  unknown inside it), a task's function or argument, an `any`, a `yield`, and a generic's type variable [question 1].

### 5.3 A call through a value that carries a record

`call` with `Callee.Value(x)`: where every record of `x` is known, each is judged as a direct call to its body - the
parameters' scope variables bound by the arguments (O17, O18a, O18b as for `Callee.Body`), the result scope by where the
call lands, each capture's scope variable by the record's term - and its obligations discharged (`dischargeRels` with
that body's relations, through those bindings); where two records place a temporary argument differently (O18b), it is
built where both need (the join). An unknown member keeps today's judgment (`valueRels`). O17's lending reads the
record's body (`Keeps`, `Stores`, `Puts`) instead of "a call through a function value keeps nothing of its arguments
beyond the call but in its result" - stricter, since the point of a record is that the callee may keep.

### 5.4 The boundary and its error

At a boundary, each record's relations must be what the place's written type says of every call (`valueCovered`,
unchanged: each reference parameter's scope outliving the result's, exactly where both can be stored through); a
relation naming a capture is never covered. `fnUses` and `fnValues` change from "every function named as a value" to
"every record reaching a boundary": the check moves into the walk, at the argument, the `=`, the `return` in a cycle.
The error names the function (or "this lambda" and the parameter it keeps, as today), the relation and the place:
`'link' ties b's scope to a's (it stores b into a), and put's parameter 'f' is a written function type, which says
nothing of that - call link directly, or hold it in a local and call it there`. The messages of
FuncValueObligations, LambdaValueObligations, LambdaValueRelates and CallValueObligations are reworded so; T32a's
AnyMethodObligations stays.

### 5.5 explain, doc, hover

`# not a value: its scope obligations ... (T22a)` becomes `# as a value: held in locals and results only - its scopes
(b outlives a) are more than a written function type says (T22a)`; a function covered by T22's contract says nothing,
as today. B11b's text follows.

### 5.6 Why it is sound

- *Exact records.* A record names the body called and the scopes its captures had when the lambda was made; captures
  are copies made then and never repointed (D16c: a capture's copy is read-only; a reference capture still names the
  instance it named), so those scopes are where the captured referents live at every later call.
- *Complete records.* Every value a local can hold at a call reaches it through a version (3.7's over-approximation);
  every value a call's result can be is one of its callee's returns (`ResFn` over every `return`); a conditional's
  value is one of its branches'. Anything else is unknown, judged by T22's contract.
- *Direct-call soundness.* A call through a value whose records are known discharges each record's obligations
  through that call's own bindings - the same judgment O10c makes for the direct call, sound by its argument. Lending
  reads the body's own summary, as a direct call's does.
- *Nothing escapes the inference unchecked.* A value leaves what one judgment sees only at a boundary, where T22a's
  coverage holds as today; a call through a value reached from a boundary place relies only on T22's contract, which
  every value stored there meets. Records change no code (two words, as T21 says), so nothing changes at run time.

### 5.7 Cost and programs

A record per `Fn` expression and per read of a function-valued local; a call through a known value is a direct call's
discharge. Negligible. Newly compiling (run cases, read back after a churn): `g := link; g(x, N(5))` (the temporary built
where `x` lives, O18b through link's relation); local closures keeping their arguments (`add := fn(k String&) {
names.Push(k) }`, `add("a")`); `f := mk(gone); f("b")` with `mk` returning such a closure; a conditional of two
functions with different relations, each judged; a function-valued cursor (3.1); callvaluekeepsblock - its local is
written `s fn&(x fn&() I64) = kp`, but a local's written type is no boundary (decision 15), so `s(fn() I64 { return m.v
+ 1 })` is judged as the direct call to `Keeper.Call` it is, and round 2 builds the closure's `m` where `kp` lives (a
run case, read back after the churn it already has). Staying refused, said at the place: t22sharedscope,
t22sharedscopetype, t22aobligation (an argument for a written parameter), t22alambdakeeps (a field), callvaluekeeps and
callvaluekeepsframe (an adapter given to keepVia's written parameter), t32anyscopes (an `any`), t22sharedscopegeneric
(question 1).

## 6. The folded items

- **C3** (`x2 := x1; return x2` of a constructed local, O10d): compiles today, with and without `x1` read after the
  copy, clean under `-debug -sanitize` (section 1) - D9i's move at a last use and the returned whole-local copy placed
  where the result goes closed it. Round 1 adds `checks/cases/c3secondname.olang` (run, both shapes, read back after a
  churn) so it stays closed.
- **C6** (`chan.Select(chan.SendOf(r, 9), ...)` inside a join block, C2d): compiles and runs clean under `-debug
  -sanitize` today (the kept round's C1 and item 17). Round 1 adds `checks/cases/c6selectjoin.olang` (run: the std/chan
  test's shape with both `SendOf`s written inside the join) and drops the "Limit" sentence from CLAUDE.md's std entry
  and HISTORY's note.
- **C4** (held/gen_walkkept: the generator body's O27 and the consumer's O10c for one cause): round 2 accepts the
  program (4.7). For what stays refused, one cause gives one error: a body whose reporting judging said a section-8
  error of its own is marked in its summary, and its callers do not discharge - and so do not report - the obligations
  it recorded (it did not check; a caller judged against it would only repeat it). Round 2, with a case: a generator
  yielding a view of a by-value parameter's storage and a consumer keeping it - one error, in the generator.
- **The T25d imprecision** (an element of a constant literal scoped to the literal's temporary block): round 1. In
  `val`/`read`, an element read by an index, a slice of, or a binding of an array pattern over an array literal of
  constant data (`staticLiteral`'s test, without the promotion it asks today) is `ValKind.Static` - the program's
  scope - whatever the literal's own storage is. It matters beyond NLL: without it, round 2 would build the literal's
  array where its element is kept, every turn, for what is constant data. Cases: `t25delement.olang` (run: `keep.Push(
  String&["a", "b", "c"][k])` in a loop, a cursor given one, read back after a churn).

## 7. The evaluator and `interpret` (K1, B3e)

- **Compile-time evaluation** runs before the scope pass on lowering's stand-in placement (everything in the program's
  scope): versions, placements and records change nothing it computes. Each round still gives it tests it runs, beside
  the run-time ones (checklist step 3): round 1 a global baked through a function walking a list with a cursor and
  appending to its tail (K2), and a top-level assert over the widget's click loop (S17a); round 2 a global baked from
  `fn head() String& { t := $"abc"; return t[0:2] }` (today O27's error) and an assert over words kept from a turn's
  text; round 3 a global baked through `g := link; g(x, N(5))` and through a local closure keeping its argument.
- **`interpret`** places by the plans (B3e) and refuses what a build refuses, since it runs the scope pass: placements
  from rounds 1-2 are followed with nothing new; records are compile-time only. Its stand-in placement for item 17's
  kept locals (the program's scope) covers placed views too.
- **The dead-region evaluator** (`OLANG_DEADREGIONS=1`, early freeing's gate) runs over the new tests: placement moves
  storage into longer scopes, where early freeing may then free it.

## 8. Where this touches reuse in place, reference counting and the drop check

- **Reuse in place** (next, free.olang). NLL's reaching definitions say when a reference local's version is dead (no
  read reached by it remains): a value held only by dead versions and a place letting go of it is a reuse candidate the
  version table can confirm - free.olang reads `typed.Versions` rather than its own "used after the let-go" scan for
  reference locals. Placement for views makes storage live in longer scopes, where it is reclaimed only at the close or
  by O8d; reuse in place can recycle it only where the view's holder lets go, which is O8d's question, unchanged.
- **Reference counting for values with several holders** (QCR 2, after this round). The storage placed for views (the
  `-memory` rows of 4.4) is exactly what neither scopes nor single-holder freeing reclaim before its scope closes - the
  first candidates for a counted early free, and the measurement that design should start from.
- **The drop order** (QCZ, decided 2026-11-07: the compiler orders ends - holders before what they hold - from the
  store relations section 8 tracks). Versions are reference locals, which hold no destructor values; fields are not
  versioned, so the store relations it reads are today's. Placement never lifts storage holding a destructor value for
  a view (4.3), so ends move only where a whole value moves (item 17's, as today, registered where it lives - O15/O16),
  and the drop-order round orders ends in the scope such a value lands in.

## 9. The build plan

One agent per round, each starting from this note and a PROGRESS.md hand-off, committing coherent pieces as it goes;
`make quick` while developing, the full gates once at the end of each round. Rounds 1-3 touch scope.olang at the same
places, so they run one after another, never beside each other or beside another check.olang/scope.olang batch.

### Round 1 - NLL (opus, xhigh)

- **Spec**: O25, O25a, O25b, new O25i, O12, T25d (3.1); O26a's sentence on a returned reference local mentions versions.
- **Code**: `typed.Versions` (the walker, 3.2, with test blocks over every construct); scope.olang - cursors, `defTerms`
  kept between judgings with underestimates interned by base, the per-statement entry state, the assignment's fit gone
  for cursors, the validity fit at reads (`FitLive`), the merge's exactness error, `propose` through versions, the
  re-judging rule, `aliasOf` and `regionOnly` over versions (3.6), T25d's element; compRun's reuse records the version
  terms it read (`OLANG_SCOPECHECK=1` checks it); msgs.olang (`VersionsDiffer`, `ReadAfterScope`; O25's
  `ReferenceNarrowed` kept for slots only) and `make diaggold`.
- **Tests**: tests/nll.olang (the widget's click loop, a list tail appended through a cursor, `planAt`, `op`, a cursor in
  a `catch` clause, in deferred code, captured by a lambda, assigned in a loop and read after it - every value read back
  after an arena churn; the K2 global and S17a assert of section 7); checks cases - `nllmerge` (fail, O12 naming both
  assignments), `nllkeepsunion1/2` (fail, O17: section 1's probes), `t25delement`, `c3secondname`, `c6selectjoin`
  (run), r9adefaultinner becomes a run case (`-debug -sanitize`).
- **Also**: compiler/tools' scopedump, lowerdump and emitdump build; the makefile checks one of them (a `-quick`
  build) in `make verify`, if it costs under ~15 s (decision 19); fuzz/scopegen.olang gains cursor scenarios (reassigned
  in loops, from two scopes, read after the loop, built through), so the scope fuzzer refuses fewer programs and tests
  more.
- **Gates**: verify (one slot, /home/user/vlock), scopesan, scopefuzz (`COUNT=300`), fuzz free, dead regions; bench IR
  and compiler/'s own IR diffed against the base and every difference explained (only a cursor's temporary placed
  shorter may differ, decision 6); the self-build a fixed point, its peak memory and scope phase (`OLANG_TIMES`) within
  2% of the base.

### Round 2 - O27 as placement (opus, xhigh)

- **Spec**: O27, O28's paragraph, O14, T22's sentence, D18c, D18e, B18 (4.1).
- **Code**: scope.olang - views propose (`propose`, `viewRoot`/`viewSource` with storage), `liftAtCall` on `View`
  relations, closures propose their captures, the two phases (whole, then views; parts after `inferFields` settles), the
  refusals of 4.3 with `viewKept`/`partKept` reworded, the placements recorded, C4's mark; D18e's walk landing where its
  elements are kept, and emit's elision (D18e's `.walk` form, destroyed as its loop's block is left) refused for such a
  walk - D18b's arena path instead (emit.olang's elision test gains the condition); olang.olang prints the placements under `-memory`; session.olang publishes the hint;
  msgs.olang reworded, `make diaggold`.
- **Tests**: tests/viewplace.olang (words kept from a turn's text, slices of temporaries into a parameter's field, a
  generator's views of a local kept by the consumer, a closure over a turn's local kept - read back after churns; K2 and
  S17a of section 7); the cases of 4.7 become run cases (`-debug -sanitize`, each keeping its comment and saying what it
  was), new fail cases for 4.3's destructor row and C4's one error; a checks scenario `memoryplaced` expecting the
  `-memory` row for o27genborrow's shape.
- **Gates**: as round 1, and: bench IR and compiler/'s own IR **byte-identical** to round 1's (4.2's phases promise
  it); `wLocals` hits counted (joins of unordered scope variables - if they appear, rework 2.4's hidden variables `W` are
  the next step); scopegen gains kept-view scenarios.

### Round 3 - T22a's relations (opus, high)

- **Spec**: T22a, T22, O13c, B11b (5.1, 5.5).
- **Code**: scope.olang - records (`fnRecs` per version, `summary.ResFn`), calls through a known value judged as direct
  calls (5.3), boundaries checked in the walk with `fnUses`/`fnValues` moved there (5.4); explain.olang and session.olang
  (the `# as a value` line); msgs.olang reworded, `make diaggold`.
- **Tests**: tests/fnrel.olang (5.7's shapes, read back after churns; K2 globals of section 7); checks - run cases for
  the newly compiling shapes and callvaluekeepsblock, the staying T22a cases reworded to the place.
- **Gates**: as round 1; scopegen gains function values with relations put into every kind of place (a boundary missed
  would show as a use after free under `-sanitize`).

### Round 4 - only if question 1 is answered yes

Generic type variables carrying relations: an instance judged once per record its type variable is bound to (a
*scope twin*: the same typed body, its own plan, emitted under a name carrying the record), captures' scopes as hidden
scope variables of the twin. Its own design pass first.

### The checklist, per round

1 spec first (above); 2 scope.olang (check is untouched but for messages); 3 the evaluator computes nothing new, and
each round gives it the tests of section 7; 4 tests and cases (above); 5 nothing to migrate - every change accepts more,
and the cases that were refused become run cases (keeping old tests: only those whose rule changed are rewritten);
6 diagnostics (above); 7 CLAUDE.md's "A reference never narrows", "Scopes inferred, none written" (its no-extension
sentence reversed by the user's QCR 1a), "Function types (T22, T22a)" and the std entry's C6 limit; HISTORY.md; the
ledger; 8 DEPENDENTS.md's "A rule number or a diagnostic" rows (SPEC paragraphs, msgs, diag.txt, cases, READMEs), and
B18's `-memory` text in `help`; 9 verify.

### Risks, and what catches them

| risk | round | caught by |
|---|---|---|
| the reaching-definitions walker and the scope walk disagree about control flow (a desugared construct), so a read is judged with too few versions | 1 | one walker beside `Landings`, tested per construct; union on key collisions; a `-debug`-compiler check that every statement the scope walk judges with a cursor was keyed (else all definitions - flow-insensitive, sound); scopegen's cursor scenarios under `-sanitize` |
| the keeps analysis loses O25b's equality and under-counts a cursor's stores | 1 | section 1's two probes as O17 cases; scopefuzz |
| a component's judging taken again (compRun) with stale version terms, view phase or records | 1-3 | `OLANG_SCOPECHECK=1` over the suite; the inputs compRun records extended |
| placement grows memory silently | 2 | `-memory`'s rows and the hint; the checks scenario; bench IR byte-identical |
| a view proposal reorders joins of unordered scope variables in an accepted program | 2 | the phases; IR byte-identical; `wLocals` counted |
| a destructor run later through a view | 2 | refused (question 2); a fail case |
| a value carrying relations reaches a place judged once without the coverage check | 3 | boundaries listed by the place kinds `fit` and `call` already tell apart; a `-debug`-compiler check that every record reaching a written function type passed `valueCovered`; scopegen's relation scenarios |

After the three rounds: a narrow soundness review (opus, high) of round 1's walker and round 3's boundaries before
reuse in place builds on them - the change is large enough not to wait for the bulk review that follows reuse in place.

## 10. Decided here (mine, within the user's decisions - to object to)

1. Versions are for reference locals, reference parameters and locals holding function values. A value local holding
   references keeps one claim (O25h): its stores into parts would make per-version claims a different design, and
   nothing refused needs it.
2. Which versions reach a statement is a structured reaching-definitions walk in typed.olang beside `Landings`, keyed by
   where statements start (the union on a collision); deferred code and a join's clauses read every definition in the
   body; a statement holding a nested assignment of a cursor reads it with the union. check and the typed core are
   unchanged.
3. The scope pass sets a cursor's term per statement from the versions reaching it, so every existing reader of a
   local's term sees the right version with no change of its own.
4. A read's validity is judged only where an assignment's version reaches it; a failure proposes a placement first,
   and is an error only for storage that cannot be built longer.
5. A read reached by versions of different scopes is O12's "not known here": read, compared and stored where outliving
   suffices, never built through or exact; its error names the assignments whose scopes differ.
6. A version's temporary is built where its own reads need it (at least the local's block) - shorter than today, where
   it is built where the local's whole claim is. The one plan change round 1 may make in programs accepted today.
7. Underestimates are interned by the term they stand above and kept between a body's judgings with each definition's
   term; a body is judged again only where a loop-carried version adds a member to a set a read was judged with.
8. The keeps analysis (O17) takes a cursor to name every region any of its versions names.
9. The WIP patch's approach (/home/user/review/nll-wip.patch - every value a local is ever given as one set, assignments
   still fitted against it, underestimates turned into Untraced between probes) is not taken: a read before a
   short-lived assignment becomes as short as the assignment (`at := w; keep.Push(at); for ... { t := Node(); at = t }`
   refuses the Push), and with O27 as placement that imprecision would build values longer with no error at all; and
   Untraced refuses every outliving use of the widget's cursor.
10. T25d: an element of an array literal of constant data, read by an index, a slice or an array pattern, is static
    data in the program's scope.
11. O27's placement runs in two phases - whole lifts first, as today, then view lifts; part lifts only once the field
    inference has settled - so a program accepted today places exactly as before (IR byte-identical, a gate).
12. A closure is a view of its captures: kept longer, the storage it captured is built where it is kept.
13. A view stays refused where the storage cannot be built longer: a by-value parameter's, a match binding's or a
    capture's own copy, a `Next()` result scope, a derived or unknown scope - and storage holding a destructor value
    (question 2).
14. `-memory` lists every placement made for a view, a part or a capture, with the copy that would let it go per turn;
    the language server shows it as a hint; the compiler itself says errors only.
15. Records travel along a body's locals (each version, whether the local's type is written or not), conditionals,
    matches and `catch` defaults, and call results (the callee's summary, outside cycles); they stop at arguments,
    fields, elements, payloads, globals, type arguments, captures, tasks, `any`, `yield` and type variables (question 1).
    A call through a value whose records are known is judged as the direct call it is, its lending by the body's own
    summary.
16. A value whose record is not followed is judged by T22's contract, as every function value is today.
17. C4: a body with a section-8 error of its own has its obligations not discharged at its callers - one cause, one
    error.
18. C3 and C6 compile today (checked under `-debug -sanitize`); run cases pin them.
19. Once round 1 lets compiler/tools' dump tools build, `make verify` builds one of them (`-quick`), if that costs under
    ~15 s - they rotted unseen for days outside verify.
20. Hidden scope variables (`W`, rework 2.4) are not built this round; round 2 counts the joins they would serve.
21. D18e: a walk whose elements are views of what it keeps, kept beyond its loop, is made where they are kept and not
    elided.
22. explain/doc/hover's `# not a value` becomes `# as a value: held in locals and results only - ...` (B11b).
23. A narrow soundness review (opus, high) of rounds 1 and 3 before reuse in place builds on them.

## 11. Direction questions

1. **Generic type variables carrying relations.** The user's rule shrinks T22a to "what a written function type
   cannot match"; a generic's type variable bound to a function type (`keep<F>(f F) F`, `f := keep(link)` -
   t22sharedscopegeneric) is not written by the program, but its instance is judged once for every function given to
   it, so carrying relations through it means an instance per record (round 4's scope twins: one typed body judged and
   emitted per record) - the largest piece of machinery in the round, for a shape one case in the repository has.
   **Recommended:** not now - a type variable's binding is a boundary like a written parameter, and round 4 is built if
   real code asks. **Default if unanswered:** a boundary (t22sharedscopegeneric stays refused, worded at the call).
2. **A view of storage holding a value with a destructor.** O27 as placement would build such storage where the view
   is kept, and its destructor would then run there, later than its holder lets go - a file kept open for as long as a
   list holds a slice of its name. **Recommended:** keep refusing that one case (the error names a copy of what the view
   shows), so a resource's end stays where its holder is (O15, the user's "Rust's way"). The other way: build it there
   too and list it in `-memory` with the destructor's new place. **Default if unanswered:** refused.
3. **A function's written result type and relations.** A result's function type is written (`fn mk(..) fn&(k
   String&)`), but its callers read the callee's summary, not just its type - as they read a result's construction
   bindings (O13c). **Recommended:** results carry what every return gives (decision 15), so `f := mk(gone); f("b")`
   compiles; the literal reading of "a written function type" would make a result a boundary like a parameter.
   **Default if unanswered:** results carry; the other reading is a one-line change in round 3.

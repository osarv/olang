# Review of 0859cbe (E11c: per-parameter "shallow" writes; effHoldsUnknownRefs) - 2026-10-10, 07:23 CEST

Worktree /home/user/wt/rv7 @ ada716d (no bootstrap/ difference from 0859cbe). "Parent" = 64e4ffc (0859cbe^), built
from `git archive` in /home/user/review/tonight7/base. Reproducers in `repro/` (`repro/run.sh F.olang` builds `-b`,
`-b -d` and runs `-i`). Every reproducer prints the same value rendered twice, or a field before/after `$`; a pure
`Str` would print the same thing each time.

## CONFIRMED - new in 0859cbe (parent rejects with E11c, now accepted, effect observed)

Root cause: `own` in `effArgOutside` comes from `effPlaceOutside`, which treats any base that `RefExactScope` cannot
place as "a temporary: storage of its own" (semantic.c ~11648). A conditional or match of references whose values live
in different scopes is such a base (RefExactScope returns false, ~16273), but it names existing storage. Reach is
still computed by `copiedRefsScope`, which reads the same conditional as SCOPE_AMBIGUOUS (outside), so the edge is
EFF_EDGE_ALL and the callee's write of its parameter's own field - now "shallow" - is dropped. The parent recorded
that write as `effWrites`, which the ALL edge carried.

- **r1_cond_member.olang** - `poke((b.m if b.m.inner.k >= 0 else loc).inner)`, `poke(p mut In&) { p.k++ }`.
  Baked global vs run time vs `-i`:
  `-b`/`-b -d`: `b1 b2 k=2` (baked) / `b2 b4 k=3` (run time); `-i`: `b1 b2 k=2` twice.
- **r2_match_member.olang** - the same through a `match` value: `before: 0`, `$b`, `after: 2` (`-i`: `after: 1`).
- **r3_helper_cond.olang** - no local needed: a helper `either(p mut Mid&, q mut Mid&, c Bool)` calls
  `poke((p if c else q).inner)`; its two parameters have different scope variables, so the helper records nothing and
  `Str` calling `either(b.m, b.other, true)` is accepted: `$b $b` leaves `k=2` (all three modes).

Fix direction: a base RefExactScope cannot place is a temporary only if it is one (`argIsFreshTemp`/landing); a
conditional/match/anything else naming existing storage must count as outside for `own` (and in `effPlaceOutside`,
which also fixes p7 below).

## CONFIRMED - pre-existing (parent accepts too), but contradicting E11c and the sentence 0859cbe adds to SPEC
("what such a value's references reach is not its own, so a write through them is the effect above")

All print `b2`/`b4` (`-i`: `b1`/`b2`) unless noted. Common cause for p1-p4/p6/p7: E11c asks "is this inside?" of §8's
exact-scope answers, which deliberately underestimate (O25c/C2d: a plain-data referent may sit in a shorter-lived slot;
O23's fallback "an underestimate"; a landing call "is a temporary") - an underestimate is unsound for E11c.

- **p1_ctor_bare_field.olang** - `x := Box(b.c); x.c.v++` in Str itself (bare field, C2d binds by "outlive").
  **p1b_ctor_bare_field_callee.olang** - the cursor shape of s6strdeep with a bare field (`Cur2(b.c)`, `poke2(cur)`):
  baked `b1 b2 v=2`, run time `b2 b4 v=3`, `-i` `b1 b2 v=2` twice.
- **p2_array_of_refs.olang** - `refs := Array<mut Cell&>(1, b.c); refs[0].v++`.
  **p2b_array_literal_to_callee.olang** - `pokeArr(Cell&[b.c])`.
- **p3 (effHoldsUnknownRefs gaps, the hole 0859cbe says it closed)** - a cursor with an `&of` field reached through a
  reference, not by value: `W(Cur(b))` handed to `poke(w mut W&) { w.cur.c.v++ }` (p3), `Array<mut Cur&>` (p3b), an
  enum payload `Some(c mut Cur&)` (p3c). `typeHasNamedScopeField` stops at a reference.
- **p4 (same hole, direct writes - effPlaceOutside has no effHoldsUnknownRefs)** - `cs := Cur[Cur(b)]; cs[0].c.v++`
  (p4), `cur := Cur(b) if k >= 0 else mk(b); cur.c.v++` (p4b): the `&of` binding is lost, O23's fallback reads the
  slot's own scope.
- **p5_lambda_to_callee.olang** - `f := fn() { b.c.v++ }; apply(f)`. **p5b** - `I64[1, 2].Count(fn(x) { b.c.v++ ... })`:
  `b4`/`b8`. A lambda made here is not "reach" when passed on, and its captures are judged only where this function
  calls it; the callee's effMark has no edge back. (`apply(fn() {...})` inline is caught only because the lambda is
  still pending when effCall runs.)
- **p6_generic_id.olang** - `bump(id(b.c))`, `fn id(x <T>) T`: a landing call result reads as a temporary.
- **p7_cond_direct.olang** - `(b.m if ... else loc).inner.k++` directly; **p7b** - `bump(b.c if ... else loc)` (a
  reference argument). Same root as r1-r3, already open before.

Checked and caught (no finding): repointed parameters via `=`, parallel assignment, destructuring, `for`, `defer`,
nested blocks (roAssigns is recorded on every path); recursion and mutual recursion handing a parameter on; lambdas
with captures writing their parameter; operator/protocol methods with `mut` receivers (`[]`, `+`, `<`, `in`, `Len`,
for-in over At/Len and over a self-iterating type); handle copies (`b.ls[0].Push`, `x := b.ls[0]`, `Map.Get`);
iterators made by a callee (`Iter()` returning a value holding a bare reference); views/conversions (`as
Array<I64,2>&`, `Nums(b.a)`); constructor field initializers; comprehension, guard, catch default, defer, `and`,
assert message, `range`, `spawn` contexts. `match` bindings and `as` payloads are copies (writes reach nothing).

## Over-rejection - new in 0859cbe (parent accepts)

`r.l.Iter().Fold/Any/Count/ToList(...)`, `r.m.Iter().Count(...)`, `r.m.Keys().ToList()` (the idiom iterator.olang
documents), `r.m.Values().ToList()` in a Str (**o1_iter_fold_rejected.olang**, **o1b_keys_tolist_rejected.olang**).
`effHoldsUnknownRefs` now makes a List/Map iterator temporary "reach" (ListIter/MapIter hold writable `&of` fields),
and every iterator default is a full effect: Fold/Count/... call a function value they did not make, and any helper
doing `for x in it` over an iterator **parameter** is marked (**o2_helper_for_over_iter_param.olang**, rejected by both)
- presumably the for-in's hidden alias of the parameter, which `effRefParamIndex` does not take for the parameter itself
(`h := it; h.Next()` is rejected the same way; `it.Next()` directly is accepted). `for k in r.m.Keys()` still works.

## Side note (not E11c)

x1_o10d_side.olang: `fn f(b Bag&) { w(b.m.inner) }` with `w(p mut In&)` and `b.m` a `mut Mid&` field is O10d
("this value lives in this function's own scope, which closes first") in both compilers - while the same lend through
a conditional (r1) compiles.

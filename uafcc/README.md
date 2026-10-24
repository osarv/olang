# Soundness review: uafcc (a20a366) - a choice of new values and constants is a temporary

Reviewed: `git diff 376f8df a20a366 -- compiler/scope.olang SPEC.md` (isFresh / newOrConst / matchFresh), on a
detached worktree at a20a366 (`/home/user/wt/rvuafcc`), compared with 376f8df built in `/home/user/wt/rvuafcc-prev`.
Each probe: `run.sh FILE` = build `-debug -sanitize` with the fixed compiler, then the previous one, then `interpret`
with the fixed one; most read the value after an arena churn. (The build dirs were removed afterwards; rebuild with
`make build/olang` in each worktree to rerun.)

## Result: no finding against the change

No program found that the fixed compiler accepts and that reads freed memory or is built in the wrong scope because of
the change. Every hand probe (probes/, 39 programs) either ran correctly under the scope sanitizer with the
interpreter agreeing, or was refused. The scope fuzzer, fresh seeds 1000-2400 (1401 programs, 9561 scenarios run,
15,000+ refused, scenario counts 12/16/24), found nothing.

Attacked, each built `-debug -sanitize` and read after a churn:

- new arms holding existing storage: `H(t) if c else null`, `mkH(t)` (a built result holding its argument),
  `W(p)` borrowing a match binding's storage, `H(s)` over a payload reference, `w[0]`/`w.First()`/`w.Last()`/`try ...`
  (calls handing back a list's element), array literals of a loop's text, a lambda returning a capture - all refused
  where the instance outlives them (C2d, O25c, O10c, O26, T22a): b1-b6, a5, r1, v2, v3, fv1;
- constant arms of reference type: `String&[...]` static literals (T25d Data), `null`, text: a3, x1, v2, ns1;
- nested choices (a conditional inside a match inside a conditional, three arguments of one constructor): ns1, ns2, m1;
- non-constructor callees: a method keeping into its receiver (also from inside a lambda over a lambda parameter),
  generics, a borrowed result `s String&s` / from a box, a shared scope `s String&l`, recursion and mutual recursion,
  defaults across modules: n1, nv1, g1, ev1, id1, lk1, rec1, dflt/;
- tasks: `spawn keepIt(ls[i], Box(cond))`, `spawn rs[i] = wrap(cond)` (also clean under `-race`): e1, sp1;
- `defer put(l, cond)`, parallel assignment into an outer reference, a field and a struct, write-through
  `l[i] = cond`, `hs[i].s = match ...`, `Map.Put`: g1, pa1, wb1;
- destructor-bearing new arms (`Hold(R(i) if c else null)`, through a match, three-level nested): destructed exactly
  once each (d1: 19 of 19, ns2: 4 of 4);
- O26a's new acceptance (`x := cond`, reassigned in a loop from an inner block's text, returned): o1, o2, l1, mv1
  (mv1 lending the moved local to a keeper is still refused at the caller);
- a choice as a match subject: hs1 (now refused with O26 - a conservative over-rejection, the old compiler's UAF);
- the evaluator: baked globals and asserts over the choices (k1) agree with the run time; `interpret` agreed with the
  sanitized build on every program that compiled.

Writable targets (`w(mk(t) if c else "abc")` into `mut String&`) are refused by E28/T25c before scope matters (p1).

The fix also closes many PRE-EXISTING use-after-frees: the previous compiler (376f8df) accepted and read freed memory
under the sanitizer on 26 of the probes (a3, a5, b3, b4, b5, b6, d1, e1, ev1, g1, gp1, hs1, k1, m1, n1, ns1, ns2,
nv1, pf1, r1, rec1, sp1, v2, v3, x1, dflt) - e.g. b4: `keep = O(mkH(t) if i >= 0 else null)` with `t` a loop body's text,
r1: `keep = E("a", w[0] if i >= 0 else "")`, v3: `E(String&[tt, "q"] if ... else String&["x", "y"])`; the fixed
compiler refuses the illegal ones and builds the legal ones correctly.

Behaviour change worth knowing (by spec, not a bug): a choice now costs what its new value alone would. lk1:
`look(l, mk($i) if i >= 0 else "")` with `fn look(l List<String&>&, s String&l)` builds the text where `l` lives on
every turn - 1M turns 1.7 MB -> 131 MB, exactly as `look(l, mk($i))` already did (lk1b, 131 MB on both compilers).

## Pre-existing, found on the way (not this change)

1. CONFIRMED, pre-existing (also on 376f8df): an array literal of reference elements whose elements are new text,
   given straight to a call, boxes each element in the PROGRAM scope - unbounded growth, ~16 bytes per element per
   evaluation. `repro/leak_arg_array_literal_text.olang` (`len0(String&[$i])` in a function called 2M times):
   34 MB peak; `repro/leak_ctor_array_literal_text.olang` (`E(String&[$i])` in a function): 34 MB, 66 MB with two
   elements. Through a local (`a := String&[$i]; len0(a)`) it stays at 1.7 MB. The IR of `one` in the latter:
   the text is built in the function's scope, then `__olang_scope_alloc(@__olang_prog_scope, 16)` for the element.
   `build/olang leak....olang` then `/usr/bin/time -f %M ./build/leak...`.
2. Over-rejections, conservative (seen, not pursued): hs1 (a choice as a match subject, its payload bound and kept),
   id1 (`l.Push(id(mk(t) if i >= 0 else ""))` is O10c; `return x` after `x := id(match ...)` is O10d).

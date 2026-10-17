# e31view2 - soundness review of 15841b0 (E31b view-element fix round, on c9d14a7)

"new" is `/home/user/wt/rve31b` at 15841b0 (`build/out`); "base" is master d05c915, the parent of c9d14a7
(`/home/user/review/e31view/base/build/out`). `t.sh FILE` builds and runs with new `-b` and `-b -d -s`, interprets with new
`-i`, and builds and runs with base `-b`. `./runall.sh` runs every `repro/*.olang` (output in `runall.out`), plus, for F1-F3,
a scratch-patched compiler (`patch/`, below). `fuzz/` is a differential generator for r1. Scratch probes are in `work/`,
`hf/` (handle and view fields) and `d3/` (notes).

## Verdict: fix first

Two use-after-frees reach a struct element's FIELD through `x[i]`. They have one root cause. **F1 is new in c9d14a7**
and the round kept it; **F2 is older** (the coordinator's program). Both print garbage under plain `-b`. The scope
sanitizer reports them, and `-i` gives the right answer. The round's own items held: r1, P1 and the d3 note.
T1 has one hole left (T1h), which also makes the evaluator disagree with the run time.

## Findings

**F1 - CONFIRMED, NEW in c9d14a7 (base refused it with E31b), HIGH: a struct value field of x[i] lent as a view to a
callee that builds through it.**
- The shape: `g(l[0].w, v)`, where `fn g(m mut M&, v I64) { m.r.next = Node(v, null) }`. Repro:
  `repro/f1_view_field_build_uaf.olang`.
- Results: `-b` prints `199007` (the churn's value), `-b -d -s` reports "use after scope closed", and `-i` prints `12`.
- Variants that fail the same way:
  - the collection a parameter (`f1b`);
  - a method on the field, `l[0].w.Build(v)` (`f1c`);
  - two fields down, `l[0].w.inner` (`f1d`);
  - through r1: `g(l[0].w)` with g lending `m.inner` on to a builder (`f1e`).
- The whole-element form `g(l[0])` is correctly O17's error (`f1x`). So is r1's chain from a whole element,
  `step(l[0])` (hf/v07).

**F2 - CONFIRMED, OLDER (d05c915 builds it identically), HIGH: the coordinator's program.**
- The shape: a handle field of a struct element, called through x[i]: `f.Blocks[b].S.Push(x)`, Blk holding
  `S List<I64>` and `t I64` (`repro/f2_handle_field_coord.olang`).
- Push builds its chunk into the frame of the function making the call. The IR reads
  `List$I64.Push(ptr %t76, ...)`, where `%t76` is add's own scope, closed at its return.
- The commonest shape is a loop in main: `for i in range 3 { bs[0].S.Push(i + 7) }` (`f2b`).
  - `-b` prints `199007 210736 199007`.
  - `-s` reports a use after scope closed.
  - `-i` prints `7 8 9`.
- All of these variants fail too:
  - a List parameter (`f2c`);
  - a method (`f2d`);
  - a handle in a nested value field, `f.Blocks[b].inner.S.Push` (`f2e`);
  - a plain function given the field, `pushTo(f.Blocks[b].S, x)` (`f2f`);
  - the collection held through a reference field (`f2g`);
  - two levels, `ll[0][0].S.Push` (`f2h`);
  - text pushed onto a `List<String&>` field, which segfaults at `-b` (`f2i`).
- `Map.Get` is not reachable: `(try m.Get(k)).S.Push(x)` is T25c's error, since Get's read-only receiver gives a
  read-only copy (hf/h06, h12, h13). Vec cannot hold such elements (O31/T25e, hf/h15).
- These forms are correct, which locates the fault:
  - the element itself a handle, `ls[b].Push(x)` (`f2y`);
  - a store, `bs[0].S[0] = x` (hf/h18);
  - the call written out by hand, `h := bs[b].S; h.Push(x)` and `e := bs[b]; e.S.Push(x)` (`f2x`, hf/h20).

**Root cause of F1 and F2.** atWriteBackArgs holds the field in a hidden local: `$handle := x[i].f`, through
holdHandleCopy, then `buildVarDeclFromOperand`. That declaration, `buildVarDeclFromOperandIn` (semantic.c ~18945),
lands its initializer's call by its obligations only when the initializer IS the call: `landDeclWhereFree(rhs)`
returns false for an `OPERATION_MEMBER`.
- The At call the field is read out of is therefore never landed, and the hidden local's references take the block.
- The `:=` a program writes goes through buildVarDecl's O18c path (~20493). That path walks projectionBase to the call
  and lands it (`projLanded`), then sets the references' home from it with refsHomeOf/valueHomeOf.
- So the hand-written form is right and the hidden one is not.
- The consequences:
  - For a handle (F2), Push's receiver scope is bound to the block.
  - For a view (F1), O17 sees the copy's storage and references both in the block, finds no split, and lets the
    callee build there.
- The element-itself case works because there the initializer is the At call itself.

**Fix for F1 and F2 (verified in a scratch copy, `patch/review-patch.diff`, env `RVPROJ`).**
- In `buildVarDeclFromOperandIn`, do what buildVarDecl does: walk heldResult/projectionBase to the call. If it is
  landing, `landDeclWhereFree(ctx, c, ...)` it, then call refsHomeOf/valueHomeOf on it, not on rhs.
- With this change:
  - F2's nine shapes all run correctly under `-b -d -s`, except f2h (two levels).
  - F1's five shapes become O17's "x[i] gives a copy, and the call can build into what it holds", as the whole
    element already is.
- f2h also needs the inner At call read again, in atWriteBackArgs (env `RVREREAD`). Re-read the At call under a field
  projection exactly as the element case does (`atReadAgain`, which holds the inner collection as a handle copy).
- Every `checks/cases/e31b*`, `o17*` and `o18*` case still behaves as its header says with the patch. The rest of the
  suite was not run.
- Regression tests to add: f2b, f2c, f2e, f2h and f2i, read back after a churn and run under `-s`, and f1/f1c as
  must-fail cases naming O17.

**F3 - CONFIRMED, OLDER (d05c915 too), HIGH: the same landing gap one call deeper, in code the program writes.**
- The shapes:
  - `h := ll[0][0].S; h.Push(x)` (`f3`);
  - `e := ll[0][0]; e.S.Push(x)` (`f3b`);
  - `h := lll[0][0]; h.Push(x)` (`f3c`).
- All three build into the function's own scope: `-b` prints garbage, `-s` reports, `-i` is right. The patch does
  not fix them.
- O18c's projLanded lands the outer At call, but that call's receiver `ll[0]` is itself a call's result. Nothing
  lands it, so the outer call's obligations tie the result to the block.
- Splitting the statement is correct: `inner := ll[0]; h := inner[0].S` (`f3x`). So is the hidden `lll[0][0].Push(x)`
  (hf/h25), because atReadAgain holds the inner read.
- Fix: landing a call by its obligations (landByObligationsIn) should first land a receiver or argument that is
  itself a landing call. That would also make RVREREAD unnecessary for f2h.

**T1h - CONFIRMED, OLDER (d05c915 too), MEDIUM: T1's tightening misses a field of a parenthesized try-default.**
- The cases:
  - `bumpPt((try a[1] catch default Acc()).P)` on a built-in array is accepted (`t1`).
  - So is `(try a[1] catch default Acc()).P.Bump()` (`t1b`).
  - So is an assignment, `(try a[1] catch default Acc()).P.X = 5` (`t1d`).
- The run time writes a temporary, while the compile-time evaluator and `-i` write the element. This breaks K1:
  - `t1c` gives `baked 1 run 0`;
  - `t1d` gives `baked 51 run 0`;
  - `-i` gives the evaluator's answer.
- `try a[1].P catch default Pt()` is refused (catch on the member). The List spelling of `t1` is T25c's error.
- Root cause: `OperandIsLvalue` (semantic.c ~8892) and `triedPlace` look only at the operand's own catch clauses,
  never at a value base's.
- Fix: in both, walk MEMBER/INDEX through bases that are not references. A base with catch clauses makes the whole
  no place. The assignment then becomes an error too, matching R9b, and the evaluator never sees it.

**C1 - CONFIRMED, OLDER, LOW (consistent in every mode): a conditional or match of elements lent writable.**
- `bump(l[0] if k > 0 else l[1])` and `bump(a[0] if k > 0 else a[1])` lose the write silently (`c1`, `c1b`; also
  work/t06, t06b, t11).
- T1's own argument applies: it is a value either way. Recommend the same error when every value is a place (or a
  field of one), or record it as accepted in E28.

## Held (no finding)

**r1, the relaxation.** A struct value-field path of an element copy lent to a callee that is itself a view.
- The composition is sound as argued: a view of `m` writes none of `c.w`'s storage. Nothing but `c` names the hidden
  copy, and every argument derived from `c` is judged on its own.
- Fuzz: `fuzz/gen.py` builds f(c mut Layer&) from 1-4 random statements lending `c.w`, `c.b` and `c.w.inner` to:
  - views, writers and repointers;
  - direct and mutual recursion;
  - `mut` methods and two-parameter mixes;
  - by-value and read-only helpers;
  - `defer`, `if` and `for`.
  It calls f on a List copy and on an Array place. Seeds 1-300: 78 accepted, 222 refused (all E31b), 0 mismatches
  between the two lines or between `-b` and `-i`.
- Also tried:
  - generics instantiated with a view and with a writer field type, judged per instantiation (`k2`, work/gen02);
  - lambdas capturing the parameter, whether called, passed, iterated or spawned, all refused (work/l01-l05);
  - spawned view calls on `c.w`/`c.b` inside the callee's join (`k1`);
  - deferred view calls, which read `l[i]` when they run (work/df01, df02);
  - owners and own arrays: they cannot be held by value in an element (O31, work/o02);
  - building through the field from a whole element: O17 (work/a01, a02, hf/v07).
  The only hole is the top-level field (F1), which is not r1's.

**P1.** Every computed-callee shape tried is E31b's error:
- a field's function value, spawned, deferred or tried;
- a conditional callee;
- an element's function value, spawned;
- a global function value;
- `Pair.First`;
- a function-value parameter;
- a `Call` adapter as an element or a field, judged by Call's body (work/p01-p11).
A match as a callee does not parse as one (p04), which is unrelated.

**T1.** Refused, as the round says:
- `bump((try a[1] catch default v))`, parenthesized;
- `try l[0].P catch default`;
- a block clause with a default;
- `try ll[0][0] catch default`;
- `(try ll[0])[0]` (work/t01, t07, t08, t10).

**d3's note** (`d3/n01`-`n11`) never crashed. It points at the innermost written statement of the immediate callee:
- `for`, nested `if`/`for`, `defer`, a generic, `match`;
- a body declared later;
- a cycle;
- a parameter read into a local;
- a for condition;
- a constructor body;
- the second parameter.
It names only one level: n06 points at `g(c)` in f, not at h's write. Following the memo's `why` into the callee it
names would point at the write itself.

# own5: soundness review of `own` phase 2a, third round (e3ded09)

Compiler: /home/user/wt/rvown5 @ e3ded09 (`build/out`). Baseline for "pre-existing": 079921e
(/home/user/review/own4/scratch/old/build/out). Oracles: `-b -s` (scope sanitizer), `-b` after an arena churn,
valgrind, `-i`, `-r`. Driver: scratch/run.sh; scratch/t holds the probes.

## CONFIRMED

### F1 - use-after-free: a callee keeping an `&p` field of its argument escapes confinement (O38, O23a)

repro/f1_derived_field_kept_by_callee.olang. `w := W(b)` (W has a field `f Outer&o = o`, `b := v` a borrowed copy),
then `keepVal(l, w)` with `fn keepVal(l mut List<Outer&>&, w W) { l.Push(w.f) }` - also through a receiver
(`w.into(l)`) and into another argument's field (`setBig(g, w)`). Then `v.o = null` is accepted.

- `-b -s`: `use after scope closed`, abort 134 (each of the three). `-b`: segfault 139.
- valgrind: invalid read 80 bytes inside a block freed by `__olang_own_free`.
- `-i`: `1 leaf5 / 2 leaf6 / 3 leaf7` (it never frees). Also on 079921e.
- Root cause: semantic.c `ownKeepDests` (27585) and `calleeMayHoldArg` (19265) match an obligation only where
  `ob->longer` (or an exact `ob->shorter`) is the parameter's own scope variable. A field read through the parameter is
  at a DERIVED scope variable (`derivedFrom == p`, O23a), so the obligation "derived(w) outlives l's scope" is not
  attributed to parameter i. `calleeMayHoldArg` returns false, `ownCallConfined` skips the argument, and `l` keeps
  b's storage with no loan.
- Constructors are refused (the C2d path is conservative), and so are function values (T22a sees the derived
  obligation). Only direct calls to functions and methods are affected.

### F2 - released owner observed: an owner value local moved by O26a is released at the return (O35, O26a, K1/K2)

repro/f2_returned_owner_value_local_released.olang. Two shapes: `fn mk3() mut Outer& { v := Outer(); v.o = Inner(3);
...; return v }`, and `h := Hold(v); return h`.

- O26a builds v in the result scope. But its owndrop node is registered on the function's own scope
  (`__olang_scope_register_dtor(%t128, ...)`), so every own slot is nulled and freed at the return.
- The caller keeps v's storage. `r.o == null` is `true` at run time, and `k3()` traps on the null.
- The evaluator gives a release no meaning: `K I64 = k3()` bakes as 3, and `assert k3() == 3` is decided true while
  compiling (no check emitted).
- `-b`: `baked K=3`, `true`, `true`, then segfault at address 0.
- `-i`: `baked K=3 / false / false / run time: 3`.
- Also on 079921e.
- No freed memory is read: owndrop nulls before freeing, and an own array's `{len, ptr}` is zeroed. A destructor-bearing
  instance in the same block holding `w.x = v` sees the same null in its destructor (scratch/t/n1v.olang). That case
  traps at run time, and `-i` refuses destructors.
- Root cause: O35's release at block close, and O39's check of it, take a reference to an owner value local's
  storage (E12c) to be no loan. That stays true only while the storage dies with the block. Once O26a moves the
  storage, the reference outlives the release, and K1's claim that no program observes a release breaks.
- The fix is either to refuse it or not to release: refuse O26a moving an owner value local that the result reaches
  by reference, or treat that move as a move of the owner.

### F3 - leak (tests only): an owner held in a register while a later argument fails a guaranteed check (O35, N3)

repro/f3_test_abort_leaves_held_owner.olang. `eat(Res(1), a[lo:hi])`, `eat3(Res(2), (e as E.A))` and
`eat(Res(3), Array<I64>(n))`, inside `test` blocks.

- `-t`: three FAILs as expected, then `made 3 dropped 0`.
- Root cause: codegen.c `cgMayLeave` (5558) holds the owner in a slot only for a call, a check under `try`, or a
  catch clause. A slice bounds check, an `as` or an array length without `try` aborts outside a test. Inside a test it
  longjmps through the unwinder (P1d), which closes scopes - and this owner is in none.
- Outside tests it is unobservable: the process aborts.

## PLAUSIBLE

None beyond the above.

## What held

- **Earlier reproducers**: all 60 from own1-own4 (scratch/prev/prev.log). The unsafe ones are refused with
  O39/O41/O17/O32/O38/O40. The rest run correctly: fr04/fr05 destructors, f3 `made 4 dropped 4`, f4 2000, n3
  `made 5 dropped 5`, n6 `made 2 dropped 2`, m1 4M turns.
- **Confinement**, all refused:
  - match values, conditionals and catch defaults stored through a reference;
  - a generic `<T>` keeper; constructors keeping through a derived field;
  - `SetAt` into a List; `Call`, `Plus` and `Has` operator methods keeping a borrowed copy; an enum payload kept
    through `match`;
  - spawn targets;
  - returning `Hold(b)`, a lambda capturing b, or `id(b)` (O26/O10d/T25c).
  - Lambdas that keep a capture or parameter, called directly, held in a local or passed to `run` (T22a).
  - Taking from or clearing through a read-only reference (E34/T25b).
- **ownHoldUntil**: a reference taken before a store, a slice, and a mut receiver all hold their loans. Owner value
  locals growing under a borrowed copy are refused (O39).
- **N6**: own fields and own arrays in failing constructors; `take` of a field into another field or into a failing
  owning parameter; an owner value local of a nested failing constructor. Every case gives made = dropped, and
  valgrind and `-s` are clean.
- **M1**: holds in loops with `continue`, under recursion and in four tasks: made = dropped, `-s` clean, `-r` clean
  (with atomic counters).
- **Evaluator**: take/assign/zero-value/moved-owner semantics agree between baked globals, run time and `-i`
  (scratch/t/ev1.olang), apart from F2.
- **Scope fuzzer, own mode**: seeds 5000-5079 gave 201 run, 759 refused, 0 findings; seeds 6000-6299 gave 759 run,
  2841 refused, 0 findings. It generates neither F1's nor F2's shape.

## Over-rejections (brief)

- A borrowed result of an own field through the receiver - `fn (v Outer&) First() Inner&v { return v.o }`, and
  `View() Array<I64>&v { return v.buf }` - is O10's error, with or without `mut`. docs/own.md section 13 calls
  `View()` a borrowed result, so Vec will need it.

## Summary

Three confirmed defects, all also present on 079921e:

- **F1, a use-after-free**: a callee keeping a field read at a derived scope (`&p`, O23a) of a by-value or reference
  argument escapes O38's confinement, because `ownKeepDests` and `calleeMayHoldArg` match only the parameter's own
  scope variable.
- **F2**: an owner value local whose storage O26a moves into the result scope is still released at the return. The
  caller holds nulled slots (a run-time null trap), while the evaluator bakes and decides asserts on the
  never-released objects.
- **F3, a leak in tests only**: an owner held in a register is leaked when a later argument fails a guaranteed check.

Everything from own1-4 still holds. N1-N6 and M1 hold under their variants, and the own-mode fuzzer finds nothing.

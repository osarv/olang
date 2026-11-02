# Bulk review 6b: the fix round of bulk review 6 (wt-bfix6), at master 3b51cc9

Reviewed read-only at 3b51cc9 (worktree /home/user/wt/rework, detached), 2026-11-02. The worktree's `build/olang` was
older than the fix round (built 10:21 UTC, before its first commit), so the compiler used is `build/olang.s2`: 3b51cc9
built by that binary (`build/olang.s1`), then by itself. `run.sh FILE` (beside this file) runs a program three ways:
built (-O3, LTO), built `-debug -sanitize`, and `olang interpret`. The reproducers that show a finding are in `repro/`,
the attempts that held in `repro/held/`. Every finding below was run, and the outputs quoted are what the runs printed.

Counts: soundness 1 (F3, pre-existing - the compiler before the fix round fails the same way), wrong result 3 (F1, F2,
F4), over-rejection 1 (F5), diagnostics 1 group (F6).

## Soundness

### F3 (soundness, pre-existing; D18, D16d, O26a). A generator's lambda over a reference local from a built call reads freed storage on the second turn

`repro/gen_capture_uaf_min.olang`:

```
fn mk(k I64) node& { return node(k) }
fn gen(k I64) Iterator<I64> {
    r := mk(k)
    f := fn() I64 { return r.v }
    for i in range 3 {
        x := f()
        yield x + i
    }
}
```

walked by `for x in gen(5)` with each turn allocating: `-debug -sanitize` aborts at the second turn with "use after scope
closed: storage a closed scope gave back was read or written"; `repro/gen_capture_uaf.olang` (`yield f() + i`)
segfaults there (gdb: in the lambda reading `r.v`, under the walk's `.wnext`). The plain build and interpret print the
right sum (18) - the storage is released, not yet reused. The compiler built before the fix round (`build/olang`)
fails the same way, so this predates F9's change, but it is the shape F9 relaxed (a reference from a built call
captured by a lambda). Controls that hold (`held/`): the generator reading `r.v` itself (`gen_capture_plain`), the
reference made by a constructor (`r := node(k)`, `gen_capture_ctor`), the lambda made inside the loop
(`gen_capture_inloop`), a captured `I64`
(`gen_capture_value`). So it is the landing of `mk(k)`'s result: with a lambda local over it, made before the loop, the
node is placed where the first `Next` call's storage is (its result or frame scope), which closes when that turn ends.
`repro/lam_ref_more.olang` is where it was found (its plain, struct, loop-turn and repointed cases are right).

Likely cause: compiler/scope.olang - the generator's body is a lambda (D18) whose own scopes are per `Next`; the
landing of `r := mk(k)` read through the capture flow (`carried`'s lambda captures, or D16d's frame latitude for "a
local only ever called") takes the body's frame or result scope for the generator's - where the generator lives
(`GenHome`) is what a reference local the walk keeps across a `yield` must land in. Fix: in a generator's body, a
local read after a `yield` (here through a capture) lands where the generator lives, never in a `Next` call's scope.

## Wrong results

### F1 (wrong result; E31b, the fix round's `settleInPlace`). A call made in place whose method calls C, and C calls back an export fn growing the collection

`repro/cb/inplace_extern.olang` (with `cb.c`, built to `cb.o` by `clang -c -O2 -fPIC cb.c -o cb.o`): `G[0].Bump()` where
`Bump` calls the C function `c_poke`, which calls the export fn `olang_grow` pushing 1000 elements onto the mutable
global `G`, then writes `b.n = 99`. Built: `G[0].n = 1 len 1001` (the write lost). `-debug -sanitize`: "stale view:
storage a collection replaced when it grew was read or written". (interpret cannot load an object: B3e's error.) Memory
safe only because a program with an export fn frees nothing early.

Cause: compiler/effects.olang `extern` sets `CallsC`, `Blocks` and `Opaque` for a C function, never `WritesGlobals` or
`Unknown`; `check.settleInPlace` refuses the in-place form only on `WritesGlobals or Unknown or Unchecked`. X13 says C
may call an export fn at any time. Fix: in settleInPlace (and wherever effects stand for "may change any collection"),
an extern call other than X8's math and the runtime's `__olang_` functions counts as Unknown where the program has an
export fn - free.olang's own condition (bulk review 1 F6: "an extern call lets go of anything where an export fn
may").

### F2 (wrong result; E31b, G42, B11b effects). Destructors are no part of the effect summaries: an in-place call loses its write, and function facts are false

- `repro/inplace_dtor.olang`: `G[0].Bump()` where `Bump` closes an inner block holding a `guard()` whose destructor
  pushes 1000 elements onto `G`, then writes `b.n = 99`. Built `G[0].n = 1 (99) len 1001`; `-sanitize` stale view;
  interpret stops (line 17's view, the growth at line 10). `explain` of `blk.Bump` says
  `effects: writes through 'b'; allocates nothing; never blocks; always ends; may be computed while compiling`.
- `repro/fact_dtor.olang`: `fn touch() { g := guard() }` with the same destructor; the top-level asserts `assert not
  touch.WritesGlobals` and `assert not touch.Allocates` are decided true and the program builds; running it prints
  `len 1000`. G42 promises a fact true "where the function or anything it may call may".

Cause: compiler/effects.olang reads a body's calls (`Callee.Body`, `Extern`, values, dispatch) but not the destructors
it registers: a constructor call of a type with `destruct` (C11, O16), or a local/temporary of such a type, should count
its destructor body as called (where it is registered - O16 runs it at that scope's close), as a lambda's body counts
where it is made. Everything reading the summaries is affected: settleInPlace, the G42 facts, the effects line,
`-caps`, D9h's quiet statements if they read them.

### F4 (wrong result; M19g as extended by F7, -sanitize). A Ref/RefMut reached through an index or a call's result, held across a growth made through the same route in the same function

- `repro/ref_index_grow.olang`: `r := vs.RefMut(0).RefMut(0)`, then `vs[0].Push(...)` 1000 times (in place, E31b),
  then `r.n = 77`. Compiles; built `vs[0][0].n 1 r.n 77 r.m 2` (the write lost); `-sanitize` stale view; interpret
  stops naming the growth.
- `repro/map_ref_index_grow.olang`: the same over `Vec<Map<I64, blk>>` (`ms.RefMut(0).RefMut(1)!` across `ms[0].Put`
  growing it): built `ms[0][1].n 1 r.n 77`.
- `repro/map_ref_local_grow.olang`: the Map a field of a struct in a Vec, `r := ss.RefMut(0).m.RefMut(1)!` across
  `fill(ss.RefMut(0).m)` growing it: built `r.n 77 r.m 2`; **`-debug -sanitize` prints `r.m 9220416504501469173`**
  (0x7ff57ff57ff57ff5, the sanitizer's poison) **with no stale-view report** - the retired slot array is poisoned but
  not protected. Its array was made by the struct's copy (`ss.Push(s)`, `olang.HelperKind.Copy` of the Map, which
  allocates with `__olang_scope_alloc_zeroed`, not `__olang_san_alloc_own`), so the retire cannot protect it (B2f: "an
  array made in a module that retires has a chunk of its own") - a sanitizer gap beside the M19g one.

Not memory unsafe: no place released the replaced arrays in these programs (`-memory`: no place lets go; a 4M-element
Vec local's growth measured 130 MB, the retired buffers kept). M19g's own text keeps "a place through an index or a
call's result meets no other" as a limit; the brief's F7 asks for a Ref across a growth in the same function, and
these are in one function. Fix: views.olang - a place reached through `RefMut`/`At` chains on the same collection
expression (`vs.RefMut(0)` / `vs[0]` / `ss.RefMut(0).m`) meets itself, as two reads of the same local's field do;
and the Copy helper (and every array maker in a retiring module) allocates through the sanitizer's own-chunk path.
`repro/ref_hidden_grow.olang` (a closure over `pv mut Vec<blk>&` growing it, called with no argument) is the
documented hidden route (built: lost write, `r.s ''`; -sanitize and interpret catch it), listed for completeness.

## Over-rejection

### F5 (O26a/D16d, F9's relaxation). A returned lambda calling a lambda local over a built call's reference is O10d

`repro/lam_nested_ret.olang`: `r := mk(k); g := fn() I64 { return r.v + 1 }; return fn() I64 { return g() * 2 }` is
O10d "this value lives in this function's own scope", while `return g` compiles and runs (4). The capture flow F9 added
follows a captured reference (`s.isRef(cp.Outer.Type())`) but not a captured function value whose own captures flow
(scope.olang `carried`, `FnVal.Lambda`).

## Diagnostics

### F6

1. C2d's `InstanceOutlivesArg` still ends "give it a copy ('$x', 'x.Clone()')" for a Vec argument
   (`held/turn_keep_routes2.olang`, `w := holder(v)` in a loop): a Vec has no `Clone` (handles as values), and `$x` is
   its rendering, no copy. HISTORY's F3 entry says the messages were reworded; this one was not.
2. M19g reports one stale use twice (`held/inplace_gen_recv.olang`, `held/inplace_gen_escape.olang`: "'g' holds a view
   of 'v' taken before 'v' may have grown" and "this reads a view of 'v' ..." at the same `for x in g`).
3. M19g's note on a Map's view says "copy the elements first ('m.ToArray()' for a Vec)" (`held/map_ref_replace.olang`)
   - HISTORY says `.ToArray()` is named only for a Vec.

## What was tried and held (repro/held/)

1. **F8, a copied value local returned** (`copiedRead`): copies of a local Vec's element (D9h's view candidate)
   returned by reference and by value (`copy_elem_ret`), of a loop turn's local whose field names a turn temporary
   (`copy_turn_refs`: the temporary is lifted), of a by-value parameter, a global and a field read
   (`copy_param_ret`), of an immutable global's element returned as `mut blk&` and written (`copy_global_mutref`: the
   global is untouched), across a join with `spawn a = f()` (`lam_ref_task`) - right in all three runs, after churn.
2. **F9, references captured by returned lambdas**: repointed at a loop turn's local, a reference to a frame local
   (`lam_ref_capture`), a lambda inside a struct, returned from a loop turn, a reference reassigned before the capture
   (`lam_ref_more`, but for its generator case, F3), the referent also given to a task (`lam_ref_task`) - right.
3. **F10, slices of a call's value returned**: of a fresh call result, of a turn's Vec view inside a loop
   (`slice_temp_ret` - right); of a new array or a rendering (O10d, correctly).
4. **F13 owner locals and FreshCtorAt**: a slice or whole view of a reassigned owner local returned
   (`ownlocal_ret_view`); views across the reassignment held in a struct, a lambda, a field, a loop of holders
   (`ownlocal_view_across`), through a callee's borrowed result, a Ref, a reference local and a closure
   (`ownlocal_calls`), a copy, a struct copy and a slice (`ownlocal_copy_alias`), a generator yielding views of a
   local it reassigns (`ownlocal_gen`) - every one keeps (`-memory` names the view) and reads right; the loop-only
   shape frees. A constructor given a view of an argument (`box(same(src))`, D9h) is a copy, writes on either side
   unseen by the other (`freshctor_view`); given a view of a temporary and kept past an inner block or pushed
   (`freshctor_temp`); Map values and an owner local replaced 2000 times by constructors over fresh calls, rendered
   (`freshctor_map`, one place freeing at once) - right, `-sanitize` clean.
5. **F1's element-type rule and plain arguments**: no shape got past `collWalk`/`plainArg` but an extern (F1) and a
   destructor (F2); a generator method called through `x[i]` keeps the element's reference and M19g refuses walking
   it after a growth, in the function and through a returned generator (`inplace_gen_recv`, `inplace_gen_escape`).
6. **F2, D9h's quiet statements**: an element copy then a call in place on that element, a whole-field refill, a
   for-in copy with an in-place write in the body, a RefMut written after a copy (`d9h_inplace`); a value result
   viewing an argument read in a join beside a closure writing it, or a call given a struct holding a writable
   reference (`d9h_stmt_closure`) - copies, right.
7. **F3, owning turn values kept by reference**: through a function storing into a mut parameter, a method, a copied
   wrapper, a lambda pushed (`turn_keep_routes`, `turn_keep_routes2`) - O10c or C2d, refused.
8. **F7**: a RefMut across a growth by a second name the function made, a Ref across a method of a struct holding the
   Vec (`ref_alias_grow`), a Map Ref across a Put (`map_ref_replace`) - refused. A Ref through a call chain across a
   Put replacing the same slot reads the slot's newest value (`map_ref_replace_hidden`) - a reference to the slot, as
   the language says.
9. **The evaluator**: the fix round's new run cases bake and decide (o26acopyflow's `Baked`); interpret agreed with the
   build wherever both ran.

Probes, no finding: `grow_release_probe*` and `map_release_probe` (whether a local collection's growth releases its
old array: it does not in these shapes, so the hidden-route Refs of F4 stay memory safe).

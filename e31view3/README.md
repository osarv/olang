# e31view3 - soundness review of 193aec4 (the E31b/O17b round's third fix: F1+F2, F3 relaxation, T1h, C1)

"new" is `/home/user/wt/rve31c` at 193aec4 (`build/out`); "old" is `/home/user/wt/rve31b` at 15841b0 (the previous
review's tip, `build/out`); "base" is master d05c915, the parent of the whole e31view branch
(`/home/user/review/e31view/base/build/out`). `t.sh FILE` builds and runs with new `-b` and `-b -d -s`, interprets
with new `-i`, and builds and runs with old `-b` (`NOOLD=1` skips, `NOSAN=1`/`NOI=1` skip those). `work/` holds the
scratch probes; `repro/` the confirmed reproducers; `prev/` is the previous review's repros rerun here (`prev.out`).
A `build/hl` compiler with a one-line `HLDBG` print at the two `handleLent` sites was used to see which calls the
relaxation fires on.

## Verdict

The RELAXATION (F3: handleLent / landedCallRefsScope / handleThroughParam) is sound as far as I could push it. The
previous review's F1/F2/F3/T1h holes are all fixed, and C1 is now an error. But a BROADER use-after-free sits beside
the ones this branch has been closing, **pre-existing (base d05c915 builds and segfaults too), not opened by this
round, and NOT closed by C1/T1h** - which only patch specific operand shapes (conditional/match/try-default) and only
for *writable* reference parameters. Lead finding U1.

## Findings

### U1 - CONFIRMED, HIGH, PRE-EXISTING, not closed by C1/T1h: a non-handle value holding a writable reference, lent to a reference parameter, built through, in a block that closes

The shape, minimal (`repro/funcresult_nonhandle_ref_param_uaf.olang`, no x[i], no conditional):

```
type Node struct(v I64, next mut Node&) { v  next }
type Box  struct() { head mut Node& = Node(0, null)  tag I64 = 0 }   # TWO fields -> not a handle
fn idBox(seed mut Box&) Box { return seed }
fn addRef(b mut Box&, v I64) { b.head.next = Node(v, b.head.next) }
fn main() ? {
    seed := Box()
    for i in range 3 { addRef(idBox(seed), i + 1)  churn() }   # the call's result is a copy, built in the loop body
    ...                                                        # addRef builds a Node through b.head, into that block
}
```

- `-b` segfaults (139), `-b -d -s` reports "use after scope closed", `-i` prints the right answer (321). Base segfaults
  identically.
- The result of `idBox(seed)` is a `Box` VALUE whose `head` field is a *copy of seed's pointer* (shared). `addRef`
  gets a reference to that copy, and `b.head.next = Node(...)` builds the new `Node` where the compiler thinks
  `b.head` lives - its container's scope (O20), i.e. the copy's scope, which is the loop body. The `Node` is hung off
  seed's real chain and freed when the loop body closes.

**Why nothing catches it.** In `bindCallScopeVars`, a value argument (not an lvalue) passed to a REFERENCE parameter
takes neither the borrow path (`borrowed = ... && OperandIsLvalue(arg)`, false for a value) nor the by-value path
(that branch is `if (!(pt.structMAlloc || ...))`, skipped because `Box&` is a reference). It falls through
`if (!argDeterminesScope(arg) && !borrowed) continue;` with the callee's scope variable unbound -> the block. No O17
split-scope check runs. The only backstop, `atWriteBackArgs`, (a) runs only for `pt.refMut` parameters and (b) only
recognises `triedPlace` / `condChoosesPlace` operands - never a plain function-call result.

**The hole's extent, measured:**
- A **one-field handle** (`Box` with only `head mut Node&`) is bound correctly by the handle treatment and does NOT
  reproduce (`work/h11.olang`, prints 321) - adding one scalar field breaks it (`repro/...nonhandle...`, `work/h12`).
  So the trigger is "holds a reference but is not a one-field handle".
- An **lvalue** argument (`addRef(a[0], ...)`, `work/h07`) is borrowed in place and is safe.
- A **by-value parameter** is judged (landedCallRefsScope / copiesExistingRefs) and is safe (`work/h10` single call).
- The copy must land in a block that closes before the referent is next read: a **loop body** or inner block
  (`work/h10` with one call, no loop, is safe - the block is `main`'s own).
- Independent of writability: `addRef(b mut Box&, ...)` (`repro/funcresult_nonhandle_ref_param_uaf.olang`) AND
  `addRef(b Box&, ...)` read-only building through the shallow `mut head` field (`repro/funcresult_readonly_shallow_mut_uaf.olang`)
  both reproduce.

### U2 - CONFIRMED, HIGH, PRE-EXISTING, same root as U1, the read-only + conditional/try-default variants C1/T1h leave open

C1 (`ERR_COND_LENT_WRITABLE`) and T1h (`triedPlace`/`condChoosesPlace`) this round close the *writable* versions of a
conditional/match/try-default choosing a place, lent to a `mut` reference. The **read-only-receiver** versions of the
very same hazard are not closed, because `atWriteBackArgs` only looks at `pt.refMut` parameters:

- `repro/cond_readonly_shallow_mut_uaf.olang` (`work/h08`): `addVia(b1 if i >= 0 else b2, i + 1)` into a read-only
  `addVia(b Box&, ...)` that builds through `b.head` (shallow `mut`). Writable receiver -> C1 error
  (`work/h08mut`, `error[E28] ... ERR_COND_LENT_WRITABLE`); read-only receiver -> `-b` segfaults, `-s` reports, `-i`
  prints 321. Base segfaults.
- `repro/cond_array_readonly_shallow_mut_uaf.olang` (`work/h06`): the same with array elements
  `a[0] if i >= 0 else a[1]`.
- `repro/trydefault_array_handle_readonly_uaf.olang` (`work/h04a`): `(try a[0] catch default Bag()).Sneak(i + 1)` on a
  BUILT-IN array, where `Bag` is a one-field handle and `Sneak(b Bag&)` is a read-only method building through the
  handle's `mut` field. `-b` segfaults, `-s` reports, `-i` prints 321. (The List spelling,
  `(try l[0] catch default Bag()).Sneak(...)`, happens to bind correctly - `work/h04b`, prints 654 - so this one is a
  built-in-array-vs-List asymmetry on top.)

All of these are the same defect as U1 (a non-lvalue value holding a reference, lent to a reference parameter, built
through, in a closing block), reached through the conditional/match/try-default operands that C1/T1h patch only for
writable parameters.

### U3 - CONFIRMED, MEDIUM, PRE-EXISTING: a slice of a field of a try-default, returned as a borrow, is built wrong

`repro/trydefault_field_slice_return_uaf.olang` (`work/t04`):

```
fn view(a Array<Array<I64, 2>>&) Array<I64>&a { return (try a[0] catch default Array<I64, 2>())[0:2] }
```

- `-b` prints garbage for `v[0]`/`v[1]`, `-b -d -s` prints `11 0` (partly poisoned), `-i` prints `11 22`. Base prints
  garbage too.
- The checker reads the returned slice as a borrow of `a`'s storage (the `&a` result scope is accepted), but the code
  generator slices the try's *temporary default/element copy*, which lives in `view`'s own frame - so the returned
  slice points into the dead frame. Not the relaxation; a `try ... catch default` + slice + return interaction. T1h's
  rule ("a field of a try-default is no place") covers lending/assigning but not a slice that is *returned* as a
  result-scope borrow. Several spellings (`viewPt`/`viewAs`/`viewSl` in `work/t05`) reproduce the same; the evaluator
  disagrees with run time throughout.

## The relaxation (F3) held

Attacked hardest; every dangerous shape is refused or binds correctly:
- A callee **storing** the handle itself (`sink.Push(h)`): T25c error (`work/r01`).
- A callee **aliasing** the handle into a local then pushing (`s := h; s.Push(x)`): O17 error (`work/r03`).
- A callee **repointing** its cursor (`l = List<I64>()`): S4a, local to the call, no escape, correct result
  (`work/r05`).
- A **short-lived inner** pushed into an outer list (`ll.Push(inner); ll[i].Push(..)`): O10c error (`work/r04`).
- A **read-only method on a handle** building through its own `mut` field (`(try m.Get(1)).Sneak(..)`, `l[0].Sneak(..)`,
  `(try first(l)).Sneak(..)`): binds where the handle's state lives, correct result (`work/h01`); base segfaults, so
  this is a genuine fix.
- The relaxation's own target shapes run correctly: `pushTo(try m.Get(1), x)`, `pushTo(try ll.First(), x)`
  (`work/b01`), `h := ll[0][0].S; h.Push(x)` and the previous review's `f3`/`f3b`/`f3c`/`f2*` (all `for 7`, exit 0 -
  see `prev.out`).
- Handle copies in odd positions (a `for`-clause condition, a `match` subject, a comprehension filter, a `default`, a
  guard, `in`, a comparison chain, an `assert` message, `defer`, a nested `try`): all correct (`work/p01`).
- A callee capturing the handle parameter in a lambda it keeps: correct (`work/l01`).
- A handle a FUNCTION VALUE gives (`g()` with `g := fn() List<I64> { return ll[0] }`): refused at the lambda (T22a)
  before the relaxation is reached (`work/fv01`).

## T1h and C1 held for what they target

- T1h: `(try a[1] catch default Acc()).P.X.AtomicAdd(5)` and `... .P.X, a[0].P.X = 3, 4` are errors (P9 / R9a,
  `work/t01`); the baked-vs-run disagreement the previous review found (`t1c`/`t1d`) is gone. The previous repros
  `t1`/`t1b`/`t1d` are now `ERR_WRITE_THROUGH_AT_CALL` / `ERR_ASSIGN_INTO_TRIED` (see `prev.out`).
- C1: `bump(l[0] if k > 0 else l[1])` / `bump(a[0] if ...)` are `ERR_COND_LENT_WRITABLE` (`prev.out`, `c1`/`c1b`).
- F1/F2: every previous-review F1/F2 shape now either runs correctly (`f2*`, `f3*`: `for 7`) or is the right error
  (`f1*`, `k2`: E31/O17/E31b) - see `prev.out`.

## Over-rejections (kept apart from soundness)

- `repro/str_twolevel_field_overrejection.olang` (`work/o01`, `o01b`): a `Str` that reads a TWO-level List field
  through `x[i]` -
  `fn (w W&) Str() String { return "W" $w.ll[0].Len() }` with `ll List<List<I64>>` - is refused
  `error[E11c, O12]: '$' does not say where a value it renders lives ...`. The read `w.ll[0]` gives a handle a call
  (At) produces, which the `$`/Str build-into-receiver analysis treats as building in the receiver. A one-level
  `w.l.Len()` on `l List<I64>` is accepted; the two-level case is not. Base accepts it (`W1`). Natural Str code; refused,
  not unsound.

## Fuzz runs (scope fuzzer, fuzz/scopegen.olang via build/fuzz_fuzz.debug)

One process at a time, `-b -d -s` vs `-i`:
- scope mode seeds **81-280** (200 programs): 959 scenarios run, 1441 refused, **0 findings**.
- scope mode seeds **281-430** (150 programs): 689 scenarios run, 1111 refused, **0 findings**.
- own mode seeds **1-80**: 234 scenarios run, 726 refused, **0 findings**.

The fuzzer's Bag shapes drive `mut` reference parameters and writable receivers, which the checks catch; it does not
generate the non-handle-value-into-reference-parameter-built-through shape of U1/U2 (read-only receivers building
through shallow `mut` fields, or a bare function-result value lent to a reference parameter), which is why it is silent
on them.

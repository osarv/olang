# Soundness review: Vec phase 1 (3a4f5e8..91ff37e)

Read-only review of commits 5fd858f, d4d93e7, a6fbc53, 91ff37e, built at 91ff37e in `/home/user/wt/rvvec1`
(`make -j4 build/out`). Every finding below is a program the compiler ACCEPTS that reads freed memory.

Repros in `repro/`. Run three ways from `/home/user/review/vec1/work`:
```
O=/home/user/wt/rvvec1/build/out; f=/home/user/review/vec1/repro/NAME.olang
$O -b -d -s $f && ./build/NAME.debug.san     # scope sanitizer: "use after scope closed" on a UAF
$O -i $f                                       # interpreter: the reference answer
$O -b $f && ./build/NAME                       # optimized: usually survives (silent)
```
Each repro churns the arena (`churn()`) between the release and the read so freed storage is reused.

## Summary

Two independent root causes, both **introduced by relaxation 1** (borrowed own results, O37/O38 — the whole
`ownBorrowResult` / `ownResultRegionOf` machinery is new in these commits; borrowed own results do not compile on
3a4f5e8, and there is no `Vec`, so none of these shapes can be expressed on the base). All six repros: compiler
accepts, `-d -s` aborts with "use after scope closed", `-i` prints the correct value.

- **CONFIRMED use-after-free: 2 root causes, 6 repros.**
  1. A borrowed own result whose type is a **declared (nominal) array type** (`String`, or any `type Ix Array<T>`)
     loses the loan on the buffer when the owner is reached as a **reference parameter or an own-reference local**.
     Repros: f1, f1b, f3, f3b.
  2. A borrowed own result reached **through a function value / `Call` adapter** gets no loan at all. Repros: f2, f2b.
- **PLAUSIBLE: 0.**
- **Over-rejections (not bugs): 2**, listed at the end.

The headline direct cases are sound: `d := v.View(); v.Push(x); use d` on a **local** Vec is correctly refused
(`checks/cases/vec01view`), `vec10keep` runs, and a nominal-typed result from an **owner-value-local** Vec is
correctly refused (the loan there is recorded under the buffer type). The holes are the three shapes above.

Top three: **f1** (nominal result + Vec parameter), **f2** (function-value call), **f3** (struct with an `own` field).

---

## CONFIRMED

### 1. Nominal-typed borrowed own result loses its loan (relaxation 1) — f1, f1b, f3, f3b

`repro/f1_nominal_result_param.olang`:
```
fn asText(v Vec<Char>&) String&v { return String(v.View()) }   # borrowed own result, type String (nominal)
fn grow(w mut Vec<Char>&) {
    t := asText(w)
    for i in range 1000 { w.Push('b') }   # frees the buffer -- NOT refused
    churn()
    println(t)                            # reads freed storage
}
```
Runs:
```
-b -d -s : use after scope closed: storage a closed scope gave back was read or written   (SIGABRT 134)
-i       : aa
-b       : aa   (silent; the freed region happens to survive)
```

The identical function returning the **raw buffer type** `Array<Char>&v` (instead of `String&v`) is correctly
refused with O39 (verified: `work/e3.olang`, and `checks/cases/vec06through` for `Array<I64>`). So the nominal
wrapper is exactly what defeats the check. Same for a plain non-prelude declared type: `repro/f1b` uses
`type Ix Array<I64>` and `return Ix(v.View())` — also a UAF. Same again for a struct holding an `own` array field,
whether the owner is a `mut CB&` parameter (`repro/f3_struct_own_field_param`) or an own-reference local
`o own mut CB&` (`repro/f3b_struct_own_field_ownlocal`); the raw-result version of f3 is correctly refused
(`work/f3raw.olang`).

**Root cause.** `bootstrap/semantic.c`, `ownResultRegionOf` (~line 27185) records the loan's type as
`R->regionType = OwnTypeKey(op->type)` — the **result** type, `String` / `Ix`. `OwnTypeKey` (line 2839) interns an
array type by `TypeIsSame`, and a declared array type is nominal (T29, compared by owner+name), so
`OwnTypeKey(String)` is a key distinct from `OwnTypeKey(Array<Char>)`. When the owner is released, `ownSlotRelease` /
`ownCallRelease` produce the buffer's own type `Array<Char>`, and `ownLoanHits` (line ~27607) requires
`ownTypeIn(types, l->R->regionType)` — `String` is not in `ownHeld(Array<Char>)`, so the loan never "hits" and no
O39 error is raised.

Why only on the parameter / own-reference path, not the owner-value-local path: when the Vec is an owner **value
local** (`v := Vec<Char>()`), the release is matched a second way (against the owner's own structure), which is why
`work/z1.olang` is correctly refused. The parameter path relies solely on the type key, which the nominal wrapper
breaks.

**Fix direction.** Record the borrowed-own-result loan under the type of the **own object below the parameter it is
borrowed from** (the Vec's `data` field type, `Array<Char>`) rather than `OwnTypeKey` of the result's nominal type;
or have `ownTypeIn`/`OwnTypeKey` strip a declared array wrapper to its underlying array so `String` and `Array<Char>`
share one key.

### 2. A borrowed own result through a function value / `Call` adapter gets no loan (relaxation 1) — f2, f2b

`repro/f2_fnvalue_loses_loan.olang`:
```
fn view(v Vec<I64>&) Array<I64>&v { return v.View() }   # a borrowed own result function
fn grow(w mut Vec<I64>&) {
    f := view            # view taken as a function value
    d := f(w)            # called through the value -- NO loan on the buffer
    for i in range 1000 { w.Push(i + 100) }   # frees the buffer -- NOT refused
    churn()
    println($d[0] " " $d[1])                  # reads freed storage
}
```
Runs:
```
-b -d -s : use after scope closed...   (SIGABRT)
-i       : 10 20
-b       : 10 20   (survives)
```
Called **by name** (`d := view(w)`) the same program is correctly refused (O39). `repro/f2b_fnvalue_via_apply`
shows it through a `Call` adapter handed to a generic `apply(f fn(...)..., v)` that calls it through its
fn-value parameter — also a UAF. Called directly as a method (`g.Call(w)`) or via the `()` operator on the value
(`g(w)`) it is correctly refused (`work/b7.olang`, `work/b8.olang`).

**Root cause.** `ownResultRegionOf` (line ~27187) begins `if (op->opType != OPERATION_FUNCCALL || op->callee ||
!op->readVar) return NULL;` — it bails out whenever `op->callee` is set, which is exactly a call through a function
value (or `Call` adapter). The named-call loan is attached only via `canonicalVar(op->readVar)->ownBorrowResult`,
which the function-value call never reaches. So the borrowed-own-result loan is simply not created, and nothing
stops the releasing `Push`.

**Fix direction.** Either refuse a borrowed-own-result function from being made a function value / used as a `Call`
(as O36 already refuses owning-parameter and owned-result functions as values), or reconstruct the loan on a call
through a function value whose underlying function is `ownBorrowResult` (the result's scope variable identifies the
argument it is borrowed from).

---

## PLAUSIBLE

None. Everything traced was either reproduced (above) or shown sound/over-rejected (below).

---

## Over-rejections (correct programs refused — one line each, not bugs)

- Lending an **own-array field directly** (`perm(s.data, k)`) to a callee that stores an outside value into it is
  refused by O17/O33 (`work/perm/q2.olang`), yet the equivalent through `ViewMut()` (`perm(v.ViewMut(), k)`) is
  accepted and is **sound**: the stored outside text is built in the correct element scope and survives relocation +
  heavy churn under `-s` (`work/p2hard.olang` prints the right value). So the direct-field lend is an over-rejection.
- `ViewMut()` returning `mut Array<T>&v` cannot be returned as a one-of-several / plain result etc. where a raw
  slice could — minor, consistent with the "not built" notes in §19.1.

# Soundness review: Vec phase 1 after its fix round (2d1aabf)

Read-only review of `wt-own` at 2d1aabf. It was built in `/home/user/wt/rvvec2` with `make -j3 build/out`.
Every finding below was built with that compiler and run three ways:

```
O=/home/user/wt/rvvec2/build/out
$O -b -d -s f.olang && ./build/NAME.debug.san   # scope sanitizer
$O -i f.olang                                    # interpreter: the reference answer
$O -b f.olang && ./build/NAME                    # optimized
```

"91ff37e" below means the previous review's compiler, `/home/user/wt/rvvec1/build/out`.

## Verdict

**Not safe to merge as is.** Two new use-after-frees, both accepted by the compiler and stopped by `-d -s`:

- **N1** is introduced by 2d1aabf itself.
- **N2** evades 2d1aabf's new "called by name only" rule, through an older gap.

N1 is a narrow fix. N2 needs one call added in one function. That function's gap also explains two older
use-after-frees (P1, P2), which the same call closes. Everything else in the attack list held.

## CONFIRMED

### N1 (new in 2d1aabf). A stale owned-object type through recursion

Repro: `repro/n1_recursion_stale_type.olang`.

```
type CB struct() {
    data own mut Array<Char>& = Array<Char>(2, 'a')
    text own mut String& = "bb"
}
fn a(c CB&, n I64) String&c {
    if n == 0 { return String(c.data) }   # marks a, type Array<Char>
    if n == 1 { return b(c, n - 1) }      # checks b now: b copies a's type, Array<Char>
    return c.text                          # a becomes anyType; b keeps Array<Char>
}
fn b(c CB&, n I64) String&c { return a(c, n) }
fn use(c mut CB&) {
    t := b(c, 2)                           # loan keyed Array<Char>; really borrows c.text (String)
    c.text = "zzzz..."                     # release of a String: not refused
    churn()
    println(t)
}
```

Results:

| Run | Output |
|---|---|
| `-d -s` | "use after scope closed", status 134 |
| `-i` | `bb` |
| `-b` | `bb` (silent) |

Compared:

- Calling `a(c, 2)` directly is refused (O39, "may release the Array<Char>", since `a` is anyType).
- 91ff37e refuses `rec2` too (it keyed the loan by the result type, `String`).

**Cause.** In `ownBorrowedOwnResult`, the call branch copies `g->ownBorrowResultType` / `ownBorrowResultAnyType` at
check time. A caller checked while the callee's body is still in progress gets the callee's state at that moment:

1. `a` is marked with type X at its first return.
2. `b` is checked through ensureBodyChecked from `a`'s second return, and copies X.
3. `a`'s later return makes it anyType, and `b` never learns of it.

**Fix direction.** Do not copy: resolve the type at loan time, in `ownResultRegionOf`, through the callee chain. Or
re-settle `ownBorrowResultType`/`AnyType` as a fixed point over calls in `settleOwnBorrows`. Or, simplest, take
anyType whenever the callee's body is still being checked (`bodyState != 2`).

The parameter index `ownBorrowResult` is copied the same way, and it is also last-writer-wins when two returns borrow
through two parameters. I could not turn that into a hole: the arguments that would have to be rooted apart carry
loans of their own, and the derivation through the call result catches them (`work/two1.olang`). It is fragile, though,
and the same fixed point would make it exact.

### N2 (new rule evaded; the gap is older). A borrowed own result made a value through an import alias

Repro: `repro/n2_crossmodule/`. Run `n2_crossmodule_fnvalue.olang` beside `vlib.olang`.

```
# vlib.olang
fn View2(v Vec<I64>&) Array<I64>&v { return v.View() }
# main
f := vlib.View2       # NOT refused - O37 by-name-only is never checked
d := f(w)             # no loan
for i in range 1000 { w.Push(i + 100) }
churn(); println($d[0] " " $d[1])
```

Results:

| Run | Output |
|---|---|
| `-d -s` | "use after scope closed", 134 |
| `-i` | `10 20` |
| `-b` | `10 20` (silent) |

The same function made a value inside its own module is refused (O37), as is `F mut fn(...) = View2` in vlib.

**Cause.** `tryBuildCrossModuleVarRead` (semantic.c ~15278) ends with `return OperandReadVar(v, varTok)`. For a
function it skips everything the bare-identifier path (~16795) does:

- `noteFuncValueUse`, which feeds T22a, O36, O37 and O40;
- the G12 generic check;
- the O36 `ownSignature` early return.

**Fix.** In `tryBuildCrossModuleVarRead`, when `v->isFuncDecl`, do what the identifier path does: the G12 check, then
`noteFuncValueUse(v, varTok)`, then the `ownSignature` placeholder. That one change also closes P1, P2 and P3.

### P1 (older than the own work, T22a). A function with a scope obligation made a value through an alias

Repro: `repro/p1_alias_t22a/` (`t22a.olang` + `olib.olang`). `f := olib.Stash` (`Stash(h mut Holder&, x Node&) {
h.N = x }`), then `f(h, n)` with `n` in the callee's block.

| Run | Output |
|---|---|
| `-d -s` | use after scope closed |
| `-i` | `42` |
| `-b` | `7233733596198549810` |

The direct call `olib.Stash(h, n)` is refused (O10c). Same cause as N2.

### P2 (older, own first cut, O40). A function releasing through a global made a value through an alias

Repro: `repro/p2_alias_o40/` (`o40.olang` + `glib.olang`). `f := glib.Drop` (`fn Drop() { G = Box() }`), then
`d := glib.G.Data; f(); use d`.

| Run | Output |
|---|---|
| `-d -s` | use after scope closed |
| `-i` | `9 9` |

The direct call is refused (O39). Same cause as N2.

### P3 (older, not a soundness bug). A generic function made a value through an alias crashes the compiler

Repro: `repro/p3_alias_generic_ice/`. `f := genlib.Id` gives "internal compiler error". G12 is skipped on the alias
path; the same fix covers it.

Also noted, not a demonstrated bug: owning-signature functions made values through an alias (`f := ownlib.Eat`,
`g := ownlib.Mk`) are accepted against O36. They ran correctly and agreed with `-i` in `work/mod/o36c.olang`.

## PLAUSIBLE

None beyond the fragility noted under N1.

## What held: the attack list, all refused or correct

Work files are in `work/`, generated cases in `work/b/`.

**Conversions** (all refused with O39 or O10, or correct as a copy):

- nested conversions (`Jx(Ix(...))`), a declared type over a declared type;
- `V2(view)` of a fixed declared array type;
- `as Array<I64, 2>&`;
- the implicit Char-to-U8 array flow and the String-to-Array<Char> flow;
- a conversion passed to a function keeping it;
- `d := Ix(view(w))`, which is correctly a copy (it survives growth and a churn under `-s`).

**Expression forms:** conditionals and matches of borrows, slices, for-in over the borrow, lambda captures, `defer`,
comprehensions, joins (`$view(w) $pushRet(w)`), iterators from the borrow, generic `id`/`id2` (type variable bound to
a reference), a struct/enum/`Pair` holding the borrow, an `Array<...>(n, fill)` and a literal of borrows,
`try`/`catch default`/checked slices of borrows, fallible borrowed own results, `RunFrom` directly, a `Slice` operator
returning a borrowed own result (plain, `try`, open-ended), and a user `RunFrom` walked by `for`.

**Returning loans out of an unmarked function:** the O38 return check refuses every wrapper tried - struct, enum,
lambda, tuple (D8c), element reference in place (`v.View()[0]` as `Pt&v`), mutual recursion (`rec1`).

**Tasks:** borrowed result given to a task, released while the task runs, a spawn target from one, a task that
pushes.

**Function-value evasions in one module**, all O37: default parameter value, global, `(view)(w)`, lambda with an
expected borrowed type (O14), generic `Call` (E12 / O39 through `g(w)`).

**O38 relaxation 3** (an element read is no loan): results that could reach the buffer through a fixed array inside a
by-value element (`Array<I64>&` slice of `a[0].a`, `Array<I64,3>&`), enum, struct or tuple results holding such a
slice. All keep the loan.

**O17 permute relaxation:** a second parameter sharing the region's scope variable (O25e), a function value building
into its argument's scope (`mk(x String&) String&x`), and a region local reassigned to a built value. All refused,
including lending `c.data` directly.

**Aliasing and roots:** two parameters naming one Vec (`grow(v, v)`), an own object reached through a plain
reference inside a region, and temporaries (`CB().Text()`, `mkVec().View()`). All refused or correct.

## Over-rejections (correct programs refused)

All are older than 2d1aabf, from Vec phase 1, unless noted.

1. **`Clone()` of any Vec whose elements are references** is refused with O10c, even `c := w.Clone()` on a local
   `Vec<String&>` or `Vec<N&>`. Repro: `repro/over/or1_clone_ref_elements.olang`. The prelude tests clone only
   `Vec<I64>`. This is the most visible one for ordinary code.
2. **`a := v.ToArray()` of a `Vec<String&>`** carries a loan on the buffer, so `v.Push` is refused while `a` is used.
   ToArray's documented point is independence. Repro: `repro/over/or2_toarray_text.olang`. `Vec<I64>` is fine.
3. **An element read through a view keeps the loan** (`e := v.View()[0]; v.Push(x); use e`), where `e := v[0]`
   does not. Repro: `repro/over/or3_view_element.olang`.
4. **A borrowed own result through two layers** (conversion then slice, or conversion then `as`) is refused with O10d.
   Repro: `repro/over/or4_nested_conversion_slice.olang`.
5. **One of several results** that is a borrowed own result is refused with O38. Repro: `repro/over/or5_tuple_part.olang`.
6. **Mutually recursive borrowed-own-result functions** are refused with O38 when the callee is unmarked at check time.
   Repro: `repro/over/or6_mutual_recursion.olang`.
7. A generic `Call` method is not adapted to a function type (E12). Not an own issue.

## Fuzz

Scope fuzzer, own mode (`fuzz.debug scope 200 201 2 12 own`, `OLANG=/home/user/wt/rvvec2/build/out`), run in
`/home/user/review/vec2/fuzz`. Result: **201 programs (seeds 200-400), 573 scenarios run, 1839 refused by the compiler, 0 findings** (`fuzz/fuzz200.log`).

The generator's `vecOp` does not write N1's shape (a recursion through two borrowed-own-result functions with
different object types) or N2's (an alias-qualified function value). That is why neither turns up there.

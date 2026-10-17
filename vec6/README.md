# Soundness review: Vec phase 2a (d5ddcda)

Read-only review of `wt-vecp2` at d5ddcda (9c3582d the code, 8e68603 the tests, 623d8f8/3c0b950/d5ddcda records and one
message). Built in `/home/user/wt/rvvec6` with `make build/out`; the base f743da5 (the fifth review's fixes, no Vec
fields) built from `git archive` in `base-f743da5/`. Done 2026-10-11 23:30 - 2026-10-12 01:30 CEST.

```
cd /home/user/review/vec6 && ./runall.sh        # every repro; output in runall.out
./run.sh FILE.olang                            # one program: d5ddcda -b -d -s, -i, -b; then whether f743da5 accepts it
./q.sh FILE.olang                              # compile only (accept/refuse)
```

## Verdict

**Not safe to merge as is.** One high-severity hole, new in this phase, gives a silent use-after-free in natural code:

| | Finding | Severity | New in 2a? | Repros |
|---|---|---|---|---|
| R1 | A Vec field of an OWNED object is taken to keep its elements' referents where the object's own slot's container does, not in the object's region - so `take p.lx.toks` moves words out of a region that is freed with `p.lx` | **high**: silent UAF, natural code (`return take p.lx.toks`) | yes (relaxations a/d/e) | 8 |
| D | A borrowed copy (or a reference to an owner value local) carries loans only 8 owning-value-struct levels deep | medium: silent UAF / crash, needs 8 nested levels | yes (relaxations a/c) | 2 |
| L1 | A borrowed copy's field holding an owning value is assignable (O32 checks only own-reference parts); what it is given is held to the function's end | low: memory and destructors held until the function returns, unbounded in a loop | yes (relaxations a/d) | 2 |
| x1 | `w String&v = String(v.View())` is a copy at run time and a view under `-i` | low: not memory safety | no (on f743da5 too) | 1 |

Everything else in the attack list held (below). The 51 repros of vec1-vec5 are all refused; 1,259 older review programs
show no regression; the scope fuzzer's own mode on seeds 1000-1300 found nothing - it writes none of these shapes.

R1 is one function (the reach of an owner value place). D is one constant. L1 is one check. Fix all three, add R1's
shapes to the fuzzer, and the phase can merge.

---

## CONFIRMED

### R1 (new in 2a). The reach of a Vec field of an owned object is its container's, not the object's region

Natural form, `repro/r1g_return_take_from_owned_local.olang`:

```
type Lexer struct() {
    toks Vec<String&> = Vec<String&>()
}
type Parser struct() {
    lx own mut Lexer& = null
}
fn words() Vec<String&> {
    p := Parser()
    p.lx = Lexer()
    for i in range 3 { p.lx.toks.Push($i "-word-built-in-the-lexer's-region") }
    return take p.lx.toks        # the words were built in p.lx's region, freed as p is released at the return
}
```

| Run | Output |
|---|---|
| `-b -d -s` | "use after scope closed", status 134 |
| `-i` | `0-word-built-in-the-lexer's-region` |
| `-b` | `2999abcdefghijklmnopqrstuvwxyz0123` (churn text, silent) |

f743da5 refuses all of these (no Vec field there).

**Cause.**

- `p.lx.toks.Push(x)`'s obligations bind its `v` to the exact scope of `p.lx.toks`, a field of an object in p.lx's region R. So the
  words are built **in R**, as an own object's parts are (and the sanitizer confirms: they die with R).
- `ownValuePlaceReach` (semantic.c ~9207) answers the reach of the place `p.lx.toks` through `ownReachOfBase(p.lx)`
  (~9267), which returns `R->regionReach`, where p keeps its references, **not R**. So `take p.lx.toks` is believed to
  refer only to p's block (or p's result scope, once O26a moves p).
- Every place of that reach then accepts the owner (`ownValueTakeReach`), and an owner moved into an own place holds no
  loan (C2d) - so nothing stops releasing R afterwards.

The own-array path already does this right: `ownBorrowRead`'s `isArr` branch takes the reach of an own array slot from
`RefExactScope` of the read, so `g.a.data = take h.a.data` (an own `Array<String&>` in an owned object) is refused with
O34's "the owner refers to what lives shorter than the slot" (`work/v11_take_own_array_str_between_owned.olang`). The
value-place path disagrees with it.

Variants, all: sanitizer stop, `-i` correct, `-b` churn text:

| Repro | Shape |
|---|---|
| `r1a_take_field_of_owned_object` | `d.lx.toks = take p.lx.toks; p.lx = null` |
| `r1b_take_via_local_into_own_place` | `m := take h.lx.toks` (its loan on the Lexer stops `h.lx = null` until...), then `g.lx.toks = take m`: moved into an own place, the loan goes |
| `r1c_take_struct_value_field_of_owned` | a struct holding the Vec, held by value in the owned object: `g.m.l = take h.m.l` |
| `r1d_globals_owned_objects` | two globals holding owned objects |
| `r1e_vec_tok_between_owned` | a `Vec<Tok>`, Tok holding its text (relaxation e) |
| `r1f_steal_result_into_own_place` | `fn steal(h mut H&) Vec<String&> { return take h.lx.toks }`, its result moved into another owned object |
| `r1g_return_take_from_owned_local` | the natural form above |
| `r1h_take_through_borrow_local` | `q := p.lx`, then `take q.toks` |

Refused, for comparison: the same into a local used past the release (`v15`-`v17`, the local's loan), into a global
(`v08`, program reach), between parameters (`v19`, `v23`, O38), and the whole owned object moved (`take h.lx`, runs clean:
`v07`).

**Fix.** In `ownValuePlaceReach`, a field of an instance in a region keeps its references in that region: answer R (or
`RefExactScope` of the field read, as `ownBorrowRead` does for an own array), not `R->regionReach`. Since R outlives
nothing, taking such a field out is then refused unless its type refers to nothing outside what it owns (`Vec<I64>` keeps
working through `ru = !ownRefersOut(...)`) or the target is in the same region. The way to hand the words out is to move
the whole owned object (`take p.lx`), which carries R with it.

### D (new in 2a). Loans stop 8 owning-value-struct levels down

`repro/d1_deep_borrowed_copy_no_loan.olang`:

```
type L0 struct() { toks Vec<I64> = Vec<I64>() }
type L1 struct() { x L0 = L0() }
...                                            # L2 .. L8, each holding the previous by value
fn main() ? {
    o := L8()
    for i in range 3 { o.x.x.x.x.x.x.x.x.toks.Push(i + 1) }
    c := o                                     # a borrowed copy - with no loan on the buffer 8 levels down
    for i in range 100 { o.x.x.x.x.x.x.x.x.toks.Push(i) }   # frees the buffer c still points at: accepted
    z := Vec<I64>()
    for i in range 5 { z.Push(777) }           # takes the freed block
    println($c.x.x.x.x.x.x.x.x.toks[0] " " $z.Len())
}
```

| Run | Output |
|---|---|
| `-b -d -s` | "use after scope closed", 134 |
| `-i` | `1 5` |
| `-b` | `777 5` (silent) |

At 7 levels it is refused (O39); 8, 9, 10, 12 are accepted, in either declaration order and through generic chains
(`work/a01_depth*`, `a19r_*`).

**Cause.** `ownOwnSlotReads` (semantic.c ~20261) stops at `depth > 8`. It collects both a borrowed copy's loans
(`ownCopyReads`) and an owner value local's `ownValueReads` - the loans a reference to the local's storage carries
(own5 F2). So the second repro, `d2_deep_owner_local_returned_by_reference.olang`, is own5's F2 again at depth 8:
`return o` through `mut L8&` (and a returned `Hold(o)`) is accepted, O26a moves o's storage, its owners are released at the
return, and the caller's read is a null read - a segfault (139) under `-b` and `-b -d -s`, `1 7` under `-i`, and the baked
global disagrees with the run time. At depth 2 both are O38/O26a's error.

**Fix.** Walk without a depth cap (a value type cannot contain itself by value, T16, so the walk ends), or with a
seen-set as `ownHeld` does. `typeIsOwningAt` has the same cap but did not bite: the `owning` flag set at resolution
answered first at every depth I tried (14).

### L1 (new in 2a). A borrowed copy's owning-value field may be assigned

`repro/l1_borrowed_copy_field_given_owner_leaks.olang`:

```
c := t                     # a borrowed copy of t (Two, holding a Lexer by value)
c.a = Lexer(7 + i)         # accepted; 'c.a.o = X(9)' and 'c = ...' are O32's errors
```

**What happens.** It is no owner value place (`OwnValuePlace` excludes copies), so nothing is released - no double
release, the source keeps its own. But what it gives the copy is held until the **function's** scope closes: in the repro,
`made 4 dropped 0` through every turn and at the end of `work()`, `made 4 dropped 4` after it returns.

**Effect.** In a loop in `main` (`l1b_...grows.olang`, measured at 100,000 and 800,000 turns) the process peaks at 0.86GB
and 6.9GB, about 8.6KB a turn. The same holds for a field-copy's part: `e := t.a; e.toks = Vec<I64>()`
(`work/n19_field_copy_part_assigned.olang`).

**Fix.** In `buildAssignCore`, report `ERR_OWN_COPY_PART` where `TypeIsOwnValue(target->type) && ownCopyPartOf(target)`,
as `buildOwnAssign` does for an own-reference part.

### x1 (older, on f743da5 too; not memory safety). A conversion of a view is a copy at run time

`repro/x1_older_conversion_of_view_copied_at_run_time.olang`:

```
w String&v = String(v.View())
v[0] = 'z'
println(w)
```

This prints `aa` built and `za` under `-i`. T29a says a conversion names its argument's storage, so `-i` is right. The
plain-array form (`t String& = String(a)`) agrees (`za`) in both. Found re-running vec1's `work/a9.olang`.

## PLAUSIBLE

None beyond the above.

A side observation, older and outside own (QF's class): `G.lx = Named(7)` for a global struct, `Named` holding a
`String&` field with a text default, grows the program's scope by about 8 bytes an assignment. This is on f743da5 too,
without any Vec (`work/nv_global_field_text_growth.olang`; 7.0MB over 800,000 assignments on both compilers).

## What held

Every program below is in `work/`. "Refused" means the right O39/O38/O34/C2d/O10c/T25c error; "clean" means it is
accepted and gives the same output built, built `-d -s`, and interpreted.

### a/c/d - owning struct fields

All refused:

- a borrow of a field's Vec across a release through another path:
  - a reference to the struct (`a02`, `a03`, `a03b`);
  - aliasing parameters (`a04`, `a04b`);
  - an array of references (`a05`);
  - a global aliasing a parameter (`a06`, `a06b`);
  - a method or callee given the struct (`a11`, `a13`);
  - a reference local (`a14`);
- `take` of a field while a borrow of its sibling or parent is live (`a07`, `a07b`, `a09`);
- assignment into the parent (`a08`, `a10`);
- a copy of a copy (`a12`);
- a copy kept by a lambda, an enum payload or a List (`a15`, `a17`, `a18`);
- returning a copy or a reference to it (`a16`, `r02`);
- a typed copy (`a01b`);
- copies by value through generics, D8c results, enum payloads, tasks and parameters (O31: `o02`, `o07`-`o10`, `sp05`);
- a field moved out without `take` - returned (`r01`, `r03`-`r06`) or chosen by a conditional (`r07`, `m04`);
- the target's container released or moved by the value expression (`o01`, `o04`-`o06`);
- a spawn target that owns (`sp01`-`sp04`, O41);
- `take` and assignment through read-only paths (`n05`-`n08`).

Clean:

- constructors failing half-way with Vec fields built (`c01`, `c02`; flat memory over 800,000 failures);
- `defer`, `done` and a failing assert in tests with owning fields (`t01`, `t02`: made 11 dropped 11);
- owners given to fields of instances reached through references, in loops, through globals and O26a
  (`h01`-`h05`, `h08`, `h10`, `h11`);
- flat memory for arena instances holding Vecs, own slots replaced and owner locals taken from (`l01b`, `l02_p1`);
- copies that die before their source (`m01`, `m02`).

### b - Vec globals

All refused:

- a release through a function value, a lambda, a `Call` adapter, a destructor, `Str`, `Eq`, `Hash`, a sort comparator
  or a fold (O40: `g01`-`g05`, `g07`, `g30`, `g32`-`g34`);
- a release through a task (O41: `g06`, `p01`-`p05`);
- a release through a trait-constrained generic (`g31`);
- `take` of the global and a call that takes or assigns it (`g08`-`g11`);
- a global initializer (`g12`);
- deferred code (`g13`).

Clean: global references to owning structs, globals built by functions, `take` chains between globals (`g20`-`g23`).

### e/f/g - elements holding references

All refused:

- text from another own buffer (`e01`);
- a loop turn's text stored through `ViewMut`, a field store, a function, E31b write-back or a method on an element
  (`f01`-`f03`, `f11`-`f14`, `u01`-`u05`);
- an element's text kept past its Vec's block, by a copy, a view, `for`, `TakeAt` or `SwapTake` (`f04`-`f10`);
- elements of a Vec inside an owned object kept past the object (`e08`, `e09`, `q01`-`q07`);
- a loop text into an owned object's Vec (`v01`-`v03`, `v05`).

Clean: text built where the Vec is - in a block, a global, a parameter's field, a constructor, a method, `SetAt`,
`Insert`, `Sort`, `Clone`, a returned struct, O26a (`e02`-`e07b`, `e10`-`e18`, `s01`-`s03`, `s08`-`s12`, `v04`).

The representation argument (`ownSameReferent`): I looked for two types of one storage that it would call apart. Every
way olang makes one storage of another type is covered:

- conversions to declared array types and to String/U8;
- `as Array<T, N>&`;
- declared numbers' arrays (T29h);
- slices of inline arrays in struct or enum elements (caught by `ownIsPartOf`, or a copy: `w01`, `w02`);
- inline arrays of inline arrays.

### h - ownCallConfined

All refused (`k01`-`k08`, `k10`): a view kept by a callee in

- an enum payload in a List;
- a Pair field;
- a Map;
- an inline `Array<Array<I64>&, 2>`;
- an `extends Array<...>` type;
- a struct reference;
- a generic `Bx<Array<I64>&>`;
- a String conversion;
- a closure.

`k09` (`String&` into `Array<U8>&`) is accepted and copies, clean.

### i - deep borrowed own results

All refused (`i02`-`i23`):

- through a slice, a conversion, text, two calls, mutual recursion, a conditional, a match, D8c results, a spawn target,
  a generic, a function value or a callback;
- releasing the holder, the leaf or the name.

The LOCAL/PARAM root exclusion could not be broken through a deep result (`i30`-`i32`): exactness (O25) keeps a
parameter's object out of an owner local's tree.

### j, k, l

- **j**: two `by` loans merged keep a `by` whose only use is its owner (`by->ownValueBorrow`), which is the same for
  both. Nothing is lost.
- **k**: D13c refuses `Array<Q>(n)` for any Q whose zero value holds a reference, static text included (`z01`-`z03`), so
  a zero fill refers nowhere.
- **l**: the seen-set is per path and checked after the reference test, and a recursive enum without a canonical type
  falls back to the depth limit (conservative).

### Regressions

- **vec1-vec5 repros**: 51 programs, all refused (`oldrepro/accept.txt`).
- **Every program in the older review directories**: vec1-vec5 and own1-own5/own7 (own6's generated programs left out),
  1,259 programs, built `-b -d -s`, run, and compared with `-i` (`regress.sh`, `oldrepro/regress.out`):
  - 1,046 refused;
  - 106 the same;
  - 107 differ only where `-i` refuses a destructor (stage 1) or a 4M-turn loop timed out;
  - one real difference, vec1's `a9.olang` (x1);
  - **0 sanitizer reports**.

## Fuzz

The scope fuzzer in own mode on fresh seeds 1000-1300, built from the worktree's `fuzz/*.olang` (`fuzz/`):

```
cd fuzz && OLANG=/home/user/wt/rvvec6/build/out ./build/fuzz.debug scope 1000 301 2 12 own
```

Result: **301 programs, 867 scenarios run, 2745 refused, 0 findings** (`fuzz/fuzz1000.log`).

The generator writes none of R1, D or L1. Shapes worth adding:

- a Vec field of an owned object moved out (`take p.lx.toks`) to another owned object or returned;
- 8 or more nested owning value structs with a borrowed copy;
- an assignment to a borrowed copy's owning field.

## Over-rejections (secondary)

1. A struct holding a Vec cannot move from a local back into a global (`c05`: `l := take GL; ...; GL = take l`, O34's
   "refers to what lives shorter"), where the same with a bare `Vec<I64>` global works (`c06`). The cause is
   `ownRefersOut`, which takes a Vec field to refer out (`typeCarriesScopes(Vec<I64>)`) instead of recursing into it as
   it does for own fields.
2. `w := take l.toks; return w` is refused (`s04`), while `return take l.toks` is accepted (`e18`). Likewise
   `l.toks = take v; return l` (`s06`) against `l.toks.Push(...); return l` (`s03`). O26a does not follow a `take`.
3. Older: a deep or direct borrowed result reading a plain text field inside the owned object (`x.First().deep.text`,
   `x.deep.text`) is O10 (`i21`-`i23`).
4. Diagnostic: a destructor that pushes to a global Vec gets its O40 error at `std/prelude/vec.olang:31`, inside Push,
   not at the user's call (`g03`). B11 reports library errors at the program's use.

## Files

| Path | What it holds |
|---|---|
| `repro/` | the confirmed findings (`r1*`, `d1`, `d2`, `l1`, `l1b`, `x1`) |
| `runall.out` | the last full run |
| `work/` | every attack, held or not (`*.inc` are pasted helpers) |
| `oldrepro/` | the regression runs |
| `diff-core.patch` | the phase's checker and codegen diff |
| `base-f743da5/build/out` | the comparison compiler |
| `fuzz/build/fuzz.debug` | the fuzzer |

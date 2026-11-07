# Soundness review: Vec phase 1 after its second fix round (280ef76)

Read-only review of `wt-own` at 280ef76 (cfc5da3, 8e3ddc1, 280ef76), built in `/home/user/wt/rvvec3` with
`make -j3 build/out`. Done 2026-10-11, around 18:00 CEST.

Every CONFIRMED finding is a program the compiler accepts that reads freed memory. Each was run three ways, and the
older compilers were asked whether they accept it:

```
cd /home/user/review/vec3 && ./runall.sh [NAME.olang ...]   # all repros; output in runall.out, binaries in runs/build
# per repro: 280ef76 -b -d -s (scope sanitizer), -i (reference answer), -b; then accept/refuse on
# 2d1aabf (/home/user/wt/rvvec2), 91ff37e (/home/user/wt/rvvec1), 3a4f5e8 (master, built in base/ from git archive)
```

Each repro churns the arena between the release and the read.

## Verdict

**Not safe to merge.** There are four use-after-free causes, all CONFIRMED.

| | Finding | Introduced in | Repros |
|---|---|---|---|
| F1 | A "built" result laundering its argument | this round: cfc5da3's relaxation (b), not covered by 8e3ddc1 | 4 |
| F3 | A spawn target set from a borrowed own result | Vec phase 1 (a6fbc53) | 3 |
| F2 | A marked function with a return that is not a recorded source | 2d1aabf | 5 |
| F4 | A borrow of a global's own object kept in a global | already on master 3a4f5e8 | 5 |

- **F1** is new in this round, so relaxation (b) as built is unsound.
- **F2 and F3** exist only on `wt-own`. Merging would bring them to master.
- **F4** is older than the Vec work and is already on master. It needs a fix of its own.

N2's function-value path held against every route tried (see "What held"). N1's settle held, except where F2 shows a
gap in the O38 return check it relies on.

---

## CONFIRMED

### F1 (new in cfc5da3, relaxation b). A written built result that hands back its argument keeps no loan

Repro: `repro/f1_built_result_pick.olang`. This is natural code: a helper that picks one of two buffers.

```
fn pick(c Bool, x <T>, y T) T { return x if c else y }
fn longer(a mut Array<I64>&, b mut Array<I64>&) mut Array<I64>& { return pick(a.Len() >= b.Len(), a, b) }
...
d := longer(v.ViewMut(), other)   # v's own buffer - and no loan on it
for i in range 1000 { v.Push(i) } # frees the buffer: NOT refused
println($d[0] " " $d[1])
```

Results:

| Run | Output |
|---|---|
| `-b -d -s` | "use after scope closed", status 134 |
| `-i` | `10 20` |
| `-b` | `10 20` (silent) |

2d1aabf and 91ff37e refuse it with O39.

Variants:

- `f1b_built_result_id.olang`: `return id(a)`.
- `f1c_built_result_list.olang`: the argument pushed into a local `List` and returned as `l[0]`.
- `f1d_built_result_map.olang`: `Put`, then `Get`.

All are UAFs in the same way. A local holding `id(a)`, or a slice of it (`id(a)[0:2]`), also works (`work/k5`, `work/k9`).

**Cause.** `ownResultBuilt` (semantic.c ~27349) takes a result *written* `T&` or `T&return` for new storage, and
`ownLoansIn` (~27512) then clears the result's top before the type walk. "Built" says only which scope the result is
in, not that it is fresh. The checker accepts a built result that is existing storage whenever it reaches the result
scope through a call whose result lands there. That happens through any type-variable result (O14b): `id`, `pick`,
`List.At`, `Map.Get`. O14 then records an obligation ("a outlives the result scope"), not an error. 8e3ddc1 excluded only
a keeper that is itself `resultViaTypeVar`; a non-generic wrapper hides it.

Inside the wrapper nothing is own, so the wrapper's own O38 return check sees no loan. At the caller, the buffer's loan
is "spared". Only own arrays are affected: sparing needs every loan to be `regionArray`, so a view of a Vec or a view
of an own array field.

What does not launder, because the type walk catches it: a result holding the view in a field, a payload, a function
value, or an element (`work/lb1`, `work/lb2`, vec29). A direct `return a`, `a[0:2]` or `r := a; return r` is O14
(`work/k7`, `k8`, `k15`).

**Fix direction.** Spare the top only for a keeper whose returns are provably fresh: a constructor call, an allocation
or a literal, or a local whose every write is one, decided as a fixed point over bodies. ToArray qualifies. A
built-result function with any obligation tying a parameter's scope to the result scope does not. Otherwise, revert the
top clearance (vec2's over-rejection 2 comes back).

### F3 (older: Vec phase 1, a6fbc53). A spawn target set from a task's borrowed own result

Repro: `repro/f3_spawn_target_view.olang`. A plain `d = w.View()` is refused (O38, O39, `work/asg1`); the spawn
form is not.

```
d Array<I64>&w = null
join { spawn d = w.View() }
for i in range 1000 { w.Push(i + 100) }   # NOT refused
println($d[0] " " $d[1])
```

Results:

| Run | Output |
|---|---|
| `-b -d -s` | "use after scope closed", status 134 |
| `-i` | `10 20` |
| `-b` | `10 20` |

2d1aabf and 91ff37e accept it too. Variants:

- `f3b_spawn_target_struct.olang`: a struct's borrowed own result, `spawn d = c.Text()`.
- `f3c_alias/`: through an import alias chain, `spawn d = mid.Vl.View2(w)`.

**Cause.** In `ownStmtWalk`'s `STATEMENT_SPAWN` case (~28527), the check for a target given what only locals may hold
collects `ownCarried` of the call's **arguments** only. The call's own borrowed-own-result loan (`ownResultRegionsOf`
on the call operand) is never looked at. Here the argument `w` is a parameter carrying no loan.

**Fix.** Collect `ownCarried(call)`, the whole call, as `return` and assignment do.

### F2 (older: 2d1aabf). A marked function whose other return is not a recorded source

Repro: `repro/f2c_mixed_returns_local.olang`.

```
type CB struct() {
    data own mut Array<Char>& = Array<Char>(2, 'a')
    text own mut String& = "bb"
}
fn (c CB&) Text() String&c { return c.text }
fn (c CB&) Pick(raw Bool) String&c {
    if raw { return String(c.data) }   # recorded: borrows an Array<Char> below c
    t := c.Text()                      # a local holding a borrowed own result (a String): not recorded
    return t
}
fn use(c mut CB&) {
    t := c.Pick(false)                 # loan on Array<Char> below c only
    c.text = "zzzz..."                 # releases a String: NOT refused
    churn(); println(t)
}
```

Results:

| Run | Output |
|---|---|
| `-d -s` | "use after scope closed", 134 |
| `-i` | `bb` |
| `-b` | `bb` |

91ff37e refuses it, because it keyed the loan by the result type, `String`. 2d1aabf accepts it. So vec1 F1's fix
introduced this, and vec2 did not catch it.

Variants: the unrecorded return can be:

- a pass-through: `return h(c).Trim()` (`f2_mixed_returns_trim`);
- a conditional (`f2b`);
- a generic `id(h(c))` (`f2d`);
- a match (`work/m1b`);
- in one single return, a `catch default` beside a recorded `try` call: `return try c.Raw(n) catch default c.Text()`
  (`f2e`).

It needs an owning struct with own fields of two types, such as a title and a buffer. With Vec alone it cannot happen,
since a Vec owns only `Array<T>`.

**Cause.** `ownBorrowedOwnResult` (~24060) records a source only for an own-slot region, a call by name, or a
conversion, slice or view of either. The O38 return check (~28578) then skips **every** `regionOfResult` loan rooted
at a parameter in `ownBorrowParams`, whatever its object's type. The function's settled type comes only from the
recorded sources, so the skipped loan's type, `String` here, is lost, and callers key their loan by `Array<Char>`.
This is the claim "an unmarked function's loan-carrying return is O38's error" failing for a *marked* function: the
skip assumes every loan it skips was recorded.

**Fix.** At the skip, require the loan's object type to be covered: the function is any-type, or `l->R->regionType`
equals its settled type and the loan is not any-type. Otherwise keep the loan, so the return is refused. Or record a
source per loan the return carries.

### F4 (older: already on master 3a4f5e8). A borrow of a global's own object kept in a global

Repro: `repro/f4_global_holds_borrow.olang`. It is natural: a "current" pointer into a global document.

```
type Doc struct() { title own mut String& = "bb" }
Docs own mut Doc& = Doc()
Current mut String& = "none"
fn remember() { Current = Docs.title }
fn rename() { Docs.title = "zzzz..." }
fn main() ? { remember(); rename(); churn(); println(Current) }
```

`-d -s` gives "use after scope closed", 134. `-i` and `-b` print `bb`. All four compilers accept it.

Variants:

- `f4b`: in a global's initializer, `T := G.text`. `-i` prints the new text there and `-b` the old, so they disagree.
- `f4c`: a global initialized with a borrowed own result, `T := G.Text()`.
- `f4d`: a slice of a global own array, `Head = Buf[0:2]` then `Buf = ...`.
- `f4e`: stored into a field of another global object.

A local holding the same borrow is refused (O39, `work/g5`). A `List` holding it is O10c (`work/g12`, `g13`). A local
own's borrow stored in a global is O1b (`work/g6`).

**Cause.** `storageInProgram` (~24382) answers "true" for a member, index or slice of anything rooted at a global,
including an own slot read, whose referent lives in a region that can be released at any time. A borrowed own result
of one is answered through `SemanticBindingIsUnnamed`. So O1b, at both the assignment (~21024) and the declaration
(~20241), lets it into the program's scope.

The O38 store check (`ownHoldMore`) refuses only "copied" loans, and a direct slot borrow has none. A global's
initializer is walked as an expression statement, never confined.

**Fix.** In `storageInProgram`, an operand with an own region (`op->ownRegion`, `ownArrayRegionOf`), or a borrowed own
result's call, is not in the program's scope. Walk global initializers as declarations for O38.

## PLAUSIBLE

None. Everything traced was either reproduced or held.

## What held (refused, or correct at run time)

Work files are in `work/`.

**N1, the settled borrowed own results:**

- mutual recursion and stale types (vec21, vec23);
- defaults (`d1`);
- an owning parameter (`op1`, `op2`);
- a B9c re-check attempt (`b9c`);
- a derived `&c` field (`o1`, `o1b`: over-rejected, see below);
- constructor fields holding one (`w1`, `w2`);
- a trait default (cannot be expressed, see below);
- lambdas typed from an expected `fn(x) T&x`, which cannot take a borrowed result (`l1`-`l4`);
- one of several results (still O38);
- a try default with a matching type (`m1e`);
- release through a borrowed own result's own slots (`r1`, `r2`).

**N2, function values.** Each of these is O37, all through `mid.Vl.*`, a re-exported alias two deep (`work/mod/x*`):

- a local;
- a global initializer;
- a parameter default;
- a struct field default;
- an argument to a generic;
- a parenthesized alias;
- a conditional of two functions;
- a `Call` adapter from a library type, passed to the library's own `Apply` and to a local generic (`x6`, `x6b`);
- a Call adapter in a conditional or as a default (`ca1`-`ca3`).

The only muted fit paths (D8a's second default build, the for-in catch clauses' second build) also have an unmuted
build, which notes the use.

**Relaxation (a), Clone.** Its `ownMayReferTo` own-reference skip is sound as far as I could take it:

- a borrowed copy returned as an owned result is O34 or T25c (`c1`, `c2`);
- `take v` through a reference is E34 (`c5`);
- the skip still walks what the owned object holds.

**Relaxation (b), apart from F1.** The type walk keeps the loan for a result holding the view in a struct field, an
enum payload, a function value, an element, a `List`/`Pair`, or a declared array type, and through conversions
(`b1`-`b8`, `lb1`, `lb2`, `vec29`).

**Holders:** `defer`, an enum value, an array literal, and a comprehension (E27) holding a view (`h5`, `h6`, `cm1`,
`cm2`).

## Fuzz

The scope fuzzer in own mode, seeds 400-600, ran in `fuzz/`: `fuzz.debug scope 400 201 2 12 own`, with
`OLANG=/home/user/wt/rvvec3/build/out`.

Result: **201 programs, 582 scenarios run, 1830 refused, 0 findings** (`fuzz/fuzz400.log`).

The generator writes none of F1-F4's shapes:

- no wrapper with a built result over a generic;
- no spawn target from a View;
- no owning struct with two own field types and a mixed return;
- no global own object borrowed into a global.

## Over-rejections (correct programs refused; secondary)

1. A trait method cannot declare a result borrowed from its receiver, so a borrowed-own-result method never meets a
   trait (G19, "another signature"). Repro: `repro/over/or1_trait_borrowed_result.olang`.
2. A borrowed own result reached through a struct parameter's `&c` field (`return w.r.Text()`) is O38 at the callee.
   The field read is rooted ANY, so the function is never marked. Repro:
   `repro/over/or2_derived_field_borrowed_result.olang`.
3. Still standing from vec2: or3 (an element read through a view keeps the loan), or4 (a conversion, then a slice, is
   O10d), and or5 (one of several results is O38). vec2's or1 and or2 now compile. or6 is now refused at the caller
   with O39, which is right: that program reads freed memory.
4. Not over-rejections, but inconsistent with F4: a `List` keeping a global's own borrow is O10c (`work/g12`, `g13`),
   while the same borrow stored in a global is accepted.

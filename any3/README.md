# Third review: the second `any` fix round, wt-any f29a774 -> 5d0529f

Read-only soundness review of `git diff 1828477 5d0529f` (the any work after merging master as 1828477).

**Compilers.** `/home/user/wt/rvany3/build/olang` is bootstrapped from 5d0529f. `/home/user/wt/rvany3-old/build/olang` is
bootstrapped from f29a774, to tell new findings from older ones. Both worktrees are removed now; to run a reproducer,
bootstrap a compiler and pass it.

**How to run.** `./run.sh NAME OLANG` joins `repro/NAME.olang` with `common.inc` (`say`, and a `churn` that works the
arena). It then runs the result three ways: built with `-debug -sanitize`, built plainly (-O3), and interpreted. The output
goes to `repro/NAME.out`. `./runold.sh NAME OLANG` does the same into `repro/NAME.f29a774.out`. The directories
`repro/t01_library`, `t02_tests`, `t03_reusecall` and `m04_xmod` have a `repro.sh OLANG` of their own.

**Tags.** "New" means f29a774 behaves correctly. "Older" means f29a774 does the same thing.

## Findings, most serious first

### 1. CONFIRMED use-after-free (older; the round's predicate keeps it): a call's array result put elsewhere by a scope argument is held in the box as new

`Scoper.anyItemNew` treats every call whose result is an array value as new storage built where the any lands:
`case Call(_, ty, _) { return s.isFresh(x) or s.arenaValue(ty) }`. But a written scope argument (E25, `mk&t(i)`) builds
the result where `t` lives. `s.call` knows this: it sets `beta[rv] = whereLives(x)` and returns `fresh(beta[rv])`. The box
is built where the any lands, and lowering, following `Plan.AnyNew`, does not copy the array.

The scope pass's Promote case then judges nothing about where the item's storage is. It fits only items that hold
references (`s.holds(pr.X.Type())`), and a `String` holds none.

- `c04_scopearg`: `l.Push(Lab(mk&t(i)))` with `t` a local of the loop body and `l` outside it.
  - `-sanitize` reports "use after scope closed" (exit 134).
  - -O3 prints garbage: `lab 2-1t2-1`.
  - interpret reports "uses storage after the scope it was made in closed".
- `c04b_scopeargkinds` hits each shape `anyItemNew` accepts as new, each one alone UAF under `-sanitize`:
  - a plain `String` with no conversion (`xs.Push(mk&t(i))`);
  - a conditional's arm;
  - a `try`'s value;
  - a `catch default`;
  - a generic call (`mkg&t(1, i)`).
- `c04l_scopeargreturnmark`: `&return` as well. `stash(l, i)` pushes `Lab(mk&return(i))` into the caller's outer list.
  The array goes in the callee's result scope, which is where `r := stash(l, i)` lands: the caller's loop body.
- On f29a774 the same programs fail the same way: its syntactic `anyCopiesItem` also took a call as new.
- Not affected, for comparison:
  - The same call pushed into a `List<String&>` without an any is fine (`c04f`): the String temporary is copied there.
  - A scope argument on a fill or on a conversion is fine (`c15`).

**Suggested fix:** a call is new for the box only when its result lands where the box does: no written scope
argument (`&x` or `&return`), or one naming the box's own scope. Better still, use the item's `Val` from `s.val` (fresh *at d*) instead
of a second syntactic predicate.

### 2. CONFIRMED use-after-free (older, general §8, not the any work): a call's built reference result put elsewhere by a scope argument is never judged where it is used

A call with a scope argument that gives a built reference (`fn mkp(i I64) P& { return P(i) }`, called `mkp&t(i)`) is
taken for a temporary built where it lands, wherever such a temporary may stand. The result really lives where `t`
does. Each of these is accepted:

| reproducer | what it does |
|---|---|
| `c04i_scopeargfield` | `h.p = mkp&t(i)`, with `h` outside the loop |
| `c04g_scopeargbuilt` | `xs.Push(mkp&t(i))`, with the list outside the loop |
| `c04j_scopeargreturn` | `return mkp&t(...)` with `t` a local of the function: a reference into the dying frame |
| `c04k_scopeargtextref` | the same with a built `String&`, as a field store and a Push |
| `c04c_scopeargstruct` | the any of such a call: `xs.Push(mkp&t(i))` into a `List<any Sh&>` |
| `c04m_scopeargreturnstore` | `&return`: `h.p = mkp&return(...)` in a callee whose result lands in the caller's loop body, `h` outside it |

Each one runs as UAF under `-sanitize` (exit 134), prints garbage at -O3 (`p12400`, `3616707591442622822`), and is
reported by interpret.

The spelled-out form `x := mkp&t(i); h.p = x` is refused (O25h), so the check exists. It is skipped only when the
call itself stands where a temporary would. The same holds on f29a774. Neither fuzzer writes scope arguments, which
is why this was never found.

### 3. CONFIRMED evaluator/run-time disagreement (new): K2 and S18c copy the box, the run time does not

**Older root (`c03`):** a call's array result is not always new storage. O26a moves a returned local into the result
scope, and T7b returns such a local uncopied (`lower.retCopies`: `Home == resultScope`). If the callee also stored a
borrow of that local, the "new" result has a second name:

- a field: `k.s = s; return s`;
- a log: `log.Push(s); return s` (`c03d`, an ordinary shape).

The caller's value `x := f(h)` then aliases `h.s`. This was already true on f29a774, and the outputs agree in all
three modes. T32a's box, which counts "a call's array result" as new, inherits the alias: a `mut any` made of
`Lab(f(h2, 2))` writes `h2.s`.

**New in this round:** while compiling, evaluation runs MIR lowered without the scope pass's plan (interp.olang:
"while compiling nothing is placed"). With no plan, `lower.anyItemNew` is false and the box copies. At run time the plan
says new and the box does not copy. On f29a774 the decision was one syntactic predicate, applied identically in both
places, so the two always agreed. Now they disagree wherever `anyItemNew`'s claim is wrong:

- `c03b_retsharedbake`: the immutable global `G = probe()` is baked as `Qbc1 abc2`. The same `probe()` at run time
  gives `Qbc1 Zbc2`. Interpret's G, computed at startup with the plan, is `Zbc2`. On f29a774 every value is `Zbc2`.
- `c03c_retsharedassert`: `assert probe() == "abc2"` is decided true while compiling and dropped. At run time
  `probe()` is `"Zbc2"`, and the next line's `assert r == "abc2"` fails. On f29a774 the first assert was a compile
  error ("this assertion is false, evaluated while compiling"), which matches the run time.

The fix report's "interpret always copies" is not what happens. Interpret follows the plan (here it aliases, as the
build does); it is the compile-time evaluator that always copies. Fixing finding 1, or making `anyItemNew` sound for
c03's shape, removes the disagreement. Otherwise the evaluator needs the same answer, or the decision has to stay
syntactic.

### 4. CONFIRMED gap (older root; the new AnyNoCopy predicate is incomplete): a default keeping its receiver in a List

`defaultCopiesRecv` refuses a default whose result holds the receiver's variable by value, using `HoldsVarByValue`.
That walk stops at a reference. So a result held through a reference field, like `List<G>` (whose state is
`s mut listState<T>&`), a `Map` or a `Vec`, is let through.

`a02`/`a04`: `fn (g mut G&) Twice<G Gen>() List<G>& { l.Push(g); l.Push(g); return l }`, called on a `mut any Gen&`,
compiles to a `List<any Gen>`. That is an any without its marker, which T32 says cannot be written. Using it then gives:

- `x.Step()` on an element: "expected any Gen&, found any Gen" (`a02`).
- `$l` or `==`: internal errors "the self-hosted compiler cannot build this yet: it does not emit a type with no
  layout: any ...:Gen" (`a04`).
- Interpret prints the length, then "calls a function whose body is not available".

Same on f29a774. This is the second review's 2.6 (the marker lost when `I` binds to an any) reached by a path the
refusal misses. It is a refusal or an internal error, never a miscompile. `a03` shows that lifetimes are still
judged: O10c refuses keeping such a list past the any's instance.

### 5. CONFIRMED over-rejection (older): "declares Eq" is asked of the generic declaration, not the instance

`generic.ownMethod` and `declaresEq` look up `methods[(receiver key, name)]`, and the key is the generic type. So
`fn (b Box<I64>&) Eq(...)` makes every instance "declare Eq". In `m08_ownmethod`, `Box<Bool>` declares neither Eq nor
Hash, yet `Map<Box<Bool>, I64>` is refused: G19/E10b "it has no Hash". Meanwhile `Box<Bool>(true).Hash()` compiles and
runs, through the supplied Hash.

M21 now makes per-instance protocol methods normal, so `hasHash`/`meets` should ask `MethodOf` (instance-exact) here.
Same on f29a774.

### 6. CONFIRMED diagnostic (new shape): an unknown generic in a receiver makes a spurious "declared twice"

`typesOverlap` treats `Unknown` as overlapping everything. In `m05_unknowncascade`, a misspelt
`fn (b Box<Tow<I64, I64>>&) Describe()` gives "unknown type 'Tow'" and then `error[M21]: 'Describe' is declared twice
for Box<I64>` at the correct `fn (b Box<I64>&) Describe()`. f29a774 had a different cascade at the same spot: "Box<I64>
has no method 'Describe'" at the call.

### 7. CONFIRMED crash and invalid IR (older, outside the any work): converting an array of arrays held by value

The inner arrays of `Array<Array<I64>>(2, Array<I64>(2, 5))` are inline, because their length is known (T7a).
`Grid(a)`, with `type Grid extends Array<Array<I64>>`, names that storage (T29a) but reads each element as a
run-time-length `{len, ptr}` pair:

- `x01_nestedconv`: segfaults at -O3 and under `-debug -sanitize`.
- `x01b_nestedconvfill`: converting the fill directly emits invalid IR ("'%t9' defined with type '[2 x i64]' but expected
  '{ i64, ptr }'"). Interpret says "a value compile-time evaluation does not model".
- Without the conversion, the same arrays work, through an any too (`c19`).

### 8. CONFIRMED internal gap (older, outside the any work): a value match with only a `nomatch` is typed unknown, silently

The differential fuzzer found this (seed 9639, `fuzzfound/9639`). `x := match x0 { nomatch => I8(x0) }` gets no type
error, but its type is unknown, so lowering stops: "the self-hosted compiler cannot build this yet: ... does not lower
an unknown type (a check error or gap)". Interpret says "calls a function whose body is not available". Reproducer:
`x02_nomatchonly`. f29a774 does the same.

### 9. Fuzzer drift (older): the differential generator writes an index that E16 rejects

`gen.olang`'s `checked x[...]` index can be the U64 literal `18446744073709551615`, but "a literal index is an I64"
(E16, `T6` error). The seed is then reported as "does not compile at -d (step 1)" (`fuzzfound/9031`, line 1580 of its
`p.olang`). This is generator drift, not a compiler finding.

## Held: no finding

- **anyItemNew, apart from 1 and 3.** Every one of these is copied, or held as it is only where that is truly new
  storage. Each is written through a `mut any` and its source read back, or kept past its block and read after a churn,
  with all three modes agreeing:
  - calls returning borrowed results, generic identity calls, a by-value generic parameter and a by-value receiver
    returned converted (`c01`, `c17`);
  - text literals, joins of constants, array literals, fills and comprehensions, in loops and returned, against the
    stack and the arena (`c02`, `c06`, `c10`);
  - constant data in a conditional, a match or a catch default (`c16`);
  - calls in a conditional's, a match's or a try's values (`c11`);
  - function values and capturing lambdas (`c05`), and generic instances (`c12`);
  - array literals of anys (`c07`), parameter defaults (`c14`), task arguments (`c13`, TSan clean under `-race`);
  - match bindings, for-in elements, `as` payloads, parameters, globals, captures, a call's field or element (`c08`);
  - a catch default of a struct value, a temporary that is copied (`c20`).
  - **Plan/lowering agreement:** lowering consults `AnyNew` only in `anyMake`, and a site with no entry copies. The
    decision is syntactic in effect (`arenaValue` decides every call), so no fixed-point iteration can leave a stale
    entry.
- **M21.** One method each, chosen alike in every path - an exact receiver beating a variable one:
  - paths: direct calls, a generic function, the generic type's own method, a trait-constrained generic, a trait's
    default, an any's table (`m02`);
  - a table made in generic code (`m06`), across modules, with a third module's generic and generic type (`m04_xmod`);
  - instance-specific `Eq`, `Hash`, `Str` and `Plus` (`m07`), each baked and at run time.
  - A writable-reference instance's method is not taken for a read-only one (`m01`).
  - Differing result types are reported per instance (`m03`).
- **Thunk homing.** No `unreachable` is reached and no slot symbol is missing:
  - the second review's `n07_stale` now prints `count 3` on reuse;
  - defaults called from a reused non-root module (`t03`, both orders);
  - two roots tested in one invocation, a `compile` of the module, and `-debug -sanitize` test builds (`t02`);
  - a `-library` build called from C, with defaults through anys made in it and in an imported module (`t01`). Only
    the export fns are dynamic symbols.
  - Slots are `dso_local` definitions in the root's object, and the module objects declare them.
- **E30.** Each chain agrees with its written-out form:
  - F16, BF16, F32 and F64 neighbours of one literal; I8 beside U64 and U8; a shift literal; all-literal chains (`e01`);
  - baked and at run time;
  - operands are evaluated once and in order (`n(1) < 5 < n(7) < 9 < n(3)` calls 1, 7, 3);
  - a declared type's `Less` and `extends I64`.
- **T32's type variables.** `any Iterator<T>&` inferred, substituted in a generic type's field at two instances (`g01`),
  reached through a `List` argument and a function type (`g02`). Permission is kept through unification (`g03`).
- **AnyNoCopy:** Take/Skip are refused through generic code bound to an any too (`a01`).
- **The second review's reproducers** (`prev/`, run by `prevcheck.sh`): the findings it marked fixed stay fixed. Every
  remaining mode difference is a program `build` refuses and interpret runs anyway.

## Fuzzers

- **Scope fuzzer**, on 5d0529f, 1,000 programs in all, 0 findings:

  | seeds | scenarios each | run | refused |
  |---|---|---|---|
  | 6000-6399 | 20 | 3,070 | 4,930 |
  | 7000-7599 | 12 | 2,695 | 4,505 |

  It writes no scope arguments, so findings 1 and 2 are outside its shapes. The same holds for finding 3's shape: a
  callee storing a borrow of what it returns.
- **Differential fuzzer**, every global baked while compiling:
  - seeds 9000-9149: 150 programs, 4,470 cases. Its one finding is the generator drift in 9;
  - seeds 9500-9699: 200 programs, 5,970 cases. Its one finding is the nomatch gap in 8.

  The generator writes no anys, so it only covers the round's checker changes (chains, literals).

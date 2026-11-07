# Review: run-time trait values (`any Trait&`), wt-any @ 70cf549

Read-only soundness review. Compiler: `/home/user/wt/rvany/build/olang`, bootstrapped from 70cf549. Master
(500ed38) was built in `/home/user/wt/rvany-master` to check what is pre-existing.

**How to run a reproducer:** `./run.sh NAME [OLANG]`. It joins `repro/NAME.olang` with `repro/common.inc` (`say`, and a
`churn` that works the arena) into `repro/gen/NAME.olang`. It then runs it three ways: built with `-debug -sanitize`,
built plainly (-O3), and interpreted. Each run's output is in `repro/NAME.out`.

## Findings, new in this branch

### 1. CONFIRMED use-after-free: an array copied into an `any` keeps its elements' references where they were, unchecked

T32a copies an array into the box. The box is built where the `any` lands, but nothing holds the copied elements'
references to that scope. So an `Array<String&>` or `Array<any W&>` made in a block can be kept past that block, and
its elements dangle. This holds when the array is pushed into an outer list, assigned to an outer `any`, assigned to a
field, or passed as a slice.

- `a02_arrloop`: `-sanitize`: "use after scope closed", 134. -O3 prints garbage: `String&["\"e3-3", "St"]`. Interpret:
  "uses storage after the scope it was made in closed".
- `a02h_arrassign`: the outer any is assigned (`o = a`, `h.s = a`). Same result in all three runs.
- `a02i_arrofany`: an array of anys of loop temporaries, and its slice. -O3 **segfaults** dispatching through the
  freed instances.

These shapes are refused: the same copy through a parameter (`a02d`, `a02g`: O10c), an array literal (`a02b`: O25c),
an enum case (`a02c`: T17c), and a struct temporary (`a03`: C2d). The cause looks specific to the box: the
`Promote(Make(Tuple, [copy]))` that `toAny` builds. Its item is judged against the box's provisional scope, or the read
of a value local is not taken as existing storage there. The box is then landed in the list's scope or the target's.
Nothing judges the items again.

### 2. CONFIRMED use-after-free and aliasing: a `String` value converted to a declared type over it is not copied into the box

`Lab(s)`, where `Lab extends String` and `s` is a local `String` value, goes into an `any` without a copy. The box
holds `s`'s own storage. A `Nums(a)`, where `Nums extends Array<I64>`, is copied correctly, as is a plain `s`.

- `q02_convlocal`: `b mut any Bump& = Lab(s); b.Bump()` changes `s` to `Zello`, in all three runs. T32a says arrays
  are copied "from a variable too".
- `q04_convloop`, `q05_textloop`, `q06_convkinds`: the box is kept past `s`'s block. `-sanitize` aborts (134), -O3
  prints garbage (`]0][5,`), and interpret reports the use after free.
- A read-only source (a parameter, a global) is copied (`q03_convro`), so this is not permission laundering.

The checker builds a copy box, but lowering's `anyMake`/`copiesArray` does not copy this conversion. The likely reason
is that it is two declared types deep (String to Lab).

### 3. CONFIRMED crash: `$` follows an `any` field without counting depth

E11a follows references 8 deep and then writes `...`. Through an `any` field it never stops:
`renderAny` → `AnyRender` → `inner` passes the depth on without adding one.

- `c03_chainrender`: a chain of 12 nodes linked through any fields renders all 12 levels. The same chain through plain
  references stops at 8 with `...`.
- `c02_selfrender`: a node whose any field holds itself (`n.next = n; $a`) recurses until the stack overflows.
  Segfault under -debug and -O3; gdb shows `Render_Node` and `anyrender_Node|Named` alternating.
- Interpret reports this as "uses storage after the scope it was made in closed", which is the wrong diagnosis.

### 4. CONFIRMED over-rejection: an `any Iterator<T>&` exists only where `T` meets every constrained default

`anyTable` instantiates every default of the trait for the instance's type, constrained ones included (`Sum<I, T
Number>`, Min/Max, Filter's `List<T>`).

- `p02_iterstring`: `any Iterator<String>&` of a hand-written iterator fails with "String does not satisfy the
  constraint Number", plus a T7a error inside list.olang. `any Iterator<Pt>&` fails with "'<' takes numbers".
- `p01_iterref`: `List<String&>.Iter()` fails the same way.

So in practice only number iterators can be anys. A default whose constraints the instance's type does not meet should
be left out of the table and refused at a call.

### 5. CONFIRMED gap: a closed trait listing generic instances cannot be matched by type

A type case takes no type arguments, so `case Box<I64> b` is a parse error ("expected '{', found 'b'"). A bare
`case Box b` resolves to nothing, with no error at the case:

- `e05_genericone`: the case covers nothing, and S13a reports a spurious "case Box<I64> ... not covered".
- `e03_genericcase`: with a `nomatch`, the build reaches lowering. It fails with "the self-hosted compiler cannot
  build this yet: ... does not lower an unknown type" (an internal gap). Interpret says "calls a function whose body is
  not available".

`as Box<I64>` works (`e04`). A related diagnostic: a closed trait listing `Box` without arguments says "met by ? alone"
(`e06`).

### 6. CONFIRMED gap (minor): a trait method's parameter default is unusable through an `any`

`u01_defaults`: with `Draw(scale I64 = 2)`, `w.Draw()` on an `any W&` is E14 ("expected 1 argument, found 0"), inside
a generic over the any as well. Generic code over the concrete type uses the impl's own default (5). Either default
values in trait signatures should be refused, or calls through a table should fill them in.

### 7. Minor diagnostics, all new

- `a06_mutimpl`: a type whose method writes its receiver, meeting a read-only trait method, is reported at the
  conversion as "this writes through a read-only reference" plus an O25 cascade. A T31 "no method that fits" would be
  clearer.
- `s01_spawncontract`: for `spawn r = a.Peek()`, the fix offered is `spawn fn() { a.Peek() }`, which loses the target.
- `b01_caseescape`, `b04_matchcall`: for a type-case binding, the note proposes `'b mut Btn&keep = ...'`, which cannot
  be written for a binding.
- `$` renders an array of anys as `any W&[...]`, but that literal does not parse (`t01`).

## Pre-existing (on master 500ed38 too)

- **CONFIRMED stack use-after-return** (`aa03_byvalref.master.out`): `fn bor(p Pt) Pt&p { return p }` returns a
  by-value parameter's own frame storage as borrowed from `p`. -debug prints `139716384127040 169690`, -O3 prints
  garbage, interpret reports it. `-sanitize` cannot see it, since it is a stack slot. With anys it is the same hole:
  `fn bor(p Pt) any Named&p { return p }` (`aa02`). Pushing such a borrow into a list is refused (`aa04`); only the
  `T&p` result is open.
- **Over-rejection** (`e02m_instmethod.master.out`): a method declared for one instantiation
  (`fn (b Box<String&>&) Describe()`) is found for `Box<I64>`. This breaks direct calls, generic calls and, on the
  branch, tables (`e02`, `e01b`).
- **Differential fuzzer** (`run 2000 100 2`): 51 of 100 programs are "does not compile at -d (step 1)". In each the
  asserted one-case program fails T6b, `I64 and U64 do not meet`, on a comparison chain with a U64 literal. This is
  generator drift and happens on master too. The generator writes no anys.

## Tried and held: no finding

- Numbers boxed in loops into outer lists (`a01`), and returned anys of locals, temporaries and numbers (`a04`, O26a
  moves them).
- Permission: a read-only to a `mut` any, a mut method through a read-only any, type-case and `as` bindings written
  (`a05*`); generic code given a read-only any (`k01`); for-in over a read-only any iterator (`z01`); mut defaults,
  generic in their own variable included (`y02`, `y03`); read-only copies holding a `mut any` (`w01`).
- Type-case and `as` bindings kept past the match or loop (`b01`), returned (`l01`, `l02`), and taken from a call's
  built any (`b04`, `b05`).
- Lambdas capturing anys (`d01`). Tasks over mut anys, temporaries and number boxes as task arguments, and tasks and
  spawned lambdas building into an any's instance through the table (`d02`-`d05`): TSan is clean, and `capture_scope`
  is emitted.
- Nullable anys (`f02`, `f03`), zero values (`f01`), generic instances with `as` (`e04`), two modules' same-named types
  in one closed trait (`mods/`).
- Defaults, overrides and extended traits through the table (`y01`). Contracts through an any under `checked`, the
  instance's own, a default's, and a number receiver's (`j01`).
- Error sets through the table (`x01`). Identity of copied numbers and text against the evaluator (`c01`). Arrays
  copied out of constant data and written (`q01`).
- Globals baked and set at startup (`n01`, `r01`). Hash of a struct holding an any (`z02`). Destructor counts for
  temporaries, borrows, returns, conditionals, catch defaults, match values and arguments (`h01`, `h02`).
- Methods keeping arguments in globals, or storing the receiver into an argument: refused (`o01`-`o03`).
- In all of these, -debug -sanitize, -O3 and interpret agree.

## Fuzzers

- **Scope fuzzer**, seeds 2000-2599 (12 scenarios each) and 3000-3999 (20 each): 1,600 programs, 10,334 scenarios run,
  0 findings.
- Its any scenarios do not include an array copied into an any, or a converted `String`. Findings 1 and 2 are outside
  what it writes.

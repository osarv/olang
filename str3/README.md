# Soundness review of e27b83b (decision 49, round 3)

e27b83b was built in `/home/user/wt/rvstr3`. For comparison, 7345ff9 (round 2) and b6259d1 (master) were built in scratch
worktrees, which were removed afterwards. In this report, "new" means e27b83b.

Every finding below was reproduced. The reproducers are in `repro/`. Each one starts with a comment giving what it
shows and what was observed in each build. The modes used were:

- `-b`;
- `-b -s`, the scope sanitizer;
- `-b -d`;
- `-b -r`, TSan;
- `-t`;
- `-i`.

## Summary

The may-build walk itself held:

- every build into the receiver that was tried was refused, reached through a callee, a call cycle, a generic, a trait
  default, a lambda, defer, a spawn, a conditional, a match, a try or a multi-result call;
- 210 generated Strs gave no internal error, wrong or right.

What breaks is code that touches a scope pointer without allocating, which neither the walk nor `cgCheckMayBuild`
looks at.

Master's decision 48, merged in here, emits two such runtime calls:

- `__olang_scope_escape(scope)` when a closure or a `Call` adapter is made;
- `__olang_scope_mine(scope)` in an adapter's prologue.

Both read the scope header. Since round 2, `$` hands Str a null scope for its receiver.

The result is that a Str making any capturing lambda that may build anywhere segfaults, even if the lambda is never
called. So does a Str or helper adapting a receiver part with `Call`. These are ordinary Strs: a lambda passed to
`Any`, `Fold` or `apply` that renders a number. 7345ff9 runs all of them.

The adapter path also shows a real gap in the walk. For an adapter it counts only where the adapter object is placed,
and never reads `Call`'s body. So a `Call` that builds where its receiver lives is accepted, and the internal-error
check cannot see it either, because the walk never asked about that function and variable.

G9d is sound for registration, but it changes what generic code means:

- `==` on two `T`s becomes identity;
- a `Hashable` constraint stops holding;
- inference depends on argument order;
- a generic constructor binds read-only, against SPEC.

G9d also routes generic calls into an older landing bug, which delays destructors to the end of the function.

One double destruction from round 2 remains: a `catch default` of a promoted try.

## CONFIRMED - introduced by e27b83b

### N1. A closure capturing the receiver calls `__olang_scope_escape(null)` (segfault)

Repros: `n1a`-`n1e`.

```
fn (it Item&) Str() String {
    hit := it.tags.Iter().Any(fn(t String&) Bool { return t == $it.id })
    return $it.id " " $hit
}
```

| | new `-b`, `-b -s`, `-b -d` | 7345ff9 | b6259d1 | new `-i` |
|---|---|---|---|---|
| n1a, the above | exit 139, no message | `7 true` | refused (purity) | `7 true` |
| n1b, a lambda that is made but never called (`f := fn() I64 { s := $b.k ... }`) | 139 | `bag 3` | `bag 3` | `bag 3` |
| n1c, `b.l.Iter().Fold(0, fn ... { s := $(x + b.k) ... })` | 139 | `b1` | refused | `b1` |
| n1d, a spawned lambda rendering a receiver field | 139 | `b5` | refused | not tried |
| n1e, by-value receiver holding a reference (its O4b variable) | 139 | `vbag 1` | `vbag 1` | `vbag 1` |

A global initialized as `S := $B` is set at startup (`@S = global ... zeroinitializer`), so the program crashes
before `main` runs, while `-i` prints the right text.

In the IR for n1b, `rdb` calls `@n1b.Bag.Str(ptr null, ...)`. Str then does:

```
%t17 = load ptr, ptr %loc.9                  ; the receiver's scope, null
call void @__olang_scope_escape(ptr %t17)    ; reads offset 24
```

The cause is cgClosure (codegen.c:3315). Its guard `strcmp(sval, "null") != 0 && SemanticMayBuild(L)` only tests for
a literal `null`. What it gets here is a load of the receiver's scope variable, which is null at run time.

- The walk is right that nothing is built where the receiver lives: inside Str, the closure lives in Str's block.
- `cgCheckMayBuild` only looks at allocations.
- `-s` cannot tell this apart from any other SIGSEGV, because the address is null.

In a lambda's prologue, `__olang_capture_scope` maps null to the program's scope, so only the escape call faults.

### N2. `Call` adapters: escape(null), and the walk never reads `Call`

**n2a.** `g fn() I64 = b.c; $g()` in Str, where `Ctr.Call` renders text in its own block.

- `cgCallAdapterValue` emits `__olang_scope_escape(instScope)`, where `instScope` is the receiver's scope (null).
- If that call were guarded, the adapter's prologue would still run `__olang_scope_mine(%iscope0)` on null
  (codegen.c:1904).
- new: exit 139. 7345ff9: `b2`. b6259d1: refused.

**n2c.** The same inside a helper handed the part: `fn hh(c Ctr&) I64 { g fn() I64 = c; return g() }`, called as
`$hh(b.c)`.

- new: exit 139. 7345ff9: `b2`. b6259d1: `b2`.
- str2's f1d, which hands the adapter on as an argument, is refused now. This local form is not.

**n2b.** The walk gap, present since 7345ff9.

- For an adapter, the walk counts only where the adapter object is placed (`mbBoundary` on a function-typed target).
  It never asks whether `Call` builds into its receiver's variable.
- So `Call() { x Ctr&c = Ctr(c.v + 1) ... }` reached through `g fn() I64 = b.c` is accepted. The direct call `$b.c()`
  is refused with E11c/O12.
- No memo exists for (`Ctr.Call`, its receiver variable), so `SemanticReliesNoBuild` answers false and the
  internal-error check cannot fire.
- new: exit 139, first at escape. 7345ff9: exit 139. b6259d1: refused.

A fix needs to do two things:

- treat an adapter made from a part bound to v as a call of `Call` with its receiver bound to v, as the walk already
  treats a closure's body;
- stop escape and mine from dereferencing null: skip them for a no-build scope, or map null to the program's scope as
  `__olang_capture_scope` does.

Doing only the second would turn n2b into a silent leak into the program's scope, which was str2's F3.

### N3. G9d: inference depends on argument order (minor)

Repro: `n3`.

- `pick(Res(2), r)` with `r Res&` is refused with T25c, while `pick(r, Res(2))` compiles.
- `addA(Res(4), l)` with `l` a `List<Res&>` is refused with E12 (`expected List<mut Res&>&, found List<Res&>`), while
  `addB(l, Res(3))` compiles.
- 7345ff9 accepts `pick` in both orders and `addB`, and refuses `addA` with G9.

The cause is the hard `refMut = true` in TypeUnify. Meeting the permissions (T25c) would make both orders agree.

### N4. G9d changes what generic code computes (not in SPEC G9d)

Repro: `n4`.

With `T` bound to `mut Res&`:

- `fn same(a <T>, b T) Bool { return a == b }` now compares identity (E10, a struct reference without Eq).
  `same(Res(1), Res(1))` was `true` on 7345ff9 and b6259d1, and is `false` on new. The evaluator agrees: a global
  bakes as `constant i1 false`.
- `fn hashOf(x <T Hashable<T>>)` called as `hashOf(Res(2))` compiled before. It is now error[G19, E10b]: `Res& does
  not satisfy the constraint Hashable`.

This is arguably the right meaning for a reference-only type, but SPEC G9d says only "binds T to a writable
reference", not that it changes `==`, `Hash` and constraints.

### N5. G9d: a generic constructor binds read-only, against SPEC (minor)

Repro: `n5`.

SPEC G9d says the variable binds to a writable reference. But `Box(Res(1))` is a `Box<Res&>`, because G10c's
"binds read-only" wins. So `b1.x.k = 5` is error[T25b].

- 7345ff9 printed `5 1`.
- A generic function, `id(Res(1))`, does bind `mut Res&` as specified.

### N6. G9d and the older landing bug: destructors delayed to the function's end

Repro: `n6`.

```
for i in range 1000000 { t += takeR(id(Res(i)) if c else Res(16)) }
```

| Build | Inside work | Peak RSS |
|---|---|---|
| new | `made 1000000 gone 0` | 166,620 KB |
| b6259d1 | each destructed in its iteration | 11,240 KB |
| 7345ff9 | 2,000,000 destructions (F4) | 11,228 KB |

- The cause predates G9d (P1). G9d routes every generic `<T>` call with a destructor temporary into it.
- The same shape without a loop, `{ x := id(id(Res(1)) if c else Res(2)) }` or `l.Push(id(Res(8)) if c else Res(9))`,
  outlives its block.
- `-s` reports nothing, since nothing is freed early.

### N8. Str recursion depth fell by about a quarter (minor, stack)

Repro: `n8`.

- `cgTextBuilt` now allocas a 48-byte scratch scope header in every frame of a recursion through a Str.
- The render helper that Str is inlined into goes from `sub $0x88,%rsp` on 7345ff9 to `sub $0xc8,%rsp`.
- The deepest list that renders with an 8MB stack goes from about 43,400 nodes on 7345ff9 to about 32,400.

## CONFIRMED - from 7345ff9, not closed by e27b83b

### N7. A try's catch default destructs one constructor call twice

Repro: `n7`.

```
x := try FRes(-1) catch default (try FRes(5) catch { unreachable })
```

- new and 7345ff9, under `-b` and `-b -s`: `destruct 5 (... destructed before: false)` is printed twice, so two
  distinct copies are destructed.
- b6259d1: destructed once.

The cause:

- `cgStoreArm` hands the promotion to conditional and match arms.
- `cgTryDefaultStore` does not. When the try is being promoted, the default's constructor call registers where it is
  built, and the promotion registers the copy too.

This is reachable only with a fallible constructor, since nothing else returns a destructor value.

## PRE-EXISTING

- **P1** (`p1`, b6259d1 as well): a landing bug for temporaries in conditional arms.
  - A temporary passed to a borrowed-result call that is one arm of a conditional handed to another call is built in
    the function's scope, not the loop body's.
  - Shape: `takeR(idr(Node(i)) if c else Node(16))`.
  - Over 1,000,000 iterations, peak RSS is 139,216 KB on new and 139,184 KB on b6259d1. The same without the
    conditional is 11 MB.
- **P2** (`p2`): recursion through a non-Str join, inherited from master.
  - Deepest depth: new about 103,800, b6259d1 about 103,800, 7345ff9 about 261,500.
  - Master's frame keeps a zeroed 48-byte scope header.
  - str1's n6 (depth 100,000) segfaults again.
- **o6** (7345ff9 too): array callbacks over references are refused.
  - Any array callback over an array of references that the receiver reaches is refused: `Count`, `Any`, `Fold`,
    `Map`, `Filter`, `Sort`.
  - The call `keep(x)` in the prelude is an unknown body bound to the elements' scope.
  - b6259d1 prints `n1`. `b.l.Iter().Count(f)` on a List is accepted.

## Over-rejections (item 5, and others found)

- **o1: the author's "helper making a lambda over its node". Avoidable.**
  - It is right for the code as generated. D16d builds peek's closure in `n`'s scope: the IR shows
    `__olang_scope_alloc_a(ptr %sarg0, ...)`.
  - A closure that never leaves its function could live in the frame, and the walk would then read the same rule.
  - 7345ff9: segfault. b6259d1: `b4`.
- **o2: new in e27b83b.**
  - `peek(n) { return apply(fn() I64 { return n.v }) }` is refused.
  - Codegen already puts that environment on the stack (cgEnvOnStack: `alloca { ptr, ptr }`, no allocation). The
    walk's closure case does not read `cgEnvOnStack` or `SemanticParamTransient`.
  - 7345ff9 and b6259d1: `b4`.
  - Fixing the walk alone would turn the variant whose lambda renders text into N1's segfault.
- **o3: avoidable.** `apply(b.c)` with a `Call` that only reads is refused. The 16-byte adapter object is placed where
  the instance lives. It could live in the frame for a parameter that keeps nothing.
- **o4: avoidable.** A helper doing `join { spawn x = hr(n) }`, where `hr` builds nothing, is refused.
  - A stand-in is made for every scope variable of a spawned call, and the walk counts each.
  - It could be skipped where `SemanticMayBuildInto(callee, w)` answers no.
  - 7345ff9: segfault. b6259d1: `b6`.
- **o5: the author's `b.name if ... else "anon"`. Avoidable.**
  - The conditional is a read-only `String&`; writing `name[0]` is T25b. By T25d's own rule the literal could be the
    static constant.
  - Instead it is copied into the conditional's scope, which is the receiver's, through the run-time-length promotion
    in `cgStoreOperand`.
  - The walk's literal case counts any array literal under a placed target (`mbiOperand`, the `isLiteral` branch),
    even where `mbBoundary` excludes static literals.
  - `return $(b.name if ...)` and `return b.name if ... else "anon"` already compile.
  - On b6259d1 this "works" by copying "anon" into the Bag's scope at every rendering.
- **Split.** `b.name.Split(...)` in Str is refused by design: Split builds its array where the text lives.

## PLAUSIBLE - traced, not reproduced

- **`cgTextBuilt`'s copy is invisible to `cgCheckMayBuild`.**
  - The final `__olang_scope_alloc(scopeVal, total)` at codegen.c:5401 is not preceded by `cgNoteBuildInto`, so
    neither the E11c/O12 check nor P2's handed-scope check sees it.
  - Today the walk's STR_OF/CONCAT placement mirrors `cgWhereBuilt`, and no miss was found.
- **The internal-error check covers only the pairs the walk asked about.**
  - `SemanticReliesNoBuild` answers true only for a memo with `said == 1`. Any path the walk never visits gets no
    check; n2b is one.
  - The check protects against wrong answers, not against missing questions.

## What held

- **Item 1, the walk.**
  - Builds into the receiver through each of these are refused with E11c/O12:
    - a callee or a two-function cycle;
    - a generic or a trait default;
    - a local, handed-on or spawned lambda;
    - defer, or a spawned call;
    - a conditional, match, try or multi-result argument;
    - local aliases;
    - borrowed results (`label` with `$`, a comprehension, `Array(n, v)`, a conditional, a catch default);
    - growth through `b.head.l.Push` or `b.nodes[0].m.Put`;
    - `b.f(b.head)` through a function-valued field.
  - Generators: `held_walk_indirections_gen.py` and `held_fuzz_str_gen.py`.
    - Seed 2 with `AVOID=1`: 150 programs, 82 run correctly under `-s`, 68 refused, no crash, no internal error.
    - Seed 1: 60 programs, whose 10 crashes are all N1/N2, or my own test bug (unbounded recursion through `$b`).
  - All str1 and str2 reproducers are refused or run correctly (str2's own `o1` and `o2` now print `3 ab` and
    `6 6`), except str1's n6 (P2 above).
- **Item 3, registration.**
  - 26 shapes balance per block (`held_registration_battery`):
    - conditional, match, generic and nested arms;
    - `Box` and `Pair` inference;
    - Map and List pushes;
    - array literal, fill, joins, spawn targets;
    - try with fallible constructors;
    - returns and `$`.
  - The exceptions are N6's landing and N7's default.
  - Returns and spawn targets of conditional temporaries: `held_registration_returns_spawn`.
- **Item 4, the builder.**
  - str2's f5 peaks at 207,956 KB on new against 826,820 KB on 7345ff9.
  - Early exits from a million joins peak at 11 MB.
  - `done` and `fail` inside a Str piece in a test, and a destructor rendering a Str join while a test's scopes
    unwind, all work (`held_builder_done_fail_in_tests`: 3 passed, 1 intended FAIL).
  - Four tasks building growing joins with Str pieces and Lists are clean under `-r` and `-s`, and match `-b`.
- **Item 2, G9d.**
  - The evaluator and the run time agree (`held_g9d_evaluator`): `5 7 2 true 1` under `-b` and `-d`.
  - Generic Map and List builders over destructor values destruct exactly once (`held_g9d_generic_containers`).
  - `-i` stops on destructors, its stage-1 limit, as expected.

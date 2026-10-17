# Soundness review of 91ab3ba (tonight8's fixes), 2026-10-10 ~09:40-10:30 CEST

## Scope and method

**What was reviewed.** `/home/user/wt/rv9` at 91ab3ba, the diff `45eea97..91ab3ba`. Its compiler is
`/home/user/wt/rv9/build/out`.

**The base.** 45eea97 was built in a scratch worktree, `/home/user/wt/rv9base`, which has been removed since.
"Pre-existing" in this report means 45eea97 behaves the same way.

**Where the files are.**
- Reproducers are in `repro/`. Each one is headed with its expected output, its actual output, and how 45eea97 behaves.
- Scratch programs are in `work/`:
  - `work/t.sh FILE [b d s ds r i]` builds and runs a file in the modes given.
  - `work/gen.sh` and `work/gen3.sh NAME 'BODY'` write tonight8's racer: two tasks call a closure over captured `a`/`b`
    while main builds into the same scope.
  - `work/race2.sh NAME [runs]` does three things:
    - builds the file with `-b`, which reports an ICE if there is one;
    - counts `__olang_capture_scope` calls in the lambdas;
    - runs the `-r` build N times and counts TSan reports.

**Fuzzing.** The scope fuzzer (`fuzz scope`) ran on 91ab3ba: seed 901 x 120 programs, then seed 2027 x 500 programs.
The differential fuzzer (`fuzz run`) ran at seed 3131 x 150 programs. The results are at the end of this file.

## CONFIRMED

### 1. NEW: a correct closure gets an internal compiler error when a `catch default` is built where a read-only callee's result lives (`repro/01`)

```
fa := fn(i I64) {
    x := try find(a) catch default Node(i)
    ...
}
```
Here `find(n mut Node&) mut Node&n ?` builds nothing.

- **91ab3ba:** `olang: internal compiler error: 'lambda$1' builds into a scope it was handed where the checker found it
  builds nothing (P2, SemanticMayBuild)`.
- **45eea97:** it compiles and races. `-r` gives 36 reports (`__olang_scope_alloc_a` from the task against main), which
  is tonight8's F1 in another shape.
- **`-i`:** prints the right values.
- **Same failure:** `rd(try find(a) catch default Node(i))` as an argument (`work/d2`), `x := ...` followed by a numeric
  store (`d3`, `d4`), and `if (try find(a) catch default Node(i)).v == -3` (`d5`). All are ICEs on 91ab3ba and races on
  45eea97.

**Cause.** The walk is now right: `mbClauses` sees the default.

The fault is in codegen's prologue mark:
1. `cgCallTargetAndArgs` resolves a read-only callee's scope arguments under `capReadOnly`
   (`bool readOnly = ... !SemanticMayBuild(func)`, codegen.c ~3404).
2. It then records that same value as the call's result scope (`op->cgResultScope = sval`, ~3417).
3. `cgTrySlotType` hands `cgResultScope` to `cgTryDefaultStore`, which builds the default there.

So the build is recorded against a captured-scope resolution that never set `c->built`. `cgCheckMayBuild` then stops
the build: `ok = c->built` is false. The check turns tonight8's race into an ICE, but the program is correct.

The fixture's form, `a.next = try find(a) catch default Node(i)`, passes only because the store into `a.next` resolves
the captured scope a second time, not read-only, and that resolution sets `c->built`.

Two possible fixes:
- When the call has a clause with a default, resolve the callee's result-scope argument without `capReadOnly`.
- Or have `cgTryDefaultStore` mark the capture it builds into.

**The message is also wrong for this case.** It says "where the checker found it builds nothing", but
`SemanticMayBuild(lambda)` is true here. What failed is the prologue mark, not the walk.

### 2. NEW: D8a's per-call rebuild reads the caller's constant variables - a silent wrong value, or bogus errors (`repro/02-default-reads-callers-constant/`)

Take a default `x I64 = N + 1` in module `lib`, where `N` is `lib`'s own global. It is rebuilt for each call
(`defaultArgFor -> buildParamDefault(pd, true)`), and the rebuild runs inside the caller's check. There it inherits
`currentConstVars`. `buildParamDefault` never clears that, and it sets `currentBindings` only for a `readsVars` default;
`resolveTypeDecl` (semantic.c:5442) by contrast saves and clears all four globals.

So inside an instantiation of the caller that has a constant variable `N`, the default reads the caller's `N`:

- `main.olang`: `lib.F()` inside `g(a Array<I64, <N>>&)` with `N = 5`.

  | build | prints |
  |---|---|
  | 91ab3ba `-b` | **`6 4`** |
  | 91ab3ba `-d` | **`6 4`** |
  | 91ab3ba `-i` | **`6 4`** |
  | 45eea97 | `4 4` |

  The first build, which K1 judged, still reads the global, so nothing catches the wrong value. `-i` agrees with it,
  so the differential fuzzer would not catch it either.
- `main_bool.olang`: the same call from `type Flag<N Bool>` gives two errors in `lib.olang`, `'+' takes numbers, found
  Bool` and `expected I64, found Bool`, each "instantiated here, with N = true". The program is correct, and 45eea97
  prints `6`.

It is reachable only across modules, since G22/D3a keep a constant variable's name apart from its own module's globals.
Type variables did not leak in my tests (`work/dm4`): a default naming `lib`'s type `W` inside a caller's `<W>` still
resolved to the type.

On muting: in the rebuild only the fit is muted, not `buildExprFromSyntax`. The call's own argument fit is unmuted too.
So a leaked rebuild shows up as bogus errors, as in `main_bool` and `work/dm6`, and I found no case where muting hid a
real error.

### 3. NEW above 64KB (PRE-EXISTING below it): a constructor field the instance keeps a view of points into frame storage (`repro/03`, `repro/03b`)

**The fields concerned.** A constructor field the instance keeps a view of:
- a slice, `view Array<I64>& = big[0:2]`;
- an `as` view, `w := big as Array<I64, 20000>&`;
- a conditional of slices;
- a slice handed to a constructor that keeps it, `Holder(big[0:2])`.

The checker accepts each of these as if the field lived where the instance lands. But `slotBorrowed`, which makes codegen
store the field at `%here`, is set only by `borrowLifetimeFits` (a value lvalue into a reference) and by a call
argument that is an lvalue. A slice or a view sets neither, so the field stays frame storage.

**What 91ab3ba changed.** It moved a constructor's frame storage over 64KB from the instance's scope (C2g's
`cgScopeSlotAt` -> `%here`) to the constructor's own scope (T7c, `cgValueSlotAs`).

**`repro/03`, where the fields are views of a 160KB field.**

| build | 91ab3ba | 45eea97 |
|---|---|---|
| `-d -s` | `use after scope closed: storage a closed scope gave back was read or written`, status 134 | clean (by accident) |
| `-b` | right values (by luck) | right values |

**`repro/03b`, through a temporary.** Here the field is a slice of a 160KB temporary's field, `r Array<I64>& =
Big(n).a[0:2]`.

| build | 91ab3ba | 45eea97 |
|---|---|---|
| `-b` | **`4 4 190 190`**, where `8 4 ...` is right: `Big(3)` in main reuses the freed chunk | `8 4 190 190` |
| `-d -s` | use after scope closed | clean |
| `-i` | prints `8` | |

**Below 64KB, both versions are wrong.** Shrink the field or the temporary to 4 elements and both 91ab3ba and 45eea97
print a dead stack frame's bytes, such as `140736219060568`.

**The general form is a pre-existing finding, below.**

### 4. PRE-EXISTING: a slice of a value temporary's inline field is accepted into a longer-lived reference (`repro/05`)

`fn set(h mut H&, n I64) { h.r = Big(n).a[0:2] }` compiles, though `Big(n)` is a value result in `set`'s frame.
`h.r[1]` should be 8, which is what `-i` prints.

| `Big` size | 91ab3ba and 45eea97, `-b` | 91ab3ba and 45eea97, `-d -s` |
|---|---|---|
| 4 elements | `0` | `0` |
| 20000 elements | `8` (by luck) | use after scope closed |

This is the general case behind 3/03b. No constructor is needed.

### 5. PRE-EXISTING: a destructor that builds through its instance's reference field builds into its own frame (`repro/06`)

`destruct { n.next = Node(k) }` allocates from a scope header the destructor makes for itself. Its IR is an `alloca
%olang.scope`, then `__olang_scope_alloc` from it. That scope closes as the destructor returns. The next destructor of
the same scope reads `n.next`.

Under `-d -s` this is `use after scope closed`, status 134. `-b` gets the right output by luck. I found it checking
"destructors run by a closure's scope closes", but it needs no closure. It does not affect P2, because a destructor is
handed no scope.

### 6. PRE-EXISTING: a lambda used as a parameter default cannot be called from another module (`repro/04-lambda-default-cross-module/`)

clang fails with `use of undefined value '@lib_lambda$2'`; on 45eea97 it is `$1`. The lambda is made with no host, so it
is emitted only into the declaring module's object, as `internal`. `-i` prints the right values.

**New with 91ab3ba.** The default is now rebuilt per call, so a non-literal lambda default makes one lambda function per
call site. Four calls of a same-module default emit 6 lambda functions, where 45eea97 emitted 2 (`work/dl1`). It is
correct but bloats code. Also, `is` between two call sites' default function values is now false; that matches D8a's new
wording, "as if written there".

### 7. PRE-EXISTING, from the differential fuzzer: `$` of a slice of an `Array<T, 0>` renders differently while compiling than at run time (`repro/07`)

The fuzzer found this at seed 3153, case 23; it is minimized in the reproducer. `$(x3[0:0])` on an `Array<I16, 0>`
renders as follows:

| where | renders |
|---|---|
| K2 (baked while compiling) | `null` |
| `-i` | `null` |
| `-b` and `-d` | `I16[]` |

It is the same on 45eea97, and it is unrelated to 91ab3ba.

## PLAUSIBLE / low

- **S4c: a reference target in the program's scope is still refused in a parallel assignment** (`work/p1`). The new
  SPEC sentence says "a value with no storage of its own going into a reference target is built ... where that target's
  referent lives". But `G.next, k = Node(i), i` gives O1b and O17a errors, while `G.next = Node(i)` compiles.
  `holdForRefTarget` deliberately keeps the value hold for the program's scope. This is pre-existing (45eea97 is the
  same), and only the spec now promises otherwise.
- **Derived-scope targets.** A target through a `&p` field (`h.n.next, k = Node(i), i`) is refused with O17a and O25,
  where the single form gives C2d's clearer error (`work/p6`). The error is correct; the wording is worse.

## What held

**Item 1: the may-build walk.** None of these shapes compiled to a closure that misses its prologue check. Each racer
ran clean under `-r` with the right values: one `-r` run for most shapes, three for `nl1` and `one2`, two for `h1`.
`-b` runs were repeated for most of them (see the end).

| Shape | Racers |
|---|---|
| A lambda inside a lambda: called, immediately called, its value returned, stored into a captured node and later called by other tasks (`nl1`) | `s01`, `s02`, `s04`, `s14` |
| Calls through captured function values | `s03` |
| `Call` adapters made inside a closure | `ca1` |
| Generic instantiations: by value, through `<T>&`, with conditional, match and default inside | `g01`-`g06` |
| Promoted value calls | `s05`, `s06`, `s07`, `s13` |
| `defer` | `s08`, `s09` |
| Conditional and match with value-call arms | `s10`, `s11` |
| A spawned lambda inside a closure | `s12` |
| `$`, joins, comprehensions, `Array<T>(n, v)`, `List.Push`, text conditionals and matches | `t01`-`t10` |
| A handle element's `Push` through a captured reference to a `List<List<I64>>` | `h1` |
| Defaults that build | `df1`, `df2` |
| One closure called by two tasks and main at once, on distinct nodes | `one2` |

- **The fix's own fixture** (`capscope`) is clean under `-r` in 3 of 3 runs.
- **E31b through a captured collection** is refused before codegen; the same over-rejection holds in plain functions,
  and is pre-existing. A captured `List` is a read-only copy.
- **Destructors** registered by a closure into a captured scope run at the owner's close. Their own build problem is
  finding 5, which is independent of P2.

**Item 2: `cgCheckMayBuild`.**
- Every emission of `__olang_scope_alloc*`, `__olang_scope_register_dtor` and `__olang_standin` calls
  `cgNoteBuildInto`.
- Scope variables are read only through `cgResolveScope`; `cgLookupVarAddr` on a scope variable occurs nowhere else.
- No scope pointer passes through a `select` or a `phi`; the prologue's own select is not a build.
- Codegen calls `op->readVar` exactly, so the walk and codegen agree on the callee.

I found no build into a captured scope that escapes the record. Besides finding 1, I found no false ICE:
- constructors with List, Map and StringBuilder fields, zero values and inline arrays (`work/ct1`);
- G10d twin constructors (`tw1`);
- extern arguments built at a constructor's top level.

**Item 3: `cgValueIsFresh`.** These are refused, correctly, with O10c:
- an arm whose value holds a shorter-lived argument (`mk(loc, i)`), in a store, a `:=`, an argument or a match value
  (`v1`, `v3`);
- a match arm calling a built-result function that keeps `loc` (`v4`).

These are now built at the target and run clean under `-d -s` and `-i`:
- a value call returning a struct that holds references (`f1`), where 45eea97 has a use after scope closed;
- argument and borrowed-result forms (`v2`).

**Item 4: D8a.**
- Cross-module defaults building temporaries (`Node(Base + 7)`, text with `$Base`) work from several functions and
  lambdas.
- A default that instantiates generics (`Id(Base)`, `Mk(Base)[0]`) gives the same value inside callers' `<T>` and `<N>`
  (`dm7`).
- A spawned call whose default builds into the argument's scope (`sp1`) is clean in two `-r` runs, and agrees under
  `-d -s` and `-i`.
- `rv8defaultshared` passes.
- Type variables do not leak (`dm4`).
- The muted fit hides nothing: the call's own fit reports.

**Item 5: S4c `holdForRefTarget`.** Correct under `-b`, `-d -s` and `-i`, or refused correctly:
- targets in different scopes, including through parameters (`two`, `swapish`), and values reading the other target
  (`p2`);
- a cursor re-pointed in a loop, `cur, cur.next = cur, Node(i + 1)`, plus value-home targets and by-value parameters'
  references (`p4`); 45eea97 refuses `p4`;
- in closures on tasks under `-r` (`pc1`-`pc3`);
- a constructor value or call holding a shorter-lived reference is refused (C2d in `p5`, O10c in `p3`).

**Item 6: C2g/T7c.** A huge field that is only borrowed by a call (`Iter()`) or captured by a lambda keeps `%here`
through `slotBorrowed`, and runs clean (`k1`, `kc`, `kf`). A constructor's own scope is closed after the instance is
copied out. Everything else is finding 3.

## Fuzzing and repeated runs (all on 91ab3ba)

**Scope fuzzer.** No findings in two runs:
- seed 901, 120 programs: 698 scenarios run, 742 refused;
- seed 2027, 500 programs: 3,005 scenarios run, 2,995 refused.

**Differential fuzzer.** Seed 3131, 150 programs, 4,500 cases (4,499 globals baked). It reported 6 findings, all one
cause: finding 7, seen at seeds 3153 and 3243.

**Repeated `-b` runs.** Twelve racers were each run 15 times under plain `-b`: `s10`, `s11`, `g04`, `g06`, `pc1`,
`df1`, `t08`, `nl1`, `h1`, `ca1`, `one2` and `s12`. All 180 runs gave the right values, with status 0.

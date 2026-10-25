# Fourth review: the third `any` fix round, wt-any 2576a1d -> 0c37adb

Read-only soundness review of `git diff 2576a1d 0c37adb` (2576a1d merges master).

**Compilers.** `/home/user/wt/rvany4/build/olang` was bootstrapped from 0c37adb. `/home/user/wt/rvany4-old/build/olang`
was bootstrapped from 2576a1d, to tell new findings from older ones. Both worktrees are removed now. To run a
reproducer, bootstrap a compiler and pass it.

**How to run.**
- `./run.sh NAME OLANG` joins `repro/NAME.olang` with `common.inc` (`say`, and a `churn` that works the arena). It runs
  the result three ways: built with `-debug -sanitize`, built plainly (-O3), and interpreted. The output goes to
  `repro/NAME.out`.
- `./runold.sh NAME OLANG` does the same into `repro/NAME.2576a1d.out`. `./runall.sh OLANG [SUFFIX]` runs every
  reproducer.
- `./batd.sh OLANG [NAME...]` runs the batteries this review was written from, one summary line per mode. The scope
  argument positions are in `bat/` and the RetCopy probes in `rc/` (`BDIR=.../rc`). Each has an `out/` (0c37adb) and
  an `out.old/` (2576a1d).

**Tags.** "New" means 2576a1d behaves correctly. "Older" means 2576a1d does the same thing.

## Findings, most serious first

### A. CONFIRMED use-after-free (older; the round's rule stops short of it): a scoped call's array value is never judged, and is returned uncopied

The round's one rule makes a call given a scope argument (E25) existing storage where the argument says. It is
implemented at the end of `Scoper.call`, after `if not s.holds(ty) { return plain() }`. So a scoped call whose result
holds no reference is still `plain()`: a `String`, any array of numbers, a type declared over one (`Lab`). Nothing
judges where such a result's storage lives.

Lowering then takes every call's array value for one built in the result scope (T7b), and so returns it uncopied:
`copiesArray` is false for a `Call`. And O26a moves a local declared from such a call into the result scope, because
`madeHere` counts any call. The array really lives where the scope argument said, and that scope can close first.

Each reproducer below runs as a use after free under `-debug -sanitize` (exit 134), prints garbage at -O3, and is
reported by interpret ("uses storage after the scope it was made in closed"). 2576a1d does the same for every one.

| reproducer | shape | -O3 prints |
|---|---|---|
| `a1_returnscopedtext` | `fn g(i) String { t := "local" $i; return mk&t(i) }` | `rnvalue rnvalue` |
| `a2_returnscopedlocal` | `x := mk&t(i); return x` (O26a moves `x`) | `text2-1` twice |
| `a3_boxparamreturn` | `fn g(p String&, i) String { return mk&p(i) }`, then `l.Push(Lab(g(t, i)))` with `t` a loop body's local and `l` outside | `lab 2-1t2-1` |
| `a3b_boxparamlocal` | the same with `x := mk&p(i); return x` | `lab 2-1t2-1` |
| `a4_returnchain` | `fn h(i) String { t := ...; return g(t, i) }`, two calls deep | `text2-1 text2-14` |
| `a5_lambdacapture` | a lambda `fn() String { return mk&t(7) }` capturing an inner local, its result boxed outward | garbage |
| `a6_methodreturn` | a method given a scope argument, `return h.mkm&t(i)` | `pre2 pre2` |
| `a7_returntrydefault` | `return try fs(i) catch default mk&t(i)` | garbage |
| `a8_returnmatch` | `return match i { case 0 => mk&t(5) nomatch => mk&t(i) }` | garbage |
| `a9_returntuple` | `return mk&t(i), i`, one of several results | garbage |
| `a10_returnconversion` | `return Lab(mk&t(i))` | garbage |

**Why this is the round's business.** SPEC E25's new paragraph says such a result is "judged wherever it is put -
stored, pushed, passed, returned, made an `any`". It says `return mkp&t(...)` with `t` the function's own local is
O10d's error. That holds for references (`b16`, `c04j` are refused). It does not hold for array values.

`a3` also breaks claim 1. `AnyItemNew` takes the *unscoped* outer call `g(t, i)` for new storage built where the box
lands, but its callee returned the scoped array as it was. So "a call is new unless a scope argument places it" is
false whenever this hole is open.

A conditional is copied and safe (`bat/b33`). A slice, field or element of such a call is judged (`b25`, `b01`,
`b02`). So is the same text stored into a reference field (`b26` is refused). A promoted temporary is copied (`b27`,
`b28`, `b51` - a task argument, `b52`).

**Suggested fix:**
- In `s.call`, return `existing(beta[rv])` for a scoped call whose result type `arenaValue` covers, not only one
  that `holds` references, so a return or a box judges it (O10d).
- `lower.copiesArray`/`retCopies` should copy a scoped call's array: the call does not build it in the result scope.
- `qualifiesMove` should not move a local whose initializer is a scoped call (a call is "made here" only without one).

### B. CONFIRMED value semantics and compile-time/run-time disagreement (new disagreement, older aliasing): RetCopy's third-mode flow misses second names

3b's claim is that the evaluator copies every returned array, and the run time copies exactly where a kept borrow
names a returned local. That is unobservable only if the flow finds every such borrow. It does not.

Where the flow misses a borrow, the run time returns the local as it is. The caller's value and the kept borrow are
then one storage, and writing either changes the other. The compile-time evaluator copies, so:
- a baked global (K2) disagrees with the same call at run time;
- an assert decided while compiling (S18c) is dropped as true, and the same comparison then fails at run time.

On 2576a1d both modes aliased alike. There the asserts in `b1b`/`b3c` were a compile-time error ("this assertion is
false, evaluated while compiling"), which matched the run time. So the round turned a consistent (if wrong) answer
into a silent disagreement.

| reproducer | the second name | run time | baked |
|---|---|---|---|
| `b1_aliaslocal` | `l := lst` (a reference local of the block naming the caller's list), then `l.Push(s); return s` | `lst ["Qbc1"]` | `lst ["abc1"]` |
| `b1b_aliaslocalassert` | b1 asserted: `assert probe() == "abc1"` is decided true while compiling and dropped; `assert r == "abc1"` on the same value fails at run time | | |
| `b2_handlecopy` | a by-value `List` parameter (a handle) copied into a local, then pushed | `lst ["Qbc1"]` | `lst ["abc1"]` |
| `b4_elementreceiver` | `ks[0].Set(s)`: the receiver is a call (`At`), and `flRootExpr` gives -1, so `flCall` skips it | `ks[0].s Qbc1` | `abc1` |
| `b3_passlimit` | a chain of 7 reference locals written against statement order inside a loop: `flowRun` stops after 6 passes | `k.s Qbc1` | `abc1` |
| `b3b_passcontrol` | the same chain 3 links long is seen and copied: every mode agrees | | |
| `b3c_passlimitassert` | b3 asserted, as b1b | | |
| `b3d_passlimitany` | b3 through an any: the box holds the call's array as it is (`AnyItemNew`), so `b.Bump()` writes `k.s` at run time and not while compiling | `Zbc2` | `abc2` |

Interpret computes its globals at startup with the plan, so it agrees with the build. The disagreement is only with
compile-time evaluation.

**`b5_destructor`, older, consistent in every mode.** `d := Res(s)`, a destructor-bearing local holding `mut String&`
to the returned `s`: its destructor `r[0] = 'Z'` runs as the function's scopes close, after the result was computed,
and the caller reads `Zbc1`. This breaks T7b's "nothing those scopes do as they close can reach it". `retCopies` copies
when a defer or a join is pending, but not for a destructor-bearing holder of a writable borrow. Mode 2 calls the
holder "in the block", so not kept. Every mode agrees, because destructors stop compile-time evaluation.

**Where the flow is right:**
- a direct field store, a slice stored, a conversion stored (`rc/r04`, `r05`, `r03`);
- a field through a reference local (`r22`, flThroughRef sees the Deref);
- a capturing lambda stored in a field (`r15`);
- the returned local returned twice, or with a slice or a struct of it (`r19`, `r02`, `r02b` - copied, no alias);
- a reassignment to a longer text (`r07`);
- deferred code (`r11`);
- a lambda body storing the capture, which is refused by T22a anyway (`r01*`, `r16`).

**Suggested fix:** in modes 1 and 2, treat a root that is not known (`flRootExpr < 0`: a call, an element read), or a
local whose type is a reference or a handle, as outside the block. Iterate to a fixed point rather than six passes, or
fall back to "kept" when the pass bound is hit. Count a destructor-bearing holder of a writable borrow as kept, or
copy in `retCopies` when one is in scope. Otherwise, make the evaluator follow the same RetCopy answer rather than
copying always.

### C. CONFIRMED gap (older; claim 4 is incomplete): AnyNoCopy does not walk a function type

`HoldsVarByValue` now goes through references, `List`, `Vec`, `Map`, `Array<G>&`, a struct holding a `List<G>&`, and
a tuple. Each of these defaults is refused through an any (`nc/`).

It does not look inside a function type. `fn (g mut G&) Later<G Gen>() fn() G { return fn() G { return g } }`,
called on a `mut any Gen&` (`c1_nocopyfunc`), is accepted:
- The build stops with an internal error: "cannot build this yet: it does not emit a type with no layout: any
  c1_nocopyfunc:Gen".
- Interpret runs it and prints `made`.

2576a1d gives the same result. This is the second review's 2.6 (an any without its marker) through one more type
constructor. It is a refusal or an internal error, never a miscompile.

### D. Over-rejections (older, the same on 2576a1d)

- **A borrow of a returned (moved) local, read back out of a value holding it, cannot be pushed into a parameter's
  list.** The direct `l.Push(s); return s` compiles and is copied (`o0_pushdirect`). Each of these is refused with
  O10c, "nothing here shows it":
  - a match binding: `e := E.T(s); match e { case E.T(q) { l.Push(q) } }` (`o1_matchbindpush`);
  - an `as` payload (`o2`);
  - a for-in element of `String&[s, "y"]` (`o3`);
  - an element walked out of a local `List<String&>` (`o4`).

  If these are relaxed, B's flow must learn the same paths: `flArm` walks a binding's `From` but never adds the
  binding to the set.
- **`spawn x = mkp&t(i)` is "'spawn' takes a call" (P1)** (`d1_spawnscoped`). A call given a scope argument is not
  taken for a call as a task. The same call as an argument, `spawn use(mkp&t(i))`, is judged by P2 correctly (`b08`
  refused, `o11` accepted).
- **A parameter default naming an earlier parameter in a scope argument** (`p P& = mkp&q(5)`) is refused with "'q'
  lives in the program's scope" (`bat/b53`). It is a refusal, but the reason given is wrong.

### E. Diagnostic (older): E25's "no result scope" error is not enforced

E25 says a scope argument on a call whose target has no result scope is a compile-time error: "one returning nothing,
nothing holding references...". These all compile silently (`d2_e25noresultscope`):
- `num&t(1)`, returning an `I64`;
- `P&t(2)`, a constructor of a struct holding no reference;
- `mkpv&t(3)`, returning such a struct by value.

The same holds for `out.Push(P&t(i))` and `h.b = Box<I64>&t(i)` (`bat/b43`, `b44`), which are safe because the value
is copied.

## Held: no finding

- **Claims 1-2, scope arguments where a reference is the result** (`bat/`, 0c37adb against 2576a1d). Each position is
  now refused where its declared-first form is:
  - a field (`b01`, through a value result's field);
  - a push (`b02`);
  - a borrowed-result pass-through (`b03`);
  - a scoped call inside a scoped call's argument (`b04`, C2d);
  - a method (`b05`), a generic (`b06`), a call through a function value (`b07`);
  - a task argument (`b08`, P2);
  - a catch default (`b09`, R11);
  - a conditional, a mixed conditional, a match (`b10`, `b10b`, `b11`);
  - a destructured result (`b12`, `b38b`);
  - a global (`b13`, O1b);
  - an any (`b15`);
  - a returned conditional (`b16`);
  - a parallel assignment (`b17`);
  - SetAt (`b18`);
  - a constructor argument, a payload, an array literal (`b19`-`b21`, C2d/T17c/O25c);
  - a call keeping it (`b22`);
  - an `as` payload, a for-in over it, a match on it (`b40`-`b42`);
  - a scoped constructor holding references, and a destructor type (`b54`, `b55`).

  On 2576a1d, `b04`-`b07`, `b10`, `b11`, `b13`, `b15`, `b17`-`b22` and `b30` were use-after-frees (`bat/out.old/`), and
  `b08` hung under the sanitizer.
- **No over-rejection from the rule.** Every exact form compiles and runs correctly, each matching its declared-first
  form:
  - `h.p = mkp&h(i)` and declared first (`a01`, `a01b`);
  - a push into the list it names (`a02`); text pushed into the list it names (`a05`);
  - `&return` returned (`a03`), in a conditional (`o03`), as a catch default (`o04`), in a struct (`o06`), in a lambda
    (`b23`);
  - an any naming its list (`a06`); a catch default naming the struct (`a07`);
  - a task argument outside the join (`a08`, `o11` - a local of the join block itself);
  - a constructor argument naming the list (`a09`); a conditional (`a10`); a match (`o14`);
  - a parameter's own store and declared first (`o07`, `o07b`);
  - a borrowed result `P&h` given `mkp&h(...)`, direct and declared (`o08`, `o08b`);
  - a generic, a method (`o12`, `o13`);
  - SPEC's own `rec, next := mk2&rows(k)` example (`a13`), and destructured results assigned to existing locals
    (`o15`);
  - returning a scoped call naming a parameter (`a12`, an obligation).
- **Claim 3a.** `AnyItemNew` is one pure function that lowering asks with and without a plan. Every disagreement left
  goes through A or B, never through the predicate itself.
- **The previous review's reproducers** (`prev/`, run on 0c37adb into `prev-new.log`) are fixed:
  - c03, c03b, c03c, c03d agree in all modes;
  - c04 and its kinds copy;
  - c04c, c04g, c04i, c04j, c04k, c04m are refused;
  - a02 and a04 are refused (T32);
  - m05 is one error, and m08 compiles and runs;
  - x01 and x01b are refused (T7a);
  - x02 types.
- **Claim 7.** `type Grid extends Array<Rows>` (Rows over an array), `type Grid2 Array<Array<I64>>` and `Grid3 extends
  Array<String>` are refused. `Array<Array<I64>&>` is accepted.

## Fuzzers

Both fuzzers ran on 0c37adb, on fresh seeds, and found nothing. Logs: `scopefuzz1.log`, `fuzz2.log`.

- **Scope fuzzer** (`fuzz_fuzz.debug scope`), 1,000 programs:

  | seeds | scenarios each | run | refused | findings |
  |---|---|---|---|---|
  | 20000-20399 | 12 | 1,756 | 3,044 | 0 |
  | 21000-21599 | 20 | 4,422 | 7,578 | 0 |

  Its scope-argument shapes are the third review's (a node built `&t` stored outward or pushed, `putRet`'s
  `&return`, `Lab(mkText&t(..))` boxed). It writes no scoped call whose array value is returned (A), and no second
  name of a returned local reached through a reference local, a call or a long chain (B).
- **Differential fuzzer** (`fuzz_fuzz.debug run`), seeds 31000-31199: 200 programs, 6,000 cases, every global baked
  while compiling. No findings. It writes neither anys nor scope arguments.

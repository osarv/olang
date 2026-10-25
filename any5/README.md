# Fifth review: the fourth `any` fix round, wt-any 0c37adb -> d4ed05d

A read-only soundness review of `git diff 0c37adb d4ed05d`. It covers the round's A (scoped array results are
existing storage), B (`Plan.RetSole`, a whitelist that replaces RetCopy) and decision 1 (`AnyItemNew` takes an
unscoped call's array for new storage), with C, D and E alongside.

**Compilers.** `/home/user/wt/rvany5/build/olang` was bootstrapped from d4ed05d and `/home/user/wt/rvany5-old/build/olang`
from 0c37adb. Both worktrees are removed at the end; to run a reproducer, bootstrap a compiler and pass it.

**How to run.**
- `./run.sh NAME OLANG [SUFFIX]` joins `repro/NAME.olang` with `common.inc` (`say` and `churn`, as in any4) and runs it
  three ways: `build -debug -sanitize`, a plain build (-O3) and `interpret`. The output goes to `repro/NAME[SUFFIX].out`.
  `-d DIR` takes the file from `DIR/` instead.
- `./runold.sh NAME [OLANG]` does the same with the 0c37adb compiler, into `repro/NAME.0c37adb.out`.
- `./runall.sh OLANG [SUFFIX]` prints one line per reproducer: `runall-new.log` for d4ed05d, `runall-old.log` for
  0c37adb.
- `held/` holds the probes that found nothing; `held.log` has their results.
- `bat/` (callees keeping a borrow of a returned local) and `vb/` (callees returning an array value, boxed in a `mut
  any`) are batteries. Each has a `gen.sh` that writes it and a `batrun.sh OLANG`; the results are in `bat.log` and
  `vb.log`.

**Tags.**
- "New" means 0c37adb behaves correctly. "Older" means 0c37adb does the same.
- CONFIRMED means reproduced under `build -debug -sanitize`, a plain build and `interpret`, unless noted. PLAUSIBLE
  means traced but not reproduced.

## Findings, most serious first

### 1. CONFIRMED use-after-free (NEW, the round's D): a spawned call given a scope argument stores its array into the target as it is

D made `spawn z = mk&u(i)` a call. For a target holding a reference, it is judged as the same call declared first, and
that judgment holds: any4's `d1` is O25. For an array value holding nothing (text, numbers), the scope pass judges it
as the assignment `z = mk&u(i)`. That assignment is correct, because lowering copies a scoped call's array into a
value target (A, `copiesArray`).

The task does not copy. `lower.spawn` hands the target places to the task (`F.AddTask(..., places, ...)`), and the
task stores the call's result into them unchanged. That result lives where `u` lives. A target declared outside
`u`'s block therefore names freed storage once that block closes.

| reproducer | shape | result |
|---|---|---|
| `n01_spawnscopedtarget` | `z := ""` outside a loop; in the body `u := "inner" $i`, `join { spawn z = mk&u(i) }`; after the loop read `z` | `-d -s`: use after scope closed (134). -O3: garbage. interpret: "uses storage after the scope it was made in closed". Beside it, `w = mk&u(i)` gives `mk2-14`, correct. |
| `n02_spawnscopedforms` | one of several results (`spawn a, n = mk2&u(i)`), a catch default (`spawn b = try mkf&u(i) catch default "dflt"`), an array of numbers (`spawn c = nums&u(i)`) | all three use freed storage (`c` reads the churn's `777`s) |
| `n02b_spawncontrol` | the same three spawns without the scope argument | correct |

On 0c37adb every one of these is "'spawn' takes a call".

A task given a scope argument naming the spawner's local, beside the spawner building there, is clean under `-race`
(`held/n03`). The stand-ins hold.

**Suggested fix:** a task whose call is a scoped call with value-array results should copy each such result into its
target's own storage on the task's thread, as `copiesArray` does for an assignment. The alternative is to judge the
target as existing storage stored into it, which O25 would then refuse.

### 2. CONFIRMED value semantics and compile-time/run-time disagreement (older; the round's whitelist does not close it): RetSole's `canKeep` misses a parameter that shares another's scope

`soleArray` lets the returned local be "lent to a call whose settled facts say it keeps nothing of it" (`canKeep`).
`canKeep` sees keeping only through four things: a result borrowed from the argument (`ResultFrom(fty, 0)`), the
callee's obligations (`Rels`), derived scopes, and constructors.

A parameter declared to share another parameter's scope - `x String&l` or `x String&h`, or the container side written
`l mut List<String&>&x` - can be stored into that parameter with **no obligation**: the signature already says they
are one scope. So `canKeep` answers "keeps nothing", the local is returned uncopied, and the caller's value and the
list's element are one storage.

The compile-time evaluator copies every returned `Read`. So the program and its baked globals disagree, and an assert
decided while compiling is dropped while the same comparison fails at run time.

| reproducer | the keeping call | run time | baked |
|---|---|---|---|
| `s03_sharedscope` | `fn tie(l mut List<String&>&, x String&l) I64 { l.Push(x) ... }`, then `tie(keep, s); return s` | `keep ["Qbc1"]` (one storage with `v`) | `keep ["abc1"]` |
| `s03b_sharedscopeassert` | s03, asserted: `assert probe(1) == "abc1"` is decided true while compiling, and `assert r == "abc1"` fails at run time | abort 134, every mode | |
| `s04_sharedreceiver` | a container's natural method `fn (h mut Holder&) Add(x String&h)`, and `fn tie2(x String&, l mut List<String&>&x)` | `["Qbc1", "Ref1"]` | `["abc1", "def1"]` |
| `s05_sharedany` | s04 through an any: `b mut any W& = Lab(f(h, i)); b.Bump()`. AnyItemNew holds the call's array as it is, so the box writes the list's element | `keep ["Zbc1"]` | `keep ["abc1"]` |
| `bat/k06_slice` | `h.Add(s[0:2])`: a slice of the local, lent the same way | `["Qb"]` | `["ab"]` |
| `bat/k08_method` | `fn (x String&) AddTo(h mut Holder&x)`, then `s.AddTo(h)` | `["Qbc1"]` | `["abc1"]` |

In every case interpret agrees with the run time; it computes its globals with the plan.

0c37adb gives the same results: the third round's flow missed it too. So this is older. But it falsifies what the
round now states:
- SPEC T7b lists "handed to a method on another value" among the uses after which the local is copied, and `h.Add(s)`
  is exactly that.
- SPEC T7b says "Which of the two a return is never changes what the program computes: the compile-time evaluator,
  which always copies, gives the same value."
- Decision 1 relies on B in the same way.

Caught, by contrast:
- a callee storing through an obligation (`k01_set`);
- an obligation passed on through a nested shared call (`k02_nestedshare`, `Exact` rel);
- a generic container (`k03`);
- a constructor (`k07`);
- a deferred push (`k11`: copied, a defer is pending);
- a generic's by-value parameter kept or captured (`k09`, `held/s02`: O10c and O10d refuse them);
- a reference local, a handle's copy, an element's method, long borrow chains, a destructor holder (any4's
  `b1`-`b5`, all fixed: `prev/`).

**Suggested fix:** `canKeep` should answer true when `ShareOf(fty, j) >= 0` and is not `j`, when any other parameter's
`ShareOf` is `j`, and when `ResultFrom(fty, k) == j` for any result `k` (see 6). The surer route is to ask the
callee's own region facts (`Keeps`/`Stores`/`Puts`) for parameter `j` as well as its obligations.

### 3. CONFIRMED use-after-free, writes to an immutable global, and decision 1's premise false (older): a conversion of a value place to a type declared over `String` names its storage, and nothing copies it

T29a: "a value declaration from it copies as any value declaration does (T7b)", and a reference made from a conversion
borrows. The checker's place path for a conversion (check.olang:9373) requires
`c.P.T.KindOf(base) == types.Kind.Array`, where `base := c.P.T.Base(t)`. For `type Lab extends String`, `type Path
String`, or `Lab3` over `Lab`, the base is a **declared** array type, not an `Array`. So the path is skipped and the
conversion becomes `Prim Convert(Read(place))`, a value naming the place's storage. No pass treats that form as
existing storage:
- `lower.copiesArray` counts a Convert only of a dereference or of a scoped call, so it does not copy at a return, a
  declaration or an assignment;
- `Scoper.returnedArrays` takes only a `Read`, so O26a does not move the local either.

`type Lab2 extends Array<Char>` takes the place path and is correct throughout (`e01b_control`, `held/c03`, `held/e04`).

| reproducer | shape | result |
|---|---|---|
| `e01_returnconvlocal` | `fn convloc(i I64) Lab { s := "abc" $i ...; return Lab(s) }`, the results kept in an outer `List<Lab&>` | `-d -s` 134; -O3 garbage (`x` blank); interpret "uses storage after the scope it was made in closed" |
| `e03_convcondtuple` | `return Lab(s) if c else Lab(u)`, a value match, a catch default, one of several results (`return Lab(s), i`) | the same, all four (no `newarray` before the `return` in any of their MIR) |
| `d04_boxconvreturn` | decision 1: `xs.Push(convloc(i))` into a `List<any Named&>`. AnyItemNew holds the call's array as it is, and that array is the callee's freed frame storage | 134 / garbage `lab lab la` / interpret stops |
| `e02_returnconvglobal` | `fn cg() Lab { return Lab(G) }`, `G` an **immutable** global: `y := cg(); y[0] = 'Q'` changes `G` (`G Qlobal`). `b mut any W& = cm(); b.Bump()` writes the mutable global `M` through the box | every mode alike |
| `e07_convdeclassign` | `x := Lab(s); x[0] = 'Z'` changes `s` (should copy). `y = Lab(t)` with `t` an inner block's local leaves the outer `y` naming freed storage | `s Zbc1 x Zbc1`; then 134 / garbage / interpret stops |
| `e07b_convborrow` | the other half: `wr(Lab(s))` with `wr(l mut Lab&)` writes a **copy**, so `s` is unchanged, where T29a says it borrows. Over `Array<Char>` both halves are right | `s aXc` over String, `t Wbc` over Array<Char> |

All of these are the same on 0c37adb. A conversion of a reference is typed `Read(Deref(Convert(ref)))` and is copied
(`held/c03`). So are a conversion of a lambda's capture, a struct's fixed field through a reference, and a fixed
local (`held/e04`). A push of `Lab(s)` copies (`held/e05`).

**Suggested fix:** in check.olang:9373 compare `c.P.T.KindOf(c.under(base))`, or the base's `Repr`, so that every
declared array base takes the place path. Defensively, `copiesArray` should also recurse into a Convert's argument,
and `returnedArrays` should look through one.

### 4. CONFIRMED compile-time/run-time disagreement (older): the evaluator does not copy a returned conditional, match or catch default of existing arrays, and the run time does

Without a plan (while compiling), `retArrays` copies only where `ln.copiesArray(value, res)` holds of the **whole**
returned expression. `copiesArray` of a `Cond`, a `Match` or a `Try` is false. The planned path asks `retCopies`,
which looks inside each value. A tuple's parts go through the same `copiesArray` without a plan.

So `fn pick(p String&, q String&, c Bool) String { return p if c else q }` returns the caller's own array while
compiling, and a copy at run time.

| reproducer | result |
|---|---|
| `k01_evalcondreturn` | conditional, match, catch default: run `cond1 match1 dflt1`, baked `Qond1 Qatch1 Qflt1` (the caller's local written through the "copy") |
| `k01b_evalcondassert` | `assert probe(1) == "cond1"`, true at run time, is "this assertion is false, evaluated while compiling": a correct program is refused |
| `vb/v11_cond`, `vb/v12_matchbind` | the same through an any's box: baked `src ZQc1 b ZQc1 x ZQc1`, run `src abc1 b Zbc1 x aQc1` |

These are the same on 0c37adb. They contradict the round's SPEC T7b ("the compile-time evaluator, which always
copies") and the comment in `retArrays`.

**Suggested fix:** without a plan, decide each returned value (and each tuple part) by `retCopies`'s recursion,
without its home and RetSole test.

### 5. Over-rejection (NEW): a local a scoped call declares, kept where the argument put it, is refused

`madeHere` is now false for a scoped call's array (A), so O26a no longer moves such a local. But the scope pass then
treats the local's storage as its own block, though lowering keeps it where the scope argument built it. The two forms
below are refused with O10c. The note even proposes `x mut String&keep = ...`, which is what `mk&keep` already says.

| function (`o01_scopedreturnforms`) | d4ed05d | 0c37adb |
|---|---|---|
| `x := mk&return(i); keep.Push(x); return x` | O10c | accepted, runs correctly (the caller's copy is its own) |
| `x := mk&keep(i); keep.Push(x); return x` | O10c | accepted, runs correctly |
| `return Lab(mk&return(i))`, and `x := mk&return(i); return x` | accepted | accepted |

**Suggested fix:** a value local declared from a scoped call takes the scope the argument names as its storage's home,
as a reference local declared from one does.

### 6. PLAUSIBLE (older): `canKeep` and E25's `borrowedResult` read only the first result

Both read `ResultFrom(fty, 0)`. A call whose second or later result is borrowed from the argument
(`fn two(a I64, x String&) I64, String&x`) is taken to keep nothing of it.

Every program I wrote that would keep such a result beside the returned local is refused earlier: the scope pass
places a destructured borrowed part in its declaring block (`held/s01`, O10c and O25; `held/s06`, C2d). So the
`canKeep` gap is not reached. E25 accepts a scope argument on `two` (`held/a05`), and the uses are refused after.

### 7. Older deviation from B3e: `interpret` does not report section 8's errors

SPEC B3e: "The program is analyzed exactly as under build ... and every compile-time error is reported the same way."
But `interp.Exec.Place` forgets the scope pass's diagnostics (`d.Forget(mark)`). Its comment gives "stage 0's checker
reports section 8's" as the reason, and stage 0 has been removed.

So every O10c, O25 or C2d program above that the build refuses is run by `interpret`. For example `held/s01`,
`held/s02`, `held/a01`, and any4's `o1`-`o4`. It is the same on 0c37adb.

## Held: no finding

- **A, scoped arrays.**
  - Every reproducer of any4 is fixed, with run and baked agreeing (`prev/`, d4ed05d): `a1`-`a10`, `b1`-`b5`, `c1`,
    `d1`, `d2`.
  - A scoped call's array holding references (`Array<String&>`) is refused as O26 wherever it is returned (directly,
    through a local, converted), and as T32a when boxed outward (`held/a01`).
  - A reference local from a scoped call is refused (`held/a03`, O10d).
  - A scoped call through a function value is copied at returns, boxes and stores (`held/a02`, `held/a06`).
  - E25 refuses a generic identity bound to a reference (`held/a04`).
  - A store into a scoped `&return` local of a block's text moves the text (`held/a07`).
- **Decision 1: an unscoped call's array held by a box lands where the box does.**
  - In a loop body boxed into an outer list and read after a churn (`held/d01`): through a local the callee moved
    (O26a), a slice copy, a nested call, a conditional of calls, a catch default, a match.
  - A comprehension, written text, a fill, a literal and a conditional of them (`held/d05`).
  - A callee whose result scope must outlive an argument is refused when boxed in a shorter block (`held/d03`).
  - Through the `vb/` battery, every callee form other than findings 3 and 4 returns new storage: a list element, a
    map value, a reference field, a generic's argument (value and reference), a lambda's parameter or capture, a slice
    of a borrowed result, a global, `Trim`, an `as` payload, a Vec element, a for-in element, a destructured result.
    Each keeps its source unchanged in every mode.
  - `a as Lab` of a closed `any` (`held/e06`), a static literal (`held/e04`) and the prelude's `StringFromC`
    (`held/e08`) copy.
- **B.** Apart from finding 2, the whitelist rejects everything in `bat/`, as listed there.
- **C.** A by-value receiver's closure through an `any` works (`held/c01`). A struct holding `fn() G` is refused at the
  call, like `fn() G` itself.
- **D.** A reference target is still O25 (`prev/d1`). Tasks building into the spawner's scope are clean under `-race`
  (`held/n03`). Targets read while the scope argument's local lives are correct (`held/d02`).
- **E.** The scope-argument errors are given as SPEC says (`prev/d2`).
- **Fuzzers.**
  - The scope fuzzer on fresh seeds: 7000-7299, then 7300-8499 (1,200 programs, 7,241 scenarios run, 7,159 refused),
    then 10000-11999, all with 0 findings (`scopefuzz*.log`).
  - The differential fuzzer: seeds 9100-9249 (150 programs, 4,500 cases, every global baked), 0 findings.
  - The generators produce none of the shapes above: no shared-scope parameter, no conversion of a value place to a
    type over `String`, no `spawn` of a scoped call, and no returned conditional of parameters compared with a baked
    global.

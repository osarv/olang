# own phase 2a - soundness review (rvown3 @ 079921e)

Compiler: `/home/user/wt/rvown3/build/out`. Phase commits reviewed: 6b85fa7, b50019d and e51d719 on top of ffd4f53.
Oracles: `-b -s` (scope sanitizer), plain `-b` after a churn, valgrind on an `-a x86-64-v3` build, `-i`, destructor
counters. Reproducers are in `repro/`. The script that runs every oracle is `scratch/run.sh FILE [noval]`.

## CONFIRMED

### F1 - lending a whole own-array borrow lets a callee build element referents in the buffer's region (use-after-free)

Reproducers:
- `repro/f1_ownarr_callee_builds_in_region.olang`: a function `fill(a mut Array<String&>&) { a[0] = $7 "..." }`, and
  the same through a generic `setFirst(a mut Array<<T>>&, v T)`.
- `repro/f1b_ownarr_lambda_task_build_in_region.olang`: a lambda capturing `nm := b.names`, and `spawn fill(b.names)`.
- A nested `h.c.names` behaves the same.

The program: `fill(b.names); e := b.names[0]; b.names = Array<String&>(1); churn(); println(e)`.

| oracle | f1 | f1b |
|---|---|---|
| `-b -s` | `use after scope closed`, abort 134 | the same |
| `-b` | `1999abcdefghijkl` / `1999abcdefgh` (churned bytes) | `1999abcdefg` (lambda); the task line happened to print |
| valgrind | clean (arena memory) | clean |
| `-i` | `7built-by-callee` / `5via-generic` | `5via-lambda` / `7built-by-task` |

Root cause:
- An index read through a borrow of an own array is retagged to the slot's reach E, in `operandIndexAt` and in
  `RefExactScope`'s INDEX case. The retag assumes that element referents live where a plain array in that slot would
  keep them, that is, in E.
- That only holds for elements built by the reading function itself.
- When the whole borrow is lent, the callee's implicit scope `&a` is bound to the borrow's scope, which is the buffer's
  region. The same holds for a lambda capture's scope and a task's stand-in, which folds into the region.
- So what the callee builds into `a[i]` lives in the region and is freed with the buffer, while the retagged `e` lives
  on.
- The lent value is split: its storage is in the region and its referents are said to be in E. O17/O17a refuse
  exactly this shape for other split values.

Fix: either bind the scope through which elements are built to E when an own array is lent (and refuse a writable lend
otherwise, as O17 does), or drop the retag so that element reads live in the region.

### F2 - a reference to a borrowed copy's storage, kept by a callee, outlives the copy's loans (use-after-free)

Reproducers:
- `repro/f2_copy_ref_kept_by_callee.olang`: `b := v`, then `l.Push(b)`, then `put(g, b)` with
  `fn put(dst mut Big&, x Outer&) { dst.x = x }`, then `v.o = null`, then a read through `l[0]` or `g.x`.
- `repro/f2b_copy_captured_kept.olang`: a lambda capturing `b` is pushed into a `List<fn() I64>`.
- The same happens with `Map.Put(1, b)`, a method `g.set(b)`, and `keep(l, b)`.

| oracle | output |
|---|---|
| `-b -s` | `use after scope closed`, abort 134 (both) |
| `-b` | segfault 139 (both) |
| valgrind | `Invalid read of size 8 ... inside a block of size 96 free'd ... by __olang_own_free` |
| `-i` | `1 leaf5` / `1` and `5`, because the evaluator never frees |

Root cause:
- A borrowed copy holds loans on its source's own objects until its last use.
- Holders gain loans only through `ownHold` (declarations) and `ownHoldMore` (assignments and stores).
- A call that keeps the argument (its body's obligations say that `x` outlives `dst`'s referent, or it pushes or
  captures it) makes another local's referent hold a reference to the copy's storage. That storage holds the source's
  own pointers.
- The loans are not extended to that local, so `b`'s last use is the call, and `v.o = null` is accepted.
- Every direct derivation is caught: a typed reference local, `Holder(b)`, an array element store, `Pair`, a returned
  reference, and a lambda held in a local. Only the route through a call's keep-obligation is missed.

Fix: make a call that may keep a parameter holding a borrowed copy add the keeping argument's root as a holder, the way
ownHoldMore does for a store. Alternatively, refuse lending a copy's storage to a parameter the callee can keep.

### F3 - an owner held for an owning parameter, or a constructor's region, is lost when a later argument leaves (leak of regions and destructors)

Reproducer: `repro/f3_owner_arg_lost_when_later_arg_leaves.olang`. The shapes are:
- `take2(Leaf(1), try g())`
- `take2(take s.a, try g())`
- `take2(mkl(3), try g())`
- `take2(take s.a, try g() catch { break })`
- `s.a = Leaf(try g())`

| oracle | output |
|---|---|
| `-b`, `-b -s` | `made 4 dropped 0` (all four should be dropped) |
| valgrind `--leak-check=full` | 5 x `96 bytes in 1 blocks are definitely lost` |
| `-i` | refuses, because it runs no destructors yet |

Root cause:
- `cgCallTargetAndArgs`'s own branch computes an owning argument with `cgOwnValue` and keeps it in an SSA value until
  the call, with nothing registered for it.
- A later argument's error propagation, or a clause's `break`/`return`, leaves with nobody releasing the owner, so its
  destructor never runs and its region is never freed.
- Likewise `cgOwnNew` allocates a constructor's region before evaluating its arguments.

Fix: evaluate owning arguments after any argument that can leave, or register a temporary release on the way out.
Allocate the region after the constructor's arguments, or free it on their error paths.

### F4 - an owner local at a destructor's top level is released through a dead stack slot (use-after-return)

Reproducer: `repro/f4_dtor_owner_local_dead_slot.olang`. It uses `x := Box2(); x.l = Leaf(v)` and
`y own mut Leaf& = Leaf(v + 1)` inside a destructor, with 1000 chained owners released at a block's end.

| oracle | output |
|---|---|
| `-b`, `-b -s` | segfault 139 |
| valgrind | `Conditional jump or move depends on uninitialised value(s)` / `Use of uninitialised value` in `__olang_own_free` via `__olang_own_close` |
| `-i` | refuses, because it runs no destructors yet |

Root cause:
- Under C9a a destructor's top level registers on `%dscope`, the scope being closed. The emitted IR is
  `call void @__olang_scope_register_dtor(ptr %dscope, ptr %loc.20, ptr @__olang_own_drop_slot)`.
- `%loc.20` is an alloca in the destructor's own frame. The node runs only after the destructor has returned, so it
  reads a dead slot.
- A single release with nothing on the stack in between usually reads the right pointer by luck (d2/d3: valgrind
  errors, correct count).
- Owner locals in `defer` blocks and lambdas are correct (counts 26/22).

Fix: release a destructor's owner locals at the destructor's own exit, as for any function's locals, rather than
through `%dscope`.

## PLAUSIBLE

None.

## What held

- **Borrowed copies:**
  - Captured by a lambda held in a local, by a task, or by deferred code.
  - In loops and chains.
  - `take` or reassignment of the source while a copy is live.
  - A release through a method or parameter.
  - A release of a nested own field through a copy-derived borrow.
  - A generic trait `Clear`, and default methods.
  - A function value that releases is refused (O40).
- **Copy-out:** every route is refused. These are: return of a reference parameter, a typed copy-out, return of a copy,
  a generic `copyOf`, an enum payload, a tuple, a conditional or match, `List<Outer>`, an array literal, a lambda
  result, a by-value field, a global, a catch default, and a spawn target.
- **Root escape** of an owner value local's storage through a field, an array, a `List`, `Pair` or a constructor is
  refused: an ANY root meets LOCAL.
- **Release order in codegen** is correct for every case tested:
  - return of a constructor, and a constructor as a statement;
  - assignments;
  - `try` declarations and propagation;
  - early `return`, `break` and `continue`;
  - `take` as a statement and self-assigning `take`;
  - owned results as statements or assigned;
  - a constructor temporary as an argument;
  - a conditional return of owner values;
  - `defer` beside a returned value (e1-e15).
- **Owning parameters:**
  - Their reach and moves are checked. q10 and q12-q15 run correctly; q1-q6 are refused with O10c.
  - They are released on error, when moved and then an error follows, on a double `take`, and through recursion with
    owned results.
- **Vec-shaped code** (v1-v6) is refused or correct. Own arrays of own references are refused (T25e).
- **Evaluator:** the K2-baked values equal the run time and `-i` through `take` with a non-zero zero value, borrowed
  copies, owning parameters, `Clone` and own arrays (165 and 90750, three ways each).
- **Tasks:** a lambda building into a region from a task is clean under `-s` and TSan. A chain of 300,000 owners
  released through the bounded 256-deep release is correct and TSan-clean.
- **Earlier reviews:** every own1 and own2 reproducer is refused or correct.
- **Scope fuzzer, own mode:**
  - seeds 1-60: 255 run, 465 refused, 0 findings;
  - seeds 500-619: 499 run, 941 refused, 0 findings.
  - The fuzzer does not write F1-F4 shapes (no whole-array lends, no keeping calls on copies, no fallible later
    arguments, no owner locals in destructors). These are worth adding.

## Over-rejections (brief)

- a14: a release through `v.p` is refused beside a loan read through the copy `b.o`, because "beside" requires the same
  variable.
- p9: `$sumN(a)` and `take a` in one join.
- e15: `return a` of an owner value whose type has no zero value is D13c, because return is a take, which stores the
  zero.
- `try mkf() catch { }` as a statement with an owned result gives O37.
- h4: the reach check refuses moving a `Leaf` with text out of a value local.
- q6/r10: O10c where the text lives in an inner block (arguably right).

## Summary

The phase holds against everything aimed at borrowed copies, copy-out, take/release ordering, owning parameters, the
evaluator and tasks, and the own fuzzer is clean on 180 programs. Four confirmed bugs remain:
- **F1**: a use-after-free. Lending a whole own-array borrow lets a callee, lambda or task build element referents in
  the buffer's region, which the element retag then says live in E.
- **F2**: a use-after-free. A call that keeps a reference to a borrowed copy's storage does not extend the copy's loans.
- **F3**: a leak of regions and destructors. Owners held for owning parameters, and constructor regions, are dropped
  when a later argument leaves.
- **F4**: a use-after-return. A destructor's owner locals are registered on `%dscope` with a dead stack slot.

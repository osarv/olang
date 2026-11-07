# Soundness review of f9bd38c (decision 49, round 4)

f9bd38c was built in `/home/user/wt/rvstr4`. For comparison, two scratch worktrees were built and removed afterwards:

- e27b83b, round 3, called "r3" below;
- be042da, master with decision 50, called "master" below.

"new" means f9bd38c.

Every finding below was reproduced. The reproducers are in `repro/`. Each one starts with a comment giving what it shows
and what each build printed. The modes used were:

- `-b`;
- `-b -s`, the scope sanitizer;
- `-b -d`;
- `-b -r`, TSan;
- `-t`;
- `-i`.

## Summary

### What breaks

Two of the three areas the author singled out have holes.

**1. The may-build walk's new parametric half, `mbiMemo.deps`, is unsound in two ways, and its transient flag in a
third.**

- **C1/C2:** a function in progress reports deps of 0;
- **C7:** a callback parameter can be reassigned.

Each of these two lets Str build where its receiver lives (a use-after-free), and each hands a task the spawner's scope
raw (a data race, wrong answers).

- **C5:** the transient flag leaks into the body walks it triggers. This gives an internal compiler error rather than a
  silent miss, and it does so on an ordinary concurrent program that has no Str at all.

**2. Two build sites added since round 3 are not in the walk or in the stand-in decision:**

- **C4:** a task's catch default, which is built in the call's result scope;
- **C9:** the same default reached from a Str.

**3. The builder header made off the stack (N8's fix) breaks the test unwind chain (C6).** The node of a builder that
first grows inside a render helper outlives the helper's own node, so after the rendering the chain points into a dead
frame. A failing assert later in that test hung the test binary.

**4. o3, which puts a Call adapter in the frame, is unsound (C8).** It extends a pre-existing hole (PE1): a parameter
"kept by nothing", judged by obligations, can be handed to a function value that keeps it.

**Not closed from earlier rounds: C3.** A callback handed elements read through a `&p` field builds where the receiver
lives unseen by the walk. Its root is PE2, a pre-existing use-after-free with no Str involved.

### The consequence of round 4

Round 4 hands the receiver's variables a real scope, the one `$` opens. Every build the walk misses therefore lands in a
real scope that closes once the text is copied. A missed build is now a silent use-after-free. In rounds 2 and 3 the
receiver's variables were handed null, and a missed build was a segfault.

- `-i` prints the right answer in every case, so the evaluator and the run time disagree.
- The internal-error check (`SemanticReliesNoBuild`) never fires, because the building callback is never asked about,
  so there is no memo for it to check.

### What held

Item 2, a local lambda kept in the frame, held. Every use tried was either a call or marked the local escaping:

- `defer`;
- a conditional, a match, `try`, a catch default;
- `$`, `is`, an assert;
- comprehensions;
- a lambda passed to the local;
- every spawn form, including decision 50's clause and target forms;
- generic instantiations that use the local differently.

Also held:

- G9d's meet: order-independent in every probe, with no permission laundering through inner levels or callbacks;
- T25d identity: three modes and the baked globals agree;
- the str1, str2 and str3 reproducers;
- 700 scope-fuzzer programs (4,971 scenarios run), with no findings - the generator does not reach the shapes above.

## CONFIRMED - introduced by f9bd38c

### C1. A call cycle reads the in-progress function's deps as 0 (use-after-free)

Code: `mbiCall` (semantic.c:11373), `mayBuildIntoRaw` (semantic.c:11668).

Repros: `c1_cycle_deps`, `c1b_selfrec_deps`.

```
fn rec(g fn(x mut Node&), n mut Node&, c I64) {
    if c > 0 { rec(fn(x mut Node&) { x.next = Node(x.v + 100) }, n, c - 1) }
    g(n)
}
fn (b Bag&) Str() String {
    rec(fn(x mut Node&) { }, b.head, 1)
    ...
```

Here is how the walk reaches its answer:

1. `mayBuildIntoRaw` on a memo in state 1, one being followed, returns false.
2. `mbiCall` then reads `mbiDepsOf(f, w)`. That is the in-progress memo's `deps`, which is still 0, because it is only
   stored when the walk of that body ends.
3. So the callback the recursive call passes, the building lambda, is never asked about.
4. `rec` settles as "no, deps = {g}".
5. Str's non-building argument is the only callback checked, and Str is accepted.

At run time the inner lambda builds `Node(101)` in the scope `$` opened for the call. It is reclaimed once the text is
copied, and the receiver's node keeps a pointer to it.

| | new `-b` | new `-b -s` | new `-i` | r3 | master |
|---|---|---|---|---|---|
| c1, a two-function cycle | `b1` / `200 0` | `use after scope closed`, exit 134 | `b1` / `101 0` | error[E11c, O12] | error[E11c] (purity) |
| c1b, self-recursion | `b1` / `100 0` | `use after scope closed`, exit 134 | `b1` / `101 0` | error[E11c, O12] | error[E11c] (purity) |

`-b -d` gives the same as `-b`.

The re-ask loop in `settleTaskStandins` does not repair this:

- it re-asks only memos left in state 0, the cycle members;
- the head, which settled in state 2 on the wrong assumption, is never revisited;
- nor is any Str or task callee that read the head's answer.

Treating an in-progress callee as depending on every function-typed parameter it has would close this. So would
iterating the cycle until its deps stop changing.

### C2. The same miss hands a task the spawner's scope raw (data race, wrong answers)

Repro: `c2_cycle_deps_task_raw`.

`cc(n)` calls the cycle `ca` and `cb` from C1. `settleTaskStandins` finds that `cc` builds nothing into `n`'s scope, so
four tasks, each with its own node in one block, are handed that block's scope with no stand-in. The lambda `cb` passes
then allocates there from every task thread at once.

| Build | Output (expected `4200`) |
|---|---|
| new `-b`, five runs | `4325`, `4281`, `4368`, `4364`, `4331` |
| new `-b -r` | ThreadSanitizer: data race in `__olang_scope_alloc_a`, from `lambda$1` <- `ca` <- `cb` <- ... |
| r3 and master | `4200` every run |

### C7. A reassigned callback parameter (use-after-free in a Str, data race in a task)

Repros: `c7_reassigned_callback_param`, `c7b_reassigned_callback_task`.

```
fn hook(g fn(x mut Node&), n mut Node&) {
    g = fn(x mut Node&) { x.next = Node(x.v + 100) }
    g(n)
}
```

`mbiOwnFnParam` identifies the call through `g` as "whatever is passed for parameter 0". But a parameter is the callee's
own copy and is always assignable (D9). The assignment `g = lambda` is no build site, since the lambda captures nothing.
So `hook` settles as "no, deps = {g}", and a caller passing a non-building lambda is accepted.

| Repro | new `-b` | new `-b -s` | new `-b -r` | new `-i` | r3 | master |
|---|---|---|---|---|---|---|
| c7, in a Str | `b1` / `100 0` | `use after scope closed`, exit 134 | | `b1` / `101 0` | error[E11c, O12] | error[E11c] (purity) |
| c7b, task callee `cc(n) { hook(fn(x mut Node&) { }, n) }`, expected `4200` | `4234`, `4272`, `4214`, `4225` | | data race in `__olang_scope_alloc_a` (`hook`) | | `4200` | `4200` |

A conditional reassignment, `if c > 5 { g = INNER }`, behaves the same. It is the `condre` shape in the generators
below.

### C4. A task's catch default is built in a raw result scope (data race, wrong answers)

Repro: `c4_task_clause_default_raw`.

```
fn f(i I64) mut Node& ? Odd { if i >= 0 { error Odd.NO }  return null }
...
join { for i in range 16 { spawn out[i] = try f(i) catch default Node(i + r) } }
```

The clause runs on the task's thread and builds its default in the call's result scope. `cgTaskCallClause` is handed
`argVal[op->cgTaskResultArg - 1]`, the same scope argument the call gets.

Whether that argument is a stand-in is decided by `SemanticTaskBuildsInto(f, resultScope)`, which asks only `f`'s body.
`f` never builds its result: it errors, or returns `null`. So sixteen tasks build their defaults in the spawner's scope
with no lock.

| Build | Output (expected `1324800`) |
|---|---|
| new `-b` | `1324792`, `1324800`, `1324802`, `1324801`, `1324789` |
| new `-b -r` | data race in `__olang_scope_alloc_a`, from `lambda$1` <- `olang.task.13` <- `__olang_worker_loop` |
| master | `1324800` every run (a stand-in for every binding) |

The same applies to a default that registers a destructor, and to `catch default mk(i)` for a call that builds its
result. The stand-in decision has to count the clauses' defaults, or always make one for the result scope when a clause
gives a default.

### C9. The same default reached from a Str (use-after-free)

Repro: `c9_str_spawn_clause_default`.

```
fn (b Bag&) Str() String {
    join { spawn b.head.next = try f(b.head) catch default Node(b.head.v + 100) }
    ...
```

The default is built where the call's result lands, which is the target, the receiver's node. But `mbiStmt`, under
`STATEMENT_SPAWN`, walks each clause's `dflt` with `tgt = false` and never asks where it lands. The R9a placement that
`mbiOperand` applies to a try's own `catchClauses` is not applied here.

| new `-b` | new `-b -s` | new `-i` | master |
|---|---|---|---|
| `b1` / `100 0` | `use after scope closed`, exit 134 | `b1` / `101 0` | refused (purity) |

r3 predates decision 50.

### C5. `mbiTransient` leaks into the walk of the lambda's body (internal compiler error, without any Str)

Repros: `c5a_transient_leak_str_ice`, `c5b_transient_leak_task_ice`.

```
fn apply(f fn() I64) I64 { return f() }
fn work(n Node&) I64 {
    return apply(fn() I64 {
        h := fn() I64 { return n.v }
        t := h is h            # h escapes, so it lives where n does
        return h() if t else 0
    })
}
... join { spawn x = work(n) }
```

1. In `mbiCall`, the argument loop sets `mbiTransient = true` for a capturing lambda passed to a callee that keeps
   nothing of it.
2. `mbiOperand` on that lambda then asks `SemanticMayBuildInto(lambda, capture)`, which walks the lambda's body.
   `mayBuildIntoRaw` saves `mbiV`, `mbiF`, `mbiFound`, `mbiLow` and `mbiDeps`, but not `mbiTransient` (nor
   `mbiInSpawn`).
3. Inside the lambda's body the inner closure `h` really is built where its capture lives. But the check
   `!mbiTransient && !op->cgEnvOnStack && ...lambdaHome...` is skipped, so the lambda's memo is "no".
4. That memo is cached and relied on, and codegen's `cgCheckMayBuild` then stops the compiler.

| | new | r3 | master |
|---|---|---|---|
| c5b, task callee, no Str | `olang: internal compiler error: 'lambda$1' builds where '&n' lives, which the checker's walk ... found it never does` | `4` | `4` |
| c5a, in a Str | the same internal error, for `&b` | error[E11c, O12], with the right "built here" note | error[E11c] (purity) |

`settleTaskStandins` asks the walk of every spawned call, so c5b is an ordinary program that compiled on master.

The leaked flag only hides closures, and each one it hides is caught later by the holding check. So this was always a
compiler crash, never a silent miss, in what was tried.

`mbiInSpawn` leaks the same way. That only makes answers more conservative, which is an over-rejection, and it is
memoized.

### C6. The builder's off-stack header corrupts the test unwind chain (test binary hangs)

Repro: `c6_builder_unwind_dead_node`, run with `-t`.

`rdPutStr` (codegen.c:4948) runs inside a render helper `@olang.rdb.T`. It works like this:

1. It opens a scratch scope for Str's receiver and pushes that scope's node on `@__olang_unwind_top`.
2. It calls Str and copies Str's text into the builder with `__olang_sb_put`.
3. If that copy is the builder's first growth past its 64-byte room, `__olang_sb_scratch` pushes the builder's node
   above the helper's node, with `prev` = the helper's node.
4. `cgScratchScopeClose` then stores the helper's own `prevTop`, which drops the builder's node from the chain.
5. The helper returns.
6. `__olang_sb_done` later sets `@__olang_unwind_top = blk->prev`, which is the helper's dead stack slot.

Until the enclosing block exits, a failed check, `done` or `fail` walks that slot. `__olang_unwind_to` reads its join,
scope and prev fields from whatever overwrote the dead frame.

In c6, a test renders `$Bag(1)` (Str gives about 100 bytes), calls `noise(50)`, then fails an assert:

| | Result |
|---|---|
| new `-t` and `-t -d` | the test binary hangs. gdb shows `__olang_task_wait` <- `__olang_join_tasks` <- `__olang_unwind_to` <- `__olang_check_end` <- `olang.tests` (at the failing assert), waiting on a garbage task list |
| r3 | `FAIL - renders then fails`, `ok - after`, `1 passed, 1 failed` |

What happens depends on the stack's contents. Other layouts tried, `done` in place of the assert or the failure inside a
callee, happened to pass. Another stack layout could instead hand `__olang_scope_close` a garbage scope pointer (not observed).

Two more effects:

- Outside tests nothing walks the chain, so this is test builds only. `-r`, `-b` and `-d` are unaffected.
- **Leak, minor:** a test abandoned after the builder grew reclaims the builder's chunks, if its node is still on the
  chain, but never frees the 72-byte `malloc` block.

Pushing the builder's node at the point where the builder is created would restore LIFO order; that is where round 3's
stack header sat. So would linking it below any scratch node that is open.

### C8. A Call adapter in the frame (o3) is kept through a function value (segfault)

Repro: `c8_frame_adapter_kept`.

```
fn (k mut Keeper&) Call(x fn() I64) { k.kept = x }
fn keepVia(s fn(x fn() I64), g fn() I64) { s(g) }
fn fill(c Ctr&, kp mut Keeper&) { keepVia(kp, c) }
```

1. `SemanticParamTransient(keepVia, 1)` is true, because no obligation names `g`'s scope.
2. So o3 makes `c`'s adapter object in `fill`'s frame. The IR has `%t114 = alloca { ptr, ptr }` in `fill`.
3. `keepVia` hands `g` to `s`, a Keeper adapter whose `Call` stores it. A call through a function value records no
   obligation.
4. After `fill` returns, `kp.kept` points at a dead stack slot.

| new `-b -d` | r3 `-b -d` | master `-b -d` | `-i` |
|---|---|---|---|
| segfault | `11 0` | `11 0` | `11 0` |

The lambda form of the same thing is pre-existing (PE1). o3 adds a new way in that needs no lambda.

## Not closed from earlier rounds

### C3. A callback over elements read through a `&p` field (use-after-free in a Str, since round 2/3)

Repro: `c3_str_callback_elements_through_p_field`.

```
type View struct(ns Array<mut Node&>&) {
    at Array<mut Node&>&ns = ns
}
fn visit(w View&, g fn(x mut Node&)) { for x in w.at { g(x) } }
fn (b Bag&) Str() String { visit(View(b.ns), fn(x mut Node&) { x.next = Node(x.v + 100) }) ... }
```

The walk never sees the callback's build. The element's scope is a derived scope (O23a) resolved to the view's, not to
the receiver's. This is PE2 below, reached from a Str.

| new and r3 `-b -s` | new `-b` | `-i` | master |
|---|---|---|---|
| `use after scope closed`, exit 134 | `b3` / `99 0` | `b3` / `103 0` | refused (purity) |

The prelude's `ListIter.Fold` over a `List<mut Node&>` that the receiver reaches does the same:
`b.l.Iter().Fold(0, fn(acc, x) { x.next = Node(...) ... })` is accepted, and is a use-after-free under `-s` on new and on
r3.

## PRE-EXISTING (master be042da as well)

### PE1. A Call adapter may keep its function-typed argument

Repros: `pe1a_transient_lambda_kept_by_adapter`, `pe1b_adapter_keeps_closure_past_block`.

T22a refuses a lambda that keeps its parameter beyond the call ("which a call through a function value cannot check").
But a `Call` adapter whose `Call` stores its function-typed argument fits the same function type.

**pe1b.** A closure over a block-local node is kept past its block.

| new and master `-b -s` | new `-b -d` | `-i` |
|---|---|---|
| `use after scope closed`, exit 134 | `101 0` | `11 0` |

**pe1a.** `SemanticParamTransient` reads only obligations, and takes a parameter handed to a function value to be "kept
by nothing". So a capturing lambda passed to `keepVia(s, g)` gets its environment in the caller's frame, and the keeping
adapter stores it.

| Build | `-b -d` | `-b` |
|---|---|---|
| new | `18 0` | garbage text |
| master | `18 0` | |
| r3 | `300 0` | |

`-i` prints `20 0`.

C8 is o3's version of pe1a.

### PE2. A reference copied out of a `&p` field is built through in the wrong scope

Repro: `pe2_derived_copy_build`.

```
fn grow(x mut Node&) { x.next = Node(x.v + 100) }
fn visit(w View&) {
    x := w.at[0]
    grow(x)
}
```

- `grow(w.at[0])` is refused with C2d: "builds through a '&p' field whose scope is not known".
- The copy into a local is accepted, and so is a for-in element, as in C3. The node is then built in the view's own
  scope (`work`'s block), not where the element lives.

No Str is involved:

| new and master `-b -s` | `-b` | `-i` |
|---|---|---|
| `use after scope closed` | `100 0` | `103 0` |

### PE3, an over-rejection. Folding a List of Lists

Repro: `pe3_fold_list_of_lists_refused`.

`ls.Iter().Fold(0, fn(acc, l) { return acc + l.Len() })` over a `List<List<I64>>` is refused with C2d, "builds through
a '&p' field", inside `list.olang`'s `f(acc, x)`. A `List<mut Node&>` element, which really can be built through, is
not refused (C3 and PE2). That points at the same check, reading the element's type rather than its scope.

## Over-rejection

`o1_str_callback_in_local_refused`: a non-building callback held in a local, `k := fn(x mut Node&) { }`, and then passed
as `H(k, b.head)`, is refused in a Str. `mbiFnArgBuilds` takes any argument that is neither a lambda nor a named function
to build. r3 refuses it too.

## What held

### Item 2, a local lambda's environment in the frame

`settleFrameLambdas` relies on every read of a variable as a value going through `OperandReadVar`. `grep` shows that it
is the only constructor of `OPERATION_READ_VAR` besides a lambda's own value (`lambdaValueOperand`). The only places
that retarget `readVar` are:

- calls (`OperandFuncCall`);
- constructor retargeting;
- decision 50's hidden `$task` and `$clause` locals. These are declared by `spawnHoldLambda`, not by
  `buildVarDeclStmnt`, so they are never frame lambdas.

The per-function placement was checked with `held_env_placement.awk`, which prints each lambda's environment as
`STACK` or `heap` for each function. The results:

- **On the stack, correctly:** a call through the local in each of these positions (`held_frame_lambda_uses`):
  - `defer`;
  - a conditional;
  - a match value;
  - `try`, and `try ... catch default` with the local in the default;
  - a `$` piece;
  - an assert decided while compiling;
  - a comprehension;
  - a lambda passed to the local (that argument is on the heap).
- **On the heap:**
  - every spawn form - `spawn x = f()`, `spawn a, b = f()`, `spawn try f() catch E { }`, `spawn x = try f() catch E default 3`, and `try join` (`held_frame_lambda_spawns`);
  - a decision-50 clause default or block that calls the local (the clause lambda captures it).
- **A generic using the local differently per instantiation through `match T`** gets a separate decision per
  instantiation (`held_frame_lambda_generic`: `gen$Bool` STACK, `gen$I64` heap). It prints the right values under
  `-b` and `-d`.
- **A constructor field holding a lambda** is on the heap.

The `checks/fixtures/frameenv` files pass under `-b -s`: `frameescapes` has 0 environments on the stack and 8 on the heap, `frameonly` has 3 on the stack.

**Callees that keep a passed lambda** in these ways all get it on the heap (`held_transient_keepers`):

- a List;
- a Map;
- a field;
- a generic `Push`;
- a nested helper;
- a lambda the callee stores;
- a task.

The only way past `SemanticParamTransient` found is a call through a function value (PE1, C8).

### Item 1, the parametric walk

Shapes tested through the deps (`held_gen_str_callbacks.py` and `held_run_str_one.sh`): 372 Str programs, each handing
a callback and the receiver's node to one of 18 helpers. The helpers cover:

- direct, pass-through, argument swaps;
- a generic `G(g fn(x <T>), x T)`;
- a local alias, a lambda capturing the callback;
- a spawn;
- a Call adapter;
- self-recursion, two cycles, a three-function cycle;
- a reassignment, a conditional reassignment.

Each was built `-b -s` and compared with `-i`:

| Result | Count |
|---|---|
| ran and matched `-i` | 172 |
| refused | 160 |
| mismatched (all `use after scope closed`) | 40 |
| internal compiler errors | 0 |

Every mismatch is C1 (`rec`, `cycle`, `cycle2`) or C7 (`reassign`, `condre`).

The parameter mapping held, including the receiver at position 0 of a method and argument swaps. The three-function
cycle that passes the callback on held. Callbacks stored in fields, held in locals, or computed are taken to build. That
is conservative, and o1 is the cost.

The task side (`held_gen_task_callbacks.py` and `held_run_task_one.sh`, `-b -r`) is the same helpers on four tasks: 68
programs, 56 clean under TSan, 2 refused (the `&p` view helper), and 10 reporting a data race in
`__olang_scope_alloc_a`. The ten races are exactly C1's and C7's shapes: `cycle`, `cycle2`, `rec`, `reassign` and
`condre`, each with a building inner callback and a non-building outer one.

### Item 3, raw scopes for tasks

Beyond C2, C4 and C7b, these held under `-b -r`:

- `held_task_generic_destructors`: four tasks building destructor-bearing values through a generic `id` into their
  holders. Stand-ins are made, there is no race, and it prints `41200 40000`.
- `held_task_try_join_clause`: a task callee building in a `try join` clause. There is no race, and it prints `1400`.
- str2's `f1b`/`f2e` and str3's `o4`: a task given a node that its callee only reads runs raw and is clean.

Twenty receiver mutations through E31b, Map, iterators, defer, conditionals, slices and locals
(`held_gen_str_mutations.py`) are all refused (with E11c, or with C2d and T25c for some).

### G9d's meet

The meet is order-independent in every probe:

- n3's `pick` and `addA`/`addB` agree.
- A writable `Array<mut Res&>` with a read-only `Res&` is refused in both orders, with E12 at the inner level, so the
  meet launders no permission (`held_g9d_meet_inner`).
- A writable callback, `fn(x mut Q&)` as a lambda or a named function, met with a read-only argument is refused with
  E12 in both orders (`held_g9d_meet_callback`).

Receiver-frozen bindings are not met. str3's n3, n4, n5 and `held_g9d_*` behave as documented.

### T25d on conditional and match values

`held_t25d_identity` runs `is` on conditionals and matches of text, nested, from a parameter, two sites, and pushed to a
List twice. It gives the same seven answers under `-b`, `-b -d` and `-i`, and as baked `constant i1` globals.

A built `String&` result made from a literal conditional is a copy. Writing `w[0] = 'z'` through it leaves the next call's
text intact in all modes.

A conditional of literals into a writable target is refused or copied, so no static literal is written through.

### Conditional landing (N6/P1)

These built `-s` match `-i` (`held_cond_link`, `held_cond_landing`):

- `link(Node(i) if c else Node(j), top)` and `link2(top2, ...)`, with the callee requiring the first to outlive the second;
- `Wrap(cond)`, `id(cond)` and match values pushed to outer Lists.

### Earlier reproducers

- All of str1, str2 and str3 are refused, or run correctly under `-b -s`. str3's o1 to o6 now run (`b4`, `b4`, `b5`,
  `b6`, `anon x`, `n1`).
- str2's `held_done_in_nested_str` and str3's `held_builder_done_fail_in_tests` pass under `-t`.

### The scope fuzzer

The fuzz driver was built in a scratch directory with `OLANG` pointing at new:

- seeds 5000-5299 (12 scenarios each): 300 programs, 1,761 scenarios run, 1,839 refused, 0 findings;
- seeds 9000-9399 (16 each): 400 programs, 3,210 scenarios run, 3,190 refused, 0 findings.

The scope generator has no Str, no callbacks passed through helpers and no spawned try clauses, so it does not reach
C1-C9.

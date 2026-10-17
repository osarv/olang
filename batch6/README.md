# batch6 - soundness review of three merges on 6af6a4e

The three merges:

1. **Checker batch 5, round 2** (623b9d8, against 771a922): O18c's kept-mode landing, `obligUnsettled`, the O20 walk
   through a parameter's array field, and error deduplication.
2. **The tonight9 fixes** (8f085c4): C9a (a destructor's top level is the scope being closed) and the S4c parallel
   global target.
3. **Decision 50** (9802fc3): failing spawns, task clauses, `try join`, P4d and P1g.

Tip 6af6a4e was built in `/home/user/wt/rv11`. Two comparison compilers were used:

- 04f4a4d ("base"): the parent of 8f085c4, and older than both chk5 rounds. It was built in a scratch worktree,
  `/home/user/wt/b6base`, removed afterwards. To rebuild it:
  `git -C /home/user/olang worktree add --detach /home/user/wt/b6base 04f4a4d && make -C /home/user/wt/b6base`.
- 771a922 (chk5 round 1): the existing `/home/user/wt/rv10`, used read-only.

Every program was built with `-b` and with `-b -d -s` (the scope sanitizer), run, and run under `-i`. The concurrent
programs were also run under `-r`.

`repro/run.sh` runs every reproducer against all three compilers, and `repro/run.out` holds its output. Each reproducer's first lines say what it shows and
what was observed. Scratch programs are in `work/`.

Two causes were confirmed with a scratch build of 6af6a4e (in the scratchpad, not a worktree) that adds an
environment switch or a debug print.

## Confirmed

### 1. NEW (chk5 round 1, 771a922; not fixed by round 2): a field store through a generic call's reference result is never judged

Reproducers: `repro/01_elem_field_store.olang`, with variants `01b`-`01g`.

`cells[i].s = x`, with `cells` a `List<mut Cell&>` and `x` a loop body's text, compiles on the tip and is a use after
scope closed:

- `-b` prints `churn()`'s text three times.
- `-b -d -s` stops with "use after scope closed".
- `-i` prints `w0- w1- w2-`.

04f4a4d refused it with O10c at the `[`.

The same hole is reachable through:

- `Map.Get`: `(try m.Get(i)).s = x`
- `List.First`: `(try cells.First()).s = x`
- a parallel assignment: `cells[i].s, k = x, 1`
- a program's own generic `At` returning `T`
- an element store through the result: `rows[i][0] = x`, rows a `List<mut Array<String&>&>`
- a value field holding a reference: `cells[i].w = wv`

It is not reachable through:

- an array (O20);
- a non-generic `At` returning a borrowed `mut Cell&c` (O20);
- a local copy (`c := cells[i]; c.s = x`, O20);
- a method or a function taking the element (O10c).

**Cause.** The result's scope is landing (O14b: a result written as a type variable that became a reference) when
the assignment's O20/O25 check is made. Then the O18c pre-pass that 771a922 added to `flushPendingDischargesFrom` runs
("a call whose result nothing put anywhere ... lands by its obligations"). It tests only
`bindingIsLanding(pd->op, R)`, so it also re-lands a call whose result was the container of a store just judged. It
lands the call at the collection's scope. That satisfies At's exact obligation (the one 04f4a4d failed with O10c), and
nothing judges the store again.

Confirmed by the scratch build: with the pre-pass skipped, 6af6a4e refuses `01`, `01c` and `01e` with O10c, as
04f4a4d does.

Fix direction: the pre-pass must leave alone a call that a store's target was read through. Alternatively, the store
must be judged at the end of its statement, against where the call finally landed.

The first chk5 review did not find this. Its item-3 claim, "the pre-pass lands only calls that are still landing at
the statement's end", is true, but a call the store already relied on is one of them.

### 2. NEW (tonight9's C9a, 8f085c4): what a destructor's task builds into the scope being closed is never reclaimed, and its destructors never run

Reproducers: `repro/02_dtor_task_part.olang` (control: `02_control_dtor_no_task`) and `02b_dtor_task_part_box.olang`.

A destructor spawns a lambda that builds into what it captured from the destructor's top level, for example
`keep.Push(Tracker(...))`. Under C9a that top level is the closing scope S.

- **6af6a4e** prints `0 0 0 0`: no Tracker is ever destructed.
- **04f4a4d and 771a922** print `50 100 150 200`.
- **The control**, which does the same work on the destructor's own thread, prints `50 100 150 200` on all three.

`02b` stores a node the destructor built into a Tracker the task built, inside a loop body's scope. The Trackers are
never destructed there either: 6af6a4e prints `0 0 0 0 0` where 04f4a4d prints `0 1007 3014 6021 10028`.

**Cause.** A closure that may build calls `__olang_capture_scope(S)` on its own thread. That makes and links a part of
S (decision 48, `__olang_scope_part`). But `__olang_scope_close` reads S's parts list only once, at its entry, before
the destructor walk, and never again. A part made during the walk is left linked to a header that is closed and then
forgotten, so its chunks are never given back and its destructor nodes never run.

This violates C9/C10, which say a destructor runs exactly once. In practice a file or lock wrapped this way is never
released. No use after free was observed: the part's chunks are leaked, not reused, and `-s` is clean.

It is new with C9a. Before 8f085c4 the destructor built into a scope of its own, closed (and its parts folded) as it
returned.

Fix direction: either fold parts again after the destructor walk (or after each destructor), or have
`__olang_capture_scope` refuse to make a part of a scope whose close has begun.

Peak memory could not show the leak. A task-builds/owner-frees pattern grows to RAM/8 on 04f4a4d too (O8b: the
freeing thread's pool keeps what the task's thread mapped), so the destructor count is the measurement.

### 3. PRE-EXISTING (04f4a4d, 45eea97, 91ab3ba alike): a conditional or match of references from different scopes, stored into a reference field, is not checked

Reproducers: `repro/03_cond_store_param_field.olang`, `03b`, `03c`.

The shape is `b.last = x if i == 1 else "z"` (or `else b.last`, or `match i { case 1 => x case _ => "z" }`), with `x`
a block's text and `b` a reference local or parameter. On every compiler tried:

- `-b` prints garbage.
- `-b -d -s` stops with "use after scope closed".
- `-i` prints `w1-...`.

`03` is a function writing its parameter's field and returning, so the dangling text reaches the caller.

**Cause** (confirmed with a debug print). `RefExactScope` answers `false` for a conditional whose values live in
different scopes: "values living in different scopes share none: nothing is adopted". That is the answer it gives a
temporary. So `buildAssignCore`'s `rhsExisting` is false, and the O25/O20 checks for existing storage are skipped. The
per-value `OperandFitsType` check does not judge a bare reference field against its container. O12 (review 3)
intended such a value to be "not known here", never shown to outlive anything.

These forms are refused:

- a local (O10);
- an array element (O10);
- a global (O1b);
- a call argument (O10c);
- a return (O26, or moved by O26a).

This is the one I would fix first. It needs no unusual code, and the scope fuzzer cannot reach it: it generates no
conditional of references.

## Plausible

None of the three changes left a candidate I could not reproduce or rule out.

## Minor, and pre-existing findings found on the way

All of these are compile-time only: a correct program is refused, or a diagnostic is wrong.

| repro | what | since |
|---|---|---|
| `04_task_default_lambda_number` | A task's default holding a lambda that captures only a number is refused as "names existing storage" (P4a). D16d builds such a lambda where it lands. | NEW, 9802fc3 |
| `05_par_hidden_name_collision` | A correct program is refused with "'$par6' is declared twice". In a bigger one the same error is followed by a nonsense "expected Node&, found List<String&>&". Parallel assignments name hidden locals `$par` from two counters: `holdForRefTarget` uses `++destructCounter` and `holdInHidden` uses `++hiddenCounter`. | pre-existing: 91ab3ba (decision 48's review fixes); 771a922 built it |
| `06_try_fallible_call` | `try c(4)` on a type declaring a fallible `Call` says "this call can fail - write 'try'". So `spawn try c(3)` cannot be written either. | pre-existing |
| `07_dtor_method_on_field` | A method called on a field read bare in a destructor (`l.Push(k)`) gives "M10: 'l' is no import here". | pre-existing |
| `08_dtor_check_fails_in_test` | A check failing in a destructor while a test's scope closes skips the scope's remaining destructors (`Log` is 32, not 321). Memory-safe. | pre-existing |
| `09_parallel_whole_global` | `GV, k = VH(Node(i)), k` (a whole value global holding references) is O1b, while `GV = VH(Node(i))` compiles. tonight9 fixed only a global's reference field. | pre-existing |

## What held

### Item 1: O18c kept mode, `obligUnsettled`, the O20 walk, deduplication

**The kept scan.** A wrong "not kept" only over-rejected. Every channel tried was refused at the store or call that
keeps the local, never let through with the local in its block. The channels (`work/kept`, `work/kept2`) were:

- a store through a borrowed result (method and plain function);
- a lambda kept in a field;
- a lambda called where it is written, and through a local;
- a task argument;
- a defer;
- a parallel assignment, directly and through a copy;
- a match binding;
- an `as` payload;
- a for-in over a built list (direct and through a local);
- a SetAt or Push of a value holding text;
- a nested block;
- a reference local pointing out;
- a slice;
- a conditional of two call parts;
- a try default;
- `:=` from a field or an element of a call.

The two shapes that did compile and fail under `-s` are findings 1 and 3. Neither is the scan.

**`obligUnsettled`.** Every reader of `calleeMayKeepArg`/`calleeMayHoldArg` treats "keeps" as the conservative answer:

- O26a moves the local to the result scope;
- the scan lands by obligations;
- S4d copies.

`landDeclWhereFree` and `landDeclByObligations` refuse an unchecked body. The first review's cycle repros now build
and run.

**The `lvalueStorageScope` recursion through a bare reference field.** It is applied only to a field with no scope of
its own, which C2d makes live with (or outlive) its instance. Through a by-value base it bottoms out at the frame, an
underestimate. `&p` fields keep their own path.

**Deduplication.** It drops an error only when an identical record is still kept. A held-back attempt's records are
freed (`freeRecords`) before the next attempt. Muted errors make no record. So the error count never reaches 0 when
it should not.

**Growth.** The first review's growth repros now peak at about 1.6 MB.

### Item 2: tonight9

**C9a: what a destructor stores outward.** A destructor storing its builds outward was refused, or built in the
program's scope:

- a node, a list push and text stored into globals are built in the program's scope;
- an existing closing-scope reference, a lambda capturing one, or a wrapper holding one stored into a global: O1b/C2d;
- building through a `&p` field: C2d;
- a nested block's build stored through the instance: O25.

**C9a: what a destructor builds and reads.**

- Building through a bare field and reading it in the next destructor works under `-s`.
- A destructor-bearing value a destructor builds is destructed as that destructor returns. A later destructor can
  still read it, which is use after release, not use after free (`10_dtor_lifo_by_design`). The same LIFO order
  applies in any function where a newer instance is stored into an older one's field (`b.r = Res2(7)` prints 25), so
  C9a is consistent with the general model. On 04f4a4d the same program was a use after free.

**S4c parallel global target.**

- `G.n, k = mk(i), i`, list and value-field targets and reference fields of several globals all work, from four tasks
  at once. Under `-r` the only reports are the program's own races; allocation into the program scope goes through
  `@__olang_prog_scope`, each thread's own part.
- `G.w, k = Wrap(loc), i` is refused (C2d).

### Item 3: decision 50

**Clause captures.** These are refused (P2/D16e):

- a value String, or a value holding references, from a loop body inside the join;
- a lambda default capturing a join-block reference.

Writing a captured variable in a clause is refused (D16c). A clause building into a captured list from the task's
thread allocates through its part. Captures are copied at the spawn, baked and built alike. A captured value array or
handle is borrowed, by design.

**Defaults** were read back after an arena churn under `-s` and agree with `-i` for these targets:

- a field reached through a caller's reference;
- an array element;
- a global;
- a global's field;
- a loop's outer String value target;
- a value holding references;
- a struct over 128 bytes (returned through memory);
- `Array<I64, 4>`;
- two targets of one call.

Further cases that hold:

- A borrowed-result call (`Node&a`) given a new default.
- A call default that builds (`fresh(i)`) works. One handing back existing storage (`same(base)`, `wrap(base)`) is
  refused (P4a), and so is a conditional or match mixing one in.
- A String value default naming a captured String is a copy (value semantics hold).
- Destructor-bearing values built by a failing call and by its default each run once (`work/p4a/dt1`: 20 for 20).

**P4d and replaced ways out.** P4d is enforced for direct targets, for called lambdas (`spawn x = try fn() ...()`),
and inside spawned lambdas. A clause with a nested `try join` that could leave is refused, and so is a value clause
ending in `for { break }`.

These run identically `-b`, `-b -d -s`, `-i` and as baked globals:

- a join's failure replacing `return` (including one whose value has an effect), `break` and `continue`, with deferred
  code around it;
- a `try join` and a plain join inside the deferred code of a failing join;
- a return from a non-failing join nested in a failing one;
- an inner join's error leaving an outer join (whose tasks still ran and were waited for);
- the block's own error, not taken by the join's clauses.

A `defer` reading a target after a failed join sees its old value, as `try f(buf) catch E { return }` does.

**Error re-encoding.** The following map to the right word, built, baked and interpreted:

- tasks whose callees list errors in different orders (`C + A`, `B + C`) under a join list `B + A + C`;
- a task taking one word itself;
- a bare-`?` callee's default error;
- a bare-`?` function propagating a named error as its default error;
- a function value;
- a generic;
- methods;
- a generic whose `match T` spawns tasks with different error sets: each instantiation judged on its own (R14).

**Ordering.** The earliest-spawned failure wins when later tasks fail first: `0 1 2 3 4 5 6 7` with `-b` and with
`-r`. The spawnerr fixture is clean under `-r`, three runs.

**P1g String targets.**

- A global, two targets of one call, a loop's target, task defaults and a generic identity of a borrowed String all
  land in the target's storage and survive the churn.
- A returned local target (`s String` and a `List<I64>`, O26a) survives too.
- A `List` element target (SetAt) is refused (S4).

### The scope fuzzer

Three runs, all with no findings:

| run | programs | scenarios run | refused |
|---|---|---|---|
| seed 7100 | 200 | 1,164 | 1,236 |
| seed 9300 (16 scenarios) | 400 | 3,199 | 3,201 |
| seed 12000 (16 scenarios) | 300 | 2,358 | 2,442 |

It generates no conditional or match of references and no element stores through `At`/`Get`, so it could not reach
findings 1 or 3. It also generates no destructors or failing spawns. All four are worth adding to `fuzz/scopegen.olang`.

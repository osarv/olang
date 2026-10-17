# Soundness review of wt-rv3fix (a2e2878..77f92a7), 2026-10-10 ~02:00-02:45 UTC

Compiler under review: `/home/user/wt/rv5/build/out`, built from 77f92a7. "Master" is `/home/user/olang/build/out`
(a6a6d9c, which has no `-s`); "pre-existing" below means master accepts the program and gives the same wrong answer.
Reproducers are in `repro/`, each headed with expected and actual output; scratch programs are in `work/`
(`work/t.sh FILE [b d s ds i r]` builds and runs one in those modes, `work/ro/acc.sh FILES` says ACCEPTED or gives the
first error). Each memory reproducer churns the arena before it reads back, and was also built `-b -s` and `-d -s`.
"Use after scope closed" below is the scope sanitizer's message.

Known and recorded, not reported again: a closure held in a struct handed to a task
(`known_p1_closure_in_struct_task.olang`), and an iterator over a read-only collection handing out writable copies.

## CONFIRMED

### 1. A task keeps the environment copy P2 made for it - use after free (NEW, `repro/01*`)
This batch replaces a spawned call's function value, and the closure it calls through, with a copy of the environment
(`__olang_env_standin`). The copy and its sub-scope headers are made in the join block's arena, and each sub-scope
pointer is written into the copy. Nothing stops the task from keeping the copy. It can hand the copy back through a
spawn target (`spawn r = id(g)` with `fn id(f fn() I64) fn() I64 { return f }`, O14a). It can also store it
(`spawn keep(fns, g)` with `keep` pushing `g` into a List declared outside the join). The checker places the function
value where `g` lives, so it accepts both. Once the join block closes, a call through the kept value reads the
environment from reclaimed memory and allocates through a dead sub-scope header.
- `01`: `-b` and `-d` segfault (139); `-s` gives "use after scope closed". `-i` and master print `42 42 true`.
- `01b`: the stored form. Same results.
- `01c`: when nothing is freed, identity still changes. A task comparing the closure it got through two arguments
  sees two copies: `-b` prints `true false`, while `-i` and master print `true true`. So the run time and the
  evaluator disagree on `is`.

A spawned lambda or a RunOnStack lambda that keeps a captured closure is refused by T22a (`work/ros_*`,
`work/spawn_field2.olang`). Only a spawned *call* is open. Possible fixes: P2 refuses a spawned call whose callee can
keep a function-value parameter (an O14a obligation, or a store into it) where that value's environment holds scopes.
Or the copy and its sub-scopes are made in the scopes the copy's own captures live in, not in the join arena.

### 2. A closure made inside a task captures a P2 stand-in scope and is kept past the join - use after free (PRE-EXISTING, `repro/02*`)
- `02`: `spawn work(n, fns)`, where `work` pushes `fn() I64 { n.next = Node(...) }` into `fns`. The new closure lives
  where `n` lives, so the checker lets it outlive the join. Its environment, however, holds the task's sub-scope for
  `n`, whose header sits in the join arena.
- `02b`: the same through the task's stand-in for the program scope. A local copied from a global reference is captured
  by a closure made in the task, and the closure is kept in a global List.

Both crash on this build and on master: `-b` gives 139, `-s` gives "use after scope closed", and `-i` prints `42 42`.
Closure environments are the only data that store a scope pointer. Any stand-in that reaches one escapes when the
closure is kept. Finding 1 adds a second path into this class.

### 3. A match binding of a by-value payload reads as living at the body's top level; this batch lets borrows of it leave the clause (NEW acceptance, pre-existing root, `repro/03*`)
`patBind` sets a scope depth only for a reference binding. A value binding keeps the payload field's `scopeDepth` 0,
which `normDepth` reads as the top level.

This batch's change to `SemanticBoundScopeDepth` returns 1 for a determined depth-0 binding. That rule was meant for
constructor field locals. It also turns `borrow(y)`'s result (`P&b`) into a top-level reference, so
`keep = borrow(y)` from inside a clause is accepted. Master refuses that line with O25.

The binding's storage is a per-clause slot that later iterations reuse:
- `03`: `-b`, `-d` and `-d -s` print `12`; `-i` prints `10`.
- In `work/d0/b4.olang`, a later iteration's `y.v = 99` shows up through `keep`.

Related shapes:
- `03b`: `keep = y` written directly. Master accepts it too, so the root is pre-existing.
- `03c`: in a constructor, depth 0 is the instance's scope, so `keep = borrow(y)` into a field is accepted on master
  and on this build. The field then points into the constructor's dead stack frame: `-b` prints garbage, `-i` prints
  `42`.
- `03d`: the codegen half of the change also moves into the function's top level what a callee builds into such a
  binding's scope, for the whole loop. Peak RSS is 24.7MB on this build against 1.6MB on master, and it grows linearly
  with the number of iterations.

Fix: give a value match binding its clause's block depth in `patBind`. The depth-0 rule in `SemanticBoundScopeDepth`
should then only ever see a constructor field local or a parameter.

### 4. A copy out of a member or an `as` of a conditional keeps its references in its own block - use after free (PRE-EXISTING, `repro/04*`)
This batch's general O25h covers a conditional or match only at the top of the copied expression:
`copiesExistingRefs` and `copiedRefsScope` stop there, and `valueRefsHome`/`RefExactScope` do not walk a member or an
`as` down into a conditional. So these copies keep `h`'s or `y`'s references in their own block:
- `h := (w1 if c else w2).b`, with references (`04`) or with value locals (`04c`);
- `y := (e1 if c else E.Z) as E.A` (`04b`);
- `y := (e1 if c else e2) as E.A` (`04d`).

A by-value or lending call then builds the new node in that block and hangs it off the outer node. Every shape prints
`-7` with `-b` and gives "use after scope closed" with `-d -s`; `-i` prints `44` (or `43`). Master is the same.

Fix: let `copiesExistingRefs` and `copiedRefsScope` (and `valueRefsHome`) walk MEMBER, INDEX and `as` down to a
conditional or match. When the arms disagree, the result should be the not-known scope (O12), as the top-level case
already is.

### 5. A `Str` that calls a capturing lambda through a local writes through a reference (PRE-EXISTING; this batch's E11c fix misses it, `repro/05*`)
The case is `k := a.c; f := fn() { k.n = k.n + 1 }; f()` inside `fn (a B&) Str()`. `effCall` resolves `f` to the
lambda and then records an edge only for an argument that reaches outside storage. This call has no arguments, so the
lambda's own `effWrites` (its write through a capture) never reaches `Str`. Result: `-b` prints `b 2` and `-i` prints
`b 1`. `05b` does the same through `g := f; g()`. Master is the same.

The other shapes are caught: calling the lambda in place (`fn(){...}()`), passing it to a function, a function value,
`defer`, `spawn`, atomics, loops and parallel assignment (`work/str/`).

Fix: when `effCall` resolves to a lambda this function made, add an edge to that lambda unconditionally. Its captures
are this function's outside storage.

### 6. A constructor keeps a borrow of its own by-value parameter in a reference field - stack use after return (PRE-EXISTING, `repro/06*`)
The case is `type H struct(p P) { keep P& = p }`, where `p` is not also a field. `RefExactScope` reads a parameter's
storage at depth 1, and in a constructor that is the top level, which C2g makes the instance's scope. But `p` is a slot
in the constructor's stack frame. With `h := H(P(42)); h2 := H(P(7))`:
- `-d` and `-d -s` print `7 0`;
- `-b` and `-s` print garbage bytes;
- `-i` prints `42 7`.

The same happens through a call (`keep P& = borrow(p)`) and from a loop in the constructor (`work/d0/ctor6-8`). The
sanitizer cannot see it because the storage is stack, not arena. This batch did not introduce it, but its new comment
on `SemanticBoundScopeDepth` names "a parameter's own storage" as top-level storage, which in a constructor is the wrong
claim.

Fix: in a constructor, read a by-value parameter that is not a field at a depth of its own (shorter than the instance),
or store such a parameter in %here as C2g does for a field that a reference is taken to.

### 7. A reference read through a '&p' field and passed to a by-value parameter binds it to a derived scope - use after free (PRE-EXISTING; the by-value half of this batch's 2b fix misses it, `repro/07*`)
Inside `fn f(h Holder&)`, `growv(h.b)` passes `h.b` (field `b mut Box&p`) to `fn growv(b Box)`. The by-value branch of
`bindCallScopeVars` binds `growv`'s scope variable to `copiedRefsScope(h.b)`, which is `f`'s derived scope (O23a), and
it checks only `SCOPE_AMBIGUOUS`. The reference path refuses the same build: `grow(h.b)` and
`d Box = h.b; d.head.next = ...` are both error[C2d] ("builds through a '&p' field whose scope is not known here").
Here, at run time the derived scope resolves to the scope `h` was read through (an inner block), and the node is stored
into `outer`'s head. `-b` prints `-7`, `-d -s` gives "use after scope closed", and `-i` prints `44`. Master is the same
(it built in `f`'s own scope).

Fix: in the by-value branch, refuse a derived scope (`scopeViaFallback` / `derivedFrom`) for a parameter whose
references admit stores, as the reference branch does.

## PLAUSIBLE (traced, not reproduced)

None kept apart.

## Tried and clean on this build
- **Depth-0 rule, other binding kinds.** These are all refused with O25/O17 when borrowed into an outer reference:
  for-in elements (with and without an index), destructured results, parallel declarations, `:=` from `as`, value
  locals in nested constructor blocks, and conditional or match value locals. The constructor that grows a field's
  List in a loop (`scopectornested`) is now right in every mode.
- **P2.** These are clean under `-b` and `-r` and agree with `-i`:
  - closures capturing closures across nested joins;
  - `Call` adapters handed to tasks;
  - spawned called-lambdas.

  These are refused:
  - closures that capture an inner block of the join (P2);
  - spawned lambdas and RunOnStack lambdas that keep a captured closure (T22a).

  A RunOnStack closure that makes and keeps a closure is refused by T22a.
- **Permission (`work/ro/`).** These are all refused with T25c on a read-only `List<List<I64>>&`:
  - `ToArray`, `Clone` and `Filter`;
  - `First` and `Last`;
  - `RunFrom` and `At`;
  - user generics that return `l[0]` through locals, reassignment, a constructor, an array fill, a for-in, a
    conditional or a lambda;
  - two levels of generic calls;
  - a function value doing `Clone`/`ToArray`;
  - `Iter().Map` and `Iter().Fold` with a lambda keeping its parameter.

  The new `Clone` (copying chunks directly) matches master's output and `-i` after mixed
  `Pop`/`Clear`/`Insert`/`RemoveAt`/`Push`.
- **O25h / O12 (`work/cond/`).** These are refused with O17, O12, O25h, O26, O10 or T17c, or are now correct:
  - copies of conditionals and matches of references from different scopes, then lent, copied, built through, stored
    into, returned, used as a loop initializer, a parallel-assignment target or a spawn target;
  - stores through an element of such a copy.

  Several of these were UAFs on master and are fixed: `x_d2`, `x_d4`, `x_d6`, `x_e3`, `x_e4` and `x_e6` printed `-7`
  there. `x_f1` and `x_f4` were accepted on master and are refused now. A reference passed for a constructor or enum by-value field, or a conditional of such references, is refused
  by C2d/T17c.
- **E6d.** Conditionals of literals beside `U8`/`I32`/`U32`/`F32`, including nested ones and shifts, give the same
  results in `-b`, `-d` and `-i`.
- **S4d/O18a.** A compound `+=` with a `Plus` building a recursive enum, through a reference and a value target in a
  loop, is right in every mode (master aborts "reached unreachable code").

## Follow-up (a385b04)

I rebuilt `/home/user/wt/rv5` at a385b04 (wt-rv3fix's fixes for the seven findings above, merged with master
69342d4). All seven earlier reproducers are now refused, or right in every mode including `-d -s`; `03d`'s peak is back
to 1.6MB. New reproducers are `repro/h*.olang`; scratch programs are in `work/fu/` (`gen.sh`/`gl.sh` generate the
decision-40 variants).

### h1. Decision 40 can be evaded: a task calls a held function value by handing it to a helper, capturing it, or re-wrapping it (NEW mechanism hole, `repro/h1*.olang`)
The check reads the task's body: `callsFnThrough`, `fnRootsIn` and `fnEdges`. It follows a held value through locals
and field reads, and it follows a callee only when that callee calls through a *field* of its parameter. These shapes
call the held closure on the task's thread and are accepted:
- `runit(h.f, i)`, where `runit(f fn(i I64), i I64) { f(i) }` calls its parameter (`h1`);
- the same after `x := h.f` (`work/fu/v22`);
- `g := fn(i I64) { h.f(i) }; g(i)`, a lambda capturing the handed struct (`h1b`);
- `l.Push(h.f); l[0](i)` with a List the task made (`h1c`);
- `Array<fn(i I64)>(1, h.f)[0](i)` (`v17`);
- `e := E.F(h.f); match e { case E.F(f) { f(i) } }` (`v18`).

Each one, built `-r`, reports a data race in `__olang_scope_alloc_a` between the task and the main thread. Built
`-b`, about half the runs segfault and a third print "wrong elements: 6000-49000 of 200000".

These are refused, as intended: calling `h.f` directly, through a local, through a reassigned local, through a
conditional, through a method, through a `Call` adapter, through a trait-constrained generic, through a returned copy or
a wrapper lambda (`twice2(h.f)`), and calling elements of a handed `List` (`l[0]`, `for f in l`, `First`, `ToArray`,
`Iter().Fold`).

### h2. The program scope's task stand-in reaches a closure through a scope variable and is kept past the join - use after free (PRE-EXISTING class, the 02b fix is incomplete, `repro/h2*.olang`)
The fix holds a capture in the program's scope as null only when the checker sees it statically. Here a task runs
`work()`, which calls `keep(G, Fns)`. `keep`'s scope variable for `x` is bound at run time to the task's stand-in for
the program scope, and that stand-in's header stays in the join arena. The lambda `keep` makes captures the stand-in's
address. Storing that lambda in a global List is accepted. After the join block closes:
- `-b` segfaults (139);
- `-b -s` and `-d -s` report "use after scope closed";
- `-i` prints `42 42`.

Master segfaults too. `spawn keep(G, Fns)` directly is right.

### h3. A fold into a stand-in that was folded already stops it forwarding; what is built there later is never freed and its destructors never run (NEW, `repro/h3*.olang`)
`__olang_scope_merge(dst, src)` does not resolve `dst`. Here is the sequence:
- A closure `k`, handed back by a first task, holds that task's stand-in S1. S1 is folded already, so its head is
  `@__olang_fwd_chunk` and it forwards to `run`'s scope.
- A second task is handed `k`. It gets a stand-in S2 whose parent is S1, and it builds `R(2)` into S2.
- At the join, S2's chunks and destructor nodes are spliced into S1 itself. S1's head is now S2's chunks, its tail is
  still the forward pointer, and the sentinel global sits at the end of its chunk list.
- S1 is never closed. `R(2)` is never destructed. `k(3)` on the main thread now allocates into S1 directly instead of
  forwarding, so `R(3)` is never destructed either.

`-b`, `-d -s` and `-r` all print only `dtor 4`; master prints `dtor 4`, `dtor 3`, `dtor 2`. `h3b` does the same through
`os.RunOnStack(1 << 20, k)`: master prints dtor 3, 2, 1; this build prints only dtor 3. I found no use after free here,
only a leak and lost destructors (O16). It needs a fold whose task allocated something.

Fix: in `__olang_scope_merge`, `__olang_scope_resolve(dst)` first. The stand-in-making paths (`__olang_env_standin` and
the static merge list) should also resolve the parent they record.

### h4. A closure a task hands on is copied into its owner's scope from the task's thread - data race (NEW mechanism, `repro/h4*.olang`)
Decision 40 allows handing a held closure on. When a task does `spawn use(h.f)` in a nested join,
`__olang_env_standin` runs on the task's thread. It allocates the copy, and each stand-in header, in the closure's home:
the first scope it captured, here main's own scope. Main is meanwhile allocating into that same scope inside its join
block. `-r` reports a race in `__olang_scope_alloc_a` (`__olang_env_standin` <- `relay` on T1, against main's
`__olang_scope_alloc_a`). Built `-b`, 2 of 10 runs segfault and 2 of 10 print "wrong: 2" or "wrong: 3". `h4b` does the
same through `os.RunOnStack(bytes, h.f)` on a task.

Master also races here, through the call itself (the struct case known before decision 40). On this build the call is
safe and the copy is what races. Fix: make the copy and the headers in a scope the spawning thread owns (its own
stand-in, or the join arena with the copy forwarded), not in the closure's home, when the spawner is not that home's
thread. The alternative is to refuse handing a held closure to a spawn.

### Low: over-rejection (NEW)
`type H struct(p P) { q := p; keep P& = q }` is now error[O10]. `q` is a field whose storage is the instance's (C2g), so
the program is sound, and master accepts it and prints `42 7`. `x := P(42); keep P& = x` is still accepted
(`work/d0/g14.olang`, `ctor4.olang`).

### Tried and clean on a385b04
- **Forwarding.**
  - Kept closures called on the main thread forward correctly.
  - A kept closure handed to a second task directly gets its own stand-in.
  - Nested joins and RunOnStack after a join show no race under `-r` (`work/fu/f1`, `f4`); only h3's lost
    destructors.
  - Closures over a global's referent made on a task are now right (02b).
- **Identity.** `is`, `==`, `in` and structural `==` of a struct, array or enum payload holding the function value a
  task handed back all say true in `-b`, `-d` and `-i` (`work/fu/id1`).
- **Decision 40.** Every refused shape is listed under h1.
- **Constructor depths.**
  - These are all refused: a by-value parameter borrowed into a field (directly, through a call, in a nested block,
    in a loop, with a lambda alongside); a generic constructor (`Hg<T>`); a G10d constructor introducing `T` for a
    field; a nested-block local borrowed into a field.
  - The depth-2 sharing between by-value parameters and a constructor's nested blocks could not be exploited: the
    parameter's reference slots are judged at its O4b variable, and lending it writably is O17's split value.
- **Match bindings.**
  - Borrows kept past their clause through alternatives, a match value, a constructor, or a lambda capture are
    refused (O10, O25, O10c).
  - Reading a borrow taken in a match value after the match (`k2 := match e { case E.A(y) => borrow(y) ... }`) is
    accepted. It agrees with `-i` (the binding's slot is not reused within the iteration) and master accepts it too.

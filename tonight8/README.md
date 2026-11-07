# Soundness review of decision 48 (P2: scope owners, parts, closure prologue checks), 2026-10-10 ~08:05-08:35 CEST

Under review: `/home/user/wt/rv8` at 45eea97, diff `48f82fb..45eea97` (master's merge excluded), built `build/out`.
"Base" is 48f82fb, built from `git archive` in `base/` (`base/build/out`). "Pre-existing" means base behaves the same.
Reproducers are in `repro/`, each headed with expected and actual output. Scratch programs are in `work/`:
- `work/t.sh FILE [b d s ds r i]` builds and runs FILE in those modes.
- `work/gen.sh NAME 'BODY' ['DECLS']` writes the two-tasks-plus-main racer, with `@` standing for the captured node.
- `work/race.sh NAME` builds NAME with `-b` and `-r`, counts `__olang_capture_scope` calls in the lambdas, and runs it
  once under TSan.

## CONFIRMED

### 1. SemanticMayBuild misses a temporary built where a conditional, a match value or a `catch default` lands - data race on the owner's arena (NEW, `repro/01*`)
A closure checks a captured scope (`__olang_capture_scope`) only when two things both hold: codegen marked the scope
built (`c->built`), and `SemanticMayBuild(lambda)` says the body may build. The creation's claim
(`__olang_scope_escape`) is gated on `SemanticMayBuild` alone.

`mbBoundary` sees a promotion only where the source operand is not reference-typed. E28, S12b and R9a build their new
values where the whole expression lands, but the expression itself is typed `Node&`. So for `x.next = x.next if c else
Node(i)` the boundary check is false, and `mbOperand` finds only the constructor call `Node(i)`, which builds nothing.

The result: the lambda's prologue loads the captured scope raw, and on a task `__olang_scope_alloc_a` bumps the main
thread's arena directly (the IR of `work/build/cond1.main.ll`, `@cond1_lambda$1`, shows it).

The same miss turns up in four other places:
- a callee: `setNext(a, i)`, whose body has only the conditional, gets `SemanticMayBuild(setNext) == false`, so the call
  hands it the captured scope under `capReadOnly`;
- a borrowed result: `fn orNew(n Node&, i I64) Node&n { return n if i < 0 else Node(i) }` (`work/v_ret.olang`);
- a Call adapter: `SemanticMayBuild(Call)` is false, so the adapter loads the instance scope raw instead of calling
  `__olang_scope_mine`;
- a `:=` local, an argument, or a tuple return that holds such a conditional.

| repro | builds through | `-r` (one run) |
|---|---|---|
| `01` | `a.next = a.next if i < 0 else Node(i)` | 25 reports |
| `01b` | `match i { case -1 => a.next nomatch => Node(i) }` | 31 reports |
| `01c` | `try find(a) catch default Node(i)` | 32 reports |
| `01d` | callee `setNext(a, i)` holding the conditional | 30 reports |
| `01e` | `Call` method holding the conditional, as `fn(i I64)` | 24 reports |

Every report has the same shape: `WARNING: ThreadSanitizer: data race ... __olang_scope_alloc_a <- ..._lambda$1 <- work
<- olang.task.N (thread T1)` against `__olang_scope_alloc_a <- main (main thread)`, on the main scope's chunk.

`-b` gives wrong values. `01d` run 50 times: 46 correct, 3 wrong (`125498 299999 299999`, `299999 85421 299999`,
`299999 299999 168019`), 1 segfault. `01` run 20 times: 1 wrong (`... 73480`).

`-i` (iterations cut to 2,000) prints the right values. Base gives the right values, and its `-r` reports nothing on
all five: there, a task got an environment copy with stand-ins.

Fix: the walk must be a sound over-approximation of what codegen builds. Both halves are gated on it: the prologue
check and the claim, and through `capReadOnly` codegen's own marks too. Either of these would do:
- In `mbOperand`, treat `OPERATION_COND`, an `OPERATION_MATCH` value and any operand with a `catch default` as building
  when its type is reference-shaped and some arm or default is neither an lvalue nor `null`. Better, key it on the
  checker's own landing record for the operand, the same fact `cgWhereBuilt` reads, so it cannot drift from codegen
  again.
- Make the walk answer "may build" for any operand codegen would hand to `cgWhereBuilt` or `cgPromote`.

`cgCond`, `cgMatchValue` and `cgTryCatch` are the three allocation sites in codegen with no counterpart in the walk; I
mapped every other `scope_alloc`, `cgArenaAlloc` and `cgPromote` site to a case `mbOperand` or `mbStmt` covers.

## PLAUSIBLE / low

- **A closure called on a thread that does not own its captured scope takes the slow path on every call.** That path
  is the out-of-line `__olang_scope_mine_slow`, which walks up the parents and then linearly through the root's
  `parts` list; there is no per-thread cache. Measured with `work/perf1.olang`, 5M calls of a closure that builds a
  node: 73-83 ms on the owner thread, 113-118 ms on one task, 120-141 ms after 40 other threads have made parts. The
  list grows by one entry per distinct thread identity that built there (so worker churn past P1f's 64 idle workers
  lengthens it until the scope closes). This is not a soundness issue. HISTORY's "two instructions a call" holds only
  on the owner's thread.
- **The per-spawn stand-in header in the bound scope doubled** from 24 to 48 bytes. This includes the stand-in a task
  gets for a function-value parameter it never builds into (`work(f fn(...))` gets `sarg0`). A loop spawning into a
  long-lived scope grows by 48 bytes per spawn until that scope closes: 600KB over 12,800 spawns (`work/churn2`). The
  growth itself predates this change. Decision 48 shrank everything else here: `work/churn1`, 800 rounds of 150
  spawns, peaks at 26.5MB, against 502MB on base, whose environment copies went into the closure's home.

## Found on the way, not decision 48

- **ICE (PRE-EXISTING, `repro/02`).** A reference parameter whose default is a temporary built in another parameter's
  scope (`fn pickd(r Node&, n Node&r = Node(7)) Node&r`) crashes the code generator once the default is used at call
  sites in two functions; a lambda counts as one. Backtrace: `cgCtorHereArg -> cgWhereBuilt -> cgResolveScope ->
  cgLookupVarAddr -> mangleGlobal(mod=NULL)`, a segfault at codegen.c:252. My reading is that D8a's one shared default
  operand keeps the landing binding from the other call. A single call site builds fine. Base crashes the same way.
- **Over-rejection (PRE-EXISTING, `repro/03`).** `a.next, a.v = Node(i), i` on a reference parameter's (or a capture's)
  fields gives error[O17a] and error[O25]. The same statement in `main` is accepted, and so is `a.next = Node(i)` alone
  in the function.

## Checked and defended
Each of these was built `-b`, `-d -s` and `-r`, `-b` was repeated 20-30 times where racy, and `-i` agreed where it
could run.
- **Plain shapes.** These check and claim correctly and run clean under `-r`: a build directly into a captured
  reference's field, through `defer`, through an enum payload, or through a spawned lambda inside a lambda. Each of
  `v_plain`, `v_enum`, `v_defer` and `v_spawnl` calls `__olang_capture_scope`.
- **Nested work (`work/nest1`).** One closure is called concurrently by:
  - tasks,
  - tasks nested in tasks,
  - `os.RunOnStack` from main and from tasks,
  - main.

  Results are right in all modes, and 5 `-r` runs report nothing. RunOnStack sharing its caller's identity held up,
  including tasks spawned inside the RunOnStack function.
- **Parts made and folded (`work/parts1`).** 300 block scopes each get 16 parts at once, CAS-linked, folded when the
  block closes, each part holding destructor-bearing values. The destructor count is exactly 240,000 and `-r` and
  `-d -s` are clean.
- **Forwarding stand-ins (`work/fwd1`).** A closure that a task made over its stand-in is handed back, then called by
  three `deep` workers at once, each from a task, from RunOnStack and inline. Every result and every destructor is right
  (18,000), under `-r` and `-d -s`, 20 of 20 runs.
- **Destructors with parts (`work/dtor2`).** Each destructor runs exactly once (3001), only at the scope's close, never
  early.
- **The program scope.** A global lambda building into the program scope from tasks while main does (`work/glob1`), and
  a Call adapter over a global instance (`work/callg`), are clean under `-r`. A stand-in for the program scope is null
  everywhere, and nothing makes a part of it.
- **E10c.** `is` and `==` of a closure handed to tasks, passed twice, returned through a spawn target, or compared with
  another closure all agree in `-b`, `-d -s`, `-r` and `-i` (`work/id1`).
- **Every earlier reproducer (`work/old`).** All of tonight5's (01-01c, 02, 02b, h1-h4b) give the right answers with no
  TSan report.
- **Closures kept past their scope are refused (O10c):**
  - pushed into an outer List from a loop body (`kept1`);
  - stored in a global List by a task (`kept2`);
  - returned through a spawn target out of an inner block (`kept3`);
  - stored into an outer struct by a task (`kept4`).
- **Thread identity.** It is an odd counter value, so it never equals null or the two sentinel addresses, and a 64-bit
  counter cannot wrap in practice. Both the program `main` and the test harness call `__olang_thread_init` before any
  global initializer.
- **Scope header reuse.** Block headers are zeroed on entry and function headers at the function's start, so a stale
  owner word on a reused stack (glibc caching a retired worker's stack) is never read. I traced each place a scope is
  first claimed (`__olang_standin`, `__olang_scope_escape`, `__olang_scope_register_dtor`, the merge). Outside finding
  1, I found no way for a thread other than the opener to reach an unclaimed scope.

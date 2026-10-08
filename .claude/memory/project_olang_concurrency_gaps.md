---
name: project-olang-concurrency-gaps
description: "concurrency gaps: ALL DONE as of 2026-10-07 (cancellation + timeout = std/cancel Token, chan SendUntil/RecvUntil); -race/TSan done; no fixed pool or M:N"
metadata:
  type: project
---

As of 2026-09-17 the user asked for olang's concurrency gaps to be recorded and worked
"in order when we are ready". The ordered list lives in CLAUDE.md under "Concurrency: the
open gaps"; evidence and measurements are in HISTORY.md. Order agreed (TSan was done first, before (1)): (1) DONE — discarded
`pthread_create` result, fixed as spec P1c (abort with "could not start task"); (2) DONE — a task outliving a
test abandoned by a failing assert, fixed with S18b as spec P1d (runtime chain of open
scopes, unwound before the longjmp; emitted only for test builds, since production never
longjmps); (3) DONE — fan-out cost, fixed as spec
P1e: a thread CACHE keeping 1:1 semantics, NOT a fixed pool (deadlocks on nested joins and
chan.olang's mutex) and NOT M:N. 100k spawns went 5.4s/843MB -> 1.15s/6MB. The trap: a
worker must be returned when its task RETURNS, not when the join observes it — returning at
the join reuses nothing during a fan-out and measured 225s, a 44x regression;
(4) DONE — spec P1g, `spawn TARGET = CALL`, which also gives parallel map; (5) DONE — memory model written as spec P8/P8a/P8b/P8c; (6) DONE — spec X3a: reserve an upper bound, keep the `&` for arena alignment, drop `mut` for opacity; clang-probe rejected. Was: chan.olang's hardcoded
glibc struct sizes; (7) atomics DONE (spec P9/P9a: five builtins, seq_cst, TSan-visible — verified); cancellation and timeout still open — atomics must be genuine LLVM atomic
instructions so ThreadSanitizer follows them, or they owe __tsan_acquire/__tsan_release;
same if the thread_local chunk pool is ever made global.

Race detection is **done** (2026-09-17, spec P7): `olang -t -race f.olang` builds under
ThreadSanitizer. `make race` runs the suite under it and is deliberately not part of
`make verify`, because the corpus has one intentional race (shared.Tally.readOut) so a
correct run reports exactly one and exits nonzero.

**Why:** the user wants these done deliberately and in sequence, not opportunistically, and
priorities 2 and 3 have non-obvious couplings that are easy to get wrong if picked up cold.

Only one of four axes follows Go: race detection. Structure (`join`) is deliberately the
opposite of Go's fire-and-forget `go f()`; channels stay a library; scheduling stays 1:1.

**How to apply:** before starting any concurrency work, read the CLAUDE.md list and confirm
which item is next; do not fix S18b in isolation, and do not propose a fixed-size thread
pool or M:N scheduling — both were considered and rejected with reasons. See [[project-olang-next-steps]].

**2026-10-08:** the race flag is now `-r` (B1: every flag is one character), so `olang -t -r f.olang`.

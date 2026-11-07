# Rules of work for the finishing push (2026-11-07) - every round's brief points here

The user, 2026-11-07: "make sure you build everything now before verifying and testing and stuff. I want the language
to be finished today. So no unnecessary reviews or verifications. Just do one at the end."

- **No full `make verify`, no scopesan / scopefuzz / fuzz free / dead-regions runs, no reviews.** The coordinator runs
  one full verify, the gates and one bulk review at the end, over everything merged.
- Develop with targeted tests: build the compiler in your worktree and run the test files and checks cases you touch
  (`build/olang test FILE`, the checks for your rule).
- At the end, one `make quick`, only through `/home/user/vlock make quick > quick.log 2>&1` (one at a time on this
  machine; the lock queues you). Fix what it shows that is yours. Recapture goldens (tokgold, astgold, layoutgold,
  diaggold) only after checking that each difference is yours.
- Every compiler build and every test compile goes through `/home/user/blk CMD` (three slots on the machine, e.g.
  `/home/user/blk make build/olang`, `/home/user/blk build/olang test FILE`) - memory is shared (15 GB) with up to six
  other rounds, and builds outside the lock get killed by the out-of-memory killer. One build at a time in your
  worktree; no parallel make beyond the makefile's own.
- Spec first (SPEC.md, grammar included), then the code; the compile-time evaluator gets the same semantics (a test it
  decides beside the run-time test); records in CLAUDE.md and HISTORY.md; walk DEPENDENTS.md. Details are yours within
  the user's decisions - record them as decisions, marked mine.
- Commit each coherent piece as you go, only the paths you changed - never `git add -A`; no Claude attribution lines;
  do not push; leave .claude/memory/ to the coordinator. Keep PROGRESS.md (worktree root) current: done, decided, next.
- At most three blocks nested inside a function's body (four on a special occasion); use the construct that fits best
  (guard clauses, `:` one-line bodies, `case P: v`, narrowing, comprehensions, errors raised by name).
- Report at the end: what was built, your decisions (numbered), bugs found and fixed, quick's result, what was left.

Rounds running at the same time (from 2026-11-07 afternoon; keep to your files where you can; the coordinator merges):
- sec8r2 (/home/user/wt/sec8r2): section 8 round 2 - O27 as placement, the unique hand-on move - compiler/scope.olang,
  free.olang, typed.olang, emit's generator elision test, olang.olang's -memory rows.
- literals (/home/user/wt/literals): the type in front of every literal and comprehension, FromIter - parser, check's
  literals and comprehensions, the prelude and std collections, a migration tool rewriting `T[...]` everywhere (its
  output committed separately; the coordinator re-runs it after merging the others, so do not hand-edit literal
  syntax in other rounds' files).
- tidy2 (/home/user/wt/tidy2): small fixes - diagnostics, reflection, explain, the profiler's handler, reproducible
  builds, msgs.olang's generator, StringBuilder, json keys, cheaper region headers in the runtime.

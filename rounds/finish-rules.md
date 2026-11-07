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
- One compiler build at a time in your worktree; no parallel make beyond the makefile's own. Memory is shared (15 GB)
  with up to four other rounds.
- Spec first (SPEC.md, grammar included), then the code; the compile-time evaluator gets the same semantics (a test it
  decides beside the run-time test); records in CLAUDE.md and HISTORY.md; walk DEPENDENTS.md. Details are yours within
  the user's decisions - record them as decisions, marked mine.
- Commit each coherent piece as you go, only the paths you changed - never `git add -A`; no Claude attribution lines;
  do not push; leave .claude/memory/ to the coordinator. Keep PROGRESS.md (worktree root) current: done, decided, next.
- At most three blocks nested inside a function's body (four on a special occasion); use the construct that fits best
  (guard clauses, `:` one-line bodies, `case P: v`, narrowing, comprehensions, errors raised by name).
- Report at the end: what was built, your decisions (numbered), bugs found and fixed, quick's result, what was left.

Rounds running at the same time (keep to your files where you can; small overlaps are merged by the coordinator):
- interp (/home/user/wt/interp): compiler/interp.olang, compiler/eval.olang, compiler/tools/evaldump/evaldiff, makefile.
- sec8 design note (/home/user/wt/sec8): docs only.
- errdata2 (/home/user/wt/errdata2): errors carrying data - check's error paths, lower's raise/clauses, emit, eval,
  std/runtime/runtime.ll, std's error declarations.
- packed (/home/user/wt/packed): packed structs - types' layout, emit's field access, eval, cabi and C imports,
  reflection, $ / == / Hash.
- dropord (/home/user/wt/dropord): drop order, unique Part C, reuse in place, the C-call rule - check's drop flags,
  lower's deferred-code order, free.olang, effects.olang.

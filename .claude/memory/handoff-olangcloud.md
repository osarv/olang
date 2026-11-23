# OLang Cloud hand-off (2026-11-23)

Written for a fresh OLang Cloud session. The previous one stopped because its context had grown to about 440k tokens.

## Read first
1. `.claude/memory/orchestrator-notes.md`, `claims.md` (the lines marked "OLang Cloud" are this session's), `plan.md`, and `decisions.md` (no questions open).
2. The review notes `/home/user/review9.md`, `review10.md`, `review11.md` and `review12.md`, and `docs/freeing.md` section 2.4, "Still open".

## In progress
- **wt-spawnrelease** (branch `wt-spawnrelease` at 8931c644e, rebased on master f689d46d5, not merged; worktree `/home/user/wt/spawnrelease`):
  - **Status:** done and checked, but it still needs a soundness review (Opus high, like review12) before merging.
  - **What it does:** a spawn target declared outside its loop is released by the spawner at the spawn, before the task starts. The task builds the new value in a region of its own, owned by the worker.
  - **Measured:** the review12 shape stays at 2 MB over 200k turns, where master reaches 911 MB. Fixture: checks' freeing `spawnlocal`. `-check` names every target that still keeps.
  - **Checks passed:** make quick, the fixed point (byte-identical), make race, and the freeing and earlyfree scenarios.
  - **Still open:** a `String` or array target keeps (now named). A struct target frees, but `-check` reports it as the already-known gap for a plain assignment.
  - **The review should attack:** sibling tasks reaching the released value, a failing task, views across the spawn, and the two new runtime functions in runtime.ll. Probes: /tmp/claude-0/sr (run.sh) and review12's a1-a9.

## Queue, in order
1. Finish, review and merge wt-spawnrelease.
2. **Condition 3 for the compiler itself.** OLang Debts found (wt-buildmem2, olang 23800823c) that the compiler's own build gets no early freeing at all: `-memory` shows 0 freed and 996 keeps. Condition 3 fires program-wide because the compiler hands a function value to C. Narrow it to what C can actually call back into. That is section-8 work, and no direction decision is needed unless knowing what C reaches needs a new annotation (if so, send a numbered question to the Orchestrator).
3. **Per-instance buffer places** (the user, 2026-11-23: "do vectors and views not per type, but per instance"): count a view keeping a type's growth as a gap, make collection buffer places per value, and give O23b's equality per instance as well (field scopes B currently gives it back per declaration). Section-8 work, Opus xhigh.
4. Open items in freeing.md 2.4: a lambda passed as a function value that builds through a captured helper's field; a task's catch default that allocates (about 250 B per failure); storage given back to a retired worker's home.
5. A full verify after the next big merge. The last one passed on master cd11ed19d.

## State
- **v1.0.0:** the user is tagging it on GitHub at cd11ed19d, because cloud sessions get 403 on tag pushes. When the Orchestrator says the tag exists, record "v1.0.0 = cd11ed19d" in HISTORY.md and plan.md.
- **Other sessions:**
  - OLang Debts owns the loop rule (loop names are values) and wt-argmove (moving temporary arguments, in lower.olang). Coordinate before touching shared files.
  - The olang Android session is fixing OTerm's crash at scope.olang:3227.
- **Stale goldens on master** (layoutdiff, interp@tests/pty.olang): probably from the Android merge; recapture them if they block a check.
- **How this session worked:** agents do the work in worktrees under `/home/user/wt`. Commits are authored as Oscar Arvidsson with no attribution lines. Build only with `/home/user/vlock make build`. Disk is tight, so delete build output.

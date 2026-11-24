# OLang Cloud hand-off (2026-11-24)

Stopped by the Orchestrator's pacing guard; no new items until it restarts this session.

## Read first
`orchestrator-notes.md`, `claims.md` ("OLang Cloud" lines), `plan.md`, `decisions.md` (question 2 is mine: a supplied `p.Replace(v)` through a `mut T&`).

## Merged 2026-11-24
- wt-spawnrelease 9cfeb4375 (reviewed: builder-made struct double drop fixed with `__olang_region_settle_in`; Task.FreshGuard).
- wt-cond3 cf42abcac (condition 3 narrowed: RunOnStack a call, export fns as task code, lambdas/function values not task roots; taskvals passes).
- wt-gap19 0cf530df0 + wt-gap19b 8cde655cc (gap 19 closed; `h.last = f()!` built once).
- wt-vecclear f5d1359d0 (D9h result views no longer defer a copy of what a `mut` reference points to).
- wt-mutparam 95b2fa459 (S4e: a reference parameter repointed at a fresh value is refused, FreshParamRepoint).

## In progress
- **wt-joinreach** (worktree /home/user/wt/joinreach, pushed, NOT merged): a join's let-go keeps only if a task it spawns reads a global reaching the place (free.olang joinReached/globReach). Self-build frees 538/1007 places (peak 2.71 -> 2.60 GB). Blocked by an older use-after-free it exposes: early freeing of `Map<I64, mir.ScopeRef>` field 2 (buckets; lower.olang fieldStor/regionPar; let go by Map.Put's first buckets and rehash) crashes the self-built compiler's `olang test` of ~15 compiler files ("use after scope closed" in Checker.ExprBodyIn). An Opus-high agent was debugging it at the stop; check the branch's last commits and HISTORY for its state.

## Queue after it
1. Per-instance buffer places (decided; Opus xhigh) - should close gap 17b.
2. Gap 17a (an element holding a struct with a Map field built by S(m) keeps old storage).
3. freeing.md 2.4 leftovers: lambda passed as a function value building through a captured helper's field; a task's catch default that allocates; storage given back to a retired worker's home.
4. A full verify after the next big merge.

## Notes
- Disk fills fast (each worktree's build/ is 8-12 GB): delete build/ output and merged worktrees.
- master's make quick had stale goldens/eval runs (std/time diag, canon, cshare) and pushtexts' second shape (40 MB) - seen, not mine.

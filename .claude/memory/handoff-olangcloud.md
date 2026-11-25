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

## Also merged
- wt-joinreach ec4686e35: a join's let-go keeps only if a spawned task reads a global reaching the place. Exposed and fixed two older bugs: D9h (a body with deferred code/destructor, or a local viewing a written parameter, hands back no view) and D16d (a lambda capturing a field built in its derived scope). Self-build frees 547/1008 places, peak 2.68 GB. strheld order fixture migrated to S4e (f4dc86167).

## Queue after it
1. Per-instance buffer places: partly done (wt-perinst + wt-gap17a merged 156c5266e, verify green on 6bde41539; plan.md lists what stays per declaration). Gap 17a/17b closed.
2. wt-fnvalbuild merged a318c63bb; into the next bulk soundness review with gap17a's keptCtor/keptView.
3. freeing.md 2.4 leftovers: wt-secondval merged d04c93943 (fixed a use-after-free gap17a widened); wt-checkfalse running (a false -memory -check pass, Rec with Vec<String>); storage given back to a retired worker's home; (a task's catch default: closed by wt-taskdefault fff70dac1 for one-target spawns whose handler captures only numbers - several targets or storage captures still keep).
4. Full verify green on e182d9887 (the whole batch). Next: wt-twoowners (review 1125's false -check pass, a constructor holding two Maps).

## Notes
- Disk fills fast (each worktree's build/ is 8-12 GB): delete build/ output and merged worktrees.
- master's make quick had stale goldens/eval runs (std/time diag, canon, cshare) and pushtexts' second shape (40 MB) - seen, not mine.

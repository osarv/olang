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
3. freeing.md 2.4 leftovers: wt-secondval d04c93943, wt-checkfalse e182d9887, wt-twoowners 92b56017c, wt-copygaps 3dd2d0b21, wt-origins 302e9d7cd (origins per path) merged; wt-liftcopy 0477c98f6 merged (a kept constructor's viewed arguments built in the turn; turn rows (LiftGaps) name storage built outside its loop turn; readArgCopy for non-constructor callees; one named self-build row left, lower.olang:393, runs once); storage given back to a retired worker's home; (a task's catch default: closed by wt-taskdefault fff70dac1 for one-target spawns whose handler captures only numbers - several targets or storage captures still keep).
4. Full verify green on wt-liftcopy 5e82ff967 (= master 0477c98f6) and 302e9d7cd (twoowners, copygaps, origins). Logs of the steward go to /home/user/steward-logs (verify wipes build/).

## Review 1125b (2026-11-25, /home/user/review/batch1125b/NOTES.txt): no use after free; false -check passes
- wt-revfix1 (findings 1, 3 fixed; 4 named) and wt-revfix2 (2 and the fill-and-walk fixed; 5 named) each in a full verify
  in its worktree, then merged by stewards in that order (logs /home/user/steward-logs/verify-revfix{1,2}.log).
- Next round (revfix3, after both merge): a text local given existing text each turn (~64 B/turn, -check passes falsely;
  freeing.md 2.4 "A text local given existing text"), finding 6's over-report (twoowners/ctorwrite), builtResult's
  over-report for a Vec<String&> holding promoted texts on purpose (fix.olang:181).
- Then a section-8 round: per-value regions for function-value locals (revfix2's option (b), fnvalgrow) - it would also
  close revfix1's builtResult (finding 4, option (a)). Decided as mine (implementation, no meaning change).
- Threaded fixtures (taskcaps, taskdefault) measure flatness by VmHWM: under `ulimit -v 8192` threads exit 2 even flat.
- wt-cunion merged (7c6e81776, goldens 526eb409a): X18a, `u.m()`/`u.set_m(v)` for C union number members (little-endian).

## Notes
- Disk fills fast (each worktree's build/ is 8-12 GB): delete build/ output and merged worktrees.
- master's make quick had stale goldens/eval runs (std/time diag, canon, cshare) and pushtexts' second shape (40 MB) - seen, not mine.

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
- wt-revfix1 merged (08dd7d3de) and wt-revfix2 merged (5048bcacd, goldens e2de6b2de), each after a full verify green
  in its worktree (master = e2de6b2de holds every full-verified change; revfix1's first verify was OOM-killed with two
  verifies and builds side by side - run ONE full verify at a time on this 15 GB machine).
- wt-revfix3 merged (731c02cc2): text locals given existing text copied for the place (SCopy), finding 6, a Vec that
  only grows. wt-fnregion merged (0fa6c9aae, full verify green on e1fe482a6): closures in a function-value local get a
  region per call (lower.handsPlan..handOver, Stmt.Drop); fnvalgrow and l1xmod flat. builtref stays named (a field
  path: needs O23b per instance).
- Queue done 2026-11-26. Left, each needing the user's direction (decisions.md 3-5, sent to the Orchestrator): O23b's
  binding per instance (a word per instance), a view across its own value's let-go (a run-time pin), views rooted at
  parameters/fields/globals (per-call-site facts against B3i).
- Threaded fixtures (taskcaps, taskdefault) measure flatness by VmHWM: under `ulimit -v 8192` threads exit 2 even flat.
- wt-cunion merged (7c6e81776, goldens 526eb409a): X18a, `u.m()`/`u.set_m(v)` for C union number members (little-endian).

## Notes
- Disk fills fast (each worktree's build/ is 8-12 GB): delete build/ output and merged worktrees.
- master's make quick had stale goldens/eval runs (std/time diag, canon, cshare) and pushtexts' second shape (40 MB) - seen, not mine.

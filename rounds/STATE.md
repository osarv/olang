# Coordinator state - read this first after a compaction (2026-11-08)

Running (background agents, worktrees under /home/user/wt): kw (round 1 of docs/fnvalues.md: one tier of keywords,
promise words reserved), refusals (audit of every memory refusal -> docs/refusals.md), genrefs (generational
back-pointers instead of counting -> docs/genrefs.md), bench (benchmarks in the test runner, continued from a WIP
commit), satarith (arith.Saturating<T>, continued from a WIP commit). Rules for build rounds: round-rules.md here.
On each finish: review the report, merge into wt-merge (/home/user/wt/merge), make consistency, push master + wt-merge
+ claude/github-environment-setup-ftu9va, record the user's questions in .claude/memory/decisions.md (open ones only).
Next, one at a time where files overlap: fnvalues round 2 (Destroy removed, sonnet) after kw merges, then rounds 3-12
per the note's section 14 (12 = constructor-fixed fields followed + promise words on trait methods, both YES);
the refusal audit's fixes after the fnvalues rounds; genrefs' build after its note is approved; REPL + Jupyter,
coverage, platforms, olang get after bench/satarith. oann holds until version 1 is mature.
Usage is the main resource: one agent per round, short briefs, propose /compact to the user with a prompt.

2026-11-08 ~12:25 CET: merged and pushed refusals, genrefs (questions pending; user settles "in a couple of hours", no
dependent agent before), bench, satarith, kw (round 1) - master 5ec9f2f9. Round 2 (Destroy, sonnet) running in
/home/user/wt/destroy. Known: the "many local ifs" check needs ~5 GB (pre-existing, not a regression) and is killed
under a full verify's load - a fix to queue (memory of interpreting 20000 ifs). Refusal answers: 1,2,3,6 yes; 4 to
discuss; 5 open.
2026-11-08 ~13:25 CET: round 2 (Destroy removed, wt-destroy f4b9ed62) merged into wt-merge, full verify running. Follow-ups from its report: (a) std/net constructors inconsistent - UDP.Listen now returns UDP by value, Listener.Listen/Conn.Dial still mut X&; decide (lean: all by value, T13b) and fold into a small std fix; (b) free.olang's dtorVal/dtorCand kept only for the RDtor row - simplify later; (c) diag golden on master had been stale (b11near [M9], m9builderold) - fixed by the recapture.
2026-11-08 ~13:50 CET: round 2 verified and pushed (master d8c06c37). Running: round 3 (opus high, /home/user/wt/dtorstore, wt-dtorstore); std/net constructors by value (sonnet, /home/user/wt/netval, wt-netval). After round 3: refusal R5, R6; then the interpreter memory fix for many ifs (touches eval.olang).
2026-11-08 ~15:10 CET: round 3 + netval merged, verified, pushed (master a4f55c96). Running: fnvalues round 4 (opus xhigh, /home/user/wt/promises), refusal R5 become tail (opus high, /home/user/wt/becometail). Next: R6 generators (after R5, both lower.olang), R7 ends ordered, fnvalues round 5 (after round 4), interp many-ifs memory fix. Found by round 3 (not fixed): free.olang's -memory note position for a holder in a loop can point at another local's store.
2026-11-08 ~16:30 CET: R5 (become tail scope) merged into wt-merge, verify running. Disk filled at ~15:50; removed 13 merged worktrees (21G free). R5 notes: BecomeBorrows/BecomeDestructor kept as unreached fallbacks (R8's dead-message sweep may remove them); a fix of Placements' site-lift key landed with it. Next after verify: R6 generators.
2026-11-08 ~17:45 CET: R5 + round 4 merged, verified (only manyifs OOM-killed - compile peaks 6.0 GB, interpret 5.4 GB alone), pushed (master bb3e1a03). Running: manyifs memory fix (opus high, /home/user/wt/manyifs), fnvalues round 5 effects (opus high, /home/user/wt/effects). Next: R6 generators, R7 ends ordered, round 6 (O29, after which R1). Round 4 notes for the user: a soundness hole fixed (result-outlives-parameter accepted at a boundary when only the parameter could be stored through); dropped design-note point: a named function keeping x in a global no longer fits `keeps x`.
2026-11-08 ~20:00 CET: merged docs/wholeprog.md (survey; 5 questions in the ledger; the user wants compile-per-module rescoped) and the manyifs memory fix (6.0 GB -> 642 MB compile; StmtList, bndDef in place, Fn by reference); verify running. Running: fnvalues round 5 effects (/home/user/wt/effects), reuse-key bug fix (/home/user/wt/reusekey, wholeprog section 8). Open from manyifs: lowering's memory lives until the build ends (per-function freeing needs lower.olang restructured). Discussed with the user: std/pool (recommended yes, unanswered), weak (unanswered).
2026-11-08 ~20:30 CET: the user said yes to every recommendation of docs/wholeprog.md (5 = incremental front end, now) and docs/genrefs.md (weak; count of owning places now; every module; std/pool), plus the standing rule "build what we will build anyway now". Ledger/archive/rules updated. Running: round 5 effects (/home/user/wt/effects), reusekey (/home/user/wt/reusekey), records + combined build order (opus, /home/user/wt/wpplan -> docs/wholeprog.md "Build order"), std/pool (sonnet, /home/user/wt/pool); verify of the manyifs merge in wt-merge. Still open: refusal Q5 (any copy, recommended not now), licence.
2026-11-08 ~21:30 CET: all genrefs and wholeprog questions answered and recorded (wt-wpplan merged; PRINCIPLES qualified). THE BUILD ORDER IS docs/wholeprog.md section 10 (lanes: F6+W1, R1+W2, F7+W3a, R2+G1, F8+R6R7, R3+G2G3, R4+F9, R8+F10, W4+G4, F12+F11, W3b+G5G6, review B); testing plan 10.3 (T1-T8). Running: F5 effects (/home/user/wt/effects), W0 reusekey (/home/user/wt/reusekey), G8 std/pool (/home/user/wt/pool, wt-pool2). Open with the user: refusal Q5 (any copy) - I now recommend B (Copy+size in the table, whole-program check for unique). The licence: never raise it (the user).

## 2026-11-08 ~20:40 CET
Merged + verified + pushed (master, session branch): W0 reuse key, F5 effect words (round 5), G8 std/pool. Worktrees removed.
Running: F6 scopes at run time (opus xhigh, /home/user/wt/scopefind, wt-scopefind); W1 facts with readers + harness
(opus high, /home/user/wt/facts, wt-facts); E1 settling experiment (opus high, oagent main, experiments/e1-state-tracking,
compiler copy /home/user/expbin/olang). Next after F6+W1: step 2 (R1 beside W2), A1 after W1.
oann: decided (direction.md "oann and oagent, redefined"); no open ledger questions. Usage ~0.53+ at 19:06.

## 2026-11-08 late (CET)
- wt-slim merged and pushed: Settled decisions are now in docs/settled.md (CLAUDE.md has an index), rules and direction slimmed with full text in the archive. The loaded context went from ~151 KB to ~33 KB. Worktree removed.
- F6 (wt-scopefind) and W1 (wt-facts) restarted on Opus at high; each commits its WIP, merges master, then continues from PROGRESS.md. E1 (oagent) restarted on Sonnet at high from 0d93a53.
- Token rules: briefs say be resourceful, reports are at most 10 lines.
- Agent log started: /home/user/review/agents.tsv (32 rows backfilled, outcomes to fill). Current A/B: F6/W1 at opus medium vs earlier rounds at high/xhigh; E1 sonnet medium.
- F6 merged, verified (all passed), pushed. Leftovers in plan.md. W1 running.
- W1 merged, verified, pushed (goldens recaptured incl. modgraph).
- Step 2 started: R1 (wt-refusals1) and W2 (wt-freeall), both opus medium (table said xhigh/high - A/B). Note: local master ref is stale; branch worktrees from wt-merge.
- R1 merged (tree == its verified tip), pushed.
- W2 merged, verified, pushed. Step 2 done.
- Usage: seven_day 0.56 at 2026-11-08 21:25 CET (resets Sat 11-14 05:00 CET). One agent at a time now, to calibrate %/agent. F7 started (wt-lending, opus medium).
- F7 merged, verify+scopesan+fuzz free (300, 0 findings) pass, pushed. Found: make fuzz generator emits R23a-violating programs (34/100 findings, stale gen); runner.olang link failure in reused build/ (B3i stale object?).
- wt-fixes merged (fast-forward, verified), pushed.
- Usage 0.60 at 02:25 CET Mon (0.56 at 21:25 Sun): ~0.04 per ~450k-token Opus-medium agent. Budget to 0.92 = ~8 such agents to Sat. Pace ~1-2/day, one at a time.
- R2 merged (ff, verified), pushed. rv3roclone = permission case (T25c), agreed.
- Usage 0.61 at 04:45 CET (0.60 at 02:25): R2 (313k) + tail of the fix agent cost ~0.01. Earlier 0.04 likely included W2+my own turns. Recalibrate: ~0.01-0.02 per agent.
- F8 started (wt-derived, opus medium), alone.
- F8 merged (ff, verified), pushed. Open bug: Vec<Logged> lent to a pushing fn placed in frame scope -> dtors build into closing scope (sanitizer abort; seed too). Disk 9.1G free; scratchpad 7.7G (gate/t7/prof dirs) - delete needs the user OK (/tmp rule).
- vecdrop merged (ff), pushed.
- Review A done: rounds clean. Bug: ctor default field Vec<File>/Map<I64,File> (bad IR / interp abort). Over-rejections r1,r2 (O25h/O25), p7/p9 (T13b return Vec<Logged>), T25c on p.items.Push for value local. Repros: review/reviewA/.
- User 11-09: no more experiments unless they teach the compiler; order compiler -> oann -> experiments. /tmp deletions allowed freely.
- Probe review/global_letgo_probe.olang: a mut global Vec replaced 2000x keeps everything (peak 705 MB; -memory: "no place lets go"). Global stores are not let-go places yet, though memory.md says they are. Queue fix.
- ctorfield merged, pushed.
- globalfree merged, pushed. Follow-ups: (a) field store lift: v built where h lives, 572MB - build v in the field region from its declaration (option b, my call; also replace the global copy with it); (b) Maps with text keys no longer free values early after the key-text fix - recover.
- Survey done: oagent/papers/survey-reasoning.md (f10857d).
- regionkeep merged, pushed. Gap: s += m.Get(k)![5] in a loop keeps each turn copy (266MB), pre-existing.
- Usage 0.65 at 11:00 CET Mon (0.56 Sun 21:25, ~10 agents): ~0.01/agent incl. coordination. ~25 agents of room to 0.92.
- getcopy merged, pushed. G1 running.
- G1 merged, verified, pushed. Next: G2+G3 (wt-genheader) beside W3a (wt-frontrec).
- G2+G3 and W3a merged, verified together, pushed.
- Usage 0.69 at 15:00 CET Mon. ~0.05/day available to Sat. Effort log review (~20 agents at medium): verify fails were goldens/new-case rows only; review A found no bugs in medium rounds; fuzzers clean. Medium is enough for compiler rounds.
- R6+R7 merged. Gap: generator given a reference param placed in that ref scope -> walk let go late (scope.olang).
- R3 merged, verified, pushed.

- 2026-11-09: fallbacks merged (ed3c06d5), verified, pushed. Left: reference parameter assigned in body; capture via stored fn value; `$` in a generator maps Inert to program scope (nothing built).
- 2026-11-09: overrej merged, verified, pushed. R4 started.
- 2026-11-09: R4 + F9 merged, verified, pushed. R8 running.
- 2026-11-10: F10 merged, verified, pushed.
- 2026-11-10 01:03 UTC: container restart killed R8 (final verify) and G4. R8 merged by me (conflicts: HISTORY, goldens recaptured), verifying. G4 relaunched with PROGRESS.md + commit-as-you-go.
- 2026-11-10: R8 merged, verified, pushed. G4 running. Next: W4 (after R8), then F12, F11, W3b, G5+G6, review B.
- 2026-11-10: W4 merged, verified, pushed.
- 2026-11-10: G4 merged, verified, pushed. F12 running.
- 2026-11-10: F12 merged, verified, pushed.
- 2026-11-10: G5+G6 merged. FOR REVIEW B: residual soundness gap (temp reference to a shallow copy of a local struct not compared at reclaim sites, genrefs round 5 as built). LRU 7.0 MB: Map key copies of removed entries -> O8d.
- 2026-11-10: G5+G6 verified (2nd run; 1st OOM beside W3b), pushed.
- F11 done (wt-f11 57a2dc65), held until incfix lands; baseline fails also lsp.olang test "build/olang: not found".
- 2026-11-10: W3b + incfix + F11 merged, verified (last run: only tok/ast goldens of the fixture, recaptured and passing), pushed. Next: review B.
- review B2 done: W3b record stale vs whole-program fact (repro reviewB2/w3b_seed101); undo-edit relowers; over-rejections p10/p11, p8 msg, -memory name. Fix after B1.
- review B1 done: no confirmed hole; Temp-not-counted suspicion + genrefs 2.5 doc sent to b2fix.
- 2026-11-10: review B fixes merged, verified, pushed. All 10.2 rounds done. Left: final gates (cross, bench, race), leftovers list.
- 2026-11-10: final gates pass: race (only the intentional one), cross aarch64 (needs clang-19, libc6-dev-arm64-cross, binutils-aarch64-linux-gnu, qemu-user; o8e probes now assert growth), scopesan, scopefuzz SEED=11 x500, fuzz free 5 x300. Pushed. Usage ~0.89: no new agents until reset (send_later armed Sat 05:10 CET).
- 2026-11-13 18:40 CET: user allowed burning the rest of this week (0.89 at 17:34 UTC, reset 05:00 CET Sat), olang first as planned. Running: wt-leftA (scope shapes, twin records, p8 msg), wt-leftB (memory leftovers). Then the refactor pass.
- 2026-11-13: leftA + leftB merged, verified, pushed (leftA found a use-after-free on a reassigned reference parameter). wt-axes running. Next: target-typed literals, print/println, quick run, warnings; then refactor.
- 2026-11-14 night: axes, ease, lits merged, verified, pushed. printcap renaming io.Print* -> io.Write* (my call, user asleep).
- 2026-11-14 01:40 CET: printcap merged, verified, pushed (io.Put* rename). Starting one-liner tool (sonnet low).

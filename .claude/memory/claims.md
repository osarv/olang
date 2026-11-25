---
name: claims
description: "Who is doing what across sessions (local WSL, cloud): one line per claimed item - session, branch, item - written and pushed before starting; never pick up another session's claim"
metadata:
  type: project
---

Rule (agreed 2026-11-17 between the local session and the Orchestrator): before starting an item, a session adds a line
here and pushes; removes it (or marks it done with the merge commit) when merged. Covers olang, oann and oagent.

| session | branch | item | since |
|---|---|---|---|
| local (WSL, GPU) | oann wt-gp5 | GP5 done: merged oann 76fafed | 2026-11-17 |
| local (WSL, GPU) | oann wt-gp6 | GP6 done: merged oann ef285b0 | 2026-11-18 |
| local (WSL, GPU) | oann wt-gp7 | GP7 done: merged oann c5bd404 - the GPU route GP1-GP7 is complete | 2026-11-18 |
| local (WSL, GPU) | olang wt-o10cglobal | O10c global getter done: merged olang 5316c9333 (fix 4e93798d8); installed compiler not yet rebuilt (after GP7) | 2026-11-18 |
| local (WSL, GPU) | oagent wt-ebr2 | e2 round 3 done; scaling in progress, paused 2026-11-19 00:45 (oagent main 40a03ef, experiments/e2-ebr/MAP.md 'Where to pick up'; checkpoints in /home/oscar/claude/data/e2-ckpt) | 2026-11-18 |
| local (WSL, GPU) | oann wt-gp8 | GP8 done: merged oann cca2b42 - views, stacks of products on the GPU; e2 trains 5-10x the CPU's | 2026-11-18 |
| local (WSL, GPU) | oagent wt-e2settle | e2 settling arm (dyn): done on the branch (44cc46f), to merge | 2026-11-18 |
- e7 research (cloud, 2026-11-18): oagent experiments/e7-memory - done, rounds 1-2 (oagent dc73a02, README/MAP there)
- e4-amortize cloud session (2026-11-18): done - oagent d12ddae (experiments/e4-amortize); no oann changes
- e6 research (cloud, 2026-11-18): oagent experiments/e6-gradients - done: oann dcb6ff3 (TruncatedGrad, dyn/holo), results in oagent
- research cloud e5 (2026-11-18): oagent experiments/e5-depth - adaptive depth: round 1 done, oagent 551b7fb (README/MAP there); structural levers (multi-scale energy, addition/reachability) open
- e8-local cloud session (2026-11-18): oagent experiments/e8-local DONE (oagent main, three-factor local rules; MAP.md holds the open items)
- e9-sparse cloud session (2026-11-18): done - oagent 33f2ca1 (experiments/e9-sparse); no oann changes
- e10 research (cloud, 2026-11-18): oagent experiments/e10-sleep - done: oagent 2e075d9 (circuit nights lose to the consolidator; results in README)
- e11 integrate (cloud, 2026-11-18): oagent experiments/e11-integrate (wt-e11) - done: integrated system exact to 10000 on mix and S5; a no-settle BPTT cell with the same priors matches it (README conclusion)
- e12-language cloud session (2026-11-18): done - oagent 6ace9b5 (experiments/e12-language): not promising at pilot scale
- e13-grids cloud session (2026-11-18): done (paused) - oagent main f66c925 (experiments/e13-grids, README + MAP "Where to pick up"): gated settle exact on reach to 64x64; vor 53.5/38.7 % 32x32; no oann changes
- Orchestrator child (cloud, 2026-11-21): olang weekly full make verify on master 12795f7fc
- olang session (cloud, 2026-11-21): wt-mempeak and wt-buildspeed merged (be72d7214)
- olang session (cloud, 2026-11-21): wt-backend merged (a3ca48864)
- olang session (cloud, 2026-11-21): wt-mempeak and wt-buildspeed merged (be72d7214)
- olang session (cloud, 2026-11-21): wt-runperf, wt-ltokey, wt-sha merged (7ee156575)
- olang session (cloud, 2026-11-21): wt-bgame merged
- olang session (cloud, 2026-11-22): wt-mapnode merged (FindByte kept, Map change dropped)
- olang session (cloud, 2026-11-22): wt-genslow merged (no repro)
- Orchestrator child (cloud, 2026-11-22): olang wt-debts merged - plan.md small known debts closed (M13 import order, 12 checks cases; one walker debt left in plan.md)
- Orchestrator child (cloud, 2026-11-23): olang wt-walkers merged - types.HeldParts under the type walkers
- Orchestrator child (cloud, 2026-11-23): olang wt-mempeak2 merged - the analysis goes when Analyze returns (tree peak cold 5044 -> 4287 MB)
- Orchestrator child (cloud, 2026-11-23): olang wt-memhelpers - on hold: lower/emit helpers wait for OLang Cloud's view of the mut-field placement rule (asked the Orchestrator, its Q3)
- Orchestrator child (cloud, 2026-11-23): olang wt-mutplace - stopped: findings in plan.md "Build memory, open"; handed back to the Orchestrator
- Orchestrator child (cloud, 2026-11-23): olang wt-speed merged - check 3.5 -> 3.0 s on the self-build (views, emit, records)
- Orchestrator child (cloud, 2026-11-23): olang wt-loopval merged - S9a/S9g, a loop name is the element's value (the user's rule of 2026-11-23); oann/oagent migration notes sent
- Orchestrator child (cloud, 2026-11-23): olang wt-bf16dot merged - E39 BF16 pair dot (vdpbf16ps); AMX measured 7.5x F32, surface proposed, not built
- Orchestrator child (cloud, 2026-11-23): olang wt-adddot merged - tile.AddDot (AMX, bit-exact, 425-449 GMAC/s)
- Orchestrator child (cloud, 2026-11-23): olang wt-mapiter merged - Map walks over values holding writable references (IterRef, IterMut, the loop picks)
- Orchestrator child (cloud, 2026-11-23): olang wt-android - Android target (aarch64-linux-android, bionic via NDK r28c), NativeActivity sample and APK: merged
- Orchestrator child (cloud, 2026-11-23): olang wt-buildmem merged - plans by reference in lowering (-36 MB); the emitted text left as the next step
- OLang Cloud (2026-11-24): olang wt-cond3 - condition 3 narrowed to what C can call back into, fixes taskvals (running); next per-instance buffer places (spawnrelease merged 9cfeb4375)
- Orchestrator child (cloud, 2026-11-23): olang wt-buildmem2 merged - objects spilled as assembled, items copied once (cold lower+emit 3116 -> 2757 MB)
- Orchestrator child (cloud, 2026-11-23): olang wt-argmove merged - a fresh text or call result given to a reference built where it goes (E12c)
- Orchestrator child (cloud, 2026-11-23): olang wt-chanwait - chan.RecvUntil and cancellation block (futex or condvar with a timed wait) instead of polling every 10 ms
- Orchestrator child (cloud, 2026-11-23): olang wt-utf8src - UTF-8 in string and character literals and comments (identifiers ASCII), validated by the scanner
- Orchestrator child (cloud, 2026-11-23): olang wt-utf8src merged - UTF-8 in literals and comments, validated (L1)
- Orchestrator child (cloud, 2026-11-23): olang wt-chanwait merged - waits with a token block (no 10 ms polling); WaitUntil on a pidfd
- Orchestrator child (cloud, 2026-11-23): olang wt-e73finds - e73 findings: Array<String>.Join refused (method lookup by element type on Array), a permutations walk in std
- Orchestrator child (cloud, 2026-11-23): olang wt-homestd (time local offset, tls pinned fingerprint) and wt-homecimp (one type per C tag across header imports) - oagent home findings
- Orchestrator child (cloud, 2026-11-23): olang wt-homestd and wt-homecimp merged - time.LocalOffset, tls pin and DialToLearn, one C type per tag, anonymous C members
- OLang Debts (cloud, 2026-11-24): olang wt-e73finds - finishing (verify, records, merge)
- OLang Debts (cloud, 2026-11-24): oann wt-bf16gemm - kernels/gemm register blocking for the BF16 pair dot
- OLang Debts (cloud, 2026-11-24): oann wt-bf16gemm merged (eaa9b08) - pair-dot micro-kernel, on only for znver4/5 (widened F32 wins on SPR); measure on the Ryzen with make bf16bench
- OLang Debts (cloud, 2026-11-24): olang wt-copyonce - a conditional given to a reference and a call result placed elsewhere built where they go (no double copy)
- OLang Debts (cloud, 2026-11-24): olang wt-e73finds merged (bee87cb62) - M19, Array.Permutations
- OLang Debts (cloud, 2026-11-24): olang wt-copyonce merged (ad0147dbe) - cond arms and try-wrapped calls built where the reference goes (-54 MB lower+emit)
- OLang Debts (cloud, 2026-11-24): olang wt-slicehoist - a slice's bounds check in a loop (oann pair-dot finding)
- OLang Debts (cloud, 2026-11-24): olang wt-slicehoist closed (01587e657) - O44 already hoists; no codegen change, finding in HISTORY. wt-evaltriage running (canon/cshare/std/time eval runs, pushtexts)
- OLang Debts (cloud, 2026-11-24): wt-evaltriage closed (5255306c8) - none of the three findings reproduces on master; queue empty
- OLang Debts (cloud, 2026-11-24): full make verify on master f916af036 (wt-verify)
- OLang Debts (cloud, 2026-11-24): freeing gaps 17/19 repro check
- OLang Debts (cloud, 2026-11-24): gaps 17/19 reproduced, fixtures merged (c71ce26dd), for OLang Cloud
- OLang Debts (cloud, 2026-11-24): full verify on 1cc282a15 failed: taskvals (OLang Cloud's cond3), array.olang build vs interp (wt-arrayeval, mine), tok/ast goldens stale
- OLang Debts (cloud, 2026-11-24): olang wt-copyonce2 - call result into an early-freeing region, try with a default - merged 2026-11-24 (5a6720bee); left: a try's call into a region (free.olang)
- OLang Debts (cloud, 2026-11-24): wt-arrayeval merged (738ea9ff9) - stale run golden, evaldiff names it; tok/ast goldens recaptured
- OLang Debts (cloud, 2026-11-24): olang wt-fieldborrow - `d := f.data` copies the array when the receiver is a global (OAgent app finding)
- OLang Debts (cloud, 2026-11-24): wt-copyonce2 merged (c8f897633); left for OLang Cloud: h.last = f()! (free.redirect stops at try)
- OLang Debts (cloud, 2026-11-24): wt-fieldborrow merged (485d39816) - D9h in-place read kept when a call can't write a global (DecideWrites)
- OLang Debts (cloud, 2026-11-24): wt-writesfact merged (7915f3904); session stopped, hand-off in handoff-debts.md
- OLang Windows (cloud, 2026-11-24): olang wt-windows - x86_64-windows target (mingw-w64, clang+lld, wine), runtime OS layer, Win32 interop; merged; Winsock+Schannel merged, hand-off handoff-windows.md, session stopped
- OLang Cloud (2026-11-25): olang wt-perinst + wt-gap17a merged (156c5266e, goldens 6bde41539) - condition 6 per value, owners per value for slot places, gaps 17a/17b closed; left per declaration: views rooted at parameters/fields/globals, a view across its own value's let-go, O23b (freeing.md 2.5)
- OLang Cloud (2026-11-25): olang wt-taskdefault merged (fff70dac1) - a task's catch default built in the target's stand-in, not the program's scope (freeing.md 2.4 open)
- OLang Cloud (2026-11-25): olang wt-fnvalbuild merged (a318c63bb) - a lambda passed as a function value building through a captured helper's field takes O29's lookup (freeing.md 2.4)
- OLang Cloud (2026-11-25): olang wt-secondval merged (d04c93943) - a struct holding text given a second value read freed storage (free.PartLeaf); Vec<String> already flat
- OLang Cloud (2026-11-25): olang wt-checkfalse merged (e182d9887) - -memory -check passes falsely for a struct holding a Vec<String> given a second value (~36 B a turn); make it honest, then close the keep
- OLang Cloud (2026-11-25): olang wt-review1125 (review of the day's relaxations: no use-after-free; probes in review/batch1125) and wt-twoowners - -memory -check passes falsely for a constructor's instance holding two Maps stored into an element (viewCtor's RMade)

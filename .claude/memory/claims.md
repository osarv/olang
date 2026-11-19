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
- OLang Cloud (2026-11-19): olang wt-d9h - the D9h copy (x := v[i].a.View()) and Vec<Array<Q>> elements

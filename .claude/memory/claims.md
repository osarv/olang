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
| local (WSL, GPU) | oagent wt-ebr2 | e2 round 3 (EP arm on oann ad/descent, cb8c37f + 9fa8a85 pass counters) in progress | 2026-11-18 |
| local (WSL, GPU) | oann wt-gp8 | GP8 done: merged oann cca2b42 - views, stacks of products on the GPU; e2 trains 5-10x the CPU's | 2026-11-18 |
| local (WSL, GPU) | oagent wt-e2settle | e2 settling arm (dyn) | 2026-11-18 |
- e7 research (cloud, 2026-11-18): oagent experiments/e7-memory - done, oagent 66045c8 (README/MAP there); open: EP/implicit training of the hybrid
- e4-amortize cloud session (2026-11-18): done - oagent d12ddae (experiments/e4-amortize); no oann changes
- e6 research (cloud, 2026-11-18): oagent experiments/e6-gradients - done: oann dcb6ff3 (TruncatedGrad, dyn/holo), results in oagent
- research cloud e5 (session_01DLX3U...UW, 2026-11-18): oagent experiments/e5-depth (wt-e5depth) - adaptive depth: settling core vs looped baseline on parity/counting/reachability/addition, length generalization
- e8-local cloud session (2026-11-18): oagent experiments/e8-local DONE (oagent main, three-factor local rules; MAP.md holds the open items)
- e9-sparse cloud session (2026-11-18): oagent experiments/e9-sparse - sparse event-driven updates (settling-niche 2.4), tile skipping, with/without learned start
- e10 research (cloud, 2026-11-18): oagent experiments/e10-sleep - done: oagent 2e075d9 (circuit nights lose to the consolidator; results in README)
- OLang Cloud (2026-11-18): oann wt-anderson - Anderson acceleration for the exact adjoint and forward settle (dyn)
- OLang Cloud (2026-11-18): oann wt-int8stream - INT8 streaming GEMV regained without losing BF16's gain (kernels/gemm)
- e11 integrate (cloud, 2026-11-18): oagent experiments/e11-integrate (wt-e11) - one system from e7 hybrid + e4 start/halting + e3 neuron + e6 truncated adjoint + e9 events; ablations vs LSTM/GRU/transformer

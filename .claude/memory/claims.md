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
- OLang Cloud (2026-11-18): olang wt-diagshort - error rows over 120 chars split into headline + note/help
- OLang Cloud (2026-11-18): olang wt-bf16vec - BF16->F32 widening kept vectorized in multi-chain loops
- e7 research (cloud, 2026-11-18): oagent experiments/e7-memory - hybrid core: RLS/gated-delta memory + Hopfield step in the energy (mod-5, MQAR); branches wt-e7*
- e4-amortize cloud session (2026-11-18): oagent experiments/e4-amortize, oann wt-amortize - amortized settling (settling-niche 2.1): predictor z0 + Anderson baseline
- e6 research (cloud, 2026-11-18): oagent experiments/e6-gradients - gradient estimators at the fixed point on dyn (implicit, JFB, EP, holomorphic EP); branches wt-e6*
- research cloud e5 (session_01DLX3U...UW, 2026-11-18): oagent experiments/e5-depth (wt-e5depth) - adaptive depth: settling core vs looped baseline on parity/counting/reachability/addition, length generalization

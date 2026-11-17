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
| local (WSL, GPU) | oann wt-gp5 | GP5: G-M2, CPU against GPU on MNIST (docs/redesign.md 4.4) | 2026-11-17 |
| local (WSL, GPU) | oann wt-gp6 (next) | GP6: ad/graph, ad/ops, nn/optim on the GPU | 2026-11-17 |
| local (WSL, GPU) | oann (next) | GP7 and the GPU follow-ups: ProductI8's I32->F32 dequantization kernel, fusion/CUDA graphs | 2026-11-17 |
| local (WSL, GPU) | olang (next) | O10c on a function returning a reference to a module global, called from oann System<T>.Plan (plan.md, GP4's entry) | 2026-11-17 |
| local (WSL, GPU) | oagent wt-ebr2 | e2 (EBR) rounds 2-3, held until the GPU route merges | 2026-11-17 |
| cloud (OLang Cloud) | olang wt-noalias | `noalias` for `mut` references where scopes prove no alias | 2026-11-17 |
| cloud (OLang Cloud) | olang wt-netos | TLS in std/net; append in std/os | 2026-11-17 |
| cloud (OLang Cloud) | olang review | the opus-high bulk soundness review of G42 facts (cee8842f1) | 2026-11-17 |
| cloud (OLang Cloud) | oann wt-cert | the nudged pair's certificate: block-weighted norm / budget per row (PROGRESS.md Next) | 2026-11-17 |

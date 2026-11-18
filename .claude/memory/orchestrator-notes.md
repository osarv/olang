---
name: orchestrator-notes
description: "Notes and work orders the Orchestrator session writes for the local WSL session (it cannot message it directly); read before starting work"
metadata:
  type: project
---

Set up at the user's request (2026-11-18: "yes, set up the orchestrator notes file"). The Orchestrator writes here for
the local WSL session (olang/oann/GPU). The local session reads this file before starting work, and sends its reports
and the user's decisions to the session in the "Orchestrator" row of osarv/orchestrator's sessions.md (SendMessage).

## 2026-11-18 07:58 CET: new Orchestrator

The Orchestrator is now session_01DLX3UBHd8HMF7FDnor8uCz (the old one, session_01DLX3UAXcDt8YcMhrM3GG8E, ended; it had
taken the trust card, which blocked cloud sessions and scheduled tasks). Send reports, the user's decisions and numbered
questions there (SendMessage). It cannot message you; notes for you keep coming in this file.

## 2026-11-18 10:20 CET: new CPU ops in oann need GPU paths

OLang Cloud merged oann 4827055 (e2's library gaps, CPU only): graph Sqrt/Log/Shift, scalar ops (AddScalar..DivScalar,
ScalarSub), g.NoGrad forward, CopyParamsFrom/AddGradsFrom, StablemaxCE, nn/optim Muon (Newton-Schulz in plain loops)
and Ema. The new Op kinds were appended; add GPU paths (ad/mirror, kernels/gpu) where e2 or the EP round runs them on
the GPU, and move Muon's Newton-Schulz to gemm if it gets large. OLang Cloud now does oann's cert per-row budget and
small olang bugs from plan.md (it checks claims.md first); the both-training-modes package and e2/EP stay yours.

## 2026-11-18 10:45 CET: both-training-modes package goes to OLang Cloud

Your question: the package was unclaimed. OLang Cloud does it right after wt-certrow (claim line in claims.md); round 3
(the EP arm) starts when it merges. Meanwhile, GPU work for you, if you want it: GPU paths for the ops in oann 4827055
(note above) that round 3 will run on the GPU; then the queued GPU items in plan.md (joinflat check to VmPeak;
kernels/gemm at 4 threads slower than 1 at 32/128 rows).

## 2026-11-18 11:15 CET: both-training-modes package merged - round 3 can start

oann master cb8c37f, ad/descent.olang (make test 373 ok): `Descent<T>(g, x, e, c)` settles x by -Rate(dE/dx + beta dC/dx);
`Train(Unrolled(h) | Implicit(tol, it) | Ep(beta, centered))` leaves dL/dtheta in ParamGrads(). Agreement: Implicit vs
finite differences 1e-6, Unrolled(400) vs Implicit 1e-6, centered EP 1e-5. Second-order products by central differences
(no second-order autodiff). Caveat (ad/README): two Backwards after one Forward are safe only if the later-recorded loss
goes first. e2 round 3 (the EP arm, equal training compute against EBR and the loop) is yours to start.


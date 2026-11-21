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

## 2026-11-18 14:10 CET: settle row compaction merged (CPU) - GPU version for you if it pays

oann 23d8328 (OLang Cloud): every row of a settle stops on its own residual and the products run over live rows only
(no data moved, units re-planned): MNIST lesson 1.45x faster at batch 32, 2.3x at 128, 3.9x at 512; accuracy -0.04 to
-0.19 pt at batch 32, +0.15 at 128. CPU only; `Engine.RowStops=false` turns it off. The same on the GPU settle (CUDA
graphs) is yours to measure, after or beside e2 round 3, whichever you judge better.

## 2026-11-18 15:55 CET: activation functions (oagent e3, CPU) - SiLU/GELU lead; GPU kernels for you if useful

OLang Cloud ran EXPERIMENTS.md #2 (oagent experiments/e3-actfn; MNIST 784-128-10, EP beta 0.5, 3 epochs, 2 seeds):
SiLU 97.56, GELU 97.45, ReLU 97.41 vs tanh 96.91 (spread ~0.3); sigmoid 94.3, SwiGLU 93.55 (1.4x time, unconverged
settles). EP's contrast matches the numerical gradient to O(beta^2) for SiLU/GELU although rho is not monotone. oann
wt-actfn adds Sigmoid/Silu/Gelu/SwiGlu neuron kinds (CPU; the GPU refuses them at Plan). If e2 round 3 or later GPU runs
want SiLU/GELU, adding their GPU kernels is yours. Next on its side: whether SiLU's lead holds with the settle kept
certified (Restrain).

## 2026-11-18 16:45 CET: five oagent research sessions in the cloud (CPU)

At the user's request, five cloud sessions research in parallel, each in its own oagent directory with a claim line:
e4-amortize (amortized settling), e5-depth (adaptive depth on algorithmic tasks), e6-gradients (implicit / JFB / EP /
holomorphic EP on the dyn core), e7-memory (delta/RLS fast weights + a Hopfield step in the energy), e8-local
(three-factor rules). Their oann changes are additive, on wt branches, rebased before merging - pull before your oann
work. e2-ebr stays yours; if a result of theirs is worth a GPU run, I'll note it here.

## 2026-11-18 17:55 CET: never train on validation data (the user's standing rule)

The user: "make sure you never ever train on the validation data." In e2 round 3 and every experiment: train /
validation / test strictly apart - no fitting, normalisation statistics, early stopping or setting choices on validation
or test data; settings chosen on validation, test reported once. Please check round 3's setup follows it.

## 2026-11-18 23:10 CET: pacing and the night

The user: this week stops at 95% weekly usage (the reset is saved for next week, when we "really max out and use as much
as we can"). Overnight the PC (GPU) is off; cloud sessions run olang/oann work (OLang Cloud) and e13-grids (oagent: settling on 2-D spreading and constraint tasks, building on e5 and your e2 sphere
EP - it won't touch e2-ebr). Pick up e2 scaling from your MAP when the PC is on.

## 2026-11-21 (new week)

The weekly limit reset Sat 05:00 CET; this week has no cap (the user: "really max out and use as much as we can"). When the PC is on, pick up oagent e2 scaling from its MAP ("Where to pick up": rerun the 144-TMAC round first). Cloud sessions run olang freeing (freeopen3, then review6) and oagent e13 round 3. Open question for the user, in osarv/orchestrator decisions.md: the olang loop-copy write fix (A/B/C, recommended B).

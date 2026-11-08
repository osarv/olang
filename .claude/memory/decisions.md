---
name: decisions
description: "Ledger of every olang decision I flagged for the user that is still unanswered - question, default in effect meanwhile, my recommendation; re-raise when the area comes up"
metadata:
  node_type: memory
  type: project
  originSessionId: 7f2a5325-2cc9-4c97-9679-ec83bcdf63a5
  modified: 2026-10-17
---

Every question I put to the user goes here the moment I ask it, and leaves only when they answer - the answer then goes
into CLAUDE.md/HISTORY.md as any design decision does. Unanswered is not consent: the default stays in effect and the
entry is re-raised when its area comes up or at the end of a report. One decision per number, each with the default in
effect and my recommendation. See rules.md, "How to decide and record". Rebuilt 2026-10-08 after an audit of
CLAUDE.md, HISTORY.md and the old ledger (the full old ledger is in git at bc9f9c9). Slimmed 2026-10-17: answered questions and the numbered decisions 1-51 are in archive/decisions_log.md (not imported). Recorded future work that asks
nothing of the user is in plan.md, not here.


(Every answered, decided, confirmed or superseded entry - their answers are in CLAUDE.md and HISTORY.md - was moved verbatim to
archive/decisions_log.md on 2026-11-08, to keep the context every session and agent loads small.)

Open questions:

- oann's design (asked 2026-11-08; building waits for olang v1). Answered so far (direction.md, "oann and oagent,
  redefined"): purpose, redesign, N-d tensor, kernels in olang, CPU+FPGA+GPU, number types; the GPU split as
  recommended (one device subset in the language for GPU and FPGA kernels, LLVM's NVPTX/AMDGPU back ends, after v1 as
  an addition; std over the driver API; oann's kernels in it); the element type a type parameter constrained by a
  tensor-element trait (the user: "so we don't put anything in there"; closed, mine). Still open:
  1. cuBLAS/cuDNN: our own kernels by default, NVIDIA's libraries as an optional back end and the yardstick, used
     where they measurably win? Recommended: yes.
  2. The model graph: one model description, run either as a run-time graph (for experiments whose structure
     changes) or planned while compiling into specialized code (fixed models, GPU and FPGA)? Recommended: both, the
     run-time graph built first.

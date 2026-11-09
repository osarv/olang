---
name: direction
description: "The user's direction for olang and the work around it, and how to read and address them: principles, natural language, dictated messages, time zone, oann/oagent plans. Short form; stories in archive/direction_log.md"
metadata:
  node_type: memory
  type: user
  modified: 2026-11-08
---

Short form (2026-11-08); the full text with dates and stories is archive/direction_log.md.

## Principles

The user, 2026-10-08: "no manual memory management, C-like performance, natural language as much as possible, minimal
syntax, multi-purpose. AI/data science and scripting as well as GUI etc. This is the basis of a bunch of larger
projects so it's important we get the design solid and smooth." Weigh every detail against these in that order; prefer
one rule that composes over special cases; fix rough edges found while building. Written out as `PRINCIPLES.md`
(imported by CLAUDE.md); keep it current when the direction moves.
- **Compile speed is a first-class goal** (2026-10-23: "Making compilation faster is going to matter a lot"): weigh it in
  every emit/lowering decision.
- **FPGA** (2026-10-09): olang should target FPGAs for spiking neural networks, long term; weigh bit widths, fixed point,
  saturation and dataflow concurrency in design. A freestanding target is wanted eventually (plan.md).
- **Natural language** (2026-09-30: "I want to take Olang more in the direction of 'natural language'"): include and weigh
  the plain-English form when offering syntax options and say when a choice cuts against it; raise candidates as
  questions, do not change existing syntax silently.
- **Contracts and proving** (2026-10-24: "We are going to do theorem proving"): contracts state what a function requires;
  a prover decides what it can while compiling; proving only moves conditions out of "unchecked", so a program's meaning
  never depends on the prover's cleverness.

## oann, oagent and the research

- **oann and oagent (2026-11-08):** oann is the public library oagent links against; oagent is private and holds the
  reasoning work (if oann as a library becomes a problem, merge them under the private repo). oann is research-oriented:
  settling networks have "unexplored potential", ordinary networks too, "preferably a combination" - "a low parameter,
  high ability reasoning kernel, using any kind of technique", energy-efficient, with optimization algorithms designed
  on top, found by experiment. Built after olang version 1 on the settled language, redesigned keeping what can be kept;
  held until version 1 is mature. The operand is an N-d tensor (it holds what describes the data; the network and its
  structure the transformations), the base of all operations, efficient first (in-place forms, no-copy transposed matmul,
  fused elementwise). Kernels in olang, no BLAS on the CPU; on the GPU our own kernels where they pay and NVIDIA's
  libraries where they win; one model description run eagerly, as a captured graph, or planned while compiling; CPU,
  FPGA and GPU all needed.
- **I am the research agent:** reading papers, compiling them and trying things is part of the job ("feel free to use the
  Arxiv connector frivolously"); paper notes in oagent's papers/.
- **GPUs are local:** the user's own machine (RTX 4060 8 GB, sm_89 first; Ryzen 5 7600 with AVX-512; 16 GB RAM, 7.4 GiB
  visible in WSL; specs in oagent's machine/specs.txt). No paid cloud GPUs.
- **Settling networks are the main experiment** (2026-10-28: "This is what we are going to be experimenting with
  primarily"): weigh olang by what the settle needs - many small cache-resident GEMVs in an allocation-free loop,
  symmetric reciprocal blocks, low precision, the FPGA path. When experiments start is the user's to say; the
  experiments asked for are in oagent's EXPERIMENTS.md.
- **Research after the compiler (2026-10-11):** extract functional structures for tasks, MNIST first, then NLP and
  robotics; genetic algorithms allowed. Clean room: work only from oann/docs/settling.md and the published papers it
  cites. It lives in **osarv/oagent** (/home/user/oagent), where all implementations of the agent and its research go.
- **The goal:** a general high-quality agent that takes on any task with as little compute as possible; "Use any method.
  Do more with less, continuously." Capability and capability per compute should keep rising; size and compute may grow.
  Priorities: bootstrapping first, general semantic intelligence the main target, robotics and image generation later.
- **Long-term plan: a settling network with recursive self improvement.** Oversight is designed in from the start: a
  self-improvement step is a proposal evaluated in a sandbox on fixed benchmarks and kept only when better; a capability
  jump needs the user's sign-off; the system cannot change its objective, its evaluation or the oversight; everything is
  logged so changes can be traced and undone.

- **The agent's architecture (the user, 2026-11-09):** "we are going to build a more traditional LLM with a very
  strong reasoning kernel of a small number of GB with a lot of external tooling and RAG. I want to scale reasoning, not
  size. I also know about methods where LLMs become good at directly updating model parameters. We can go that
  direction as well. I want strong reasoning." Settling networks become a research arm, measured head-to-head; oann is
  general first (autodiff, transformers, state-space models). Survey: oagent/papers/survey-reasoning.md. Trained from scratch, no open weights (the user, 2026-11-09).

## Reading the user

- **Dictated messages** (2026-10-08, 2026-11-03): read for intent. Expect dictation errors, fragments, restarts and
  self-corrections ("14, no, not 14, 14" - the later part counts), and words heard rather than spelled ("case cards" =
  case guards, "VEX" = Vec, "DQ" = Deque, "cloud" = declared, "F-O-R" = for); read each by its sound against the context.
  Never quote a garbled word back; where a reading is ambiguous and the choice matters, state the reading taken and
  record it in the ledger; otherwise act on the corrected reading without comment.
- **Times** (2026-10-09): the user lives in Gothenburg; give times as Swedish local time, CET (UTC+1) from 2026-10-25,
  written like "15:10 CET". Tools speak UTC (send_later `at`, `resetsAt`, cron; `CRON_TZ=Europe/Stockholm` works);
  convert at the boundary. (why: archive/direction_log.md)

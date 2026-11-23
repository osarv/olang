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
  started 2026-11-15, at the version 1 candidate. The operand is an N-d tensor (it holds what describes the data; the network and its
  structure the transformations), the base of all operations, efficient first (in-place forms, no-copy transposed matmul,
  fused elementwise). Kernels in olang, no BLAS on the CPU; on the GPU our own kernels where they pay and NVIDIA's
  libraries where they win; one model description run eagerly, as a captured graph, or planned while compiling; CPU,
  FPGA and GPU all needed.
- **What is public (the user, 2026-11-15):** "make the framework public, hide the weights (and similarly)": oann holds every mechanism, settling ones included; oagent holds the AGI model being bootstrapped - its configuration, weights, data, recipes and experiments. And (the same day): "any datasets we create, not just retrieve, will be in oagent as well ... basically any company secrets" - anything made in-house that gives an edge (created datasets, weights, recipes, results) is oagent's; retrieved public data and the general framework are oann's.
- **I am the research agent:** reading papers, compiling them and trying things is part of the job ("feel free to use the
  Arxiv connector frivolously"); paper notes in oagent's papers/.
- **GPUs are local:** the user's own machine (RTX 4060 8 GB, sm_89 first; Ryzen 5 7600 with AVX-512; 16 GB RAM, 12 GB
  visible in WSL; specs in oagent's machine/specs.txt). No paid cloud GPUs.
- **The agent's model (the user, 2026-11-23: "agent is not going to have a settling model. It's going to have this growable model that we are starting to build now ... It's going to be one model ... a natural language processing model that's really good at reasoning and deduction and understanding. And it's not going to be that information heavy because we're going to use RAG a lot ... a very like efficient, fast, strong reasoning kernel to do things like code and understand mathematics and understand logic and like some basic kind of understanding of what's out there and how to get it")**: one growable language model, trained from scratch now and extended over time (layers added or removed, optimizer changed, without relearning - oann's model surgery), aimed at ~1B parameters; strong at reasoning, deduction, code, mathematics and logic; light on stored facts, with knowledge from retrieval (RAG) and tools; trained on clean licensed text, our own verifiable generators and verified traces from openly licensed (MIT/Apache) teacher models, then reinforcement learning with verifiable rewards. This supersedes the settling-network plans below as the agent's model. One OAgent model is the mainline; variants may later be forked from its checkpoints and taken in different directions ("we might make variations of it eventually ... But we're going to have like one OAgent model", 2026-11-23), each tracked by lineage and compared against the mainline.
- **Settling is abandoned as a concept (the user, 2026-11-23: "if it comes back and we had no gains, then abandon settling as a concept. The fact that it runs well on FPGAs is not relevant enough")**: it came back with no gain (e67: memory settled to its exact energy minimum gained +0.001 nats over no memory on long documents, 3 seeds, while one delta-rule step gained +0.025; e66/e68: settling or looping to a fixed point never beat a plain transformer at equal compute). The lines below that make settling the main experiment, the niche or the long-term plan are superseded; what they say about settles is history, not direction.
- **Language modelling is the research area (the user, 2026-11-23: "Try to tackle language modelling more directly now. It's where most of the signal is")**, trained by backprop; explicit energy objectives for language are closed ("We seem to have already hit the best spot there with an energy model already" - a softmax LM is the exactly normalised energy model). Energy + search stays the tool for structured, constraint-satisfying problems ("keep it for the other problems").
- (Superseded 2026-11-23) Energy-based models were the main line (the user, 2026-11-22) and settling networks the main experiment (2026-10-28); kept here only as the record.
- **Research after the compiler (2026-10-11):** extract functional structures for tasks, MNIST first, then NLP and
  robotics; genetic algorithms allowed. Clean room: work only from oann/docs/settling.md and the published papers it
  cites. It lives in **osarv/oagent** (/home/user/oagent), where all implementations of the agent and its research go.
- **The goal:** a general high-quality agent that takes on any task with as little compute as possible; "Use any method.
  Do more with less, continuously." Capability and capability per compute should keep rising; size and compute may grow.
  Priorities: bootstrapping first, general semantic intelligence the main target, robotics and image generation later.
- **Long-term plan: a learned system with recursive self improvement** (the network was a settling one until 2026-11-23). Oversight is designed in from the start: a
  self-improvement step is a proposal evaluated in a sandbox on fixed benchmarks and kept only when better; a capability
  jump needs the user's sign-off; the system cannot change its objective, its evaluation or the oversight; everything is
  logged so changes can be traced and undone.

- **The agent's architecture (the user, 2026-11-09):** "we are going to build a more traditional LLM with a very
  strong reasoning kernel of a small number of GB with a lot of external tooling and RAG. I want to scale reasoning, not
  size. I also know about methods where LLMs become good at directly updating model parameters. We can go that
  direction as well. I want strong reasoning." Then (the same day): "We are very far behind on the normal gradient descent transformer path, so we need a new
  niche. Settling networks could be this. Keep going in this direction." So settling is the niche and the main research
  line: amortized settling, exact fixed-point gradients (implicit / holomorphic EP), adaptive depth as reasoning budget,
  sparse event-driven updates, a hybrid core with delta-rule fast weights (oagent/papers/settling-niche.md). Long term (the user, 2026-11-09): "I want to go in the biology direction down the
  line, our networks should blend naturally with brains eventually, working in similar ways, optimizing in similar
  ways" - prefer mechanisms with a biological counterpart (local plasticity, spikes, neuromodulation, sleep replay) when
  measurements tie. Starting point (the user, 2026-11-09, agreed): energy-based reasoners (oagent/papers/2611.08977.md) -
  reproduce, make stronger (cheaper settles), then train them with local rules (EP needs an energy, EBR has one). Language early, as a gate (the user: "If it doesn't
  work with language, it's pretty useless"). Frame (the user, 2026-11-09): an entropy-reducing, self-sustaining
  system, like a creature or a society - draw on systems science (free energy, cybernetics, criticality, homeostasis,
  multi-timescale hierarchy, growth and pruning), not only computer structures; cybernetics especially. Local before
  optimizing backprop energy models (a backprop EBR/EBT stays only as the yardstick). Credit assignment as in the brain
  (the user): the global signal (dopamine) "knows how it went, but not what happened", the local update "knows what
  happened" - three-factor rules (eligibility traces x global neuromodulators), with EP's nudge as the global signal.
- **oann's design (agreed by the user, 2026-11-09: "If you think this is the best, let's do it"):** Tensor<T> stays the
  storage; the central abstraction is a dynamical system - modules/populations with named state at several timescales
  (Columns<T>), connections as objects (dense, block-sparse, event-driven, symmetric), update rules run in place (settle,
  local learning, homeostasis), free and nudged phases side by side, a tree of modules with their own signals, low
  precision from the start; energy gradients derived at compile time where the energy is a sum of known terms. A lean
  backprop path (reverse-mode autodiff, transformer block, attention, AdamW, mixed precision, kernels for 10M-300M
  baselines on the 4060) as the yardstick; no distributed training, sharding or serving.
- **Roles (the user, 2026-11-09):** "I'm only going to be able to kind of do the high level stuff and reason with you
  there and try to give you ideas. Any kind of experimentation is going to be on you. You are responsible for a lot of
  this project and grow into that." I own the research program: design, experiments, measurement, the log of results. oann is
  general first (autodiff, transformers, state-space models). Survey: oagent/papers/survey-reasoning.md. Trained from scratch, no open weights (the user, 2026-11-09).

## Reading the user

- **Dictated messages** (2026-10-08, 2026-11-03): read for intent. Expect dictation errors, fragments, restarts and
  self-corrections ("14, no, not 14, 14" - the later part counts), and words heard rather than spelled ("case cards" =
  case guards, "VEX" = Vec, "DQ" = Deque, "cloud" = declared, "F-O-R" = for); read each by its sound against the context.
  Never quote a garbled word back; where a reading is ambiguous and the choice matters, state the reading taken and
  record it in the ledger; otherwise act on the corrected reading without comment.
- **Scripting mode** (the user, 2026-11-16: "that is what I am gonna call olang FILE now, scripting mode"): `olang FILE` (B3g) is scripting mode - in reports, docs and messages.
- **Times** (2026-10-09): the user lives in Gothenburg; give times as Swedish local time, CET (UTC+1) from 2026-10-25,
  written like "15:10 CET". Tools speak UTC (send_later `at`, `resetsAt`, cron; `CRON_TZ=Europe/Stockholm` works);
  convert at the boundary. (why: archive/direction_log.md)

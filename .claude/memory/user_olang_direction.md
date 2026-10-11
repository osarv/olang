---
name: user-olang-direction
description: "The user's principles for olang (2026-10-08): no manual memory management, C-like performance, natural language, minimal syntax, multi-purpose (AI/data, scripting, GUI); the base of larger projects, so the design must be solid and smooth"
metadata:
  node_type: memory
  type: user
  modified: 2026-10-08
---

The user, 2026-10-08: "no manual memory management, C-like performance, natural language as much as possible, minimal
syntax, multi-purpose. AI/data science and scripting as well as GUI etc. This is the basis of a bunch of larger
projects so it's important we get the design solid and smooth."

**How to apply:** weigh every design detail against these, in roughly this order of non-negotiability: no manual memory
management (scopes/arenas, never free or a GC pause), C-like performance (no hidden per-operation cost, see
[[feedback-no-runtime-checks]]), natural language ([[user-olang-natural-language]]), minimal syntax (reuse a construct
before adding one), multi-purpose (a choice that serves only one domain needs a reason). "Solid and smooth": prefer one
rule that composes over special cases, and fix rough edges found while building rather than recording them.

Written out as `PRINCIPLES.md` in the repo root (the user: "Record the general language-vibe specs"), imported by
CLAUDE.md so every session loads it; keep it current when the direction moves.

**FPGA (2026-10-09):** the user wants olang to target FPGAs for spiking neural network implementations - a long-term
domain to weigh when designing numeric types (bit widths, fixed point, saturation) and concurrency (dataflow).

**oann and the matrix library (2026-10-09):** "Oann btw is very incomplete. It should be written in Olang as well. I want
the matrix library to be efficient. It should work as the base for all operations and operands." oann gets rewritten
in olang (the C version is only a rough reference); std/linalg's Tensor is the operand of every numeric/NN operation,
and efficiency comes first: zero-allocation in-place forms, transposed matmul without copies, fused elementwise.

**Settling networks research (the user, 2026-10-11):** "When you are done with the compiler I want you to start playing
around with the settling networks to extract functional structures for various tasks. Be it MNIST initially, but NLP
and robotics later on. You may use genetic algorithms if you want." This starts once the self-hosted compiler is
done (confirmed by the user: "The self hosted one"). The goal is to find the circuit structures (regions,
projections, connectivity motifs, memories) that solve a task, and to understand them. It is not only accuracy. MNIST
comes first, then NLP, then robotics. Evolutionary search over circuit structures is allowed. The clean-room rule
holds: work only from oann/docs/settling.md and the published papers.
Where it lives (the user, 2026-10-11, superseding "a subdirectory of oann"): a new private repository, **osarv/oagent** -
"where all implementations of the agent and its research go. This is where we will bootstrap superintelligence. The
end stage is not being reliant on other companies at all." The GitHub integration cannot create repositories (403), so
the user created it on github.com (2026-10-11), and it is attached and cloned at /home/user/oagent. Its first
commit (2d216f2, main) has the README (goal, stages, oversight) and CLAUDE.md (working rules).
**The goal (the user, 2026-10-11):** "growth, like for any dynamic system, growing more powerful through differentiation
and pruning. The settling network should become a general high-quality agent that can take on any task using as little
compute as possible. It may use settling stuff, it may implement backprop, genetic algorithms, as long as it grows
stronger and more efficient." Any method is fair. The measure is capability per unit of compute, rising over time.
**The long-term plan (the user, 2026-10-11):** "a settling network with recursive self improvement for
superintelligence". How I approach it, as told to the user: oversight is designed in from the start, not added later.
- A self-improvement step is a proposal: evaluated in a sandbox against fixed benchmarks, kept only when it is better.
- A capability jump needs the user's sign-off.
- The system cannot change its own objective, its evaluation, or the oversight itself.
- Everything is logged, so each change can be traced and undone.


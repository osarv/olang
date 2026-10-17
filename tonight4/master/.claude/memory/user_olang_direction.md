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

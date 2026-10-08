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

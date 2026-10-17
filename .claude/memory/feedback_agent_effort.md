---
name: feedback-agent-effort
description: "Set each subagent's reasoning effort to fit its task: high/xhigh for soundness reviews and hard design, low/medium for searches and mechanical work"
metadata:
  node_type: memory
  type: feedback
  modified: 2026-10-11
---

The user, 2026-10-11: "Can you adapt the effort level dynamically to match the problem you are solving?" This is the
explicit request the Agent tool's `effort` parameter needs, so I set it per agent.

**How to apply:**
- **xhigh or max**: soundness reviews, scope-rule (section 8) and own/borrow design, hard debugging.
- **high**: compiler features with many interacting rules, and fixes from review findings.
- **medium**: std/library code, benchmarks, docs and records.
- **low**: web or code searches, mechanical migrations, reformatting. Searches also go to a cheaper model
  ([[feedback-usage-and-agents]]).

My own turns' effort is the user's session setting. I cannot change it, and I said so.

**Model too (the user, 2026-10-17: "consider using cheaper models for easier tasks and remember to set an appropriate
effort for them").** Pick the Agent tool's `model` and `effort` together, per task:
- opus, xhigh: soundness reviews, section 8 and own/borrow design, hard debugging.
- opus, high: compiler features and fixes from review findings (semantic.c, the port's checker/scope pass).
- sonnet, medium: std/library code, mechanical-but-careful migrations with a script, records and docs (like slimming
  CLAUDE.md), benchmarks, port pieces with a clear contract and an oracle to diff against.
- haiku, low: searches, counting, listing, running a known command and reporting its output.
When unsure between two, take the cheaper one for a first pass only where a review or a test oracle will catch its
mistakes; never for soundness work.

**Reviews at high, not xhigh (the user, 2026-10-17: "running review agents with Opus 5.5 XUltra might be a bit
overkill no?").** Routine soundness reviews of fix rounds and batch relaxations: opus, high (the fuzzer runs beside as
the mechanical check). xhigh only for NEW design in section 8 / ownership (a new borrow or region rule).

**No more C-compiler soundness reviews (the user, 2026-10-17: "Do we need to review the C compiler much more in the
future? It takes a lot of resources").** Stage 0's remaining job is building the port, whose test suite and the bootstrap
fixed point (stage 2 == stage 3) catch a stage-0 miscompile. So: the e31view round-4 review is the last C review; C
batches get the fuzzers, the scope sanitizer and the suite, plus a light review of the SPEC rules they change (which
serves both compilers); deep reviews (opus, high) go to the port's section-8 and ownership passes.

**Agent length (the user, 2026-10-17, asking whether to run shorter agents to save credits).** Every step re-sends an
agent's whole context (mostly from cache, ~1/10 the price, still paid), so a long agent costs more per step as it
grows. Rules: one fresh agent per ROUND of a big batch, starting from a hand-off note (PROGRESS-style: done, decided,
next) that every long agent keeps up to date as it goes; resume an agent only for a short follow-up within about an
hour (warm cache); never resume a very long agent (hundreds of k tokens) for a new round.

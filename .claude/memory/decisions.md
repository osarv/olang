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

1. (2026-11-23, asked via the Orchestrator) AMX BF16 products (tdpbf16ps, 369 GMAC/s = 7.5x F32 at 2048x128x688 on one
   thread) as one named std operation `tile.AddDot(...)` (C += A.B over the whole depth; runtime does the permission and
   tile config; the pair-dot loop where the processor lacks it): its accumulation order matches no simple model (five
   tested, 19-48% of elements differ), so a bit-exact fallback needs it reverse-engineered. Allow AddDot's result to
   depend on the target (against B12c's one result on every target), or require bit-exact? Default in effect: nothing
   built. Recommendation: allow it for this named operation, stated in SPEC (products exact, F32 accumulation, order
   unspecified), as BLAS does.

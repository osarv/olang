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

1. (2026-11-17, from O43 noalias) Should a `mut` parameter's whole referent belong to the call alone, across tasks too (no other task may write any part of it during the call)? It would let codegen emit LLVM `writable`, closing the in-place accumulate gap (213 ms vs 123-136 ms for a local tile; with `writable` by hand 135 vs 133). Default in effect: no such rule; noalias only where O43 proves exclusivity, stores stay in the loop. Recommendation: no language rule (it would make a data race with a disjoint field a miscompile); instead hoist the slice-bounds exits out of such loops (an optimization, mine), and revisit if that falls short.

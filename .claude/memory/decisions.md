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

1. A module's own declaration and a prelude name (asked 2026-11-16). With no shadowing, every name added to the prelude can break code already using it (prelude Scan broke oann's ad/ops Scan, renamed GatedScan; prelude InputError broke tests/worker, renamed WorkInputError). Default: a clash is an error, renamed by hand or an olang fix tool. Recommendation: a module's own top-level declaration takes precedence over a prelude name (the prelude the outermost scope), so prelude additions never break code - shadowing at exactly that one boundary.
2. VNNI byte dot products (asked 2026-11-16). No olang form produces vpdpbusd (u8 x s8, 64 products an instruction); INT8 at 64+ rows needs it (oann repro/vnnidot.olang). Default: none, INT8 stays 0.53-0.75x F32 at 64+ rows. Recommendation: a named lane operation for a widening byte dot product accumulated into I32 lanes (like the other lane operators; lowered to vpdpbusd where the target has it, plain code elsewhere), a visible named cost as principle 2 asks.

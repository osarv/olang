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

- The licence: the user, 2026-11-07, "we'll still push it into the future" (postponed again). Default: no licence file. Ask when publishing. Context: archive/decisions_log.md, the entry "2026-11-07, the user on four answers".
- The refusal audit's six direction questions (asked 2026-11-08; docs/refusals.md, "Questions"). Default for each until
  answered: refused. Recommendations: 1. what a global keeps built in the program's scope - yes; 2. deferred code
  pending at a `yield` runs when an unfinished generator is let go - yes; 3. C11 accepts run-time-length arrays ending
  their elements, a program's own conditional destructor, a global holding a destructor value by value - yes, all
  three; 4. a field slot holding storage of two scopes (whole-program field analysis) - not now; 5. `any` copyable
  through a Copy in its table - not now; 6. `become` arguments placed in the tail scope (memory grows as `return`'s
  does, with a `-memory` row) - yes.

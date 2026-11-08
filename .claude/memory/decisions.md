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

- Token savings (asked 2026-11-08). Default: none of these done. Recommended: 1-3 and 5-7 yes; 4 is the user's call.
  1. CLAUDE.md's Settled decisions (85 KB) to docs/decisions.md, read on demand; CLAUDE.md keeps the checklist and a
     one-line index. 2. rules.md 44 KB -> ~10 KB, history to archive. 3. direction.md trimmed likewise. 4. Remove the
     hotpath clone from this container (its CLAUDE.md loads here). 5. The 2-hourly check-in to 6-hourly. 6. xhigh
     only for new section-8 design; Sonnet for more pieces. 7. Agent reports at most ~10 lines; /compact more often.

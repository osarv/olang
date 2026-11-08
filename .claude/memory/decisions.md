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
- The refusal audit's questions 4-5 (asked 2026-11-08; docs/refusals.md, "Questions"; 1-3 and 6 answered, see
  archive/decisions_log.md). Default for each until answered: refused. 4. a field slot holding storage of two scopes
  (whole-program field analysis) - recommend not now; the user wants to talk about it more. 5. `any` copyable through
  a Copy in its table - recommend not now; recorded, not answered.
- docs/genrefs.md's direction questions (asked 2026-11-08; the note's section 14; the user: "We will settle this in a
  couple of hours" - no agent depending on it starts before). My proposal after discussing it: settle the language now
  - 1. `weak` written on back links, yes; 2. a weak link does not keep its node and reads null once it is freed,
  accept - built as genrefs round 1 beside a one-holder rule (early freeing of nodes only ever held by one owning
  link, compile time only, the user's idea); the reclaiming of nodes with back links later, after fnvalues round 6.
  3. holder record (a) bit or (b) count of owning places - (b), may wait; 4. per module - default; 5. early freeing
  in every module through link-time constants - yes, later; 6. `std/pool` of generational handles - yes.

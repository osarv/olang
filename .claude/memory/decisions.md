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

1. (2026-11-22, asked via the Orchestrator) Freeing a joined task's results early: a value a task builds (a Vec grown by Push on the task's thread) can be freed by the spawner only if a region made on one thread may be released on another; today the pools are per thread. Options in docs/freeing.md 2.4 question 1: (a) keep as is (task results never freed early); (b) the spawner makes the result's regions before the spawn and the task's growth into them takes a lock; (c) hand the task's result regions to the spawner at the join's wait, pools taking releases from other threads via a lock-free return list. Default in effect: (a). Recommendation: (c) - no cost in the task, one step per join; section-8 design (Opus xhigh).

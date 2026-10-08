---
name: feedback-record-flagged-decisions
description: "Every decision I flag for the user must be recorded in the pending-decisions ledger immediately, because they will miss some"
metadata:
  node_type: memory
  type: feedback
  originSessionId: 7f2a5325-2cc9-4c97-9679-ec83bcdf63a5
  modified: 2026-09-29T12:01:33.711Z
---

Whenever I ask the user to decide something about olang, add it to [[project-olang-pending-decisions]] in the
same turn - question, the default in effect until they answer, and my recommendation.

**Why:** the user said (2026-09-29): "If I forget to make a decision you flag for me. Record it always. I will
miss some things you ask me." They often answer one question and move on to the next task, e.g. they skipped
the `for` remake questions to do try-default first.

**How to apply:** record at ask time, not later. Unanswered is not consent - keep the in-effect default and
re-raise the entry when its area comes up or at the end of a report. Remove an entry only once answered, and
move the answer into CLAUDE.md/HISTORY.md as with any design decision.

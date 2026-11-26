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

3. (2026-11-26, via the Orchestrator; docs/freeing.md 2.4 "O23b's equality, per declaration") Where an instance is
   reached through an element, a global, an `any` or a capture, a shared field's scope binding is dropped for the whole
   declaration, so storage built through that field lives as long as the longest-lived instance's (builtref). Freeing
   it per instance needs a scope word carried in each instance of such a type (set at construction). Default: per
   declaration (no word). Recommendation: carry the word, only for declarations O23b drops today - a cost per
   construction, nothing per operation, nothing for other types.
4. (2026-11-26, same) A view of a value in use across that value's own let-go keeps the value's growth. Freeing it needs
   a run-time pin checked at each store. Default and recommendation: keep (a cost per store breaks principle 2).
5. (2026-11-26, same) A view rooted at a parameter, field or global is judged per declaration (parameters of one type may
   name one value). Per value needs per-call-site facts, so an edit recompiles callers (against B3i). Default and
   recommendation: per declaration until a real program shows the growth; then measure both.

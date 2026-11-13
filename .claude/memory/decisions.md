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

- Literals without the type in front (item 4 of the Python-ease list, approved 2026-11-13; the user: "how far do you want to extend that?"). My proposal: (a) wherever a type is expected - a typed declaration, an argument (the parameter's type), a return (the result type), a field, a constructor argument, an element or value of an enclosing literal, an assignment to a typed place - a bare `[..]`, `[k: v]` or comprehension makes that type (through FromIter for Vec, Set, Map, Tensor, as with the type in front); (b) with nothing expected (`xs := [1, 2]`) the literal takes its own type as a number literal does (T6a): `Array<T>` of its elements' own type, `Map<K, V>` for `[k: v]`; an empty `[]` or `[:]` with nothing expected is an error naming the type to write. The type in front stays allowed everywhere. Default until answered: (a) only.

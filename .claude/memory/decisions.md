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

- The prompt's shadowing exception (asked 2026-11-14). The prompt keeps a cell's top-level locals as session globals, and lets a later declaration's parameters or locals share their names - a D3a exception for the prompt only (one line in names.olang). Default in effect: the exception. Options: (a) keep it (otherwise `x := 1` in one cell forbids `fn f(x I64)` in every later cell); (b) no exception: such a declaration is refused, naming the session global. Recommendation: (a) - the session's names are not the program's, and the exception exists only at the prompt.
- Safety for AI-written code (asked 2026-11-14). Answered: checked builds yes (the user: "checked builds makes sense ... we don't want index checking to end up in the data science loops"), being built (wt-checked). Race freedom withdrawn by me: QAC's reason stands (no ownership, so the compiler cannot tell two writable references apart). Open: 1. the study (~50 programs from specs, count what compiles yet fails) - recommend yes, Sonnet low. 2. `olang test` runs a file that spawns under -race (5-15x slower tests) - recommend yes.
- Notebooks and the prompt run cells through the interpreter, ~900x slower than compiled on a hand matmul (240x240: 8.3 s against 0.009 s; asked 2026-11-14). Default: interpreted. Recommendation: compile each cell -quick (unchecked, like the run form), reusing the objects of unchanged declarations, std and the prelude so a cell's latency stays well under a second; the interpreter stays for `interpret` and compile-time evaluation.
- Indexing always checked, with the check moved out of loops (the user's idea, 2026-11-14: "if we never do it in loops, then it could actually be a main feature"). A check leaves the loop where the index follows the loop's counters (matmul, stencils, convolution: one check before the nest); an index read from data (`a[idx[i]]`, hash buckets, graph walks, loops ending on data) cannot be checked before the loop. Default: release unchecked. Asked: 1. measure first - build the hoisting on top of wt-checked, count the sites that keep a per-access check in std, tests, compiler and bench, and time bench/ and the self-build checked against unchecked - recommend yes; 2. for the sites a loop cannot cover: a per-access check listed by explain/the LSP (fully memory safe, one predicted compare) vs unchecked there - recommend the check, if 1 shows the cost is small.

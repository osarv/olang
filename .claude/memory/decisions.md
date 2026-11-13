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

- Python-like ease (asked 2026-11-13, the user: "anything else we want to add to make the language as easy to use as python?"). Defaults in effect: as built. Recommendations:
  1. the interactive prompt and Jupyter kernel (QCX 6, already decided) - build right after version 1, before oann;
  2. running a file (`olang f.olang`) builds at -O3+LTO (B3g): run it at `-quick` (or cached) unless `-output` asks for a build - measure first;
  3. printing needs `try io.Println(...)`: add a prelude `print`/`println` that ends the program on a write failure (as `!` does) - yes;
  4. `Array<I64>[1, 2]` always: allow a bare `[1, 2]` where the type it makes is written at the target (a typed declaration, parameter, field) - yes, narrow;
  5. unused locals/imports are errors (D3b): keep as errors, but `interpret` and the prompt report them as warnings - yes.
  The user added (2026-11-13): "we are going to be doing a lot of ML stuff, I want that to be clean and easy". ML items:
  6. multi-axis indexing and slicing for oann's tensors: `t[0:2, :, i]`, `t[..., -1]` - a bare `:` (whole axis) and `...` in an index, lowered to one Slice/At call with several ranges - yes;
  7. nested literals `Tensor<F32>[[1, 2], [3, 4]]` built through FromIter of rows - yes;
  8. (no question: `@` is already MatMul, E31; broadcasting is oann's operator methods.)

# Section 8, next round: NLL, O27 as placement, function values with relations (sec8)

The design note for the section-8 round after the build batch (2026-11-07, for review; nothing built). It settles the
three decisions of 2026-11-03 - reference locals typed per assignment ("NLL DECIDED"), O27 as placement and T22a's
function values carrying their inferred relations ("QCR (1) DECIDED") - and the items folded into the round (LIST.md
C3, C4, C6 and the T25d imprecision). The current state is SPEC.md section 8 and CLAUDE.md's "Memory and scopes";
the model it extends is docs/scope-model.md and docs/rework.md section 2.

## Progress

Hand-off for a fresh agent after a restart. Brief: /home/user/review/rounds/sec8-brief.md. Output: this file and one
line in docs/README.md, committed on wt-sec8 (only those paths; no push). Experiments: the compiler built at fe143d3
(copied from /home/user/wt/merge/build/olang to the scratchpad), run with `OLANG_STD=/home/user/wt/sec8/std`.

- [x] read the state: SPEC section 8, T21-T25d, D16c/D16d, D18e, B18; CLAUDE.md's memory entries; decisions.md (NLL
  DECIDED, QCR (1) DECIDED); HISTORY.md ("the three dump tools", C3, C6); LIST.md; the WIP patch
- [x] read compiler/scope.olang's terms, fit, order, inference (lifts, views, parts), judging order, keeps analysis,
  T22a (fnValues, valueRels); where -memory is printed
- [x] reproduced every shape (section 1): the cursor, a constant then a view, the dump tools, the T25d element, O27's
  and T22a's refusals, gen_walkkept; found C3 and C6 compiling already
- [x] the design: sections 2-6
- [x] the evaluator, the touch points, the build plan, decisions, questions: sections 7-11
- [x] docs/README.md line; committed

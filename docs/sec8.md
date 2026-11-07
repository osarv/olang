# Section 8, next round: NLL, O27 as placement, function values with relations (sec8)

## Progress

Hand-off for a fresh agent after a restart. Brief: /home/user/review/rounds/sec8-brief.md. Output: this file and one
line in docs/README.md, committed on wt-sec8 (only those paths; no push).

- [ ] read the state: SPEC section 8 (O25, O25a, O27, O28, T22a, O10d, C2d, T25d), CLAUDE.md's memory entries,
  decisions.md (NLL DECIDED, QCR (1) DECIDED), HISTORY.md ("the three dump tools", O27, item 17), LIST.md (C3, C4, C6,
  T25d), /home/user/review/nll-wip.patch
- [ ] read compiler/scope.olang (terms, fixed points, placement, plan.Stored), lower.olang (homeKept), free.olang,
  check.olang's parts that feed section 8, eval/interp's reading of plans
- [ ] reproduce the refusals (small experiments in this worktree, one compiler build at most)
- [ ] write the design: 1 NLL, 2 O27 as placement, 3 T22a relations, folded C3/C4/C6/T25d
- [ ] soundness, compile cost, programs, memory, evaluator, build plan, decisions, questions
- [ ] docs/README.md line; commit

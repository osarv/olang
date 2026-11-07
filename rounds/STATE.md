# Coordinator state, 2026-11-07 ~12:30 CET (written before the user's /compact)

The day: the user's push to finish the language today - build everything, merge without per-round verifies or
reviews, then ONE full verify + gates (scopesan, scopefuzz, fuzz free, dead regions) + ONE bulk review with its fixes.
Rules for agents: /home/user/review/rounds/finish-rules.md (builds through /home/user/blk - three slots; make quick
through /home/user/vlock - one slot). Records: .claude/memory/plan.md (queue, REMEMBER items), decisions.md (today's
answers at the end), /home/user/review/remaining/LIST.md.

## Merged today (master = wt-merge, pushed): deprec, asm (explain -asm/-ir), structpat (verified), drops (dafb690), interp (e2a3c7f), columns (7a7527d).
Goldens: conflicts take our side; ALL four goldens recaptured once at the end (not per merge).

## Running (background agents; each reports by a hand-back message)

| round | worktree / branch | agent id | model | brief |
|---|---|---|---|---|
| interp | /home/user/wt/interp, wt-interp | a31ecc30993617cb3 | opus high | rounds/interp-brief.md (told: merge drops; no verify) |
| errdata2 | /home/user/wt/errdata2, wt-errdata2 | a7083a44c562ca202 | opus high | rounds/errdata2-brief.md (told: Q1 yes, Q2 yes, Q3 ArgumentError text yes) |
| packed | /home/user/wt/packed, wt-packed | a07f5ed3ce5e761b9 | opus high | rounds/packed-brief.md |
| dropord | /home/user/wt/dropord, wt-dropord | ad93d12ccbc79a173 | opus xhigh | rounds/dropord-brief.md (4 phases) |
| nll (sec8 round 1) | /home/user/wt/nll, wt-nll | ab7e90ce25f40eda0 | opus xhigh | prompt points to docs/sec8.md |
| columns | /home/user/wt/columns, wt-columns | a4a72e7cacb61015d | opus high | rounds/columns-brief.md |
| qbt | /home/user/wt/qbt, wt-qbt | a07a6e211646896e6 | opus high | rounds/qbt-brief.md |

## Merging a round (no verify per the rule)

Merge into /home/user/wt/merge; HISTORY.md conflicts keep both sides; golden conflicts (compiler/goldens/*.txt) take
one side, then `make -s tokgold astgold` with a compiler built from the merged sources (layoutgold, diaggold at the
end); seed: take the newer, regenerate at the end if the bootstrap needs it; push wt-merge + master + designated branch;
push the round's branch; delete its build/.

## Next, in order

1. sec8 round 2 (O27 as placement) and round 3 (T22a records) - fresh agents from round 1's PROGRESS.md (opus xhigh /
   high), docs/sec8.md sections 9-10.
2. Last language round, alone (it migrates nearly every file): QBU + QBW - the type in front of every literal and
   comprehension (`Array<I64>[1, 2]`), built through a type-level builder `FromIter`, every std collection declaring one;
   Columns<T>/ColumnVec<T> literals with it. After qbt and columns merge.
3. The smaller items (LIST.md C5, C7, C8 ...) - a tidy agent.
4. Goldens (all four) and the seed; ONE full verify, the gates, ONE bulk review (opus high) and its fix round.
5. Then: trim CLAUDE.md (the user asked: later today; terse entries, details in HISTORY.md - a sonnet agent).
6. After "done" (no syntax, the user's rule): benchmarks, coverage, the REPL (plain `olang`) + Jupyter kernel, saturating
   arithmetic, platforms, `olang get` with the Cargo version model, the reference-counting carve-out (QCR 2). The
   licence: postponed by the user.

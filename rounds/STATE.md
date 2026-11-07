# Coordinator state, 2026-11-07 ~12:30 CET (written before the user's /compact)

The day: the user's push to finish the language today - build everything, merge without per-round verifies or
reviews, then ONE full verify + gates (scopesan, scopefuzz, fuzz free, dead regions) + ONE bulk review with its fixes.
Rules for agents: /home/user/review/rounds/finish-rules.md (builds through /home/user/blk - three slots; make quick
through /home/user/vlock - one slot). Records: .claude/memory/plan.md (queue, REMEMBER items), decisions.md (today's
answers at the end), /home/user/review/remaining/LIST.md.

## Merged today (master = wt-merge, pushed): deprec, asm (explain -asm/-ir), structpat (verified), drops (dafb690), interp (e2a3c7f), columns (7a7527d), packed (7d43a6b), dropord (3b66e3a; merged tip builds, drops/packed/columns tests pass).
Goldens: conflicts take our side; ALL four goldens recaptured once at the end (not per merge).

## Running (background agents, started ~14:10 CET; each reports by a hand-back message)

| round | worktree / branch | model | brief |
|---|---|---|---|
| sec8r3 | /home/user/wt/sec8r3, wt-sec8r3 | opus high | rounds/sec8r3-brief.md (T22a relations) |
| handon | /home/user/wt/handon, wt-handon | opus xhigh | rounds/handon-brief.md (unique hand-on move + B8) |

sec8r2 merged (7bbd6b5; scope fuzzer's generator fixed by it). tidy2 merged (aff942b, ff) and literals merged (8eb88bd + cee098e seed). Re-run literal_migrate after merging sec8r2:
  OLANG_STD=<a std in the new syntax> <new compiler> build -quick -output build/tools_literal_migrate tools/literal_migrate.olang
  build/tools_literal_migrate --std std std compiler tests checks tools bench fuzz   (and builder_migrate likewise)
BEFORE THE GATES: fuzz/scopegen.olang writes plain functions D19a refuses (scope fuzzer fails) - migrate it; B8
(StringBuilder hand-over) after sec8r2; goldens all + rungold + drvgold recaptured.
ALL SEVEN MORNING ROUNDS MERGED: master = 1877245 (interp, columns, packed, dropord, qbt, errdata2, nll). Merging the
builders round needed builder_migrate re-run (build the tool against a pre-change std when std has new syntax:
OLANG_STD=<old std> build/olx build tools/builder_migrate.olang); typed.CallOf -> typed.Call.Of by hand where the tool
missed calls to functions moved in an earlier run. The seed was regenerated twice (98665d5, after errdata2).

## Merging a round (no verify per the rule)

NEVER `git merge-file ... <(git show ...)` - process substitution gives an EMPTY result (it emptied CLAUDE.md and
HISTORY.md in the columns and dropord merges; restored 94ce796). Write the three versions to real files first, and
after every merge check `git diff --numstat HEAD^1 HEAD` for a file that lost most of its lines. `git checkout --ours
FILE` takes the WHOLE file - for code conflicts use `git merge-file --ours/--theirs o b t` on real files instead.

Merge into /home/user/wt/merge; HISTORY.md conflicts keep both sides; golden conflicts (compiler/goldens/*.txt) take
one side, then `make -s tokgold astgold` with a compiler built from the merged sources (layoutgold, diaggold at the
end); seed: take the newer, regenerate at the end if the bootstrap needs it; push wt-merge + master + designated branch;
push the round's branch; delete its build/.

## Next, in order

0. NEXT after sec8r2: sec8 round 3 (T22a records), fresh agent from sec8r2's PROGRESS.md.
1. [running] sec8 round 2 (O27 as placement; ALSO from dropord: the unique hand-on move to a by-value parameter with its section-8 obligation - makes the three Map patterns flat - and viewCtor recording array leaves) and round 3 (T22a records) - fresh agents from round 1's PROGRESS.md (opus xhigh /
   high), docs/sec8.md sections 9-10.
2. [running, beside sec8r2 and tidy2] Last language round (it migrates nearly every file): QBU + QBW - the type in front of every literal and
   comprehension (`Array<I64>[1, 2]`), built through a type-level builder `FromIter`, every std collection declaring one;
   Columns<T>/ColumnVec<T> literals with it. After qbt and columns merge.
3. [running: tidy2] The smaller items (LIST.md C5, C7, C8 ...; cheaper regions - a per-thread free list for region headers, from dropord's phase 3 measurement; Vec push+truncate 0.12 -> 0.23 s for 260 MB -> 1.9 MB) - a tidy agent.
4. Goldens (all four) and the seed; ONE full verify, the gates, ONE bulk review (opus high) and its fix round.
5. Then: trim CLAUDE.md (the user asked: later today; terse entries, details in HISTORY.md - a sonnet agent).
6. After "done" (no syntax, the user's rule): benchmarks, coverage, the REPL (plain `olang`) + Jupyter kernel, saturating
   arithmetic, platforms, `olang get` with the Cargo version model, the reference-counting carve-out (QCR 2). The
   licence: postponed by the user.

## 2026-11-07 ~18:40 CET - after the container was replaced
/home/user (wt/, review/, the scripts) was lost; restored: review/ from backup/review, worktrees merge, bfix8a, bfix8c
from their pushed branches, /home/user/{blk,vlock,wipsnap.sh,wiploop.sh} rewritten (loop running), libclang-rt-18-dev
and libcurl4-openssl-dev installed (only clang-18 here: no clang-19/20, no qemu - make cross cannot run).
Merged: bfix8b (71cec3d), bfix8a (d240a62), bfix8c (ab66345) = master. Full verify running (merge/verify2.log).
Next: fix what it shows (goldens of the fix rounds), then the gates - make scopesan, make scopefuzz, fuzz free, dead
regions (OLANG_DEADREGIONS=1) - then trim CLAUDE.md (sonnet), then report "the compiler done".

## 2026-11-07 ~19:05 CET
verify2's failures: goldens of the fix rounds (recaptured), and compiler/olang.olang's "the modes" - explain -target
aarch64 on a clang-18 container said "this clang cannot build" before "explain runs on this machine": fixed (Resolve's
`here`, 05534a1). Final verify running (merge/verify3.log). CLAUDE.md trim agent running (wt/trim, sonnet). Next after
verify: the gates (scopesan, scopefuzz, fuzz free, dead regions) - one after another, not beside the verify.

# Round 1 of docs/sec8.md - NLL as versions (wt-nll)

Hand-off for rounds 2 and 3 (fresh agents). The design is docs/sec8.md (sections 3, 6, 9, 10); the rules of work are
/home/user/review/rounds/finish-rules.md (no full verify; one `make quick` through /home/user/vlock at the end). Build
with `/home/user/blk build/olang build -quick -output build/olq compiler/olang.olang`; run a checks case with
`CHECKS_ONLY="name,..." CHECKS_WORKERS=3 OLANG=build/olq /home/user/blk build/olq test -quick checks/checks.olang`.

## Done

- 712a8ac: typed.Versions (typed.olang, "reference locals by version"): the reaching-definitions walker - every
  reference local (and function-valued local) a candidate, definitions at its declaration (or parameter entry) and at
  every whole assignment, reaching sets keyed by statement start; `Across(key, d)` names the outermost loop body a
  definition crossed a back edge of to reach the statement (the soundness point below).
- 712a8ac: scope.olang: cursors (verStart/verEntry/verEnter/verLeave/cursorTerms/verEnd), each statement's cursor term
  the terms of the versions reaching it; an assignment to a cursor (cursorAssign) gives a new version its value's exact
  scope, no fit; a read (readCursor) holds each version reaching it valid where the read stands (O25i item 1) - lifting
  the version's value where they meet, else ReadAfterScope; a store through a cursor whose versions differ is O12's
  VersionsDiffer (versionsDiffer, fitError/freshIntoUnknown); propose reaches back through versions (proposeCursor,
  proposeDef, reachCtx); a version's term is kept between judgings as verAtoms (underestimates interned by their base),
  the body judged again where a read took a version that later came to more (verEnd, the late check); keeps (O17)
  read every version's regions (cursorRegions/regionParam/keepParam/storeParam).
- 712a8ac: T25d - an element of an array literal of constant data is `ValKind.Static` (readPart, constLiteral).
- 712a8ac: msgs ReadAfterScope (O25i), VersionsDiffer (O25i, O12), NoteAssignedHere.
- checks/cases/o15deepchain: `RelNext` set before the loop (the chain now lives in the loop's block, see decision 3).
- ea3d623: SPEC (O25i, O25a/O25b revised, O12, T25d, O26a) and the checks cases (nllmerge, nllkeepsunion1/2,
  t25delement, c3secondname, c6selectjoin; r9adefaultinner and strcursornewnode run cases; o18cprojectionborrow,
  o23adepth, o23aliaswrite, rv5matchkeep now O25i at the read).
- 1b3f6eb: tests/nll.olang (baked global, top-level asserts, run tests) and scope.olang's test of the reaching sets.
- 0cb59a8: `make dumptool` in the suite's DIFFS (scopedump's module compiled, ~12 s; a full -quick build of a tool was
  80-100 s of CPU).
- 6062492: throughLocal (a store through a reference local's own field lifts its referent - a regression NLL caused,
  found by the new fuzz scenarios); the cost cut (statement classes, freshDest, freshDefs, lateMeet's validity check at
  the judging's end); fuzz/scopegen.olang cursor scenarios; CLAUDE.md, HISTORY.md, docs/sec8.md, READMEs.
- goldens: diag.txt (c-commit after ea3d623), tokens/ast/layout (e17eb92) - every row checked to be this round's.

## Decided (mine, within the note)

1. Version 0 of a declared cursor is its declaration's value; of a parameter, its entry (the term its scope variable
   gives). A null given gives no term (none, not the block the local is declared in).
2. **Loop crossing (a soundness point found in my first design):** a block's term is a per-turn instance, so a version
   reaching a read through a loop's back edge must live where the loop stands: the validity block is
   lca(read block, definition block, parent of the outermost loop body crossed). The walker tracks it per reaching
   definition (`Across`).
3. Placement follows reads: a version needs to live only where a read it reaches stands, so storage reached only
   through a cursor may close earlier than before (o15deepchain's chain, nothing reading `head` after the loop, lives in
   the loop's block; its destructors run as the loop ends - earlier, never later, than its holder lets go).
4. A version's term between judgings is the latest judging's (not a union), dropped when a lift really grew
   (dropDefs) - but one a value built here gives is kept (it reads no cursor, so it cannot keep itself alive); a union
   only after 8 rounds of one body, as a bound. An unjudged definition giving new storage is read as where it builds
   (freshDest); a late read is checked at the judging's end for membership and validity both (lateMeet).
5. A store through a reference local's own bare field that its value outlives, where exact, lifts the local's referent
   to the value's term (throughLocal - O28's equality; before NLL `cur = q` did it as a side effect).
6. `make dumptool` compiles scopedump's module only (12 s), not a full build of a tool (80-100 s).

## Next

1. DONE: `make quick` through vlock (quick.log): every test file, checks (72/72), the diffs, consistency and dumptool
   passed; build/compiler_olang was killed by the out-of-memory killer once (the machine's), drvdiff rerun alone passed,
   checkir passed.
2. Left for later rounds (docs/sec8.md): O27 as placement (round 2: o23adepth, o23aliaswrite, C4, `-memory`), T22a's
   records (round 3). Per-version records (O23a) and replacing O26a's whole move for cursors are refinements the note
   leaves out. OLANG_SCOPESTATS prints `versions: N bodies with a cursor, M definitions, K judgings asked again`.

# Round "sec8r2" (wt-sec8r2, /home/user/wt/sec8r2; opus xhigh) - section 8 round 2: O27 as placement

Read /home/user/review/rounds/finish-rules.md first (no full verify, no gates, no reviews; builds through /home/user/blk;
one `make quick` at the end through /home/user/vlock). The branch starts from wt-merge 1877245, which holds every round
merged today (NLL round 1, drop order, packed, Columns, builders, errors carrying data, the interpreter).

## The design
docs/sec8.md section 4 (O27 as placement) and section 9's "Round 2" - spec, code, tests and the gates it lists (bench IR
and compiler/'s own IR byte-identical to the base where 4.2 promises it; `wLocals` hits counted; scopegen's kept-view
scenarios). Round 1's hand-off: /home/user/review/rounds/nll-PROGRESS.md. The user's decisions behind section 8 are in
docs/sec8.md's header and decisions.md (QCZ and the sec8 note's calls, 2026-11-07).

## Also yours, from the drop-order round (/home/user/review/rounds/dropord-PROGRESS.md, HISTORY.md "drop order")
1. The unique hand-on move: a unique value handed to a by-value parameter is a real copy today whose source is never
   released, so three Map patterns stay at 260-517 MB over 1M cycles (put and taken, replaced by Put, put and
   removed). Make it a move - which needs section 8's obligation for a by-value parameter's parts changed (today they
   are the frame's own copy, so the attempted move read freed storage under -sanitize). Measure the three patterns
   before and after; each should run flat (under ~8 MB) and pass under -debug -sanitize and `interpret`.
2. viewCtor records array leaves (the D9h copy of a viewing constructor's instance is not recorded as a store for an
   array leaf - a latent hole nothing reaches today; close it with a test that would reach it).
3. If they fall out of the same code: LIST.md C3 (`x2 := x1; return x2` of a constructed local is O10d's error), C4
   (the generator walk's two errors for one cause), C6 (`chan.Select(SendOf(c, v), ...)` inside a join refused by
   C2d). /home/user/review/remaining/LIST.md has their details.

## Next after you
Round 3 (T22a's relations, docs/sec8.md section 5) by a fresh agent from your PROGRESS.md - write it for that agent.

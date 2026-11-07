# Round "handon" (wt-handon, /home/user/wt/handon; opus xhigh) - the unique hand-on move

Read /home/user/review/rounds/finish-rules.md first (no full verify, no gates, no reviews; builds through /home/user/blk;
one `make quick` at the end through /home/user/vlock). The branch starts from wt-merge 7bbd6b5 (every round of today;
literals are written with the type in front, `Array<I64>[1, 2]`, and a function making a type's value is a builder,
`fn T.Name` - write new code that way).

## The task
A unique value handed to a by-value parameter is copied today (check's valueArg/partCopy make a MakeKind.Copy at every
hand-on), so the place it came from is never its only holder and early freeing cannot release it. Three Map patterns
stay at 260-517 MB over 1M cycles (put and taken, replaced by Put, put and removed). Make the hand-on a move, with
section 8's obligation for a by-value parameter's parts changed so the callee's parameter is the caller's storage moved
(today they are the frame's own copy - the agent who tried a move first read freed storage under -sanitize). The
analysis and a five-step plan: /home/user/review/rounds/sec8r2-PROGRESS.md, "The unique hand-on move"; the drop-order
round's notes: /home/user/review/rounds/dropord-PROGRESS.md; SPEC O8d and the unique rules (QCR, "unique" in CLAUDE.md).
- Measure the three patterns before and after (checks' earlyfree fixtures; add the three if missing): each should run
  flat (under ~8 MB), pass under `-debug -sanitize`, agree under `interpret`, with bench's instruction counts unchanged.
- Then B8: `StringBuilder.ToString()` hands its buffer over without a copy where nothing else holds it (the tidy round
  left it for this move; LIST.md B8, HISTORY.md "The tidy round").
- Soundness first: this is a relaxation in section 8 - when in doubt, keep the copy. Add scopegen/fuzz-free scenarios
  for hand-ons (fuzz/scopegen.olang) and run `fuzz free` and the scope fuzzer briefly on what you add.

Another round runs beside you: sec8r3 (/home/user/wt/sec8r3) - function values carrying their relations, in
scope.olang's records, calls through values and boundaries. Keep to the by-value parameter's obligation in scope.olang
and say in PROGRESS.md which functions you changed.

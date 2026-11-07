# Round "sec8r3" (wt-sec8r3, /home/user/wt/sec8r3; opus high) - section 8 round 3: T22a's relations

Read /home/user/review/rounds/finish-rules.md first (no full verify, no gates, no reviews; builds through /home/user/blk;
one `make quick` at the end through /home/user/vlock). The branch starts from wt-merge 7bbd6b5: every round of today is
in it (NLL round 1, O27 as placement round 2, drop order, packed, Columns, builders, errors carrying data, literals with
the type in front, the interpreter, the tidy round). Literals are now written with the type in front (`Array<I64>[1, 2]`)
and functions making a type's value are type-level builders (`fn T.Name`) - write new code that way.

## The design
docs/sec8.md section 5 (a function value carries its relations) and section 9's "Round 3" - spec, code, tests, gates.
Round 2's hand-off, written for you: /home/user/review/rounds/sec8r2-PROGRESS.md ("Next - round 3"). The coordinator's
calls on the note's questions (decisions.md, the sec8 note entries of 2026-11-07): generic type variables stop records
(no round 4); a view of storage holding a destructor value is refused; a written result type carries records. Also
the user's standing request (2026-10-31): doc, explain and hover say of every function that cannot become a value that
it cannot and why, and the error at the conversion names the same reason - keep that true for what this round changes.

Another round runs beside you: handon (/home/user/wt/handon) - the unique hand-on move to a by-value parameter, in
check's valueArg/partCopy, free.olang and the by-value parameter's obligation in scope.olang. Keep to the function-value
parts of scope.olang (records, calls through values, boundaries) and say in PROGRESS.md which functions you changed.

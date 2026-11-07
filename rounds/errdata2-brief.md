# Round "errdata2" (wt-errdata2, /home/user/wt/errdata2; opus high) - errors carrying data

Read /home/user/review/rounds/finish-rules.md first: the rules of work for today (no full verify, one quick at the end).

The user decided (2026-11-07): "Let errors hold values", and stored errors stay as built (T20: an error type is a
value's type everywhere but a function's result). The design is docs/errdata.md (merged into your branch from
wt-errdata): payload words declared in error types (`type ParseError error { Bad(line I64, col I64), Eof }`), raised as
`error ParseError.Bad(line, col)`, read in a clause (`catch ParseError.Bad e { e.line }`), by narrowing, by patterns,
`$e` as `ParseError.Bad(3, 7)`; the payload on a per-thread stack pushed at the raise and popped where a clause takes
the error, the error union staying `{i32 code, T}` so the success path pays nothing; payloads hold plain data and text by
value, no references; stored error values hold their payload (section 6).

Build the note's rounds 1, 3 and 4: declared payload words end to end (spec, parser, checker, lowering, emit, the
runtime's stack, the evaluator and `interpret`, `$`, ==, Hash, json); tasks, joins and export fns; then std's migration
(section 10: os errors with the path, json's line and column replacing `json.Position`, csv, flags, regex, time, net, io)
with `olang api`'s payload comparison. Struct patterns landed today: enum payload patterns take named items
(`case Shape.Rect(h = 0)`, S13b) - error payload patterns take the same form.

The note's three direction questions are being put to the user now: (1) errors raised by name carrying data with types
from the first raise (round 2), (2) methods on error types, (3) ArgumentError carrying its condition. Build rounds 1, 3,
4 first; the coordinator will send you the answers - build round 2 and the methods then if the answers say so.

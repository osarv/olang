# bfix8b (/home/user/wt/bfix8b, opus high) - error payloads, main, tests and interpret
Read /home/user/review/bulk8/FIX-RULES.md. Fix: tools/NOTES.md F4 (high: an error carrying a payload escaping main runs
no defer, errdefer or destructor - report the payload after leave(0)), F9 (a root-module method named `main` treated as
the entry), F5 (test -interpret runs no destructor of a failing test - the evaluator's unwind), F6 (older: deferred
code skipped when an error leaves a test's body, S19), F1 (test -interpret prints no trace after `!`), F7 (test
-interpret's did-you-mean); lang/NOTES.md F1 (high: a `try join` block's own error and its tasks' payloads - the stack
gets the task's record; also the leak when the own error carries none - `__olang_join_tasks`, lowering's join), F2
(narrowing of an indexed payload field), F3 (R3b: the first raise in source order must fix a raised error's fields, not
the first checked), F9 (T19b: payload fields holding structs/enums/arrays/error values of text, as the spec allows).

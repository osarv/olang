# F7 / fnvalues round 7 (untracked hand-off)
Design taken: twins keyed by (callee, followed param -> sorted record bodies), judged by a copy of the Scoper
(judgeTwin) with params seeded; captures of followed values = Term.Derived(p, capCode) resolved at the call
(capturedAt); lambda captures of named fns followed in the lambda's one judging (capturedRecs). Lowering: FnKey.Twin
where the twin's plan differs (TwinOwn). Twin code without early freeing.
- [x] scope/typed/lower/emit/mir/olang: committed 77946c53; ten cases compile + run sanitized + interpret; compiler IR identical
- [ ] tests/follow.olang; cases -> run cases; fail cases; checks IR scenario; incremental "twin added"
- [ ] SPEC, settled.md, HISTORY; scopegen; goldens; consistency; verify

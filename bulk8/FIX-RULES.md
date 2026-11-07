# Bulk review 8's fix rounds - shared rules

The findings: /home/user/review/bulk8/{sec8,lang,tools}/NOTES.md, each with a reproducer fNN_*.olang beside it. Your
round fixes the findings listed in your brief, each in its own commit naming the finding (e.g. "bulk8 sec8 F2: ...").
Rules of work: /home/user/review/rounds/finish-rules.md (builds through /home/user/blk; one `make quick` at the end
through /home/user/vlock; no full verify - the coordinator runs one over the merged fixes; spec first where a rule
changes; the evaluator agreeing; records in CLAUDE.md/HISTORY.md - one section "Bulk review 8, fixed" per round, your
part under your round's name; DEPENDENTS walked; no attribution lines; never `git add -A`; do not push; leave
.claude/memory alone). For each finding: turn its reproducer into a test (a run case under `-debug -sanitize` that
must now pass, or a checks case naming the diagnostic) so it cannot come back; if a finding turns out to be no bug,
or its fix would need a design change, say so in your report instead of building it. Soundness first: where a fix
relaxes nothing, prefer the conservative one ("when in doubt, keep / refuse"). Recapture a golden only after checking
each difference is yours. The literals are written with the type in front (`Array<I64>[1, 2]`), a function making a
type's value is a builder (`fn T.Name`).
Three fix rounds run at the same time from wt-merge e5f4561: bfix8a (section 8 and memory: scope.olang, free.olang,
typed.DropHolds), bfix8b (error payloads and test/interpret: lower.olang's raise and main, runtime.ll's join, eval/
interp), bfix8c (migration tools, builders, literals, small diagnostics: tools/, check's builder and literal code, msgs).
Keep to your files; say in PROGRESS.md which functions you changed.

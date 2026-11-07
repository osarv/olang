# Bulk review 8 - the final review before the compiler's first version (read-only)

The user (2026-11-07): build everything today, then ONE full verify and ONE bulk review with its fixes. This is that
review. Range: fcdb202 (bulk review 7's fixes merged and verified) .. d2dbf58 (every round of 2026-11-07 merged). The
checkout to read and build in: /home/user/wt/review8 (detached at d2dbf58). A compiler built from it is
/home/user/wt/review8/build/olang (std resolves to /home/user/wt/review8/std). Do not commit or change anything there;
write scratch programs under your area's directory /home/user/review/bulk8/<area>/ (one top-level fNN_*.olang per
finding). Every build or test of yours goes through `/home/user/blk CMD` (three slots; the machine has 15 GB shared with
a full verify running) - e.g. `/home/user/blk /home/user/wt/review8/build/olang build -debug -sanitize f1.olang`. To see
whether something is new, compare with the compiler before the range: build it once from `git -C /home/user/olang
worktree add --detach /home/user/review/bulk8/<area>/old fcdb202` if you need it (only one reviewer needs to; check
whether /home/user/review/bulk8/old exists first and use it if so).

The rounds in the range (their records: HISTORY.md sections and CLAUDE.md entries of 2026-11-07; SPEC the rules):
kept (item 17, drop flags in effects), deprec, asm (explain -asm/-ir), structpat (struct patterns S13i), drops and
dropord (O15 drop order computed from references, unique Part C, the C-call rule), interp (the interpreter brought
current, `test -interpret`), columns (Columns<T>/ColumnVec<T>, T7e), packed (packed structs T13c, X11a), qbt (type-level
builders D19/D19a), errdata2 (errors carrying data T19b), nll (NLL as versions O25i), tidy2 (14 small fixes, region
header lists in the runtime), literals (the type in front, FromIter E19-E21), sec8r2 (O27 as placement), sec8r3 (T22a
records), handon (the unique hand-on move, T13b/O8d/D9i).

What to look for, in order: (1) unsound acceptance - a program that compiles and then reads freed storage, runs a
destructor twice or never, or writes through a read-only view (build -debug -sanitize; run under `olang interpret`);
(2) wrong results - the build, `interpret`, a baked global/decided assert and `olang test` disagreeing; (3) a rule SPEC
states that the code does not hold, or code the spec does not state; (4) crashes of the compiler; (5) diagnostics
saying the wrong thing. Not wanted: style, naming, speed (unless a stated cost is badly off).

Write NOTES.md in your area's directory as you go (a "Progress" section first: what you covered, what not, what you are
in the middle of - so the work survives an interruption), then "Findings": F1, F2 ... each with severity, NEW (in the
range) or OLDER, the reproducer's file, the commit or rule it comes from, and what was checked and found sound. End
with a short report: the findings by severity and the areas covered and not.

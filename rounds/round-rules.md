# Rules of work for the function-values build (2026-11-08) - every round's brief points here

- Read docs/fnvalues.md (on master) for your round's sections and its build plan entry (section 14). Answers since the
  note was written: (1) its question 1 is YES - follow function values as far as the compiler can know them, a
  constructor-fixed field included (round 12); code is specialized only where it pays (the user: "as much as possible
  ... with some restraint, there has to be some reasonable benefit to greater program size"); (2) question 2 is YES -
  promise words on a trait's methods (round 12). The user's principle: constraints are WRITTEN on what relies on them
  (function types, declared function types, trait method signatures) and INFERRED on implementations (function
  declarations write none). The note's phrase "the user's rule keeps stored values dynamic" is wrong - it was a limit,
  not a rule; values the compiler cannot know stay judged by their written type.
- Compile per module (the user's standing rule): facts and code per module, reused when unchanged (B3i); whole-program
  work only in the final step (the root's instances object, the link). A change that makes a one-module edit recompile
  others is stated in your report.
- Spec first (SPEC.md, grammar included), then the code; the compile-time evaluator and `interpret` get the same
  semantics (a test the evaluator decides beside the run-time test; evaldiff's lists kept right); records in CLAUDE.md
  (terse, current state) and HISTORY.md (the story); walk DEPENDENTS.md; `make consistency`.
- Develop with targeted tests. Every compiler build and test compile goes through `/home/user/blk CMD` (three slots,
  15 GB shared). At the end ONE full verify, only through `/home/user/vlock make verify > verify.log 2>&1` (logs in your
  worktree root, never build/), plus the gates your round's plan entry names. Recapture goldens only after checking each
  difference is yours.
- Commit each coherent piece as you go, only the paths you changed - never `git add -A`; author Oscar Arvidsson
  <oscar.arvidsson@protonmail.com> (`git -c user.name="Oscar Arvidsson" -c user.email=oscar.arvidsson@protonmail.com
  -c commit.gpgsign=false commit`), messages `<Rule>: <what>`, NO Co-Authored-By or Claude-Session lines. Push your
  branch (`git push -u origin wt-NAME`) after each commit. Leave .claude/memory/ to the coordinator.
- Keep PROGRESS.md (worktree root, not committed to master - commit it on your branch) current: done, decided, next.
- At most three blocks nested inside a function's body (four on a special occasion); use the construct that fits best
  (guard clauses, `:` one-line bodies, `case P: v`, narrowing, comprehensions, errors raised by name). Everything in
  olang - no Python or shell scripts committed.
- Details are yours within the user's decisions - record them as decisions, marked mine.
- Report at the end: what was built, your decisions (numbered), bugs found and fixed, verify's result, what was left.
- Usage is the main resource (the user, 2026-11-08): every step re-sends your whole context, so read excerpts (grep,
  sed -n RANGE), never whole large files; send build and test output to a log file in your worktree and read its tail
  or grep it; no exploratory reading beyond what the task needs.

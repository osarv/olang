---
name: feedback-keep-evaluator-current
description: The user wants a checklist gone through for every olang language change, including keeping the compile-time evaluator current; it lives in the repo's CLAUDE.md
metadata:
  type: feedback
---

Every change to olang's semantics goes through the "Checklist for every language change" at the top of
the olang repo's CLAUDE.md (/home/oscar/olang locally, /home/user/olang in a cloud session) - spec, checker/codegen, compile-time evaluator, tests (incl. one the evaluator runs),
checks, corpus migration, diagnostics, records, make verify.

**Why:** the user asked (2026-10-05), after checked arithmetic was first built with comptime.c just refusing it:
"whenever we do changes that impact the evaluator, keep the evaluator up to date" and then "add that to a check
list you go through".

**How to apply:** before reporting any language change done, walk that list item by item; the evaluator step is
the one most easily missed. See [[feedback-surface-and-fix-bugs]].

**Extended 2026-10-07:** "always make the evaluator handle everything it can" - an exclusion in K1 needs a real
reason (the body is outside the program, a run-time effect would be skipped, undefined behaviour). Exclusions that
are only "not built yet" (as interface dispatch was) are gaps to close, not design.

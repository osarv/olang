---
name: feedback-keep-old-tests
description: "never remove existing olang test cases when adding new ones, unless a language change actually invalidates them"
metadata: 
  node_type: memory
  type: feedback
  originSessionId: 7f2a5325-2cc9-4c97-9679-ec83bcdf63a5
  modified: 2026-08-29T14:02:26.573Z
---

When adding new tests to olang's suite (test { } blocks in shared.olang/worker.olang/runner.olang, or
wherever else tests live), never remove or replace an existing test case just to make room for new ones.
Only touch an existing test if the language itself changed in a way that invalidates it (old syntax no
longer compiles, old semantics no longer hold) - otherwise the suite is purely additive.

**Why:** the test suite is the project's regression net; removing a passing test silently shrinks
coverage of behavior that's still supposed to work, even if it feels redundant next to a newer test.

**How to apply:** before editing shared.olang/worker.olang/runner.olang (or any future test file) to add
coverage for a new feature, add new test { } blocks alongside the existing ones rather than replacing or
trimming what's there. If an old test's syntax was superseded by a real language change (e.g. old
literal-restated-array-size syntax after [[struct-array-literals]] simplified it), updating that one test
is fine - deleting or shrinking others "for tidiness" is not.

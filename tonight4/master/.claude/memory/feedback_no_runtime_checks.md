---
name: feedback-no-runtime-checks
description: olang - never propose a per-operation run-time check (index, shift, conversion, division); opt-in via try only
metadata:
  type: feedback
---
olang never gets a run-time check that is paid per operation (indexing, shifts, numeric conversions, division). Checks are opt-in with `try` (R20/E16d), or per-construction (slice bounds, array length), or compile-time.

**Why:** the user removed such checks earlier ("it should never be done") and, asked again 2026-10-08 whether narrowing `Int32(i64)` should abort out of range, answered "1 for sure. It's not even a question."

**How to apply:** don't offer an always-checked variant as an option; design the unchecked default plus the `try` opt-in. Related: [[feedback-errors-are-errors]].

---
name: feedback-errors-are-errors
description: olang - never design APIs as (value, Bool) / value-plus-flag; "no value" or "no more" is an error
metadata:
  type: feedback
---
In olang, use errors for absence/exhaustion/failure; never return a value beside a Bool flag (no `(T, Bool)`, no placeholder zero values).

**Why:** the user, 2026-10-08: "Make sure you use errors and don't do the bool, value pattern. Errors are errors". Map.Get already failed on a miss; iterators were migrated to `Next() T ? Exhausted` for this.

**How to apply:** any new std/prelude API or protocol method that can come up empty declares an error (a named one when callers must tell it apart, e.g. Exhausted) and callers use `try ... catch ... default` / `catch X { break }`. Also: don't record my own framing as the user's decision in CLAUDE.md - see [[feedback-record-flagged-decisions]].

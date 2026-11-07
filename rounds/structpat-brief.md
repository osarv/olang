# Round "structpat" (wt-structpat, /home/user/wt/structpat, from master d0a6202; started 2026-11-07 ~09:15 CET; opus high)

You build a language feature in the olang compiler. Repository: /home/user/wt/structpat, branch wt-structpat. CLAUDE.md,
PRINCIPLES.md and .claude/memory/ load automatically; they are the project's rules, and CLAUDE.md's "Checklist for every
language change" is yours to walk item by item. Keep a hand-off note, PROGRESS.md at the worktree root (done, decided,
next), current as you go, so a fresh agent can continue after a restart.

## What the user decided (2026-11-07)

Pattern matching takes values apart: "structs by name, arrays by position, and enums by both." In the user's words:
"we basically extract what's in the enum array or the struct into variables ... we don't actually need to know what
the constructor does, right? We just need to read the value, and given that it's a public value, we can read it. Or
given that we're in the same module, it's private, we can also read it ... it looks like a constructor, but it's not
really a constructor."

## The rules (decided; spec them first, SPEC.md beside S13h, grammar included)

1. **Struct patterns, by field name.** `case Point(x = 0, y)`: in a pattern a struct type's parentheses list FIELDS,
   never constructor parameters, and nothing runs (Python's class patterns `case Point(x=0, y=y)` are the precedent).
   - `name = pattern` matches field `name` against a pattern: a literal compares, a name binds (always new - a local's
     value is a guard, as S13h's names are), a nested pattern goes inside (`case Line(start = Point(x = 0, y = 0))`).
   - A bare `name` is `name = name`: the field bound to a new local of that name.
   - Fields not mentioned are ignored (no `...`).
   - Only fields readable at that point: public ones anywhere, private ones in the struct's own module (M6a). An unknown
     or unreadable field is an error with did-you-mean (msgs.Nearest), and a field named twice is an error.
   - No positional items in a struct pattern: `case Point(a, b)` where Point has no field `a` is the unknown-field error,
     saying that struct patterns name fields. Reason (for SPEC's rationale and the message): a struct is built by a
     constructor whose parameters need not be its fields, so field order was never part of its interface.
2. **Arrays by position**, unchanged (S13h).
3. **Enums by both.** An enum case's payload patterns stay positional (`case Shape.Rect(w, h)` - a case is built by
   position), and named items are allowed too, by the payload's field names: `case Shape.Rect(h = 0)`. Decided (mine):
   positional items first, then named ones, as call arguments are (E14b); a field given both ways is an error; with
   named items the unmentioned fields are ignored, while positional-only patterns keep today's arity rule.
   A case carrying one whole type (T17a, `Round Circle`) has one positional item, which may be a struct pattern:
   `case Shape.Round(Circle(r))`.
4. Where: `case` patterns only - match clauses, nested in enum payloads and array elements, struct patterns in struct
   patterns. Not a destructuring declaration (`Point(x, y) := p` stays unbuilt).
5. A struct reached through a reference reads through it; a null (`T?&`) matches no struct pattern (as no case
   pattern). Generic structs are named bare against the subject's instance (`case Box(v = 3)`), as G6b's cases are.
   Bindings take the matched place's permission (S13b); a binding of a unique value is a reference (T13b).
6. Exhaustiveness (S13a, Maranget): a struct is one constructor whose columns are its fields; unmentioned fields are
   wildcards; a struct pattern of only names covers every value.

Details beyond these are yours (record them as decisions in CLAUDE.md and HISTORY.md, marked mine). Errors carrying
data (docs/errdata.md, branch wt-errdata) will later reuse the named items for error payloads, so keep the machinery
general to any payload with named fields.

## How

- Build it in the parser and the checker as array patterns were (`ast.Pattern`, `check.elemsPattern`'s neighbours): the
  tests and bindings are field reads and compares, so lowering, emit, the evaluator and `interpret` should need nothing
  new - prove it with a test the evaluator decides (a top-level assert or a baked global over a match with struct
  patterns) beside the run-time tests.
- Tests: a new tests/structpat.olang (all of rule 1-6, nested, generic, through references, private fields in the
  module), and checks/cases for every error (unknown field with did-you-mean, private field from another module, field
  named twice, positional item in a struct pattern, named before positional in a payload, a non-exhaustive match).
- Walk DEPENDENTS.md (the formatter spaces `name = pattern` as named arguments; explain/doc/LSP if they print patterns;
  editors; goldens: tokgold/astgold/diaggold where the trees and messages change).
- Records: CLAUDE.md's entry beside "Array patterns", HISTORY.md's full entry, SPEC.

## Rules of work

- Commit each coherent piece as you go, only the paths you changed - never `git add -A`. Author is already configured;
  no Claude attribution lines in messages. Do not push (the coordinator does).
- At most three blocks nested inside a function's body (four on a special occasion); use the construct that fits best
  (guard clauses, `:` one-line bodies, `case P: v`, narrowing, comprehensions, errors raised by name).
- Develop with targeted tests and `make quick`. Run the full `make verify` once at the end, and only through
  `/home/user/vlock make verify > verify.log 2>&1` (one slot; another round's verify may hold it - wait for it, the lock
  queues you). Logs inside your worktree, never in build/ (make verify deletes it).
- Memory is shared (15 GB, other builds running): no parallel make beyond what the makefile does.
- Leave .claude/memory/ to the coordinator.

## Report

At the end: what was built, your decisions (numbered), anything found and fixed on the way, verify's result, and what
was left.

---
name: project-olang-pending-decisions
description: "Ledger of every olang decision I flagged for the user that is still unanswered - question, default in effect meanwhile, my recommendation; re-raise when the area comes up"
metadata:
  node_type: memory
  type: project
  originSessionId: 7f2a5325-2cc9-4c97-9679-ec83bcdf63a5
  modified: 2026-10-08
---

Every question I put to the user goes here the moment I ask it, and leaves only when they answer - the answer then goes
into CLAUDE.md/HISTORY.md as any design decision does. Unanswered is not consent: the default stays in effect and the
entry is re-raised when its area comes up or at the end of a report. One decision per number, each with the default in
effect and my recommendation. See [[feedback-record-flagged-decisions]]. Rebuilt 2026-10-08 after an audit of
CLAUDE.md, HISTORY.md and the old ledger (the full old ledger is in git at bc9f9c9). Recorded future work that asks
nothing of the user is in [[project-olang-next-steps]], not here.

**Decided 2026-10-08, being built** (by parallel agents in worktrees; order in next-steps): os.Args/os.Env; files and
file system in std; value-level bits for F16/BF16/F32/F64; List.At/SetAt + a text builder, keeping loops on iterators;
several values per `case`, `case` guards, nested patterns (the user: "case guards are good", "I think the nested
patterns are fine" - read as yes); `defer` (block-scoped). Float literals default to F64: DONE (b7c8986). Its follow-ups (the user 2026-10-08: "6) sure.
7) yes make it an error 8) yes do that"): `$` prints a float's shortest round-trip text; a float literal beyond a
narrower target's range is an error; a literal-only expression adapts to its target like one literal.
**Decided 2026-10-08, next after the current batch:** runtime interfaces back as `any Trait&` (the user: "any widget is
good"): a trait stays a constraint; `any Trait&` is a run-time value written on purpose, itself satisfying the trait;
only structs/enums convert, no widening at first, defaults/overrides through the table, `is`/`as` kept; the removed
code comes back from git (T30). GUI style (retained vs immediate mode) left to me (the user: "I don't know about GUI
design. Do what you want") - nothing to decide until a GUI is written.
**Declined 2026-10-08:** labeled `break`/`continue` (the user: doesn't like them; some loops have no variable).

**QUESTIONS for the user** - direction-level only since 2026-10-08 ([[feedback-decide-details]]):
1. (asked 2026-10-09; the user wondered whether lowercase and uppercase Eq should differ, and asked for precedent)
   one rule - the compiler only ever calls CAPITALIZED methods (drop E31's lowercase private operators, used only by
   three tests), or keep private operators and make a lowercase eq/hash/str an error instead of silently ignored?
   Default (in effect): private operators kept; lowercase eq/hash/str ordinary, ignored by ==/Map/$ (tfix's decision F).
   Rec: drop them (Go's fmt, Rust impls and Python dunders are all type-global; no mainstream language has
   module-private operators).
**Decided 2026-10-09 (the user: "Yes, do both"), queued after the tfix/sfix merges (both touch buildIsAs and method
resolution):** `same(a, b)` becomes `a is b` (identity when the right side names no case or type; a case/type on the
right is the existing test, read through a reference); the five atomics become methods on the integer types
(`n.AtomicAdd(1)`, `n.AtomicLoad()`...). With it, my call: D3a extended - a local or parameter may not reuse a
type's name either (today `Circle := 3` beside `type Circle` compiles, which would make `x is Circle` ambiguous once
`any Trait&` brings type tests back).
Decided by me under that authority the same day (recorded in CLAUDE.md/HISTORY.md as they land): `match` as an
expression is `case X => value` (being built by the match agent); a literal the other operand cannot hold meets it by
T6b at the literal's own type instead of erroring (`b + 300` is an I32; being built by the lit agent); a `try` default
for a by-value result holding references stays rejected until real code needs it; Split on an empty separator keeps
Go's single bytes; pushing to a List during a loop over it is specified as built (the iterator re-reads the count);
`-i`'s next stage, when -i matters, is the redesign (compact values, scope-mirroring freeing, destructors) - in
next-steps.

**OWED BY ME to the user** (they asked, I never answered): "List<Counter> should work for most counters?" and "any more
overrides we can do?" (both 2026-10-08); a detailed proposal for R4 (a local's scope taken from where it is later
installed - built-then-installed temps, null-initialized cursors).

**MY CALLS (10-71)** - the details I decided while building and listed for review on 2026-10-08. Since the user gave
me authority over details the same day, they stand as decisions; each is recorded in CLAUDE.md/HISTORY.md with its
feature, and the full numbered list is in git (commit 730f9fe of this file) if the user wants to revisit one.

**ON HOLD (the user: "hold it off"):** passing arrays by value (dropping D9a for parameters). Returning one by value
already exists (T7b).

**DEFERRED by the user:** `:` as the module separator (`lib:Name`); relaxing comprehensions (inferred element type,
maybe for array literals too; several `for` clauses; a lazy form; elements holding references); O10b inferred
obligations (come back to it with more code); built-in Number/Ordered constraints over primitives (they would give only
errors and documentation - generic `+` already works).

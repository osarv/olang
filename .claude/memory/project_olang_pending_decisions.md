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

**Decided 2026-10-08, being built** (order and details in next-steps): os.Args/os.Env; files and file system in std;
value-level bits for F16/BF16/F32/F64; List.At/SetAt + a text builder, keeping loops on iterators; `match` as an
expression + several values per `case`; `defer` (block-scoped, my call on the user's "if you think it is good").

**QUESTIONS for the user**
1. `-i` next stage: (a) per-statement temporary arena + freeing locals, -i only; or (b) redesign with compact values and
   scope-mirroring freeing, which also gives destructors. Default: stage 1 as is. Rec: (b) when -i matters to you.
2. Labeled `break`/`continue` (explained 2026-10-08). Default: none. Rec: yes, naming a loop by its variable
   (`break line`), with a label only for loops that have no variable.
3. `case` guards (`case X if cond`) (explained 2026-10-08). Default: none. Rec: yes, cheap.
4. Nested patterns in `case` (explained 2026-10-08). Default: none. Rec: later, after guards.
5. Runtime interfaces back? Default: removed (T30). Rec: keep out; tripwire = the first struct of function values in
   real code (the removed implementation is at T30 in git).
6. Float literals default to `F32` (T6a), so `x := 0.1` and a generic `describe(0.1)` print 0.10000000149011612.
   C, Go and Rust default to 64-bit. Default: F32. Rec: F64 (found 2026-10-08 by the audit; noted in history, never asked).
7. A generated `Trait.From(x)` (struct of function values) for mixing an open set at run time. Default: none. Rec: only
   if the tripwire in 5 fires.
8. A `try` default for a by-value result that holds references (rejected, TRY_DEFAULT_HOLDS_REFERENCES). Default:
   rejected. Rec: leave until real code needs it.
9. Split on an empty separator gives single bytes (Go) rather than an error (Python). Default: Go's. Rec: keep.

**OWED BY ME to the user** (they asked, I never answered): "List<Counter> should work for most counters?" and "any more
overrides we can do?" (both 2026-10-08); a detailed proposal for R4 (a local's scope taken from where it is later
installed - built-then-installed temps, null-initialized cursors).

**MY CALLS - built, flagged, never confirmed** (default = as built; rec = keep unless noted)
10. `-u` updates every repository the build reaches; one alone is deleting its line.
11. `-u` keeps lock lines for repositories the build does not reach (programs in one directory share the lock).
12. `-d` (debug) beside `-D` (define), differing only in case.
13. The T6b cleanup kept six conversions on purpose (conversion tests, implicit-vs-explicit comparisons,
    `I64(n).Hash()`, `OpMoney.plus`, `I64(i) * I64(i)`).
14. `-i` stops with status 1, naming the place, on undefined behaviour and on what it does not run yet.
15. Identity is spelled `same(a, b)`.
16. A null reference hashes to 0; Hash never sees one.
17. `Str` must be compile-time evaluable (K1a), since `$` may call it any number of times.
18. `==` on a reference compares the referents when the type declares Eq (a null equals only a null), identity otherwise.
19. The compiler supplies Hash for a value type declaring neither Hash nor Eq; declaring Eq requires declaring Hash.
20. `match`, `in`/Has and Map keys all go through `==`.
21. `extends`: an inherited array method returning its receiver's type returns the declared type; a number's methods
    keep their results.
22. An array's own operations (index, slice, Len, for-in, `$`) need no `extends`.
23. `Array<T>(n)` of a type whose zero value holds references is an error, not a per-element constructor loop.
24. A generic placeholder (`x <T>` with no value) of a type with no zero value errors inside the generic.
25. A typed local takes a read-only initializer's permission (T25b).
26. A built result is writable; a borrowed one read-only unless `mut` (T25b).
27. An array literal's elements adapt to the target's permission when all may be written (T25b).
28. Trim/Split results are read-only - no permission polymorphism (T25b).
29. `Call` keeps the ability to fail (E31a).
30. `try x[i] = v` checks the whole statement, the value included (R21).
31. A Try form must declare errors (E31a).
32. `break`/`continue` written directly in a for-in catch clause is an error (S9e).
33. Has/Contains may declare errors directly; there is no TryHas (E29).
34. `try T[e for x in c]` checks the element's arithmetic too (E15a), so clauses may need `+ BuiltinError`.
35. The Iter that Indexable supplies does not count as a type's own Iter (S9d order).
36. `f(g())` spreads g's results only when `g()` is f's only argument (D8d, Go's rule).
37. Several names declared at once are sequential, each initializer seeing the names before it (D12b, as in C).
38. `atomicLoad` takes any integer lvalue, not only a writable one (P9).
39. `not` binds looser than comparisons (Python's rule).
40. `@` has the precedence of `*` `/` `%`.
41. A constraint may be written at any occurrence of its type variable, all occurrences agreeing (G19).
42. The built-in build constants are named `TargetOs`, `TargetArch`, `DebugBuild`, `RaceBuild`, `TestBuild`.
43. A `-D` value that is not true/false/a number is text (a String since 2026-10-08).
44. `if pure(3) != 6 { fail }` is dead code (S8a/S8b) - self-checks use assert.
45. `Verbose := false; if Verbose` in source is an error (S8a) - configuration knobs belong in `-D`.
46. A literal whose constructor rejects it is a compile error, with no `try` (T29d).

**ON HOLD (the user: "hold it off"):** passing arrays by value (dropping D9a for parameters). Returning one by value
already exists (T7b).

**DEFERRED by the user:** `:` as the module separator (`lib:Name`); relaxing comprehensions (inferred element type,
maybe for array literals too; several `for` clauses; a lazy form; elements holding references); O10b inferred
obligations (come back to it with more code); built-in Number/Ordered constraints over primitives (they would give only
errors and documentation - generic `+` already works).

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

**QUESTIONS for the user** (numbers 2 and 6-9 are unused since the 2026-10-08 answers; my calls keep 10 onward)
1. `-i` next stage: (a) per-statement temporary arena + freeing locals, -i only; or (b) redesign with compact values and
   scope-mirroring freeing, which also gives destructors. Default: stage 1 as is. Rec: (b) when -i matters to you.
3. `match` as an expression - its syntax: (a) `case X => value`, (b) `case X: value`; either way a case may instead be
   a block that provably leaves, and the match must be exhaustive (or have a value-giving `nomatch`). Explained again
   2026-10-08 with braceless one-line statements (the user asked; answer: not for `if`/`for` bodies - with no
   parentheses around a condition there is no telling where it ends - `=>` works because it is a separator).
   Default: not built. Rec: (a).
4. A `try` default for a by-value result that holds references (rejected, TRY_DEFAULT_HOLDS_REFERENCES). Default:
   rejected. Rec: leave until real code needs it.
5. Split on an empty separator gives single bytes (Go) rather than an error (Python). Default: Go's. Rec: keep.

**OWED BY ME to the user** (they asked, I never answered): "List<Counter> should work for most counters?" and "any more
overrides we can do?" (both 2026-10-08); a detailed proposal for R4 (a local's scope taken from where it is later
installed - built-then-installed temps, null-initialized cursors).

**MY CALLS - built, flagged, never confirmed** (laid out for the user's review 2026-10-08, grouped) (default = as built; rec = keep unless noted)
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
47. The new "an expression built from literals does not flow" message (T6a) covers integers too (`b U8 = 1 + 2`).
std/os (X6/B3f, 8fb6afd):
48. Names: `Args`, `Env`, `ReadFile`, `WriteFile`, `Create`, `Open`, `Close`, `Stat`, `FileInfo` (`Kind`/`Size`/
    `ModTime`), `FileKind` (FILE/DIR/OTHER), `Exists`, `IsDir`, `MkDir`, `MkDirAll`, `Remove`, `Rename`, `ReadLink`,
    `RealPath`, `Cwd`, `ReadDir` (not `ListDir`; `Cwd` not `WorkDir`).
49. `Env` of an unset variable fails with the default error (as `Map.Get` on a miss), not `OsError.NOT_FOUND`.
50. `OsError` has seven words (adds EXISTS, DENIED, NOT_DIR, IS_DIR, NOT_EMPTY); EPERM and EACCES are both DENIED.
51. `Stat` goes through a runtime function filling three numbers, laid out by the compiler's own C headers - sound
    while the target is the host; cross-compilation would revisit it.
52. `ModTime` is one I64 of nanoseconds since the epoch (good to 2262), not seconds plus nanoseconds.
53. `Args()[0]` is the program's name (C, Go, Python); under `-i` it is the source file.
54. Under `-i` everything after the file goes to the program, so `olang -i f.olang -r` passes `-r` to it.
55. `Create`/`Open` return a raw `I32` descriptor (as std/io), not a `File` type with a destructor.
56. `Exists`/`IsDir` answer with a Bool (a yes/no question, not a missing value); `Stat` follows symlinks; no lstat.
57. `MkDirAll` reports a file in the way as `NOT_DIR` (Go's rule); files are created 0666, directories 0777, both
    reduced by the umask.
List / text builder (42a4135):
58. The builder is named `StringBuilder` (a prelude name is reserved everywhere, so not `Builder`/`Text`; alternative
    `TextBuilder`), with `Push(String&)`, `PushChar(Char)`, `Len()`, `ToString()`; no `Str()` (so `$b` does not render
    its text) and no way to write it out without flattening first (a chunk iterator could add that).
59. `List.PushAll(a Array<T>&)` appends a whole array (alternatives `Append`, `Extend`).
60. List finds the chunk for `l[i]` with six comparisons in olang rather than a new leading-zeros builtin.
61. `l[i]` is a copy, so `l[i].x = v` is an error (a generic `At` cannot return a borrow - T might be a number).
62. `MapIter` was rewritten too (same per-element walk defect, same cause).
63. Pushing to a List while a loop walks it: the iterator re-reads the count, so it sees elements added before it
    reaches the end (as a counted loop would). The spec says nothing - should it? Default: as built.

**ON HOLD (the user: "hold it off"):** passing arrays by value (dropping D9a for parameters). Returning one by value
already exists (T7b).

**DEFERRED by the user:** `:` as the module separator (`lib:Name`); relaxing comprehensions (inferred element type,
maybe for array literals too; several `for` clauses; a lazy form; elements holding references); O10b inferred
obligations (come back to it with more code); built-in Number/Ordered constraints over primitives (they would give only
errors and documentation - generic `+` already works).

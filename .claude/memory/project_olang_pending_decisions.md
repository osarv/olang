---
name: project-olang-pending-decisions
description: "Ledger of every olang decision I flagged for the user that is still unanswered - question, default in effect meanwhile, my recommendation; re-raise when the area comes up"
metadata:
  node_type: memory
  type: project
  originSessionId: 7f2a5325-2cc9-4c97-9679-ec83bcdf63a5
  modified: 2026-10-08
---

Every question I put to the user goes here the moment I ask it, and leaves only when they answer - the answer then
goes into CLAUDE.md/HISTORY.md as with any design decision. Unanswered is not consent: the default in effect stays,
and the entry is re-raised when its area comes up or at the end of a report. See [[feedback-record-flagged-decisions]].
Trimmed 2026-10-08 (the user: "trim the ledger") to what is still open; the full ledger before that, every answered
entry with its history, is in git at commit bc9f9c9.

**OPEN - re-raise these, numbered:**
1. `-i` next stage: (a) a per-statement temporary arena plus freeing locals at block end, -i only, or (b) an
   interpreter redesign (compact values, freeing that mirrors the scopes) that also gives destructors. Default:
   stage 1 as committed.
2. Questions of the user's never answered: "List<Counter> should work for most counters?" and "any more overrides we
   can do?" (both 2026-10-08).
3. Offered, no answer: a generated `Trait.From(x)` (a struct of function values) for mixing an open set of types at
   run time, which removing interfaces lost.
4. R4 friction, not yet proposed in detail: a local's scope should come from where it is later installed (temps built
   then installed, null-initialized cursors).
5. A default for a `try` whose by-value result holds references (TRY_DEFAULT_HOLDS_REFERENCES) - rejected today; it
   would need every scope binding of default and result to agree. Want it?
6. Split on an empty separator splits into single bytes (Go's behaviour) rather than being an error (Python's).

**Self-hosting prep (asked 2026-10-08, the user: "the compiler should go self-hosted - any real features to add
first?"). Recommended, in this order; nothing built yet:**
- Blockers, all verified missing: program arguments and environment (main takes no parameters and an extern cannot
  return a pointer - rec `os.Args()`/`os.Env(name)` over two runtime functions copying into a buffer, main unchanged);
  creating/writing files and file-system calls (open has no mode, no WriteFile/stat/mkdir/readlink - std work);
  a float's exact bits for LLVM constants (no reinterpretation exists - rec value-level `x.Bits() U64` /
  `F64.FromBits(u)`, a bitcast, sound under T36); `List.At`/`SetAt` plus a text builder (std).
- Worth having before the port, because they shape its code: labeled `break`/`continue`; `match` as an expression
  and several values per `case`. Later or optional: `case` guards, nested patterns, `defer`.
- Method: the C compiler frozen as stage 0; port module by module; acceptance = identical normalized IR from both
  compilers over the corpus, then the stage-1 compiler rebuilding itself identically. 26.5k lines of C to port.

**My calls, all built, flagged and never confirmed** - in effect as built until the user says otherwise:
7. Today: `-u` updates every repository the build reaches (one alone = delete its line) and keeps lock lines for
   repositories not reached; `-d` (debug) kept beside `-D` (define); the T6b cleanup kept six conversions on purpose;
   `-i` stops with status 1 on undefined behaviour and on what it does not run yet.
8. Equality and rendering: identity is spelled `same(a, b)`; a null reference hashes to 0 (Hash never sees one);
   `Str` must be K1a-evaluable.
9. `extends`: an inherited array method whose result is its receiver's type gives the declared type, a number's
   methods keep their results; an array's own operations (index, slice, Len, for-in, `$`) need no `extends`.
10. Zero values (D13c): `Array<T>(n)` of a type whose zero value holds references is an error rather than a
    per-element constructor loop; a generic placeholder's error points inside the generic.
11. E31a/E29/S9e: `Call` keeps the ability to fail; `try x[i] = v` checks the whole statement, value included; a Try
    form must declare errors; `break`/`continue` written directly in a for-in catch clause is an error; Has/Contains
    may declare errors directly (no TryHas); `try T[e for x in c]` checks the element's arithmetic too.
12. D8d: `f(g())` spreads g's results only when `g()` is f's only argument (Go's rule). S4c/D12b: several names
    declared at once are sequential, so an initializer sees the names before it (as in C).
13. P9: `atomicLoad` takes any integer lvalue, not only a writable one.
14. `not` binds looser than comparisons (Python's rule).
15. Build constants: the built-in names `TargetOs`, `TargetArch`, `DebugBuild`, `RaceBuild`, `TestBuild`; a `-D` value
    that is not true/false/a number is text; a top-level condition compares text by content.
16. S8a/S8b consequences: `if pure(3) != 6 { fail }` is dead code (self-checks use assert), and `Verbose := false; if
    Verbose` in source is an error - configuration knobs belong in `-D`.

**ON HOLD (the user: "hold it off"):** dropping D9a so arrays can be passed and returned by value - proposed as a copy
in the callee's scope, always.

**DEFERRED by the user, to come back to:** `:` as the module separator (`lib:Name`); relaxing a comprehension's
element-type prefix (inferring it, maybe for array literals too), several `for` clauses, a lazy form, elements
holding references; inferred scope obligations O10b (project_olang_next_steps item 4).

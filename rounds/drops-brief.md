# Round "drops" (wt-drops, /home/user/wt/drops, from ab1253e; started 2026-11-07 ~07:55 CET; opus xhigh)

You are building one round of the olang compiler (a self-hosted compiler written in olang, repository at
/home/user/wt/drops on branch wt-drops, created from ab1253e = master plus round "kept"). Two items, in this order.
CLAUDE.md, PRINCIPLES.md and .claude/memory/ load automatically; read them as the project's rules.

## Item 1 - collections holding destructor values by value (LIST.md A4)

Decided by the user (decisions.md "Copy and unique DECIDED", "Collections DECIDED" 2026-11-03): collections are
ordinary types, unique exactly when their elements are; `Vec<File>` (File unique, with a destructor) is unique and has
no Copy. Today C11 refuses a type argument holding a value with destructors to run (`types.NeedsDrop`), naming `T&`
(`Vec<Res&>` required) - CLAUDE.md's Destructors entry ends "Not built: collections holding such values by value".
Build it for the prelude's Vec and Map and std's set, deque and heap:

- Drop glue that ends only the live elements - a Vec's count, a Map's live slots, a Deque's ring, a Heap's count -
  never the room past them (vacated positions hold zero bits: running File's destructor on a zero File would close
  fd 0). The collection's own olang code must say which elements are live. The mechanism is yours to design - for
  instance a prelude-only primitive that ends a value in place (as `vacate()`, `retire()` and `grown()` are
  prelude-only), or a destructor declared on the generic type that exists only in instances whose element needs a drop
  - under three constraints: `Vec<I64>` stays a plain copyable type (a collection is not unique by itself); plain
  element types pay nothing (bench machine code byte-identical); no hidden per-operation cost.
- Every path that takes an element out either hands its value out (Pop, TakeAt, SwapTake, Map.Take, a Heap's pop ...)
  or ends it (Truncate, Clear, a removal that gives nothing, Map.Put over an existing key - the old value ended after
  the new one is stored, as a store over a place does, O15). Growth moves elements and ends none.
- The collection's own drop at its holder's let-go ends the live elements in a defined order (Rust ends a Vec's
  elements first to last; O15 says a holder's parts last first) - decide, state it in SPEC, test it.
- `x.Destroy()` of such a collection; `x[i]` stays the element in place (RefMut/Ref, as for unique elements today); a
  copy of the collection stays refused (unique); effects count element destructors (round kept's drop flags in
  effects); early freeing keeps what it must (round 7: "a collection whose values have destructors is a candidate that
  never frees on its own let-go but builds its values in regions when a Destroy() takes them out").
- std/list's List is a handle (its copy is a second holder). My recommendation: `List<File>` stays refused, the error
  naming `Vec<File>` or `List<File&>`; argue otherwise in HISTORY if you find a sound reason.
- Spec first (C11 relaxed, the live-elements rule, the drop order), the evaluator and `interpret` agreeing (the drop
  order decided while compiling by top-level asserts beside the run-time tests, as tests/drops.olang does).
- Write a short design note first (a HISTORY section draft or PROGRESS.md) before building, and keep it in HISTORY.

## Item 2 - unique Part C: storage freed where the destructor runs (LIST.md A3)

Decided by the user (decisions.md "Unique destructor timing DECIDED" 2026-11-03, "rusts way"); the freeing itself is
mine to decide, an optimization (O8d, compiler/free.olang). Destructors already run where the holder lets go (drop
flags, wt-uniq Part B), but the storage the value owns - its arrays, a Vec buffer, its record where it lives in an arena
- stays until the scope closes. Release it where the destructor runs, wherever free.olang's conditions hold (nothing
else reaches the storage - unique's one holder, no view in use, no task, no export fn or extern call-back - when in
doubt keep): a value taken out of a Map and let go at the taker's block end, a by-value parameter's value ended at the
callee's end, a store over a place, `Destroy()`, and item 1's collection elements ended by Truncate/Clear/Remove/Put.
Measure peak memory before and after (1M Take-and-drop cycles of a destructor struct owning a Vec or an array; a loop
handing destructor values to a by-value parameter; a long-running Map of such values replaced) and bench machine code
(unchanged where no destructor values exist). Gates: `fuzz free`, the suite under `OLANG_DEADREGIONS=1`, scopesan.

## Read first

CLAUDE.md's entries "`unique` types", "Destructors run where the holder lets go", "Letting go (O8d)" (rounds 6-8),
"`Copy()`"; SPEC O8d, O15, O16, C9, C9b, C11, T13b; HISTORY's unique and drop sections and round kept's;
compiler/free.olang, lower.olang's Drop helper (`mir.HelperKind.Drop`, `mir.DropFn`), check.olang's `dropOnExit`,
`handOn`, `held`; typed.olang's `Landings`, `DropsRun`; types.olang's `NeedsDrop`, `Unique`; std/prelude/vec.olang and
map.olang, std/set.olang, deque.olang, heap.olang, list.olang; /home/user/wt/uniq/PROGRESS.md ("Left");
/home/user/review/remaining/LIST.md entries A3, A4.

## Process (the project's rules)

- The "Checklist for every language change" in CLAUDE.md, item by item: SPEC first, checker and codegen, the compile-time
  evaluator agreeing (a test it decides beside the run-time test), corpus tests reading values back after an arena
  churn, checks/cases naming each expected diagnostic, std migrated where needed, diagnostics naming what to write,
  records (CLAUDE.md entry, HISTORY section, SPEC), DEPENDENTS.md walked.
- Develop on targeted tests and `make quick`. Before a heavy run check `pgrep -af 'flock /home/user/verify.lock'`; run
  `make quick`, `make verify`, `make scopesan` through `/home/user/vlock CMD` (one slot - two verifies at once get
  OOM-killed; the coordinator may be verifying a merge). At the end: `/home/user/vlock make verify`, `make scopesan`,
  `make scopefuzz`, `fuzz free` and the dead-regions suite. Regenerate the seed only if compiler/ needs something the
  seed's compiler cannot build (`make bootstrap` shows it).
- Commit each coherent piece on wt-drops as you go, only the paths you changed (never `git add -A` over the tree);
  commits are authored as the repository's configured user, no attribution lines, no push (the coordinator merges).
  Keep PROGRESS.md (untracked) current - done, decided, next - so a fresh agent can continue after a restart.
- olang only for anything committed (no Python or shell); at most three blocks nested in a function body (four
  rarely), guard clauses and helpers; the construct that fits best (narrowing, `case P: v`, comprehensions, `try` over
  a whole expression, errors raised by name ...).
- Disk is shared and tight: keep one build tree, delete sanitizer/fuzz outputs once read; logs in the worktree root
  (never build/, which verify deletes, and never /tmp).
- When a soundness question has two readings, take the one that keeps (refuses or holds storage longer), and say so.

## Report

Per item: what was built and why it is sound; the decisions you made, numbered, for the user's review; the
measurements (memory, bench machine code); every gate's result; bugs found on the way (fixed, and called out).

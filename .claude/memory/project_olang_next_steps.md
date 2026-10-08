---
name: project-olang-next-steps
description: "Work order for olang and the recorded future work: as of 2026-10-08 the self-hosting prep list is being built; everything else is either a recorded idea, parked, or a revisit-if"
metadata:
  node_type: memory
  type: project
  originSessionId: 7f2a5325-2cc9-4c97-9679-ec83bcdf63a5
  modified: 2026-10-08
---

Rewritten 2026-10-08 from an audit of CLAUDE.md, HISTORY.md and the old ledger; the earlier text (a running log of
work long since done) is in git before this commit. Open QUESTIONS live in the ledger [[project-olang-pending-decisions]];
this file is the work order and the future work nobody owes an answer on.

**Now: self-hosting prep, decided by the user 2026-10-08** (details in the ledger). Items 1-4, 5 (minus the
expression form) and 6 are being built in parallel by agents in worktrees (/home/user/wt/*, branches wt-*), merged by me:
1. `os.Args()` / `os.Env(name)` over runtime functions; `main` unchanged. DONE 8fb6afd (X6).
2. Creating and writing files, file-system calls (stat, mkdir, readlink) in std. DONE 8fb6afd. Still missing for the
   port: an exit status other than 0/1 (ledger 9), capturing a command's output (Run into a file then ReadFile), append
   mode, lstat, permissions, recursive remove.
3. Value-level bits for F16, BF16, F32, F64 (`x.Bits()`, `F64.FromBits(u)` - spelling may change, see the agent's call).
4. `List.At`/`SetAt` and a text builder - without making loops stop using iterators (S9d: a type's own Iter wins);
   also fix `ListIter`, which walks the chunk list from the head for every element (its comment's reason, satisfying
   an interface with no receiver scope, went with interfaces and O4b).
5. Several values per `case`, `case` guards, nested patterns; `match` as an expression once its syntax is chosen
   (ledger question 3).
6. `defer`, block-scoped as Zig's.
7. Float literals default to F64 (T6a) - DONE b7c8986. Debt found there: the B9a token evaluator reads a narrow-typed
   global (`X F32 = 0.1`, an `I32` that would wrap) as its exact value, so a top-level condition can disagree with the
   run time - fix by deferring such conditions to B9c's compile-time evaluation.
**Overnight plan, 2026-10-08 (the user: "Do a big refactor of the compiler as well ... Also do a code review, order is
your choice"):** feature batch first (lit, match, defer agents; merge each), then the REVIEW, then the REFACTOR - review
first because its fixes must land before code moves (and the refactor keeps behaviour identical, bugs included), and
because what it finds about structure feeds the refactor.
- Review: five read-only agents by area - (1) token.c + syntax.c, (2) semantic.c types/modules/generics half,
  (3) semantic.c operands/statements/scopes half, (4) codegen.c incl. the runtime IR, (5) comptime.c, main.c, util,
  errmsg + std/prelude. Each reports only findings it reproduced with a small olang program on the current compiler
  (CONFIRMED) or could not reproduce but traced (PLAUSIBLE, kept apart). Fixes go in worktrees with regression tests.
- Refactor: behaviour-preserving, accepted only if the IR for the whole corpus is identical before and after
  (normalized, as for the T6b cleanup) and `make verify` passes. Split semantic.c (13k lines) and codegen.c (6.9k) into
  cohesive files - roughly types, modules/imports/conditional compilation, generics, scopes (§8), expressions,
  statements and lowerings for the checker; runtime IR, expressions, statements, rendering, debug info for codegen -
  each shaped like a future olang module for the port; remove dead code and comments about removed features
  (interfaces, scope names, O10e...); unify hand-kept duplicate walkers (structContainsBareScopeField). One agent per
  file at a time; the makefile gets the new files.
Then runtime interfaces back as `any Trait&` (decided 2026-10-08, see the ledger; for GUI widgets eventually).
Then the port: C compiler frozen as stage 0, module by module, acceptance = identical normalized IR over the corpus,
then the stage-1 compiler rebuilding itself identically. 26.5k lines of C.

**Recorded future work** (the user recorded or deferred these; not next unless they say so):
- Serialization (JSON and a compact binary encoder in std, walking fields - never a memory dump) on top of
  compile-time reflection (one generic iterating a type's fields, like `match <T>`); also restores what removing
  struct literals lost - rebuilding a valid value without its validating constructor.
- Declared-layout types for drivers, wire headers and C structs (exact size and offsets); foreign struct FIELDS in
  extern (held in reserve: a clang probe can give sizes, not fields).
- Utf8/Utf32 text types, as a library over Char/String.
- `-i` stage 2 (memory reclaimed, destructors) and stage 3 (tasks on real threads - sequential would deadlock chan).
- Porting oann's MNIST trainer to olang as a stress test of the newest features (offered, no answer).
- Package registry (the lock file pins commits; there is no registry); package-private visibility if std ever needs
  shared internals.
- `spawns` signature effect (deferred, purely additive); `select` over channels and a bound on parallelism.
- Cross-compilation: TargetOs/TargetArch are the host's from uname.
- DWARF for by-value aggregates, and a lexical block per test (tests share the harness's main).
- Compile-time evaluation: constant contexts inside function bodies (callee bodies checked on demand); S8c fixed
  locals for aggregates and references; baking the globals destructors write (simulating startup); a payload enum
  holding an address baked as data; K2c's exemption narrowed to a global's own frame.
- Several `try` defaults as one call's arguments (R9a's comma ambiguity, D8d).
- Weaker atomic orderings (additive); an `atomic` keyword was declined 2026-10-01 in favour of the builtins.
- Extern variables (nothing needs them); extern returning a pointer stays excluded (os.Args/Env avoid it).
- Text pieces cannot continue onto the next line (forced long commands into variables in checks.olang).
- The user's untracked program is in old syntax (pre-rename); never migrated - it is theirs, untracked.

**Parked, needs a benchmark first:** stack-allocating a non-escaping bare-`&` local instead of an arena call (needs a
size cap, Go-style); with it, stack SIMD alignment for local arrays (O8a covers the arena only).

**Revisit only if:** ThinLTO if programs get big; M:N scheduling only with async I/O; `volatileLoad`/`volatileStore`
builtins only for MMIO; the chunk pool reusing more than its head chunk if allocation patterns demand it.

**Small known debts found 2026-10-08:** the re-export-plus-import-cycle ordering fragility was worked around by
reordering worker.olang's imports, never fixed at the cause; several "must not compile" shapes from early history were
checked by hand only (comments, before `checks/` existed) - worth moving into checks/cases; `structContainsBareScopeField`
is the one type walker still kept in step with the others by hand.

**How to apply:** the user sets the order; don't start an item from the future-work list unasked. Fix bugs and debts
on sight per [[feedback-surface-and-fix-bugs]].

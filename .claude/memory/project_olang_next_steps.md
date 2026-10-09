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
- Decided 2026-10-08 (my authority, for the port): **recursive enums** - an enum may be held by reference (`Expr&`)
  and a payload may hold one (`Add(a Expr&, b Expr&)`), so a syntax tree is an enum and nested patterns read through
  the references (`case Expr.Add(Expr.Lit(a), Expr.Lit(b))`, a null matching no nested pattern). The match agent's
  T17d ("an enum is never a reference") was a stopgap for references that never worked; this replaces it. An agent
  after the 00:30 reset, beside defer, before the review. Also decided: `:=` from a match/if expression keeps D15's
  rule per value (arithmetic does not name its type), so `area := match ... => 3.14 * r * r` stays an error.
- Review: five read-only agents by area - (1) token.c + syntax.c, (2) semantic.c types/modules/generics half,
  (3) semantic.c operands/statements/scopes half, (4) codegen.c incl. the runtime IR, (5) comptime.c, main.c, util,
  errmsg + std/prelude. Each reports only findings it reproduced with a small olang program on the current compiler
  (CONFIRMED) or could not reproduce but traced (PLAUSIBLE, kept apart). Fixes go in worktrees with regression tests.
- **First after the reset: a use-after-free in the scope checker (found by the enums work, reproduced on the old
  compiler).** A callee's obligations are checked at a call only if its body was checked first - never for generic
  instantiations or functions declared after the caller - so `for i in range n { l.Push(Node(i)) }` builds each node
  in the loop body's arena and stores it in the outer list (and `m.Put($i, i)` likewise; std/map's own test has the
  shape). Decided: fix it. The prototype (re-check missed obligations after all bodies, build each temporary where its
  obligation says) was right but rejected `for w in ws { mine.Push(w) }`, because ListIter's Next tags elements with
  the iterator's scope, not the list's: a result read through a `&p` field (C2d: keeps the argument's own scope) needs
  to carry the scope that field was bound to at construction - the per-instance binding the checker already records
  for constructor arguments (hereVar) - through `:=` locals and the for-in lowering, without new syntax.
- (closed 8a38b36) the program scope's unlocked allocator - tasks now get a private stand-in, folded at the join.
- (closed 8a38b36) a returned local array value pointed into the closed scope - the callee now copies it into the
  result scope and the caller adopts it.
- Progress 2026-10-09 00:40 UTC: master = 2baddf3 (all features through recursive enums). Running: the scope
  use-after-free fix (/home/user/wt/scope) and review areas (1) lexer/parser and (4) codegen, read-only against
  /home/user/wt/review (detached at 2baddf3, its own build). Still to start, paced by usage: review (2) semantic.c types/
  modules/generics, (5) comptime/driver/std, and (3) semantic.c operands/statements/scopes after the scope fix lands.
- Codegen review (2026-10-09 01:00): 19 confirmed findings, reproducers in /home/user/review/codegen/. Being fixed in
  /home/user/wt/cgfix: 5, 7-18 (spawn lowering, unsigned index zext, Array(n) byte overflow, struct fill IR, return in a
  test, >4096-byte literals, assignment order = left to right (decided: target's subexpressions, then value; compound
  place once), checked index evaluating its base twice, double allocation on `:=`, match blocks without arenas, BF16
  -O0, big by-value structs, decimal literal overflow, nondeterministic helper names). LEFT for after the scope fix
  (same area - where values land): 1 returned array/String value points into the closed scope (UAF), 2 assigning a new
  value to a global inside a function builds it in the function's scope (UAF), 3 program-scope allocator raced by tasks,
  4 spawn's arena merged into the join block not the bound scope (UAF), 6 try-default value built in the innermost
  block (UAF), 19 nested constructor in a loop leaks into the function scope. The review's structure notes: call lowering
  exists 5 times; "where does a value land" is answered in ~8 places with different fallbacks; hidden ambient context;
  cgMaxBlockDepth is a hand-kept walker; two conversion matrices; ~900 lines of runtime IR would move out cleanly.
- Parser review (2026-10-09 01:05): 17 confirmed findings plus checker crashes B-E, reproducers in
  /home/user/review/parser/; all being fixed in /home/user/wt/parsefix (decided: conditions whose value depends on a
  width defer to B9c; -D values validated by the lexer's rules). Finding A - a stack-use-after-return in
  pendingDischarges (buildMatchCore's stack copy of ctx read by flushPendingDischarges; ASan shows it on the corpus) -
  goes to the scope agent after its current task, with codegen findings 1, 2, 3, 4, 6, 19. Still to run: reviews (2)
  semantic.c types/modules/generics, (5) comptime/driver/std, (3) semantic.c operands/statements/scopes (after scope).
- 02:00: codegen fixes merged (d11c538 via c2f16e6, on master). Usage 65% of the window, so reviews (2), (5), (3)
  wait for the 05:30 window; running until then: scope fix, parser fixes.
- 03:00: scope follow-up merged (8a38b36, on master; codegen findings 1-4, 6, 19 and parser A fixed). Parser fixes
  (fadf5ce on wt-parsefix) are being merged with master by their agent (L10 U64 rule reconciled), then verified.
- 03:00: parser fixes merged (c14467b via ffacca8, on master; all 17 parser findings + checker crashes B-E; L10's U64
  decimals go to B9c in the token evaluator; `-D X=18446744073709551615` is a U64). Measured 03:15 (peak RSS of the full-suite `build/out -t`):
  2baddf3 (before tonight's fixes) 10.5GB, after the scope work 11.7GB, master now 11.45GB - so ~1GB is tonight's and
  the rest was already there: `-t` builds every listed file in one process and frees nothing between them. Each file
  is an independent build, so releasing a file's state before the next (or an arena per build) is the real fix - put
  it in the refactor.
- 06:10 (2026-10-09): reviews (2) types/generics, (3) statements/scopes and (5) evaluator/driver/std started at 05:37
  against /home/user/wt/review @ 9a6c8c9 (reproducers /home/user/review/{types,scopes,eval}). (2) reported 21
  confirmed findings (enum auto-Hash abort, read-only refs written through Call adapters and nominal conversions,
  self-holding inline arrays crashing, non-injective/truncated instantiation names, G4/G1 unenforced, alias-blind case
  names, extends types never meeting traits...); being fixed in /home/user/wt/tfix (wt-tfix). Decided for it: a
  declared type over a struct/enum/generic instantiation is an error (over a declared number/array it inherits no
  ctor/extends/generic identity); Eq/Hash/Str may be declared on an extending type, replacing the inherited ones;
  anonymous enums are the same type iff same cases, order and payloads. Full verifies serialize on
  `flock /home/user/verify.lock`.
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

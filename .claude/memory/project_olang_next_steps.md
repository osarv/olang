---
name: project-olang-next-steps
description: "Work order for olang and the recorded future work: the current plan (the port, own/Vec, queued stage-0 fixes), recorded ideas, parked items and revisit-ifs; the dated progress log is in archive/next_steps_log.md"
metadata:
  node_type: memory
  type: project
  originSessionId: 7f2a5325-2cc9-4c97-9679-ec83bcdf63a5
  modified: 2026-10-17
---

Rewritten 2026-10-08 from an audit of CLAUDE.md, HISTORY.md and the old ledger; the earlier text (a running log of
work long since done) is in git before this commit. Open QUESTIONS live in the ledger [[project-olang-pending-decisions]];
this file is the work order and the future work nobody owes an answer on.

**Now (as of 2026-10-17)** - written from the newest entries when this file was slimmed; dated progress entries
2026-10-08 to 2026-10-12 are in archive/next_steps_log.md (not imported), and the refactor plan there (splitting
semantic.c/codegen.c) was superseded by the user's modest refactor (bootstrap/ move, done) and "splitting files is
overrated".
- The port is under way (C compiler frozen as stage 0, fixes only - QB; acceptance is the test suite, per-stage diffs
  where cheap, then stage 1 rebuilding itself): M1 scanner, M2 diagnostics, M3 parser, M4 load/fetch/names, M5a types
  and the typed contract (revised), M7's MIR contract are merged. Running (resumed after the 2026-10-17 reset):
  wt-check (M5b/M5c, compiler/check.olang, PROGRESS.md handoff), wt-drv (M10 driver), wt-eval (M8 evaluator),
  the e31view2 review (/home/user/wt/rve31b @ 15841b0, of wt-e31view's E31b view-element relaxation - merge after it), wt-ioprint (the user's
  2026-10-17 decision: one print pathway, io.Print/Println/PrintErr/PrintErrln; tools/io_print (now olang) migrates).
- Own/Vec: Vec phase 2a merged (vecp2 fix round cc555ed, reviewed vec7). Next: Vec phase 2b - Vec as a type argument,
  move-aware List/Map (TakeAt, SwapTake, Map.Take), tasks and lambdas holding one, Push cost (docs/own.md 25.6).
- 2026-10-17 ~11:40 CEST: wt-e31view round 3 merged (0de9cba); its review (/home/user/review/e31view3) found the
  relaxation sound and three PRE-EXISTING UAFs (U1/U2: a non-handle value argument for a reference parameter leaves the
  callee's scope variable unbound; U3: a slice of a catch default returned) - round 4 on wt-e31view fixing them.
- QUEUED stage-0 fixes (after e31view merges, to avoid semantic.c conflicts): T22a refuses a function value whose
  parameters share a scope (`&x`), crash + unsound (typed review repro/sharedscope*.olang); S4d decided by types in C to
  match SPEC; E31b's M1; the handle-field use-after-free `f.Blocks[b].S.Push(x)` (a List field of a struct element
  reached through x[i] builds its chunk in the call's frame; HISTORY.md has the reproducer) - in e31view's next round.
- QUEUED language batches from 2026-10-17 (ledger QO1-QO6, QP1-QP3), one after the other after wt-ioprint and
  wt-e31view merge, the port's checker already told: (1) ERRORS - inferred error sets, the default error and bare
  `error` removed, std's own errors (never BuiltinError), new `try` checks (<< overflow, float narrowing, sign changes),
  INVALID to IEEE, WRONG_CASE for `as`; QQ1 (try for what fails as written, `checked` = try + checks, Try forms renamed Checked forms,
  their errors a superset of the plain method's, plain operator methods may declare errors); (2) ARRAYS - one constructor `Array<T>(n)`, lengths inferred where made and
  through results, written `Array<T, N>` and constant generics (G20-G28) dropped, QW (function type-parameter
  lists `fn f<T>(...)`, a receiver introducing its type's parameters - reverses G8b), arrays by value (an instance per
  known length; a run-time length by value an error), call-site asserts.
- 2026-10-17 ~11:55 CEST (the user: "that's all the language changes I had in mind for now. Build them and migrate
  the corpus"): wt-errors started (/home/user/wt/errors: QO1, QO4, QO6, QQ1; corpus migration after wt-ioprint lands);
  wt-arrays phase 1 started (/home/user/wt/arrays: docs/arrays.md, SPEC, inventory, plan - no bootstrap/ edits until
  wt-errors merges; phase 2 builds it). oann waits until the self-hosted compiler is done (the user, 2026-10-17).
- 2026-10-17 ~14:35 CEST, the user away (errands): "work through what you have been given ... I want the background tasks
  to finish before we really start talking about the new features" (docs/ideas.md). Merge order: wt-memfix (stage-0
  memory, unblocks every verify) -> wt-tests (corpus into tests/) -> wt-runfmt (formatter + word CLI, in C too) ->
  wt-e31view round 4 (U1-U3; review if it relaxes) -> wt-pyport -> wt-errors (big; soundness review of its relaxations
  before merging) -> then arrays phase 2 (with QW) and the port's checker resumed (wt-check, after memfix). Each merge:
  full verify on the merged tip, one at a time.
- QUEUED after wt-errors: a SYNTAX batch - QY (one listing rule: `,` on a line, a line break between lines, `+` gone from
  error sets/catch) and QW (function type-parameter lists, the before/after examples from the 2026-10-17 talk) - then
  arrays phase 2 (semantics only). Both compilers; migration tools in olang; oann after.
- SMALL, after the errors and syntax batches land (they edit SPEC.md): SPEC §5's section numbers are broken - no 5.6, two
  5.11s and two 5.12s - and ~50 `§5.x` references (SPEC.md, bootstrap/syntax.h) must be checked one by one for which
  section they mean (`§5.6` points at nothing). Renumber 5.6-5.19 in order.
- DONE 2026-10-18 (9a831b2): the syntax batch (QY/QW, 9b78375), the number traits (T35c), Pair to std/pair, E13c (a
  number literal is no receiver), `a.Chunks(ChunkSize)` for race-free fan-out.
- QUEUED (QZ2, the user 2026-10-17): after memory round 1 (Vec as a handle - replaces Vec phase 2b), the iterator
  helpers and StringBuilder onto Vec (`a.ToVec()`), List to std/list; benchmarks before/after. Then Vec phase 2b itself
  (Vec as a type argument, in tasks and lambdas, move-aware List/Map) comes first of these. It also closes QF: a test of a long-running
  Map of owned objects staying flat in memory.
- RECORDED 2026-10-17 (the user: "Record them", after asking whether not going all the way to Rust shoots us in the
  foot): (1) section 8's soundness is the project's main risk - in the port's section-8 pass (M6), write it down first
  as a small formal model (the rules and why each is sound) before code, then test it with the scope fuzzer and
  sanitizer as now; (2) static race safety where `own` makes it cheap - a design for the user to review first: a task's
  argument that can be written is moved in (`take`) or read-only, giving compile-time freedom from races for fan-out
  shapes without Rust's global exclusivity (P3 withdrawn, done properly on ownership). Neither imports the rest of
  Rust: no `&mut` exclusivity, lifetime parameters, Send/Sync, Rc/RefCell, Pin, unsafe. Likely first small borrow from
  Rust when code needs it: two-phase borrows (`v.Push(v.Len())`).
- RECORDED 2026-10-18 (the user: "Record it then"): relax the LEND rule (docs/scope-model.md 3.3 - SPEC O17 fixes the
  binding by the value's kind; the model shows choosing whichever binding is sound accepts slightly more safe programs).
  Order decided: first the port's M6 matches stage 0 exactly (stage 0 is its oracle), then the relaxation in BOTH
  compilers as a language change with its own soundness review - sooner if real code hits a refused-but-safe case.
- Then runtime interfaces back as `any Trait&` (decided 2026-10-08, see the ledger; for GUI widgets eventually).
- Pacing and safety: one agent at a time early in a week; snapshots (wipsnap.sh) and backup pushes (QM yes); kill only
  your own processes by PID.

- 08:30 CEST (2026-10-17): the weekly limit (hit ~2026-10-12) stopped all agents and the container restarted; files
  survived (worktrees, commits, uncommitted eval.olang/target.olang, PROGRESS.md). vecp2's fix round committed
  cc555ed with verify passed. Resumed by SendMessage after the reset: vecp2 fix (report), check (M5b), drv (M10),
  eval (M8), e31view2 review. LESSON: agents should commit coherent pieces as they go - a restart keeps files, but a
  lost container would not.

**After the compiler (the user, 2026-10-11):** research on settling networks. Extract functional structures for tasks,
MNIST first, NLP and robotics later; genetic algorithms are allowed. Done in oann, clean room
(user_olang_direction.md).

**Recorded future work** (the user recorded or deferred these; not next unless they say so):
- **FPGA support, for spiking neural networks** (the user, 2026-10-09: "I want FPGA support for spiking neural network
  implementations"; after self-hosting, as a second backend of the olang compiler). Route: high-level synthesis of a
  compiler-checked subset - fixed-width integers and minifloats, fixed-size arrays, bounded loops/comprehensions,
  match/enums, generics, compile-time evaluation for constant tables; no run-time allocation, recursion, function
  values, extern or text - emitted as LLVM IR or MLIR for an HLS flow (CIRCT, AMD's open Vitis HLS front end, Bambu);
  `join`/`spawn` and channels as parallel units/dataflow. What SNNs need on top (to design then): arbitrary bit widths
  (`U<12>`-like) and fixed-point types with saturating arithmetic (membrane potentials, Q formats), event streams for
  spikes (address-event routing), weights in on-chip memory, time-stepped leaky integrate-and-fire updates. The other
  route - a circuit-describing library run by the compile-time evaluator emitting Verilog (Chisel/Clash style) - kept
  as the alternative for timing-critical parts.
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
builtins only for MMIO. (The chunk pool's reuse beyond its head chunk was done 2026-10-09 - O8b size classes + an LRU cap.)

**Small known debts found 2026-10-08:** the re-export-plus-import-cycle ordering fragility was worked around by
reordering worker.olang's imports, never fixed at the cause; several "must not compile" shapes from early history were
checked by hand only (comments, before `checks/` existed) - worth moving into checks/cases; `structContainsBareScopeField`
is the one type walker still kept in step with the others by hand.

**How to apply:** the user sets the order; don't start an item from the future-work list unasked. Fix bugs and debts
on sight per [[feedback-surface-and-fix-bugs]].

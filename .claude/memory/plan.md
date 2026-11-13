---
name: plan
description: "Work order for olang and the recorded future work: the current plan (the port, own/Vec, queued stage-0 fixes), recorded ideas, parked items and revisit-ifs; the dated progress log is in archive/next_steps_log.md"
metadata:
  node_type: memory
  type: project
  originSessionId: 7f2a5325-2cc9-4c97-9679-ec83bcdf63a5
  modified: 2026-10-17
---

Rewritten 2026-10-08 from an audit of CLAUDE.md, HISTORY.md and the old ledger; the earlier text (a running log of
work long since done) is in git before this commit. Open QUESTIONS live in the ledger decisions.md;
this file is the work order and the future work nobody owes an answer on.

**After the compiler (the user, 2026-10-11):** research on settling networks. Extract functional structures for tasks,
MNIST first, NLP and robotics later; genetic algorithms are allowed. Done in oann, clean room
(direction.md).

**Recorded future work** (the user recorded or deferred these; not next unless they say so):
- **A freestanding target** (the user, 2026-10-26: "we are going to need an operating system free way for FPGAs eventually
  ... Maybe even an operating system in the future"): no libc, no OS - the runtime's libc use stays behind one layer so it
  can be swapped for a freestanding one; libc stays on hosted targets ("using libc where it excels").
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
on sight per rules.md, "Code rules".

(The dated log before 2026-11-06 - the port, the batches and their merges - moved to archive/next_steps_log.md
on 2026-11-07. The remaining work is /home/user/review/remaining/LIST.md.)

- Current state (2026-11-08): the compiler was declared done 2026-11-07 ~19:45 CET (final verify and gates passed). On 2026-11-08 the user decided the function-values work (docs/fnvalues.md, twelve rounds, round 1 running), the refusal audit (docs/refusals.md, running) and generational back-pointers instead of reference counting (docs/genrefs.md, running); started benchmarks and saturating arithmetic; and holds oann until version 1 is mature (everything settled, built, possibly refactored once more, verified). The dated log of 2026-11-06 and 2026-11-07 is in archive/next_steps_log.md.
- Order (the user, 2026-11-09): "the main idea is still to just finish the compiler, then build OANN, and then do the
  experiments." Experiments only where they teach something for the compiler; E1 (oagent/experiments) taught little
  (two small LANGUAGE.md items), so no more for now.
- F6 (O29, scopes found at run time) merged 2026-11-08. Left: two cases still fall back to the program's scope (a value argument holding two references bound to an unknown scope; the old C1 derived case) - against the user's "never program scope", to be covered by a Found placement, not refused; one lookup per statement; OLANG_SCOPESTATS; the round's gates (scopesan, scopefuzz, race, cross, bench). Notes: review/rounds/F6_PROGRESS.md.
- 2026-11-10: every round of docs/wholeprog.md 10.2 and review B done, final gates pass (cross needs clang-19, libc6-dev-arm64-cross, binutils-aarch64-linux-gnu, qemu-user). Order to version 1 (the user, 2026-11-10: "Yeah, we could do one refactor pass"): the leftovers (STATE.md), then ONE bounded refactor pass of compiler/ (worst nesting and longest functions first, Opus, behaviour-preserving: suite plus the self-build fixed point, IR byte-identical where possible), then oann.
  One-line bodies (the user, 2026-11-13): the refactor pass converts one-statement blocks to S1b's `:` form with a small migration tool (tools/, idempotent, `olang fix`), kept cheap: one Sonnet-low agent, not a big share of a week ("just dont spend 10 percent of a week on it").
- Python/ML ease, approved 2026-11-13 ("yes, do them"): multi-axis indexing/slicing (`:` and `...` in an index) and nested literals before oann; a prelude print/println ending the program on failure; running a file compiles quick (or cached); unused locals/imports warnings in interpret and the prompt; literals without the type in front - target-typed wherever a type is expected, else their own type (`[1, 2]` an Array<I64>, `[k: v]` a Map), empty with nothing expected an error; constructors keep their name (decided 2026-11-13), built after wt-axes merges; the prompt and Jupyter kernel right after version 1. Order: these language items, then the refactor pass, then the prompt, then oann.

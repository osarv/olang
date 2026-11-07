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

- DIRECTIVE 2026-11-06 CET (the user: "next week (tomorrow) we build the entire compiler with the remaining features,
  verify, and then the compiler is done. then we do oann and settling experiments"): from the reset (2026-11-07 05:00
  CET), one agent at a time: (1) list every decided-but-unbuilt item - the ledger's decisions, CLAUDE.md's "not built
  yet", this file's queue - and add what is missing to the queue; (2) bulk review 7 and its fix round; (3) the build
  batch's rest (item 17, unique Part C, collections of destructor values by value, drop flags in effects); (4) the
  section-8 round (NLL, O27 as placement, T22a relations); (5) reuse in place; (6) the refs study's two items; (7)
  wt-uniq's two pre-existing bugs; (8) what (1) finds, and the structure-of-arrays container only if the user picks it
  (QCS 3); (9) a final bulk review with its fixes and a full verify (verify, scopesan, scopefuzz, fuzz) - the compiler
  done; then oann's port and the settling experiments. The 0.92 stop holds; the week read 0.97 at 21:45 CET on
  2026-11-06 (the coordinator's own long-context turns), so nothing more ran before the reset. The wake-up
  trig_01UpkSP1CvFmvUotAUWuyYCt carries these steps.
- 2026-11-06: QCS 3 decided (the user: "Do the columns solution") - `Columns<T>`, the built-in structure of arrays,
  is step 8 of the final batch (decisions.md "QCS (3) DECIDED" has its shape; spec first).
- 2026-11-07 01:05 CET (the user: "use up the last weeks tokens now. Ill see you tomorrow" - the last hours before the
  05:00 reset, past the 0.92 stop, taken because the user said so): started steps (1) and (2) of the directive, both
  read-only, side by side - the audit of every decided-but-unbuilt item (writing /home/user/review/remaining/LIST.md)
  and bulk review 7 (building in /home/user/wt/review7, notes in /home/user/review/bulk7/NOTES.md); each keeps a
  "## Progress" section so it can be continued if the limit stops it. The wake-up after the reset resumes them. Disk
  was 94% full after a container restart: freed to ~10 GB by deleting wt/uniq/build (7 GB) and wt/rework/build.
- 2026-11-07 CET: the audit finished - /home/user/review/remaining/LIST.md (outside the repo): (a) 19 decided by the
  user, 8 of them never queued: QBT type-level builders (`fn Color.FromHex`, `String.FromC`, `F64.FromBits`, std moves,
  `T.Functions`, trait-required builders), QBU + QBW (the type in front of every literal and comprehension -
  `Array<I64>[1, 2]` - built through `FromIter`, every std collection declaring one, `$` writing valid source; a
  repository-wide migration), QBP 7 `olang explain -asm/-ir` with LLVM's remarks, item 27's sharper C-call rule
  (effects.olang, free.olang), QBP 8 lane-comprehension fusion (measure first), D8f inferred result lengths and
  constructors taking arrays by value; (b) 14 of mine; (c) 24 limits and bugs; (e) QCU 1-3 open, the licence asked
  when the compiler is done. Spot-checked: no `FromIter` anywhere, CLAUDE.md still says "no type-level functions", no
  `-asm` option. The week follows LIST.md's proposed order: bulk review 7 + fixes; item 17, drop flags in effects and
  wt-uniq's two bugs; unique Part C then destructor collections; the section-8 round (design note first); reuse in
  place and the C-call rule; QBT then QBU + QBW (check.olang, after the section-8 round); Columns<T> (needs FromIter
  and QCU's answers); explain -asm beside them; then the smaller items, the final review and verify.
- 2026-11-07 01:35 CET: bulk review 7 finished (11b8d38..db71837; /home/user/review/bulk7/NOTES.md): 16 confirmed
  findings and a diagnostic - use after release or unsound acceptance: F1 a D9i move while the same call lends the value,
  F2 a join block's by-value holder ended before the wait, F4 a holder ended though its storage flows out (returned
  reference, stored, captured), F6 `Array<T>(n, fill)` duplicating a unique value, F12 spawned calls' arguments sharing
  one stack slot (every task reads the last), F15/F16 a unique value lent and handed on, or handed on with an alias
  live; wrong results: F3 a drop flag cleared before a later argument leaves, F7 parallel declarations not copying
  (pre-existing), F8 captures shallow and skipping a declared Copy, F10 a failed contract skipping drops, F11
  interpret running a check gap, F5 a failed test skipping by-value drops; over-rejections F9, F14 (+ d12); F13 a
  diagnostic. Its fix round started at once (still the user's "use up the last weeks tokens"): wt-bfix7 in
  /home/user/wt/bfix7, the directions in /home/user/review/bulk7/FIX-BRIEF.md, hand-off PROGRESS.md there.
- 2026-11-07 ~06:00 CET: bulk review 7's fix round MERGED (wt-bfix7, 27 commits; merge 654d60d; pushed master, wt-merge,
  designated branch): all 16 findings and d12 fixed (HISTORY.md "Bulk review 7, fixed"); the agent's own decisions: F1
  decided by mention (a plain read beside the copy keeps it), F15 a part read beside a hand-on allowed and a whole read
  into a local makes that local the holder, F4 registers where the storage lives (no new refusal), F9 a re-assignment
  after Destroy()/a hand-on renews the local, F5's guard only in test builds; found and fixed on the way: compile-time
  evaluation of a function returning a reference to its by-value local (lower.standInAway). Full verify on the merged tip
  passed but compiler/lsp.olang, OOM-killed (5.2 GB) beside the next round's build - it passed alone. Full verifies go
  through /home/user/vlock (one slot), agents told. Running: round "kept" (item 17, drop flags in effects, C1, C2,
  HeldTwo's C2d; /home/user/wt/kept, brief /home/user/review/rounds/kept-brief.md).

- 2026-11-07 ~07:35 CET: round kept merged (wt-kept f97dcf3, merge ab1253e; full verify passed on c5e751b, quick,
  scopesan and scopefuzz on b87af0c; the merged tip's verify running): item 17 (O28: a value local kept past its block
  or turn built where it is kept; os.Args 341 -> 320 instructions, one memcpy), drop flags in effects (typed.DropsRun,
  A5), C1 (a build through a derived scope goes to the program's scope), C2 (a case payload holding a by-value
  parameter's reference lifts its local), HeldTwo (a by-value holder's slot takes a held call). Found, not fixed:
  tests/runner.olang built twice in one build directory fails to link (B3i reuse, master too) - for a round on reused
  objects. Started side by side from ab1253e: round drops (wt-drops - destructor collections by value, then unique
  Part C; opus xhigh; /home/user/review/rounds/drops-brief.md) and round asm (wt-asm - explain -asm/-ir with LLVM's
  remarks; opus high; asm-brief.md). The /tmp sweep of old build temporaries was refused by the permission check.
- 2026-11-07 ~08:00 CET: the merged tip's verify passed; master and the designated branch at f913d9b. Started round
  deprec (wt-deprec from f913d9b; sonnet medium; /home/user/review/rounds/deprec-brief.md): QCW's `Deprecated:`
  doc-comment convention in olang doc, the language server, mcp and olang api - beside rounds drops and asm.
- 2026-11-07 ~08:15 CET: QCX read as answered (wrongly - see the correction below) and the errdata design note started
  (wt-errdata, opus high, /home/user/review/rounds/errdata-brief.md); it finished: docs/errdata.md (b746af3, no code,
  not merged).
- 2026-11-07 CORRECTION (the user: "the adds it then was fixing a typo. give me the options to build again"): QCX is
  NOT answered - "Add it then, not done" fixed a typo in the deprecation reply. Nothing of QCX is queued; re-asked. The
  order after drops/asm/deprec, without them: the section-8 round (design note first); reuse in place + the C-call
  rule; QBT then QBU+QBW; Columns<T> (needs FromIter and QCU 1-3); the smaller items and tidy; the final review and
  verify. What the user picks from QCX slots in by its files (errors carrying data on check.olang after the section-8
  round; packed structs beside it; the tooling items in free slots).
- 2026-11-07 CET: QCX answered (decisions.md): packed structs into the compiler's remaining work (beside the section-8
  round, disjoint files); benchmarks, coverage, the REPL + Jupyter kernel, saturating arithmetic and platforms after
  the compiler is done (no syntax - the user's rule); errors carrying data and struct patterns re-asked. Queued, next
  free slot (the machine was full: drops, asm, deprec running, load ~10): round "interp" - evaldump/evaldiff fixed, the
  corpus and std run under interpret, differences fixed, the comparison into make verify.
- 2026-11-07 ~09:05 CET: the user's two interrupts while dictating stopped all three running rounds (drops, asm,
  deprec - the harness reports them killed and will not resume them without the user's word). State at the stop:
  deprec and asm had committed and started their final verifies (still running as background processes: wt/deprec's
  verify2.log, wt/asm's verify.log); drops was at f24af92 with "quick, seed, verify, scopesan, scopefuzz, fuzz free,
  dead regions, goldens" left. Asked the user whether to restart them. Started round structpat (wt-structpat, opus
  high, /home/user/review/rounds/structpat-brief.md): struct patterns by field name, enums by both. Errors carrying
  data is decided; its build follows drops and structpat (same check.olang areas; the named payload items reused).
- 2026-11-07 ~09:10 CET (the user: "Yeah, keep building" - the stopped rounds restarted): deprec merged (97f95cc;
  its verify passed on its tip, master had changed only memory since, so no re-verify): `Deprecated:` doc-comment
  paragraphs read by olang doc (text mark, HTML struck through), mcp, the language server (hover, completion tag, a
  hint at uses) and olang api (a `deprecated` row, not breaking). Round drops continued by a fresh agent (opus xhigh,
  from f24af92's PROGRESS.md). asm's verify running; merge when it passes (golden rows resolved per file, then a verify
  on the merged tip). Running: structpat, drops. Next free slot: round interp (#86).
- 2026-11-07 ~10:05 CET: round structpat done (wt-structpat 15ce44d, verify passed on its tip): S13i struct patterns by
  field name, S13b payload fields by name too (positions first), exhaustiveness over a struct's fields; lowering, emit,
  the evaluator and interpret unchanged (tests/structpat.olang's baked global and decided assert agree); `case
  Point(1, 2)` gone (a struct path in a pattern is always a struct pattern - tests/shared.olang migrated); found and
  fixed: `case Shape.Rect(k + 1, h)` said "unknown name 'h'", `case Opt<I64>.Some(x)` did not bind x. asm + deprec
  merged on wt-merge (9241f1d): the full verify had two tests and drvdiff killed by memory (the cgroup's OOM killer),
  the two re-run and passed, drvdiff re-running; then master, then structpat merged and verified.
- 2026-11-07 ~10:30 CET: round drops done (wt-drops cad927a; verify, scopesan, dead regions, scopefuzz, fuzz free all
  passed; bench machine code identical): collections hold destructor values by value (Vec/Map/Deque/Box of a unique
  element are unique and end their elements, last first; vacate as a statement ends in place, `occupy` stores into
  room; conditional destructors on generic structs, only in instances holding such values; C11 judged per instance -
  List<File>, Buf<T>, run-time Array<T>(n) of them refused); seed regenerated. Part C (storage freed at the destructor)
  measured and not built: needs a drop check - asked the user (QCZ). Found and fixed: run-time comprehensions,
  Array<T>(n) and a.Copy() of destructor values never ended (now C11); G9d bound T to mut Res& inside Vec<T>; a store
  over a destructor value through an element was a checker gap; the prelude's sorts stored over vacated positions;
  Destroy() of a holder declared in a loop body. Merge after structpat's verify: seed taken from drops (bootstrap
  proves it), goldens recaptured with the merged compiler.
- 2026-11-07 ~10:45 CET: started round interp (wt-interp, opus high, /home/user/review/rounds/interp-brief.md) and the
  section-8 design note (wt-sec8, opus xhigh, /home/user/review/rounds/sec8-brief.md: NLL, O27 as placement, T22a
  relations, C3/C4/C6, T25d), both from wt-merge fe143d3. Merge queue: structpat's merge verify running; drops next
  (seed from drops, goldens with the merged compiler); then errors carrying data (round 1, after interp - both touch
  eval.olang), packed structs beside the section-8 build.
- 2026-11-07: QCZ decided - drop order computed from references (holders first, cycles an error), then Part C. Queued
  as round "dropord" (design note first, opus xhigh) once drops is merged; it touches check's drop flags, lowering's
  defer order and free.olang, so it runs after the section-8 build or between its rounds, by files.
- 2026-11-07 ~11:15 CET (the user: build everything now, no verifies or reviews until one at the end): structpat's
  merge verified and on master; drops merged (dafb690, seed from drops, tokens/trees recaptured; no verify - the rule).
  Running: interp, the sec8 design note, errdata2 (errors carrying data, rounds 1/3/4), packed (packed structs),
  dropord (drop order by references, Part C, reuse in place, the C-call rule). Next: the sec8 build after its note;
  QBT type-level builders; then, last and alone (it migrates every literal), QBU+QBW (the type in front of every
  literal, FromIter) with Columns<T>; the smaller items (LIST.md C5-C8 ...); then goldens, the seed, one full verify,
  the gates and one bulk review with its fixes.

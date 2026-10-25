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
- QUEUED (QAH, 2026-10-18): error-set parameters `<T ? E>` in both compilers - spec first (G-rules, R1b), inference,
  Iterator<T ? E>, std helpers taking fallible callbacks, checks; with QAI's checked versions; after wt-mathmeth and
  wt-mem2 merge. Then generators (fn ... Iterator<T ? E> with yield) in both compilers. Then reflection (docs/ideas.md
  #2, decided 2026-10-18: T.Name/Kind/Base/Fields/Cases/Params), both compilers; std's JSON/printing/Hash onto it.
- QUEUED after the 2026-10-24 reset (the user, 2026-10-18: "C is verbose as fuck, we aren't supposed to be verbose"):
  a verbosity audit of the port (sonnet/medium): where compiler/*.olang's lines go, file by file (code, tests,
  comments, the generated msgs table), which patterns repeat, and which language features would shrink them - evidence
  for language design, not only tidying. Measured 2026-10-18: scanner+parser 4,470 lines vs C's 6,050; checker 17,100
  vs semantic.c's 31,350 (which also holds section 8); the finished port projected at 40-50k vs C's 56k.
- 2026-10-18 16:00 CEST (weekly 0.74; the user: "Continue working in the background, stop at 90%"): started wt-s0fix
  (stage-0 open bug fixes: T22a sharedscope, S4d by types, E31b M1) and wt-emit (port M9: compiler/emit.olang, an
  emitdiff against stage 0). Freed ~8GB of merged worktrees' build/. Next when one finishes: M6 scope pass (xhigh),
  then eval wired to lower (M8). Stop new work at 0.90 weekly.
- 2026-10-18 17:20 CEST: wt-s0fix merged (f0291f3; its verify passed; master differed only in memory): T22a function
  types carry where their references live (funcPosShares, the port too); S4d decided by types (s4dResultCanHold); E31b
  M1 - a loop's condition runs in the turn it decides (do lowered to three clauses). Port leftovers: the port refuses
  `keep(link)` (instance arguments plain), its type spelling shows no scopes. Found, not fixed: a constructor field
  `v := w + f(r)` where f reads v on another instance says "expected no value" (a type cycle; name it).
- 2026-10-18 20:40 CEST (weekly 0.81): wt-emit merged and verified (6dbc392): M9 first round - the port's pipeline
  builds and runs programs, `make emitdiff` 929/1009 tests as stage 0 (shared.olang's differences: destructors (M6),
  compile-time decisions (M8), check gaps; PROGRESS.md in /home/user/wt/emit has the rest). Running: wt-scope6 (M6),
  wt-eval (M8 on lowered MIR).
- 2026-10-18 22:00 CEST: wt-scope6 merged and verified (M6 round 1): compiler/scope.olang fills typed.Plan, lower places
  by it (lowerdump as clean as the stand-in); `make scopediff`: 277/300 accepted programs scope clean, but 147 of 279
  section-8 fail cases get no error (E11c/O12 34, E31b 29, O17 18, C2d 11, P2/D16e 11, O10c 8 ...) - round 2's work,
  with per-instance bindings (O23a/O13c) for the 96 over-rejection rows. Emitter must allocate a non-Frame Home for a
  local the scope pass stores in a scope variable (O26a) - emitdump still lowers with the stand-in.
- 2026-10-19 00:40 CEST: wt-eval merged and verified (M8 round 2, 9713316): compiler/interp.olang runs lowered MIR;
  B9c/S8b/S18c decided by evaluation in Analyze; `olang interpret` through the driver; `make evaldiff` 254/287 tests as
  stage 0 (linalg slow, map check errors, os needs M6); 79MB where stage 0's interpret took 1.66GB. Left: speed
  (pre-decode MIR), K2 baking into emitted data, G21, S8c, S18d, tasks. (`$f`'s error set with `+`: fixed 2026-10-19, wt-render2.) Running: wt-scope6 (M6
  round 2).
- 2026-10-19 03:00 CEST (weekly ~0.87, code work stopped for the week - the user: stop at 90%): wt-scope6 round 2
  merged and verified (316bc01): 147 -> 18 section-8 cases the port wrongly accepts (the 18 listed in HISTORY.md "Port
  M6 round 2" and /home/user/wt/scope6/PROGRESS.md), 221/279 give stage 0's first error; per-instance bindings
  (O23a/O13c) not started. wt-render2 merged: `$f` writes error sets with commas (E11a/QY). NEXT after the reset: M6
  round 3 (the 18, then per-instance bindings), the emitter's Home allocation, M8 speed and K2 baking, then M10/M11.
- 2026-10-19 22:36 CEST: the 2-hourly check-in (trig_017cXPwPDKrFi8trMLqFdUpt) DISABLED while no agents run - each wake
  is a full turn of a large session and the 10-minute loop backs everything up alone. RE-ENABLE it
  (update_trigger enabled=true) whenever agents start again.
- **THE BUILD LIST - everything decided and not yet built (kept here so nothing is lost; the user, 2026-10-18: "Are you
  making sure all the features we decide on actually get built later on"). Each item points at its record. Before
  self-hosting (stage 0 too): the open STAGE-0 BUG FIXES (wt-noown - own/take removed, memory round 3 - merged
  2026-10-18, fcd2eae; the port's compiler/ still carries own/take until memory round 5) (checked
  2026-10-18): T22a lets a function whose parameters share a scope (`fn link(a mut N&, b N&a)`) become a function value
  - both /home/user/review/typed/repro/sharedscope*.olang still segfault under -debug -sanitize; S4d decided by types
  in C to match SPEC and E31b's M1 (both unverified - check them); the `f.Blocks[b].S.Push(x)` handle UAF no longer
  reproduces. Bugs found later in either compiler are fixed in both (also in the port, its own list in each
  PROGRESS.md: wt-drv, wt-eval, wt-lower, wt-check). Then the port to self-hosting (M5 finish, M6
  scope pass from docs/scope-model.md, M7/M8 finish, M9 emit, M10, M11-M12), then the seed and bootstrap/ removed (QAL).
  After self-hosting, in the port only:**
  1. Arrays batch (QP1-QP4, docs/arrays.md on wt-arrays): one constructor, fixed lengths inferred, written
     `Array<T, N>` and constant generics dropped, the 128-byte by-value cap.
  2. Error-set generics `<T ? E>` (QAH), `Iterator<T ? E>`, std helpers taking fallible callbacks.
  3. The new `checked` (QAI): checked versions `fn checked f`, a unary binding to its operand, derived checked
     At/SetAt/Slice, CheckError for BuiltinError, the Checked* names and CheckedPow removed.
  4. Generators (`fn f() Iterator<T ? E>` with yield; docs/ideas.md #1).
  5. Reflection (ideas #2: T.Name/Kind/Base/Fields/Cases/Params, trait and generic cases in match T, f.Of(v), layout,
     building back with defaults).
  6. Lane-by-lane array operators with fusion, Sum/Min/Max, masks with Any/All (ideas #4); stats' Sum/Min/Max move.
  7. Arbitrary-width integers I1-I128/U1-U128 (ideas #5).
  8. `embed` (ideas #6).
  9. `errdefer` (ideas #7).
  10. Generic enums (ideas #12).
  11. DONE 2026-10-23 (round 7, wt-speed): instance merging - identical instances and helpers written once, instance structs named by layout; sharing among reference type arguments comes through it (HISTORY.md "Port M9, round 7").
  12. Runtime interfaces `any Trait&` (decided 2026-10-08, ledger).
  13. Memory rounds 4-7 (docs/memory.md: prelude let-go and Map.Take, the port's early freeing, `x.Destroy()`), M19g in
      the port, QZ2's prelude moves (helpers onto Vec, List to std/list), a test that a long-running Map stays flat (QF).
  14. Errors as values and `Result<T, E>` (decisions.md QAM, QAN; postfix `?` keeps a call's outcome as a Result,
      `T ? E` only in signatures, cases Ok/Err, zero Err(null), unwrap by try/!/catch): `type X error { }` and named sets, catch bindings, `error e`, no error
      among several results, methods on error types, the zero `null` as "no error" (raising a null error aborts); error types
      declared `type IoError error { ... }`; `fn(I64) ? (A, B)` removed for a named set; `Result<T, E Error>` with a sealed
      prelude trait `Error`; sets list error types and may end in words of their own (`type LoadError error IoError, ParseError { TIMEOUT }`), nest and flatten, words stay qualified; `catch LoadError e`
      takes every member; error values hash, Result compares and renders structurally; `case null` an error where the
      value is known non-null (a catch binding, a written word); error values compare only with their own words and null.
  15. The port verbosity audit; SPEC section 5 renumbered; SPEC section 8 restated in the scope model's form beside M6
      (QAE).
  STILL TO DISCUSS (the user, 2026-10-18: "I want to come back to all these"): Option/null references (QAO, parked),
  `is` vs `== null` and the word `is` (QAP), contracts (#8), doc tests (#9), method and
  constructor overloading (#10, #11), fixed point (#5's second half).
- **C COMPILER FROZEN, 2026-10-18 (the user: "So basically freeze the C compiler now?" - yes).** Stage 0 takes only:
  bug fixes, finishing what is in flight (wt-mathmeth, wt-mem2, wt-noown removing own/take), and what the port's own
  source or its std turns out to need. Every decided language change (checked versions and CheckError, error-set
  generics, generators, reflection, docs/ideas.md) is built once, in the port, after self-hosting (M12), with std
  migrated then. Until then the port matches stage 0's language, so the diffs (tokdiff ... checkdiff) stay its oracle.
  Next after wt-noown: the port, straight to self-hosting. After it: the seed (LLVM IR of the compiler, committed,
  regenerated by a command), one rebuild from nothing with it, then bootstrap/ removed from the tree, tagged
  `stage0-final` (QAL).
- DONE 2026-10-23 ~23:30 CEST: STAGE 0 REMOVED (5ec40ac + dee6252 on master). The whole suite passed with the port
  built from the seed by itself (e49da49, tagged stage0-final locally; the proxy refuses tag pushes, so the commit is
  on GitHub as branch `stage0-final`); bootstrap/ deleted, OLANG defaults to build/olang, make verify bootstraps from the
  seed (three builds, the last two compared) and passes. From now on every compiler change is olang only, and goldens
  are captured from the port. NEXT: revert the two parity readings (below), then the build list in order, compile speed
  first (the user).
- DECIDED 2026-10-23 (the user: "once the C compiler is gone, we have free reins to do anything optimization we want.
  Revert it then. We still want to keyhole in the first step tho"; reading taken - parity first, then free): while
  bootstrap/ exists the port matches stage 0 exactly, including the two cautious flow readings suite round 4 copied in
  for parity (s5mapgetreturn: a local after a written `try` is no flow into the result; a function in a later-loaded
  module keeps whatever it is given). The deletion commit is parity-exact; right after it, revert those two readings
  and treat every stage-0-parity over-rejection or missed optimization in the port as free to fix (goldens recaptured
  with `GOLD_FROM=port`).
- DECIDED 2026-10-18 (the user: "For the two optimization things, I want them both"), in the port: merging identical
  instances (LLVM's function merging; `List<Node&>` and `List<Expr&>` give the same code), and sharing one instance among
  type arguments that do not change the code (every reference has one layout - Rust's polymorphization). Measured: 40%
  of the port checker's 1,535 functions are List/Map instances.
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
(direction.md).

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
on sight per rules.md, "Code rules".
- 2026-10-24 08:55 CEST (new week, weekly 0.02): compile-speed round 8 merged (c96d7d8). Started wt-fastverify (a quick
  ~5-minute tier for agents, `make verify` stays the merge gate but skips unchanged work) and wt-arrays2 (the arrays
  batch, port only, re-applying wt-arrays' phase-1 doc and SPEC onto today's master; PROGRESS.md hand-off). 2-hourly
  check-in re-enabled. QAS (dev build -O2 no LTO) and QAR (verbosity: `is` binding, bodyless constructors) asked.
- 2026-10-24 ~11:50 CEST: arrays batch merged (wt-arrays2 a57c487, verified; QP1-QP4 in the port, seed regenerated
  between its two stages). Not built (docs/arrays.md section 7): D8f inferred result lengths, G29 for constructors, T7c
  for comprehensions/reference locals, T7d for mutable private globals; S18e (leading asserts decided at every call) is
  superseded by today's contracts decision (conditions in brackets). Today's design decisions to build next, in one
  batch after fastverify: `-quick`; `==` as stored-value equality with case tests (`e == Shape.Circle`, `_`, narrowing)
  and `is` only for null; nullable `Node?&`; closed traits `for`, side-by-side constraints, `trait A extends B, C`,
  `big<I64>`; contracts (once their 8 open items are answered). Constructors written on one line in compiler/.
- 2026-10-24 ~13:00 CEST: wt-fastverify merged (dd54032): `make verify` 11.8 -> ~6 min (parallel test targets, two
  memory lanes for the >1 GB builds, a cached bootstrap in .bootcache/ keyed on all inputs, BOOT_FRESH=1 forces one,
  shared object store OLANG_OBJECTS, B3j/B3k), `make quick` ~2 min (no clean build/bootstrap/fixed point). Peak 5.4 GB per
  verify: keep /home/user/vlock at ONE slot. Agents: `make quick` while developing, one full verify at the end.
- 2026-10-24: lang24 round 1 merged (19e68c7, verified, seed rewritten): bare results/error sets, whole-item grouping
  (L18c, tools/results_migrate.olang for oann), `unreachable "why"`, `big<I64>`, `-quick` (B2g), `olang explain FILE
  NAME` (B11b), `:` one-line bodies (S1b). Round 2 (equality, case tests, narrowing, payloads) running in
  /home/user/wt/lang24-r2. Queued after the batch: `any Trait&` (fully decided today), with a soundness review.
- 2026-10-24 ~14:40 CEST (weekly 0.12): started wt-speed9 (compile speed round 9: measure, cut the largest share; emit/
  build/lower, not check) and wt-prover (docs/prover.md design note for the user, no code). lang24 round 2 running.
- 2026-10-24: lang24 round 2 merged (20806ad, full verify on the merged tip passed): E10 stored-value equality (List/Map
  declare Eq/Hash), `is` null-only, E32 case tests by `==` with `_`, S8d narrowing, T17a payload form, Some/Every;
  tools/equality_migrate.olang and helper_rename.olang for oann. Round 3 (nullable) running.
- QUEUED after lang24 + stdx merge: the std naming pass (no module stutter: io.Error, json.Value, chan.Channel ...),
  with tools/stutter_rename.olang for oann.
- QUEUED after lang24: `olang fix` (runs tools/*_migrate.olang in order, idempotent; oann's catch-up uses it).
- QUEUED: C interop v2 batch (decided 2026-10-24, decisions.md) after lang24 + speed9; then platforms (LLVM 19/20,
  aarch64 via qemu, release with bundled clang).
- 2026-10-24 ~17:00 CEST: wt-stdx merged (50cf64f; verify passed but tokdiff/astdiff goldens, recaptured after): time
  (Duration, Sleep, RFC 3339), sync, set, deque, heap, utf8, base64, hex, sha256, crc32, net (TCP/UDP), flags, regex
  (lazy DFA + Pike VM), iterator adapters; sha256 1.1x C, regex level with glibc. Gaps: no DNS (getaddrinfo list can't
  cross extern - C interop v2), no `\x` escapes (text literals talk), `&` binds looser than `==` (precedence - decide),
  error words not values (QAM), no `mut I64&` so no Mutex<I64> (primitive refs refused).
- FOUND 2026-10-24 by wt-lsp (scope pass, unfixed): a use-after-free - a conditional passed as a constructor argument,
  the instance returned (`e := E($t, mk(t) if at >= 0 else ""); return e`), fails under -debug -sanitize; reproducer
  /home/user/review/uaf-condctor/repro.olang. Fix agent to start after the current verify.
- 2026-10-24: wt-speed9 merged (7535fc1 + goldens, full verify on the merged tip passed): FILE:LINE texts out of the code
  (B3l), views pass skipped when unused, instance groups per first-reaching module, smaller parts, -quick in the record
  key; mid-checker edit 31.8 -> 21.7 s CPU (-quick 15.6 -> 2.7), new-instance edit 89.8 -> 29.9 s.
- 2026-10-24: wt-lsp merged (b69abe4 + goldens, full verify on the merged tip passed): L4b doc comments, B14 `olang doc`
  (+ -html for std), B15 `olang lsp`, B16 `olang mcp`, editors/nvim plugin.
- FOUND 2026-10-24 by the uafcc review (pre-existing leak, unfixed): an array literal of new text passed straight to a
  call boxes each element in the PROGRAM scope (`len0(String&[$i])` in a function called 2M times: 34 MB growing);
  through a local it stays flat. Reproducers /home/user/review/uafcc/repro/leak_*.olang. Fix agent after lang24 round 3
  (scope.olang).
- 2026-10-24: lang24 round 3 merged (98050e5, verified with master in): T2c nullable `T?&` only, S8e narrowing (also
  after a block ending in break/continue), E35 `x!` on null; arrays never null (empty is their zero; the agent's call);
  tools/null_migrate.olang for oann. lang24 now runs on through traits, contracts (+ CheckError rename), then the small
  items (limits/bit ops, one-line lambdas, raw values, text literals, bitwise precedence) and the array-literal leak.
- 2026-10-24: lang24 round 4 merged (9171148, verified): T30a `type A trait extends B, C`, T31a closed traits
  `type Float trait for F16, BF16, F32, F64 { }` (prelude number traits now closed), G19 intersections `<T Shape House>`.
- 2026-10-24: wt-contracts merged (ec09350, verified): D17 contracts (one block before the body; requirements decided
  at calls with closed arguments, guarantees where the evaluator runs a call, `checked f(x)` -> CheckError.CONTRACT;
  fits, for, if, outlives chains as obligations; conversions as contracts), R20 BuiltinError -> CheckError
  (tools/checkerror_rename.olang), D2 duplicate functions an error (a port bug). Left: requirements over fixed locals,
  trait-method/lambda/extern/destructor conditions, the prover.
- 2026-10-24: wt-small merged (2929bdf, verified with master in): E36 `T.Max/Min` (+ float Inf, NaN, Epsilon,
  SmallestNormal), E37 bit operations, one-line lambdas, `\x`/`\u{}`/`"""` text, `| ^ &` above comparisons
  (tools/precedence_migrate.olang changed nothing in the repo), the array-literal leak (34 MB -> 1.8 MB), T17e raw-valued
  enums (`op.Value()`, `try Op.From(v)` -> CaseError.NO_CASE). Left (found): a fixed local array converted to a run-time
  value (`v = x`, `return x`) still copies into the program scope - 34 MB over 2M calls; needs the scope pass.
- 2026-10-24 ~22:15 CEST (weekly 0.27): started wt-any (any Trait&, soundness review before merge) and wt-naming (std
  stutter renames + `olang fix`). Next after them: C interop v2, platforms, early freeing (memory rounds 4-7) + the fixed
  local array copy leak, then error-set generics, errors as values, generators, reflection.
- 2026-10-24: wt-naming merged (5b78cc4, verified): io.Error, os.Error, json.Error, csv/stats/rand/http/chan/ffi.Error,
  filepath.PathError -> filepath.Error (tools/stutter_rename.olang); `olang fix` (B17, compiler/fix.olang: 15 tools in
  order, two phases, -check; io_print/io_try/io_fix/precedence_migrate left out - not idempotent on current code).
  Follow-up asked: errors print module-qualified (`unhandled error: io.Error.FAILED`, `$e` likewise). Build list item 14's
  `Result<T, E Error>` trait is moot (Result dropped 2026-10-24), so no prelude `Error` is needed.
- 2026-10-25 ~01:00 CEST: wt-any fix round done (f29a774, verified): both UAFs, $ depth, lazy default slots, generic type
  cases, O10d by-value borrow refusal (pre-existing stack UAF), recvApplies (pre-existing), fuzzers repaired (differential
  fuzzer found 4 compiler bugs: E30, E16, E4a, E10 - fixed). Known limit: a List's iterator cannot be an `any` (T22a on
  ListIter.Next). Follow-up review running (/home/user/review/any2); merge if clean.
- 2026-10-25 CEST: C interop v2 merged (wt-cinterop 7f5dc98, verified; merge = tip + memory only): link, extern type,
  plain structs by value (cabi.olang, SysV + AAPCS64), export fn, callbacks (export fn only), build -library + header,
  ToC/StringFromC, net.Lookup/Resolve, `olang bindgen` (zlib, sqlite3 bind and run). Agent decisions 1-6 in HISTORY.
  Open: R9's diagnostic writes another module's error words bare (net.Error.UNREACHABLE) - small fix, queue it.
  Direction question QAS (asked): `p.StringFromC(max)` (E33 precedent) vs type-level functions `String.FromC(p, max)`.
- 2026-10-25 CEST: any review 2 (/home/user/review/any2): the first review's findings all closed, but new/older:
  (1) UAF - conditional/match/catch default boxed without a copy (older); (2) two instances' own methods - first wins
  silently (new); (3) stale lazy default thunk in a reused module object -> unreachable at run time (new); (4) chain
  literal adapts to its left neighbour for both comparisons (new); (5) older refusals (any R<T>& substitution, G4,
  prelude iterator adapters through an any); (6) diagnostic. Fix agent on wt-any with decisions: one shared
  copy-unless-fresh predicate; per-instance method keys; program-wide-demand thunks in the root object (B3d); a chain
  = its written-out form. Another review before merging.
- 2026-10-25 CEST: any fix round 2 done (wt-any 5d0529f, verified): box copy decided by the scope pass alone
  (Plan.AnyNew), per-instance methods (M21; overlapping pairs an error - found a duplicate Checker.readLocal),
  default-slot thunks homed in the root (B3d), chain literal typed per comparison (E30), any R<T>& substitution + G4,
  adapters through an any refused at the call (limit), B3k empty-lock fix. Third review (narrow, xhigh) running ->
  /home/user/review/any3; merge if clean.
- 2026-10-25 CEST: any review 3 (/home/user/review/any3): the round's targets held; found (older) the box trusting any
  call result as new (UAF via scope arguments `mk&t(i)`), §8 never judging a call with a scope argument where it stands
  (UAF on master too: `h.p = mkp&t(i)`, `return mkp&t(..)`), a returned local with a second name aliasing; NEW: the
  evaluator ignores Plan.AnyNew (baked global/assert disagree with run time). Plus AnyNoCopy through references,
  per-instance Eq, a crash on inline nested arrays in Grid(a), nomatch-only value match, fuzzer drift. Sent back to the
  fix agent (decisions in its brief); a narrow review of 1-3 after, then merge.
- 2026-10-25 CEST: any fix round 3 done (wt-any 0c37adb, verified): scope-argument results are existing storage at
  their scope everywhere (E25, closes a master UAF class), AnyItemNew one pure predicate (evaluator agrees), RetCopy for
  a returned local with a kept second name, AnyNoCopy through references, per-instance Eq/Hash, `type X extends
  Array<Array<T>>` refused (T7a). Scope fuzzer writes scope arguments (37 findings -> 0). Fourth (narrow) review running
  -> /home/user/review/any4; merge if clean.
- 2026-10-25 CEST: any review 4 (/home/user/review/any4): scope-argument references hold everywhere (14 master UAFs
  closed), but A) scoped calls of plain-data arrays escape (UAF, older) and B) RetCopy's flow misses second names
  (evaluator/run time disagreement - a regression). Decided: A - an arena-backed scoped value is existing storage
  whatever it holds; B - INVERT RetCopy: no copy only when the flow proves no second name (whitelist), so the
  evaluator's always-copy is unobservable. Plus C/D/E smaller. Sent to the fix agent; another narrow review after.
  LESSON again: a blacklist of "kept" shapes misses some; prove the safe case instead.
- 2026-10-25 CEST: any fix round 4 done (wt-any d4ed05d; full verify on 1d31a44, only goldens after): scoped plain-data
  arrays are existing storage (A), RetCopy inverted to a RetSole whitelist (B), C/D/E fixed; scope fuzzer text +
  second-name scenarios (54 findings on 0c37adb -> 0). Bench IR identical (no extra copies). Fifth narrow review
  running -> /home/user/review/any5; merge if clean.
- 2026-10-25 CEST: any review 5 (/home/user/review/any5): NEW - spawn of a scoped call stores freed storage (UAF), a
  scoped-call local over-rejected; OLDER - canKeep misses shared-scope parameters (aliasing, evaluator disagreement),
  conversion to a type over String skips the place path (UAF, immutable global written), plan-less return copies
  differ for cond/match/try, interpret drops §8 errors. Decided: spawn target = its assignment's lowering; canKeep
  conservative (keeps unless proved); one return-copy function with/without plan; interpret runs §8 (B3e). Fix agent.
- 2026-10-25 CEST: `any Trait&` MERGED to master (wt-any ced0302, verified; fast-forward). Five reviews; the last
  round fixed spawn targets (assignment lowering), conservative canKeep, conversions to types over String (place path),
  one return-copy function, scoped-call locals' home, interpret refusing what build refuses (B3e). Scope fuzzer: 67
  findings on d4ed05d -> 0. Recorded limits: o1-o4 over-rejections, adapters through an any. No sixth review before
  merging: master gains (many older UAFs closed); a general §8 review on master later.

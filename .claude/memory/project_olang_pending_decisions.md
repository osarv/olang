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

**QUESTIONS for the user** - direction-level only since 2026-10-08 ([[feedback-decide-details]]): none open.
**Answered 2026-10-09 (the user, two messages numbering my questions 1-21 as 1-13):**
- Q1 protocol methods follow privacy: "call private ones if in private and public if in public, if calling a private in
  public it can't be found and is an error. One may not declare both public and private" (being built, wt-langb).
- Q2 keep integer wrapping (E6c), its `nsw` cost accepted.
- Q3 `:=` infers from any expression whose type is determined (wt-langb).
- Q4/Q5 "Do 4 and 5 as you want" - MY DESIGN, queued as the permissions batch (after langb + constgen merge): `mut`
  speaks only about what a reference reaches - `mut T&` writable, `T&` read-only, in every position including locals
  (`x mut T& = ...`; D11a still forbids `mut` before a value type on a local) and fields; a binding's reassignability
  is never written: locals and parameters always (a parameter is the callee's own copy/cursor, so `mut` on a by-value
  parameter becomes an error), a field through a writable instance (Rust's model - so per-field immutability (C3) goes:
  `x mut I32` fields become `x I32`, X3a's mutex-blob opacity then rests on privacy), and a global keeps `mut` as its
  binding (`X mut I32`; a reference global's single `mut` stays both, T25c - a mutable global with a read-only referent
  remains inexpressible, recorded). `:=` copies the initializer's permission. Flag the lost per-field immutability to
  the user in the report.
- Q6 prelude `print`/`println` aborting on a write failure: yes (wt-langb). The user's "methods with errors called
  without try abort?" - agreed with me that it is a bad idea ("Ye it's a bad idea").
- Q7 linalg in std, oann on top: built (9b88d44).
- Q11 the Nested-Learning projection: normalized by |x|^2 ("Normalize"); oann's AdamWProjected defaults are normalized,
  alpha 1e-3 (89c8585, 97.79% MNIST). Which layers / alpha vs learning rate stay oann design questions, not the user's.
- Q12 run-time dimensions: library `Dynamic` ("Do dynamic the way you want it").
- Q13 `Array<T, N>&` carries its length (D9a kept): yes.
- Q14 the user: "can we make Ts appear as T after being given as generics with <T>?" -> DECIDED: a type variable or a
  constant is introduced by its first `<X>` (a type's parameter list; in a function the first `<X>` left to right:
  receiver, parameters, results) and written bare `X` everywhere after (signature and body); `<X>` again is an error.
  Replaces G8b's `<T>` everywhere. Constants: built in constgen phase 2 (told 13:05); type variables: a follow-up
  agent switches them and migrates corpus/std after constgen merges.
- Q18 spiking: answered ("We want spiking set up").
- Q19/Q21 the user: "by default compilation is always for the machine you are on. To cross compile, use the -arch= ...
  syntax. If fast math is its own functions then don't add the compiler option yet." -> native by default; flag
  spelled `-a TARGET` (B1's one-character rule - tell the user, they may object); no fast-math/contraction option
  (FastExp etc. stay functions; FMA only where code writes math.Fma). Being built: wt-native (started 13:10).
- Q20 `assert cond, "message"`: yes (wt-smallfix).
**Decided 2026-10-09 (the user):** a 2-D Matrix, not a tensor - "Matrix cuz then we don't interpret data in two
places (both Tensor and Operation)". And: "make the language generics take constants (and comp time expressions) as
parameters ... Expand it across arrays too ... Array<T, size>. Then re-evaluate the matrix question on the new basis."
Being designed (wt-constgen, phase 1 spec only until the checker agents merge); my re-evaluation: Matrix<T, R, C> with
each dimension a constant or run-time-known (Eigen's Dynamic) - the matrix choice gets stronger, not weaker. Note:
`Array<T, N>` partly revisits the user's earlier T11a ("make the size in the type irrelevant") - their call now.
**Decided 2026-10-09 (the user, oann):** static graph only for now, eager mode possible later (keep the op set and
kernels shared so an eager tape can be added - olang's arenas make a per-step tape cheap: one scope per step);
transformers first after the MNIST MLP; optimizers: plain AdamW AND "AdamW with the regularisation of orthonormal
projection as (I - alpha x x^T)".
**Decided 2026-10-09 (the user, on settling networks):** "Don't do licenses. Take inspiration from [the source] but
don't mention it specifically. We are really only interested in the dynamics, not the actual implementation. Don't
call it [that], call it something else." -> the paradigm is "settling networks" (reciprocal regions iterating to an
equilibrium, local free/nudged-phase learning, eligibility traces with a broadcast reward signal, associative memory,
arousal gating, offline consolidation); oann/docs/settling.md describes the dynamics as oann's own model, never naming
or linking the inspiration (also not in code, comments, commits or memory); no licence work. Transformers first, then
settling networks. FPGA target: PYNQ-Z2 (Zynq-7020). Details mine: Circuit<T> beside Graph<T> in oann sharing Matrix,
planner and optimizers; one stream first; validation by finite differences and analytic fixed points.
Licence workaround (the user: "I really don't want to make myself forced to license"): clean room - copyright covers
code, not ideas, equations or dynamics. docs/settling.md is the spec: dynamics only, each mechanism cited to the public
literature (equilibrium propagation, centered EP, Hopfield relaxation, TD(lambda)/eligibility traces, three-factor
rules, delta-rule associative memory, complementary learning systems), oann's own constants and API. RULE for every
future agent implementing settling networks: work only from docs/settling.md and the papers - never open the original
repository or its code. Not legal advice; told the user so.
**Decided 2026-10-09 (the user): "18. Do that yes. We want spiking set up."** The settling networks' neuron model is
a pluggable enum from the start - continuous neurons first, leaky integrate-and-fire (LIF) neurons learning from
spike-count differences between the free and nudged phases set up as a real variant, aimed at the PYNQ-Z2. "We don't
license either Oann or Olang" (may change; no licence files for now).
**Done 2026-10-09 (b7e5fa4):** `same(a, b)` is `a is b` (and `is not`), the atomics are `x.AtomicLoad()` ...
`AtomicCompareSwap(e, v)` methods, and D3a/D2 keep type names apart from locals, parameters, functions and globals.
Decided by me under that authority the same day (recorded in CLAUDE.md/HISTORY.md as they land): `match` as an
expression is `case X => value` (being built by the match agent); a literal the other operand cannot hold meets it by
T6b at the literal's own type instead of erroring (`b + 300` is an I32; being built by the lit agent); a `try` default
for a by-value result holding references stays rejected until real code needs it; Split on an empty separator keeps
Go's single bytes; pushing to a List during a loop over it is specified as built (the iterator re-reads the count);
`-i`'s next stage, when -i matters, is the redesign (compact values, scope-mirroring freeing, destructors) - in
next-steps.

**DECIDED OVERNIGHT 2026-10-09/10, FOR THE USER'S REVIEW** (the user: "make some hard decisions yourself ... record
them and tell me tomorrow/tonight"): append each hard decision here as it is made, numbered, one or two lines with the
rule and where it is recorded; the morning report lists them all, then they move out of the ledger.
1. (wt-langb, M19f) `print`/`println`/`eprint`/`eprintln` are LOWERCASE and reached bare in every module - stated as
   "the one exception to M6" (capitalized = exported). Alternative: `Print`/`Println`. Kept: the user asked for
   "print/println" by those names and they read like Python's; recorded in CLAUDE.md/SPEC.md.
2. (wt-langb, M6b) a private protocol method (`eq`, `hash`, `str`...) is invisible to the prelude's generics, so a
   `Map` keyed by a type with a private `eq` is an error at the program's use - the user's rule taken literally.
3. (wt-langb, D15) `x := 1 + 2` declares an `I32` (what the value written as one literal would be).
4. (wt-constgen, T7c) the C2e inline-field form (`m Array<F32> = Array<F32>(16)` stored inline) is gone: an inline
   array is `Array<T, N>` now; typed introductions `<N I64>`.
5. (wt-chunkpool, O8b) each thread's chunk pool keeps at most 1/8 of physical memory, least-recently-used returned.
6. (wt-native, B12) native code uses the widest vectors the CPU has (512-bit on AVX-512), not LLVM's tuned 256 -
   faster everywhere measured (GEMM 57-71 vs 41-46 GFLOPS) but a kernel tiled for another width can fall off a cliff;
   AVX512-BF16 conversions switched off (they flush subnormals, breaking evaluator agreement); cross-architecture
   builds are -c only.

**OWED BY ME to the user**: a detailed proposal for R4 (a local's scope taken from where it is later installed -
built-then-installed temps, null-initialized cursors) - partly overtaken by O25h/O18c (2026-10-09); bring it with the
permissions batch if friction remains. Answered 2026-10-09 15:30 CEST: "List<Counter> should work for most counters?"
(yes - only a constructor with an effect has no zero value; hold those as `List<T&>`) and "any more overrides?" (none
worth it; struct patterns in `match` later if code needs them).
**Confirmed 2026-10-09 15:35 CEST (the user: "Your decisions are fine"):** `-a TARGET` (not `-arch=`), and the
permissions design for Q4/Q5 including losing per-field immutability.

**MY CALLS (10-71)** - the details I decided while building and listed for review on 2026-10-08. Since the user gave
me authority over details the same day, they stand as decisions; each is recorded in CLAUDE.md/HISTORY.md with its
feature, and the full numbered list is in git (commit 730f9fe of this file) if the user wants to revisit one.

**ON HOLD (the user: "hold it off"):** passing arrays by value (dropping D9a for parameters). Returning one by value
already exists (T7b).

**DEFERRED by the user:** `:` as the module separator (`lib:Name`); relaxing comprehensions (inferred element type,
maybe for array literals too; several `for` clauses; a lazy form; elements holding references); O10b inferred
obligations (come back to it with more code); built-in Number/Ordered constraints over primitives (they would give only
errors and documentation - generic `+` already works).

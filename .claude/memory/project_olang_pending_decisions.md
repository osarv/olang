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

**QUESTIONS for the user** - direction-level only since 2026-10-08 ([[feedback-decide-details]]):
1. (asked 2026-10-09; the user wondered whether lowercase and uppercase Eq should differ, and asked for precedent)
   one rule - the compiler only ever calls CAPITALIZED methods (drop E31's lowercase private operators, used only by
   three tests), or keep private operators and make a lowercase eq/hash/str an error instead of silently ignored?
   Default (in effect): private operators kept; lowercase eq/hash/str ordinary, ignored by ==/Map/$ (tfix's decision F).
   Rec: drop them (Go's fmt, Rust impls and Python dunders are all type-global; no mainstream language has
   module-private operators).
2. (asked 2026-10-09, from the benchmarks) keep integer overflow wrapping (E6c)? It costs `nsw`: spectral-norm 1.4x
   slower than C (`(i+j)*(i+j+1)/2` keeps a 3-instruction signed divide); `>> 1` or unsigned types avoid it. Default:
   wrapping stays. Rec: keep - the alternative is C's undefined behaviour, which the evaluator could not reproduce
   (K1) and the language has spent weeks removing; Rust (release) and Go pay the same cost.
3. (asked 2026-10-09, from the benchmarks: nbody writes F64 on ten temporaries) relax D15 so `x := a - b` (any
   expression whose type is determined; still not `null` or an untyped literal-only expression beyond today's rule)
   declares with that type? Default: D15 as is. Rec: relax - the operands' types are visible and every mainstream
   language infers here.
4. (asked 2026-10-09, from the usage study) a local's reference permission: today a typed local is writable unless
   its initializer is read-only, so `path String& = "x"` then `path = args[1]` (read-only) fails, and no read-only
   local can be declared (D11a forbids `mut` on locals). Proposal: the written type decides, as for parameters and
   fields - `x T& = ...` read-only, `x mut T& = ...` writable (that `mut` speaks about the referent; the binding is
   always reassignable); `:=` copies the initializer's permission. Default: as today. Rec: yes.
5. (asked 2026-10-09) a reassignable field holding a READ-ONLY reference cannot be written: a field's top `mut` means
   both "reassignable" and "writable referent" (T25c), forcing `$x` copies (LRU value, Query.order). Options: (a)
   `f mut String&` = reassignable + read-only, `f mut mut String&`-like spelling for both - ugly; (b) the top `mut`
   on a field/global means the binding only and the reference's permission is written inside the type like an
   element's (`f mut (mut String&)`); (c) leave it. Rec: decide together with 4 - make `mut` mean one thing per
   position. Default: as today.
6. (asked 2026-10-09) scripting: printing needs `try io.Print(...)` and every main `? io.IoError`. Add a prelude
   `print`/`println` that aborts on a write failure (Rust's println! panics; Python's print raises)? Default: no.
   Rec: yes - a failed write to stdout is not something a script handles.
7. (asked 2026-10-09) the linear algebra library in std with oann a separate repo on top? Default (being built): yes.
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
11. (asked 2026-10-09; the user: the regularizer is from "Nested Learning: The Illusion of Deep Learning
   Architectures", Behrouz et al., NeurIPS 2025) my reading, to confirm: the paper's delta rule / Delta Gradient
   Descent - for a linear layer y = W x, W <- W (I - a x x^T) - lr * (AdamW update), where x is the layer's INPUT (the
   key), not the weights; per batch W <- W - (a/B) (W X^T) X (two GEMMs, as cheap as a forward pass), optionally
   normalized by ||x||^2 per sample (the unofficial implementation's default). The user (2026-10-09): "It replaces the weight
   decay I think" - so the term REPLACES AdamW's weight decay in this variant. Still open: normalized or not; which layers (all linear layers?); a. arxiv and the author's site are blocked from the
   container (403), so the formula is from an unofficial implementation's README. Default: plain AdamW first.
12. (asked 2026-10-09, const generics design - wt-constgen becd37f, spec only) run-time dimensions: in the library
   (`Dynamic I64 = -1`; Matrix stores rows/cols when a dimension is Dynamic; `Matrix<F32, Dynamic, 784> @
   Matrix<F32, 784, 128>` checks 784 at compile time) or a language-level `_` (hidden storage and hidden run-time
   checks in every generic)? Default/rec: the library.
13. (asked 2026-10-09) `Array<T, N>&` puts a length in a reference type again (reversing T11a for fixed arrays) -
   forced by D9a (array parameters are references); the alternative is fixed arrays by value (on hold). Rec: keep D9a.
14. (asked 2026-10-09) a constant variable is written `<N>` in expressions too (`for i in range <N>`, `i < <N>`),
   one spelling as G8b - or bare `N` in bodies (reads better, two spellings)? Default: `<N>`. Rec: `<N>` (the
   agent's call; flagged because it is the most visible syntax choice).
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
Licence workaround (the user: "I really don't want to make myself forced to license"): clean room - copyright covers
code, not ideas, equations or dynamics. docs/settling.md is the spec: dynamics only, each mechanism cited to the public
literature (equilibrium propagation, centered EP, Hopfield relaxation, TD(lambda)/eligibility traces, three-factor
rules, delta-rule associative memory, complementary learning systems), oann's own constants and API. RULE for every
future agent implementing settling networks: work only from docs/settling.md and the papers - never open the original
repository or its code. Not legal advice; told the user so.
18. (asked 2026-10-09, re-explained when the user asked "what is 18?") spiking: should the settling networks' neuron
   be pluggable so a spiking neuron (leaky integrate-and-fire, learning from spike-count differences between the free
   and nudged phases) can replace the continuous one later - and is that the spiking direction meant for the FPGA?
   Default: a pluggable neuron enum, continuous neurons first.
19. (asked 2026-10-09, from std/linalg) a native-target build option (tile sizes per target, AVX2/AVX-512) plus an
   opt-in contraction of a*b + c into FMA? The 5-7x gap to OpenBLAS is the instruction set (olang targets baseline
   x86-64/SSE2, no FMA). Default: no. Rec: yes, opt-in (a flag), since it changes float results.
20. (asked 2026-10-09) `assert` with a message (so a shape mismatch can say which shapes)? Being built with my rec as
   the default (wt-smallfix): `assert cond, "text"`, evaluated only on failure; easy to drop if the user says no.
21. (asked 2026-10-09) an opt-in fast-math mode (libmvec vector math, contraction) that gives up evaluator/run-time
   agreement? Default: no (the matrix library ships FastExp/FastTanh/FastSigmoid approximations instead). Rec: only as
   an explicit flag, if ever.
**Answered 2026-10-09 (the user, numbering my list 1-13):** Q1 protocol methods follow privacy: "call private ones if
in private and public if in public, if calling a private in public it can't be found and is an error. One may not declare
both public and private" (being built, wt-langb). Q2 keep wrapping. Q3 `:=` infers (wt-langb). Q6 print/println: yes
(wt-langb) - and the user floated "methods with errors called without try abort on errors?"; I advised against
(explained). Q13 (Array<T,N>& carries its length): yes. Q20 assert message: yes ("sure"). Asked back / explained:
Q4 ("aren't locals always mutable?"), Q5 ("talk to me more"), Q11 normalization ("probably shouldn't normalize?"),
Q12 Dynamic, Q14 <N> vs N, Q19 native target/FMA, Q21 fast-math - explanations given, answers pending.
**Done 2026-10-09 (b7e5fa4):** `same(a, b)` is `a is b` (and `is not`), the atomics are `x.AtomicLoad()` ...
`AtomicCompareSwap(e, v)` methods, and D3a/D2 keep type names apart from locals, parameters, functions and globals.
Decided by me under that authority the same day (recorded in CLAUDE.md/HISTORY.md as they land): `match` as an
expression is `case X => value` (being built by the match agent); a literal the other operand cannot hold meets it by
T6b at the literal's own type instead of erroring (`b + 300` is an I32; being built by the lit agent); a `try` default
for a by-value result holding references stays rejected until real code needs it; Split on an empty separator keeps
Go's single bytes; pushing to a List during a loop over it is specified as built (the iterator re-reads the count);
`-i`'s next stage, when -i matters, is the redesign (compact values, scope-mirroring freeing, destructors) - in
next-steps.

**OWED BY ME to the user** (they asked, I never answered): "List<Counter> should work for most counters?" and "any more
overrides we can do?" (both 2026-10-08); a detailed proposal for R4 (a local's scope taken from where it is later
installed - built-then-installed temps, null-initialized cursors).

**MY CALLS (10-71)** - the details I decided while building and listed for review on 2026-10-08. Since the user gave
me authority over details the same day, they stand as decisions; each is recorded in CLAUDE.md/HISTORY.md with its
feature, and the full numbered list is in git (commit 730f9fe of this file) if the user wants to revisit one.

**ON HOLD (the user: "hold it off"):** passing arrays by value (dropping D9a for parameters). Returning one by value
already exists (T7b).

**DEFERRED by the user:** `:` as the module separator (`lib:Name`); relaxing comprehensions (inferred element type,
maybe for array literals too; several `for` clauses; a lazy form; elements holding references); O10b inferred
obligations (come back to it with more code); built-in Number/Ordered constraints over primitives (they would give only
errors and documentation - generic `+` already works).

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
**Answered 2026-10-10 08:15 CEST:**
- QD (integer literal's own type I64): YES ("1) yes"). Being built (wt-i64lit).
- QE (spawned functions failing): the user: "We need some way to make spawn functions fail, exactly how that would be
  done is harder since not all variables may be fine to use anymore. Solve it." -> decision 50 below, mine.
**Asked 2026-10-10 (from usage study 6, /home/user/review/study6 r08/r09/r10):**
- QF. Long-lived, mutated structures only ever grow: what is removed from or replaced in a List/Map/struct that lives
  for the whole program (an interpreter's frames and values, an ECS world, an editor's undo stack) stays in its scope
  until that scope closes - 1.8 KB per interpreter loop turn (717 MB at 400k turns), ~0.8 KB per ECS step. Scopes are
  lexical, so there is no way to move a structure into a fresh scope and close the old one while the program runs.
  In effect: nothing (it grows). Options: (a) a library/language "generation" idiom - a value rebuilt into a fresh
  scope every N steps by a loop whose scope holds two generations (needs a scope that outlives one iteration but not
  the program - e.g. a `region` value: an arena you can create, build into, and drop explicitly, the compiler checking
  nothing escapes it); (b) per-collection recycling only (Map already reuses slots, List keeps chunks) - covers fixed-
  size elements, not text/nested lists; (c) a tracing collector or reference counting for one opt-in type - against
  principle 1. My recommendation: (a) as a first-class region value checked by section 8 (a named, droppable scope
  created at run time - `r := Region(); x := Build&r(...); ... r.Drop()` with drop refused while anything outlives
  it) - it keeps "no GC, no free" in spirit (no per-object free; a whole region at once), and is what game engines and
  compilers do with arenas. Needs design work; not built.
  The user, 2026-10-10 08:15 CEST: "I don't necessarily understand how this would work. Wouldn't it break the compile
  time guarantees? Maybe if we make them owned and unreferencable? Basically a "don't borrow this it's not safe" way?
  What is your plan?" -> PLAN GIVEN, awaiting their go: `Region<T>`, contents reachable only inside `r.With(fn(w mut
  T&) ...)` where w's scope is opaque (lambda parameter scopes already are, O4b/T22a), so nothing outside ever points
  in; `r.Set(...)`/`r.Compact(fn(old T&) T ...)` replace the contents and free the old arena at once (Compact forbids
  new->old pointers: unrelated scopes, so a checked hand-written copying collector); contents may reference only the
  program scope outside; a Set/Compact on a region inside its own With (reached another way) aborts at run time, one
  compare per Set; the handle itself is passed freely and its arena freed when the scope it was made in closes. Not
  built until the user says go.
  The user, 2026-10-10 08:25 CEST: "That way we could assign shorter lived structures to longer moves contexts and null
  the reference when we free because we always know where the one reference is. Null variables are already a "the
  problem might fail like this"-gap so it doesn't really introduce anything new" -> taken as GO, with their early free:
  decision 51 below. Queued after decision 50 (QE).

**Answered 2026-10-09 23:05 CEST (the user: "Do all questions as you advised"):**
- QA (`Name<` whitespace-significant so a file parses alone): NO for now - the declared-name oracle stays; revisit when
  tooling (formatter, editor support) is built.
- QB (pause C compiler feature work while the port builds its checker, DESIGN.md M5-M12): YES - from the start of the
  port the C compiler takes fixes only; features are built once, in olang. Soundness fixes and the decided QC count as fixes.
- QC (a copy of a read-only List/Map was writable through its `mut` reference fields): CLOSE IT - a value whose type
  holds `mut` references, copied out of a place reached read-only, is read-only itself; a typed copy from read-only is
  an error naming Clone() or a read-only borrow. Permission otherwise stays shallow. Being built: wt-qc (started 23:05).
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
7. (mine, from study2 r02) a value local holding references that a function returns lives (its references) in the
   result scope - Go's escape analysis made static: `fn mk() List<I64> { l := List<I64>(); ...; return l }` works;
   O26's hole for generic containers is closed under it. Being built in wt-chk3.
8. (mine, from study2 grammar point 7) outside brackets, a line beginning with `if` always begins a statement - it
   never continues a conditional expression (`a if c else b` keeps `if` on its line or inside parentheses).

9. (wt-stdport) `io.Writer` never fails on Write: the first refused write is remembered and every `Flush` fails with
   it (C stdio, Go bufio); `print`/`println` stay unbuffered; paths in `std/filepath` (not `path`, which M20 would
   reserve in every importer); `ParseInt(0)` reads olang literal syntax.

10. (wt-cgfix2, T7c) storage over 64KB (Go's bound) never goes on the stack: locals, zero values, literals and
   by-value copies that large come from the current block's arena. And (T29a/E32b) converting a run-time array to a
   declared `Array<T, N>` type is a view checked once, never a copy.

11. (wt-chk3, O26a) a value local the function returns - read off the rest of its declaring block - lives in the
   result scope, its own storage included (an arena slot, not the stack): `l := List<I64>(); ...; return l` and a
   struct holding one filled through a method are correct as written. Closes a pre-existing UAF.
12. (wt-chk3, C2d/C2g) a constructor argument binds the instance only when the constructor's body can make the
   instance hold it; a constructor's top level allocates into the instance's scope (oann's ctorpush UAF).
13. (wt-chk3, C2d) a `:=` reference field takes its initializer's scope (`x := text.Trim()` is `x String&text`).
14. (wt-chk3, E28) a conditional or match of references lives where its values share a scope.
15. (wt-poolfix, O8b/P2a) a parked worker keeps at most a 1MB batch of its chunk pool and moves the rest into one pool
   all threads share (locked, RAM/8 bound); a thread finding nothing that fits takes a batch from it before mapping.
16. (wt-perm, T25b/D9/C3/D11a - the user confirmed the design) `mut` speaks only about what a reference reaches; per-field
   immutability is gone (X3a's pthread blobs rest on privacy); a pun takes no `mut`; a match binding is assignable; a
   generic by-value array parameter is copied only when the body writes it (D9b, `paramWritten`); `tools/perm_mut.py`
   migrates (oann not yet - after its agents finish).
17. (mine, E31 revisited under the revisit rule) a method takes an operator only when it has the operator's shape;
   `g.Mul(a, b)` on a graph builder is an ordinary method (oann had to rename). Being built in wt-chk4.
18. (mine, G3) a non-generic struct's constructor may introduce type variables its fields do not mention (oann's
   layers built from a generic graph). Being built in wt-chk4.
19. (wt-portgaps, X2) only the runtime's own `__olang_` functions take a function value (`fn()` only); C functions
   never receive olang callbacks (`extern fn f(cb fn())` stays an error), so olang code never runs on a thread the
   runtime did not set up. The agent's direction question; kept closed - raise only if a C API needs it.
20. (wt-portgaps) std/ffi is its own module (libffi linked only where declared); RunOnStack in a test passes a failed
   check/done/fail on to the caller's test after the join; `Format(base)` lowercase, base outside 2-36 aborts;
   O8a revised: a struct/enum allocation takes its own alignment (trees of 40-byte nodes 0.53 -> 0.36 s, 167 -> 105 MB).
21. (mine, from study3 #1) `List`/`Map` become handles: a copy is a second name for the same collection (Go's maps),
   `Clone()` for a real copy - copying a value used to share storage but not counts (silent wrong answers). wt-s3std.
22. (mine, revisit rule, study3 #3) `==` on an array reference compares lengths and elements (each by its own `==`);
   identity is `is`. Struct/enum references keep identity unless `Eq`. wt-s3std.
23. (mine, study3 #4) O26a extended to reference locals - `e := p.sum(); return e` and the Pratt `lhs = E.Add(lhs, rhs)`
   loop live in the result scope (the port's parser idiom). O17 judged by the callee's body. G4 covers constants. wt-s3scope.
24. (mine, study3 #29/#30) `case _ if cond` on any match; keywords allowed as method names (`w.spawn()`). wt-s3std.
   Not built (deferred): raw/multi-line text literals (#35) - candidate Go-style backtick raw strings, to raise with the
   user; comprehensions of text (#34, user-deferred relaxation); lambdas capturing a List (#28); deep permission (#33,
   the user chose shallow).
25. (wt-s3std, details of 21/22/24) a null array reference equals only null; a struct value's array-reference field
   compares by contents (E10 field by field); an array reference hashes by its elements; an unguarded `case _` covers
   every value and anything after it is dead code; `case v` naming the subject or an unknown name says `case _ if`;
   keywords (not true/false/null) as method names (L9a); a List's zero value runs its constructor per declaration, so
   `Array<List<T>>(n)` with no fill is D13c's "no zero value".
26. (wt-chk4, G10d/E31/O26a) a plain type's constructor may introduce type variables (one type, "twins" per binding);
   a protocol role (operator, Eq/Hash/Str/Next/Iter/Has/Contains/RunFrom/Len/Try forms) is decided by parameter count
   only - another shape is an ordinary method, and using the operator names it; a local passed in a return to a call
   that can keep it lives in the result scope.
27. (wt-cgfix3) `spawn fn(){...}()` made correct (same path as the uncalled form; it built its closure in the loop
   body - wrong answers); a task's temporary callee held to P2; F32->BF16 narrowing inline integer arithmetic (10-20 ->
   0.7-1.0 ns, linalg BF16 product 3x faster; F64->BF16 still a libcall); function values cross calls as two words
   (captured lambda 19-32 -> 1.4-2.7 ns); evaluator try-clause fix; linalg direct path only where measured faster.
28. (wt-s3scope) a reference local the function returns (or that flows into what is returned) lives in the result
   home; O17 by what the callee's body keeps (a fixed point after all bodies); R11 by-value defaults holding references
   when the default builds everything it holds. Limits recorded: r06 (obligations can't tell storage from contents),
   r10 (G11 one scope for chunks and element referents).
29. (wt-rvfix) review1's eight fixed: RunOnStack in a task uses the task's program-scope stand-in; building through
   a by-value parameter's reference field builds in its O4b scope (decided by the parameter's type); `==` on
   self-referential types is one function per type, evaluator/-i stop on cyclic data (depth limit 2000 compiling,
   100,000 -i); every program links -ldl; comdats for runtime globals; `type Nest Array<Nest&>` an error; conditional of
   literals adapts like a literal (linalg ActivationSlope at F32); O17a: a value whose references live outside its own
   storage cannot be held by reference (only lent as a call argument); for-in over one hands elements the references'
   scope.
30. (wt-rv2fix, S4d) in an assignment over a value place, a value that borrows storage within the place (the place,
   a field, an element of the same array, reached without a reference) takes the place's OLD value as a copy - so
   `x = E.Neg(x)` no longer builds a cycle; only where what is built can keep the borrow (payload, held ctor arg, array
   literal element, a call that can hand it back). Parallel assignment builds targets before values (n, e = 5, E.Lit(n)
   gave Lit(5)). O17 lend checks decided after the fixed point; P2 for any computed callee; `Call` follows T22.
31. (wt-qc, the user's QC, details mine) a value holding `mut` references copied from a place reached read-only
   (immutable global, through a read-only reference, a capture, another read-only copy) is read-only: not lent writably,
   not written through, not stored where writable; `x T = G` is an error naming `G.Clone()`; for-in elements and match
   bindings follow their source; a by-value parameter's need is read off the callee's body (fixed point) so readers
   accept read-only copies; a function used as a value may not have a parameter that needs writable; std/linalg's
   destination forms take `mut` (views keep read-only receivers). Left: a view of a read-only copy (`x.Block().Fill`)
   still writes - views are a known hole of shallow permission, recorded.
32. (wt-s4cg) a null read traps (T2b, `null_pointer_is_valid` on every function; +0.02%, text +0.78%); a Send on a
   closed channel stops the program (as Go panics), `Recv` now `? ChanError` (CLOSED), `for v in c` ends at the close;
   `os.ExecUntil`, `os.Start`/Process, `Exec(dir)`; `-i` runs joins sequentially; B10c: an immutable top-level global
   (outside std) of a -D-able type is a default `-D` replaces. REVERSES a consequence the user confirmed (2026-10-0x,
   S8a): `Verbose := false; if Verbose` is configuration now (S8b decides it), no longer a dead-branch error -
   tell the user.

33. (mine, study5 r02) a write through `x[i]` on a type with At and SetAt - `x[i].f = v`, a `mut` receiver method, a
   `mut &` argument - reads, modifies and writes back (Swift's get/set), as `x[i] += v` already did; it was a silent
   lost write into a temporary copy (field stores were E31's error). Being built in wt-s5scope.
34. (mine, study5 r12) a numeric literal does not adapt to a declared type through an operator method's parameter -
   `d / 2.0` with Meters declaring `Div(t Seconds) Speed` silently made a Speed; now an error naming `Seconds(2.0)`.

35. (wt-tbaa, T36) every numeric primitive has its own alias-tag leaves (I8, I16, U16, U32, U64, F16, BF16 were
   untagged); a declared number takes its base's. BF16 loops through a struct 2.1-5.1 -> 0.30-0.78 ns an element.
36. (wt-scopesan, B2f) `-s` is the scope sanitizer: closed chunks poisoned (0x7FF5...), PROT_NONE, held in a 256MB FIFO;
   a use reports "use after scope closed" through the failed-check path; zero cost without `-s`; `make scopesan` /
   `make scopefuzz` (not in verify - two shared.olang tests fail under it from a real UAF, handed to rv3fix).
37. (wt-s4sem, O17b/O26a/E16/T20) a handle (a struct of one field, a reference or another handle) is lent as its
   reference when the callee's checked body uses it only through that reference (every read accounted for, cycles
   re-checked); O26a follows views of a returned local; numbers carry no scope; under `try` a known out-of-range index is
   checked where it runs; an error type is no value type; keywords may name fields.

38. (wt-s5std) std/csv strict as Go's reader (a bare quote is an error; an empty line is one empty field), fields
   borrow the text unless unquoted; std/stats' default variance is the sample one (n-1), percentiles numpy's linear
   method, pairwise sums; Array.Sort a stable O(n log n) merge with an n/2 scratch for numbers, blocks of positions for
   the rest; List.Truncate(n) changes nothing past the length.

39. (wt-rv3fix) a spawned lambda's captured scopes get P2 stand-ins folded at the join (RunOnStack too); O25h holds a
   copy out of whatever expression gives the reference; a conditional of references from different scopes is "not known
   here" (building into it is O12); slices/views of split values refused; an instantiation's read-only reference
   parameter is as read-only as its argument, so `ro.Clone()` on a read-only `List<List<I64>>&` is an error; a `Str` may
   not write through a reference to anything that existed before it ran; S4d covers `+=`/`++`; a binding an argument
   determines at depth 0 means the body's top level (in a constructor, the instance's scope).
40. (mine, rv3fix's open item 1) a closure held in a struct given to a task builds into its captured scope from the
   task's thread (heap corruption): decided to REFUSE it statically under P2 - a task argument may not reach a function
   value that captures a writable reference (it could build into that scope off-thread); read-only captures stay
   allowed. Chosen over a per-allocation owner check (a run-time cost on every allocation). To be built next batch.

41. (wt-s5scope, E31b/O18c/O26a/E25/D16c/O17) decision 33 built: a write through `x[i]` reads the element where the
   place is evaluated and writes it back by SetAt, one level at a time for nested collections; a fallible or
   multi-result call is not written back (an error saying how); a call that builds into the element's copy is refused
   (no hidden per-write allocation). r01 fixed at the root (a landed call result sets the by-value parameter's scope);
   O17's region facts belong to each function, not the shared scope variable; a lambda capturing a value holding
   references gets an implicit scope (D16c); destructured results keep a scope argument's placement (E25).

42. (mine, revising 33 after the s5scope soundness review, /home/user/review/tonight6) the hidden copy through x[i]
   is sound only where no user code runs between reading the element and writing it back: a FIELD store
   (`x[i].f = v`, op=, ++) keeps the write-back, place held and value evaluated first; a `mut` method or `mut &`
   argument on x[i] is a compile-time error naming `t := l[i]; t.M(); l[i] = t` (the callee could reach the collection
   another way - heap corruption, lost writes; exclusivity checking would be needed). Being built in wt-s5scope.

43. (wt-s6std) `$` renders a List as `List<I64>[1, 2, 3]`, a Map as `Map<K, V>{k: v}` (walk order), a StringBuilder as
   its text; a List's first chunk held on its own (a list up to 8 elements is one allocation; 3-element walk 195 -> 66
   instructions); `IndexOf` fails on a miss, `Remove(x)` returns a Bool like Map.Remove, `SwapRemove(i)` returns the
   element; `chan.Chan(cap I64)`. Merge only after rv3fix (its c3Holder test needs rv3fix's C2g fix).

44. (mine, s5scope follow-up review G1-G3) handle elements: every level of `users[i][j].Push(t)` is held and lent;
   the handle exemption from E31b applies only when the callee uses the handle only through its reference (O17b's
   checked-body analysis) - a mut method repointing the handle's own field is E31b's error; a value that shrinks the
   collection before an At/SetAt store (`v[0].E = shrink(v)`) makes the program's index out of range at the access -
   E16e's unchecked index, stated in SPEC, no check added. Spawn on a handle element is E31b/P2's error (s5scope).

45. (wt-render, E11a/T29h/E21) a declared type over Char renders as a character (an Array<Letter> as `Letter['a']`,
   only Char/String as text); an array of fixed arrays renders as `Array<I64, 3>[I64[1, 2, 3], ...]` (the 2-D row
   rendering removed); inner `mut` is written in rendered types (`List<mut Node&>`), cleared at the outermost level of
   diagnostics, parameters and a literal's element type. Pushed 12eea59.
46. (wt-rv3fix round 2) P2 stand-ins live as long as the scope they stand in for and forward to it once folded (slow
   path only); function values handed to a task are copied once per spawn but keep their identity; decision 40 narrowed
   to refusing a task that CALLS a function value held in what it is handed (carrying/storing allowed); a constructor's
   top level is depth 1, its by-value parameters depth 2; a match binding lives in its clause's block.

47. (mine, after rv3fix round 2's review h1-h4) a scope belongs to the thread that opened it; an allocation or
   destructor registration into it from another thread is SYNCHRONIZED (one owner compare per allocation - a
   per-construction check - and a lock in the scope header off the owner), so a closure may build into its captured
   scope from any task; REPLACES decision 40's static refusal (evadable: helpers, lambdas, own lists). Stand-ins stay
   the uncontended fast path. To be built as rv3fix round 3; abandon if the compare costs >2% on allocation-heavy code.
48. (mine, replacing 47 after measuring it: the owner check cost +9.7% instructions on binarytrees and +13.8% on a
   scope-churn loop - over the 2% gate, prototype kept on wt-rv3fix-p2b 55cf0d5) a scope belongs to the thread that
   opened it (owner, parts, parent in its 48-byte header); the check moves from every allocation to the closure call: a
   closure that may build into what it captured (codegen's marking AND `SemanticMayBuild`, a coarse greatest fixed point
   over bodies - any allocation, promotion, task, closure made or call through a function value counts) calls
   `__olang_capture_scope` at entry, building into the scope on its owner's thread and into that thread's own part of it
   elsewhere (made once per thread, linked without a lock, folded at the scope's close, its destructors first); reading
   lambdas and named functions pay nothing, at creation either. Each worker has a program-scope part that is never
   folded (the program scope never closes); RunOnStack's thread takes its caller's identity; thread identities come from
   a counter (glibc reuses a dead thread's TLS). Environment copies and decision 40's static refusal are removed.
   Measured (callgrind): 0% on reading lambdas and plain allocation, +7% (2 instructions a call) on closures that build
   on every call. Built on wt-rv3fix 45eea97, verified; soundness review /home/user/review/tonight8 before merging.
   Option 3 (keep 40's static refusal and close evasions one by one) rejected as evadable by design.
49. (mine, under the revisit rule, from review tonight7: 3 new + ~12 older E11c holes, baked globals disagreeing with
   the run time, and over-rejection of `r.l.Iter().Fold(...)` in a Str) `$` calls a declared Str EXACTLY ONCE per
   rendering, in rendering order, and E11c's no-effect requirement (and its effect analysis) goes: Str is an ordinary
   method. Sound because K1 already refuses every effect that would be observable if a run-time call were skipped
   (global writes, mutable-global reads), so S18c/K2 skipping stays unobservable. The purity rule was my own reasoning
   (2026-10-08), not the user's.
50. (mine, the user's QE "solve it") a spawned call may fail: `spawn try f(a)` / `spawn x = try f(a)` - its errors leave
   the task and reach its join; a task's own clauses (`spawn x = try f(a) catch E default v`, or a block that may not
   leave the task) run on its thread as a spawned lambda's body would, captures copied. The join waits for every task
   on every exit (P1b, unchanged), then fails with the error of the EARLIEST-SPAWNED failed task (deterministic; the
   rest dropped; siblings are not cancelled - cooperative std/cancel as today). A join that can fail is written
   `try join { } [catch ...]`, propagating or caught like any try statement. Which variables are fine afterwards
   (the user's worry), as R9b says for a value-position try: a spawn TARGET whose task can fail into the join is left
   unwritten, so if the join holds one, every clause on it must provably leave - code after the join runs only when
   every task succeeded; a join whose failing tasks bind no targets may fall through, as a sequential `try f(buf) catch
   E { }` leaves buf partly written. Partial results: a per-task default. Memory is unaffected (every task joined,
   stand-ins/parts folded on every exit). Evaluator/-i: tasks in spawn order to completion, then the first failure.
   Replaces P4. To be built after decision 48 merges (it rewrites the same spawn runtime).
51. (the user's regions + their early free, details mine) `Region<T>`: a value in its own arena, reached only inside
   `r.With(fn(w mut T&) ...)` (w's scope opaque, as every lambda parameter's is, so nothing outside points in); `Set`/
   `Compact(fn(old T&) T)` replace the contents and free the old arena at once (Compact forbids new->old pointers);
   `r.Drop()` frees it early - the user's "null the reference": instead of making the handle unique (needs move
   semantics olang lacks; List.At/Map.Get copy elements), every COPY of the handle reads as null after a Drop - the
   handle is {header, generation}, Drop frees the arena and bumps the generation, With on a stale handle traps as a null
   read does (one compare per With, never per access); the header is recycled within its scope. The handle is built
   where it lands like any value (so `undo.Push(Region<State>(...))` puts it in undo's scope) and is scope-checked like
   a List handle; an undropped region is freed when that scope closes (no leak, no manual free needed); a region built
   inside another's With lives in that one's arena and dies with it (nesting from existing scopes). Drop/Set/Compact
   on a region inside its own With traps. Contents may point outside only at program-scope data.

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

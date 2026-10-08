# Claude memory for olang

Copied from Claude Code's memory folder (~/.claude/projects/<project>/memory/) so another instance can pick it up. Each section below was one file; the index comes first.

## Index (MEMORY.md)

- [No AskUserQuestion for design brainstorms](feedback_no_askuserquestion_for_design.md) — prefer plain conversational options+recommendation over the tool UI for olang syntax/design talk
- [Maintain CLAUDE.md as design doc](feedback_maintain_claude_md.md) — keep olang's CLAUDE.md in sync with every design decision, don't let it go stale
- [Style, form, conciseness](feedback_style_form_conciseness.md) — follow explicit refactor targets exactly, no substituting my own judgment silently; keep code and responses tight
- [Keep old tests](feedback_keep_old_tests.md) — never remove/replace existing olang test cases when adding new ones, unless a language change invalidates them
- [Surface and fix bugs found along the way](feedback_surface_and_fix_bugs.md) — proactively fix + call out incidental bugs found while building a feature, don't quietly patch or ignore them
- [olang next steps](project_olang_next_steps.md) — choice→enum done; size() dropped; serialization + reflection recorded (not next); open: operators, for remake, stdlib, lambdas, list comprehension
- [olang open language gaps](project_olang_open_language_gaps.md) — historical deferred gaps, all resolved now; open questions live in the pending-decisions ledger
- [olang: Vec growth SETTLED](project_olang_vec_growth_question.md) — no growable contiguous Vec; List<T> is chunked+append-only, Buffer rejected on measurements
- [olang concurrency gaps](project_olang_concurrency_gaps.md) — all done incl. cancellation/timeout (std/cancel); no fixed pool or M:N
- [Record flagged decisions](feedback_record_flagged_decisions.md) — every decision I ask the user for goes in the ledger at once; silence is not a yes
- [olang pending decisions](project_olang_pending_decisions.md) — ledger of unanswered questions to the user (for-remake, R9a ref defaults, compifs, T[] return gap, lock file, ...)
- [olang: natural-language direction](user_olang_natural_language.md) — user wants olang syntax to read more like natural language (for x in a); weigh that in syntax proposals
- [Language-change checklist](feedback_keep_evaluator_current.md) — walk the checklist in the repo CLAUDE.md for every language change; keep comptime.c current
- [Errors are errors](feedback_errors_are_errors.md) — never (value, Bool) in olang APIs; empty/exhausted/missing is an error
- [No per-operation runtime checks](feedback_no_runtime_checks.md) — olang never checks per operation; opt-in via try only; do not even offer it
- [Number the questions](feedback_numbered_questions.md) — flagged calls and open questions always as a numbered list

---

## feedback_errors_are_errors.md

---
name: feedback-errors-are-errors
description: olang - never design APIs as (value, Bool) / value-plus-flag; "no value" or "no more" is an error
metadata:
  type: feedback
---
In olang, use errors for absence/exhaustion/failure; never return a value beside a Bool flag (no `(T, Bool)`, no placeholder zero values).

**Why:** the user, 2026-10-08: "Make sure you use errors and don't do the bool, value pattern. Errors are errors". Map.Get already failed on a miss; iterators were migrated to `Next() T ? Exhausted` for this.

**How to apply:** any new std/prelude API or protocol method that can come up empty declares an error (a named one when callers must tell it apart, e.g. Exhausted) and callers use `try ... catch ... default` / `catch X { break }`. Also: don't record my own framing as the user's decision in CLAUDE.md - see [[feedback-record-flagged-decisions]].

---

## feedback_keep_evaluator_current.md

---
name: feedback-keep-evaluator-current
description: The user wants a checklist gone through for every olang language change, including keeping the compile-time evaluator current; it lives in the repo's CLAUDE.md
metadata:
  type: feedback
---

Every change to olang's semantics goes through the "Checklist for every language change" at the top of
/home/oscar/olang/CLAUDE.md - spec, checker/codegen, compile-time evaluator, tests (incl. one the evaluator runs),
checks, corpus migration, diagnostics, records, make verify.

**Why:** the user asked (2026-10-05), after checked arithmetic was first built with comptime.c just refusing it:
"whenever we do changes that impact the evaluator, keep the evaluator up to date" and then "add that to a check
list you go through".

**How to apply:** before reporting any language change done, walk that list item by item; the evaluator step is
the one most easily missed. See [[feedback-surface-and-fix-bugs]].

**Extended 2026-10-07:** "always make the evaluator handle everything it can" - an exclusion in K1 needs a real
reason (the body is outside the program, a run-time effect would be skipped, undefined behaviour). Exclusions that
are only "not built yet" (as interface dispatch was) are gaps to close, not design.

---

## feedback_keep_old_tests.md

---
name: feedback-keep-old-tests
description: "never remove existing olang test cases when adding new ones, unless a language change actually invalidates them"
metadata: 
  node_type: memory
  type: feedback
  originSessionId: 7f2a5325-2cc9-4c97-9679-ec83bcdf63a5
  modified: 2026-08-29T14:02:26.573Z
---

When adding new tests to olang's suite (test { } blocks in shared.olang/worker.olang/runner.olang, or
wherever else tests live), never remove or replace an existing test case just to make room for new ones.
Only touch an existing test if the language itself changed in a way that invalidates it (old syntax no
longer compiles, old semantics no longer hold) - otherwise the suite is purely additive.

**Why:** the test suite is the project's regression net; removing a passing test silently shrinks
coverage of behavior that's still supposed to work, even if it feels redundant next to a newer test.

**How to apply:** before editing shared.olang/worker.olang/runner.olang (or any future test file) to add
coverage for a new feature, add new test { } blocks alongside the existing ones rather than replacing or
trimming what's there. If an old test's syntax was superseded by a real language change (e.g. old
literal-restated-array-size syntax after [[struct-array-literals]] simplified it), updating that one test
is fine - deleting or shrinking others "for tidiness" is not.

---

## feedback_maintain_claude_md.md

---
name: feedback-maintain-claude-md
description: CLAUDE.md in olang is a living design-principles doc - keep it in sync with every design change
metadata: 
  node_type: memory
  type: feedback
  originSessionId: 7f2a5325-2cc9-4c97-9679-ec83bcdf63a5
  modified: 2026-08-29T06:09:10.696Z
---

`/home/oscar/olang/CLAUDE.md` was rewritten (2026-08-29) from a one-line project blurb into a
design-principles document with two sections: "Settled decisions" (confirmed language/compiler design
choices, with a one-line rationale each) and "Open questions" (known gaps/assumptions that need a design
conversation before being implemented - don't silently resolve these).

**Why:** the user explicitly asked me to keep adding to and removing from this document whenever changes
are made, so it stays the up-to-date source of truth for olang's design instead of drifting stale.

**How to apply:** whenever a design decision in olang is made, implemented, revised, or reversed in a
session, update CLAUDE.md in that same session - move an item from Open questions to Settled decisions
once it's actually implemented, add new Settled decisions as they're made, and add new Open questions as
gaps are discovered (the way the struct/array-literal-syntax gap was discovered while testing deep
equality). Don't let this turn into a full changelog or spec - keep entries short and principle-level,
not implementation detail. This supersedes the old deferred-codegen-gaps memory, which duplicated this
and is now retired in favor of keeping everything in the repo-visible CLAUDE.md.

---

## feedback_no_askuserquestion_for_design.md

---
name: feedback-no-askuserquestion-for-design
description: "User rejected the AskUserQuestion tool for a language-design brainstorm and said \"no get me back\" - prefers plain conversational recommendations over structured multiple-choice UI for this kind of open-ended design discussion."
metadata: 
  node_type: memory
  type: feedback
  originSessionId: 7f2a5325-2cc9-4c97-9679-ec83bcdf63a5
  modified: 2026-08-28T13:00:31.818Z
---

When discussing open-ended language/design decisions for the olang project (e.g. "can you think of a nice solution?"), don't reach for the AskUserQuestion tool to present options as a multiple-choice widget. Just respond conversationally: lay out 2-3 options in plain text with a clear recommendation and the main tradeoff, in the style the system prompt already describes for exploratory questions.

**Why:** User explicitly rejected an AskUserQuestion call mid-turn ("no get me back") when asked to compare three for-loop syntax redesigns. They want a fast, low-friction back-and-forth, not a formal decision UI, for this kind of brainstorming.

**How to apply:** For olang language-design questions specifically (syntax choices, grammar shape, etc.), default to a short conversational recommendation with tradeoffs stated inline, and let the user redirect in their next message. Reserve AskUserQuestion for cases where the choice is genuinely blocking and hard to convey in prose (e.g. visual/preview-heavy comparisons), not general brainstorming.

---

## feedback_no_runtime_checks.md

---
name: feedback-no-runtime-checks
description: olang - never propose a per-operation run-time check (index, shift, conversion, division); opt-in via try only
metadata:
  type: feedback
---
olang never gets a run-time check that is paid per operation (indexing, shifts, numeric conversions, division). Checks are opt-in with `try` (R20/E16d), or per-construction (slice bounds, array length), or compile-time.

**Why:** the user removed such checks earlier ("it should never be done") and, asked again 2026-10-08 whether narrowing `Int32(i64)` should abort out of range, answered "1 for sure. It's not even a question."

**How to apply:** don't offer an always-checked variant as an option; design the unchecked default plus the `try` opt-in. Related: [[feedback-errors-are-errors]].

---

## feedback_numbered_questions.md

---
name: feedback-numbered-questions
description: when asking the user several questions or flagging several calls, number them so they can answer by number
metadata:
  type: feedback
---
Number every list of questions or flagged decisions (1., 2., 3.) so the user can answer quickly by number.

**Why:** the user, 2026-10-08: "next time order these with numbers so I can answer quickly".

**How to apply:** any end-of-turn list of open questions / "my calls, worth checking" is a numbered list, one item per decision.

---

## feedback_record_flagged_decisions.md

---
name: feedback-record-flagged-decisions
description: "Every decision I flag for the user must be recorded in the pending-decisions ledger immediately, because they will miss some"
metadata:
  node_type: memory
  type: feedback
  originSessionId: 7f2a5325-2cc9-4c97-9679-ec83bcdf63a5
  modified: 2026-09-29T12:01:33.711Z
---

Whenever I ask the user to decide something about olang, add it to [[project-olang-pending-decisions]] in the
same turn - question, the default in effect until they answer, and my recommendation.

**Why:** the user said (2026-09-29): "If I forget to make a decision you flag for me. Record it always. I will
miss some things you ask me." They often answer one question and move on to the next task, e.g. they skipped
the `for` remake questions to do try-default first.

**How to apply:** record at ask time, not later. Unanswered is not consent - keep the in-effect default and
re-raise the entry when its area comes up or at the end of a report. Remove an entry only once answered, and
move the answer into CLAUDE.md/HISTORY.md as with any design decision.

---

## feedback_style_form_conciseness.md

---
name: feedback-style-form-conciseness
description: "user wants diligence on code/output style, form, and conciseness in olang work"
metadata: 
  node_type: memory
  type: feedback
  originSessionId: 7f2a5325-2cc9-4c97-9679-ec83bcdf63a5
  modified: 2026-08-29T07:35:12.299Z
---

Be diligent about style, form, and conciseness in this project - both in code and in how work is
presented.

**Why:** stated directly (2026-08-29) right after a file-merge went the wrong direction - I picked where
to merge `type.c`/`type.h` (into itself, keeping `var`/`statement` there) based on my own architectural
judgment instead of what the user actually meant ("merge type into semantic"), and the user had to
correct me twice before it landed, calling the intermediate state "a mess."

**How to apply:** when a user gives a refactor/reorg instruction with a specific target ("merge X into
Y"), do exactly that unless truly ambiguous - don't substitute a different destination based on my own
judgment about what's architecturally cleaner without flagging the disagreement first and getting
confirmation. Keep code changes tight: no leftover cruft, no unnecessary intermediate states, consistent
naming/section-header conventions matching the surrounding file (e.g. the `// ---- section ----` style
already used in semantic.c). Keep my own responses concise too, not padded.

---

## feedback_surface_and_fix_bugs.md

---
name: feedback-surface-and-fix-bugs
description: user values proactively finding and fixing bugs discovered incidentally while building unrelated features - keep watching for them
metadata: 
  node_type: memory
  type: feedback
  originSessionId: 7f2a5325-2cc9-4c97-9679-ec83bcdf63a5
  modified: 2026-08-31T19:37:11.818Z
---

When implementing a feature and a genuine bug turns up along the way (not the thing being asked for, just
something broken that surfaces during the work), find it, fix it, and call it out explicitly in the
summary/commit rather than quietly patching past it or ignoring it.

**Why:** Confirmed directly - after a session that implemented struct constructors/destructors in olang and
surfaced two real bugs in the process (a missing ASI-swallow before a constructor's closing `}`, and a
destructor recursing into destructing its own self-parameter), the user said "it is good that you find bugs
along the way... keep keeping an eye out." This echoes an earlier standing directive from the same project:
when bugs are found and left unfixed, "bugs should be fixed" (see [[feedback_maintain_claude_md]] for the
habit of writing these up in the design doc too).

**How to apply:** While implementing anything in this codebase (or similar exploratory/from-scratch work),
don't just narrowly satisfy the immediate ask - stay alert for adjacent bugs the change surfaces or
stress-testing reveals, fix them without waiting to be asked, and report them plainly (what broke, why,
what the fix was) rather than folding them silently into the diff.

**Explicit reinforcement (2026-08-31), with a boundary:** after reporting a newly-found gap (a bare-pun
constructor field silently not carrying scope-binding info, found while checking whether a scope-tracking
fix generalized to 3+ levels) and asking whether to fix it, the user said "fix it. fix everything you think
might be a problem that doesn't require design decisions, always." So the default is: fix on sight, no need
to ask first - the ONLY reason to pause and ask is when the fix itself requires a genuine design decision
(a real fork in how the language/feature should behave, not just an implementation gap). A "does this
generalize / is this handled" question that turns up a bug is itself grounds to just fix it, not merely
report it and wait.

---

## project_olang_concurrency_gaps.md

---
name: project-olang-concurrency-gaps
description: "concurrency gaps: ALL DONE as of 2026-10-07 (cancellation + timeout = std/cancel Token, chan SendUntil/RecvUntil); -race/TSan done; no fixed pool or M:N"
metadata:
  type: project
---

As of 2026-09-17 the user asked for olang's concurrency gaps to be recorded and worked
"in order when we are ready". The ordered list lives in CLAUDE.md under "Concurrency: the
open gaps"; evidence and measurements are in HISTORY.md. Order agreed (TSan was done first, before (1)): (1) DONE — discarded
`pthread_create` result, fixed as spec P1c (abort with "could not start task"); (2) DONE — a task outliving a
test abandoned by a failing assert, fixed with S18b as spec P1d (runtime chain of open
scopes, unwound before the longjmp; emitted only for test builds, since production never
longjmps); (3) DONE — fan-out cost, fixed as spec
P1e: a thread CACHE keeping 1:1 semantics, NOT a fixed pool (deadlocks on nested joins and
chan.olang's mutex) and NOT M:N. 100k spawns went 5.4s/843MB -> 1.15s/6MB. The trap: a
worker must be returned when its task RETURNS, not when the join observes it — returning at
the join reuses nothing during a fan-out and measured 225s, a 44x regression;
(4) DONE — spec P1g, `spawn TARGET = CALL`, which also gives parallel map; (5) DONE — memory model written as spec P8/P8a/P8b/P8c; (6) DONE — spec X3a: reserve an upper bound, keep the `&` for arena alignment, drop `mut` for opacity; clang-probe rejected. Was: chan.olang's hardcoded
glibc struct sizes; (7) atomics DONE (spec P9/P9a: five builtins, seq_cst, TSan-visible — verified); cancellation and timeout still open — atomics must be genuine LLVM atomic
instructions so ThreadSanitizer follows them, or they owe __tsan_acquire/__tsan_release;
same if the thread_local chunk pool is ever made global.

Race detection is **done** (2026-09-17, spec P7): `olang -t -race f.olang` builds under
ThreadSanitizer. `make race` runs the suite under it and is deliberately not part of
`make verify`, because the corpus has one intentional race (shared.Tally.readOut) so a
correct run reports exactly one and exits nonzero.

**Why:** the user wants these done deliberately and in sequence, not opportunistically, and
priorities 2 and 3 have non-obvious couplings that are easy to get wrong if picked up cold.

Only one of four axes follows Go: race detection. Structure (`join`) is deliberately the
opposite of Go's fire-and-forget `go f()`; channels stay a library; scheduling stays 1:1.

**How to apply:** before starting any concurrency work, read the CLAUDE.md list and confirm
which item is next; do not fix S18b in isolation, and do not propose a fixed-size thread
pool or M:N scheduling — both were considered and rejected with reasons. See [[project-olang-next-steps]].

---

## project_olang_next_steps.md

---
name: project-olang-next-steps
description: "Work order for olang; 2026-09-29: modules done; next for-remake, stdlib, try-catch defaults, compifs (compile-time ifs?). Older: as of 2026-09-23: generics, scopes, separate compilation, all seven concurrency gaps bar cancellation/timeout, -debug and LTO all done; open are a growable Vec (blocked on the bump-allocator question), more stdlib, DWARF metadata and the parked stack-allocation optimization"
metadata:
  node_type: memory
  type: project
  originSessionId: 7f2a5325-2cc9-4c97-9679-ec83bcdf63a5
  modified: 2026-09-07T00:00:00.000Z
---

Done 2026-09-03..07: all of §12 generics (incl. generic types with constructors/destructors),
default parameter values + the `default` keyword, constructor bodies as real statement blocks
(constructors can now raise their own errors), S3 statement restriction, L20 one-line blocks, and
the §8 overhaul - no `scope` type, no `own` expression, scope variables declared by appearance,
outlives relation with inferred obligations. `make verify`: 108/13/12 (`5c08ac0`).

**Status 2026-09-21:** separate compilation is done, and so is every concurrency gap except
cancellation and timeout, which have no design yet (see [[project-olang-concurrency-gaps]]). Also done
since: generic composition (`Vec<T>` inside a generic), `-debug` (B2c), LTO on by default (B2d), and
O2c - every alloca hoisted to its function's entry block, which was a live stack-overflow bug at `-O3`
whenever a loop's local escaped into a cross-module call. `make verify` now also runs `make checkir`,
which reads the emitted IR and fails on an alloca outside an entry block.

Still open below: the stdlib/Vec work and the parked optimization, plus multiple return values from
[[project-olang-open-language-gaps]]. Two smaller ones worth naming: a numeric literal does not adapt
during generic inference (`Pick(int64Var, 7)` fails to unify `T`), and DWARF metadata, which is what
would make `-debug` an actual debugger experience rather than only `-O0`. Also: `int32[k]` in expression
position is a one-element literal (bit twice now) - a diagnostic for it is worth adding.

**User's agreed order as of 2026-09-29:** (1) `mut` invalid on locals - DONE; (2) multiple returns + `fn` + `:=` calls - DONE (`be0f44d`); (3) DWARF - DONE (`aa1b5d2`); (4) stdlib (Split, List iteration, dictionary).
**Added by the user 2026-09-29:** "remake the `for` keyword in general" (raised when I asked how List
iteration should look - for-in vs cursor vs callback; it likely settles that question, so probably before
the stdlib iteration work - confirm order), then "module support" and "try catch
default values" (probably a value for a failed `try` expression, e.g. `x := try f() catch E { 0 }` - ASK).
**Module support DONE 2026-09-29 (M22/M23/M19c/B3d)**: packages = directories, imports `x.olang` / `./dir` /
`std/x` / `host/owner/repo[@ref][/sub]` (git clone once into OLANG_CACHE), built-in methods import-scoped,
stdlib moved to std/. User does NOT want per-function/type imports (unit of import is the module).
Open gaps noticed: no lock file/checksums; a function cannot return an unmarked `T[]` (O13 message wrong).
**Added by the user 2026-09-29: "Remember Lambda expressions"** - on the todo list. olang deliberately has no
closures today (spawn takes a call because of it; C-style function values only). Design questions when it
comes up: capture by value vs by reference, and §8 - a lambda capturing a reference must carry a scope tag and
not outlive what it captured (a lambda value is reference-like). Interaction noted with the multi-clause catch
design: `return` in a catch block inside a lambda leaves the LAMBDA; D10a's "leaves" is per function body, so
a lambda body is its own body for that analysis - compatible.
**Added by the user 2026-09-29: "Remember list comprehension"** - on the todo list. Depends on the `for`
remake (`for x in a` syntax and the Iter()/Next() protocol would be what a comprehension iterates) and on
List<T> (what it builds - or a T[] of known length when the source's length is known). Allocation goes to
the target's scope like any temporary (E12c). A filter clause makes the length unknown -> List, then ToArray.
**Added by the user 2026-09-29: "compifs"** - read as compile-time `if` (comptime conditional, like
`match <T>` but on constants/target/build mode?) - CONFIRM meaning before designing.
**Recorded by the user 2026-09-30 (NOT next - "record it instead"):** (a) **serialization** - write a value to a
file/network via encoders in std that walk fields: JSON plus a compact binary one (fixed byte order,
length-prefixed arrays, enum tag); never a memory dump. (b) **compile-time reflection** - a way for one generic
function to iterate a type's fields (like `match <T>`), which (a) needs. Also parked: declared-layout types for
drivers/wire headers/C structs. `size()` was DROPPED (not deferred). `choice` renamed `enum` DONE (`31ea7cf`).
**Idea board (user 2026-09-30): an `atomic` keyword - DECLINED 2026-10-01, builtins kept** - back on the board. P9 chose named builtins over an
`atomic` type qualifier (a qualifier makes `x = x + 1` look like one op while being three); revisit with that in
mind - e.g. a keyword marking a location atomic so every access to it is an atomic op, which also closes P9a
(plain access racing an atomic one). Not scheduled.
Remaining order: `for` remake (proposal given 2026-09-29: for{}, for cond{}, C-form, `for x in a`, `0..n`, Iter()/Next() (T,bool) for user types - awaiting answers on `in`, ranges, keeping do-while) -> stdlib (Split, List iteration, dictionary) -> compifs. try-default DONE (R9a, `713d581`), then reshaped as multi-clause catch R9b (`948f505`): `try f() catch E { } catch default 0`.

**Remaking modules DONE 2026-10-06 (`f4137be`)**: module = file, directories only group, imports name files
without extension, relative to the importer's dir; identity = path; prelude = each file of std/prelude.

Open, in no fixed order - the user picks:

0. ~~**Write `List<T>` and a `String` module.**~~ **DONE 2026-09-24**: `string.olang` (methods on plain
   `byte[]&`, `a.Eq(b)` is string equality) and `list.olang`. Also G9a and E20a. Next candidates: the §8
   narrowing soundness hole (needs the user's design call), `Split` now that List exists, List iteration.
   Original note: Unblocked further 2026-09-24 (`9e843d1`): methods are now
   `func (r T) Name()` receiver-clause only, callable only as methods, and allowed on built-ins
   (primitives, arrays keyed by element, `<T>[]&` for all) with one (type, name) per program; arrays of
   any kind satisfy interfaces (T29b). The bridge (T29a) landed, so a declared type over an array
   has methods and its own identity while still indexing, slicing and marshalling to C. `String` is the
   name (not Text). String equality is the first gap: E10 compares a reference by identity, so comparing
   text currently means writing the loop.

1. **A standard library.** Everything it needs exists and none of it has ever been exercised outside
   the test corpus. Recommend **IO first** (needs no new language decisions - `extern func` write/read
   already link and a `byte[]` already marshals), then Vec. This is also the usage data explicitly
   deferred for the obligation-declaration syntax.
   **Blocks Vec:** growth needs reallocation, but a scope is a bump allocator with no free - see
   [[project-olang-vec-growth-question]].
2. ~~**Separate compilation / linking.**~~ **DONE** - spec §10, rules B1-B8: every module its own object,
   transitive staleness, `linkonce_odr` for generic instantiations and the runtime. Verified 2026-09-17.
3. **PARKED, needs a benchmark:** stack-allocate a non-escaping bare-`&` local instead of calling the
   arena. Frontend needs only "bare tag + compile-time-constant size". The real constraint is *depth*
   (allocas are additive per frame, the arena's pool grows to RAM), so it needs a size cap, Go-style -
   the only number in the design that must be chosen rather than derived.
4. **COME BACK TO (user, 2026-10-05): inferred scope obligations (O10b).** Kept, with errors that name the
   callee line creating the obligation. Requiring them in signatures was weighed: `&x` states only equality
   (plain-data stores like `Put(key String&)` need "outlives", i.e. a second spelling), and generic code over
   a maybe-reference `<T>` (`List.Push`, `ToArray`) cannot write one at all. Corpus had 8 obligated functions
   (2026-10-05). Revisit when there is more code using the no-scope-names model.

5. **DEFERRED, definitely wanted (user, 2026-10-07): `olang -run` - expose comptime.c as an interpreter.** Agreed shape
   (my proposal, not yet confirmed in detail): stage 1 = mutable globals/writes, done/fail/abort, no step budget,
   extern calls via dlsym+shim or libffi (gives I/O); stage 2 = scopes + destructors + memory reclamation; stage 3 =
   spawn/join (threads; sequential would deadlock chan tests). Uses: fast edit-run, scripts, faster tests, later REPL.

**Why:** items 1-2 are what the user has named; item 3 is explicitly parked.
**How to apply:** ask which one rather than assuming; the user has consistently chosen the order.
See [[feedback-surface-and-fix-bugs]].

---

## project_olang_open_language_gaps.md

---
name: project-olang-open-language-gaps
description: "Historical record of deferred olang gaps - all resolved as of 2026-09-29; open questions moved to the pending-decisions ledger"
metadata:
  node_type: memory
  type: project
  originSessionId: 7f2a5325-2cc9-4c97-9679-ec83bcdf63a5
  modified: 2026-09-09T00:00:00.000Z
---

Deliberately deferred, each verified to exist as of 2026-09-07 (`72cbcfe`):

1. **Multiple return values.** olang can return one value or one error, never two values. The user hit
   this asking whether `int32&` should be allowed; it stays rejected (olang's `&` bundles heap
   indirection, a scope tag AND identity - `==` on a reference is pointer identity - and the third is
   wrong for a primitive). So there is no out-parameter for a primitive and no tuple. **The user asked me
   to remember this as a future problem.** Fix the missing feature, not the reference model.
2. ~~**Per-level array reference markers.**~~ **RESOLVED** - a type with `k` array suffixes now has `k+1`
   marker positions pairing with levels inside-out; `int32[2]&[3]&` parses and runs. Verified 2026-09-17.
3. ~~`p = q` through a `mut Point&` parameter~~ **RESOLVED 2026-09-07 (`a72d120`)**: kept as-is and
   documented as S4a. `=` on a reference overwrites the *pointer* in every position; on a parameter that
   is this call's own cursor. Write-through was rejected because `x = y` must imply `x == y` and E10
   compares references by identity.
4. ~~**Zero-initialization of arrays**~~ **RESOLVED** by `null` (T2a) plus D13/D13a/D13b: a declaration with
   no initializer is its zero value, a declared-size local array is uninitialized, and `= v` fills, so
   `b mut byte[64] = 0` is declarable and passable. Verified 2026-09-17. Original note follows.
   **It was parked on 2026-09-09**, deliberately, after
   I proposed relaxing D13. The measured state: `byte[n]&` is allowed and `byte[64]&` is rejected, because
   `buildVarDeclStmnt`'s runtime-sized branch checks `typeContainsReference(*declType.arrElem)` (elements
   only) while its compile-time-length branch checks `typeContainsReference(declType)` (including the type's
   own outermost level). So a zero-filled fixed-size buffer that can be passed to a function is not
   declarable, since D9a requires array parameters to be references - which is why `io.olang`'s own test
   sizes its buffer at runtime for a length it knows statically. **The user's decision: leave it, "we will
   get to eventually"; for now, no init.** They also settled the nested case in the same message: an array
   *of* references (`Point&[N]`, `Point&[N]&`) should stay rejected "since we can't guarantee the values of
   the ptrs" - and named this as where a growable/dynamic array will earn its keep. So the eventual fix is
   about the *container* being a reference, never the elements.

**Why:** all of these were found by writing real code (the stdlib) or by the user questioning the model, and
all were consciously left rather than forgotten. A fourth entry, the byte-literal gap, was found the same
way on 2026-09-09 and fixed immediately (`46b6fbd`) rather than deferred - see [[project-olang-next-steps]].
The generic-inference literal gap (2026-09-21) is **RESOLVED** as G9a (2026-09-24, `27d99f0`).

5. **RESOLVED 2026-09-28 as O25 (`2379c87`): references never narrow.** Was: writing through a narrowed reference (found 2026-09-24, `58d0ff8`).** `a mut N& = p`
   (p is `N&s`) then `a.next = N(5)` allocates the temporary into `a`'s narrowed own scope and stores it in
   the caller's node: a use-after-free, reproduced by churning the arena. Same one hop further via O17
   (narrowed local determines a callee's scope var). O24 closes it only for bare-& params. Fix needs a
   design decision - provenance ("exact" tags) vs invariance of mutable refs under narrowing - so it was
   raised with the user, not patched. O5's blanket rejection (which over-rejects `a.next = b` for two
   same-block locals) stays until then.
6. **RESOLVED as G8b** (`<T>` everywhere, `List<<T>>`). Was: a generic type's method whose signature mentions `T` only in the receiver
   must write `List< <T> >` (G8a: bare names in type-args resolve, never introduce). Go's answer is that a
   receiver's type args always introduce.

**Status 2026-09-29:** item 1 RESOLVED as D8c (multiple returns, `be0f44d`); scope order RESOLVED as O10e;
the "grow builtin" question resolved (no such builtin; user satisfied). Everything still awaiting the user is
in [[project-olang-pending-decisions]]. Older status line follows.
**Status 2026-09-28:** open is item 1 (multiple returns). Pending user answers: implicit scope ORDER
(shortest first) - I flagged over-constraint of unrelated scopes (e.g. ToArray's return scope); and
whether primitives become referenceable (`int32&`) - the user floated it because everything has methods.
**How to apply:** raise the relevant one when its area comes up; do not silently work around them.
See [[project-olang-next-steps]].

---

## project_olang_pending_decisions.md

---
name: project-olang-pending-decisions
description: "Ledger of every olang decision I flagged for the user that is still unanswered - question, default in effect meanwhile, my recommendation; re-raise when the area comes up"
metadata:
  node_type: memory
  type: project
  originSessionId: 7f2a5325-2cc9-4c97-9679-ec83bcdf63a5
  modified: 2026-09-30T07:20:16.967Z
---

Every question I put to the user goes here the moment I ask it, and leaves only when they answer (then
record the answer in CLAUDE.md/HISTORY.md as usual and delete the entry). See [[feedback-record-flagged-decisions]].

**DECIDED 2026-10-05:** keep the name `Map` (user: "Do map"); integer arithmetic wraps, written as E6c.

**DECIDED 2026-10-05:** option A for ctor fields (user confirmed); &return replaces auto returned-local rule; typed bare locals = block, only := adopts; building through &p fields of a param container forbidden. All built.


**DECIDED 2026-10-05: no scope names at all** (spec written, not built; see CLAUDE.md entry). O10b inferred obligations: DECIDED keep + better errors; revisit later (next-steps item 4).

**Decided and BUILT 2026-09-29 (D3a `a2d50ea`, S8b-extended `cee1b5f`):** (1) NO SHADOWING: a local or parameter may not reuse a module-level
name (global, function) or a build constant - "modules/directories take care of too many names". (2) A local
if on ANY compile-time-computable condition, however complicated (calls included), is a valid way to write
platform-specific code with types/names invalid elsewhere - i.e. local conditions get B9c's deferred
evaluation too. Kept from before: S8a (computable but not build-dependent = dead code). My reading of "extend
to local instances" = local if statements; conditions reading locals stay runtime (locals are mutable,
D11a) - CONFIRM, or whether they want immutable local bindings whose values count. ALSO CONFIRM: with S8a
covering calls, `if pure(3) != 6 { fail }` is dead code (self-checks must use assert).

**Decided and BUILT 2026-09-29 (S8c `3048b7f`):** "extend to local instances" = local if statements, AND locals provably
holding a fixed value count as compile-time. My formulation: a non-reference local whose initializer is
compile-time computable and that nothing in the function can write afterwards (assignment, ++/--, mut &
argument or receiver, atomic, spawn target, borrow into a reference other than a non-mut & parameter).
Reference locals excluded for now (their referent can change through aliases).
**Text comparison** (user: "relates to strings, store that"): parked for the strings/std work - token path
compares text by content, evaluated path by E10 (different lengths = type error); unify when strings are
designed.
**DECIDED 2026-09-29: C (with A)** - keep S8a; an assert whose condition is compile-time computable is
checked at compile time, false = compile error (user noted assert aborts rather than fails, fine: in tests
the same). Was: the assert consequence of S8a. Options offered:
(A) keep - fixed self-checks use assert; (B) exempt an if whose branch only fails/aborts (it is a check);
(C) compile-time assert - a fixed assert condition is checked by the compiler, false = compile error.
My recommendation: A + C.

**Rendering/joins fully settled 2026-09-30**: joins take only literals and $ pieces (kept); nested text escaped (built).

**Generic interfaces BUILT 2026-09-30** (T35a/T35b): Iterator<T> built in; Iter() rule dropped ("leave iterable").
OPEN, asked: (a) inference through satisfaction - pass a concrete ListIter<int32> to a `Source<<T>>&` param and
infer T (today needs an interface value first); (b) user's idea: pass iteration state as an argument
(`Next(state)`) - I recommended state inside the iterator (start/index via constructor or tuple element).
DEFERRED by the user 2026-09-30 ("let's not work too much on this right now"): Iterable - my recommendation on
file: a for-in-only rule (`for x in e` calls e's concrete Iter() statically, no dispatch/allocation), no nameable
Iterable interface until generic code needs one (would need covariant-return satisfaction + a scoped allocation).
(a)/(b) above deferred with it.
User said "then we are gonna make more carveouts" - next topic.

**Capitalized primitives + prelude DONE 2026-09-30** (`0431baf`, `b046230`; retired-spelling diagnostics removed
`53cb60c`). User answers: allocation is a constructor `Array<Int32>(10)`, old creation pathways removed, no
"old way" diagnostics anywhere, "Int" was a typo. Q2-Q4 taken as my recommendations (Array<T> value +
Array<T>& ref; nested Array<Array<T>>; text methods in prelude). PHASE 2 (Array<T>) ASKED before building:
with only Array<T>(n), no inline fixed-size arrays remain (struct field `m Float32[16]`, stack buffers, the
chan mutex blob) - every array becomes ptr+len to arena storage; a struct holding one is not plain data
(can't be returned by value without a scope tag). Keep an inline form (e.g. Array<Float32, 16>) or accept?
Also: does Array<T>(n) zero-fill (rec: zero unless given a fill, `Array<T>(n, v)`)?
2026-09-30 user asked why constructor-only is bad and noted generics take only types. Explained; options put:
(A) integer const generic params - `Array<Float32, 16>` inline value, and general (`Matrix<T, 3, 3>`), N a
compile-time constant (K1 evaluator); (B) keep `Float32[16]` as the one inline-array type spelling beside
Array<T>; (C) accept the loss. Rec: A, integer-only. SUPERSEDED.
**2026-10-01: Array<T> WITHDRAWN by the user** - arrays stay T[]/T[N]/T[expr]; nothing had been built. All
Array<T> questions (2-D drop, fixed-storage length check, constructor) are closed with it.

**Open (as of 2026-09-29):**

2. **`for` remake + ranges BUILT 2026-09-30** (`c0fc367`, ranges next commit: `range end, start, step`, no parens).
   Ranges REVISED per user: upward only (start < end, step > 0, else no run); args: one = end, else start, end, step. CONFIRM: not binds looser than comparisons.
   DONE 2026-09-30: xor; and/or short-circuit; no logic compound assignment; D15a (a T[]& reference's length
   is run-time, refreshed per assignment, not baked into its type). T11a BUILT: no length in any reference type
   (error), a size on a reference in a declaration = allocation count.
2b. **"Remember Lambda expressions"** (2026-09-29): recorded as a todo item. If it was meant as a constraint
   on the catch design instead, confirm.
2c. **Compile-time evaluation**: K1/K2/K1a/B9c BUILT 2026-09-29. Open only: local `T[expr]` constant lengths
   (needs on-demand body checking) - not asked, just next work. Wrinkle to raise: in a B9c (deferred)
   condition text compares by E10 (different-length byte arrays are a type error), on the token path by
   content - a language change to allow == across value-array lengths would unify them.
2d. **Local ifs: S8a (dead-code error) BUILT, and S8b BUILT 2026-09-29 on the user's question - a local if the
   build decides checks only the chosen branch (the "check both always" answer was reversed). Still to
   CONFIRM the S8a consequence below.** Original note: a local `if` whose condition
   is constant WITHOUT depending on a build constant (-D or built-in) is a compile error (dead code, S3
   spirit); build-dependent constant conditions are configuration: both branches checked, dead one not
   generated. Local branches are always fully checked (user asked "should local skip too?" - I recommended
   no; not yet confirmed). Only `if`, never loops. Consequence to confirm: `Verbose := false; if Verbose`
   in source becomes an error - configuration knobs must be -D.
3. **Conditional compilation DECIDED 2026-09-29**: top-level if/else is conditional compilation; compif and
   compelse removed; local ifs always check both branches; `-D Name=value` defines an immutable global
   constant visible like a normal global, typed as a literal of that value would be. FOLLOW-UP the user
   asked for: top-level conditions taking ordinary (immutable) globals, not only build constants - needs the
   compile-time evaluator (2c) and a phase-ordering answer. Choices I made while building (confirm): the
   built-in constants' names `TargetOs`, `TargetArch` (text), `DebugBuild`, `RaceBuild`, `TestBuild`
   (bool); a -D value that is not true/false/a number is text; a top-level condition compares text by
   content.
4. **R9b decided and built 2026-09-29 (`948f505`)** - multi-clause catch, default belongs to a clause,
   `try f() default d` dropped for `try f() catch default d`. Nothing pending there except 4b.
4b. **Default for a by-value result that HOLDS references** (limitation, 2026-09-29): rejected
   (TRY_DEFAULT_HOLDS_REFERENCES); would need every scope binding of default and result to agree. Want it?
5. **Returning an unmarked runtime-length array** `fn f() byte[]` (gap reported 2026-09-29, pre-existing):
   rejected with O13's bare-`&` message though no `&` was written. Fixing needs the storage placed in the
   caller's scope. Fix, and when? Minimum: the diagnostic is misleading and could be corrected alone.
6. **Module lock file / checksums** (reported 2026-09-29 as missing from M22). Pinning is `@ref` only and an
   unpinned import is whatever was cached first. When to design?
7. **Primitive references DECLINED 2026-10-05** by the user (S4a repoint vs write-through); T29d primitive constructors BUILT instead (`15ace86`), literals must go through the ctor.
   no - `&` bundles heap indirection, scope tag and identity, and identity is wrong for a primitive; multiple
   returns now cover the out-parameter need). Never confirmed. In effect: rejected.
8. modcheck.sh - RESOLVED 2026-09-30: replaced by the olang checks/ package.

**How to apply:** when the user moves on without answering, leave the entry and mention it again when its
area comes up next (or in a "still waiting on you" line at the end of a report). Never treat silence as a yes.

**2026-10-01: Array<T> REINSTATED by the user** (after I proposed `type String Byte[]`; user: "this is ugly").
Decided: `Array<T>(size)` constructor is THE way to create an array; `String` is the text type; no 2-D arrays.
ASKED (awaiting yes/changes): (1) Array<T> value / Array<T>& ref, T[]/T[N]/T[expr] gone; (2) zero-filled,
`Array<T>(n, v)` fills, usable anywhere incl. `return`; (3) literal stays `Int32[1, 2, 3]`, no nested literals;
(4) accept loss of inline fixed storage (struct fields/mutex blob/const tables/stack buffers -> arena);
(5) `type String Array<Byte>` in prelude, literals/$/joins are String, text methods on String&, `==` stays
identity (keep .Eq); (6) slices -> Array<T>&, extern params take Array<T>.
2026-10-01 user: solve in-struct arrays by compile-time evaluating the size. PROPOSED (awaiting): field
`m Array<Float32>(16)` (plain struct; ctor `m := Array<Float32>(N)`) = inline storage when the size is
K1-evaluable (K1a static, so predictable); plain-struct field not evaluable = error with K1a reason; ctor field
not evaluable = arena, needs &s (D14a). Field type is Array<T>, len constant. Assigning into fixed storage:
compile error if lengths known+differ, else per-copy run-time check (abort). Locals: arena for now, stack later.
2026-10-01 user: REMOVE `Type{...}` struct literals - every struct built by a constructor call; "comptime
constructors like crazy". PROPOSED (awaiting go): plain struct gets derived ctor P(fields in order); defaults
may be any K1-evaluable expr; K2 learns to bake arrays (second global) and references; reversal of C6 noted
(lost: literal bypass of a validating ctor; fallibility still visible via `try`).
2026-10-01 user decided: no default ctor for plain structs; plain struct form REMOVED (a "plain struct" is
`struct() { x mut Int32 }`); defaults may be any K1-evaluable expr (built). Phase 1 (literals out) in the
working tree, uncommitted. FOUND: pre-existing UAF - a ctor's bare-& field (pun of a bare-& param, or
initialized in the body) is filled from the ctor's own/caller's scope, not the instance's (repro'd on HEAD).
ASKED: (A) apply O13 to ctors - every ref field names a scope; or (B, rec) ctor gets the instance's target
scope as a hidden param, so a bare-& field means the container's scope as literals did.
2026-10-01: user chose B for the ctor UAF. PHASE 1 DONE `9378fc4` (literals + plain structs gone, C2d hidden
instance scope + checker, defaults computable K2a). User said "do it" to the 5-phase plan: next Array<T>
(constructor Array<T>(n)/(n, v), value vs &, literals Int32[..], no 2-D, T[] types gone), then inline fields
via comptime size, then String (`type String Array<Byte>`, == stays identity, .Eq), then baking arrays/refs.
Flagged, unanswered: `$` renders structs as `Point(1, -2)`.
2026-10-01: ALL 5 PHASES DONE - `9378fc4` literals/plain structs gone + C2d; `12038dc` Array<T> + inline fields
(C2e) + T7a + O1b; `dba8bf5` String (T29c); K2b baking next commit. Flagged, unanswered: `$` renders structs
as `Point(1, -2)`; `==` on String& stays identity (.Eq for content); T7a (arrays nested in values must be
Array<T>&, chosen over making such structs reference-only); field sizes keyed file+line+name across re-checks.
2026-10-01: user APPROVED `$` struct rendering `Point(1, -2)` and T7a (nested arrays must be & unless inline).
`==` follows E10 uniformly (value: contents, ref: identity; String too) - explained, user asked, not objected.
ON HOLD (user: "hold it off"): dropping D9a so arrays can be passed (and returned) by value. Proposed: value
array param = copy in callee scope, copy always (no read-only elision yet), returns by value built where they land.
2026-10-01: scope-study follow-ups DONE (user: "do all 1 to 4, then remove the ascending scope rule"):
O4b implicit param scopes `7fd48a4` (O4a/O24/O10e removed), G11 bare ref type args `1add9c6`, O18a landing
`516b695`. Remaining friction (R4): a local's scope should come from where it is later installed/assigned
(built-then-installed temps, null-initialised cursors) - not yet proposed to the user in detail.
2026-10-06: "remaking modules" discussion opened. User dislikes directory-as-module and shared package imports;
offered (A) std a directory, each file imports its siblings explicitly, or (B) modules are files, std a file
re-exporting others. I recommended: module = file always, directory = path only, per-file imports, dotted
`import std.io`, a facade file stays possible (already works via capitalized aliases). Asked, unanswered:
package-private visibility (rec: none), ship a `std` facade (rec: no), dotted syntax + relative resolution +
parent access, prelude stays special (privileged for built-in methods), String.Hash moves to text.olang.
2026-10-06: modules ANSWERED and BUILT - module = file, directories group, no extension in imports, relative
imports from the importer's dir (also inside std), no package-private for now, no std facade shipped.
2026-10-06: Split built - flagged, unanswered: empty separator splits into single bytes (Go) rather than an error (Python).
2026-10-06: lambdas built (D16, 3 commits). Flagged, unanswered: (1) ":=" accepts an element read (t := a[i]) -
my extension of D15, needed for generic swaps; (2) function values are nullable (T2a); (3) String (declared type)
does not get the generic array methods (Any/Map/...) - only unnamed arrays do; (4) a value String local cannot be
captured (D9a) - must be String&; (5) spawn fn() {} sugar added (agreed in plan).
2026-10-07: user answered lambda flags: (1) t := a[i] fine, (2) nullable fn values fine. (4) capturing a value
String/array local (must be written String&) - user "not sure", OPEN: options are keep rejecting, or capture a value
array as a read-only borrow (E12c-style) so `name := "bob"` captures. (3) asked why String lacks array methods.
2026-10-07: T29e inherited array methods BUILT (clash = error, user's call). OPEN, asked: user wants text literals
immutable static data unless declared "mut" ("s mut String = ..." / "s mut String& = ..." build on the arena) - but
D11a forbids mut on locals. Asked which: (1) mut on locals returns meaning "contents writable" for every type
(immutable-by-default contents), (2) mut only for text locals, (3) no mut, decide by shape (value copies, & refers
to static read-only). Also explained value captures copying (c) - waiting for answer. TUPLES: user wants them
reconsidered (D8c chose multiple returns, no tuple type) - on the to-do list.
2026-10-07: #4 RESOLVED - user chose borrow (value array captures are read-only borrows) + rule T7b "arrays held by
reference except where instantiated". BUILT. Still OPEN: immutable literal text / mut on locals (options 1/2/3).
2026-10-07: note on the open immutable-literal question - numeric/bool/byte literals are plain values (no question);
array literals (Int32[1,2,3]) are built fresh+mutable per evaluation exactly like text, so the rule chosen for
text must cover all array literals.
2026-10-07: user: NO mut on locals (I wrongly started a migration; reverted, nothing committed). Literal plan agreed
"for now": literals static (rodata) for immutable globals / non-mut params / non-mut fields; locals always arena.
BLOCKED by a PRE-EXISTING hole found: immutability laundered through borrowed results - `x := G.Trim(); x[0]='z'`
changes immutable global G; `q := same(Q); q.x = 9` too (fn same(p P&) P&p). Evaluator also disagrees with runtime
there. Proposed fix (asked): read-only-ness travels through borrows - a result borrowed from a read-only argument is
read-only; locals initialized from it can't be written through (no syntax). Then build static literals.
2026-10-07: D9b read-only-through-references - user said YES (+ "compile error to pass immut to mut"). Built the
predicate (OperandIsReadOnlyRef) + sinks UNCOMMITTED. Full rule flags 23 corpus/std sites: storing non-mut ref params
into fields (link(a mut, b): a.next = b), List.Push(x <T>), returning non-mut fields, Split storing read-only slices.
It is C const / Rust &T semantics. ASKED: (1) full rule (mut spreads to stored params; Split needs element-level
read-only), (2) narrow rule - follow call results/locals/mut params, not stores into containers (my lean),
(3) full + read-only element types. Static literals still blocked on this.
2026-10-07: T25b/T25c permission-in-types BUILT (user's design). Flagged, unanswered: built results writable by
default; typed locals take a read-only initializer's permission; array literals adapt; shallow (C-like); Trim/Split
results read-only (no permission polymorphism). NEXT: static (rodata) literals for read-only targets - the original goal.
2026-10-07: T25d static literals BUILT (a00636b): literal -> read-only reference = constant data; immutable global
plain data = constant. Open from the to-do: tuples reconsideration; inferred obligations revisit.
2026-10-07: user: KEEP SHALLOW permissions (decided). Built-result-writable / literal adaptation / no permission
polymorphism not objected to after explanation.
2026-10-07: TUPLES CLOSED (user): Pair<A,B> in prelude (First/Second, Hash/Eq), no tuple type. Built with G10c
(constructor type-arg inference) and D8d (f(g()) spreads g's results when g() is f's ONLY arg - my restriction,
Go's rule, flagged). OPEN, found, needs a decision: a function cannot return a function-value PARAMETER
(`fn id(f fn(a Int32) Int32) fn(a Int32) Int32 { return f }`) - O14 demands a borrowed result `T&f`, but a
function type cannot carry a marker (and `fn(...) Int32&f` would bind to the result type). Options: a marker
spelling for function types (parenthesized?), or an obligation-style check at the call. Not fixed.
2026-10-07: fn-value-return gap RESOLVED (user chose obligation option): O14a built. New small gap found, not fixed:
calling a call's result directly (`id(dbl)(3)`) doesn't parse - postfix call only for methods (M19b). -> FIXED same day (E13b).
2026-10-07: G9c BUILT (a525cb1) - inference through satisfaction (item (a) above is closed). ASKED, the rest of "3)s":
(1) Iterable: rec = still no Iterable interface; instead give arrays an Iter() in the prelude so generic code takes
Iterator<<T>>& and callers write xs.Iter() uniformly. (2) Comprehensions: rec `[x * 2 for x in a if x > 3]`, element type
from the expression, sources = arrays and ranges only at first (filter: allocate source length, shrink len - no copy);
iterator sources need growth, deferred. (3) Lock file: rec `olang.lock` beside the root file, lines `path commit`,
written on first fetch, cache keyed by commit, `-update` re-resolves. (4) Cancellation/timeout: rec library only
(std/cancel Token: Cancel/Cancelled/deadline; chan Send/Recv take a token, error when cancelled); no forced kill,
no join timeout (would break P1b).
2026-10-07: (1) Iterable DECIDED + BUILT: arrays get Iter() (ArrayIter), no Iterable interface. (3) lock file: user asked
why it is needed - explained, awaiting answer. (4) user: timeouts needed; did not understand Token - explained,
awaiting answer. (2) comprehensions: not answered - re-asked.
2026-10-07: (4) cancellation/timeout DECIDED ("both") + BUILT: std/cancel Token + chan SendUntil/RecvUntil. P9 relaxed:
atomicLoad needs an lvalue, not a writable one (my call, flagged). NEW, raised: error decl words need commas (T19) while
enum cases are line-separated - unify? (rec: accept line ends in error decls too, like enum).
2026-10-07: (2) comprehensions DECIDED + BUILT (E27): brackets, element type REQUIRED for now, iterator growth from 100
doubling, `if` filter. FUTURE OPTION (user asked to record): relax the type prefix - infer the element type (and maybe
array literals too). Deferred: several for clauses, lazy form. Elements holding references not admitted yet.
User asked for a list of other "natural language" constructs (e.g. ternary) - given in reply, awaiting picks.
2026-10-07 natural-language round: conditional `a if c else b` WANTED (Python form; parenthesized source in a
comprehension). `in`/`not in` WANTED via Has. Chained comparisons WANTED; user asks why not chain ==/!= too
(answered: yes possible, Python does; only an all-Bool `a == b == c` changes meaning silently) - awaiting answer.
User idea: generalize `in` to sub-collections (`"ab" in s`) - proposed: operator picks Has (element) vs Contains
(contiguous run) by the left operand's type; String.Contains would become the inherited array one - awaiting answer.
`repeat` DROPPED (user: all loops are for). `is` for enum cases DEFERRED (user): likely resolved by reflection /
self-inspection - its only gain over == is testing a payload case without its payload.
2026-10-07 DECIDED (user): `in`/`not in` membership everywhere a name is not being declared; `for x in m` is always
for-in (an existing x is a D3/D3a error, never membership) - the loop "while x in m" is written for { if x not in m
{ break } } and the error says so. No parentheses anywhere, no `has`, no `for if`. Hidden temporary keeps x first.
Chains: only < <= > >=. Conditional: `a if c else b`. BUILDING.
User's new idea, not yet answered: operator overloading only for value returns, plus overloading by argument types
(would let Has/Contains be one name).
2026-10-07: E28/E29/E30 BUILT (conditional, in/not in via Has/Contains, chains of < <= > >=). Open: user's operator
overloading idea (value results only + overloading by argument types) - my analysis given, awaiting decision.
Smaller ones the user wants to ask about: swap `a, b = b, a`, fallback `m.Get(k) else 0`.
2026-10-07: S4c/D12b BUILT: parallel assignment (values first), multi-name declarations incl. globals and ctor fields.
Declarations are sequential (C-like: an initializer sees earlier names) - my call, flagged.
2026-10-07: fallback `else` DROPPED (user). Map.Get migrated to the default error (user). Remaining open: error decl
newline separators; operator overloading + "a type system question related to it" (user wants to discuss next).
2026-10-07: error words like enum cases DECIDED + BUILT; separating commas are compile errors in error sets, enums,
ctor fields (user). Next: operator overloading + a related type-system question (user to raise).
2026-10-07: comments DECIDED + BUILT: # line, ## block (to next ##). Corpus migrated ## -> #.
2026-10-07 TYPE-SYSTEM ROUND (deferred by user, "come back later"):
- DEFAULT METHODS: user chose (a) defaults reachable only through the interface (interface value / constrained <T>),
  never as the concrete type's own methods - this already exists as M19a interface-receiver methods (verified, works
  for generic interfaces). User then asked for `default` to mean an OPTIONAL interface member: a type need not have it
  (default body used) but may supply its own (overrides, e.g. List.Count O(1)). Plain M19a helpers stay as fixed,
  non-overridable. OPEN: (1) same name, different signature on a satisfying type: error (rec) or ignored; (2) a
  matching method overrides (rec accept); (3) syntax: body inside the interface with a receiver clause (rec) or
  outside in the interface's module.
- CONSTRAINTS on <T> (`<T Shape>`): discussed, NOT decided. Rec: no new keyword - interfaces double as constraints
  (Rust's one-construct model). Value: errors at the call + requirements in the signature (generic bodies are already
  checked per instantiation, so + on <T> already works). Naming if separate: not `group` (wrong per group theory);
  `constraint` rec, `concept` runner-up.
- SELF / operators in interfaces: three options asked (fixed types / F-bound Number<T> / Self + not-a-value rule),
  unanswered - superseded by deferring operator overloading.
- OPERATOR OVERLOADING: DEFERRED until a real program needs it. Design so far: `fn *(a A, b B) C` free functions,
  heterogeneous allowed, declared in A's or B's module (orphan rule), resolved by operand types, plain-data value
  results; user noted math defines binary operations S x S -> S but accepted heterogeneous (vector spaces, affine).
- Built-in Number/Ordered constraints over primitives: only errors/docs (generic + already works).
2026-10-07: CONSTRAINTS DECIDED (user: "do interfaces as constraints like that") - NOT BUILT (user: "don't build yet").
Interfaces double as constraints, `<T Iterator<Int32>>`; one construct (Rust's impl/dyn split). Details to settle
before building: where the constraint is written (any occurrence of T, all agreeing - rec); generic interfaces whose
other variables are inferred through the constraint (`<I Iterator<<E>>>` binds E via G9c - needs G4 relaxed); declared
type parameters too (`type Map<K Key, V>`); error at the call naming the missing method.
2026-10-07 OPERATOR OVERLOADING DECIDED (user), NOT BUILT: operators are METHODS whose names are the symbols,
`fn (a Vec2) +(b Vec2) Vec2`, reached ONLY through the operator (a.+(b) invalid). Declarable: + - * / % and unary -,
`<` (with > <= >= DERIVED from it), and `$` (rendering - reverses E11a's "nothing overrides $"; user listed it, did
not object when flagged - CONFIRM at build time). NOT declarable: ==, != (stay the language's: structural/identity),
@ (dropped). Built-in on the left (2.0 * v) not supported - accepted. One method per operator per type; several
right-hand types via a generic method + constraint + match <T> (needs constraints first). Results: any value; a built
result follows the ordinary scope rules (result scope).
2026-10-07 CORRECTION (user): `$` is NOT declarable (E11a stands); `@` IS declarable (new binary operator, no built-in
meaning). Supersedes the line above. Open at build time: @'s precedence (rec: same as * / %).
2026-10-07 DECIDED (user): implicit satisfaction; methods declared on an interface (M19a) are callable on any value
whose type satisfies it, searched in the calling module, its imports and the prelude; the type's own method wins;
a call two such interfaces could answer is an ERROR. DEFERRED (user): `:` as the module separator (`lib:Name`), and
naming the interface at the call (`x.Iface.M()` / `x.mod:Iface.M()`) - user found it confusing for now.
Migration: iterator helpers onto Iterator<T>, List's copies removed.
2026-10-07: M19e BUILT (interface methods on satisfying types; Any/All/Count/Fold moved to Iterator). Possible
follow-up: compile such calls per concrete type instead of through the dispatch table.
2026-10-07: E31 REVISED + BUILT: operators by NAME - Plus Minus Mul Div Rem Neg Less MatMul At SetAt Slice; lowercase =
module-private operator; both spellings on one type = error; callable by name too. List in prelude, Map/Filter on
Iterator, iterator loops at hand-loop speed (return slot) - all built.
2026-10-07: BUILT bitwise/shift overloading (BitAnd BitOr BitXor ShiftLeft ShiftRight BitNot), Inc/Dec (derived from
Plus/Minus with literal 1 otherwise), S3a ++/-- statements only. OPEN, to discuss: for-in over At+Len types; the
callable struct (Call / f(x)) - user did not understand it, explained.
2026-10-07: BUILT Call (f(x) on values; conversion to function values; generic inference via Call), fallible
At/SetAt/Slice (SetAt fallible -> called by name; `try x[i] = v` could come later). OPEN: for-in over At+Len (my 4
points awaiting answer); switch-dispatch for interface values in -b builds.
2026-10-07: switch dispatch for interfaces DROPPED (user: "gains very little and causes a lot of problems") - after
measuring 3/8/16/32 types and starting a cutoff (<=4 types) version; reverted uncommitted. The enum payload fix stays.
- S9d (2026-10-07) settled by the user: order is Next, then the type's own Iter, then At+Len; Len() is read every iteration; elements are copies; it works through constraints. My unflagged calls: a fallible At is an error in for-in (FOR_IN_AT_FALLIBLE), and the Iter derived from Indexable does not count as the type's own Iter.
- TryX methods (2026-10-07, user decided, BUILT as E31a/R21): `try c[i]` calls `TryAt` (name chosen over CheckedAt); TryAt derived from At+Len when absent (OUT_OF_BOUNDS); At becomes infallible (replaces E31 "At may fail" and FOR_IN_AT_FALLIBLE). Same split for Slice, SetAt and every operator method that can reasonably fail. Held until the try-binding question is settled, since they interact. Open: does `Call` keep fallibility (my rec: yes, it stands for a function).
- try binding (2026-10-07): the user does not mind several trys; the real problem is language forms that call methods implicitly (for-in's At/Next/Iter) with nowhere to write try. A/B/C binding options dropped; tight binding stays. Built as S9e (user said yes): `for x in try c { } [catch ... { }]` covers the calls the loop makes itself, errors end the loop and propagate or run a clause; Next may then declare errors (fallible I/O iterators); a TryAt-only type walks only with `in try`. The same pattern for other implicit-call forms (try on the operand the calls are made on).
- E31a my calls (2026-10-07, flagged): `Call` keeps the ability to fail; `try x[i] = v` checks the whole statement, value included (as `try (...)` would); a Try form must declare errors; `break`/`continue` directly in a for-in catch clause is an error rather than reaching an outer loop.
- E29/S9e follow-up (2026-10-07, built, my calls flagged): Has/Contains may declare errors directly (no TryHas); `try T[e for x in c]` checks the element's arithmetic too (E15a), so clauses may need `+ BuiltinError`.
- Interface conversions (2026-10-07, user said "do interface conversions"; syntax ASKED before building): proposed `x is T&` (Bool), `match s { case c Circle& { } case Square& { } nomatch { } }` (type cases on an interface value, binding optional), `x as T&` checked (aborts on mismatch like a slice, `try (x as T&)` fails with BuiltinError.INVALID), widening between interfaces implicit when the static method set covers the target. Mechanism (my call): every table carries a type id; the root object (rebuilt anyway, like instantiations B3d) emits one lookup per target interface over all program types - no runtime hashing/allocation.
- Interface conversions BUILT 2026-10-07 (E32/E32a/S13c): `is`/`as` on interfaces and enums, type cases, implicit widening. User wants NEXT: "talk about casting in general and try to generalize the syntax" (numeric T(x), nominal Name(x), String(bytes), as, Call adapters).
- Casting talk (2026-10-08). User principle: "the only way to become a type is its constructor". So `T(x)` = always a constructor (numeric conversion = built-in types' ctors), `as` = reveal what a value already is (never creates); my `x as Meters` proposal WITHDRAWN. Agreed by user: text literal/`$`/join ARE `String` by type (no T29c adaptation); "more complex type" = the one declared in terms of the other; outward flow free, inward only via ctor. Agreed: declared ops override built-in (Percent.Plus works today, verified).
  OPEN: (a) number literals stop adapting into declared types (`m Meters = 5` compiles today) - my rec yes; (b) zero values (D13, Array<P>(n), struct zero-fill bypass ctor) - my rec: zero value = ctor called with no args, legal iff callable so and infallible (else error/needs fill); (c) user floated forcing a written constructor on EVERY declared type + an operator marker (user suggested opt-out `type Percent noop Int32(x)`); my rec: since ctors forced, make it OPT-IN, and only for ops that PRODUCE/MODIFY a T (arithmetic, bitwise, neg, ++/--, SetAt, Slice); reading ops (compare, At, Len, ==, inherited methods returning underlying) always inherited. Keyword name open. Meters is nominal, not an alias - no true aliases exist (T29).
  UPDATE same day: user dropped forced ctors (weird for fn types); implicit ctor = plain assignment. User wants: a literal initializing a declared type CALLS ITS CTOR implicitly (reverses T29d's "no literal adapt"); `=` overridable (my pushback: compound already is `a = a op b`, S6/E31; overriding `=` = C++ copy-assign, hidden cost, conflicts with S4a repoint/borrows; asked what case they want); opt-in keyword to inherit base type's methods+ops ("inheritance question"). My recs: literal->ctor evaluated at compile time (failure = compile error, no try); zero value for declared prim/array type = ctor(underlying zero); keyword inheritance = base type substituted by T in inherited signatures (newtype deriving), no dynamic dispatch/no open recursion; without keyword: base-returning reads via outward flow, T-producing ops unavailable. Keyword name open (`is`/`extends`).
  UPDATE 2: user: `=` NOT overridable (settled). Primitive ordering: narrower flows into wider implicitly (Byte->Int32->Int64, reverses T6's no-implicit-int-conversion). Inheritance keyword `extends` (derived type gets base's methods/ops with base substituted by T; no dyn dispatch, no overriding); without it declare everything. "is fits well do that too" - my reading: `is`/`as` follow the chain. Absent ctor == empty ctor (user). My recs/questions: lossless widening only (Byte->Int32->Int64, Float32->Float64, ints->floats only if exact: Byte/Int32->Float64?); an operator's operands meet only if one flows into the other's type (Meters<Feet error, Int32+Int64 ok); zero value = ctor applied to zero values of its params (empty/pun-only body = free zero-fill); Eq vs ==: no relation today - rec: built-in Eq = value == unless declared, so Equatable is universal; add Int8/Int16/unsigned? asked.
  UPDATE 3: user: "only lossless derivations are allowed, int64->int32 is not fine". Implicit Int32->Int64 agreed. My reading asked: explicit narrowing ctor Int32(i64) becomes CHECKED (abort / try OVERFLOW), never wraps (reverses today's wrap; E6c arithmetic wrap unaffected); Float->Int with a fraction: fail or need explicit Trunc/Round? asked.
  UPDATE 4: user: "int64 is the base of int32" - built-in hierarchy: Byte -> Int32 -> Int64, Float32 -> Float64 (separate trees, single base). Int32(x) = Int32's checked ctor (range). Wrapping Int32 arithmetic stays in Int32's range, so inheriting ops is no ctor bypass (unlike Percent). Still asked: float->int fraction.
  UPDATE 5: user: `Int32(bigValue)` can't happen; `Int64(i32)` always can and is IMPLICIT. So no narrowing constructor. My proposal asked: narrowing = `x as Int32` (checked: abort / try INVALID-or-OVERFLOW), `x is Int32` = range test; wrapping truncation explicit; float->int via `as` (fails on fraction) after Trunc/Round. `as` downward only for built-in numerics (their constraint is a known range).
  UPDATE 6 (supersedes 5): user: all casts are constructors T(x); `x as Int32` invalid; `as` only for interface/enum "if this is the case" (abort without try, recoverable with try - as built). Narrowing Int32(i64) = checked built-in ctor (abort / try OVERFLOW). Int32(2.5) TRUNCATES (user: normal cast behaviour; ints/floats separate trees, compiler smooths primitives). Still unconfirmed (my recs): operator meeting rule, zero value = ctor on zero params, automatic Eq for value types, number literals not adapting into declared types w/o ctor... (literal->ctor implicit decided), `extends` syntax `type Meters extends Int32`.
  UPDATE 7: (a) operator meeting rule AGREED (Int32+Int64 -> Int64). Open, discussing: zero values/zero init; whether Eq overrides == (and then Str overriding $); non-extending types: undeclared op = compile error vs "always extend, use a struct to opt out" (user unsure). My recs: == calls Eq when declared, $ calls Str when declared (identity on refs needs own spelling - asked); keep opt-in extends (struct wrapper loses flow-to-base).
  UPDATE 8: ZERO VALUES DECIDED (user: "that resolves it"): zero value = ctor run on zeros (defaults where declared? - my rec, unconfirmed), exists only if the ctor is K1a-evaluable and succeeds; then run count is unobservable (constant / per-element fine). Effectful ctor -> no zero value -> declaration w/o init is an error naming the effect. No marker for now. Still open before spec: Eq overriding == + Str overriding $ + identity spelling; extends keyword vs always-extend.
  UPDATE 9 (2026-10-08) DECIDED: Eq overrides ==, Str overrides $ (user: "yes do the overrides", asked for more); `extends` keyword; zero value uses declared param defaults; no uninitialized values ever - no zero value = must initialize. (The "(T,Bool) iterator, rejected fail-on-exhaust" was MY addition in CLAUDE.md, not the user's call - told them.) My calls to flag while building: identity spelling `same(a, b)`; == on refs = declared Eq else identity; auto Hash for value types w/o declared Eq (declaring Eq w/o Hash -> not Hashable); match/in/Has all go through Eq. Build order: (1) Eq/==, Str/$, auto Eq/Hash, same (2) primitive hierarchy + operator meeting + checked narrowing ctor (3) extends, literal->ctor, String literal type (4) ctor zero values.
  UPDATE 10 (2026-10-08): stage 1 part BUILT + committed: Eq overrides == (every depth, refs compare referents, null only == null), Str overrides $ (must be K1a-evaluable - my call), same(a, b) identity (my spelling, flagged). Auto Hash BUILT too (E10b; null hashes to 0 - my call, flagged). Next: stages 2-4. Unanswered user questions from 2026-10-08: "List<Counter> should work for most counters?" and "any more overrides we can do?" - answer them.
  UPDATE 11 (2026-10-08): user: "errors are errors" - Next() now `T ? Exhausted` (BUILT, S9a). Name `Exhausted`/`END` is mine, flagged.
  UPDATE 12 (2026-10-08): T6b BUILT (widening, operator meeting, generic inference widening - last one my extension, flagged). ASKED: should Int32(i64)/Byte(x)/Int32(f) check (abort / try OVERFLOW) - conflicts with user rule "no per-operation runtime checks"; UPDATE 6 recorded it as decided but it was my proposal.
  UPDATE 13: narrowing stays UNCHECKED (user: "1 for sure. It is not even a question") - wraps; float->int out of range stays UB; try T(x) is the opt-in check.
  UPDATE 14 (2026-10-08): stage 3 BUILT - text binds String in inference; extends (T29f; my calls flagged: array-method result substitution only, array built-ins kept without extends); literal runs ctor at compile time (T29d). Next: stage 4 zero values = ctor run on zeros/defaults.
  UPDATE 15 (2026-10-08): stage 4 BUILT (D13c). Casting plan complete. My calls flagged: Array<T>(n) of ref-holding zero = error (not per-element loop); generic placeholder error points inside the generic.
  2026-10-08 DECIDED (user): Exhausted name kept. max(i32,i64) widening to Int64 CONFIRMED (user: else wrong results via an internal Int32 cast). PRIMITIVE RENAME decided: Bool kept; I8 I16 I32 I64; U8 U16 U32 U64 (U8 replaces Byte); F16 BF16 F32 F64; Complex spelled out (Complex32/Complex64). No Char type - Unicode is a library. NOT YET BUILT. Open (asked): Complex64 = two F32 (numpy) or two F64?; Complex as prelude struct with operator methods vs primitive (my rec: prelude); hierarchy shape (U8->I16 etc lattice; F16->F32, BF16->F32).
  2026-10-08 DECIDED (user): Complex in the prelude; named by COMPONENT width: C32 = two F32, C16 = two F16 (spelled out per earlier msg: Complex16/Complex32/Complex64 - my reading, flagged). User asked about F8: my answer - not a primitive (no LLVM f8 type, two competing formats E4M3/E5M2); later as prelude storage types with conversions if wanted - awaiting user.
  2026-10-08 DECIDED (user): F8 = prelude types F8E4M3/F8E5M2 (storage + conversions). Char = 8-bit text unit (option 1): type Char extends U8 in prelude, prints as character, 'a' is a Char, String extends Array<Char>; U8 prints as a number. Unicode later as separate types Utf8/Utf32 (library). Build order: rename+new prims, Char/String, Complex16/32/64 (component width), F8.
  UPDATE 16 (2026-10-08): BUILT rename (T4), Char (T29h), Complex16/32/64, F8E4M3/F8E5M2. My calls flagged: U8+I8 error (no meet at I16); array-of-declared-number view rule; Complex names Complex16/32/64; E4M3 saturates; F8 == is bitwise.
  2026-10-08 DECIDED (user): U8+I8 error OK; array-of-declared-number view OK; complex -> C16/C32/C64 (user suggestion, built); F8: "do what the industry does" -> both formats saturate (NVIDIA cvt .satfinite, FP8 training practice); frameworks (PyTorch/ml_dtypes) default to NaN/inf instead - told user.
  2026-10-08 DECIDED (user): F8 == by value (IEEE) - built.
  2026-10-08: LOCK FILE BUILT (M23b). No -update flag (delete a line instead) - could offer.
  2026-10-08 DONE (user: "remove interfaces completely, make it clean"): traits = constraints only; defaults on <I Trait>; interface values, tables, is/as on interfaces, widening all removed. Lost: open-set runtime mixing (offered later: generated struct-of-functions Trait.From(x)).

---

## project_olang_vec_growth_question.md

---
name: project-olang-vec-growth-question
description: "SETTLED 2026-09-23: no growable contiguous Vec in olang. List<T> is chunked and append-only; Buffer was rejected on measurements"
metadata:
  node_type: memory
  type: project
  originSessionId: 7f2a5325-2cc9-4c97-9679-ec83bcdf63a5
  modified: 2026-09-23T00:00:00.000Z
---

The open question was how a growable `Vec<T>` reallocates when a scope is a bump allocator that frees
nothing. **Answered by dropping Vec.** olang's workload (LLM inference, big data) allocates once at a
size known at load time and never resizes — which `T[expr]` already is. Growth only matters for
incremental construction, where contiguity buys nothing until the end.

So: **`List<T>` is chunked and append-only**, with `ToArray()` copying to contiguous. Chunked indexing
measured 1.7x flat, but append-only never indexes a chunk. Not hash-like: for keys 0..n-1 a shift and
mask is a perfect hash.

`Buffer` (virtual reservation so storage never moves) was rejected: ~320KB resident per touched >=1MB
mapping (20k small buffers = 6.3GB vs 1.3MB malloc), and growing page-by-page fails outright — `mremap`
in place returns ENOMEM every time, because Linux packs mmap regions with no gaps.

**Why:** this closed a question that had blocked the stdlib for weeks, and it also made `&expr`, the
slice-invalidation rule and borrow tracking unnecessary rather than deferred — a List never exposes
anything that moves.
**How to apply:** don't reopen contiguous growth; if incremental accumulation comes up, it's List.
See [[project-olang-next-steps]].

---

## user_olang_natural_language.md

---
name: user-olang-natural-language
description: User's stated direction for olang syntax (2026-09-30) - move toward "natural language"; weigh readable-as-English forms when proposing syntax
metadata:
  type: user
---

The user (2026-09-30, on the `for` remake): "I really like the for ... in ... pattern, I want to take Olang more
in the direction of 'natural language'".

**How to apply:** when offering syntax options, include and weigh the form that reads as plain English
(`for x in a`), and say when a choice cuts against it. It is a direction, not a mandate to rewrite existing
syntax unasked - raise candidates (e.g. `and`/`or`/`not`) as questions, don't change them silently. Record any
resulting decision in the ledger [[project-olang-pending-decisions]].

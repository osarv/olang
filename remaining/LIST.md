# Decided but not built - olang, audit of wt-merge @ 773b4ed (2026-11-07)

Read-only audit. Every "not built" claim says what was grepped or read. Line numbers refer to wt-merge @ 773b4ed.
`dec:N` = .claude/memory/decisions.md line N, `plan:N` = plan.md, `CL:N` = CLAUDE.md, `HI:N` = HISTORY.md.

## Progress

- [x] decisions.md - read in full (1-2175 from the session context, 2175-2932 read here)
- [x] plan.md - read in full (to 861)
- [x] CLAUDE.md settled decisions - grepped for "not built / not yet / Left / recorded limit" and read the hits
- [x] SPEC.md - grepped "not yet implemented / reserved"
- [x] HISTORY.md from 2026-10-30 (HI:26283 on) - grepped "Left / not built / not fixed / recorded limit", read hits
- [x] docs/rework.md (left sections 18.6-21), optsurvey.md (ranked table), values-study.md (B list, section 7)
- [x] docs/refs-study.md - only its known two items (taken from the brief/plan, not re-read)
- [~] docs/survey2.md, survey3.md - not re-read; every decided item of them was checked through the ledger instead
      (QBK, survey2 items 1-12, QBP 1-15), and built status checked against CLAUDE.md/HISTORY.md/code
- [x] code checks for the new (non-known) items - see each entry

Biggest finds not on the queue: **QBT** (type-level builders), **QBU + QBW** (type-in-front literals for every
container, `FromIter` protocol), **QBP 7** (`explain -asm/-ir`), **item 27** (the sharper C-call rule), all decided by
the user and never built nor queued after 2026-10-27/11-03. Also the **LICENCE** ("the last thing we do").

---

## (a) Decided by the user, not built - must be built for "done"

### Already known and queued (listed for completeness)

| # | item | where decided | size | order |
|---|---|---|---|---|
| A1 | Bulk review 7 (11b8d38..db71837: hybrid round 1, Copy, immut, String immutable, unique, O15 drop flags) and its fix round | plan:840ff, directive 2026-11-06 | L | FIRST - before building on these rounds |
| A2 | Item 17: a value local whose reference is kept past its block/turn is built where it is kept (bulk review 6's F3 refusal goes; also removes os.Args' +18 instr per main) | dec "Loose ends DECIDED 2026-11-03" (2) | M | scope.olang; after A1 |
| A3 | unique Part C: a unique value's storage freed exactly where its destructor runs (free.olang, O8d), measured, gated by fuzz free | dec "Unique destructor timing DECIDED"; /home/user/wt/uniq/PROGRESS.md "Left" | M | free.olang; after A1 |
| A4 | Collections holding destructor values by value (`Vec<File>`): drop glue walking count / Map slots | HI:28854 (mine (1)), CL Destructors entry "Not built" | M | after A3 (same drop machinery) |
| A5 | Drop flags in effects: effects count a Drop wherever it stands (flag-insensitive), so a holder's declared Copy calling a fallible constructor is refused by E31d | uniq PROGRESS "Left" | S | effects.olang |
| A6 | Section-8 round (xhigh): NLL (reference locals typed per assignment; makes scopedump/lowerdump/emitdump build again - HI:28468), O27 as placement (QCR 1a - reverses QCB's no-extension rule), T22a function values carrying inferred relations (QCR 1c); with it the T25d imprecision (an element of a constant literal scoped to the literal's temporary block, plan 2026-11-03) | dec "NLL DECIDED", "QCR (1) DECIDED"; WIP /home/user/review/nll-wip.patch | L | scope.olang/check.olang; design note first; not beside A2 (same files) |
| A7 | Reuse in place (Perceus-style, no counts) | dec "Reuse in place DECIDED" ("just build it") | M | free.olang; AFTER A6 |
| A8 | Columns<T> (QCS 3): one type, FromIter literals (needs A12/QBW), fixed layout inferred where it never grows | dec "QCS (3) DECIDED", QCU 3 | L | spec first; QCU 1-3 still asked (e); FromIter part depends on A12 |
| A9 | Reference counting carve-out for values with several holders (QCR 2) - design note first | dec "QCR (2) DECIDED" | L (note S) | after A6 |
| A10 | Ref-counting for owner trees with back pointers (values study item 3) - design note first, built when a GUI library needs it | dec "Values study answered" 3 | note S / build later | the build itself is effectively (d) |
| A11 | Parameterized declared function types `type Pred<T> fn(x T) Bool` (item 24 of the 2026-11-03 review) | dec "My calls REVIEWED 2026-11-03" 24 | M | check/generic; touches T21b |

(The refs study's two items and wt-uniq's two pre-existing bugs are listed under (b) and (c), where they belong.)

### New - decided by the user, not built, NOT on the queue

**A12. QBU + QBW: the type in front is the type made; `FromIter` is the one literal protocol.** (L)
- What: `Array<I64>[1, 2]` (replacing `I64[1, 2]`), `Array<F32>[f(x) for x in a]`, `Vec<T>[...]` built directly,
  `set.Set<I64>[1, 2]` / `C[a, b]` = `C.FromIter(Array<E>[a, b].Iter())`, keyed `C[k: v]` = an iterator of
  `MapEntry<K, V>`; a comprehension into such a type hands its walk straight in; `T.FromIter(it)` an ordinary call;
  every std collection declares FromIter (Heap's takes its less, so no literal); compiler supplies Array/Vec.FromIter;
  `$` renders each so (E11b holds again - today `$` of Vec/List/Map writes `Vec<I64>[1, 2]`/`Map<K, V>{k: v}` which no
  parser accepts). Migration tool for every `T[...]` in `olang fix`.
- Where: dec QBU DECIDED (the user "type in front for sure"), QBU literals DECIDED (FromArray), QBW + QBX ANSWERED
  2026-10-27 ("no do only fromIter": FromIter replaces FromArray; QBX declined so the type stays in front);
  "Collections DECIDED 2026-11-03" still writes `Vec<T>.FromIter(v.Iter())`; QCS (3) "FromIter (QBW) gives
  `Columns<Particle>[...]` literals" - still live.
- Evidence: `grep -rn FromIter std compiler` -> nothing; `Vec<I64>[` occurs only inside rendered strings in tests;
  `Array<I64>[` in tests/shared.olang:16147/16158 is an array of arrays (element type `Array<I64>`), not the new form;
  CLAUDE.md's comprehension entry still says `T[e for x in c if p]`, E11b still lists `Map<K, V>{k: v}`; no HISTORY
  section mentions QBU/QBW. plan.md never queued it (plan:573 lists only QBT).
- Depends: needs A13 (QBT) for `C.FromIter` as a type-level builder. Touches parse/check/fmt/emit-of-$/std/every
  test file (migration). Two-stage bootstrap + seed if compiler/ uses literals. Do not run beside any other
  check.olang batch. Columns (A8) literals depend on it.

**A13. QBT: type-level builders `fn Color.FromHex(t String&) Color ? E`, placement (a).** (L)
- What: declared in the type's module, giving its type (bare/`&`/`?&`, errors allowed), built through the constructor;
  every function giving a value of a type its module declares and taking none is declared on that type (an error
  naming `T.Name` otherwise). Prelude moves: `String.FromC(p, max)`, `F64.FromBits(u)` (and other FromBits); std moves
  (net.IP.Parse, net.Addr.Parse, net.Conn.Dial, net.Listener.Listen, net.UDP.Listen, time.Duration.Millis...,
  time.Date.Parse/Of, list.List.Of/From, json.Json.Parse ...) by a migration tool in `olang fix`; doc groups builders
  by declaration; reflection gains `T.Functions`. Round 2: traits may require one (`T.Parse(t)`, `T.Zero()`), then
  `t.ParseAs<T>()` becomes `T.Parse(t)`.
- Where: dec "QBT DECIDED 2026-10-27 (the user: 'I want it with a)'" - reverses QAS/QAT; plan:573 "ADDED 2026-10-27:
  ... QBT type-level builders (+ trait-required ones)" - then never scheduled.
- Evidence: `grep "fn [A-Z][a-zA-Z]*\.[A-Z]" std compiler tests` -> none; CLAUDE.md:1683 still says
  "`p.StringFromC(max)` ... no type-level functions"; HISTORY has no QBT section.
- Depends: parser + names + check + doc/explain/lsp/api + std + fix tool. Before A12. Big std migration (net, time,
  list, json). The `olang api` tool must treat a moved builder as breaking (expected).
- Note: QCU 1 (Zig-style type creation) is a different thing, still asked.

**A14. QBP 7: `olang explain -asm FILE NAME` / `-ir`.** (M)
- What: one function's code as the build compiled it (-O3 + LTO, from the build's objects) with LLVM's optimization
  remarks mapped to olang lines through the profiler's line tables; -target/-quick/-define apply.
- Where: dec "QBP 7 DECIDED 2026-10-27 (the user: 'build it')", plan:573.
- Evidence: no `-asm`/`-ir` in compiler/olang.olang's option table (help text line 95 lists only RULE / FILE NAME /
  -caps); no remarks handling anywhere (`grep pass-remarks compiler/*.olang` empty); no HISTORY entry.
- Depends: olang.olang (option table - DEPENDENTS: help, LSP/MCP, nvim, README), build.olang, profile.olang's line
  tables. Independent of the section-8 work; can run beside it.

**A15. Item 27: the sharper C-call rule for effects and early freeing.** (M)
- What: a C call is "anything" (Unknown/Back in effects, free.olang's condition 3) only in a program that hands an
  export fn to C (its address taken and given to C) or is built `-library`; and even then not for libc's I/O, string,
  memory and time functions.
- Where: dec "QCL DECIDED 2026-11-03 ... 27 DECIDED (the user: 'do the sharper rule')" (proposed in "My calls
  REVIEWED 2026-11-03" 27). Supersedes fix round 6b's (2) "no widening" of 2026-11-02.
- Evidence: compiler/effects.olang:784 marks every non-quick C call Unknown when `e.exports > 0` (countExports counts
  every export fn, handed or not); quickNames (effects.olang:831) has memcpy/strlen/clock_gettime etc. but no I/O
  (read, write, open, fwrite ...); compiler/free.olang:3443 keeps everything "where a program has one" export fn.
  CLAUDE.md's G42 entry still states the old rule.
- Depends: effects.olang + free.olang (free.olang also touched by A3/A7 - order after them or with them).

**A16. QBP 8: a for-in or comprehension over a lane expression reads it lane by lane (no temporary).** (S-M)
- What: `F32[relu(v) for v in a * w + b]` one loop, no temporary array (measured before: 0.19 s/21 MB vs hand loop
  0.13 s/17.5 MB); the measurement becomes a bench row.
- Where: dec "QBP 8 DECIDED 2026-10-27 (the user: 'yes of course')" (an optimization the user approved).
- Evidence: no HISTORY entry for it; tests/lanes.olang has "for-in over a lane expression" (HI:24899, from 2026-10-26,
  i.e. before the decision - works via a materialized lane result); no `lanes` comprehension row in bench/lanes.olang
  (line 87 is a plain for-in over an array). Not proven unbuilt by measurement - confirm with a callgrind before
  building.
- Depends: check.olang's lane elaboration (laneNode); beside A12 only if files allow.

**A17. Declared Copy elided where nothing could tell.** (M) - AMBIGUOUS, see (e)
- The user's "Copy DECIDED 2026-11-03": "Copy builds only (allocation is its only effect), so the compiler leaves it
  out wherever neither side is written afterwards" (and the correction: a compound assignment's Copy too). Built
  instead: "no copy running a declared Copy is left out" (CL E31d entry, HI:28585: "left as a question for the user");
  plan 2026-11-03 records "declared Copy never elided (mine: keep)". So the user's decision is unbuilt and the question
  the agent raised was never put to the user. Needs either the sound rule (quietness judged over every type the Copy
  reaches through references) or the user's OK to keep it unelided.

**A18. D8f and constructors by value (arrays batch, QP1-QP3).** (M each)
- D8f: a declared function's array result has a known length when every return gives one length, inferred like an
  error set (QP2's proposal (2), queued with QP1-QP3 "as the arrays batch").
- G29 for constructors: a constructor taking a fixed array by value made per length.
- Where: dec QP2/QP3 entries; plan:707 "Not built (docs/arrays.md section 7): D8f, G29 for constructors, T7c for
  comprehensions/reference locals, T7d for mutable private globals"; CLAUDE.md:492 "Not yet built: inferred result
  lengths (D8f), constructors taking a fixed array by value".
- Evidence: SPEC:1941 "D8f ... *(not yet implemented ...)*", SPEC:8606 "G29 ... *(a constructor: not yet
  implemented)*".
- Ambiguity: D8f was my proposal inside QP2 that the user's "All of QP1-QP3 QUEUED" took in; constructors-by-value is
  arrays-batch detail. Both are arguably (b). Listed here because they are the user's arrays batch.
- Depends: check/generic (G29 machinery); after A12 if both touch literals' lengths.

**A19. LICENCE.** (S, but a user decision)
- The user 2026-10-24 (dec:969, dec:1023): a LICENCE is "the user's call; none today" ... "LICENCE: 'that's the last
  thing we do' - deferred to last." The repo root has no licence file. If "done" is the last step, this is due now -
  but it is the user's choice (which licence); see (e).

---

## (b) Decided by Claude ("mine") as a detail or optimization, not built

**B1. The refs study's two items (known).** (a) a whole-element store of a record (`ps[i] = P(...)`) +23% instr /
1.8x time vs field writes - look at the store's lowering; (b) arrays of small structs not vectorizing (1.65x) - LLVM
interleaved access. plan 2026-11-03 "Found by it, queued". M each; emit/lower; independent of section 8.

**B2. optsurvey item 2: temporaries on the stack + a loop body's scope reset per turn** (~70 -> ~15 Ir a turn).
"waits for the scoping rework" (docs/optsurvey.md:18) - the rework is done; no HISTORY entry after 2026-11-02 for it.
Overlaps values-study 4.7 (B6). M-L; scope/lower/emit/runtime; after A6 (placement decisions).

**B3. optsurvey item 5: a call's result copied into a reference parameter** (`use(make(x))`, 233 -> 172 Ir; 3.5x for
a 10k array). Also "waits for the rework"; not built (no HISTORY entry). M; lower/scope; after A6.

**B4. optsurvey items 6, 10, 11 (decided by me "everything else in the ranked table queued", QBV entry):**
- 6: constant calls in bodies computed while compiling (255,000 Ir/turn vs 52). Also the user's standing rule
  ("pure calls with constant arguments inside bodies computed while compiling", rules.md). L; check/interp.
- 10: enum layout tightened (I32 tag -> smallest integer, payload natural alignment; `Opt{None, Some(F32)}` 16 -> 8
  bytes); decided "tightened, T.Size/Align/Offset report new numbers" (QBV entry). Three places must change together
  (HI:26892-26900: types layEnum/enumLlvm, emit tag loads, evaluator shapes, K2 images, Hash/$, cabi). L.
- 11: Filter/Map chain fusion (2x the hand loop). L; check.
- Evidence: CLAUDE.md:1743 "Not built: 10 (enum layout), 6 (constant calls in bodies), 11 (Filter/Map fusion)".

**B5. optsurvey item 7 (Vec grown in place while no View() was taken) and 15b (128-bit division by a constant).**
- 7 is blocked: HI:26884 "the flag has nowhere to be set ... Left for the user's QBV-like call" - never asked (see
  (e)). Plus a runtime round (mremap, chunk relink).
- 15b: "Left for when 128-bit code matters (FPGA, hashing)" (HI:26819) - effectively deferred.

**B6. values-study 4.7 stack placement of bounded non-escaping values** ("Build as an optimization (mine to
decide)"); plan's "Parked, needs a benchmark first" item; plan 2026-11-03 "(3) later: ... stack placement". Only
`stackArg` (a promote for a read-only parameter) exists. M; same as B2 part 1 - merge them.

**B7. values-study 4.8 last-use freeing of large values** ("measure first on the self-build") and **4.9
double-buffered regions** for a local rebuilt from itself each turn ("after 4.5"). S-M each; free.olang; after A3/A7.

**B8. StringBuilder's `ToString()` hands its buffer over without a copy.** Loose ends DECIDED (1) 2026-11-03 (mine,
the user delegated: "do what works out ... efficient"): "`b.ToString()` handing its buffer over without a copy".
std/prelude/text.olang:1175 still copies element by element into a new Array<Char>. S. (The `Append` rename was
decided against: "StringBuilder.Push not renamed (mine)", plan 2026-11-03.)

**B9. QCE: std's text-keyed maps move to value keys where they need the guarantee (json, flags, ...).**
dec "QCE DECIDED 2026-10-31". Grep: no `Map<String&` left in std outside tests; but `json.Object` holds
`Keys Array<String&>&` (std/json.olang:60), shared with the caller. AMBIGUOUS whether json.Object counts. S.

**B10. QAR (mine, 2026-10-24): msgs.olang's echo comments and blank lines dropped (~1,090 lines).** Not done:
compiler/msgs.olang still has 765 comment lines (`# ERR_...` echoes) and 779 blank lines, including echoes of removed
messages with no function under them (`# ERR_CHECKED_WITHOUT_PLAIN`, `# ERR_CHECKED_NOT_SUPERSET`, msgs.olang:1803/1805).
S; generated by compiler/tools/genmsgs.olang - change the generator. Also "redundant integer casts cleaned up" (same
decision) - not checked.

**B11. json key names converted per encode, not precomputed** (attrs batch "Left", plan 2026-10-27). S; std/json.

**B12. Small-block folding** (O2's optimization, the user allowed it). Measured and deliberately not built ("every block
keeps its scope unless real code shows the cost", dec "Rework round 4b ... DECIDED by me"). CLOSED unless a program
shows the cost - listed only so it is not mistaken for forgotten.

**B13. T7c for a reference local and T7d for a mutable private global** (docs/arrays.md section 7; SPEC:696, SPEC:713
"*(not yet implemented)*"). Mine (spec details of the arrays batch). M; check.

**B14. Values-study "my call" 3: a std slot map** (generational indices, `try s.Get(id)` failing `Stale`) "when the
first program needs a graph that loses nodes" - effectively (d).

---

## (c) Recorded limits and known bugs not fixed - candidates to fix

Bugs (wrong answers / over-rejections):
- C1. (known) a destructor calling a method that writes through its instance's reference field (`log.Saw(id)` growing
  a Vec) makes holders of a local's reference O27/C2d errors; the same write inline is accepted (HI:28881, master too).
- C2. (known) T17c refuses a by-value parameter holding a reference put into an enum case (`Maybe.Some(r)`), for plain
  structs too (HI:28881 (2)).
- C3. `x2 := x1; return x2` of a constructed local is O10d's error (flow not following `x2 := x1`) - bulk review 4
  "Left" (HI:26408, plan 2026-10-31). Section-8; fold into A6.
- C4. `held/gen_walkkept.olang`: the generator body's O27 and the consumer's O10c give two errors for one cause
  (HI:28392; dec "Bulk review 6 fix round ... (2) collapse in a later round"). Diagnostic; with A6.
- C5. becomedtor: two errors for one cause (bulk review 4 "Left"). Diagnostic. S.
- C6. `chan.Select(SendOf(c, v), ...)` written inside a join block refused by C2d (a local first works) - CLAUDE.md
  std entry "Limit", plan 2026-10-31. S-M; section 8.
- C7. A baked global that aborts gives a second error at an assert reading it (wt-feat "Left", plan 2026-10-31).
  Unverified whether fixed since. S; interp.
- C8. An S18c error inside an instance points at std's assert with a note at the inner call, not the user's call
  (s18c "Left", plan 2026-10-27). S; check (G18a-style rerouting).
- C9. Reflection: nullability not reflected (no `T.Nullable`), `x Tree.Cases` unknown silently, G38 vs G13 wording
  (refl "Left", plan 2026-10-25). S each.
- C10. `explain` of a method on a prelude type (qbb "Left", plan 2026-10-26). S. Unverified.
- C11. small3 "Left": "unknown name 'os'" said three times without an import; E11b hint for `'c'.PadStart(3)` in a
  join (plan 2026-10-26). S. Unverified (did-you-mean work may have touched it).
- C12. Profiler: the signal handler runs on the interrupted stack (no `sigaltstack`); samples reserved but not
  published at `__olang_prof_stop` are dropped (HI:26403). S; std/runtime/prof.ll.
- C13. Builds not bit-reproducible: `.loc` objects carry the compiler's pid in temp names (profile "Left"). S.
- C14. SPEC.md:80 overview still lists "a comprehension" among T7c's not-implemented sources, though SPEC:691 and
  CLAUDE.md:603 say comprehension lengths are built (definit, 2026-10-26). Doc fix, S.
- C15. A named constant does not adapt like a literal (`f F32 = Pi` is an error; `F32(Pi)` written) - CLAUDE.md math
  entry "Not done"; same class: C header constants typed I32 not adapting (`I16(cpoll.POLLIN)`, cimport "Left"). M;
  E4a over immutable literal-only globals.

Recorded limits (memory/placement):
- C16. QF: long-lived mutated structures holding values a task can reach still only grow; values with destructors freed
  only where a `Destroy()` ends them (A3 changes the second half) - CLAUDE.md "Recorded limits".
- C17. A Map's Vec value first named by a local in the Map's scope then Put is kept until the scope closes (131 MB) -
  CLAUDE.md:1544. free.olang.
- C18. A walk of a Map of owners keeps (HI:28179); a value `List<String&>` has one scope for chunks and referents (G11).
- C19. Generators: a generator held in a local still lands by its obligations; a generator local walked in two
  branches or twice keeps its arena frame; a held generator's borrowed elements read at the generator; a walk inside a
  loop whose exit leaves that loop too keeps an arena frame (CLAUDE.md generators entry, plan 2026-10-26/27).
- C20. A callback handed elements holding references from a Str's receiver (`it.tags.Iter().Some(f)` over a
  `Vec<String&>`) is refused (E11c) - CLAUDE.md:1539.
- C21. An enum's zero with a nullable-array payload field gives an empty array, not null (HI:28280).
- C22. Adapters keeping a copy of their receiver through an `any` are refused (any's "recorded limits"); o1-o4
  over-rejections from the any reviews (plan 2026-10-25) - unverified which remain after the rework.
- C23. The cimport gaps: C extern variables (stdin, errno) and cast macros (`SIG_IGN`) have no form; `interpret`
  refuses a struct by value; a large header's whole module is checked on every build (openssl 3 s); full `make cross`
  (CLAUDE.md:1948 "Left"). M each; partly (d).
- C24. compiler/ nesting: the front-end refactor left 61 lines deeper than four blocks (plan 2026-11-02); the rule is
  Claude's own discipline (rules.md). S-M.

---

## (d) Explicitly deferred by the user - not part of "done"

- FPGA backend for spiking networks; fixed point and saturating types with it (plan "Recorded future work"; dec AGENDA
  11 "fixed point DEFERRED to FPGA").
- A freestanding target (no libc/OS) - QBF.
- Package registry; package-private visibility.
- oann's port and catch-up (handles_migrate, fnref/scopes migrations), the settling experiments (QBY: after the
  compiler is done).
- A GUI library (Elm architecture recorded as the direction, QBP 14) and the owner-tree reference counting it would
  bring (A10's build).
- macOS / CI (survey 1: "needs a real Mac or CI").
- Errors carrying data (survey 4 DEFERRED).
- Allocation profiling per site; `interpret` not profiled; a finer profiling clock; threads C starts.
- `interpret` stage 3 (tasks on real threads; plan future work).
- The rest of plan.md's "Recorded future work" list: binary serialization encoder, declared-layout types, Utf8/Utf32
  text types, MNIST port, `spawns` effect, a bound on parallelism, cross TargetOs from uname, DWARF for by-value
  aggregates + a lexical block per test, comptime extras (constant contexts in bodies - overlaps B4 item 6; S8c for
  aggregates; baking globals destructors write; payload enum with an address; K2c), several `try` defaults as one
  call's arguments, weaker atomic orderings, extern variables, text pieces across lines.
- plan's small debts: the re-export + import-cycle ordering fragility, early hand-checked "must not compile" shapes not
  in checks/cases (`structContainsBareScopeField` is gone - grep finds it nowhere in compiler/).

---

## (e) Questions still ASKED / owed

1. **QCU 1** Zig-style type creation (rec no) - asked 2026-11-06, unanswered.
2. **QCU 2** the name `Columns` (rec keep) - unanswered.
3. **QCU 3** one Columns type (rec one, fixed layout inferred) - unanswered.

Others found (not formally in the ledger as ASKED, but owed to the user):
4. **Declared Copy elision** (A17): the user decided elision; the agent left it as "a question for the user"
   (HI:28585), the coordinator recorded "mine: keep" (plan 2026-11-03) - never asked. Either build it or ask.
5. **Vec grown in place with views alive** (B5 / optsurvey 7, docs/optsurvey.md "16. Needs a decision"): "Left for the
   user's QBV-like call" (HI:26888) - never put in the ledger.
6. **LICENCE** (A19): "the last thing we do" - which licence is the user's call.
7. Item 27's companion question was answered (sharper rule) - none left there. QCR's offered audit of refusals Python
   accepts was never run (not a question - the user went straight to building).

---

## Proposed order for the week (a)-(c)

Constraints: reviews before building on reviewed code; section-8 design before reuse in place; free.olang work in
sequence (A3, A4, A7, A15, B7, C17); check.olang batches not in parallel (A2/A6, A12/A13, A16, A11, B4-6/11).

1. **A1** bulk review 7 + fix round (gate for everything on hybrid/Copy/immut/String/unique).
2. **A2 + A5 + C1 + C2** item 17, drop flags in effects, wt-uniq's two pre-existing bugs (scope/effects, one round).
3. **A3 then A4** unique Part C, then `Vec<File>` drop glue (free.olang, lower).
4. **A6** the section-8 round (NLL, O27 as placement, T22a relations) with C3, C4, C6 and the T25d imprecision;
   design note first (xhigh).
5. **A7** reuse in place (after A6, free.olang), then **A15** item 27 (effects/free condition 3) - can be one round.
6. **A13 then A12** QBT type-level builders, then QBU/QBW literals + FromIter + `$` rendering (big migration; a seed
   regeneration likely) - in parallel with 3-5 only if it does not touch check.olang at the same time (it does), so
   serialize with A6; schedule after A6.
7. **A8** Columns<T> (needs A12's FromIter; QCU 1-3 answered first).
8. **A14** explain -asm/-ir (driver/build only - can run beside 3-5).
9. **A16, A18, A11** lane comprehension fusion, D8f + constructor G29, `type Pred<T> fn` (check.olang - one at a time
   after A12).
10. **B1, B2/B6, B3** refs-study items, stack temporaries / turn-scope reset, result-into-reference copy (emit/lower;
    B2/B3 after A6).
11. **A17** declared Copy elision (or the user's OK to keep), **B8, B9, B10, B11, C14, C5, C7-C13** small items in one
    tidy round.
12. **A9** ref-counting design note (QCR 2) - note only; build only if the week has room.
13. Final bulk review + fixes + full verify (verify, scopesan, scopefuzz, fuzz); then **A19** licence with the user.

B4 (constant calls in bodies, enum layout, Filter/Map fusion) are each "days" and mine; take them only if the week has
room after 1-11, enum layout before the final review (it changes T.Size, layout-visible).

## Coordinator's notes (2026-11-07, after reading the report)

- (e) "Declared Copy elision" is no question for the user: copying is always correct, and the user's rule leaves a copy
  out where nothing could tell. For a declared Copy (deep through references) that needs "nothing reachable from either
  side is written afterwards", which is not built - so it stays an optimization (class b, mine), queued after the
  section-8 round and built only where a sound condition and a measured gain exist.
- (e) "Vec grown in place while views are alive": decided by me (class b) - `View()` sets a hidden, prelude-only flag
  (an atomic store, unobservable) so a Vec grows in place only while no view was ever taken; the runtime part (mremap,
  relinking the scope's chunk list) is a runtime round. No semantic change, so no question.
- (e) The LICENCE stays the user's ("the last thing we do"): ask when the compiler is declared done.
- QCU 1-3 are open; Columns<T> waits for them and for FromIter (QBU/QBW).

## Proposed 2026-11-07 (QCX) - NOT decided: the user's "Add it then, not done" fixed a typo, it was no answer; re-asked

- N1. Errors carrying data (deferred 2026-10-24): design note docs/errdata.md (wt-errdata) -> the user's direction
  questions -> build round (check, lower, emit, eval, scope; std migration).
- N2. Packed / declared-layout structs (`type H packed struct(version U4, ihl U4, length U16)`): types layout, emit
  field access by shifts and masks, eval, reflection (T.Size, f.Offset), cabi/C imports of packed C structs, `$`, ==.
- N3. Benchmarks in the test runner (`olang test -bench`, std/bench): auto-scaled iterations, time and allocations per
  operation, a saved run to compare with.
- N4. Coverage (`olang test -cover`): counters per MIR block in objects of their own, a line report and HTML.
- N5. A REPL (`olang` with no file: statements of a growing main, run by the evaluator) and a Jupyter kernel on it.
- N6. Saturating arithmetic in std/arith (`arith.Saturating<T>` or functions), for quantized ML, DSP, spiking nets.

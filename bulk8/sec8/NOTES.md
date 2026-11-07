# Bulk review 8 - sec8 (section 8 and memory)

## Progress
- Records read (CLAUDE.md entries, SPEC O15). Old compiler (fcdb202) built at sec8/old/build/olang.
- Covered: O25i versions (defer, inner blocks, nested loops, do-while, continue, match/catch clauses, lambdas made after
  an inner assignment - all sound: a01, a02); O27 kept views (a03, a14*, f03); hand-on move (a04, a15, a16);
  drop order (a05, a06, a10, f02); T22a (a11-a13); early freeing x views of elements (f01); tasks (a17, a18).
- Then: generators x versions (a24), O25i stores through cursors (a25, a27), drop flags x errors/errdefer/branches
  (a22: every value ended once), by-value parameter and nested-block holders (a26), freshness of unique arguments
  (a28), T22a through generics and lambdas (a30), more DropHolds shapes (f02c).
- Not covered: become x holders, comptime, the region lists under threads beyond reading runtime.ll (tasks keep:
  a17/a18 -race clean), packed/columns x section 8, C callbacks (X12's sharper rule only read).

## Findings

- **F1 (high, OLDER - fcdb202 segfaults alike): a reference to a collection's element that owns storage, kept across a
  removal, reads storage early freeing released.** f01_elemref_removal.olang (Vec<Rec>.Ref(0) across Truncate,
  Map<I64, Rec>.Ref(1)! across Remove; Rec a struct with a run-time array field), f01b_unique_elemref.olang (unique
  Blob: a walk's name over the Vec with ls.Truncate in the body, `w := ls[0]` across Clear, m.Ref(k)! across Remove).
  Segfault in a plain build and in -debug -sanitize; interpret stops "it indexes outside the array" (the vacated
  slot). Also RemoveAt, SwapRemove, Pop (b/a19v). -memory even reports both places as kept ("removed elements of 'ls'/'m' are kept",
  "'r' is used here, after 'm.Remove(1)'") - yet what the element owns is released at the vacate all the same (the
  Rec an owner held in place, round 8, its region released through its anchor; for unique Blobs the same): the keep
  decided for the collection's place does not reach the regions a viewed element owns. A Vec<String>'s Ref across
  Truncate is fine (b/f01 kept form: 14890). Rule: O8d (condition: no view in use across a let-go).
- **F2 (high, NEW - dropord d6fd000 / C11 drops 4f47494): O15's "a holder is ended before what it holds" misses a store
  into a Vec's element, so a destructor reads a value already ended - and storage Part C released.** f02_drophold_refmut.olang:
  `gs := Vec<Grip>()` then `ls := Vec<Lamp>()`, `gs[0].held = ls[0]`: ls ends first (its Lamp's run-time array
  released by Part C at the holder's drop), then Grip's destructor reads `held!.data[3]` - segfault in a plain build
  and -debug -sanitize (swapping the declarations runs clean: b/f02_swapped.olang). f02b_drophold_variants.olang
  isolates it: the holder side being a Vec's element is what is missed - `gs[0].held = l` (v1), `gs[0].Hold(ls[0])`
  (v3), `gs.RefMut(i).held = ls[0]` in a loop (v5) end the Lamp first ("2.10." - the Grip sees it closed), while a
  single Grip holding a Vec's or a Map's element (v2, v4) is ordered right ("31.4.", "71.8."). f02c_drophold_more.olang:
  a Map's element as the holder (v7), a Vec element through a local RefMut (v8) and a call given both, `set(gs, l)`
  through a lambda (v9 - SPEC O15's own words: "by a call given both") are wrong too; a struct field holder (v6) is right. SPEC O15 states the
  case ("storage the first's references reach"). typed.DropHolds / holdWalk.
- **F3 (low, NEW - O27 as placement 51c5ea5): the view-of-a-destructor-holder refusal (ViewKeptDestructor) is not held
  through a callee handing back a view.** f03_viewdtor_call.olang: `views.Push(first2(h))` with `fn first2(h H&)
  Array<I64>& { return h.arr[0:2] }` compiles where `views.Push(h.arr[0:2])` is O27/O15's error (b/f03direct.olang).
  -memory: "'h' is built in keep's scope ... for a view of it kept here", and h's destructor (escapedHome) then runs
  at keep's scope close, not as its block ends - memory-safe as far as checked (the region kept; 1275 built and
  interpreted), but the spec's "storage holding a value whose destructor is still to run" refusal (CLAUDE.md O27 entry,
  docs/sec8.md question 2) and the destructor's place (O15: where its holder lets go) are not what runs.
- **F4 (low, OLDER): a by-value parameter handed on in deferred code is refused saying it "is mentioned after"** when
  nothing mentions it after - f04_defer_handon.olang (`defer v.Push(l)`, unique Blob, no destructor; fcdb202 the same).
  SPEC T13b: "a mention in deferred code ... runs after everything", so the landing in deferred code should be the
  last; at least the message names no later mention (likely the parameter's own hidden drop, registered first). Also
  `errdefer v.Push(l)` (b/a22_errdefer_push.olang).
- **F5 (low, NEW - handon/T22a 3e02dd2, 074b901): T22a's refusal of a generic instance as a value names its type
  argument.** f05_t22a_names_typearg.olang: `use(keepIt<Blob>, v)` is "'Blob' ties where what it is given lives ...",
  caret on `Blob`; it should name `keepIt<Blob>` (fcdb202 accepted the program - the hand-on was a copy then, so the
  refusal itself is the recorded cost, only the wording is wrong).

Checked and found sound (beyond the findings): O25i - deferred code reading a version from a closed inner block, a
catch clause's local, a match clause's local, nested loops, do-while, continue, three-clause loops, a lambda made after
an inner-block assignment and returned, a generator's cursor across yields, a cursor given a call's borrowed result in
a loop, stores through cursors whose versions differ (O12's error), a referent named twice; O27 - turn arrays kept in a
parameter's Vec by a function, views of destructor holders kept directly, through a closure (O10c) or a generator
(refused); hand-on - a view of the parameter kept beside the move (kept), a closure capturing it (refused), turn
arrays referenced by a moved value (lifted), non-fresh arguments through try defaults, conditionals (refused); T22a -
spawn through a local, a global, an any (refused), defer, conditionals, try defaults (followed); drop flags - a later
argument failing, a clause's return, branches, errdefer (each value ended exactly once, built and interpreted alike);
holders across blocks and loops registered where their storage lives.

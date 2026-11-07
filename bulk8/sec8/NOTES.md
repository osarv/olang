# Bulk review 8 - sec8 (section 8 and memory)

## Progress
- Records read (CLAUDE.md entries, SPEC O15). Old compiler (fcdb202) built at sec8/old/build/olang.
- Covered: O25i versions (defer, inner blocks, nested loops, do-while, continue, match/catch clauses, lambdas made after
  an inner assignment - all sound: a01, a02); O27 kept views (a03, a14*, f03); hand-on move (a04, a15, a16);
  drop order (a05, a06, a10, f02); T22a (a11-a13); early freeing x views of elements (f01); tasks (a17, a18).
- Not yet: generators x versions, errors/errdefer x drop flags, become, comptime, interpret/baked disagreements.

## Findings


- **F1 (high, OLDER - fcdb202 segfaults alike): a reference to a collection's element that owns storage, kept across a
  removal, reads storage early freeing released.** f01_elemref_removal.olang (Vec<Rec>.Ref(0) across Truncate,
  Map<I64, Rec>.Ref(1)! across Remove; Rec a struct with a run-time array field), f01b_unique_elemref.olang (unique
  Blob: a walk's name over the Vec with ls.Truncate in the body, `w := ls[0]` across Clear, m.Ref(k)! across Remove).
  Segfault in a plain build and in -debug -sanitize; interpret stops "it indexes outside the array" (the vacated
  slot). Also RemoveAt, SwapRemove, Pop (b/a19v). The Map form is even reported by -memory as kept ("'r' is used
  here, after 'm.Remove(1)'") - the keep is on the Map's values place, while the element's own owner place (the Rec
  held in place, round 8's region released through its anchor) is released at the vacate all the same: free.olang's
  "a view used after the let-go keeps" does not reach the places a viewed element owns. A Vec<String>'s Ref across
  Truncate is fine (b/f01 kept form: 14890). Rule: O8d (condition: no view in use across a let-go).
- **F2 (high, NEW - dropord d6fd000 / C11 drops 4f47494): O15's "a holder is ended before what it holds" misses a store
  into a Vec's element, so a destructor reads a value already ended - and storage Part C released.** f02_drophold_refmut.olang:
  `gs := Vec<Grip>()` then `ls := Vec<Lamp>()`, `gs[0].held = ls[0]`: ls ends first (its Lamp's run-time array
  released by Part C at the holder's drop), then Grip's destructor reads `held!.data[3]` - segfault in a plain build
  and -debug -sanitize (swapping the declarations runs clean: b/f02_swapped.olang). f02b_drophold_variants.olang
  isolates it: the holder side being a Vec's element is what is missed - `gs[0].held = l` (v1), `gs[0].Hold(ls[0])`
  (v3), `gs.RefMut(i).held = ls[0]` in a loop (v5) end the Lamp first ("2.10." - the Grip sees it closed), while a
  single Grip holding a Vec's or a Map's element (v2, v4) is ordered right ("31.4.", "71.8."). SPEC O15 states the
  case ("storage the first's references reach"). typed.DropHolds / holdWalk.
- **F3 (low, NEW - O27 as placement 51c5ea5): the view-of-a-destructor-holder refusal (ViewKeptDestructor) is not held
  through a callee handing back a view.** f03_viewdtor_call.olang: `views.Push(first2(h))` with `fn first2(h H&)
  Array<I64>& { return h.arr[0:2] }` compiles where `views.Push(h.arr[0:2])` is O27/O15's error (b/f03direct.olang).
  -memory: "'h' is built in keep's scope ... for a view of it kept here", and h's destructor (escapedHome) then runs
  at keep's scope close, not as its block ends - memory-safe as far as checked (the region kept; 1275 built and
  interpreted), but the spec's "storage holding a value whose destructor is still to run" refusal (CLAUDE.md O27 entry,
  docs/sec8.md question 2) and the destructor's place (O15: where its holder lets go) are not what runs.

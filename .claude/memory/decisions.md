---
name: decisions
description: "Ledger of every olang decision I flagged for the user that is still unanswered - question, default in effect meanwhile, my recommendation; re-raise when the area comes up"
metadata:
  node_type: memory
  type: project
  originSessionId: 7f2a5325-2cc9-4c97-9679-ec83bcdf63a5
  modified: 2026-10-17
---

Every question I put to the user goes here the moment I ask it, and leaves only when they answer - the answer then goes
into CLAUDE.md/HISTORY.md as any design decision does. Unanswered is not consent: the default stays in effect and the
entry is re-raised when its area comes up or at the end of a report. One decision per number, each with the default in
effect and my recommendation. See rules.md, "How to decide and record". Rebuilt 2026-10-08 after an audit of
CLAUDE.md, HISTORY.md and the old ledger (the full old ledger is in git at bc9f9c9). Slimmed 2026-10-17: answered questions and the numbered decisions 1-51 are in archive/decisions_log.md (not imported). Recorded future work that asks
nothing of the user is in plan.md, not here.

(Entries before 2026-11-01 - every one answered or overtaken, their answers in CLAUDE.md and HISTORY.md - moved to
archive/decisions_log.md on 2026-11-07 to keep the context every session and agent loads small.)

- Bulk review 5's findings DECIDED by me 2026-11-01 (the user absent; /home/user/review/bulk5): (1) read-only is a
  property of the level reached, followed through every dereference, index, method result and immutable-global root,
  and a copy on entry keeps inner levels read-only (element writes through bare parameters and globals segfaulted on
  constant data); (2) a bare parameter's own storage is tracked as kept through locals, conditionals, slices, captures
  and storing calls - unsure counts as kept, the caller copies; (3) 2.10's alias hole is closed before the flip: a bare
  argument goes by pointer only where nothing the call reaches may write storage of its type (a call through a function
  value or `any` may), else the caller passes a copy; (4) an `any` made from a bare parameter boxes a copy (by-pointer
  never observable through identity); (5) a bare `String` parameter fits `fn(x T) T`. All handed to round 2f first.
- QCI ASKED 2026-11-01 (the user: "Where do we actually need null?"). Measured: compiler/ 568 `?&` types and ~1,200
  null tests, std 28 `?&`. Where null stands today: (1) `?&` references - stored absence (links, optional tree parts,
  caches, cursors); (2) error values - `null` is "no error", their zero; (3) function values - nullable by default
  (T21), a call through a null one traps, the one null no type marks; (4) `null` for an array names its empty one.
  Recommended: keep (1) and (2); make function values never null (a function-typed field or local with no value is
  definitely initialised, D13d; absence by `?&`-style marking or an enum if ever needed), and drop (4) (`null` for an
  array is a second spelling of empty). In effect: today's rules.
- QCI 4 ANSWERED 2026-11-01 (the user: "No, an array reference that isn't pointing at a valid array should be null"):
  REVERSES my "an array is never null" (T2c's array rule). `Array<T>?&` / `String?&` are allowed and mean "may be
  absent", null distinct from empty, narrowed as every `?&` (S8e), `x!` on null, `x is null` a real test. Details
  (mine): a never-null `Array<T>&` and a value array keep the empty array as their zero (a valid array, so D13c loses
  nothing); `null` where a never-null array is wanted becomes an error (it no longer names the empty array); the
  compiler's absent-vs-empty flags (`Catch.Braced`, `Func.Bodied`) may go back to `?&` in the refactor. QCI 3
  (function values never null) still ASKED. Queued after the rework lands (the checker's files), with migration by
  `olang fix` (null_migrate) for `null` written as an empty array.
- QCJ ASKED 2026-11-01 (the user: "any variables can never be by value or what?"): today an `any Trait&` is two words,
  a pointer to the instance and a table - always a reference (types differ in size), `mut any` the writable form;
  numbers/arrays are copied into a box, struct/enum variables borrowed. QCC removes `mut`, and the rework never said
  what replaces `mut any` - found by the question. Proposed: `any W&` shares the instance and may write it (QCC's `&`);
  `any W` (no `&`, an error today naming `any W&`) is the value form - read-only through it, its instance its own as a
  bare parameter's is (boxed where it is made, uncopied where nothing may change the source, copied where it may);
  copying an `any W` copies the handle, never the instance (nothing writes through it, so unobservable). Recommended
  yes - read-only said by a value, everywhere. In effect: `any W&` / `mut any W&`.
- QCJ ANSWERED 2026-11-01 (the user: "Ye, that is good for any, but we must still refuse where there might be side
  effects"): `any W&` shares and may write, `any W` is the read-only value form, copying an `any W` copies the handle.
  But no hidden copy: an `any W` made from a source something may change while the any lives (a write the compiler
  cannot rule out, a call to C, a function value, another `any`) is an ERROR naming `.Clone()` (a copy written) or
  `any W&` (shared) - never a silent box copy. Built in round 4 with `mut`'s removal. ASKED with it: should the same
  "refuse, never copy silently" rule replace the rework's hidden copies for bare parameters too (D9e: a kept bare
  parameter copied by the caller; 2.10: a bare argument copied where the call may write its type; a task's bare
  argument at a spawn)? Recommended: yes for kept parameters and spawns (an error naming `.Clone()` or `p T&` -
  rare, and a copy then is written); for 2.10's call-may-write case an error would hit ordinary calls into C and
  callbacks, so keep that copy. In effect: the rework's copies.
- Refuse-vs-copy (1), ANSWERED 2026-11-01 (the user: "copying by assigning to a value variable from a reference
  variable should be fine. No copy needed. In fact, copy should go as a method"): a copy is written as an assignment
  to a value place (`c Pt = p`, `s String = t` - E12's reference-into-value copy), which is visible, so a kept bare
  parameter is refused (no hidden caller copy, D9e's copy goes) with an error naming that assignment or `p T&`.
  Reading taken (stated to the user): "copy should go as a method" = `.Clone()` is removed, the value assignment is the
  one way to copy (6 Clone methods in std: Array, Map, Vec, set, list, deque; 41 uses). ASKED with it: a handle's value
  (Vec, Map, list.List, Set, Deque) is the handle itself, so `w Vec<I64> = v` names the same Vec - the value assignment
  cannot copy one. Options: (a) handles copy on a value assignment from a `&` (`w Vec<I64> = vr` with `vr Vec<I64>&`)
  and share on `:=`; (b) keep Clone() for handles only; (c) handles stop being handles (a Vec value owns its buffer,
  a copy copies; sharing written `Vec<T>&`). Recommended (c) eventually - it is QCE's rule for every type - but it
  changes Vec/Map's meaning everywhere (std, compiler); (b) until then. Spawns (2) asked again with it.
- Handles, the user 2026-11-01 ("arrays own memory and so an array copy is a copy of the array memory. A vec owns an
  array as a value so a copy of a vec is a copy of the array and thus the memory too"): read as choosing option (c)
  of the handles question. Answered: true of arrays (a value array owns its elements; QCE extends it into structs),
  not of today's Vec (a handle, SPEC T8: a copy is a second name). PROPOSED with it: (c) for every handle type - Vec,
  Map, list.List, set.Set, deque.Deque, StringBuilder - a value owns its storage, a copy into a value place copies it
  (elided where neither side is written or kept afterwards, QCE's rule), sharing is written `&`, `.Clone()` removed;
  in-place change of a collection inside a collection goes through a `&` result on a `&` receiver (`m.At(k)` giving
  `V&`, D9g allows it) or `Update` - `v := try m.Get(k); v.Push(x)` no longer changes the map (mine); a migration tool
  marks every old handle copy whose sharing is observed (either side written after) as `&` before the flip (mine).
  Built with QCE in round 3. ASKED: confirm (c), and that it covers every handle type, not only Vec. Rec yes.
- Handles DECIDED 2026-11-01 (the user: "Lists should have a clone method to clone the entire list since holding a
  list just means holding the first entry ... Whether or not arrays and thus vecs etc should hold the array by ref or
  by value is up to you"): a copy is shallow at every `&` (the user's rule: owning a reference is never a deep copy).
  list.List stays a handle - its value is one reference, all its state behind it, so a value copy is a second name -
  and keeps `l.Clone()`; `Clone()` stays exactly on types whose value is a reference. Mine (delegated): Vec, Map, Set,
  Deque, Heap and StringBuilder hold their storage by value (they own their arrays; a copy copies them, shallow at
  references; growth replaces the owned array) - one copy rule with Array, QCC's bare-parameter promise without the
  handle special case, bulk review 5's handle aliasing (F2/F3) gone, QCE's Map<String, V> the same rule, tasks get
  their own; costs: O(n) `w := v` (visible, elided where neither side is written or kept), sharing written `&`,
  in-place change of a nested collection through a `&` accessor (`m.At(k).Push(x)`), a migration tool marking
  observed-sharing copies `&`. Their Clone() goes (a value assignment copies). Round 3, with QCE.
- Copies, the user 2026-11-01 ("for C calls, always copy. callbacks, tell me about it. Any tell me about it. can't
  function values have a null ref option too?"): C - always copy recorded; ASKED: skip the copy where the header's
  parameter is `const T*` (C's own promise, stated unchecked like X1a) - rec yes (else every buffer to write() is
  copied). Callbacks/any explained (code behind chosen at run time; a lambda written at the call is read precisely).
  ASKED: (a) copy only where the code behind is unseen (rec), (b) refuse, (c) a "writes T" effect on function types.
  Spawns explained again (judged by storage type over the visible join block, so refusal can be a false positive);
  rec still refuse, copy the gentler option - ASKED. QCI 3 PROPOSED: function values never null by default, optional
  written `(fn(x I64) I64)?&` (reference-like: two words, identity), narrowed as any `?&`, `f!`; the parentheses an
  exception to L18c's "group nothing else" - ASKED.
- Copies DECIDED 2026-11-01 (the user: "1) copy 2) trust the const 3) a 4) let's talk about it more"): (1) a spawned
  task's bare argument is copied at the spawn where the join block may write its storage type (as round 2f built); (2)
  calls into C copy a bare argument passed to a non-const pointer, none for a header's `const T*` (C's promise, stated
  unchecked as X1a); (3) callbacks and `any`: a bare argument held across a call whose code is unseen is copied (only
  the parts that may change, listed by -memory); a lambda written at the call is read. QCI 3 under discussion.
- QCI 3 laid out 2026-11-01: (a) `(fn(x I64) I64)?&` - muddies QCC's `&` (may write) and needs parentheses; (b) never
  null, absence a do-nothing default (`onClick fn(e Event) = fn(e): return`, its zero value), "is it set?" by an enum
  or a nullable struct - rec; (c) `fn?(e Event)` - no `&`, a second nullable spelling, near error sets. ASKED.
- C pointers, the user 2026-11-01 ("if it is declared as PTR in C we never copy right?"): yes - C's `T*` is olang's
  `p T&` (shared, may write: no copy), `const T*` a bare parameter (no copy), `T` by value C's own copy. ASKED for the
  one case left (read-only data - a bare parameter, constant data - passed to a non-const `T*`, common with old C APIs
  that omit const): (1) an error naming the written copy, as for an olang `&` parameter - lean; (2) a hidden copy.
- Copies, one rule DECIDED 2026-11-01 (the user: "two problems in one ... we don't want a function to modify a value it
  isn't allowed to by a PTR it got and we don't want the value behind to change accidentally while the function thinks
  it can't change. For non-const ... we must copy"): a bare value is passed by pointer and copied exactly where one of
  two guarantees cannot be proved, only the parts that may change, listed by -memory. (A) the callee does not write it:
  an olang body is checked (never a copy); C's `const T*` trusted; a non-const `T*` given `&` shares (no copy), given
  bare data copies. (B) nothing else changes it during the call: seen code (bodies, a lambda at the call) analysed;
  unseen code (function values, `any`, a spawn's join block) copies; a C call copies only if some export fn may write
  that storage type (C may call back); another thread outside a join is the program's own race (-race), no copy.
  Answers the read-only-to-non-const question: copy.
- C `T*` clarified 2026-11-01 (the user: "* should translate to 'as a reference' so the value should be borrowed"):
  `T*` is `p T&`; an owned value (a local, a field through one) is borrowed writably, no copy; only a source that cannot
  be borrowed writably (a bare parameter, constant data, an immutable global, a read-only view) is copied for C (an
  error for an olang `&` parameter).
- Rework round 2f's two questions DECIDED by me 2026-11-01 (the user's QCC rule applied; theirs to review): (1) a bare
  parameter given whole to an olang or C `&` parameter stays the body's own copy, made on entry (D9, QCC: a bare
  parameter may write its own copy) - not an error; only constant data, an immutable global and a read-only view are
  errors for an olang `&` (copied for C). (2) a function that only hands back views of what it is given (`Split`,
  `Lines`, `filepath.Dir`, compiler/'s tree readers `callOf`, `patTail`) takes its input bare and returns a VALUE,
  handed over uncopied where nothing changes the source (D9h generalized to every value result and to elements), and
  says absence by an error, never `?&` (no nullable value form - QAZ - and "errors are errors"); neither of round 2f's
  options (a `&` result following its argument's permission would hide read-only behind `&`, against "every `&` a
  signature shows is writable"). Needs round 3's value arrays inside values (`Vec<String>` elements by value), so round
  3 runs before compiler/ is taken to zero.
- Rework round 3 (first part, fc15caa) - its three questions DECIDED by me 2026-11-01 (user absent; theirs to review):
  (1) the value-result handover comes next, before more callers move to copies: section 8 reads a local holding only
  views of sources nothing changes as the source's own storage, so Split pieces, walk elements and readers' results are
  read in place, and a copy is made only where one is kept or written (D9h generalized - the two-guarantee rule);
  (2) the implicit fit `Array<R&>` into `Array<R>` stays - it is QCE's "a store copies into value storage", made where
  someone wrote the store, lent as is to a bare parameter; (3) `Iter()`/`Lines()` copying their array or text is
  accepted only under the switches, until (1) lands, and must be gone before the flip (bench measured under the
  switches). The agent's eight details (docs/rework.md 16.2) stand; 8 (owned parts not counted in `admitsAt`) is for
  the bulk review.
- Rework round 3b (768c646) - its four questions DECIDED by me 2026-11-01 (user absent; theirs to review): (1) every
  built result returned as `T&` (new storage) becomes a value result, as `ToString` did - QCC's rule that read-only
  and new storage are said by a value; the handover (D9h) keeps it free; param_migrate rewrites them; (2) the order:
  compiler/ to zero errors under the switches first (it blocks the self-build and the flip), then handles as values,
  then item 2.10's partial copies; (3) handles as values confirmed as docs/rework.md 16.6 item 4 has it - `Clone()`
  leaves value types, List stays a handle with Clone; (4) a result's link to its argument's permission through a nested
  call is fixed in the checker, not by hand forms (list's `Last` back to its plain form once it is). The agent's nine
  details (docs/rework.md 17.3) stand; 2 (a constructor's kept instance copying its fresh parts again) is item 2.10's.
- QCI 3, the user 2026-11-01: "What if we put the null marker after fn?" - read as `fn?(e Event)`. Answered: a
  function value has no `&` to put `?` on, so the marker goes on the word that says "this is a function value", as
  `?&` sits on the reference marker; never in a declaration (`fn name(` has a name) or a lambda (never null), so `fn?(`
  parses with one token of lookahead; the error set stays after the result (`fn?(x I64) I64 ? E`). PROPOSED (rec):
  function values never null unless written `fn?(...)`; `fn?` has `?&`'s rules (null its zero, `is null` / `is not
  null` narrowing locals and parameters, `f!`, a `fn(...)` flows into `fn?(...)`, nothing called through one before
  narrowing); a plain `fn(...)` field or local has no zero value, so it is assigned before any read (D13d) or given a
  do-nothing default. Combines (b) and (c). ASKED to confirm. In effect: function values nullable (T21).
- QCI 3, the user 2026-11-01: "fns are always referenced so maybe do fn?&() And as a type `type MyFuncType fn()` ...
  written `f MyFunc?&` normally?" PROPOSED (rec): `?&` is the one nullable marker, functions included - `fn?&(e Event)`,
  and with a declared function type `h Handler?&`; a plain `fn(e Event)` / `Handler` never null (no zero value: D13d
  or a default); `fn&` alone is no form (QCC: a written `&` says "may write", and nothing writes through a function
  value), while `?&` already promises no writing (a nullable parameter is read-only unless its body writes, SPEC D9) -
  so `?&` means "a reference that may be absent" everywhere. The marker sits on `fn`, never after the signature
  (`fn() Node?&` is a function giving a nullable Node). New with it: declared function types `type Handler fn(e Event)`
  (none today; T29 covers numbers, arrays, structs) - nominal as T29, a function or lambda fitting one directly (mine:
  nothing to convert). ASKED to confirm. In effect: function values nullable (T21).
- QCI 3, the user 2026-11-01: "Only function declarations don't have &". Read as: a function type is written with its
  reference marker everywhere - `f fn&(e Event)` never null, `f fn?&(e Event)` nullable, `type Handler fn(e Event)`
  declares one and its uses are `Handler&` / `Handler?&`; only `fn name(...)` declarations (and lambdas, which are
  definitions) have none. PROPOSED (rec yes): function types become reference-only, as destructor types already are
  (C11: always written `T&`), a bare `fn(...)` or `Handler` as a type an error naming the `&`; QCC's "a `&` may write"
  and its never-written-`&` check (D9d) do not apply to them - nothing writes through a function value, so no reader
  can wonder whether a callee changes one; every function type in the repository gains its `&` by a tool in `olang
  fix`. ASKED to confirm. In effect: function values nullable (T21), written bare.
- QCI 3 DECIDED 2026-11-01 (the user: "g Handler should not be possible because a function can never be a value" -
  read as yes to the reference-only proposal, stated to the user): function types are reference-only - `fn&(...)` /
  `Handler&` never null, `fn?&(...)` / `Handler?&` nullable, a bare `fn(...)` or `Handler` as a type an error naming
  the `&`; declarations and lambdas carry no `&`; declared function types `type Handler fn(e Event)` added; QCC's
  "may write" and D9d's check do not apply to them. Queued after the rework with QCI 4 (nullable arrays), migrated by a
  tool in `olang fix`.
- QCK ASKED 2026-11-01 (the user: "Is the mutable by ref and not by value rule sound now that you have tried it out a
  bit? We could go back to using mut for parameters?"). Answered from rounds 2a-3b: sound only as far as the compiler
  proves two guarantees for every bare argument it passes by pointer, else a hidden copy (C non-const pointers,
  callbacks, `any`, spawns); bulk review 5 found real holes there (writes through bare parameters into constant data,
  the 2.10 aliasing hole), all fixed, and most of rounds 2b-3b's machinery (per-level inferred permission, field
  inference, D9h's handover, readers rewritten to give values, the 64 compiler/ errors left) exists to recover what a
  read-only `T&` gave for free. PROPOSED (rec): go back to `mut` on references - `p mut T&` may write the caller's,
  `p T&` a read-only shared view (no copy, no proof), `p T` a value (a copy by meaning; passing it by pointer stays an
  optimization where unobservable, so a missed proof costs speed, never soundness) - which is today's default path;
  keep round 1 (scopes inferred), round 3's QCE (value arrays inside values, `Map<String, V>`), D9h's handover as an
  optimization, handles as values, QCI 3/4; drop OLANG_PARAMS=new (QCC's "& may write", D9d-D9g, param_migrate,
  FRO). Round 3c (compiler/ to zero under the switches) would be mostly discarded - offered to pause it. In effect: QCC.
- QCK DECIDED 2026-11-01 (the user: "Yes, pause it and go back to mut"): QCC's parameter half is REVERSED before it
  landed - `p mut T&` may write the caller's, `p T&` is a read-only shared view, `p T` a value (a copy by meaning,
  passed by pointer only as an unobservable optimization); `mut` stays on references at every level (T25b/T25c, today's
  default path); a getter may hand back a read-only `T&`. Dropped: OLANG_PARAMS=new, "every `&` may write", D9d-D9g and
  the forgotten-`&` checks, param_migrate and its hand forms, read-only-field inference, verify-params. Kept (moved off
  the params switch): round 1's inferred scopes (OLANG_SCOPES=infer, flipped in round 4), QCE (value arrays held by
  value inside values, `Map<String, V>` owning its keys, a store copies in), D9h's handover as an optimization, handles
  as values (Vec, Map, Set, Deque, Heap, StringBuilder; List a handle with Clone), QCI 3/4 (`fn&`/`fn?&`, nullable
  arrays), the C rule (`T*` is `mut T&`, `const T*` is `T&`). Moot with it: QCJ's `any W` value form (`any W&` read-only,
  `mut any W&` writable stay as today; no silent box copy stays), D9e's refusal of a kept bare parameter (a bare
  parameter is the callee's own copy again). Round 3c paused (WIP on wt-rework).
- `any` layout CONFIRMED 2026-11-01 (the user: "Good, keep it that way"): an `any Trait&` is two words, the instance
  and a static table per (type, trait) - identity, `$`'s renderings, the slot functions, never the instance's size;
  nothing through an `any` copies or lays out its instance. The reference-only types, always written `&`: `any W&`,
  function types (`fn&`, QCI 3), types with a destructor (C11) and extern types (`extern type Db`, X10).
- Copies CONFIRMED 2026-11-01 (the user: "Good, keep it that way"): a written value place copies from a reference of a
  type held both ways (E12; the one way to copy a value type once `Clone()` leaves them, List keeping its own); `:=`
  copies nothing (it takes the right side's type); a reference-only type (any, function types, destructor types,
  extern types) has no value form - the bare type is the error, naming its `&`.
- My calls REVIEWED 2026-11-01 (the user: "All good. Especially important that you keep scope analysis compile-time
  only as with 3)"): all twelve stand. Standing rule: scope analysis is compile-time only - no run-time scope word per
  instance or field, ever; a shape inference cannot place is a compile error naming the fix. Correction to QCI 3 (the
  user: "a type declarations never declared reference markers"): `type Handler fn(e Event)` declares the type with no
  `&`; only a place holding one writes it - `h Handler&`, `h Handler?&`, `onClick fn&(e Event)` (a field, local or
  parameter). As every type declaration: `type Node struct ...` is held as `Node&`.
- Rework round 3d (d860e96, back to mut) - its two questions DECIDED by me 2026-11-01 (theirs to review): (1) D9a
  (a run-time array by value an error) and D9c (the 128-byte cap) are lifted for every parameter, as the user's QCE
  decision of 2026-10-31 said: a bare parameter is a value, so a by-value argument is a copy by meaning, made at the
  call and elided where nothing could tell (D9h's facts) - the same copy rule as a value owning parts (3d's
  `check.valueArg`); built with handles as values (one copy machinery); G29's per-length instances stay only where a
  body decides on the length; (2) `Vec<String>.Join` comes with handles as values (Vec a value). The agent's eight
  details (docs/rework.md 18.7) stand; 7 (D9h's quiet reading limited by a program-wide check for writable globals) for
  the bulk review.
- Handles as values (wt-values fea8d30) - its three questions DECIDED by me 2026-11-02 (theirs to review): (1) early
  freeing reaches parts owned by values held in place (a Map by value in a field, a Vec as a Map's value) - an
  optimization, so mine: built in the round after round 4 (server.olang 145 MB, mapvec 66 MB until then; the fixtures
  hold them by `&` meanwhile); (2) a mutating call through `x[i]` goes through `RefMut` in place where the type has one,
  as a store now does (one rule, E31b); without one it stays the error naming `x.RefMut(i)`; (3) Map growth lets its old
  slot arrays go early where the early-freeing analysis proves no `Ref` of that Map is live, else they stay retired
  until the scope closes (a Ref must never dangle) - with (1). The agent's fourteen details stand (docs/rework.md 19);
  5 (the section-8 relaxations owns, viewed, ownCall, splitHeld) and 10 (a stale `Ref` after growth caught only by
  -sanitize and the evaluator) for the bulk review. handles_migrate stays out of `olang fix` (not idempotent, as
  io_print), kept for oann's catch-up.
- Rework round 4 (the flip, bc0737c) - its two questions DECIDED by me 2026-11-02 (theirs to review): (1) a reference
  result is as writable as its signature writes (`mut T&` where the caller may write it) - T25b's rule, permission part
  of the type, with no special case for "built" results; a constructor's result stays writable; (2) open point 5 (a
  function type's `T&` result read as borrowed from its `&` parameters - the user approved it as my call 2 on
  2026-11-01) is built next, in round 4b, with the scope phase's compile time (3.4 s against the base's 0.98 s on
  compiler/ - must come down: the user's compile-speed priority), the vec gather +6.6%, small-block folding and the
  115 new run cases' stored outputs (rungold). The agent's four details stand; 3 (`&` followed by an operand on its
  line is the bitwise operator) for the bulk review.
- Rework round 4b (921498e) - its two questions DECIDED by me 2026-11-02 (theirs to review): (1) no callee
  result-size summary for folding: the prototype folding every temporary-only block moved no bench row, so every block
  keeps its scope unless real code shows the cost; (2) the inference's new fixed point on compiler/ (208 locals lifted
  instead of 234, `Server` field 0 promoted) is accepted - it is checked by a full reporting judging, and fewer lifts.
  The agent's six details stand; 3 (a call through a function value may refuse where the direct call builds the
  argument longer) and 5 (the reuse comparison ignoring E11c's build-site note) for the bulk review.
- Early freeing round 8 (wt-free5 144f971) and Part B's plan - its four questions DECIDED by me 2026-11-02 (theirs to
  review): (1) a nullable function type is a flag on the function type entry, two words, a null code pointer its null;
  (2) a nullable array's null is a length sentinel `{-1, null}`, all-zero bits staying the empty array (the zero value),
  `is null` testing the length - no zero value changes; (3) declared function types (`type Handler fn(...)`) come right
  after `fn&`/`fn?&` in the same batch; (4) in-place calls through `x[i]` keep plain arguments only (no reordering of
  what the user sees). The agent's six details stand; 1, 2 and 6 for the bulk review.
- QCI 3/4 built (wt-fnref 6c241ad) - its two questions DECIDED by me 2026-11-02 (theirs to review): (1) an
  `Array<T>?&` / `String?&` declared with no value starts as `null`, as every `?&` does - one rule ("null its zero"),
  and the user's "an array reference that isn't pointing at a valid array should be null"; the agent's decision 1
  (empty) is reversed; a never-null array and a value array keep the empty array as their zero (my earlier "no zero
  value changes" meant those); the sentinel is written only where a `?&` array is made without a value - fixed in the
  bulk review's fix round; (2) declared function types take no type parameters for now (additive later; the tag can
  carry an instance). The agent's other seven details stand; 3 (fnref_migrate a text tool, `?&`/`!` left to
  null_migrate) and 8 (`Catch.Braced`/`Func.Bodied` stay flags) for the bulk review.
- Front-end refactor (wt-refront 4296278) - its three questions DECIDED by me 2026-11-02 (theirs to review): (1) the
  dead scope-argument field (`typed.Call.Scoped`, `ScopedCall`, `ScopedArray`) and `types.Owning` (from the removed
  `own`) are removed in a joint pass once the back-end refactor merges, with interp's copy of `writtenMut` and the stale
  `Iterator<T&p>` comments; (2) checkdiff and scopediff (stage-0 parity tools, not in verify) are deleted in that pass,
  emitdiff/evaldiff merged where verify runs them; (3) continuation lines keep the files' alignment under the open
  bracket - the limit counts blocks, not wrapped lines.
- Back-end refactor (wt-reback) - its three questions DECIDED by me 2026-11-02 (theirs to review): (1) the joint
  cleanup pass rewords `msgs.NoteMakeWhere` (it still names `f&x(...)`) and fixes the parser refusing `if c: a, b = x, y`
  (a parallel assignment read as a declaration under S1b); (2) the same pass takes `Call.Scoped`/`ScopedCall`/
  `ScopedArray` out of typed.olang and moves the three cross-module duplicates (partOf/partLvalue, calleeOf/calleeBody,
  callOf/callOfExpr) into typed.olang; (3) +0.11% scope-phase instructions for the split `Scoper.call` is accepted.
- Bulk review 6 (/home/user/review/bulk6, at 5357ee7: no use-after-free; 7 wrong results, 5 over-rejections, 1 memory,
  diagnostics) - directions DECIDED by me 2026-11-02 for the fix round (theirs to review), "when in doubt, refuse or
  copy - never a wrong answer": F1 an in-place call through `x[i]` (RefMut) also judges the method's and plain
  constructors' bodies (may they grow/write the collection, through a global, a closure, an `any`) - unsure keeps the
  E31b error; F2 D9h's life check counts a call reaching a `mut` reference to the held view's storage type through any
  argument's fields as a write (by type), unsure copies; F3 `owns`/`viewed` apply only where the callee keeps nothing -
  a loop turn's owning value lent to a constructor that keeps it is refused (as C2d refuses one owning nothing), naming
  a value field or a written copy; F4 a nested null `?&` array renders `null` (run and evaluator); F5 is the tidy pass's;
  F6 SPEC follows the code - a stale view or Ref after growth reads the retired buffer, whose moved-out owning elements
  are empty (memory-safe; -sanitize and the evaluator stop on it), M19d and interpret's message reworded; F7 M19g
  refuses a `Ref`/`RefMut` (Vec, Map) used after a growth of the same collection in the same function, as it refuses a
  view; F8-F12 the over-rejections fixed where the rule allows it (G29 by a run-time length per SPEC, with the G9
  message corrected); F13 early freeing reaches a Vec local reassigned in a loop and a Vec field of a constructed struct
  (the `-memory` reason "a call's value copied" for a constructor call is the bug); F14 errors said at the program's
  call, not inside std, and one error per cause (D3b not beside O27). The reviewer's decision reviews stand.
- Tidy pass (wt-tidy 94e75ae) - its three questions DECIDED by me 2026-11-02: (1) an enum's zero gives a `?&` payload
  field null too, as every `?&` zero is null - in the bulk-6 fix round; (2) shared.olang's test names naming `f&x()` /
  `&return` are renamed in the fix round, which recaptures run.txt anyway; (3) MIR's `Give`/`RegisterOwner` removed is
  fine (never lowered; `own` is gone).
- Bulk review 6 fix round (wt-bfix6 6797652) - its two questions DECIDED by me 2026-11-02: (1) the four relaxations
  (lambdas capturing a local array or reference, returned; a slice of a copy returned; a local copied from another place
  returned) stand - inference places their storage where the result goes, which QCB asks for - but get a narrow
  soundness review before the first version is called done, with F13's FreshCtorAt (which read freed storage in an
  earlier version); (2) `held/gen_walkkept`'s two errors for one cause collapse in a later round (a diagnostic). The
  agent's six details stand.
- Bulk review 6b (/home/user/review/bulk6b, narrow, at 3b51cc9: the fix round's relaxations held) - directions DECIDED
  by me 2026-11-02: F3 (soundness, older) a generator's lambda capturing a reference local from a built call lands that
  call's result where the generator lives, not in the first Next's scope; F1 a non-math, non-runtime extern is Unknown
  in the effect summaries wherever the program has an export fn (as free.olang already says); F2 destructors count in
  the effect summaries (WritesGlobals, Allocates, the effects line, in-place calls); F4 M19g follows a Ref reached
  through an index or a call's result held across a growth by the same route (unsure: refused), and the Map's copy
  helper allocates on the own-chunk path so -sanitize protects a retired array; F5 F9's capture flow follows captured
  function values; F6 the three diagnostics (C2d naming Clone for a Vec, M19g twice, M19g's Map note).
- Fix round 6b (wt-bfix6b 11b8d38) - its two questions DECIDED by me 2026-11-02: (1) the reference-local
  over-rejection (`x String& = ""` then assigning a shorter-lived view infers the program's scope) is fixed after the
  first version - such a local's scope inferred from all its assignments, not its initializer's constant - which also
  makes compiler/tools' scopedump/lowerdump/emitdump build again; (2) in a program with an export fn, a C call outside
  C's math, the runtime and the quick list stays "anything" (free.olang's condition 3) - no widening to read/write. The
  agent's four details stand (F3 fixed in emit: the environment slot kept in the coroutine frame).
- My calls REVIEWED 2026-11-03 (the user, by number, over the 30-item overview): 6 kept ("since we lose information,
  can become stricter"); 24 the user: declared function types "should be parameterizable, probably" - agreed,
  `type Pred<T> fn(x T) Bool` queued; 27 the user: "extend this to some other known functions" - PROPOSED: C can call
  the program only through an export fn whose address it was given, so a C call is "anything" only in a program that
  hands an export fn to C (or is built -library), and even then not for C functions that take no function pointer and
  are known not to keep one (libc's I/O, string, memory, time) - ASKED to confirm. 3: tested - the shape it refused
  (`last String& = ""` set later from one of two parameters) compiles now (round 4b's field inference) and runs clean
  under -sanitize; only the "no run-time scope word" part stands. 14/15 (RefMut, in-place calls), 16 (stale views:
  "some kind of null thing", performance first), 17, 18, 25 and 26 (C function pointers nullable) explained.
- QCL ASKED 2026-11-03 (the user: "maybe we should make Vecs only be holdable as a reference ... any reference to a Vec
  can always know the length ... I think the Deque/HashMap/Vec thing might have made things worse"): reverse handles
  as values for the growable collections - Vec, Map, Set, Deque, Heap, StringBuilder reference-only, as destructor
  types, `any` and function types are (`v Vec<I64>&`, a bare `Vec<I64>` an error naming `&`), a copy written
  `v.Clone()` (List's form, Clone back), sharing visible as `&`; then `v[i].Push(x)` on a `Vec<Vec<I64>&>` and
  `try m.Get(k)` changing the map's Vec just work, `Ref`/`RefMut` go, and every holder sees the Vec's current buffer
  and length (no stale Vec, only stale views/element references into the buffer, as today). Costs: one indirection
  per access (measured 7.7% on a Vec-heavy bench when it went away), a record allocated per collection; arrays stay
  values (QCE). Recommended yes. In effect: collections as values.
- 2026-11-03 (the user: "The rest are fine, by the way"): every other call of the 30-item overview stands. Still asked:
  QCL (collections reference-only, recommended yes), 26 (C function pointers `fn?&` as now, or `fn&`), 27's sharper
  rule (C calls "anything" only where an export fn was handed to C or the program is a -library; libc's I/O, string,
  memory, time exempt even then - recommended).
- QCL DECIDED 2026-11-03 (the user: "collections as references only"): Vec, Map, Set, Deque, Heap, StringBuilder are
  reference-only (`v Vec<I64>&`, a bare type an error naming `&`), `Clone()` back on them, `Ref`/`RefMut` and the
  in-place `x[i]` machinery go; arrays stay values (QCE). 26 DECIDED (the user: "I get it now. You're right"): C
  function pointers stay `fn?&`. 27 DECIDED (the user: "do the sharper rule"): a C call is "anything" only in a program
  that hands an export fn to C or is built -library, and then not for libc's I/O, string, memory and time functions.
- 17 revisited 2026-11-03 (the user: "Shouldn't 17 construct a new array object for every loop iteration?"): answered -
  each turn does make a new Vec, but `v` is a frame slot reused every turn and the Holder keeps a reference to the slot;
  under QCL the Vec is an object built where it is kept, so the example just works; for a plain struct local kept by
  reference past its turn, PROPOSED (rec): build it where the reference is kept (QCB's "a value kept longer is built
  directly where it is kept"), a new object per turn, instead of bulk review 6's F3 refusal. ASKED.
- QCN ASKED 2026-11-03 (the user: "a way to declare structs, maybe types in general, as only holdable by reference ...
  destructors that can be held as values as well ... different mechanics"): PROPOSED (rec): a word in the declaration
  making a type reference-only (`type Window shared struct(...)` - spelling open: shared / object / ref), the
  collections and extern types reference-only through it; destructor types no longer reference-only by that alone but
  never copied - a value of one is built where it lives, passed by `&` or as a bare parameter (read, never copied), and
  any copy of it is an error (so the destructor still runs once, O16); a struct holding one by value inherits the
  no-copy rule. ASKED.
- QCO TO EXPLORE 2026-11-03 (the user: "I still want to explore having immutable as a keyword for the structs, or
  maybe for types in general" - QCE had declined immutable types): sketch given - `type Config immutable struct(...)`,
  no field written after its constructor through any reference, deep (fields values, arrays, or references to
  immutable types), so a `Config&` is safe to share across tasks and as a Map key by contents, `mut Config&` an error,
  baked freely by the evaluator; open: deep vs shallow, whether String becomes immutable (QCE option c), how it meets
  collections now reference-only, whether `immutable` also applies to a single place. Not decided.
- QCO, the user 2026-11-03: String becomes immutable ("especially important for map with strings"), with runtime
  building as methods on the String type; field immutability follows the field's type (immutable fields not needed);
  the reference-only word: `ref` ("short"). PROPOSED for building: String's methods give new Strings (`s.Append(x)`,
  Replace, Join, adjacency as today), and `s = s.Append(x)` reuses s's buffer in place where the compiler proves s's
  old value has no other holder (the early-freeing analysis), so a loop of appends is amortised O(1) like a Vec's push
  - immutable in meaning, growth in place as an optimization; StringBuilder then goes. ASKED.
- QCN, the user 2026-11-03 asked for one mechanism instead of reference-only plus destructors. PROPOSED (rec): `ref` is
  the one concept - a type with identity: never copied, only held through `&`/`?&`, may have a destructor; a destructor
  is allowed only on a `ref` type (an error naming `ref` otherwise - C11's "a destructor makes a type reference-only"
  becomes written); collections, extern types, `any` and function types are ref; the compiler lays a ref instance out
  inline in its container where the container is its only holder (an optimization, as early freeing is), which gives
  "a File inside a struct by value" its speed without a no-copy value kind. ASKED.
- QCN reshaped by the user 2026-11-03 ("we still need to be able to ... lay this destructor struct out in memory ...
  the restriction should go the other way ... every type that has a destructor should need the owned word ... not
  copyable ... only exist at one place ... references to it, where it's declared as a value, should be fine ... ref is
  the wrong word, and shared is also the wrong word ... it can only be a value in one place ... a better idea?").
  PROPOSED (rec): the word `unique` (alternatives `owned`, `single`, `sole`) - `type File unique struct(...)`: a value
  of it lives in exactly one place (a local, field, element, global), held by value and laid out there; references to
  it are fine (scopes keep them shorter); it is never copied - `w := f`, `w File = f`, passing it by value or storing a
  named one is an error naming a reference or a written `Clone()` the type declares; a fresh value lands where it is
  put (a constructor call, a call's result, `v.Push(File(...))`, `return f`, `m.Take(k)`), so no move tracking (no
  `take`); a destructor requires `unique` and runs once; a struct holding a unique field by value is unique itself;
  generics that copy a `T` are refused for a unique `T` at the call (G18a). With it the collections become unique
  instead of reference-only (QCL's aims kept - no hidden copies, every reference sees the current buffer and length -
  plus inline layout, so the 7.7% indirection does not come back); reference-only stays only what has no value form by
  nature (any, function types, extern handles) - no `ref` keyword. Immutable String copies free (its buffer shared).
  ASKED.
- QCN DECIDED 2026-11-03 (the user: "unique is a very good solution to this"): `unique` as proposed (one place, held by
  value, references fine, never copied, fresh values land, a destructor requires it, a holder of one by value is
  unique, generics copying T refused at the call); collections become unique values instead of reference-only (QCL's
  reference-only form superseded the same day); no `ref` keyword.
- Asked with it 2026-11-03: (1) `Clone()` is an ordinary method, not an overridden assignment - PROPOSED: `=` stays
  never a user call (a copy is written, `x = y` means `x == y`), so no overridable assignment; the operators left fixed:
  `=`/`:=`, `and`/`or`/`not`/`xor` (short-circuit), `is null`, `as`, `!`, `try`, `a if c else b`, `.`, text adjacency
  (`$x` overridable through Str); `!=`, `>`, `<=`, `>=` derived from Eq/Less - ASKED; (2) the immutable keyword: a
  different thing from unique (unique: one place, may change, has identity; immutable: never changes, so any number of
  copies are indistinguishable and a copy is a pointer copy sharing the storage - String immutable and not unique, its
  copies free); spelling PROPOSED `immut` (the user: "immute, not immutable"; reading taken: `immut`, pairing with
  `mut`), deep (everything a value reaches through its fields fixed after the constructor), `mut T&` of an immut type
  an error, a type may be both unique and immut (a destructor needs unique); String its own immut type, `Array<Char>`
  staying mutable for in-place editing - ASKED.
- Assignment, the user 2026-11-03: "the equals means equals promise already broken, because equals is overwritable".
  Conceded: with a user's `Eq`, `x = y` then `x == y` holds only as far as that Eq is a real equality - a convention,
  not a guarantee. The recommendation (assignment never a user call) stands on its other reason: an overridable `=`
  hides a copy's cost (principle 2), and for a unique type it would turn the refused copy into a silent one. ASKED
  again with `immut`.
- Assignment, the user 2026-11-03 (2): "isn't normal value copying already a copy? ... copying references, we're not
  doing any O(n) copying either way", and "a unique type simply cannot be copied ... or cloned rather". Conceded: a
  plain value's assignment already copies (deep through value arrays since QCE), so cost is no argument against an
  override. Reading taken (stated to the user): unique types are never copied by assignment, only by a `Clone()` the type
  writes. With that, PROPOSED: no overridable assignment because nothing is left for one to do - a plain type copies
  structurally, a reference copies a pointer, a unique type refuses and offers Clone(); an override is C++'s copy
  constructor (user code on every assignment and by-value pass). ASKED with `immut`.
- Assignment, the user 2026-11-03 (3): "we've basically relaxed the hidden control flow, with destructors and stuff ...
  and some of the no hidden copies rules are basically overridden". Conceded: destructors run unwritten at a scope's
  close, `$x` calls Str, operators call methods, QCE/E11b/valueArg copy at stores and calls - so principle is no bar.
  Answered on need instead: an overridable assignment (C++'s copy constructor) has no use left - a plain type copies
  structurally, a reference shares, a unique type refuses and writes Clone(), and wanting deep copies is holding by
  value (QCE); Rust, Swift, Go and Zig have none, and C++'s is a known source of bugs. Recommended: keep it fixed,
  additive later if code shows a need. ASKED.
- `immut` DECIDED as the spelling (the user 2026-11-03: "The spelling of immut is good"). The user's point: an immut
  type may hold a reference to a mutable thing, and copying it copies that reference. PROPOSED, reversing my "deep"
  lean: immut is per type and shallow - an immut type's own fields never change after its constructor; what a field
  refers to follows that field's own type (a String or another immut type is fixed, a `mut Buffer&` stays a mutable
  buffer); so a type made only of immut parts is immutable all the way down by composition. Safe as a Map key, since
  `==` and Hash on a reference are identity unless its type declares Eq; sharing such a value between tasks shares its
  mutable referents as any reference does (-race). ASKED.
- Assignment, the user 2026-11-03 (4): a use - "if you override assignment through the clone ... you can do a deep copy
  through references" (value semantics for data holding references: trees, graphs). Conceded as a real use. PROPOSED
  (option B): a type may declare `Copy()` - an operator method named for its operator as E31's are, called wherever a
  value of the type is copied (assignment to a value place, a by-value argument, a store, `:=` from a value place) -
  held to giving a fresh value and doing nothing but build it (its effects summary: allocation only, else an error), so
  the compiler leaves a copy out wherever neither side is written afterwards (D9h's two guarantees) and the elision is
  unobservable; a unique type declares no Copy (it is what forbids copies; its Clone stays explicit); generics and the
  evaluator call it as any method. Option A: no override, deep copies written as an explicit Clone(). Recommended B
  with those limits. ASKED.
- Copy DECIDED 2026-11-03 (the user): `Copy()` is the assignment operator's method (E31) - called wherever a value of
  the type is copied; the word Clone leaves the language ("clone should be copy, and where it doesn't make sense ... the
  structure is probably not optimal"); a unique type declares no Copy; a compound assignment computes its operator
  (Plus ...) first and the fresh result lands, so no Copy runs for it (mine: a fresh value is never copied); a struct
  holding a unique part may be non-unique only by declaring a Copy that builds that part fresh - copying the unique part
  inside it is an error (the user: "the copy has to not copy the unique part"); Copy builds only (allocation is its
  only effect), so the compiler leaves it out wherever neither side is written afterwards.
- immut DECIDED 2026-11-03 (the user: "pretty straightforward"): per type - nothing of an immut type changes after its
  constructor; a type may hold an immut part without being immut itself; a copy of a holder shares its immut parts
  (sharing is copying, as nobody can tell) - by the built-in copy, so no Copy method is needed for it (mine; the user had
  thought one would be); an immut type declares no Copy (its copy is a share); `mut T&` of an immut type an error;
  String immut.
- Asked 2026-11-03: how a unique collection (Vec, Map, ...) is copied now that Clone is gone and unique types have no
  Copy. PROPOSED: unique values are never copied, only built afresh from another - `v.ToVec()` (exists), `m.ToMap()`,
  `s.ToSet()` - so the cost is a written call; alternative: collections non-unique with a Copy (value semantics, copies
  elided where unobservable). Recommended the first.
- Copy, corrected by the user 2026-11-03: a compound assignment is `x = x + y` and calls Copy like any assignment
  (mine reversed); the compiler leaves a Copy of a fresh value out where nothing could tell, as any Copy.
- immut and unique, the user 2026-11-03: never both on one type ("they mean overlapping things ... I don't want
  workarounds around the unique keyword") - an error; immut values may sit as values in map entries ("especially for
  short strings"). Read and PROPOSED: an immut value has one storage that every holder shares (that is its "unique"
  side), and since nothing can change it the compiler holds it as it chooses - inline in the holder when small (a short
  String in a Map entry, no pointer), shared by a pointer when large - unobservable either way.
- unique's storage, the user 2026-11-03 ("unique things can only be held by reference ... but we also want them to
  have a storage ... a structure we want to write to a file and need the size of"): answered - unique as decided IS
  held by value in its one place and laid out there (a struct field, a Vec's buffer element, a local); every other use is
  a reference to that place; `T.Size` of a holder includes it inline; a collection's growth relocates its unique
  elements (a move of storage, never a copy - the old buffer's slots emptied).
- unique vs immut settled 2026-11-03 (the user: "the reason we need unique to be unique is in case the unique object
  changes, we cannot have copies of it. For the immutable ones, they can't change, so we can copy them all we want"):
  unique - may change, so one value and references to it; immut - cannot change, so copies are free (map entries, short
  strings inline). A unique value is held by value only where it is created - the place its constructor's (or a call's)
  fresh value lands, which may be a local, a field, a collection's slot, an argument; from there on only references
  ("the holding as value only comes with the constructor"); if it must live longer it is built in the arena where it
  is kept (inference). A destructor needs unique; immut has none.
- Asked 2026-11-03: a by-value unique parameter (`fn keep(f File)` given `keep(File(...))`) - may the body store it
  once more (into a field or a collection) at its last use? PROPOSED yes: a parameter given a fresh value is itself
  fresh, so it may land once, the checker refusing any use of it after (a local check, no general move tracking);
  that is how `Vec.Push(x T)` keeps a unique element. Copying a unique collection still asked: `v.ToVec()` recommended.
- unique, the user 2026-11-03: "maybe we don't need a unique keyword, just overriding the copy function in an
  appropriate way is enough to make them unique". PROPOSED (rec): no keyword - every type is copied by its `Copy`; the
  compiler supplies a structural Copy for a type unless it has a destructor or holds by value a part with no Copy; such
  a type is uncopyable (the "unique" rules: held by value where its fresh value lands, references after) until it
  writes a Copy (which must build fresh what cannot be copied). Consequence: the collections hold no destructor, so they
  copy - `w Vec<I64> = v` copies its elements, left out wherever nothing could tell - and copying a collection needs no
  `ToVec`; an uncopyable type with no resource to release has no spelling (none found that needs one). Alternative:
  keep `unique` as a word, explicit at the declaration. ASKED.
- unique DECIDED 2026-11-03 (the user: "we want unique as the keyword ... a copy of a value of a unique type is a
  reference ... you can create a unique value through its constructor, but anytime you try to copy beyond that, you
  will always just take a reference instead"): a fresh value (a constructor's or a call's result) lands by value where
  it is put; any other copy of a unique value is a reference to it - `w := f` makes `w` a `File&`, `use(f)` passes a
  reference. Settling (mine, ASKED): (1) a slot that holds the value in place - a field or element typed `File`, a
  local written `x File` - can only be given a fresh value; given an existing one it is an error naming `File&` (a slot
  laid out for the value cannot hold a reference instead); (2) a by-value parameter given a fresh value is itself fresh
  and may land once more at its last use (how `Vec.Push(x T)` stores a unique element); (3) copying a unique
  collection is building one - `v.ToVec()`.
- unique, the user 2026-11-03 (settling 1 and 2 yes; then "I want a way to hold the unique items as values where they
  are created. I want every other reference to them to be by reference. So they should not be copyable. And then I
  want a custom copy that can copy the way we want them to copy to create a new value"). PROPOSED as the whole design:
  `Copy()` is always the method that makes a new value from an existing one; for an ordinary type the compiler calls
  it at every copy (assignment, by-value pass, store - the assignment operator); for a unique type nothing calls it
  implicitly - a copy of a unique value is a reference - and writing `f.Copy()` calls it, its result fresh and landing by
  value where it is put (`g := f.Copy()` holds a new File by value); a unique type without a Copy cannot be duplicated
  at all; so a Vec (unique) is duplicated by `v.Copy()`, and ToVec is not needed for it. ASKED to confirm.
- unique/Copy SHELVED 2026-11-03 (the user: "let's shelf it for a while"): the last proposal (Copy always the method
  making a new value; implicit for ordinary types, only written for unique ones, a copy of a unique value a reference)
  waits; nothing built.
- QCP ASKED 2026-11-03 (the user: "whether or not when we make references of things or dereference them we want to
  actually mark that in the language, like C does ... we would need both an address of and a deref"). Today both are
  implicit (E12: a place lent to a `&` parameter or bound to a reference borrows, a reference read into a value place
  copies, `p.x` reads through). Options laid out: (A) keep implicit (Go, Swift, Java); (B) mark both, `&x` and a
  deref (C, Rust's `&`/`*`, Zig's `&x`/`p.*`) - noise on every field read and against principle 3, and it buys little
  where scopes are checked and there is no pointer arithmetic; (C) mark only where it decides something the reader
  cannot see: a writable lend at the call site, `grow(mut c)` - the call shows the callee may change `c` (Swift's `&x`
  for inout, C#'s `ref x`, Rust's `&mut x`), the user's own reason for keeping `mut` ("knowing whether a function you
  pass things into mutates what you passed"); receivers unmarked (`c.Grow()` acts on c by its look). Recommended (C).
  In effect: (A).
- QCP DECIDED 2026-11-03 (the user: "Nah, we keep them as they are"): references taken and read through implicitly, as
  today (A); no call-site marker. Answered the user's question: `mut` in signatures is more than documentation - the
  compiler leans on it (read-only arguments passed by pointer with no copy and D9h's handover, constant data and
  immutable globals emitted as `constant` and never lent writably, T25d's static literals, LLVM `readonly` on such
  parameters; what removing it cost was rounds 2a-3b's proof machinery and hidden copies - QCK).
- QCQ ASKED 2026-11-03 (the user: "do we want to get rid of references completely and just let the compiler infer
  everything? Could this be done reasonably?" - QCC's option C again). Answered: the representation can be inferred,
  the meaning cannot - after `b := a; b.x = 1`, whether `a` changed is observable, so one meaning must hold for all
  values: all references (Java, Python - loses C's layout of arrays of structs, principle 2) or all values (mutable
  value semantics: Hylo, Swift's structs - every value its own, a parameter may be lent writably, the compiler turns
  copies into borrows, moves and in-place writes). The second fits olang's principles and makes scopes nearly trivial,
  but shared mutable structures (a widget tree's parent pointers, graphs, doubly linked lists, the compiler's own
  shared AST - ~9,000 `&`) are rewritten around indices into collections, and it is a rewrite of the language and all
  code. Recommended: not now - inferred scopes already removed the marker burden and the `&` left marks real sharing;
  if wanted, a study on real code first (the compiler, a GUI sketch, the settle loop). In effect: references as today.
- Copy resumed 2026-11-03 (the user: "Let's settle the copy question and then get to it"). The whole design put for a
  yes, as numbered rules: (1) `Copy()` is the one method making a new value from an existing one, Clone gone; (2) an
  ordinary type gets a field-by-field Copy (references shared, immut parts shared) unless it declares its own, and
  every copy calls it - assignment, compound assignment, a by-value argument, a store; a declared Copy only builds (its
  only effect allocation) and is left out where neither side is written afterwards; (3) a unique type is never copied
  implicitly - a fresh value lands by value where it is put (a constructor's or call's result, through a parameter at
  its last use), any other copy is a reference, a slot holding the value in place takes only a fresh one; (4) a unique
  type may declare Copy, called only when written (`f.Copy()`), its result fresh; without one it cannot be duplicated;
  (5) a struct holding a unique part by value is unique, unless it declares a Copy that builds that part fresh; (6) a
  destructor requires unique; unique and immut never both; immut copies are shares; (7) the collections are unique,
  duplicated by `v.Copy()`. ASKED.
- Copy and unique DECIDED 2026-11-03 (the user: "everything here is fine, except unique types should never declare a
  copy ... we don't want copy to mean two different things ... you can create things from it ... but copy should not be
  possible ... taking a unique value by value doesn't work either, whether by a parameter or a new local ... we can still
  allow to pass unique types by value when they are constructed in the pass ... this settles the unique keyword"):
  rules 1-3 and 5-7 as put, rule 4 replaced: a unique type declares no Copy - making a new one from an existing one is an
  ordinary function or constructor (`File(dup(f.fd))`), never Copy; a unique value is taken by value only where it is
  fresh (constructed in the pass - `v.Push(File(...))`, `use(File(...))`, a call's result); a by-value parameter, a local
  written `x File` or a field typed `File` given an existing one is an error naming `&`; reading a unique place gives a
  reference, so `w := f` makes `w` a `File&` (mine, reading taken); a non-unique struct holding a unique part writes a
  Copy that makes that part anew (rule 5 kept, mine). Collections are unique and have no Copy - a Vec is duplicated by
  building one (`v.ToVec()`, `Vec<T>.FromIter(v.Iter())`).
- Collections, the user 2026-11-03: "Do we need collections to be unique? ... when we want to copy, we don't want it to
  be unique. And that's where the confusion comes from." PROPOSED (rec): no - collections are ordinary types with a
  Copy (a new buffer, each element copied by its own Copy), and uniqueness follows the elements by rule 5: `Vec<I64>`
  copies, `Vec<File>` (unique elements) is unique and cannot be copied; references to a collection always see its
  current buffer and length, and a copy the program never writes on either side is left out, so `w := v` costs nothing
  unless one of them changes. What unique bought for collections (no accidental O(n) copy) is kept by that elision.
  ASKED.
- Collections DECIDED 2026-11-03 (the user: "Number 2 is correct" - read as agreeing that elision keeps copies of
  collections cheap, so collections are not unique; reading stated to the user): collections are ordinary types with a
  Copy (a new buffer, elements by their own Copy), unique exactly when their elements are (rule 5); ToVec not needed
  for copying. The copy design is settled: rules 1-3, 5, 6; unique types declare no Copy; collections follow their
  elements.
- CORRECTION 2026-11-03 (the user: "No, the two was about non-unique structs ... if you hold a unique thing and you
  copy by value, then you implicitly copy the unique thing, which you can't, so you must write your own copy around
  it"): the entry "Collections DECIDED" above was my misreading - the user's "Number 2 is correct" confirmed only that a
  struct holding a unique part by value has no implicit copy and must write its own Copy around it to be copyable
  (rule 5, now the user's); whether collections are unique is still ASKED (recommended: not unique, unique exactly when
  their elements are).
- Collections DECIDED 2026-11-03 (the user: "Yes, collections should work that way"): collections are ordinary types
  with a Copy (a new buffer, elements by their own Copy), unique exactly when their elements are (rule 5), copies left
  out where neither side is written afterwards. Loose ends asked with it: (1) String building - `s.Append(x)` and
  String's other methods give new Strings, growing in place where the old value has no other holder, StringBuilder
  removed (proposed, not yet confirmed); (2) item 17 - a struct local kept by reference past its loop turn built where
  it is kept, a new object per turn, instead of refused (proposed); (3) my reading `w := f` of a unique `f` gives a
  `File&` (stated, not objected to).
- Loose ends DECIDED 2026-11-03: (1) Strings (the user: "do what works out, what makes sense, what's efficient and
  effective") - mine: String is immutable and its methods give new Strings for one-shot work (Replace, Join, Repeat,
  Trim, slices, adjacency `"a" $x`); incremental building is StringBuilder (a Vec<Char> inside, `b.Append(x)`,
  `b.ToString()` handing its buffer over without a copy) - the one way to build in a loop, so an append loop is never
  quadratic by accident (an in-place `s.Append` would be, wherever the sole-holder proof failed); (2) item 17 (the user:
  "If we store something that we create in a loop ... we should be creating it at the scope of the thing we're storing
  it in. Basically just the already existing scoping rules") - a value local whose reference is kept past its block is
  built in the scope where it is kept, a new object each turn; bulk review 6's F3 refusal goes (it came from the local's
  own slot staying in the frame while only its parts were placed); (3) `w := f` of a unique `f` makes a reference -
  the user: "it's fine". The copy, unique, immut and collection design is settled.
- 2026-11-03 (the user): a mutable string is an `Array<Char>` ("then we just use an array of chars, and it's basically
  a mutable string") - StringBuilder builds, String stays immutable, Array<Char> is the editable text. The user: "Yeah"
  to building the settled design; and "I want the everything is a value study, and I want you to do it now". Order
  (mine): the study first, the build batch after it - the study may change the memory model the batch would build on.
- Memory model additions, the user 2026-11-03: "since we are no longer manually scoping things, adding another memory
  model that works in some places, where the old model works in others ... is not off the table. The compiler handles
  placing memory ... if you want another addition to the memory model that makes some cases that today are refused
  work, or that makes us free things earlier ... that doesn't have performance overhead, just compiler overhead, that
  would be really nice ... our scoping memory model is the base structure ... don't start doing things like garbage
  collecting or ref counting ... unless you have a really good case to do ref counting in very specific places, and
  then you ask me first. The things with performance overhead should not be done lightly." Folded into the study.
- Values study (docs/values-study.md, merged 2026-11-03): A - values-only not recommended (indices +17% instructions on
  a compiler slice, +25% on a widget tree whose flat memory needs a hand free list, level on the settle; 12,301 `&` in
  compiler/, ~4,000 stored references; Mutex, channels, C handles and `any` need a reference kind anyway); take three
  parts instead: element reads never copy, a value moved at its last use, `unique` as ownership freed exactly. Found
  in today's olang: D9h judges element copies per statement, not by evaluation order (a widget tree 5.8 s/1.3 GB vs
  0.23 s/27 MB); copies made in a loop turn kept until the frame closes (1M turns 517 MB); a last use never moves
  (`t := mk(20M); P(t)` copies); three O25 refusals (a reference local reassigned a shorter value); E31b refusing
  `u.nodes[p].kids.Push(c)`. B ranked: move at last use; copies by evaluation order + the per-turn bug; reference
  locals typed per assignment (NLL); in-place calls through an element's field (two-phase); unique freed at let-go;
  reuse in place; stack placement; last-use freeing of large values; double-buffered regions. ASKED (the study's
  numbering): 1 take the hybrid, keep `&` (rec yes); 2 a unique value that leaves its place and lands nowhere runs its
  destructor right there (rec yes, unique only) or keeps O15; 3 reference counting for owner trees with back-pointers -
  no now, revisit with a GUI library (rec); 4 immut values kept in long-lived places copied there (rec) or counted.
- Values study answered 2026-11-03 (the user): 1 yes - values-only not worth it, `&` stays for sharing, the hybrid's
  three parts taken (reads never copy, move at last use, unique as ownership); 3 reference counting for owner trees with
  back-pointers allowed as "a limited compiler carveout and not anything that propagates throughout the language" -
  design note first (count only the owning child links, the parent link non-owning; where it applies said by the
  compiler, nothing written), built when a GUI library needs it; 4 the user: "when the map has a value copy, when the
  map has a ref, keep the ref" - a long-lived place holding a value type copies into its own storage (QCE, Map<String,
  V>), one holding a reference keeps the reference (Map<String&, V>), immut values included - no counting. 2 (when a
  unique value that lands nowhere runs its destructor) explained - Rust: at the end of the scope of whoever owns it
  last; Mojo: right after its last use - ASKED again.
- Unique destructor timing DECIDED 2026-11-03 (the user: "rusts way"): a unique value runs its destructor at the end of
  the scope of whoever holds it last - a value handed to a by-value parameter and stored nowhere is destroyed when that
  function's body ends; O15's order otherwise; `x.Destroy()` still ends one earlier.
- NLL DECIDED 2026-11-03 (the user: "Yes, there's no point in omitting this" - dictated "all timing", read as
  omitting): a reference local takes the scope of what each assignment gives it, every use judged against the value it
  holds there (Rust's non-lexical lifetimes) - the cursor `at = at.parent`, a local declared from a constant then given
  a shorter view, `planAt = args[k]`; compile time only; an xhigh round after the build batch (new section-8 design:
  a term for a field of the cursor's referent, or per-version terms - /home/user/review/nll-wip.patch). It was my
  queueing before; now the user's.
- Reuse in place DECIDED 2026-11-03 (the user: "don't study it, just build it ... Is there a reason to not build
  it?"): no reason against beyond effort - the gain is smaller than it looks where allocation is a bump pointer and the
  old value is already freed early, and it applies only where the old value is dead before the new one's building
  writes (`t = t.Rebuilt()` reads t while building, so it cannot reuse there); the risk is a wrong reuse condition,
  caught by -sanitize, the dead-region evaluator and fuzz free. Built after the NLL round (it touches free.olang beside
  it): a value whose owned storage dies where a new value of the same shape is built into the same place reuses that
  storage when it fits (the made-for values, Perceus/Koka's reuse without counts).
- QCR ASKED 2026-11-03 (the user: "we basically try to abstract memory management away from the user ... like Python
  ... There are still some rough edges ... Is there a way to round those out and make it basically act completely like
  Python, but without a garbage collector, using scopes as much as possible?"). Answered: the edges left are (1)
  refusals Python accepts - a view of short-lived storage kept longer (O27, the no-extension rule), reference locals
  reassigned (NLL, queued), function values whose captures relate scopes (T22a); (2) memory a program keeps that Python
  would free - a value with several holders losing its last one mid-scope (graphs, parent-pointer trees, caches),
  which no scope or single-holder analysis frees; (3) words Python has none of - `&`, `mut`, `?&`, `unique`, `immut`.
  PROPOSED: (a) O27 becomes placement - storage a kept view needs is built where the view is kept (the scope rule
  applied, as item 17), no refusal, its memory listed by -memory - reversing QCB follow-up 2's no-extension rule
  (the user's call); (b) NLL as decided; (c) T22a's function values carry their inferred captures' scopes in the
  function type (compile time); (d) the multi-holder case is the one place without a compile-time answer - the
  limited reference-counting carve-out already allowed for owner trees, widened to "a value the compiler finds with
  several holders that may outlive one another", still nothing written, or kept as it is; (e) (3) stays - those words
  carry meaning Python lacks (sharing, writing, absence, identity), each inferred where it can be. Offered: an audit
  of every refusal in checks/cases Python would accept, counted by cause, before deciding (a)-(d). ASKED.
- QCR (1) DECIDED 2026-11-03 (the user: "for all the one cases, we basically can just build it out, right? The
  structure is already there"): build all three - (a) O27 becomes placement: storage a kept view needs is built where
  the view is kept, as item 17's local, listed by -memory - QCB follow-up 2's no-extension rule REVERSED by the user;
  (b) NLL (already decided); (c) function values whose captures relate their arguments' scopes carry the inferred
  relations in their function type (T22a's refusal shrinks to what a written function type cannot match). One xhigh
  section-8 round after the build batch, then reuse in place. QCR (2) - widening the reference-counting carve-out to
  values with several holders - still ASKED; the audit not run (the user went straight to building).
- QCR (2) DECIDED 2026-11-03 (the user: "adding reference counting to this is okay ... it has to be limited ... I don't
  want a bunch of memory overhead ... in the cases where memory would blow up ... a way to free it early ... rely on the
  scope system and compile time evaluation as much as possible"): reference counting only as an early-freeing
  addition for values the compiler finds with several holders that may outlive one another, where scopes and
  single-holder freeing cannot free them; nothing written; the arena stays the backstop - a counted value is still
  reclaimed when its scope closes, so a cycle of counted links is freed then and no cycle collector is needed (mine;
  explained to the user); counts kept only on those values. Built after the section-8 round, with a design note first.
  QCR (1) re-confirmed ("just build them all, extend the scope system to that").
- QCS ASKED 2026-11-03 (the user: "we tried everything as values. We didn't think about everything as references ...
  there would be no & or ?&, just mut and immut ... Can we do this without losing performance? ... in structs ... to know
  how the struct is laid out if we want to write to files ... I'm more concerned about performance if everything is a
  reference"). Answered with a sketch (Java Valhalla's lesson): references by meaning, layout by inference - an immut
  type has no identity, so the compiler lays it out flat (arrays of immut structs as C lays them out, copies are byte
  copies); a unique value is held inline by its one holder; numbers and arrays of numbers stay flat; only a mutable,
  shared, non-unique object is a pointer, where the sharing is real; struct layout guaranteed for immut and unique
  types (files, C); `mut` stays on parameters, `?` would still mark absence (`Node?`), copies written `a.Copy()`.
  Costs: every program's meaning flips (`b := a; b.x = 1` changes a for a mutable type) - a full migration again;
  speed of mutable struct-heavy code rests on inference where neither word is written. PROPOSED: the same study as the
  values one on the same three programs before deciding. ASKED.
- QCS STUDIED 2026-11-03 (docs/refs-study.md, wt-refs-study a5d40f0, merged): references by default measured on the
  values study's programs. Objects cost nothing where data is built once and walked in order (compiler slice -2.0%
  instructions, -11% peak; settle -0.3%), so no speed reason to avoid `&`; small mutable records cost (widget rects
  +16.6% instructions, +10% memory; 4M particles as pointers 2.0x memory and 12.6x time once walked out of creation
  order); inference cannot win it back safely (object/array inlining needs the whole program and gives a layout that
  changes with distant code - against C layout, files, separate compilation, `olang api`; Valhalla made it declared);
  the data case needs a flat mutable copyable type anyway, i.e. two kinds of type again. Migration ~2,500 by-value
  positions, every copying `:=` and record `==` flipped. ASKED, numbered: (1) references by default not taken - values
  stay the default, `&` marks sharing, `immut`/`unique` as decided (rec yes); (2) an opt-in object kind declared on the
  type, `type Widget object struct(...)` with `&` implied at every use (rec no - a second kind of type and spelling;
  `&` at the use lets one type be flat in a list and shared elsewhere); (3) a std structure-of-arrays container by
  reflection (`soa.Of<P>(n)`, `s.X[i]`, lane operators per field; 1.65x time, 6.5x fewer instructions than flat
  records here) now or when a program asks (rec when asked). In effect: values by default.
- QCS ANSWERED 2026-11-03 (the user: "even if we did whole program compilation, we still wouldn't actually be able to
  get that much out of references ... we still would need to have values back somehow for some cases. Yeah, don't do
  the object thing. If we don't go with the references path, references are always shown with ampersand"): (1) values
  stay the default, a reference always written `&`, `immut`/`unique` as decided; (2) no declared object kind. (3) the
  structure-of-arrays container: the user asked what it would look like - explained (AoS vs SoA memory, `xs += vxs *
  dt`, a `soa.Table<Particle>` with Push/`t[i]`/Sort/Column), with a correction: it cannot be built by reflection in
  std (reflection reads types, cannot make them - Zig's MultiArrayList can because Zig makes types), so it would be
  compiler-supplied (as Odin's `#soa`), a language feature. ASKED: record it as not now, revisit when a program needs
  it (rec yes). In effect: none built; separate arrays + lane operators by hand.
- QCT ASKED 2026-11-05 (the user: "What if we replace the comparison operators with natural language versions (eq,
  le, gt, etc)?"): counted ~30,700 spaced comparisons in compiler/, std, tests, checks, tools (`==` 18,900, `!=` 3,500,
  `<` 3,000, `>` 2,900, `>=` 2,000, `<=` 360) - a tool's migration either way. Weighed: (a) keep `== != < <= > >=`
  (rec): the abbreviations are codes to learn, not words said aloud - the spoken form is a phrase (`is less than`,
  COBOL's); the symbols are arithmetic's own notation, read at a glance in any spoken language, keep operators apart
  from names inside an expression (`i < n and xs[i] != 0` against `i lt n and xs[i] ne 0`) and chains reading as
  mathematics (`lo <= x < hi`); data and AI code writes formulas (why `**` was added); Fortran's `.LT.` existed only
  because early character sets had no `<`/`>` (Fortran 90 added the symbols), Perl's `lt`/`eq` and the shell's `-lt`
  because the symbols meant something else there (numbers, redirection). (b) abbreviations `eq ne lt le gt ge`: the
  one real gain is `<`/`>` becoming only type-argument brackets, G12's touching rule gone (the shifts `<<`/`>>` would
  stay unless they became words too); today's rule plus the formatter's spacing already leave formatted code
  unambiguous. (c) phrases (`is less than`, `is at least`): long, `is` overloaded (null only, E10c), chains unreadable.
  Never both spellings (one way). Noted: `!=` keeps the C `!` olang otherwise dropped (postfix `!` ends the program),
  but every replacement is worse (`/=` is divide-assign, `<>` meets generics, `≠` cannot be typed, `is not` is the null
  test). In effect: the symbols.
- QCT ANSWERED 2026-11-05 (the user: "Ye, keep everything as is"): the comparisons stay `== != < <= > >=`, `!=`
  included; no word forms. Recorded in CLAUDE.md (the logic-in-words entry) and HISTORY.md.
- QBY timing ANSWERED 2026-11-06 (the user: "next week (tomorrow) we build the entire compiler with the remaining
  features, verify, and then the compiler is done. then we do oann and settling experiments"): oann's port and the
  settling experiments start once the compiler is done, after next week's final batch and verify.
- QCS (3) LAID OUT 2026-11-06 (the user: "the structure of arrays question, lay it out"): options (1) not now -
  hand-written structs of arrays with lane operators already get the layout's speed, a built-in type added later
  breaks nothing, the settling work keeps its data in tensors (rec); (2) a built-in generic `Columns<Particle>` (name
  open) in next week's batch - one array per field laid out by the compiler, `ps.x` a column as an array (lane
  operators apply), `ps[i]` a row assembled as a copy and written back, Push/Sort/for moving rows together; one
  feature round, convenience rather than speed; (3) a layout keyword on arrays keeping `a[i].x` - rec against: `a[i]`
  stops being a place (no lending as a reference, calls through read-modify-write). ASKED. In effect: none built.
- QCS (3) DECIDED 2026-11-06 (the user: "Do the columns solution"): option 2 - a built-in `Columns<T>`, a structure of
  arrays, in next week's final batch. Details (mine, recorded with it): a prelude type the compiler lays out as one
  array per field of a struct T (T as a `Vec<T>` would take it); `c.x` is field x's column, an array view (lane
  operators apply; stale after growth as a Vec view, M19g); `c[i]` reads row i as a T (a copy), `c[i] = v` writes it
  back; Push, Pop, Insert, RemoveAt, SwapRemove, Swap, Truncate, Clear and Sort(less) move rows together; `for row in
  c` walks rows; FromIter (QBW) gives `Columns<Particle>[...]` literals and comprehensions; Copy, `==`, Hash and `$` by
  rows; a field named like one of its methods is an error at the instantiation (M19's rule); a private field's column
  only in T's module (M6a). Measured against hand-written columns and an `Array<Particle>` on the refs study's
  particle program; spec first, then build (opus high).
- QCU ASKED 2026-11-06 (the user: "Do you think we should do build types like Zig? Also, is columns the right name or
  should it be something else?"): (1) Zig-style type creation (functions returning types, `@Type`-like reification) -
  rec no for now: every olang type is a declaration the tools read (hover, doc, explain, `olang api`), a computed type
  exists only after code runs (tools must run it, errors point into type-building code - Zig's language server's weak
  spot); it is macros by another name (PRINCIPLES: no macros); the need is small (type parameters, reflection reading
  types and `comptime` cover Zig's common uses; derived types are few - Columns the first); and it is the largest
  change left (types computed by the evaluator mid-check, through section 8, effects, layout and every tool). Revisit
  with a narrow declarative form - a struct whose fields come from a walk over another type's fields (`for f in
  T.Fields: f.Name Array<f.Type>`) - if a second and third derived type turn up; never pointer casts. (2) the name:
  keep `Columns` (rec) - it names the layout, pairs with Vec (rows), and as a prelude name (reserved everywhere) it is
  one programs rarely want for their own types; `Table` (the data-science word, but a very common user type name),
  `SoA` (jargon, an abbreviation), `ColumnVec` (clearer about growth, longer). In effect: no type creation; `Columns`.
- QCU (3) ASKED 2026-11-06 (the user: "But should there then be one column vector and one column array?"): rec ONE
  type, `Columns<T>`: made with a length (`Columns<P>(n)`, rows zero as `Array<T>(n)` gives them, or `(n, fill)`) or
  empty to push into (`Columns<P>()`); it grows only by Push/Insert; where the compiler proves it never grows and knows
  its length where it is made, its columns are laid out fixed in place as T7c lays out arrays (no handle, no view to go
  stale; what a later FPGA subset needs) - an optimization, the compiler's. Two types would double the methods and the
  compiler support for a difference the compiler can infer: Array and Vec are two because Array is the base type
  (text, slices, lane operators, C calls), and each column already is an Array. The one cost: a column view taken
  before a Push goes stale as a Vec's view does (M19g reports it within a function). In effect: one type.
- QCV ASKED 2026-11-06 (the user: "should we make arrays and vex the same type as well? Not vex as in vex, but
  vectors."): rec no - Array and Vec stay two; what makes one Columns type right does not hold for arrays: (1) views -
  a slice of an array is free and safe because an array never moves; if every array could grow, every slice could go
  stale, the hazard the user had Vec make explicit with `v.View()` (2026-10-17) - Go merged growth into its slices and
  `append` writing into elements another slice still sees is its classic aliasing bug; (2) layout - an array in a
  struct is laid out in place, which C interop and plain-data structs rely on: a guarantee, not an inference (Swift
  had one growable Array and added a separate fixed `InlineArray` in 6.2 for it); (3) lengths known while compiling -
  G29's per-length instances, decided asserts, lane lengths checked while compiling exist because an array's length
  cannot change; text, slices, lane operators and C calls rest on all three. Columns can be one type because none
  applies: it is not sliced into sub-tables, does not cross to C, and its fixed layout is only an optimization. In
  effect: two types.
- QCV ANSWERED 2026-11-06 (the user: "Yeah, okay, keep them"): Array and Vec stay two types. Recorded in CLAUDE.md
  (the Vec entry) and HISTORY.md. Asked with it, for the record: QCL's "collections as references only" (2026-11-03)
  was superseded the same day by "Collections DECIDED" (ordinary types with a Copy, unique exactly when their elements
  are, copies left out where neither side is written) and never built - a Vec is a value, shared by writing `&`.

- Attributes talk 2026-11-07: the user asked what giving attributes compiler meaning would be ("then they would clash
  with keywords, right? That would be a problem") - agreed: a second way to mark declarations beside keywords (C's
  `_Noreturn` and `[[noreturn]]`); everything other languages use compiler attributes for, olang covers by a keyword,
  inference, a top-level `if`, supplied methods or S3 - QBO's rule stands (attributes mean nothing to the compiler).
- QCW ASKED 2026-11-07 (the user: "Should we add the deprecation keyword then?"): recommended no keyword - olang has
  no warnings (every diagnostic is an error, so marking a use would break callers, which deprecation exists to avoid);
  instead Go's convention: a doc comment paragraph beginning `Deprecated:` (L4b), read by tools - `olang doc` marks it,
  the language server shows it on hover and strikes the name through (LSP's deprecated tag, a hint, never an error),
  `olang api` lists newly deprecated items as not breaking. No syntax, no compiler meaning, no attribute type. In
  effect: nothing; if yes, a small tooling round (doc, lsp, api, SPEC L4b).
- Round kept's decisions (2026-11-07, mine, for the user's review): (1) a call building into a derived scope (a field's
  own binding) builds into the program's scope instead of being refused - memory held until exit, as the inline form
  already was (C1, SPEC O23a); (2) item 17's placement (O28) is decided once per declaration, so the local is built
  where it is kept on every turn, also turns keeping nothing (~17 bytes a turn for a 16-byte struct kept 1 turn in
  1000) - a recorded limit; (3) a failed check is no way out for the drop analysis (a test build's unwind ends holders,
  but nothing resumes to see it).
- QCW ANSWERED 2026-11-07 (the user: "Yeah, add deprecation only as a comment and kind of surrounding tools thing. It
  should not break the compiler. I think the main way you would deprecate things in OLang is just removing them between
  versions. Maybe that's even better."): no keyword, no attribute - a doc comment paragraph beginning `Deprecated:`,
  read by tools only (olang doc marks it, the language server's hover, completion tag and a hint at uses, olang api
  lists it as not breaking); the compiler gives it no meaning. Removal between versions stays the main way to
  deprecate (olang api says what breaks, olang fix migrates); the note is a courtesy before a removal. Being built:
  round deprec (wt-deprec).
- QCX ASKED 2026-11-07 (the user: "Is there anything else we're still missing from other languages that we want?"):
  nothing big - the surveys' remaining items are the ones marked "later"; split into language changes worth deciding
  before oann is written on the language, and tooling that can come any time. Asked, numbered, with my recs: (1) errors
  carrying data (deferred by the user 2026-10-24) - yes, design note first: plain-data payloads on error words, the
  success path paying nothing; (2) packed / declared-layout structs (`type Header packed struct(version U4, ihl U4,
  length U16)`, no padding, exact widths) - yes; (3) struct patterns and destructuring - still later; (4) benchmarks in
  the test runner (`olang test -bench`) - yes, small; (5) coverage (`olang test -cover`) - yes, medium; (6) a REPL and
  a Jupyter kernel on it - yes, after the compiler is done; (7) saturating arithmetic in std/arith - yes, small (fixed
  point waits for FPGA). Platforms (macOS, Windows, WASM) later. In effect: none queued.
- QCX MISREAD, corrected 2026-11-07 (the user: "the adds it then was fixing a typo. give me the options to build
  again"): "Add it then, not done." fixed a dictation slip in the user's own previous message ("add it done" meant "add
  it then", the yes to QCW's deprecation) - it was no answer to QCX. I had read it as "add the list, the compiler not
  done until it is in" and queued six items; that queue is withdrawn. QCX is still ASKED (re-asked the same day, the
  same eight options). Nothing of it was built: only the design note for (1), docs/errdata.md on wt-errdata (b746af3,
  no code) - kept unmerged as the basis if (1) is chosen; its three direction questions (payload types of an error
  raised by name inferred from its first raise; methods on error types; ArgumentError carrying its failed condition)
  wait until then. In effect: none queued.
- QCX ANSWERED 2026-11-07 (the user, by number: "1)why did we drop this? 2)yes 3)dont understand, talk to me 4)sure,
  I dont get it tho 5)sure 6)olang purely should run the interpreter no? 7)yes, 8)yes but it doesnt really change syntax
  so that can be added afterwards."): (2) packed / declared-layout structs YES, in the compiler's remaining work;
  (4) benchmarks in the test runner YES (explained; mine: std/bench used inside tests, no keyword); (5) coverage YES;
  (6) a REPL and a Jupyter kernel - reading taken and stated: yes, plain `olang` opens the interpreter at a prompt;
  (7) saturating arithmetic YES; (8) platforms YES, after the compiler is done. Mine, stated, by the user's own rule for
  (8): (4)-(7) change no syntax either, so they come after "done" too ((4) and (7) first), unless the user wants one
  sooner. (1) the user asked why it was dropped: their own deferral, 2026-10-24 ("4)what would errors carrying data
  mean? If you mean debug info that is done with -debug no?", then after the explanation "4) defer this"), two days
  before errors became values (T20) - re-asked, rec yes, docs/errdata.md ready. (3) explained (no struct patterns
  today; a struct's constructor parameters are not its fields, so a pattern would need field names - a form of its
  own) - re-asked, rec not now.
- The user, 2026-11-07: "also, is the interpreter up to date?" Answered: the evaluator's semantics are held by each
  change's compile-time tests and the checks' `interpret` runs, but the whole corpus and std run under `olang
  interpret` and compared with the built programs (evaldiff) is outside `make verify` - last measured 2026-10-23, 23 of
  26 files alike, its tool (evaldump) noted as not building since 2026-10-26. Decided (mine): a round brings it back -
  the tool fixed, every difference but the stated limit (tasks run one after another, B3e) fixed, the comparison put
  into `make verify` - before the compiler is called done; the REPL builds on it.
- QCX (1) DECIDED 2026-11-07 (the user: "Yes, sure. Let errors hold values."): errors carry data (docs/errdata.md on
  wt-errdata). The build waits for QCY below, which decides whether a payload ever leaves the error stack.
- QCX (6) DECIDED 2026-11-07 (the user: "Move the interpreter into just olang without anything. And then add a Jupyter
  notebook on top. I don't know what REPL is."): plain `olang`, with nothing after it, opens the interpreter at a
  prompt (a REPL: read a line, run it, print the result, repeat); a Jupyter kernel on top of it. After the compiler is
  done, and after the interpreter round brings `interpret` current.
- QCY ASKED 2026-11-07 (the user: "I think the reason we didn't want errors as values is because we didn't want them to
  be declarable as variables ... holding errors as catching errors and then doing something with them. That's fine,
  creating errors that hold values is fine, but storing errors as variables, should not be."). The record: on
  2026-10-25 the user was "not sold on the idea of storing errors", then proposed it themselves ("we could have errors
  as variables and still only allow errors in the right slot"), and on 2026-10-26 chose it ("Ye, let's have them") -
  T20, built (fields, locals, elements, type arguments; never a result). Asked, the options: (a) keep T20 as built;
  (b) an error lives only in the catch clause that names it (read, test, match, render, raise again - nothing else);
  (c) (b), and the clause may also hand it to a function as a parameter (handling code factored out), never kept - no
  local declared with it, no field, element, type argument, global or capture. Recommended (c). Found: std and the
  compiler keep no error in a field or collection as far as a search shows; the feature's own tests and std/json's
  encoding of error values would go. Either (b) or (c) simplifies errors with data (a payload read in place on the
  error stack, never copied out). In effect: T20 as built; the errdata build waits.
- QCX (3) struct patterns, talked through 2026-11-07 (the user: "since the only way into a struct is through its
  constructor, this kind of becomes problematic. But I think you could make the same case for arrays and enums too,
  maybe. Can we talk about it?"): enum cases and arrays run no code when built (what goes in is what is stored, all of
  it readable), so a pattern is the exact reverse; a struct's constructor is code (computed and private fields,
  contracts, parameters not stored), so there is nothing to reverse - patterns already stop at it (`case
  Shape.Round(c)` binds the struct whole). Options: (1) keep it so - recommended; (2) patterns by field name (`case
  Point(y = 0)`), looking like a constructor call that is none; (3) positional patterns only for structs whose
  constructor just stores its parameters - matchability then depends on the constructor's body. In effect: none.
- QCY ANSWERED 2026-11-07 (the user: "keep errors as built then"): T20 stays - errors are values everywhere but a
  result; errors with data are built as docs/errdata.md designs them (a stored error value holds its payload).
- QCX (3) struct patterns, the user 2026-11-07: "cant we do pattern matching against the fields without running the
  constructor? ... we just need to read the value, and given that it's a public value, we can read it. Or given that
  we're in the same module, it's private, we can also read it ... it looks like a constructor, but it's not really a
  constructor." PROPOSED (asked to confirm): yes - a struct in a pattern lists fields by name, never constructor
  parameters, and runs nothing (Python's class patterns, `case Point(x=0, y=y)`): `name = pattern` matches that field
  (a literal compares, a new name binds, a nested pattern goes inside), a bare `name` is `name = name`, unmentioned
  fields are ignored, only fields readable there (public anywhere, private in the struct's module). By name, not
  position: reordering or adding fields never changes a pattern's meaning, and no private field is a position someone
  else must skip. Enum payloads keep their positional patterns (declared by position) and may take the named form too
  (`case Shape.Rect(h = 0)`). In `case` patterns only (nested in payloads and array elements); a destructuring
  declaration not now. Recommended yes. In effect: none.
  The user then (2026-11-07): should arrays and enums lose positional matching too, or structs match by position over
  the fields each module can see - "You said that adding things could break them. Isn't that the case for enums and
  arrays too?" Answered: arrays have no names (a pattern matches the data, no declaration); an enum case is built by
  position, so adding a field already breaks every building site - its pattern mirrors building and adds nothing;
  only a struct builds in one shape (parameters) and stores in another (fields), so positional patterns would make the
  field order, promised by nobody, part of every match elsewhere, and positions over visible fields would make one
  pattern bind different fields inside and outside the module. Recommendation unchanged: structs by name, enums and
  arrays by position. Still asked.
- QCX (3) DECIDED 2026-11-07 (the user: "structs by name, arrays by position, and enums by both", then "go"): struct
  patterns name fields (`case Point(x = 0, y)`, a bare name binding its field, unmentioned fields ignored, readable
  fields only); arrays by position as today; enum payloads by position as today and by field name too
  (`case Shape.Rect(h = 0)`, positional items first). In `case` patterns only. Being built: round structpat.
- QCZ ASKED 2026-11-07 (from round drops): a drop check, Rust's dropck - a value with a destructor may not hold a
  reference to a value with a destructor that could be ended before it (declared after it in its block, or in an inner
  scope); such a reference is an error naming the order. Why: a holder's destructor runs after a later sibling was
  ended, so today it can read an ended value (no memory hazard only because storage waits for the scope's close), and
  freeing storage where the destructor runs (unique Part C) would turn that read into a use after free; measured, 1M
  cycles: a Map value taken out and dropped 388 MB, replaced by Put 260 MB, a Vec pushed and truncated 260 MB - all
  flat with Part C. Cost: programs whose resource holders refer to later siblings are refused (reorder the
  declarations); compile time only, nothing at run time. Recommended yes, then Part C built on it. In effect: no drop
  check, Part C not built.
- QCZ DECIDED 2026-11-07 (the user, asked what a drop check is, then: "So either we force reordering of the
  declarations, or the compiler makes it smart, right?", then "Yes, let the compiler order them"): no Rust-style
  refusal - the compiler orders the ends itself: values are ended last declared first, except that a value holding a
  reference to another is ended before it (holders before what they hold), read off the same store relations section 8
  tracks; only a cycle of such references (two resources referring to each other) is an error naming both. Then unique
  Part C (storage freed where the destructor runs) built on it. A round of its own after drops merges, design note
  first (xhigh).
- ASKED 2026-11-07 (errors carrying data, docs/errdata.md section 14; the build of rounds 1, 3, 4 running): (1) errors
  raised by name carry data, `error NotFound(path)`, field types from the module's first raise - rec yes; default: only
  declared error types carry data; (2) methods on error types (decided by the user 2026-10-18 with QAN, never built) -
  rec yes, after the std migration; default: not built; (3) `ArgumentError.Invalid` carrying the failed condition's
  text - rec not now (the thread-local slot stays); default: not built. QCU 1-3 (Columns<T>) re-raised the same day.
- The user, 2026-11-07, on the /tmp leftovers: "Yes, you made a little" (read as yes, delete them) - the permission
  classifier refused the deletion again ("Shared Scratch Sweep"); not worked around; told the user. Disk had 12 GB free. The user then: "Yes, you may delete them, not made a little" -
  deleted (/tmp entries older than a day, ~3.7 GB); disk 14 GB free.
- ANSWERED 2026-11-07 (the user: "1 yes 2)yes 3)why not now? 4)no computed types, keep the name, Im still torn on the
  one type solution tho. dont we want column to act a lot like array and be laid out in memory in structs etc?"):
  (1) errors raised by name carry data, field types from the first raise - YES; (2) methods on error types - YES;
  (3) ArgumentError carrying its condition: answered that the only costs were the failure path's copy and bigger stored
  error values of sets holding it, neither real - so built (replacing D17's thread-local slot) unless the user objects;
  all three sent to round errdata2. QCU (1) no computed types - DECIDED; (2) the name `Columns` - DECIDED; (3) still
  open, discussed: options (a) one type acting like Array - fixed length set where it is made, a value laid out in place
  in structs where its length is known (T7c), passed by value, growth by building a new one (FromIter, a Vec of rows
  first) - recommended; (b) two types, an Array-like one and a growable one (Vec-like); (c) one growable type, fixed in
  place only as the compiler's optimization (the earlier recommendation, withdrawn). In effect: not built.
- docs/sec8.md's three questions, decided by me 2026-11-07 as the note recommends (the user's push to finish today; for
  their review): generic type variables stop function-value records (`keep<F>(f F) F`, one case in the repository, stays
  refused); a view of storage holding a destructor value is never placed longer (refused, naming a copy - a file would
  stay open past its holder); a function's written result type carries records. Section-8 round 1 (NLL) started.
- DECIDED 2026-11-07 (the user: "do argument error carry the failed conditions text and do two column types"):
  `ArgumentError.Invalid` carries the failed condition's text (replacing D17's thread-local slot; round errdata2);
  QCU (3): TWO types - `Columns<T>` acting like Array (length set where made, a value laid out in place in structs
  where known, passed by value, never grows) and a growable one acting like Vec, named `ColumnVec<T>` (mine). Round
  columns started; round qbt (type-level builders, QBT) started; a three-slot build lock (/home/user/blk) keeps seven
  rounds' builds from the out-of-memory killer.
- 2026-11-07, the user on four answers: the licence - "we'll still push it into the future" (postponed again; ask when
  publishing); ecosystem - `olang get` YES (add or update a dependency and its lock entry; after "done", no syntax);
  minimum version selection - the user asked what Go's rule is: explained (each dependency states the least version it
  needs, the build takes the highest of those minimums - never a newer one just published -, a major version is
  another package so v1 and v2 can sit side by side) - ASKED to confirm, rec yes; progress per token - the ledger and
  plan slimmed (185k -> ~100k tokens loaded per agent step), and "I want to do a compact and trim the Claude.md later
  today. So remember that." (plan.md).
- Versions, the user 2026-11-07: "shouldn't the default be that we use the latest version? And we don't have to update
  manually. And then we kind of say we want to pin to an older version." Answered: latest is the right choice of WHICH
  version, but taken automatically on every build it changes builds with no change of the user's (a new release breaks
  or alters a program overnight, two machines build different code, a bad or malicious release reaches everyone at
  once); PROPOSED instead (Cargo's model): the newest compatible version (same major) is taken when a dependency is
  added or updated (`olang get`, `olang get -update` for all), recorded in olang.lock so every build uses it until the
  next update; `@v1.2` pins an older one; a new major is another package; two dependencies wanting one repository get
  one copy, the newest that satisfies both. Replaces the MVS proposal. ASKED. In effect: today's olang.lock pinning.
- Versions DECIDED 2026-11-07 (the user: "Yeah, go with the cargo model"): `olang get pkg` takes the newest version of
  the same major and records it in olang.lock; every build uses the lock; `olang get -update` moves everything to the
  newest; `pkg@v1.2` pins an older one; a new major is another package; two dependencies wanting one library get one
  copy, the newest satisfying both. After "done" (no syntax). And: plain `olang`, nothing after it, opens the REPL (the
  interpreter underneath); `olang interpret FILE` runs a whole file, `olang FILE` builds and runs - the user: "just
  running OLang then. Puts you in the REPL".
- The push's calls, talked through 2026-11-08 (the user, by number). (3) T22a at a generic: the user "we don't want to
  over reject" - explained it is not about handles: a relation is not part of a function type, and any body taking a
  function value through a parameter (generic or not) is judged once for every caller; PROPOSED: a function returning
  or storing its function parameter passes the caller's record through (a summary, cheap), and a body calling through
  a function parameter is judged per record (the note's scope twins, compile time only, code shared where the plans
  agree). (7) found already lifted by bfix8a (`f := keepIt` compiles; what stays refused is (3)'s boundary). (4) the
  user: "if there's a view of it, then it should be made in the scope of that view" - PROPOSED: storage holding a
  destructor value kept for a view is built where the view is kept and its destructor runs there, as bulk review 7's F4
  already does for a returned or stored reference to the whole holder (escapedHome), listed by -memory. (5) C1
  explained (a build through a reference field whose referent's scope is known only per instance goes to the program's
  scope, since no run-time scope word exists); PROPOSED: keep, or find the referent's scope from its address on that
  path only (needs a chunk lookup - a design pass). (6) the user: "Fix number 6" - mine (an optimization): move the
  local into the keeper's scope at the keep where the keep is its last mention, so only keeping turns pay. (8)
  explained: no view - two mechanisms (O16 registration for `:=` from a call, O15 holder for a written slot) and early
  freeing releases only at a holder's drop; mine: a `:=` from a call of a destructor type becomes a holder too.
  ASKED: go on (3), (4), (5).
- Function values, the user 2026-11-08: "runtime function types ... really are a problem for this language, aren't
  they?" Answered: yes, the one place the compiler's body-reading analyses go blind (T22a, effects "anything", early
  freeing keeps, O17 lending, M19g, inlining); everyone has it - Rust avoids it by a type per closure and
  monomorphizing `F: Fn` generics, so only `dyn Fn` pays (written lifetimes or 'static). PROPOSED: olang does that
  inside, no syntax - a function taking a function value through a parameter is specialized per function or lambda a
  call passes where the call can see it (the scope twins of (3), generalized past generics; one instance shared where
  plans agree, a cap falling back to the written type's contract), so callbacks, Map/Filter/Sort and the like judge
  and inline as direct calls; a function value stored in a field, collection, `any` or handed to C stays judged by its
  written type (the irreducible dynamic case). ASKED, folded into (3).
- Written relations on function types, the user 2026-11-08: "all of the relations on a function are visible in the
  signature if we want them to ... if we want a type that can hold a function value, we make that type very explicit
  in what it has to fulfill". PROPOSED (with the monomorphization above, not instead): optional relation items in a
  function type's contract brackets, worded by parameter names, never scopes - `fn&(a mut N&, b N&) [a keeps b]`
  (b stored into a), `fn&(x T) [keeps x]` (x kept beyond the call, in what the value holds); checked against every
  function or lambda that lands there (one keeping more is T22a's error naming the item to add), relied on at every
  call through it; a function keeping less fits; the error at a boundary says the exact item to write; optional on a
  `fn` declaration as a checked promise (`olang api` then reports a changed relation as breaking). Reverses part of
  QCB (written relations removed 2026-11-02, "make manual scopes impossible") - stated: no scope is written, only what
  the function does with its parameters, checked, never trusted. Open: effects promises too (`[not Allocates]`, G42's
  facts) in the same brackets. ASKED.
- Relation items, listed for the user 2026-11-08 ("Which are the function relations we could add in such a block?"):
  scope relations - `a keeps b` (b stored into what a reaches; by-value b a move), `keeps x` (kept in the value's own
  environment), `result from a` (narrowing the default "a result may borrow from every reference parameter"), `new
  result` (borrows from none), `a.f keeps b` (into what a field refers to - finer, later); a both-ways keep is
  "together" (no item of its own). Effect promises from G42's facts - `not Allocates`, `not Blocks`, `not WritesGlobals`,
  `not CallsC`, `not Spawns`, `Terminates`. Already in the type, so no items: `mut` (writes), `?` (errors), `noreturn`.
  Recommended for a first build: the two keeps and the result items; effects later. ASKED which.
- Function values DECIDED 2026-11-08 (the user: "do all of them then. Do them as a normal ... listing rules within
  those brackets. I want no names to be capitalized. They should basically be keywords. I'm not sure about using not
  for everything ... single words?"): every item is built - relations (`a keeps b`, `keeps x`, result from a, new
  result, `a.f keeps b`), the effect promises (G42's facts negated) and the write promise (writes only through `mut`
  parameters) - in the contract brackets by the listing rule, lowercase words of one place (L9b). Spellings PROPOSED
  (mine, the user to confirm): `nonallocating`, `nonblocking` (Clang 20's words), `terminating`, `nonrecursive`,
  `nonspawning`, `nonforeign`, `confined`, `a keeps b`, `keeps x`, `returns a`, `fresh`. Read as approving the
  specialization of function values too (the package was asked together). Design note running: wt-fnvalues,
  docs/fnvalues.md (opus xhigh). Calls 4 and 5 of the push still ASKED.
- Promise words, the user 2026-11-08: "I like the shorter versions more, like no return, no alloc, no block ... In one
  word. No return already exists as a keyword ... I don't want us to have two tiers of keywords. Is there a way to do
  this even better?" PROPOSED: `noalloc`, `noblock`, `nospawn`, `norecurse`, `noextern`, `pure` (D's weak purity:
  writes only through `mut` parameters, no mutable global), `halts`; relations `a keeps b`, `keeps x`, `a.f keeps b`,
  `return a`, `noborrow` (`in` not reused - `[b in a]` is a membership condition); `noreturn` MOVES into the brackets
  (`fn Exit(code I32) [noreturn]`), so every promise has one place; ONE TIER: every such word an ordinary keyword, and
  L9b/L9c's words of one place (`commutes`, `immut`, `unique`, `packed`, `any`) made plain keywords too - L9a already
  lets any keyword name a field or method after `.`, a tool renames the locals/functions using them. ASKED (the note
  wt-fnvalues told to carry it as a question).
- The user 2026-11-08: "isn't halts and no return the same thing? ... how do we know which keywords should be within the
  brackets and which should be outside? ... unique ... commutes?" Answered: opposites (noreturn: never returns; the
  other: always returns; most functions are neither) - `halts` renamed `terminates` (it read as "stops the program";
  matches G42's `f.Terminates`). Placement rule PROPOSED: brackets hold what a function's body is held to and callers
  rely on - conditions on arguments and promises about the body, all checked; declaration words say what a type or
  method IS (`unique`, `immut`, `packed`: how values are laid out, copied, changed; `commutes`: defines what `2.0 * v`
  means, claims nothing) - they stay outside; `noreturn` moves in (checked against the body, D8e). Sent to the note.
- The user 2026-11-08: "If it terminates, then it does the same thing as not returning" - read as the word failing
  (terminates = ends the program); the promise meant "every call comes back to its caller". Renamed `returns` (the
  opposite of `noreturn`); the result relation became `borrows a` / `noborrow`. Layout confirmed by the user's
  reading: `fn name(params) [conditions and promises] Result ? Errors { body }`; type words stay in the type
  declaration, `commutes` after an operator method's result. Sent to the note.
- The user 2026-11-08: "they're only used in type declarations and argument declarations. We won't actually write them
  on real functions ... always be inferred ... do we actually need some extra syntax ... or can we just append all the
  words to ... the variable type?" Agreed: promises are for function TYPES only (declarations infer them; a library
  pins one with a top-level `assert not f.Allocates`); no brackets - words follow the function type's signature,
  space-separated, where `noreturn` already sits (so `noreturn` stays put, the first of them): `onClick fn&(e Event&)
  noalloc noblock pure`, `type Handler fn(e Event&) noalloc noblock`, `fn&(list mut Vec<Node&>&, n Node&) keeps n in
  list`, `keeps x`, `borrows a`, `noborrow`, `returns`. PROPOSED, ASKED to confirm; sent to the note.
- Promise words DECIDED 2026-11-08 (the user: "yeah, go with that"): words follow a function type's signature,
  space-separated, function types and declared function types only, inferred everywhere else - `noalloc`, `noblock`,
  `nospawn`, `norecurse`, `noextern`, `pure`, `returns`, `keeps n in list`, `keeps x`, `keeps b in a.f`, `borrows a`,
  `noborrow`; one tier of keywords. The user, for the record: `noreturn` is a different category - it changes what
  paths may be written (D10a, a call fitting any value position, D8e) and is written on declarations; the others only
  let a holder of a function value require things of the functions it accepts and rely on them at calls. It shares
  their position only. The design note (wt-fnvalues) builds on this.
- Calls 4 and 5 DECIDED 2026-11-08. (4) the user: "we want to be able to control when the destructor runs ... can we
  guarantee that whenever you want a destructor to run, you can always call the dot destruct method? If that is the
  case ... let the view be built wherever we want ... treat it more as a memory question": answered that `x.Destroy()`
  on a variable holding the value by value always compiles (only rule: `x` unused after); the gaps - a `:=` from a call
  (held by registration, O16 - call 8's fix makes it a holder), a field (ends with its holder or when stored over), a
  value in a collection (its removal ends it), a global (held by reference, C11). Decided: storage a view needs is
  placed where the view is kept (memory only); the destructor stays with the whole value's holder (O15 / Destroy); a
  reference to the whole flowing out keeps F4's rule (the destructor goes where it lives). (5) the user: "they should
  find the right scope": a derived scope passed as a hidden scope argument by every call that knows it (no word per
  instance), the fallback where none knows ASKED in the note (program scope or an address lookup). Both sent to the
  design note (wt-fnvalues).
- Call 4 REVERSED by the user 2026-11-08 ("scrap it ... the destructor runs when ... the value that has the destructor
  leaves any scope. So if we place it in a list, then that list also has to go ... it's about scope closure"): storage
  a kept view needs is placed where the view is kept and the value's destructor runs where that storage's scope closes
  (one rule with F4's escapedHome). ASKED with it: (1) remove `x.Destroy()` (the user: "doesn't really do anything
  extra. So maybe we should not even have it") - blocks already end values early; rec remove, cost stated; (2) run-time
  scope information (the user: "Would memory management become simpler if every object stored its scope ... if they
  just make things better with very little cost, I can see them" - relaxing their 2026-11-01 rule): (a) a word per
  allocation or (b) scope found from an address (aligned chunks); rec (b), only where no call knows the scope at
  compile time; it makes C1/derived/"not known here" builds possible, not the dangling proof. Both sent to the note.
- DECIDED 2026-11-08 (the user: "Yeah, remove dot destroy. Yeah, do runtime building scope findings with just looking
  up the base address"): `x.Destroy()` (C9b) is removed - blocks end values early; the scope of storage is found at run
  time from its address (aligned chunks, a lookup for large allocations), nothing stored per object (sizes, T.Size, C
  layouts unchanged), only where no call knows it while compiling - relaxing the user's 2026-11-01 "no run-time scope
  word" rule as they allowed ("if they just make things better with very little cost"). Both in the design note.
- QCR (2) REOPENED 2026-11-08 (the user: "I think doing ref counting is a bad idea. But we can't do lists without them,
  right? We should revisit this question"). Answered: lists, doubly linked lists and graphs work today with plain
  references - nodes live where the structure lives; what counting was for is freeing a removed node before that scope
  closes, in long-lived structures that churn (ledger QF). Options: (1) no counting - removed nodes held until the
  structure's scope closes, `-memory` says so; (2) the counting carve-out as decided (counts kept outside the struct, so
  sizes and C layout unchanged, the allocation bigger); (3) a std pool with generational handles (slotmap: index +
  generation, `try pool.Get(h)` fails on a stale handle - a named call, no hidden cost; nodes freed and reused at once)
  for structures that churn, plain references for those that live and die together. Rec (1)+(3), counting dropped.
  ASKED.
- docs/fnvalues.md MERGED 2026-11-08 (design only; 12-round build plan; 27 decisions of the agent's, section 15).
  ASKED from its section 16: (1) follow functions a constructor fixes in a field (Generator.next, the lazy walks,
  Heap's `less`) with the instance - rec yes; default dynamic; (2) promise words on a trait's methods, so calls
  through an `any` rely on them - rec yes, with (1)'s round; default none. QCR (2) (counting) still ASKED. The build
  waits for the user's go.

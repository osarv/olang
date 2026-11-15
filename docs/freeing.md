# Freeing when we can, provably

The user, 2026-11-15: "It's important that we do actually free when we can, and I want this to be provably the case" -
with no `free` or `destroy` ("I don't want to add a free or destroy keyword if we can avoid it"). Until now freeing
before a scope closes was an optimization (O8d): the compiler "may" reclaim. This document makes it a guarantee a
programmer can rely on, lists where today's compiler falls short of it, and says how a build proves it.

## 1. The rule

### 1.1 As SPEC states it (O8f)

**O8f (the freeing guarantee).** Where O8d's conditions hold, what a place lets go of **is** reclaimed at the let-go -
an implementation may not keep it until its scope closes. The let-goes are:

1. a place given another value (S4): a local, a field, a global, an element of an array or of a collection (`v[i] = x`
   through `SetAt`, a `Map`'s `Put` replacing a value);
2. an entry removed from a collection (`Pop`, `Remove`, `RemoveAt`, `SwapRemove`, `TakeAt`, `Take`, `Clear`,
   `Truncate`);
3. a collection's growth replacing its own storage (a `Vec`'s buffer, a `Map`'s slots);
4. a block or loop turn left (O2b) - what it built that nothing outside keeps, already reclaimed with the block;
5. a value with a destructor ended where its holder lets go of it (O15), reclaimed right after its destructor runs.

The conditions (O8d's, unchanged): the storage was **made for the place** (built there - a constructor, a literal, text
joined or rendered, a call's new result - or moved there from its only holder); **no reference into it is kept
elsewhere** (another place, a global, a capture kept past its call, a task, a call that keeps it); **no reference read
from it is in use** after the let-go; it is not reached by **more than one thread**; and **no destructor** of what it
holds is still to run. Each condition is one a programmer can check by reading the code; none depends on how the
compiler is built.

Where a fact the conditions need **cannot be known** the place keeps, and only there. The exceptions, all of them:

- **a call through a function value nothing of which is followed** (T22a): not made in the function, not a lambda or a
  function written as an argument, not a parameter the body never assigns - and whose type promises nothing (`pure`,
  fnvalues round 10): it may keep any argument and let go of anything;
- **C that may call back** (X12, O8d condition 3): an `extern` in a program that gives C an `export fn`, is built
  `-library`, or links C of its own - but for libc's I/O, text, memory and time functions;
- **storage a task can reach** (condition 3), and **an instance whose destructor is still to run** (condition 4).

Not exceptions any more (checked 2026-11-15): a module compiled on its own (W2, wholeprog 2.1: every module's code
reads the program's decisions as link-time constants, so a precompiled module frees as the root decides, B3i);
function values that are followed (fnvalues rounds 4-10); a scope found at run time (O29 places storage, it decides no
let-go).

Reclaiming is unobservable but in memory: no value read changes, no destructor runs early (O15).

### 1.2 What it means for a program

A loop that replaces what a long-lived place holds runs in the memory of one value of that place, whatever it runs
for: `s = s + $i` holds one text, `m.w = step(m.w)` one tensor, `cache.Put(k, v)` one value per key. Where the loop
keeps more, `-memory` names the place and the condition that keeps it (B18), and the fix is the program's (store a
copy, read what you need before the let-go); where it keeps for no condition, `-memory -check` fails the build (1.3).

### 1.3 The proof

**`-memory -check` (B18a).** A `-memory` build reports every let-go the program's own code makes in code that runs
again - a loop, or a function other than `main` - of storage the place owns: the ones that free at once are counted, a
kept one gets a row naming its condition. With `-check` the build fails (status 1) where a let-go is kept for a reason
that is **none of O8f's conditions or exceptions** - a let-go the compiler does not follow (a construct of the gap
table, 2), or one it keeps on an approximation narrower than the rule. Such a row says `memory: ... is not followed by
early freeing (a gap in the compiler, O8f)`. A program building under `-memory -check` frees at every let-go the rule
names: that is the guarantee, checked per build, at compile time only.

**The other half - never freeing what is still used** - is shown three ways, all existing:
- the scope sanitizer (B2f, `-sanitize`, `make scopesan`): a released region's chunks are poisoned, so a read through
  a reference into it stops the program;
- scopefuzz (`make scopefuzz`): random programs of stores, views and let-goes, run under the sanitizer and the
  evaluator, which stops on a read of a freed region;
- `interpret` (B3e): the evaluator models regions and fails a read of a released one; every earlyfree program runs
  interpreted beside the build (checks' `earlyfree`).

**Measured** (checks' `earlyfree`, `freeing`): each gap program of section 2 runs under an address-space limit a kept
let-go would exceed, and its peak stays flat as its loop count grows.

## 2. The gap list

Measured 2026-11-15 on master e6232af1 (peak resident memory, KB; baseline ~13 MB, the runtime's chunk reserve):

| # | construct | today | rule | cause | status |
|---|---|---|---|---|---|
| 1 | text built by reassignment, `s = s + $i` (AI study x01) | 850 MB at 20,000 turns | one text | a text local was no place (owner locals only); an `Assign` of an array value wrote in place | **fixed**: 13 MB |
| 2 | the same in a function, and through `+=` | as 1 | as 1 | as 1 | **fixed** |
| 3 | a call's new text into a local each turn, `x = mk(i)` | 108 MB at 20,000x10 | one text | as 1 (decided sole, never released) | **fixed** |
| 4 | a mutable array local given new arrays, `a = mk(n)` | 700 MB at 80,000 | one array | as 1 | **fixed** |
| 5 | a mutable global text, `Log = Log + $i` | 2.2 GB at 32,000 | one text | a global place only for owners and references | **fixed**: 13 MB |
| 6 | a text field replaced, `d.text = d.text + $i` (local struct, or through `mut Doc&`) | 2.2 GB | one text | the struct's constructor value is copied into the local (RCopied): its fields' first values not taken as made for them | **fixed**: 1.7 GB to 13 MB (freeing's fields, 20,000 turns) - the copy D9h makes of a constructor's instance a struct local is declared with is built for its candidate parts (free.olang letCtorOf, viewCtor) |
| 7 | an owner field replaced, `m.w = step(m.w)` | 258 MB at 32,000 | one tensor | as 6 | **fixed**: 85 MB to 13 MB (`Model(v)`, `Model(fill(n))`); a struct holding the Model by value in a constructor's field keeps per declaration (condition 2, 2.6 item 1) |
| 8 | an array's element given new text, `names[i % 10] = ...` | grows (42 MB at 320,000) | ten texts | element stores never let go (docs/memory.md 2.6 item 7) | **fixed**: 102 MB to 13 MB at 3,200,000 (with 9) - an array's text elements are a place, each value built in a slot, the assignment a let-go |
| 9 | a `Vec`'s element given new text, `v[i] = ...` | grows | ten texts | as 8, through `SetAt` | **fixed** with 8 (the buffer's elements are the same place) |
| 10 | a `Map`'s value replaced by `Put` (`Map<String, String>`) | grows | one text per key | `Put` is no let-go; a text value beside a text key no slot | **fixed**: 52 MB to 13 MB at 400,000 (with 15) - an entry whose text parts are all it owns is copied into slots whole, each part freed alone |
| 11 | a `Vec` local growing | 2x its final size | old buffer freed at each growth | an array place only for a Vec held in a sole place | **fixed** (round 3, 2.1): 130 MB to 97 MB for two Vecs of 4,000,000 grown one after the other in a program with an owner holding a `Vec<I64>` whole, or a copy of one - the program alone's 97 MB - with no cost per operation or per copy: a part place's values are built in part regions, released through their addresses |
| 15 | a `Map` entry's text key beside a `Vec` value, at a removal (earlyfree's mapkeys) | the key's text kept | freed with the entry | a split entry's key is built where the map lives, not in a slot | **fixed** with 10 - the split copy builds the key in a slot of the region's parent (free.SlotParts, lower.splitCopy); mapkeys passes `-memory -check` |
| 16 | a local declared with no value (D13d) given new text in a loop | kept | one text | an unset local is no place (its storage holds nothing written before its first assignment) | **fixed**: 274 MB to 13 MB (a Vec and a struct) - lowering writes zero bits for a local place declared with no value, its first release a no-op |
| 17 | an element owning storage that is not text, `rows[i] = mk(i)` (`Array<Vec<I64>>`) | kept | one Vec per element | only text elements are a place (a region per Vec element would cost ~400 bytes each) | **fixed** for an element owning storage only as part places' arrays of plain values (a `Vec<I64>`, through `SetAt` too): 106 MB to 3 MB at 50,000 turns - its parts released, no region per element; open for one owning more (`Array<Vec<String>>`: the buffer is freed, the text it held kept - the `-memory -check` fixture, checks' gaps.olang) |
| 18 | a `Map` value copied out and changed, `u := m.Get(k); u.Push(x)`, beside `m.Put(k, ...)` replacing values | 230 MB at 200,000 turns | one value per key | the copy keeps the entry's value place: its origins are those of the view `Get` hands back (RInPlace), though D9h copies it where it is kept | **fixed**: 24.5 MB to 1.9 MB at 20,000 turns - a local lowering surely copies a view call's value into (written, assigned, stored, or lent to a body changing its parts: never a view local, `lower.viewCand`) owns its parts anew (`free.olang` copiedView, copiedLocals, the lowering's Preserves) |
| 19 | a call's value local landing in a long-lived place, `rows[i % 10] = mk(i)` | +32 bytes a call | nothing kept | the returned local (`w Vec<I64>`) is allocated where the result goes (O26a) - the array's scope - and copied out by value | **fixed**: 26 MB to 1.6 MB at 1,000,000 calls, 90 MB to 1.6 MB at 4,000,000 - the scope pass records O26a's reason alone (`Plan.RetFrame`: returned only whole, by value, nothing else carrying it there), and lowering keeps such a local's slot in the frame where nothing names its storage past the body (`lower.olang` retFrames, namesKept), its parts still built where the result goes; checks' freeing returned |
| 12 | oann's tempref: a temporary given to a `&` parameter whose callee copies it into a struct holding a reference | +5,580 kB over 100,000 calls | nothing kept | a scope variable no argument and no obligation determines was bound where the call's result lands (`scope.olang` bindRest): `View.Make(o.mem, Dims(4))`'s `Dims` built in the result's scope, which `read(o.View())` lands in o's | **fixed**: +72 kB (bound to the block where the callee builds nothing into it, names it in no relation, and its result views no parameter of it - onlyForCall) |
| 13 | oann's joinleak: a `join` with spawns | +110 B per join | nothing kept | every task given a stand-in per scope variable, made in the spawner's caller's scope (56 B each) - for a callee building nothing | **fixed**: flat (98 pages at 200,000 and 800,000 joins) |
| 14 | text a task builds into a loop turn's local (g09) | +8 KB per turn | nothing kept | the task's chunks are folded into the joiner's pool (O8b), workers ask the OS for new ones | **fixed**: the joiner shares its pool beyond a batch at each join, 160 MB to 13 MB |

Freed already (measured flat): a struct local of an owner replaced (`t = step(t)`), an array local copied from a
turn's array (`a = b`), loop-turn locals and closures, `Pop`/`Remove` of maps and vecs (checks' `earlyfree`).

Found on the way: an immut array assigned a value of the same length was written in place, so a slice of its old value
read the new text (`v := s[0:2]; s = "x" + $2` printed `x2`): T13a says an immut value is replaced whole. Fixed with 1.

### 2.1 A Vec's growth (gap 11), measured 2026-11-15; closed in round 3

`Vec<T>`'s buffer is one place for every `Vec<T>` of the program (keyed by the type, 2.6 item 1 of docs/memory.md). Where
it is decided sole each growth builds the new buffer in a region of its own and releases the old (the `retire()` left
out): a local growing to 4,000,000 elements peaks at 66 MB for a 33 MB buffer - the old and the new side by side at the
last doubling, the least a doubling can do. Before round 3 it kept for the whole program where:
- an owner place holds a `Vec<T>` whole (a local or field given new Vecs, `a = mk(i)`) - "owners win" (free.decide):
  the owner's value is one region, released through its first anchor, so a buffer in a region of its own would leave
  the owner's other storage behind; or a reference into a buffer is stored with the owner's value (RStore);
- a copy of a `Vec<T>` is made with no store into the place (`m.Get(k)`, a by-value argument copied, D9h): its buffer is
  built where the copy lands, outside any region, so a growth of the copy could not release it.
Then the same program peaks at 98 MB. Closing it needs a buffer's region to be found and released at run time apart
from its owner's - a growth region kept outside the owner's (its parent the owner's parent, so Settle and the owner's
release each drop only their own), the owner's release dropping every region its anchors name, and the copies' buffers
built in regions of their own (a region per copy, ~400 bytes) - a design of its own, not started: see the report of
2026-11-15 (the decision asked).

**Round 3: part regions, with no cost per operation or per copy.** Both causes come from one assumption: that every
value of a sole array place is the only thing in its region, so its let-go may release the region the word before it
names. The design drops it instead of paying for it:
- A **part place** (`free.PartPlace`) is an array place a struct holds by value that is no slot place - a Vec's buffer, a
  Map's slots, a text field. Its values made for it are built in a **part region** (`mir.Rvalue.Part`, the runtime's
  `__olang_region_make_part`: a region whose header says so, eight bytes more per region).
- Its let-go (`mir.Stmt.ReleasePart`, `__olang_region_release_part`) finds the region from the array's address - O29's
  chunk lookup, which already finds any storage's scope (a mask, or the large table's search for an array of 128KB and
  more), never a word before it - and releases it only where it is a part region. An array of the place built anywhere
  else - a copy's, built where the copy lands; the first buffer of an owner's value, built in that value's region - is
  left where it is and reclaimed with that (condition 1: not made for the place), and an empty array names nothing.
  So a copy is no reason to keep (untracked), and costs nothing: no region is made for it.
- An owner's release and settle read an anchor in a part region as part of the region that part region is a kid of
  (`__olang_region_home`): what the owner's value grew while it was built is released with it. So an owner held in a
  sole place is no reason for its part places to keep either ("owners win" is gone for them).
- What made the owner cases keep on the way: a value stored whole through no reference holds its own part places'
  arrays (no reference stored elsewhere), a by-value local or place so held reads no view of them when borrowed or
  used after another value's let-go, and a call's result is made after what the call itself lets go of.
The cost: no instruction per operation and no allocation per copy. A growth's release does a chunk lookup where it
read a word (a lock for an array of 128KB or more, beside a copy of all of it); an owner's release reads one header word
per anchor; a region's header is 160 bytes, not 152. Measured: two `Vec<I64>`s of 4,000,000 grown one after the other in
a program with an owner holding a `Vec<I64>` whole peak at 97 MB (130 MB before), as the program alone does; with a
`m.Get(k)` copy, 97 MB (130 MB).

**Gap 17 on the same footing.** An element owning storage only as part places' arrays of plain values (`free.PartsOnly`:
a `Vec<I64>`, a struct of such) lets go of those parts where it is given another value - in the program's `a[i] = v` and
in the prelude's `SetAt` - each released through its address: a part region is released, anything else left. No region
per element is made. An element owning more (a `Vec<String>`: the text its buffer holds) still keeps that and is
reported (checks' gaps.olang).

## 3. Order of work (phase 2)

1. The gaps that cost real programs: 1-4 (done), 13 (a plain runtime leak), 12, 5, 6-7, then 10, 8-9, 11, 14.
2. O8f in SPEC; B18's `-check`.
3. Tests: checks' `freeing` scenario (each program of the table under a limit, `-memory -check` over the earlyfree
   fixtures), corpus tests reading back after churn, the evaluator's agreement.
4. Records: docs/settled.md, HISTORY.md, DEPENDENTS.md (`-memory -check`).

## 4. What -memory -check reports, measured

A gap row (B18a) at: an assignment, in code that runs again, of a place holding storage that no place follows (a local
declared outside the loop that is no candidate, a global or field of a kind not followed, an element owning more than
text or part places' arrays of plain values - gaps 8, 16, 17); a
`SetAt` giving an element owning storage (gap 9); a B18 place kept for a copy of its holder or a change in place
(RCopied, RInPlace - gaps 6, 7); a program's call - a removal, `Put`, `SetAt` - whose library place keeps for a reason in
the library's code (gaps 10, 15). Every earlyfree fixture passes; `checks/fixtures/freeing/gaps.olang` fails naming its
element (an `Array<Vec<String>>`'s, gap 17's open part). A text element place is reported where the program's own code gives an element
another value; its removals are the collection's.

### 2.2 Gap 17's text part, analysed 2026-11-15 (wt-sect8), not built

`rows[i % 10] = Vec<String>[$i]`: the old element's buffer is a part place and is freed (round 3); the text its elements
held is not. What freeing it needs, and what stands in the way:
- **The place.** The strings in any `Array<String>` - a Vec's buffer included - are one slot place by type (`free.SlotPlace`,
  key field -1). In checks' gaps.olang it is decided not sole for one reason only: `Array<Vec<String>>(10)`'s zero fill,
  ten copies of `Vec<String>()` (RCopied, `makeOf`'s untracked). A zero value's copies hold no text where the type's
  constructor stores none (a Vec's buffer is empty), but the pass has no per-body "stores into place k" summary to show
  that of a constructor in general; exempting a fill whose value is a constructor call storing nothing into the place,
  transitively, is the first step.
- **The release.** With the place sole every string in a buffer was made for its element (a copy of a `Vec<String>`
  anywhere in the program keeps the place, which is what "copies break the every-string-is-a-slot assumption" means -
  the per-element question is answered per place, statically, at no run-time cost). The element's let-go must then put
  each string of the old buffer back (`ReleaseSlot` per element) before the buffer's part region goes: a loop over the
  buffer in the let-go, which lowering has no form for - the element releases today are a fixed list of paths
  (`lower.releases`, `relPath`). A release helper per value type (a `mir.HelperKind` walking part places, slot elements
  first), emitted, evaluated by the interpreter and held to the verifier, is the second step.
- **The dead positions.** A Vec's buffer past its length holds what `Remove`/`Pop`/`Truncate` vacated and what growth
  left; the walk must read only `[0:n]`, or every vacated position must be zero bits, or a slot already put back by the
  removal would be put back twice. The prelude's removals vacate (`vacate` releases the slot) but leave the bits, so the
  walk stops at the Vec's length - which is a Vec's, not an `Array<String>`'s, so the helper is per holder type.
Cost when built: none per operation; a let-go of such an element walks its old live elements once.

## PROGRESS

- 2026-11-15: gaps 1-4 closed (`compiler/free.olang` ownLocalCand takes array locals; `compiler/lower.olang`
  valueArrayStore/replaceStore; ConstLocal keeps a text local's constant uncopied so its first release reads the
  constant's zero word). Phase 1 written.
- 2026-11-15: gap 5 (text and array globals), 13 (no stand-ins for a callee building nothing: `lower.olang`
  taskPassed/buildsFact, a `P2 NAME` fact), 14 (`runtime.ll`: the joiner shares its pool at each join) closed. SPEC O8f
  and B18a; `-memory -check` built (`free.olang` gap/unfollowed/libraryGaps, `msgs.MemoryGaps`); checks' `freeing`
  scenario; corpus tests in tests/immut.olang. Self-build fixed point; scenarios earlyfree, freeing, memoryplaced,
  regions, landing, chunkpool pass. Gap 12 (tempref) closed (`scope.olang` onlyForCall); the self-build fixed point
  and every checks case pass with it. Next, by cost to real programs: 6-7 (RCopied), 10 and 15 (Map entries' text),
  8-9 (elements), 11, 16.
- oann's AdamW "a step allocates nothing" (nn/optim.olang) fails 3 of 3 runs with olangcur's compiler (~100 B a step,
  a gemm join per step - the joinleak pattern). The run with this branch's compiler could not be made: oann master is
  written with adjacency joins and an older error syntax this branch no longer reads; it is to be rerun once oann is
  migrated (the joinleak repro itself is flat: 98 pages at 200,000 and 800,000 joins).
- 2026-11-15, verified on the branch's compiler (stage 1 from the final source, which built itself byte for byte): every
  checks case; the scenarios earlyfree, freeing, memoryplaced, regions, landing, chunkpool, scopefind, fieldset, twins,
  scopesan, weakmods; tests/*.olang under `-debug -sanitize` (1232 passed); scopefuzz seed 7, 150 programs, 0 findings;
  the corpus and std tests built (tests/shared.olang's T11b expectation updated: an immut String is replaced whole).
- 2026-11-15, round 2 (wt-freeing2): gaps 6-10, 15 and 16 closed - a struct local's constructor copy built for its parts
  (free.olang letCtorOf), a local declared with no value a place holding zero bits (lower.olang's Let), a Map entry's
  text parts in slots (free.olang slotWhole/slotSplit, lower.olang splitCopy, the evaluator's slot scope giving each
  allocation a region of its own), an array's text elements a place in slots (free.olang placeKey, SlotPlace). Gap 11
  analysed (2.1), left for a decision; gap 17 found (an element owning storage that is not text). Fixtures: checks'
  freeing fields, elements, mapvalues, unset; mapkeys under `-memory -check`.
- 2026-11-15, round 3 (wt-freeing3): gap 11 closed with no run-time cost (2.1: part regions, `free.olang` PartPlace,
  `runtime.ll` `__olang_region_make_part`/`release_part`/`home`, `mir` Part/ReleasePart, the evaluator's part scopes);
  gap 17 closed for elements owning only part places' plain arrays (`free.olang` PartsOnly, `lower.olang` releases).
  Found: gap 18 (a `Map` value copied and changed keeps the entry's value place) and 19 (a returned value local built
  where the result lands, 32 bytes a call). Fixtures: checks' freeing growth (gap 11, its own peak), vecelems (17),
  gaps.olang moved to an `Array<Vec<String>>`; the regions scenario's C driver gained part regions.
- 2026-11-15, round 3 follow-up (wt-freeing4): gap 18 closed (a copied view local owns its parts); fixture checks'
  freeing mapcopy.
- 2026-11-15, wt-sect8: gap 19 closed (`Plan.RetFrame`, lowering's retFrames: a returned value local's slot in the
  frame, its parts where the result goes - 90 MB to 1.6 MB at 4,000,000 calls; checks' freeing returned). Gap 17's text
  part analysed (2.2) and left: a release walk over the old buffer's live elements and a fill exemption are the next
  round's.

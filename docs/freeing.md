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
- `-free late` (B18b), the independent oracle: the program built with early freeing off, every let-go kept until its
  scope closes. The three above all run the same releases - where the free pass wrongly allows one, the build, the
  sanitized build and the evaluator read the emptied value together and agree (review5's F1). A build with no early
  freeing runs none of that code, so its output is the right one: checks' `earlyfree` and `freeing` build every program
  at a small size both ways and require the same output (memory limits apply to the usual build only). A review runs
  each probe both ways - `olang build P.olang` and `olang build -free late -output late P.olang` - and compares what
  `./build/P` and `./late` print; any difference is a release the analysis allowed wrongly (or, rarely, a program that
  reads past what it may, which `-sanitize` then names).

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
| 17 | an element owning storage that is not text, `rows[i] = mk(i)` (`Array<Vec<I64>>`) | kept | one Vec per element | only text elements are a place (a region per Vec element would cost ~400 bytes each) | **fixed** for an element owning storage only as part places' arrays of plain values (a `Vec<I64>`, through `SetAt` too): 106 MB to 3 MB at 50,000 turns - its parts released, no region per element; round 6 (2.2): for a Vec of text (150 MB to 13 MB at 20,000 turns of 20 strings) and a Vec of Vecs (376 MB to 13 MB at 80,000 turns) - each live element's slot or parts released first; round 7: for an element owning a `Map` (219 MB to 13 MB at 20,000 turns of three Map kinds, checks' freeing mapelems) - each live entry's key slot and value region released, then its entries, links and buckets (2.3) |
| 18 | a `Map` value copied out and changed, `u := m.Get(k); u.Push(x)`, beside `m.Put(k, ...)` replacing values | 230 MB at 200,000 turns | one value per key | the copy keeps the entry's value place: its origins are those of the view `Get` hands back (RInPlace), though D9h copies it where it is kept | **fixed**: 24.5 MB to 1.9 MB at 20,000 turns - a local lowering surely copies a view call's value into (written, assigned, stored, or lent to a body changing its parts: never a view local, `lower.viewCand`) owns its parts anew (`free.olang` copiedView, copiedLocals, the lowering's Preserves) |
| 19 | a call's value local landing in a long-lived place, `rows[i % 10] = mk(i)` | +32 bytes a call | nothing kept | the returned local (`w Vec<I64>`) is allocated where the result goes (O26a) - the array's scope - and copied out by value | **fixed**: 26 MB to 1.6 MB at 1,000,000 calls, 90 MB to 1.6 MB at 4,000,000 - the scope pass records O26a's reason alone (`Plan.RetFrame`: returned only whole, by value, nothing else carrying it there), and lowering keeps such a local's slot in the frame where nothing names its storage past the body (`lower.olang` retFrames, namesKept), its parts still built where the result goes; checks' freeing returned |
| 20 | a copy of a view read out of a collection in an expression, `t += v[i][2][0]` (`Vec<Vec<Vec<I64>>>`) | +0.7 KB a turn | nothing kept | the copy D9h makes of what `At` hands back lands in the collection's scope, not the statement's - not a let-go, a temporary placed too long-lived | **fixed** (round 7): 151 MB to 13 MB at 80,000 reads - no copy: a call's argument read where it stands where the call itself is (`lower.args`), a temporary's storage a stable place (`stablePlace`); a copy that must be made (`m.Ref(k)![3][j]`) goes into the reading block (checks' freeing views) |
| 22 | an element holding a struct with a Vec field by value given another, `ps[i % 10] = P(Vec<I64>[i])` (`P struct(a Vec<I64>)`) | 777 MB at 1,600,000 turns (`Array<P>`), +64 B a turn through `SetAt` (`Vec<P>`), +1.2 KB a turn where the field's owner place is sole | nothing kept | the element's let-go released only part leaves (`PartsLet`, `lower.partReleases`); a struct's Vec field is an owner place (ownerCand), whose buffer's part place lies past it; a `SetAt`'s copy built the field's buffer in no part region; a local stored whole at its last use was copied, not moved, where early freeing made the copy a region | **fixed**: the element's let-go releases each owner field's region where its place is decided sole (first, the field left empty), else its part leaves (`free.ReleaseLeaves`), the free pass counting both among its let-goes; a copy made for an owner place builds its parts in part regions (`free.OwnerSite`, `lower.ownerCopy`); a local lifted where its last use's copy goes is moved there where the copy's region is made only for its own owner or part fields (`free.MovesLeaves`), its slot kept in the frame (`homeKept`) - an `Array<Vec<I64>>` given a Vec local kept ~500 B a turn so, unnamed. An owner's own let-go judges views of its parts (`walker.goParts`) and releases them where it is not sole (`lower.ownerParts`): before, `q.a = w` released a buffer a view still read, where `Q.a` kept for a change in place. 777 MB to 13 MB, and the rest flat under 8 MB; checks' freeing structelems, ownerelems (`SetAt`, owner not sole), soleelems (owner sole, moved locals), each under `-memory -check`; a by-value argument's copy its callee only reads (`v[i] = p`, `SetAt` Preserves it) keeps no place (`free.preservedArg`), a fill builds its elements' owner fields as their stores do (`lower.fillCopy`, a fixed array's only as a plain local's value built in a block), the statement's read of the argument is no view in use across the old element's let-go (`free.copiedArg`), and a call's value lent read-only through its fields (`v[i].a[1]`) is no copy kept (`tempPlaceCall`): structelems and copyelems too; a fill copying a local (`Array<Q>(4, base)`) is no view of what base's owner fields hold (`free.makeOf` unowns its origins, as a copy's), and a fixed fill given storage only to be read or lent through (`Array<Q>(4, base)[3]`) splits as a plain local's (`free.blockFillOf`): fillelems |
| 12 | oann's tempref: a temporary given to a `&` parameter whose callee copies it into a struct holding a reference | +5,580 kB over 100,000 calls | nothing kept | a scope variable no argument and no obligation determines was bound where the call's result lands (`scope.olang` bindRest): `View.Make(o.mem, Dims(4))`'s `Dims` built in the result's scope, which `read(o.View())` lands in o's | **fixed**: +72 kB (bound to the block where the callee builds nothing into it, names it in no relation, and its result views no parameter of it - onlyForCall) |
| 13 | oann's joinleak: a `join` with spawns | +110 B per join | nothing kept | every task given a stand-in per scope variable, made in the spawner's caller's scope (56 B each) - for a callee building nothing | **fixed**: flat (98 pages at 200,000 and 800,000 joins) |
| 14 | text a task builds into a loop turn's local (g09) | +8 KB per turn | nothing kept | the task's chunks are folded into the joiner's pool (O8b), workers ask the OS for new ones | **fixed**: the joiner shares its pool beyond a batch at each join, 160 MB to 13 MB |
| 21 | oann's spawnleak: a `join` whose task builds into (or may build into) a long-lived value | +113 B per join | nothing kept | the stand-in a task builds through was made in the scope it stands in for (56 B each, two here), kept there as a forwarder until that scope closed - main's, never | **fixed** (P2b): flat (4 pages at 100,000 joins) - made in the join block's scope; what may outlive the join (a closure, a generator, a handle) holds a keeper made in the stand-in's own storage, which the fold gives to the parent; checks' joinflat |

Freed already (measured flat): a struct local of an owner replaced (`t = step(t)`), an array local copied from a
turn's array (`a = b`), loop-turn locals and closures, `Pop`/`Remove` of maps and vecs (checks' `earlyfree`).

Found on the way: an immut array assigned a value of the same length was written in place, so a slice of its old value
read the new text (`v := s[0:2]; s = "x" + $2` printed `x2`): T13a says an immut value is replaced whole. Fixed with 1.
Round 7: a `Map` copied into an element (`v[i] = m` through `SetAt`, `a[i] = m`) was copied whole by the Copy helper -
its keys' text in no slot while the key place was decided sole - so a later `Remove` put back as a slot what was none
(`-sanitize` stopped, the slot release read a word of the text before it as a class); the copy is now split as a `Put`
builds an entry (2.3).

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

### 2.3 Rounds 7 and 8 (wt-freeing7, wt-freeing8): a Map in an element, gap 20, and a copied Vec of text

**An element holding a Map** (gap 17's last kind). `free.MapFields` reads the prelude Map's `ents`, `n` and `next`; a Map
whose entries own storage only in text slots and in their value's own place (`free.EntryOnly`: a `String` key or value,
a `Vec` value whole) is PartsOnly, its entries a walk of their own (`VecWalk.Next`): the element's let-go releases each
live entry's leaves - a slot below `n` whose link is -1 or more, the prelude's `live` - as a removal's `vacate` does, then
the entries, links and buckets. A Map copied into an element (`SetAt`'s store, an array store of a copy) was copied whole,
with one owner leaf made for no place (`copyLeaves` with several owners): now its first part place's array is built in
the site's part region and the copy is split (`lower.partSplit`) - every other part in a part region of its own
(`partOf`), each live entry copied as `Map.add` builds one (`entryCopy`: text in a slot, a value in a region of its own,
settled where empty), an emptied slot left empty. A Map literal's `"$i": i` makes an instance viewing the text rendered
for it, no copy (`typed.FreshViews` takes rendered text built where the instance lives). Peaks (checks' freeing
mapelems, 20,000 turns): `Array<Map<String, I64>>` 70 MB to 13 MB, a `Vec<Map<String, I64>>` through `SetAt` 43 MB to
13 MB, `Array<Map<String, Vec<I64>>>` 106 MB to 13 MB; the three together 219 MB to 13 MB. mapelems, which adds a
removal from a Map `SetAt` copied in, ended in a segmentation fault on master (the bug of section 2).

**Gap 20.** A call read where it stands now makes its own read-only arguments read where they stand too, whatever its
result views (`lower.args`: `v[i][2][0]` - `v[i]` is lent to `[2]`, whose value only `[0]` reads), and a temporary's
storage given a call's value read in place is as stable as that value (`stablePlace`'s Temp). Where something in the
statement could change the view, the copy is made in the innermost block open (`m.Ref(k)![3][j]`), never where the
callee's result would live. 151 MB to 13 MB at 80,000 reads; checks' freeing views.

**A copied Vec of text (item 3): measured in round 7, built in round 8 (wt-freeing8).** A by-value argument a callee
changes (`longest(rows[i])`) and `c := rows[i]` copy a Vec of text. Round 7 built every copy's text in slots of where
the copy goes (the Copy helper's array and struct parts, `lower.copySlots`, guarded by the place's decision;
`free.untracked` keeping no slot place for a copy lowering makes) and took it out at +70% a copy: 142-152 ms against
238-296 ms for 1,000,000 copies of a `Vec<String>` of 20 strings. The cost was not the slot list. Each string paid for a
slot scope cleared whole (128 bytes, its eight records included), a bump tried in `@__olang_slot_chunk` and failed, a
call to `__olang_scope_alloc_slow`, a tail call to `__olang_gen_buf`, and two calls for its class. Round 8:

- an allocation in a scope a local holds (`mir.ScopeRef.Held`: a slot scope, a region, a part) goes through
  `__olang_held_alloc` (emit.olang `arrayStorage`, `textStorage`), which tests the head and makes a slot scope's
  allocation one call, `__olang_slot_alloc`: the class of up to 256 bytes worked out with no table, the slot taken from
  the scope part's free list or bumped (`__olang_gen_alloc`, inlined into it), the header and the record written as
  `gen_buf` writes them. Anything larger is still `gen_buf`'s. No other allocation site grows;
- a slot scope clears its scope header and its count, not its records (only those below the count are read);
- a copied array of text makes one slot scope before its loop, not one a string (`lower.slotsOf`).

Inlining `__olang_slot_alloc` into modules as well was measured and left out: it saved nothing over the one call, and
it made the self-build's clang work 3-7 s longer. Alternated in one run (ms, 41 runs each, min / median):

| 1,000,000 copies of a `Vec<String>` of 20 strings (a by-value argument the callee pushes to) | min | median |
|---|---|---|
| arena (master: the text place kept) | 144 | 159 |
| slots, round 7 (`gen_buf` through the slow path) | 231 | 249 |
| slots, round 8 with `__olang_slot_alloc` inlined | 149 | 161 |
| slots, round 8 as built (`__olang_slot_alloc` one call) | 153 | 164 |

That is within 4% of the arena, inside this machine's noise (another run gave 150 against 169, one before it 152 against
156), so round 8 builds it. checks' freeing copytext (80,000 turns of a by-value argument and a local copy) goes from 50
MB to 12 MB and from 86 ms to 70 ms (the slots are reused). The compiler building itself, cold, master's compiler
against round 8's on the same source: the front end 11.6 s against 11.4 s, clang 73-74 s against 74-75 s - equal within
the noise of two runs each.

Two bugs found once copies stopped keeping the text place:

- a slot scope made over a slot scope (a `Map` entry's text copied in a Copy helper `Map.add` hands a slot scope to)
  read a scope as its tail chunk: checks' freeing mapvalues ended in a segmentation fault. A slot scope made over one
  now builds into its tail (emit.olang `slotScope`, `flatScope`);
- a fixed array a comprehension writes element by element (T7c: `Array<String>[$w + "!" for w in ws]` over three
  words) is declared unset (D13d) and was never cleared, so each element's store let go of whatever the frame held once
  its text place was decided sole - tests/valueparts.olang and tests/bench.olang stopped under `-sanitize`. An unset
  array whose elements are a place now holds zero bits (`lower.elemsPlaced`), as an unset local place does.

checks' gaps.olang, the fixture of a gap -memory -check names, is now an `Array<Map<String, Vec<String>>>` copied: the
copy of a Map whose values are Vecs of text is made with no store into its places (two rows).

What round 7 did build for it: the buffer. A by-value argument the callee changes is a copy lowering surely makes
(`lower.argView` leaves out only one the callee keeps as it is), so what the argument reads is read for the copy alone
and over before the call lets go of anything (`free.copiedArg`, the walker's `copying`) - the Vec's buffer place no
longer keeps for "a value of it read in this statement is in use when 'longest(rows[...])' lets go of it".

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
element (an `Array<Map<String, I64>>`'s, gap 17's open part). A text element place is reported where the program's own code gives an element
another value; its removals are the collection's.

### 2.2 Gap 17's text part, analysed 2026-11-15 (wt-sect8), built in round 6 (wt-freeing6)

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

**2026-11-15, wt-freeing5: step 1 built, step 2 found blocked.** The fill exemption (`free.emptyValue`: a constructor on
its zero arguments whose body only declares fields given constants, zero bits or such parameters makes no value of any
place) and a temporary lent for reading being no untracked copy (`readArg`, `v[i][0]`) make the slot place sole in
gaps.olang and its Vec-of-text variants. The walk (a loop in lowering's releaseAt putting back each slot below the Vec's
count, then the buffer's part release) was built and removed: a Vec of text built in a callee and handed by value into
an element (`v[i] = mk(i)` through `SetAt`) has its strings' slots in the scope the callee's result landed in (the loop
turn's), while its buffer is settled into the element's region - a slot put back after that scope closed writes a
reclaimed scope part's free list (`-sanitize` and the evaluator both stop there). Next: the value built where the
element lives (the callee's result landing in the place's scope when the callee stores its by-value argument into a
place), or a settle re-homing the slots; then the walk. Peak at 20,000 turns of 20 strings: 169 MB before, 157 MB now.

**2026-11-15, wt-freeing6: step 2 built, at no cost per operation or per store.** The slot homes were not the cause. The
text the walk met in a closed or foreign place was text `SetAt`'s copy had built in its part region together with the
buffer (the Copy helper builds every part in one scope): the evaluator's slot release closed that whole region at the
first string, and the sanitizer read the region's address before the text as a slot's class. Nothing the place holds is
in a scope shorter than the element: a value moved into a longer-lived place without a copy would be a dangling
reference in any build. So, the zero-cost fix of the brief, made precise:
- **A part region holds the one array it is made for** (`lower.partCopy`, `free.PartSplit`): a copy made in a part region
  whose value owns more - a Vec of text's strings, a Vec of Vecs' buffers - is split: the array in the region, each text
  element in a slot of the region's parent (`mir.Rvalue.Slots`) where the text place is decided sole, each PartsOnly
  element's arrays in part regions of their own (settled at once where empty), anything else in the parent; a Vec's
  room past its count left empty, as the Vec keeps it. This also closed a use-after-free of round 3: a `Vec<Vec<I64>>`
  copied whole into a part region held its inner buffers there, and replacing an inner element released the outer's
  region (`h.RefMut(0)[1] = ...` read freed storage under `-sanitize` and in the evaluator).
- **The walk** (`lower.textWalk`, `free.VecWalks`): an element's let-go of a PartsOnly value releases each Vec's live
  elements - below its count - before the buffer: a text one's slot put back (`ReleaseSlot`), a PartsOnly one's parts
  in turn (a Vec of Vecs). The runtime's slot release, and the evaluator's, put back only a slot - text in a region is
  left to the region (`__olang_slot_release` reads the chunk's owner first). The element's let-go lets go of every place
  it reaches (`free.PartsLet`), so a view in use across it keeps them.
- **An occupy lets go of nothing** (`typed.Body.Rooms`, C11): Push's store into room was judged a let-go, so pushing a
  local Vec (`o.Push(w)`) kept the Vec's buffer place program-wide (a value of it read in the statement).
- **D14d as SPEC says**: an `Array<T>(n)` of elements owning storage is cleared even before a filling loop - the store
  in the loop released what was never there (a wrong sum, 2241717261 for 2241716100, in a fill loop of `Vec<I64>`s).
Peaks: 150 MB to 13 MB (checks' freeing vectexts, the baseline), a Vec of Vecs 376 MB to 13 MB at 80,000 turns
(vecvecs). Left: an element owning a `Map` (its entries' live slots are read by state, not a count), and a program
copying a Vec of text (a by-value argument copied, a copy read out of a collection) keeps the text place - a copy's text
is no slot (building every copy's text in slots would lift it, at a slot allocation per copied string).

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
- 2026-11-15, wt-freeing6: gap 17 closed for Vecs of text and Vecs of Vecs (2.2); a round-3 use-after-free (a Vec of
  Vecs' copy in one part region) and a D14d fill releasing uncleared elements fixed; occupy no let-go; gap 20 found.
  G42 counts a value local placed where it is kept (keptLocal). Fixtures: checks' freeing vectexts, vecvecs; gaps.olang
  an `Array<Map<String, I64>>`.
- 2026-11-16, wt-freeing7 (2.3): gap 20 closed (no copy for a chain of reads, a needed copy in the reading block); gap
  17 closed for an element holding a Map (a walk of its live entries; a Map copied into an element split); a `Remove`
  from a Map `SetAt` copied in no longer puts back text that is no slot; a by-value argument's copy reads nothing in
  use (its buffer freed). Measured and left for the user: a copy's text in slots, +5 ns a string. Fixtures: checks'
  freeing mapelems, views; gaps.olang a Vec of text copied.
- 2026-11-16, wt-freeing8 (2.3): a copy's text built in slots (round 7's item 3), with a slot scope's allocation one
  call (`__olang_held_alloc`, `__olang_slot_alloc`) - within 4% of the arena; a slot scope over a slot scope and an
  unset comprehension array's let-go of garbage fixed. Fixtures: checks' freeing copytext; gaps.olang a Map of Vecs of
  text copied.
- 2026-11-15, wt-sect8: gap 19 closed (`Plan.RetFrame`, lowering's retFrames: a returned value local's slot in the
  frame, its parts where the result goes - 90 MB to 1.6 MB at 4,000,000 calls; checks' freeing returned). Gap 17's text
  part analysed (2.2) and left: a release walk over the old buffer's live elements and a fill exemption are the next
  round's.
- 2026-11-18, wt-freegaps: gaps 19 and 17 (text) re-measured closed on master (checks' freeing returned, vectexts,
  vecvecs flat under 8 MB; plan.md's entry was stale); oann's genref builds and runs flat (HoldingGenerator, 2026-11-15).
  Found and partly closed gap 22 (a struct element's Vec field); `-memory -check` no longer passes such an element.
  Next: the owner place's regions released at an element's let-go (counted among its let-goes, PartsLet, so a view in
  use across it keeps), and a `SetAt` copy built split as an array element's copy is (`lower.elemCopy`).
- 2026-11-18, wt-gap22: gap 22 closed (2's row): an element's let-go releases its owner fields' regions or their parts,
  a copy made for an owner place split, a local lifted for its last use moved into the element though the copy had a
  region; an owner's own let-go judges views of its parts (a buffer released under a view, found by the evaluator).
  Fixtures: checks' freeing ownerelems, soleelems. Left: a by-value argument's copy (`v[i] = p`) makes the owner place
  keep (RCopied, named), and a same-statement read judged per place keeps a part place for a view of another value.
- 2026-11-18, wt-freecopies: gap 22's three named rows closed. A by-value argument's copy its callee only reads
  (`Preserves`: `SetAt`'s, which copies it again into the element) keeps no place (`free.preservedArg`); a fill builds
  each element's owner fields as stores into their places do (`lower.fillCopy`, `ownerField`) - a run-time array's
  always, a fixed array's where it is a plain local's value built in a block; a by-value argument's read is no view in
  use across its statement's let-goes (`free.copiedArg`, which no longer asks whether the callee keeps the parameter);
  a call's value lent read-only through its fields is no copy kept (`tempPlaceCall`). Fixtures: structelems joins the
  limited set; copyelems (`v[i] = p` moved and copied, a fill) new. Tried first and dropped: every copy (the Copy
  helper) building owner fields in regions of their own - a copy made inside an owner's region (a constructor's value
  copied for a field, D9h) put a region inside it that hid it from the owner's settle (fields.olang, found by the
  evaluator).
- 2026-11-19, wt-fillcopy: gap 22's fill rows closed. A fill of a value owning storage holds each element's own copy, so
  its value views none of the item's owner places (`free.makeOf` unowns it, as a copy's): a fill local read after a
  let-go of `Q.a` elsewhere no longer kept the place as a view in use. A fixed fill given storage only to be read or lent
  through (`Lvalue.Temp`) is split where it is built in a block, as a plain local's fill (`free.blockFillOf`; lowering
  already split it, `lower.blockBuilt`). Fixture: checks' freeing fillelems. Still named: a fixed fill returned or
  built where it is not a block (review4's c1 `made`), and a run-time fill whose item is read out of a Vec (h5).
- 2026-11-19, wt-checkshapes: `v[i] = v[j]` (review4 h4) and a user function forwarding its by-value Q to `SetAt`
  (h3, `put(v, i, v[j])`) free. At's value given as it is to a by-value parameter its callee only reads (`Preserves`),
  of a call whose value holds no reference and no task's: lowering copies it into the statement's innermost scope
  (`readHere`, D9h) or, where nothing in the callee's window writes what it views, gives it as it is - either way no
  value a store gives `Q.a` (its call exempt from `untracked`) and no view in use across the old element's let-go
  (`free.call`'s viewArg, read as `copiedArg`'s are). Fixture: checks' freeing elemcopies.
  A run-time fill whose item is read out of a Vec (h5, `Array<Q>(n, v[j])`) frees too: lowering reads a fill's item
  where it stands where the fill owns storage (`lower.fill`'s readHere - the copy D9h makes, if any, in the statement's
  innermost scope, not where At's result would live), and the free pass takes that call's value as `viewArg`'s
  (`makeOf`'s readFill). Fixture: checks' freeing fillread.
  Still named, each a compiler limit (no language question), with the cause found: a struct with two owner fields
  copied into an element (review4 h7: `copyLeaves` makes a copy for one owner leaf only - "one region would hold them
  all" - so `Q.a`, `Q.b` keep, RMade, in Push's `occupy`, and the element's SetAt counts as a library gap); an owner
  nested in a struct field (a3, `R{q Q}`: `r.q.a = ...` reaches the element place through `reach`, kept RInPlace,
  though a direct `p.a = ...` is not); an owner local whose elements own storage changed through a writable reference
  (f1, `v.Push(q)` on a `Vec<Q>` or `Vec<Vec<I64>>` local, then `v = ...`: `inOwner` keeps the local, RInPlace - the
  callee would need the current value's region passed as its scope variable, as `writeFeedCalls` does for a feeder);
  and a fixed fill returned (c1 `made`: not split where it is no block's, RCopied).
- 2026-11-19, wt-checkshapes2: the four shapes above free, none by a region of its own - by splitting copies into part
  regions and releasing an owner that is not sole through what its value holds. A copy of a value with several owner
  leaves (h7, `Q{a, b Vec<I64>}` in Push's `occupy` and SetAt) builds each part place's array in a part region where
  that place is sole (`free.ownersSplit`, `lower.ownersCopy`, as an element's copy does); its owners keep for that alone
  (RSplit, which any other reason overrides and a view still judges) and free through their parts. A fixed fill no
  block holds (c1 `made`, returned) is split so per element (`free.fillParted`, `lower.fill`). An owner kept for RSplit
  or a change in place (RInPlace) frees where everything its let-go releases is sole or frees so in turn (`partsFree`
  over `PartsLet`): an owner its value holds (a3, `R{q Q, b Vec<I64>}`: `r.q.a = ...` keeps `R.q` in place, its `Q.a`
  sole), its Vecs' live elements' own (f1, a `Vec<Q>` or `Vec<Vec<I64>>` local pushed to, then given another value) -
  lowering releases them, nested owners' regions first, walks, then parts (`lower.ownerParts` through `partReleases`,
  and `releases` for an owner local not sole), and the free pass judges views against all of them (`goParts` over
  `PartsLet`: f1's `r1`, a view of an element read after `v = Vec<Q>()`, now keeps rather than being missed). Fixtures:
  checks' freeing ownerpair, fillreturn, nestedowners, ownervecs. The sibling-field view (h7's `rb := p.b.View()` read
  after `p.a = ...`) keeps `Vec<I64>.data`: places are by type, so `p.a`'s let-go may release what `rb` reads as far as
  the pass can tell - a named view keep with its fix ("read what you need from 'rb' before"), never a gap; telling the
  two fields' buffers apart would need places by path, not by type. A temporary lent read-only through its fields
  (`tempPlaceCall`) is lent only to a call whose value holds no reference: `x := v[i].a.View()` kept in a local has
  lowering keep At's copy (D9h) where the view may live - the collection's scope, a copy a turn - which the pass had
  counted as no copy (-memory -check passed while the program grew ~60-120 B a turn: review4's a1, a5, a6, a7, h1, h6
  and the view rows of f1 and a3, measured at 400,000 turns); it is now named (RCopied). Walk let-goes an owner's
  let-go adds (`goParts`) judge views only (`go`'s viewsOnly): where the owner is sole its region holds what they
  name, so they are no let-go of those places for the decision or the report (a Vec<String> field's texts, earlyfree's
  fieldfeed).
  Still named: a Vec of fixed arrays of owners changed in place (c1's `keep`, `Vec<Array<Q>>`: not PartsOnly), and
  the D9h copy above (copying At's value into the view local's own block would free it).
- 2026-11-19, wt-d9h: the D9h copy of a view local frees. Where a read-only reference local holds what it names only in
  its own block - never written, assigned, stored, handed back, captured or spawned with, in no value made of it that
  may be kept, lent only to bodies keeping nothing of it past the call (`typed.RefsKept.NoneKept`) - the temporary its
  declaration lends through fields to the call it is given (`r := v[i].a.View()`: At's value) is recorded
  (`free.BlockCopy`), and lowering makes its copy, where it makes one, in that local's block (`lower.blockCopy`): dead
  with the local, a loop turn's with the turn. The free pass takes that temporary as lent (no `untracked`), its value
  as no view of the collection's places (`borrowOf`'s `tempReach`, the call's `through` left out): lowering copies it
  wherever anything in the body may change what it views, and reads it in place only where nothing in the body changes
  that storage at all (heldSrc), so no let-go there releases what the local names. review4's a1, h1 and h6 pass
  `-memory -check` and run flat (a1 at 400,000 turns 52 MB to 13 MB, flat from 20,000); checks' freeing viewlocals
  (a store, a callee given the Vec, a lend to `total`, a deferred read) runs under 8 MB (master: out of memory).
  Still named: such a local handed on to a closure, a generator or a task in its block (a5, a6, a7 - their escape
  would need following into the local or join holding them), and `Vec<Array<Q>>` (c1's `keep`): a fixed array as an
  element is no part place - its buffer is no struct field, its count its length, not a Vec's `n` - so a walk of the
  Vec's live elements cannot release each array's buffer and its Q's parts; closing it needs element arrays as part
  places of their own (a walk kind counting by length, a split copy for Push/SetAt/fill/`v[i] = w`, views judged
  against it) - a round of its own, no language question.
- 2026-11-19, wt-arrelems (step 1): a Vec of run-time arrays of plain elements and a Vec pushed to only free. An
  array's run-time array elements of plain elements are a part place by type (`free.elemArray`, `PartPlace` for a place
  with no field), a Vec's buffer of them walked (`arrayBuffer`, `lower.partReleases`); a walk's let-go of a Vec's live
  elements is a let-go of their place for condition 5 (`partWalked`) - `Vec<String>` and `Vec<Array<I64>>` pushed to,
  then given another value, had kept (no let-go of the element place but the walk's). Fixture: checks' freeing
  arrayelems.
- 2026-11-19, wt-arrelems (step 2): `elemArray` takes arrays of PartsOnly structs (`Array<Q>`, `refsBeyondParts`, not
  HoldsRefs, which counts owned arrays): such an element's let-go walks its own elements by its length, each one's
  parts, then releases the array (`lower.partReleases`' relPath Data -2, `releaseOn`); a store into the place is built
  split (no `plainElems` keep for it; `lower.elemArrayCopy`, `partCopy`), and a copy of such an array anywhere (the
  occupy's, a by-value argument's D9b copy) is built with each element's parts in part regions (`free.partsArray`,
  `arraysAt`, `lower.arraysCopy`) - its owners keep for RSplit only, freeing through their parts.
  Step 3: At's D9h copy of such an array (`keep[j][1].a[1]`) split too (the call's site given to `untracked`;
  `lower.arraysCopy` where a view call's value is copied). c1's `keep` cut down (/tmp/claude-0/ae/k1.olang) passes
  `-memory -check`, 757 MB to 13 MB at 4,000,000 turns; checks' freeing arrayelems has a `Vec<Array<Q>>` (a block's
  fill pushed, a fill stored by `qs[0] = fresh`). A fill of `base` stored in the same statement (`qs[0] = Array<Q>(3,
  base)`) keeps `Q.a` for a named view (places by type: `base.a` read across the old element's let-go) - read first.
  Step 4: the split copies narrowed to where they are let go of through the element place - the store into it
  (`splitArr`), a by-value argument's D9b copy, a call's D9h copy - never a copy kept elsewhere (`s.qs = u`, a field
  kept for "its elements may hold storage built with it"), where part regions only cost: splitting every copy made c1
  3x worse than master (160 MB against 52 MB at 100,000 turns); now 33 MB. review4/review5's 60 probes print the same
  built, `-free late`, `-sanitize` and interpreted; `-memory -check` changed only for c1 (passes now).
- 2026-11-19, wt-splitfield: c1's `s.qs` and review4's a5, a7. A struct field holding a run-time array of PartsOnly
  structs (`S{qs Array<Q>}`) is a split field (`free.SplitField`): a store into it is a fresh value, built split as
  lowering's partCopy already built it (the array in the place's part region, each element's parts in part regions of
  their own where sole), and its let-go walks the old array by its length releasing each element's parts (relPath Data
  -2) before the array, the free pass judging the elements' part places there (`PartsLet`). c1 at 400,000 turns 128 MB
  to 12.7 MB, passing `-memory -check` (its closure's `x` stays named, O27). A view local captured by a lambda a value
  local of its block holds and only calls (`f := fn() I64 { return r[1] }`): `typed.LocalUses` records the capture as
  a hold (`EscBesides`, HoldAt/By/Body/Inner), and `free.blockView` accepts it where the holder lives no longer than
  the local (`holderStays`) and the lambda's body keeps nothing of its Capture local (`keepsNone`, recursively); given
  a task spawned in a join of its block (GiveAt, P1a) likewise. `c := v[j]` (a plain value local of a PartsOnly view
  value) has its copy split (`free.splitLetOf`, `lower.ownersCopy`): owners keep for RSplit, and a read after the
  element's let-go is a named view keep. Fixtures: checks' freeing splitfield, viewholders (master: 322 MB, 103 MB).
  **Where to pick up**: review4 a6 - a view handed to a generator (`g := each(v[i].a.View())`) keeps At's copy in the
  collection's scope (RCopied): no local holds the view, the generator value does; following it needs BlockCopy for a
  value local declared with a call whose result carries the temporary's view, the holder only lent to bodies keeping
  nothing (`Next`) and yielding no reference. `c := v[j]` read after the element's let-go keeps as a named view: the pass
  would need lowering's view-local decision (`lower.viewLocals`' heldSrc) to know the copy is made. A program with tasks
  still frees nothing early (a7).
  Checked on e45a5ad6c: the freeing and earlyfree scenarios, `make scopesan`, `make quick` (tokens/ast goldens recaptured); review4/review5's 60
  probes print the same built, `-free late`, `-sanitize` and interpreted, `-memory -check` now passing for a5, a7, b4, r5_s1.

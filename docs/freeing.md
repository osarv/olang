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
  `-library`, or links C of its own - but for libc's I/O, text, memory and time functions; the export fns C may call
  run as tasks' code, beside anything (every place keeps where one reaches a global or code not known);
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
- `-free late` (B18b) and `-sanitize`, the independent oracles: the program built with early freeing off, every let-go kept until its
  scope closes. The three above all run the same releases - where the free pass wrongly allows one, the build, the
  sanitized build and the evaluator read the emptied value together and agree (review5's F1). A build with no early
  freeing runs none of that code, so its output is the right one: checks' `earlyfree` and `freeing` build every program
  at a small size both ways and require the same output (memory limits apply to the usual build only), and also under `-sanitize`, the
  oracle `-free late` cannot be for a double release (review6: only `-sanitize` caught one). A review runs
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
| 19 | a call's value local landing in a long-lived place, `rows[i % 10] = mk(i)` | +32 bytes a call | nothing kept | the returned local (`w Vec<I64>`) is allocated where the result goes (O26a) - the array's scope - and copied out by value | **fixed**: 26 MB to 1.6 MB at 1,000,000 calls, 90 MB to 1.6 MB at 4,000,000 - the scope pass records O26a's reason alone (`Plan.RetFrame`: returned only whole, by value, nothing else carrying it there), and lowering keeps such a local's slot in the frame where nothing names its storage past the body (`lower.olang` retFrames, namesKept), its parts still built where the result goes; checks' freeing returned; a returned text local and a copied choice's locals by wt-gap19 (rettext); left, named by -memory -check: a text local given a second value before it is returned, a choice's copy (2.4, gaps19) |
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

### 2.4 Review 4's shapes (wt-gapsb18, 2026-11-22)

Review 4 (/home/user/review4.md) named six shapes `-memory -check` reported. Measured on master 9e3a27fd7: four were
already closed by later rounds (keptlast, keptlast2, falseb18) - a user function passing its by-value Q on to `SetAt`,
`v[i] = v[j]`, `v = Vec<Q>()` with owner fields in the elements, a view of one owner field held while a sibling is
assigned: each passes `-memory -check` and stays under 8 MB at 800,000 turns.

**Built: an array local of PartsOnly elements given another array** (h5, `rows = Array<Q>(4, src[i % 3])`). An owner
local holding a run-time array whose elements hold storage only in part places (`free.SplitLocal`) is a split field's
local twin: its elements' parts are built as their stores build them (the fill's `lower.fillCopy`), and its let-go walks
the old array by its length releasing each element's parts, then the array's own region (`lower.releases`); the free
pass counts the walk's let-goes as a split field's (`PartsLet`, WalkIn). checks' freeing splitlocal: out of memory under
8 MB at 200,000 turns before, flat now.

**Found and fixed on the way: a split array released under a view of its elements.** `for x in s.qs[1].a { s.qs =
Array<Q>(...) }` (c1's split field, wt-keptlast) and the same over a split local: the view the loop walks is of the
elements' owner place (`Q.a`), not of `S.qs`, so `S.qs` was decided sole and the walk released the array the loop still
read - `-sanitize` and the evaluator stopped, the plain build read freed storage. condition 6 now takes a view of a place
a split array's elements hold (`free.splitInside`: their PartsLet and held places) as one of the array itself, and a
walk's let-go of the elements' parts as one through the array's place (`goWalkPl`). checks' freeing splitviews (built,
`-free late`, `-sanitize`, the evaluator agree).

**Built (wt-gaps2): a local declared with a fixed fill** (`rows := Array<I64>(4)`, then `rows = Array<I64>(4, i)` in a
loop). The declaration is a conversion of a fixed array (T7c), which `made` read as existing storage, so the place kept
every array, of any element type. Now a conversion widening a fixed fill or literal is the Make's store
(`free.WidenedMake`), and lowering widens it into the region the Make's site is given (`lower.widenAt`, the fill's
elements already built there). checks' freeing widenlocal (`Array<I64>`, `Array<String>`, `Array<Q>`): out of memory
under 8 MB at 200,000 turns before, flat now.

**Built (wt-gaps2): a function building its own value from an element it reads** (`y := make(ps[0])` with
`make(x Grid&) Grid`, `Grid` holding arrays): one Grid kept a call, where a local argument kept nothing. Two causes:
the element's At value was copied (D9h) into where the callee's result would live, the Vec's scope, because `make`'s
result holds storage (`HoldsRefs`) - but it views none of its arguments (check's ViewResults) and holds no reference
beyond its own storage, so the argument is dead once the call returns and is read where it stands (`lower.viewsNoArg`);
and `make`'s let-goes of `Grid.a`, `Grid.b` (its zero `g`'s) kept for the view, though a call given only references it
cannot write through, to values holding no reference, lets go only of storage it built itself (`free.ownGoes`, now
with `Writes == 0` and not `Impure`). checks' freeing elemarg.

**Still open** (each a round of its own; no design decision, the analysis and lowering only):

- **An element holding a struct that holds an owner by value** (a3, `rows[i % 10] = w` for `R struct(q Q, n I64)`,
  `w := R(q, i)`): closed by wt-gaps4. `R`'s constructor is a view call (its instance views `q`, which escapes into it,
  so is never lifted or moved), so `w`'s declaration copies the instance (D9h). The scope pass built `w` where its copy
  at its last mention goes (item 17), main's scope, and with it the instance and `q`'s copy given to it, though lowering
  copies `w` there all the same (its value's call site has a region, `movable`) - ~1 KB a turn, named by -check as a
  lifted copy (`lower.liftedCopy`). A local whose value is a constructor's instance viewing what it is given is no
  longer lifted (`scope.viewCtor` in `lastCopy`): `w`, the instance and `q`'s copy stay in the turn, the store's copy
  is the element's value. checks' freeing ctorkept. (`rows := Array<R>(10)`, a zero fill: closed by wt-gaps5. Its value
  is R's zero, `R(Q(<zero Vec>), 0)` - Q's zero call not fresh (its argument zero bits, no call), so R's call is no
  fresh view and its value copied (the Zero helper's body, where no fill exempts it) was untracked: RCopied on `R.q`'s
  places. A constructor's value holding no storage (`free.emptyCtor`) is no copy anything keeps. checks' freeing
  zerofill.)
- **A Map built by its literal whose values own storage** (gaps.olang's row since wt-gaps3,
  `Map<String, Vec<String>>[$i: Vec<String>[$i]]`): FromIter's entries are the iterator's values copied (D9h), made
  with no store into `MapEntry.Value`, which keeps (RCopied) - and with it a Put on a copy of the Map. To close: the
  iterator's value split as `c := v[j]`'s is (splitLetOf for a loop's binding), or FromIter's entries built by `Put`
  from parts moved out of the iterator's element. (Closed by wt-gaps3: a Map local filled by Put and stored into an
  element at its last use is moved there where every place it holds is sole - `MovesLeaves` refused any value owning
  more than one part's array; a lifted local lowering copies all the same is now a B18a row, `lower.liftedCopy`, which
  names the remaining shape: such a Map whose values own storage, their place not sole because a copy elsewhere splits
  it, `m.Put(i, Vec<I64>[i]); rows[j] = m; c := rows[k]`. A copy of a Map whose values own storage, `c := rows[j]`, is
  split as a PartsOnly copy is, and an entry's owner value not sole is copied by its parts - `regionCopy` copied it
  whole into the element's scope, a leak under a passing -check for `Map<I64, Vec<I64>>` on master.)
- **A Map local moved whose values' place is not sole** (above): to close, the values' parts are already in part
  regions (Vec.0 sole) but `Put`'s `MapEntry(key, value)` builds the value's bytes where the local lives; a move would
  need the value place's stores redirected to the element's region, as the Map's own arrays are.
- **A local given a new value before it is stored into an element** (found by wt-taskcheck, review6's task probes):
  `r Vec<String>` then `r = build(i)`, then `kept[i % 4] = r` - ~500 bytes a turn, named by `-memory -check` as
  SetAt's gap. Closed by wt-gaps4 for a local declared with no value (D13d) and given its first value by one assignment
  of a call's result, running as often as its declaration (`LocalUses.FirstSet`): it is moved at its last mention as a
  `:=` local is (the scope pass's item 17 and lowering's `movable`), is no owner local of the free pass (`free.SetOnce`)
  and its assignment lets go of nothing (`lower.releases` - its storage holds the value the last turn moved on). checks'
  freeing assignkept. Still open: a local given a second value (`r := build(0)` then `r = build(i)`) - an owner local
  of the free pass, sole, so the arrays its value holds keep (RCopied) and the move is refused (`MovesLeaves`): the owner
  local's place would have to give its value's leaves to the element as a move does, its let-go at the assignment kept
  in step. (A `Vec<I64>` local of this shape is freed already, its one part a part place; `Vec<String>` keeps.) Tried by
  wt-gaps5: FirstSet widened to a `:=` local of a call's value - no owner local, moved at its last mention, its
  assignment letting go of nothing. Unsound: lifted where its store goes (item 17), the Let's call builds its value there
  too, a let-go no release follows, and `-memory -check` passed while the program ran out of 8 MB. To close by that road
  the scope pass must place the Let's call's result in the local's own block while its storage and the assignment's
  result go where the store is - or keep the owner local and hand its leaves to the element (above). And the join form (`r Vec<String>`, `join: spawn r = build(i)`, `kept[i % 4] = r`, checks' freeing taskvals
  part 2): closed by wt-taskhandoff - question 1 below, answered (c): the task's growth of what it builds itself keeps
  nothing (`ownBody`), the target's type places keep only through its join, and the regions it made are the spawner's
  from the wait, their storage given back to the worker that made them. (Closed by wt-globalfill for a first value nothing reads - `r := build(0)` then
  `r = build(i)` with no mention between, the shape named: the checker declares such a local with no value
  (`check.deadLet`, `definit.ReadIn`), the first call's value an Eval dropped where it stands, the assignment its first
  value (FirstSet), moved into the element - checks' freeing againkept. A first value read before the assignment: closed
  by wt-gaps6 - the assignment declares a second local of the name for the rest of the block (`check.splitLet`), where
  nothing holds the first past it (no reference kept, LocalUses.EscHard and AliasOf over the statements checked so far;
  no deferred code of the block; no destructor): the first value the block's, the second a `:=` local moved into the
  element. checks' freeing againread.)

- **An array literal given to a place** (review9, `rows = Array<Vec<I64>>[Vec<I64>[i], Vec<I64>[7]]` or `ns =
  Array<I64>[i, 2]` each turn, into a local, a split field or a mutable global): kept, and named by `-memory -check`
  ("its new value is an array literal, built where it is written ..."). Lowering builds a literal where it is written:
  its items are moved into the array where each was built (`arrayLit`), and the widened copy is made in the statement's
  scope (a global's store copies it into the program's scope), never in the region early freeing gives the literal's
  site - so `WidenedMake` takes a fill only. Judged the Make's own store (wt-gaps2), the place's let-go released storage
  no region held: a segfault (strheld's globals; a split place's walk released parts that were none). A local declared
  with no value given only literals kept unnamed before (no store gave it storage, `reported`). Closed by wt-gaps5:
  lowering already built a widened literal in its site's region (prim's adopted `arrayLit`, items moved in) and then
  copied it out at the store (`copiesValue` counted every widening as existing storage); a widened fill or literal made
  in a region of early freeing's (`lower.regionMade`) is taken uncopied, and `WidenedMake` takes a literal whose items
  are each built for it (`builtItems`) - its items the element place's stores (`makeStores`), no view of what they own
  (`makeOf`'s `unowned`, as a fill's). One holding a local's value (`Array<Vec<I64>>[v, ...]`, `v` copied or moved at
  its last mention where it lives, outside the region) kept, named, and so did a global's first value (its
initializer copied it into the program's scope, no region's). checks' freeing litstores, now flat. Both closed by
wt-gaps6: a local's value an item of such a literal is no last copy (`typed.LastUses.Literal`: never moved, so never
lifted to where the place lives by item 17) but copied into the literal's region as any item is built there, and read
only until that copy is made (`makeOf`, no view across a later item's let-go - before, `Vec<I64>.0` kept program-wide
for it, a leak `-memory -check` did not name); a global's initializer copies a widened fill or literal into a region of
its own in the program's scope (`lower.storeHome`), which the global's later let-go releases, the initializer's store
letting go of nothing. checks' freeing litlocal, globalinit. (A mutable global made by a fill
and given another fill in a function was read after its scope closed under `-sanitize`: an array place's value read
where it stands - lent, rendered - across a later operand's let-go was no view to the free pass, an array of plain
values holding no reference by type; `readOf` now records it, the place keeping, as any field's array place does.
Closed by wt-globalfill; checks' freeing globalviews.)

- **O23b's equality, per declaration, not per instance** (field scopes option B, wt-fieldscopes, 2026-11-23): where
  an instance is reached through an element, another instance's field, a global, an `any` or an unfollowed capture, and
  a store, build or call there needs its shared field's binding, the declaration keeps none for the whole program - C2d's
  equality comes back for every instance of the type, so storage built through such a field lives as long as the
  longest-lived instance's referent, not its own. The user wants freeing per instance: to close, the binding is carried
  per instance (with the per-instance buffer places, plan.md), not dropped for the declaration.
- **A lambda passed as a function value that builds through a captured helper's field** (wt-fieldscopes,
  2026-11-23): the build gives the field's declaration back (O23b's equality) instead of reaching the binding by O29's
  run-time lookup, as a direct call through the same capture would. To close: a function value's builds through a
  captured field take O29's lookup where no caller knows the binding.
- **Gap 19's open part: a call's value landing in an element, built where nothing releases it** (wt-gap19,
  2026-11-24; checks' freeing gaps19, both rows named by -memory -check). (a) A text local given a second value before
  it is returned (`s := ...; s = s + "!"; return s`, ~420 bytes a call): each of its values is built in a region of its
  own (its local's place is sole, O8d), made in the result scope - here the slot scope an element of text gives its
  call - and the element's let-go puts back a slot (`__olang_slot_release`), which text in a region is not, so the last
  value's region stays until the array's scope closes. (b) The copy a return of a choice makes (`return a if c else b`
  over two Vec locals, 48 bytes a call - the locals themselves are freed now, below): lowering copies it where the result
  goes as any copy is, in no part region, so the element's part let-go (`__olang_region_release_part`) finds none. Both
  need a choice: for (a), the returned local's values built as slots where its result scope is a slot scope (a slot
  place's let-go form chosen per value at run time), or the region released by an element's let-go where the slot scope
  made it (a mark on regions made in a slot scope, which must hold that value alone - a part region made there does
  not), or the last value copied into the slot scope at the return (a copy per call); for (b), the return's copy built
  in a part region of its own where the result type's part place is sole (a region per copy, guarded by the place's
  decision as a store's site is), or the chosen local moved rather than copied and the other one released at the return.

**Question 1 - answered (the user, 2026-11-23: option (c)), built by wt-taskhandoff.** A value a joined task builds and
hands back - a Vec grown by Push on the task's thread - could be freed by the spawner only if a region made (or a chunk
taken) on one thread may be released on another; the runtime's pools and a region's kids list are one thread's. The
options were (a) keep it as is, (b) the spawner making the regions a task's results go into, the task taking their lock
to grow into them, (c) a hand-off at the join. (c) is built:

- **The runtime.** A stand-in's regions already went with it at the fold (`__olang_kids_move`); a part's now go with its
  root as it is folded (`__olang_scope_fold_parts`), which they did not - its header was freed under them. Each region
  names its **maker**, the home of the thread that made it (`%olang.region`'s ninth word, the header 168 bytes); a
  thread's home (`%olang.home`) is a list of chunks any thread pushes onto with one compare-and-swap and its owner takes
  whole with one exchange. `__olang_close_kids` gives a region another thread made back to its maker
  (`__olang_region_give_back`: its arena's chunk list, its first block among them, pushed at once) instead of into this
  thread's pool; a thread takes what was given back (`__olang_home_drain`) where its own pool or block list has nothing
  that fits, before the shared pool or the system. A worker takes a home as it starts (a retired worker's, with what
  was given back since, else a new one - a home is never freed) and drains it as it retires. Nothing is paid in the task
  or on the paths every allocation takes; one push per released region of another thread's, one exchange per refill.
  Without the give-back the spawner's block lists grew by what it released while the workers carved new slabs: part 2
  freed by the compiler alone still grew ~190 bytes a turn.
- **The compiler (condition 3).** A task's code lets go of what it likes where it lets go only of what it builds:
  `free.ownBody` - plain values or read-only references to values holding no reference beside their arrays, reaching
  no global, writing through nothing it is given, calling through no function value, spawning nothing (effects.olang's
  facts, as `ownGoes` judges a call). What a task passes on is `taskLets`/`taskWalkLets`, the let-goes it may make on
  storage it did not build: a call of an ownBody callee passes on nothing, nor does a spawn's own call (judged at that
  spawn), and the walk from a task's root stops at an ownBody (`reached(.., ownCut)`); destructors, Str, Eq and Hash are
  roots only where some task is not ownBody. A spawn target's type places keep only where the join's own code lets one
  go while the task runs (`joinTargets` against `joinGoes`, the spawn's own call's let-goes no longer counted as the
  join's code, `inTask`), where the result is handed over at the wait (`handedAtWait`: a local target, every scope the
  task's call is given a block, a scope variable or inert - not the program's, which a worker builds into a part of its
  own, nor one found at run time - and no clause default that builds). The target's own place, its feeder and owner
  local still keep: the store into it is on the task's thread. Only a body an entry reaches starts tasks (`live`,
  `reachedTasks` now before the final walk): std's test helpers spawning tasks with references (chan's `recvOrStop`,
  cancel's `cancelOnExit`) made every place of any program importing them keep.
- **Measured.** checks' freeing taskvals runs every part by default (`M=127`), part 2 flat (master: ~500 bytes a turn);
  its parts 64 and 16 keep by condition 3 (a task reads the Vec its join replaces; a channel's ring is storage both its
  tasks replace values in), so their values are of types of their own - places are by type, and with `Vec<String>`
  they would be part 2's. checks' freeing taskkept (results kept in a long-lived Vec's elements, many to a join,
  dropped, made by a join inside the task, beside tasks failing into the join and caught in the task): flat at 100,000
  turns where master grows 136 MB over the second half; built, `-free late`, `-sanitize`, `-race` and the evaluator
  agree, and with the shapes that keep on (`M=255`: a target an array element, a join's code letting go of a result
  type's value, a clause default building text) `-check` passes and the oracles agree.
- **Found, open.** A clause's default (P4a, `catch default Vec<String>[pad(i)]`) is built by the task's thread in its
  worker's part of the program's scope (emit's trampoline passes `@__olang_prog_scope` to the handler): it is never
  reclaimed - ~250 bytes a failure on master, with or without early freeing - and is no hand-off (it keeps). To close:
  the trampoline gives a handler the stand-in of the target's storage, as a target's copy is given (P1g, `copyF`). (The
  evaluator's "it indexes outside the array" at Vec.SetAt for a `Map<I64, Vec<String>>` stored into a Vec's element and
  copied back out was no divergence: the built program released each entry's parts twice too, by luck unseen there -
  fixed by review12, checks' freeing mapsplit.)
- **A spawn's target local declared outside its loop (review12 F3, closed by wt-spawnrelease).** `r Vec<String>` before
  the loop, `join: spawn r = build(i)` each turn: the store was the task's, no let-go anywhere, so each turn's value
  stayed in the spawner's scope (~9 KB a turn, 1.8 GB at 200,000 turns) and `-memory -check` counted no keep (no place,
  no let-go: a false proof). The target is now an owner local (`findStmt`: declared outside a loop the spawn is in),
  given the task's result as an assignment's target is - its store and let-go in the spawner, at the spawn
  (`walker.spawnLets`), so `-memory` names it where it keeps. Where every spawn into it lets go itself
  (`free.SpawnLets`: given values by its declaration and spawns alone, no task failing into its join - P4d leaves the
  target unwritten, its old value still read after the clause - and no clause default that could be existing storage,
  `plainDefault`), its let-goes are judged against its own join's tasks reaching the spawner's storage (`spawnGoes`, as
  `joinGoes` are) but not against what those tasks build (`joinTargets`). Sole, lowering (`lower.spawnLets`) releases
  the old value's region on the spawner's thread before the task starts - by its anchors, or where it holds nothing (a
  default, an empty result) by the handle kept beside the local (`Settle`) - and the region made for the new value at
  the call's site goes to the task whole (`mir.Task.Fresh`; runtime.ll's `__olang_standin_or`, a region no stand-in
  and passed over by the fold; `__olang_region_adopt` names the worker its maker, so its storage goes back there).
  Measured: flat (2 MB peak at 200,000 turns where master grows 911 MB); a struct target frees as its assignment does
  (named as RCopied's gap as `g = Rec.Of(i)` is); a `String` or array target keeps, named (a text's slot scope is the
  spawner's stack, an array target is written in place by T11b's copy - open). checks' freeing spawnlocal.

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
  Checked on e45a5ad6c: the freeing and earlyfree scenarios, `make scopesan`, `make quick` (tokens/ast goldens recaptured); review4/review5's 60
  probes print the same built, `-free late`, `-sanitize` and interpreted, `-memory -check` now passing for a5, a7, b4, r5_s1.
- 2026-11-20, wt-genview: a view handed to a generator (review4 a6, `g := each(v[i].a.View())`). BlockCopy follows a
  value local holding what its declaration's call hands back (`free.blockHolder`: lent only to bodies keeping nothing,
  copied only into such a local of its block - a for-in's walk), through a call nested in the declaration whose callee
  keeps the view only in its result (`keptInResult`: NoneKept, or a generator's Next holding it in its frame only,
  yielding no reference). a6 174 MB to 1.7 MB at 2,000,000 turns, `-memory -check` passing; fixture genviews.
  Then `c := v[j]` read after the element is replaced: where an argument the view call views is rooted at a local
  the body writes, stores or lends to a body changing it, lowering surely copies (`lower.heldViews`' heldSrc fails),
  and the pass takes the copy for no view (`free.unheldViews` in `copiedView`); fixture copyread (`-memory -check`: 0
  kept). Then a view call's value given by value to a callee only reading it, its result held by a local
  (`z := filled(v[j], 2)`, review4 b3): BlockCopy through by-value parameters (`free.viewCallSite`, `blockLent`); and
  Preserves takes an escape only by read-only references given calls keeping none (`x.a[0]`) as no keeping
  (`lower.refsOnly`) - review5 v1, v2, v3, v5, v6 pass `-memory -check`; fixture argholders.
  Checked on addbd5b6a: the freeing and earlyfree scenarios, `make scopesan`, `make quick` (tokens/ast goldens
  recaptured; compiler/olang.olang OOM-killed under load, passing alone); review4/review5's 60 probes print the same
  built, `-free late`, `-sanitize` and interpreted, `-memory -check` now passing for a6, b3, v1, v2, v3, v5, v6.
- 2026-11-20, wt-freeopen: a callee handing back its by-value parameter or a field of it (review4 b1,
  `h := giveField(v[j])`). Lowering's `HandsOnly` (a by-value parameter kept nowhere but in what the body hands back:
  written nowhere, stored nowhere, lent only to bodies preserving it) lets BlockCopy follow a value local of no
  reference beyond its parts declared with such a call (`free.resultArgs`, not a constructor's, whose instance may hold
  views in place): At's copy is made in that local's block, dead with it. The local holds lowering's copy of the
  result - a call's value is never storage `heldSrc` takes as stable (`free.unheldViews`' `heldShape`) - so no view of
  the element. b1 passes `-memory -check`; fixture resultargs (master: out of memory under 8 MB).
  Found on the way, a D9a bug: an argument for a by-value parameter of a call whose result holds no storage was read
  where it stands whatever the callee did with it - `whisper(ps[0])` writing its parameter wrote the Vec's element
  (built and interpreted alike, both reading lowering's MIR). Lowering reads it in place only where the callee writes
  nothing of the parameter (`lower.writesParam`: through it, a part or scalar field stored into, whole, or lent
  writably to a body changing it - a store of it copies, QCE); free's viewArg still asks Preserves; tests/valueparts.
  Then an element stored from its own value (review4 c2, g2). `v[i] = plus(v[i], i)`, a callee preserving its by-value
  parameter and handing back no view of it whatever its result holds: lowering reads the argument where it stands or
  copies it into the statement's innermost scope (`lower.unviewedArg`), free's viewArg taking it as before. A copy of a
  part of a view call's temporary (`p.a = v[j].a`) reads the temporary only until it is made (`lower.make`'s readHere,
  free's `readCopy`). `v[i].a = v[j].a` goes through E31b's write-back, which stored the value it held as it was - a
  second value-semantics bug, `v[0].a = w.a` then a write to `w.a` showing in `v[0].a`: the held value is now the
  store's own copy (`check.writeBack`'s storeCopy), given the place where it is stored (`free.made` through heldCopy).
  Fixture ownvalues; tests/valueparts.
  Then review4's e1. A view chain read in an expression (`v[i].qs[2].a[0]`): free's `readCall` follows elements and
  payloads to the temporary as lowering's `readPlace` does. A struct holding a split field beside a Vec
  (`S{qs Array<Q>, b Vec<I64>}`) as a Vec's element is PartsOnly (`free.partsField` takes a split field, walked by its
  length - `VecWalk`'s `SplitCount`, `lower.walkReleases`), and its copy is split part by part (`free.splitOwner`
  takes a part place leaf; `lower.partOf` already split it). And a hole `-memory -check` passed: a fill of a value
  owning storage stored into a place of a longer scope (`s.qs = Array<Q>(n, base)`, s outside the loop) had the scope
  pass build its item `base` there - a fill holds each element's own copy (QCE, `lower.fill`), yet `valMake` fitted the
  item as an element slot, so every turn's `base` and its Vec stayed in main's scope (~0.5 KB a turn, built, -free
  late and interpreted alike). A fill of owning elements is now judged as a copy (`scope.valMake`, as `ownCopy`: only
  the references the item shares must outlive it). Fixture splitelems (e1 at 400,000 turns: master out of memory).
  Checked on the step's last commit: `make scopesan`, `make quick` (tokens/ast/layout/run goldens recaptured), the
  freeing and earlyfree scenarios; review4/review5's 60 probes print the same built, `-free late`, `-sanitize` and
  interpreted as master, `-memory -check` now passing for b1, c2, e1, g2, k1 and review4's o1.
- 2026-11-20, wt-freeopen2: a value moved out of a collection and dropped. `v.Pop()!` on a `Vec<Vec<I64>>` (an element
  that is no candidate place) freed nothing though the pass counted its drop: Pop's must-fact was none, so lowering
  released nothing. A vacate of a place that is no candidate is now `MovLeaves` (`free.takeMust`), a dropped call's
  result of it releases the leaves (`free.DroppedLeaves`, lowering's leafPaths, a try's release now any list -
  `tryRels`). TakeAt and SwapTake hand back a local holding the vacated value: it was copied into the result scope at
  the return, the original never released - a local whose every value is a moved one, written, lent and aliased
  nowhere, is handed back as it is (`lower.movedRets`, `free.MovedLocal`). A local holding such a value to its block's
  end (`x := v.TakeAt(0)!`) lets go of its leaves there (`free.EndsMoved`, `lower.endMoved`): declared at the block's
  top level (the root, a block statement, a loop's body, an if's branch), handed back, written, lent, aliased and
  escaping nowhere but to calls keeping nothing of it, nothing after it leaving the block but its end
  (`typed.RestLeaves`), no deferred code in the block, no value registered with a scope in the program; lowering makes
  no last-use move of one (D9i). A drop is judged after its statement's reads (they come first). Then v9: the
  prelude's shifts (`v.data[k].occupy(v.data[k + 1].vacate())`) move each leaf's value out of the same leaf place -
  SMove (`walker.copyInto`) - so `Q.a` is sole and v9 frees (200,000 turns: 13 MB, -free late 116 MB). A moved value
  anywhere else - an argument, an operand, a local the block's end does not end - is a gap row naming the call
  (`walker.movedGaps`), so -check cannot pass such a leak (a holder whose drop ends it, O15, is none: maptake).
  Checked on the step's last commit: the freeing and earlyfree scenarios, `make scopesan`, `make quick`
  (tokens/ast/layout goldens recaptured); review4/review5's 60 probes print the same built, `-free late`, `-sanitize`
  and interpreted, `-memory -check` now passing for v9 too.
- 2026-11-21, wt-freeopen3: text popped from a `Vec<String>` (`v.Pop()!`, `x := v.Pop()!`, `v.TakeAt(0)!`). A String is
  no struct and holds no reference, so the walker drops every origin of its value (`holds`) and the dropped call's OMov
  never reached `eval`: no let-go was counted, and with none the place `Array<String>.-1` was never decided sole, so
  DroppedMove released nothing. `walker.eval` now lets go of the place a dropped call's must-fact names
  (`mustRes` MovBase + k) where the value carries no origins; a local holding such a value to its block's end lets go
  of that place whole (`free.EndPlace`, `endPlaces`; lowering's `movedPath`, shared with evalStmt); `movedCall` names
  any MovBase value (so `t += v.Pop()!.Len()` is a gap row), and the report counts a text place where the program's
  code drops or ends a value moved out of it (`assignedHere` takes LDrop). poptexts: 400,000 turns under 8 MB (master
  out of memory). Then a view call's value read through a try (`v.Get(j)!.a[1]`, `(try v.Get(i) catch default
  Q()).a.Len()`): lowering's readHere passes a try's value on (as a sequence of no statements and a conversion), free's
  `readCall` did not, so the read was a copy made with no store into Q.a; now it follows them. tryreads (master: Q.a
  kept). Found: a `Map<K, Q>` with Q a struct holding a Vec frees nothing on Put even with fresh values (`m.Put(k,
  Q.Mk(i))`, master too): Put's `m.ents[i].Value = value` is a copy into an owner place of its own (MapEntry.Value),
  untracked for Q.a; add's `MapEntry<K, V>(key, value)` instance views its parameters (CtorViews), so the ctor's field
  copy is left out and add's call copies the instance (D9h), untracked again. Tried: judging the Put store's copy as
  split (ownersCopy, RSplit for Q.a) - it clears the first keep, not add's; reverted, since add's copy goes through
  partSplit/splitCopy first and an RSplit judgement must match the copy lowering actually builds there.
  Then t2: a reference local given storage for what a call hands back (`s Box& = Box(v[j].b)`, `s any Summer& =
  Box(...)`) kept Q.b - the D9h copy of `v[j]` was made where At's result would live. `free.blockCopies` now takes such a
  local's call through its Promote and an any's AnyMake (`promotedCall`), so BlockCopy copies it in the local's block;
  and a read-only reference given through an any's table whose signature writes no keeps is a use, not an escape
  (`typed.LocalUses.tableRef`: every body the table reaches keeps nothing of it, T21c/T32b), so `s.Sum()` leaves the
  local a block view. anyholders (the element replaced and popped while the holder lives; 400,000 turns under 8 MB).
- 2026-11-21, wt-mapput: v8, a `Map<K, Q>`'s value replaced by Put (Q a struct holding a Vec). Put's copy into the
  entry's Value (an owner place of its own) was already built split by lowering (`lower.ownerCopy`: Q's bytes in the
  Value's region, the Vec's buffer in a part region of its own, a kid of it), but the walker judged the copy untracked,
  so Q.a kept for RCopied - every Q.a in the program, Q.Mk's own `q.a = ...` too. A copy stored whole into an owner
  place (`walker.ownerSplitOf`) has its judgement held until its store is pushed (`ownerSettle`): made for the place
  there (SFresh at the copy's site, so OwnerSite is set and lowering's ownerCopy builds it), the owners its value holds
  keep for RSplit alone, freeing through their parts; else as untracked says. add's `MapEntry<K, V>(key, value)`, an
  instance viewing its parameters whose call is copied (D9h), had that copy built whole: the view call's copy now tries
  ownerCopy after splitCopy (one owner leaf that is all the storage the instance owns, a `Map<I64, Q>`'s), and a split
  copy (a `Map<String, Q>`'s entry, its key text in slots) has the owner leaf's value copied with its parts in part
  regions (`free.LeafParts`, `lower.splitParts`' partsCopied); `walker.viewCtor` judges both RSplit. Then
  `m.Put(k, m.Get(j)!)`: lowering reads the Get's value where it stands or copies it into the statement's innermost
  scope (readHere passes a try on), but free's viewArg found the call with copiedCall, which stops at a try - now
  `argCall` follows it. Fixture mapowners (both Maps, 200,000 turns under 8 MB; master out of memory on the Get put).
  Then review4's j1. `v[i].a[0][1]` (Q holding a `Vec<Vec<I64>>`): the outer At is lent its receiver (its value holds
  nothing), but the middle At's value, a Vec, holds references by HoldsRefs, so free did not lend its own argument
  (`v[i]`) and judged At's value copied - while lowering reads the middle call where it stands (readWin) and so the
  arguments it reads (`lower.args`' reads). A call that is itself the temporary its caller is lent lends its read-only
  reference arguments too (the walker's `lends`). And `ss[i] = s`, S holding a `Vec<String>`: the text element place
  keeps because a sole owner's value holds it (decide's "one region" rule: the owner's region holds the texts), so the
  report named its let-go a gap - though the owner's let-go in the same statement releases that region, texts and all.
  The report counts such a place as freeing where every let-go of it is one of those (`free.ownerCovered`: kept for
  that reason alone, each let-go its own - no call's - in a statement that lets go of a sole owner place whose value
  holds it). Fixture ownertexts (j1 at 200,000 turns; master fails -check).
  **Where to pick up**: `c` captured by a lambda (a5's `g`) keeps as a named view (places by path would tell it from `Q.a`); tasks
  (a7, h8, n1, t1) still free nothing early - see "Tasks" below; g1 (a recursive owner, `T{a Vec<I64>, kids Vec<T>}`: T
  is no PartsOnly type - its parts walk is a cycle - so an element's let-go is a gap row, and `t.kids.Push` in T.Mk
  changes T.kids in place) needs the walks to recurse through a type holding itself in a Vec; still failing -check
  (wt-mapput's run, every probe printing what master prints built, `-free late`, `-sanitize` and interpreted): review4's
  g1, h8, n1; review5's o1, o2, ov1, t1 and its own t2 (`?&` beside the any - wt-freeopen3's rewrite passes) - its
  probes are in /tmp/claude-0/review5 after all; s3 passes now.
  **Tasks** (wt-mapput's look, nothing built): O8f keeps "storage a task can reach" (condition 3); the compiler keeps
  every place of a program with tasks (`decide`'s RTask), and h8, n1 and t1 also fail -check before that, the task's
  by-value argument (`spawn n = sumQ(v[i])`, At's value copied, D9h) judged untracked since viewArg excludes a task's
  site. What a task reaches is not a matter of types: its own copies are borrowed by every prelude call it makes, so a
  type-level reach (A: places whose types no task's code mentions free as in a program without tasks) is sound but
  frees almost nothing in practice. Recommended (B): reach by origins - at each spawn the walker's origins of every
  argument (what a reference argument, or a reference inside a by-value one, may refer into), and what the task's code
  reaches through globals, keep for RTask; a place let go of in a task's own code keeps unless its values there are the
  task's own (built in its stand-ins' or its own scopes - a region's parent's kids list is one thread's, runtime.ll's
  region links are plain); a task's by-value argument copy is no value a store gives a place where it is built in a
  scope no let-go during the join can release (its site's region checked after writePlans' redirects, never a sole
  place's region) - then h8, n1 and t1's spawner-side replacements free, and a7 keeps (a view handed to the task), as
  the rule says. Not built: it is section-8 design (Opus, xhigh by rules.md), and the runtime's thread-local pools make
  a release on the wrong thread a silent corruption that neither `-free late` nor the evaluator would show.
- 2026-11-21, wt-taskfree: **condition 3 by origins** (B of wt-mapput's "Tasks" above). A program with tasks no longer
  keeps every place: `decide`'s blanket RTask is `taskKeeps`. Every place keeps, as before, where C is given a function
  value (`cAt`, reached: `cThreads`) or a task's code is not known (`taskAll`: a lambda or function value spawned, a
  task's callee calling through a function value or an `any`, or not checked - effects' Unknown, Back, Through,
  Unchecked, Calls - one letting go of any place, a result holding a reference beside its parts). Else: (a) what the
  tasks' code changes keeps - each spawned body and all it may run (`reached` over the scope pass's calls and the walks'
  callers, every destructor, Str, Eq and Hash among the roots): its stores, let-goes (`lets`, `walkLets`), stores
  through a sole place's value, feeders; at the spawn itself the callee's `lets`, `walkLets` and `parStored`, a feeder
  or an owner local as a target, the places a target's type holds and the target's own place (P1g: the store is on the
  task's thread), and a sole place's value given to the task's call to build into (`orCallOf` records no region under
  a task) - so a region is made and released on the spawner's thread only; (b) a let-go in a join block's code (its
  calls' let-goes included, recorded by the join's number: `joinGoes`) keeps where that join's tasks may reach the
  spawner's storage (`joinReach`: an argument's origins - a by-value one's but its owned parts, `unowned` - or a target
  other than a local) or any task reads a global (effects' ReadsGlobals, RefGlobals, WritesGlobals: `taskReach`). A
  join's tasks end at its wait (P1a, P1b), so a let-go after it is the spawner's alone (t1). A task's by-value argument
  copy its callee preserves (`taskCopy`: lowering's preserves, a view call's value, D9h) is no untracked value - it is
  the task's alone, dead when it returns - and refers into nothing but its own storage where its type holds no
  reference beside its parts; `taskCopied` checks after writePlans that no region is made at its site (else every place
  keeps). Found on the way, also on master: that copy was made where At's result would live - main's frame - one a
  spawn for the run (~63 bytes, 27 MB at 400,000 joins); lowering's `taskCopy` now makes it in the join's scope, for
  a task handing back no reference beside its parts. n1 and t1 pass -check and free at once; a7 keeps (a view handed to
  the task, its element replaced in the join); h8's task frees, its lambda's capture keeps (a5's named view). Probes
  p1-p8 (a task replacing elements, a global read by a task, a target a field, a let-go in a callee of the join, a task
  building values, a lambda task) each keep. Fixture tasks (n1's and t1's shapes, VmPeak over a second half: flat
  against 139 MB kept; -free late, -sanitize, interpreted and `-race` agree).
  **Where to pick up**: `c` captured by a lambda (a5's `g`, h8's `f`) keeps as a named view; g1 (a recursive owner)
  needs the walks to recurse through a type holding itself in a Vec; review5's o1, o2, ov1 and t2 still fail -check.
  Tasks, sharper later: reach is per join and all-or-nothing (any origin of a join's tasks keeps every place its code
  lets go of; places by origin would keep only those reached), a global read by any task counts for every join, and a
  task's own let-goes of values it built itself keep (its stand-ins' regions are its own - the rule's refinement).
- 2026-11-21, wt-freecap: **a value a lambda captures** (review4's a5, h8's remaining part). D16c makes the capture the
  lambda's own copy (lower.lambda's ownCopyOf), but the walker escaped what the captured local's value refers into, so
  `c := v[j]; f := fn() I64 { return c.a[1] }` kept Q.a for "a reference into it is kept here". A capture lowering
  copies that is a PartsOnly value read whole (`free.capSplit`, no generator's) now refers into nothing it owns
  (`unowned`), and its copy is built split - each part place's array in a part region of its own (lowering's
  ownersCopy at the lambda's site, untracked's `capture`): its owners keep for RSplit alone. Found on the way, on master
  too: a lambda held in the frame (a local only ever called, or made for a call keeping nothing of it - scope's
  onFrameAt) had its captures' copies made in the frame's scope, one a turn for the run (`f := fn() I64 { return c[1] }`
  with `c` a Vec: out of memory at 400,000 turns under 8 MB); they are made in the innermost scope open where the lambda
  is made, which it never outlives. And a local a Let declares with a call letting go of a place (`d := Q.Mk(i)`, its
  `q.a = ...`) was judged in use after that let-go (condition 6) - its value is made after it; `views` passes it. a5
  still keeps by the rule (its `r`, a view of the element, is read after the element is replaced); h8 frees. Then
  review5's o1 and ov1: `w := v` (a Vec<Q>) was a copy made with no store into Q.a (RCopied); `splitLetOf` takes a copy
  of a place's value too, where the type holds no Map (`mapFree`: a Map's entries split so are let go of by a Put as a
  gap - gaps.olang's `c := rows[j]` stays untracked), built split by lower.make's ownersCopy. o2: `nm := v[0].n` copies
  At's value whole (D9h) - `splitLetOf` takes the call whose temporary's field a plain local is given (`fieldTemp`),
  where its type holds no Map. t2: `bx := Box(v[j].b); s any Summer& = bx` - the any made of a read-only reference to
  `bx` was an escape of `bx` (typed.LocalUses: AnyMake's argument escapes), so BlockCopy did not take Box's argument
  copy; a trait value of a read-only reference a reference local is declared with is now an alias of it, as a
  conversion is. o1, o2, ov1 and t2 pass -check (o1's and ov1's views, o2's generator and t2's `?&` keep by the rule);
  probes (a copy moved on, `keep = w`, pushed, a capture beside a store of the captured local, a field read into a local
  reassigned or stored) print the same built, `-free late`, `-sanitize` and interpreted. Fixtures captures, veccopies
  and fieldreads (400,000 turns under 8 MB; master fails -check on each).
  Found running the scenario: the tasks fixture kept every place on the base too ("a task's code may let go of any
  place") - taskKeeps took every lambda in the program among the tasks' code, and std/os's imports bring lambdas that
  may. A lambda made in the tasks' code is reached from its maker (lambdaMade's caller edge), and one made elsewhere
  reaches a task only as an argument (taskAll) or through a global (taskReach): every lambda is a root only where a
  task reads a global. A probe whose task makes a lambda replacing elements keeps, as it should.
  **Where to pick up**: g1 (a recursive owner, `T{a Vec<I64>, kids Vec<T>}`) needs the walks to recurse through a type
  holding itself in a Vec - not started. A copy holding a Map stays untracked (gaps.olang's shape: Put on a split
  copy's entries is a gap row). A field read into a local assigned again (`nm2 := v[j].n; nm2 = nm2 + "x"`) keeps the
  call's copy untracked (splitLetOf's ownLocal). Tasks: as wt-taskfree left them.
- 2026-11-21, wt-freeg1: **a field read into a local assigned again, and an owner holding itself** (review4's g1).
  `nm := v[j].n; ...; nm = v[k].n; nm = nm + "x"`: nm is an owner local, which splitLetOf left out, so At's value copied
  whole (D9h) kept Q.a for "made with no store into it" (RCopied, a gap). splitLetOf now takes an owner local's field
  read too (fieldTemp only), at its declaration and at every assignment (assignTo sets `splitLet` for an owner local's
  value): the copy is built split, its owners keep for RSplit alone. The local's own first value is existing storage -
  it keeps by the rule (condition 1), and the text joined for it later is in its block. g1: `T` was no PartsOnly type
  (PartsOnly found false while it was being asked); it is now found as the greatest answer - true while asked, every
  answer found under that assumption forgotten where the type turns out false - and `free.SelfHolding` names a PartsOnly
  type holding itself by value through the arrays its parts own. Lowering's walks would write such a type out level by
  level forever (a split copy: partOf, splitArray, elemCopy; an element's release: textWalk's partReleases from depth
  0), so for a self-holding element both go through a helper of the type's (`mir.HelperKind.Split`, fn(x mut T&) with
  the scope its parts go in; `Release`, fn(x mut T&) with none), each calling itself for the elements its Vecs hold; a
  helper's guards read the place decisions as link-time constants, as every module's code does. Three more keeps stood
  in the way, the first two also for a non-recursive `R{a Vec<I64>, kids Vec<U>}` (master fails -check on it): an owner
  whose value walks a Vec's elements was no owner a copy could split (splitOwner; partsFree and splitPart had dropped
  that limit in f1) - it splits as any other now; T.kids, changed in place by `t.kids.Push(...)`, asked partsFree of
  itself through its own elements - asked again while asked, it is taken to free; and condition 6 judged
  `t.kids.Push(T.Mk(...))` reading t.kids while T.Mk let go of Vec<I64> buffers it made and while Push let go of them through the
  receiver. A call given plain data alone (no reference, no storage of its own) whose callee reaches no global and no
  code not followed (effects: no global read, write or reference, no WritesOut, no function value not followed, no
  task) lets go only of storage it built itself (`ownGoes`: such let-goes are judged against no view of the caller's);
  and a place lent writably to the very call that lets go (`writableLend`) reaches the container's value as it is
  then, never an old one. Running the fixture found two leaks on master too, each against -check's word: a struct
  element holding an empty Vec (`T{a Vec<I64>, kids Vec<I64>}` with kids left empty) grew ~1.3 KB a turn - a copy of an
  empty array into a part region allocated a zero-length object there, so settling kept the region, and an empty
  array's release_part finds nothing; lowering now makes such an array zero bits before it settles (`zeroEmpty`: the
  part copies, element arrays and `settled`). And a by-value argument of a type holding itself was placed in the
  callee's other argument's scope (`rows[j] = T.Leaf(i)`: the value in main's frame, one a turn): types.SharesRefs
  walked T to its depth limit and answered true; a named type it is already walking adds nothing now (as ReachesCode).
  Fixtures fieldagain (400,000 turns) and owntrees (T trees of depth 2 and R's Vec<U>, 200,000 turns), under 8 MB;
  master fails -check on each; built, `-free late`, `-sanitize` and interpreted print the same.
  **Fixed (wt-writeback):** a store into a field of a Vec's element in a loop, `for i in range 20 { v[i % 4].n = $"m" +
  $i }`, built the text in the turn's scope (check.writeBack's held value: scope.letBody built a held local holding no
  reference where it was held) - now built at the store's slot (`ownsStorage`, `arenaCall`) and its let-go freed at
  once (free's `heldNew`). Fields of fields, elements of elements and a call's text alike; fixture writeback.
  Left: a conditional of two new values stored into a part keeps until its scope closes (the RefMut form too) - fixed
  by wt-freecond below.
  **Where to pick up**: a copy holding a Map stays untracked (gaps.olang's shape); tasks as wt-taskfree left them.
- 2026-11-22, wt-freecond: **a conditional of new values stored, and a fill of text** (the two gaps wt-writeback left).
  `v[j].n = $"c" + $i if c else $"d" + $i` (and `r.n = ...` through RefMut, a local's field, an Array<String>'s
  element) kept until the scope closed: made() judged the conditional itself, no site, as existing storage. Its value is
  one of its branches', so made() records a store of each branch (nested conditionals in turn, a constant branch SOk):
  each branch's site gets the region (or slot) its store gives it in writePlans, and lowering's val builds each branch
  there already. A branch of existing storage keeps as before. And a fill of text - `Array<String>(n, "")`, fixed or
  not, pushed whole, or a fill of plain arrays (`Array<Array<I64>>(n, w)`) - was a value made with no store into its
  element place (RCopied), then its one item stored into every element ("kept in another place too"); every Array<String>
  element store in the file kept with it, since the place is the type's. Each element is now built as the place's
  stores build it (`lower.fillText`: a slot of the fill's scope for a slot place, a part region of its own for a part
  place, else a region of its own; empty text zero bits), and the fill records one SOk store (`free.FillText`, makeStores;
  a fixed fill only where it is built in a block, as fillOwners'). Fixtures conds and fills (200,000 turns under 8 MB;
  master fails -check on each); built, `-free late`, `-sanitize` and interpreted print the same; at 3,000,000 turns
  both read ~1.7 MB resident, `-free late` 505 and 654 MB.
  **Where to pick up**: a copy holding a Map stays untracked (gaps.olang's shape); tasks as wt-taskfree left them; a
  struct constructed with a fill argument (`P(Array<String>(m, "p"))`) is a call's value copied (RCopied) where an
  element of its field is replaced.
- 2026-11-22, wt-fillstruct: **a fill given to a constructor** (wt-freecond's last RCopied). `P(Array<String>(m, "p"))`
  with P's instance viewing its argument: the fill was no storage made for the call (typed.FreshViews took rendered text
  and constructor calls only), so the caller copied P's value (D9h) and the copy's text elements were values made with
  no store into the element place. A fill whose site is built where the instance lands is now storage made for the call
  (`freshText`), as rendered text is: no copy, and the fill's elements are the ones lower.fillText built for the place
  (its SOk store). Covers an array-of-arrays fill beside another field, one pushed whole inside its constructor, and a
  field default fill of a length known only when it runs; a fill handed to a function storing it already freed. Fixture
  fillargs (200,000 turns under 8 MB; master fails -check); built, `-free late`, `-sanitize` and interpreted print the
  same.
  **Where to pick up**: a field default fill of a constant length (`t Array<String> = Array<String>(4, "d")`) is a
  fixed fill stored into the instance, not built in a block, so it keeps (RCopied) as wt-freecond's rule says; and
  `v[j] = P(...)` into a Vec<P> whose P holds an Array<String> is SetAt's gap ("lets go of what the element held": P is
  no PartsOnly type), fill or not.
- 2026-11-22, wt-keptlast: **the last three keeps -memory -check named** (wt-fillstruct's and review7's). (1) A field
  default fill of a constant length (`t Array<String> = Array<String>(4, "d")`), a fixed array held in the instance
  and built in no block, kept by wt-freecond's restriction. That restriction guards against a region of its own built
  inside an owner's region, which an owner's release finding its region from its anchors would take for its own; text
  of a slot place is built in slots, as every copy's text of such a place already is wherever it lands
  (lower.copySlots) - so `free.FillText` takes a fixed fill outside a block where its element place is a slot place
  (arrays of plain elements, built in part regions or regions, still need a block). (2) `v[j] = P(...)` into a Vec<P>
  whose P holds an Array<String> (SetAt's "lets go of what the element held"): P was no PartsOnly type, an array of
  text being neither a Vec's text buffer nor a split field of PartsOnly values. (3) `ts[j] = Array<String>(2, ...)`
  into a Vec<Array<String>>: its element place was no part place (elemArray took arrays of plain or PartsOnly
  elements). Both are an array of text whose text place - by the type alone, a slot place - is built in slots
  (`free.TextArray`): an element array of text is now an elemArray (each value built in a part region of its own,
  its text in slots of the region's parent - splitArray, elemArrayCopy), and a struct's field holding one a split field
  (SplitField, its VecWalk a SplitCount walk with Texts its text place). Its let-go walks the array by its length putting
  each element's slot back, guarded by the text place's decision as a Vec of text's walk is (lowering's relPath Data
  -2 with Slot), then releases its part region; PartsLet of text names the text place, so the walks' let-goes are judged
  as a Vec of text's are. Fixtures fixeddefaults, textstructs and textarrays (200,000 turns under 8 MB; master fails
  -check on each); built, `-free late`, `-sanitize` and interpreted print the same; probes (copies of an element held
  across its replacement, a returned element, an element's text pushed into a Vec, Push/Pop, a struct holding a
  Vec<Array<String>> replaced whole, Vec<Vec<Array<String>>>, P copied out then replaced) agree in every mode.
  **Where to pick up**: a fixed outer array of arrays of text (`Array<Array<String>>(3, ...)` with a constant length,
  its elements replaced) keeps by wt-fillcopy's rule (a fixed fill's elements no store builds, RCopied); a store of
  existing storage made in the prelude's code - `v[j] = P("a", 1)`, SetAt's copy of a constant's text - keeps by the
  rule but is not counted among the let-goes "in code that runs again" (the report says none where SetAt's call is in a
  loop); a copy holding a Map stays untracked (gaps.olang's shape); tasks as wt-taskfree left them.
- 2026-11-22, wt-keptlast2: **wt-keptlast's two leftovers free at once.** (1) A fixed outer array of arrays of text
  (`a := Array<Array<String>>(3, Array<String>(2, "z"))`, `a[j] = Array<String>(2, ...)` in a loop) kept by
  wt-fillcopy's rule: a fixed array of text whose text place is built in slots (`free.FixedText`) is now taken by
  `free.FillText` - the fill builds each element's text in slots (lower.fillText walks the array by its length) - and
  an element or field holding one that no place follows, given another value whole, lets go of its text place
  (`unfollowed`): lowering puts each element's slot back by the length, guarded by the text place's decision
  (`releases`); a fill is judged by makeStores, anything else as a store. Scope's valMake builds a fill's item where
  the statement stands, not in the target's scope, so the item's text is a temporary of the turn. (review8: only where
  the item's type shares no reference - one holding a reference to storage it makes is built where the fill goes.) (2) A constructor
  given constant text (`v[j] = P("a", i)`): the instance views its argument, constant data; `made` takes a ConstRead
  value as SOk, as constant data stored itself is, so the field stays decided sole and SetAt's copy is let go of. The
  report now counts SetAt's let-goes among those "in code that runs again". Fixtures fixedfills and constargs (200,000
  turns under 8 MB; master fails -check on each); built, `-free late`, `-sanitize` and interpreted print the same.
  (review8: the ConstRead rule takes only a place of immutable text - a mutable array given constant text holds a
  copy, `t Array<Char> = "abc"` in its frame's slot, which a region release crashed on.)
- 2026-11-21, wt-taskgrow: **a task's read-only reference to an element** (`spawn b = readsRef(v[j].a)`, `readsQ(v[j])`)
  kept ~63 bytes a spawn for the run, here and at wt-taskfree alike: lowering copies the view call's value (D9h) for a
  task, and only a by-value argument's copy went to the join's scope (`taskCopy`). A read-only reference argument whose
  callee preserves it, of a task handing back no reference beside its parts, now has its copy there too - through the
  Promote or the borrowed field that names it (lower's `promotedSite`); free records it for `taskCopied`'s region
  check (`taskRefCopy`) and judges the reach as before. Fixture tasks missed it: VmPeak counts reserved address space,
  so -free late read flat too, and a loaded machine's extra worker (two 64 MB malloc arenas and an 8 MB stack: the full
  verify's "grew by 139268 KB") read as growth. It now reads the resident peak over each of the last two quarters of
  200,000 turns, flat where either gains under 2 MB: -free late grows 12.6 MB, the compiler before this 6.3 MB.
- 2026-11-23, wt-taskhandoff: **question 1, option (c)** (the user's call) - a joined task's results handed to the
  spawner at the join's wait. The runtime: regions name their maker's home, a region released on another thread gives
  its storage back there (a lock-free list per thread, drained as its pool runs short), a part's regions go with its
  root. The compiler: condition 3 narrowed to a task's let-goes on storage it did not build (`ownBody`, `taskLets`), a
  spawn target's type places kept only through its join where the wait hands the result over, only live bodies'
  spawns. taskvals runs every part by default, part 2 flat; taskkept new. Open: a clause default's storage on the
  worker's program part; the evaluator's divergence on a moved Map of Vecs of text (2.4, question 1).
- 2026-11-24, wt-gaps1719: **gaps 17 and 19 re-checked on master 1cc282a15 - both still have open shapes** (no code
  changed; fixtures name them). Gap 17: an element holding a struct with a Map field built by its constructor (`S(m)`,
  a call's value copied - a copy holding a Map stays untracked, as gaps.olang's literal) keeps the old Map, 13 MB to
  100 MB at 20,000 turns (checks' freeing gaps17); an `Array<Vec<Map<String, I64>>>` element, flat alone, keeps beside a
  `Map<String, Map<String, I64>>` whose values Put replaces (the element's Maps then an owner in a one-region place:
  places per type, not per value), 13 MB to 191 MB at 200,000 turns (gaps17b) - both named by -memory -check. Gap 19:
  a returned value local landing in an array element still keeps storage in the array's scope per call where it is
  text (`s := ...; return s`, ~29 B a call, 128 MB at 4,000,000), text given a second value before the return (~450 B a
  call), or one of two Vec locals returned by a conditional (`return a if c else b`, ~1 KB a call) - and -memory -check
  reports every let-go freed (gaps19; the check misses it). No use after free: -sanitize, -free late and the evaluator
  agree on all. Free of growth: a Map/Vec of Maps/Vecs given alone (`Array<Map<I64, Vec<String>>>` is flat over
  2,000,000 turns though -check names a keep), `Vec<Vec<Vec<String>>>` by SetAt, a Map of Maps by Put, returned Maps,
  structs, generic and passed-through Vec locals.
- 2026-11-24, wt-cond3: **condition 3 for C, narrowed** - the compiler's own build froze nothing early: "C is given a
  function value" kept all 999 places, though the value was os.RunOnStack's lambda, which the runtime's
  `__olang_run_on_stack` runs on a thread of its own while the call waits. Now (free.olang): (1) that call is the call
  `f()` would be (`syncCall`: through f's parameter, composed by each caller's lambda); (2) C given an export fn, a
  `-library` build or C of the program's own run the export fns C may call as tasks' code (`cRoots`) - with no join to
  wait for them, so one reaching a global or code not known keeps every place, else what its code lets go of on
  storage it did not build keeps; a function value given C that is no export fn (the runtime's own aside) keeps every
  place as before (`cOpaque`). A `-library` build or C of its own kept every place only in the spec before: the
  implementation now does what it says. (3) A lambda calling through what it captured - a parameter of its maker's (or a
  capture of its own) never assigned - lets go as the value its maker gives, composed where the lambda is written as an
  argument (`capVia`, letsVia's `CapBit`): std's `sortByPositions` (`fn(i, j) { return try less(a[i], a[j]) }`) made
  every Sort let go of anything, so every task that sorted (fix's builder, through os.ReadDir) did. (4) taskKeeps took
  every function named as a value, and every lambda where a task reads a global, among the tasks' roots: a function
  value runs in a task only where the tasks' code calls through it, and the walks judge each such call - as the bodies
  it is (an edge the reach follows), through a parameter or capture (judged by the callers, reached too), or as letting
  go of anything - so neither is a root now; a root's own calls through a parameter still keep everything. Cases
  o8dcback, o8dcbackglobal, o8drunonstack, o8dcapturevia, o8dcapturekeeps. The compiler's -memory: the condition-3
  reason moved from "C is given a function value" (389 rows) to "a task reads a global, and the join's code lets go of
  it while the task may run" (397): `drive`'s join runs the whole compiler beside spin's ticker task, which reads
  spin's globals (Title, Frames), and condition 3 keeps every let-go in a join's code where any task reads a global.
  Without that task the build frees 540 of its 1004 places (measured with drive's join removed). **Where to pick up**:
  judge a join's reach by the globals its tasks read - their places, and the places of the types their values reach -
  rather than keeping every let-go of the join's code.
- 2026-11-24, wt-gap19: **gap 19 - two of its three shapes freed, the rest named by -memory -check.** A returned text
  local (`s := $i + "..."; return s`) now keeps its own slot in the frame as a returned Vec local does (`Plan.RetFrame`
  for a run-time array or a value holding one - the scope pass's `letMoved` excluded every `arenaValue`, lowering's
  `retFrame` every array; a fixed array still goes where the result goes): 32 bytes a call, 128 MB to flat at
  4,000,000 calls (checks' freeing rettext). A return of a choice lowering copies (`return a if c else b`, a value owning
  its storage and sharing no reference, a body handing back no view: lower's retOwns and copiesValue) no longer moves the
  locals it reads whole to the result scope (`scope.dropCopied`, `copiedChoice`; `retOne` judges such a value where it
  stands, the copy built where the result goes): ~1.1 KB to 48 bytes a call, the copy's buffer. -memory -check now names
  both keeps that are left (`free.resultRegionGaps`: a slot place's store of a call whose callee makes a region where its
  result goes, following returned calls; `walker.unfollowed`'s `copiedRet`: a call whose callee copies its returned
  value) - gaps19 fails it with two rows (2.4, "Gap 19's open part"). Found on the way: a choice of calls alone is no
  copy (lowering hands it back as it is), so `copiedChoice` takes only a choice with a place read among its values - the
  first cut judged `return w.held(p) if ... else w.storage(p)` in place and the compiler built by it crashed.

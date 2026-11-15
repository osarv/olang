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
| 6 | a text field replaced, `d.text = d.text + $i` (local struct, or through `mut Doc&`) | 2.2 GB | one text | the struct's constructor value is copied into the local (RCopied): its fields' first values not taken as made for them | open |
| 7 | an owner field replaced, `m.w = step(m.w)` | 258 MB at 32,000 | one tensor | as 6 | open |
| 8 | an array's element given new text, `names[i % 10] = ...` | grows (42 MB at 320,000) | ten texts | element stores never let go (docs/memory.md 2.6 item 7) | open |
| 9 | a `Vec`'s element given new text, `v[i] = ...` | grows | ten texts | as 8, through `SetAt` | open |
| 10 | a `Map`'s value replaced by `Put` (`Map<String, String>`) | grows | one text per key | `Put` is no let-go; a text value beside a text key no slot | open |
| 11 | a `Vec` local growing | 2x its final size | old buffer freed at each growth | an array place only for a Vec held in a sole place | open - outside O8f as written (growth is a let-go only of a collection held by a place that reclaims its value whole, or by a field) |
| 15 | a `Map` entry's text key beside a `Vec` value, at a removal (earlyfree's mapkeys) | the key's text kept | freed with the entry | a split entry's key is built where the map lives, not in a slot | open (a `-memory -check` gap) |
| 16 | a local declared with no value (D13d) given new text in a loop | kept | one text | an unset local is no place (its storage holds nothing written before its first assignment) | open (a `-memory -check` gap) |
| 12 | oann's tempref: a temporary given to a `&` parameter whose callee copies it into a struct holding a reference | +5,580 kB over 100,000 calls | nothing kept | a scope variable no argument and no obligation determines was bound where the call's result lands (`scope.olang` bindRest): `View.Make(o.mem, Dims(4))`'s `Dims` built in the result's scope, which `read(o.View())` lands in o's | **fixed**: +72 kB (bound to the block where the callee builds nothing into it, names it in no relation, and its result views no parameter of it - onlyForCall) |
| 13 | oann's joinleak: a `join` with spawns | +110 B per join | nothing kept | every task given a stand-in per scope variable, made in the spawner's caller's scope (56 B each) - for a callee building nothing | **fixed**: flat (98 pages at 200,000 and 800,000 joins) |
| 14 | text a task builds into a loop turn's local (g09) | +8 KB per turn | nothing kept | the task's chunks are folded into the joiner's pool (O8b), workers ask the OS for new ones | **fixed**: the joiner shares its pool beyond a batch at each join, 160 MB to 13 MB |

Freed already (measured flat): a struct local of an owner replaced (`t = step(t)`), an array local copied from a
turn's array (`a = b`), loop-turn locals and closures, `Pop`/`Remove` of maps and vecs (checks' `earlyfree`).

Found on the way: an immut array assigned a value of the same length was written in place, so a slice of its old value
read the new text (`v := s[0:2]; s = "x" + $2` printed `x2`): T13a says an immut value is replaced whole. Fixed with 1.

## 3. Order of work (phase 2)

1. The gaps that cost real programs: 1-4 (done), 13 (a plain runtime leak), 12, 5, 6-7, then 10, 8-9, 11, 14.
2. O8f in SPEC; B18's `-check`.
3. Tests: checks' `freeing` scenario (each program of the table under a limit, `-memory -check` over the earlyfree
   fixtures), corpus tests reading back after churn, the evaluator's agreement.
4. Records: docs/settled.md, HISTORY.md, DEPENDENTS.md (`-memory -check`).

## 4. What -memory -check reports, measured

A gap row (B18a) at: an assignment, in code that runs again, of a place holding storage that no place follows (a local
declared outside the loop that is no candidate, a global or field of a kind not followed, any element - gaps 8, 16); a
`SetAt` giving an element owning storage (gap 9); a B18 place kept for a copy of its holder or a change in place
(RCopied, RInPlace - gaps 6, 7); a program's call - a removal, `Put`, `SetAt` - whose library place keeps for a reason in
the library's code (gaps 10, 15). Every earlyfree fixture but mapkeys passes; `checks/fixtures/freeing/gaps.olang`
fails naming its element.

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

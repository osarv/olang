# Weak references with generations: freeing a removed node early (genrefs)

The design note for freeing what a long-lived structure removes before the structure's scope closes (2026-11-08;
**every question decided by the user the same evening**, section 15; nothing built yet - the build order is
docs/wholeprog.md section 10). The user, 2026-11-08, after dropping the reference-counting carve-out (QCR 2): "if you hold
something that can be freed earlier, and that thing is kind of let go of scope-wise, that reference then points into
something that's guaranteed to be null, and then you must always check those references." The coordinator's framing
(owning links inferred, back links generational as in Vale, the generation word before the allocation, nothing
counted) is the starting point; where this note departs from it, it says why. Two constraints came while it was
written: decide per type from the type's own module, never from its importers (the user's standing rule: per-module
facts and code, reused when unchanged, B3i; whole-program work only in the final step over precompiled units), and,
where whole-program facts would make it clearly safer or free substantially more, design that variant too and put it
to the user.

The current state is SPEC.md section 8 (O1-O8d, O15-O16, O27, O28), T2c, S8d-S8e, T13b, C11, E12, X10-X11, B18, K1 and
B3e; docs/memory.md (early freeing's design, its section 2.6 lists what keeps); compiler/free.olang (the analysis);
std/runtime/runtime.ll (the arena, the chunk pool, regions); docs/fnvalues.md section 12 (scopes found from an address,
designed, not built).

## Progress

Hand-off for a fresh agent after a restart. Output: this file, one line in docs/README.md, and the probes it cites in
`docs/genrefs/` (olang, each measuring its own peak through `/proc/self/status`). Committed on wt-genrefs and pushed.

- [x] read: PRINCIPLES.md; CLAUDE.md (memory and scopes, references, unique, destructors); SPEC O1-O8d, O15, O16, O27,
  T2c, T13b, T24-T25b, S8d/S8e, C9b, C11, X10, X11, B18, L9-L9c, B3i; docs/fnvalues.md sections 10-13; docs/memory.md
  sections 2.6 and 3.4; free.olang's header, its places, origins and Decide; runtime.ll's regions; DEPENDENTS.md
- [x] measured today (section 1): a linked stack, a doubly linked list, a tree with parent links and an LRU cache, each
  churning in a scope that outlives the loop, built by the compiler of 1879ade (`/home/user/wt/merge/build/olang`, std of
  this worktree); a baseline that keeps only what is live
- [x] simulated the run-time half in C (throwaway, in the scratchpad, not committed - described in 8.2 so it can be
  redone): an arena that never frees against a header word, per-class free lists and tagged weak words, with the two
  holder records of 2.4
- [x] counted (section 10): `?&` in std/ and compiler/, back links in the corpus, uses of the name `weak`
- [x] the coordinator's constraints folded in (per-module facts; whole-program variants as questions 4 and 5)
- [x] sections 0-15
- [x] the user's answers folded in (2026-11-08 evening, section 15): `weak` written; a weak read gives `null` as soon as
  no owning place holds its node, through the count (so the holder record is (b)); a fresh node stored only into weak
  places, or a weakly named type held owning nowhere, is an error; generational status and holder facts from the whole
  program (docs/wholeprog.md's facts with readers); every module's let-go sites (round 7, folded into wholeprog's W2);
  the one-holder rule; `std/pool`. Where the text below still describes (a) or a per-module decision, sections 0.1 and
  15 govern.
- [x] G1 (round 1, 2026-11-09, wt-weakrefs; HISTORY "`weak` references and generational types, round 1"): `weak`, T2d
  and T13d with their errors, generational status over the whole program, explain's line, `-memory`'s rows; the probes
  above rewritten with `weak`. Left to G2+G3: a `weak T?&` in a generic (judged per instance) makes nothing generational
  yet; the "stored only into weak places" error covers a constructor called straight into one, not a local only ever
  stored weakly
- [x] G2+G3 (rounds 2 and 3, 2026-11-09, wt-genheader; HISTORY "`weak` references and generational types, rounds 2 and
  3"): the header word at every allocation of a generational type (arena, stack pinned, constant data pinned with
  generation 0), the weak word and read with the count's test, the top-bits check at chunk allocation, the count at
  owning stores (direct, whole values, the prelude's collections through occupy/vacate and growth as moves), the same
  in the evaluator with dead-region mode's holder check, and the one-holder rule's classification with `-memory` rows
  (conservative: no transfer of 5.2 recognized yet). Measured: the probes' time within noise of G1, their peak +8 bytes
  a node (dlist 88.7 -> 97.0 MB, tree 97.0 -> 104.3 MB, lru 43.5 -> 49.3 MB, stack unchanged - no `weak`). Left: a `weak
  T?&` in a generic is still an ordinary owning reference (judging it per instance needs generic.olang's instance
  hook); the "stored only into weak places" error still covers only a constructor called straight into one
- next: G4, in docs/wholeprog.md section 10's order

## 0.1 Decided (the user, 2026-11-08 evening)

What changes in the design below, in one place:

1. **`weak`** is written on back links (T2d), as designed. The user weighed `?&` alone, `!`, `back`, `unowned`, and an
   `owned`/`unowned` pair replacing `unique`, and declined them all: `unique` and `weak` stay.
2. **A weak read gives `null` as soon as no owning place holds its node** - not only once the node is reclaimed - through
   the count of owning places in the header word the read loads anyway (4.2). So the holder record is the count, (b)
   of 2.4; (a), its pins and the "clear first" idiom are not built. The transfers of 5.2 are kept only for the one-holder
   rule (item 5). A weak read's answer therefore follows the program's own stores into owning places; what stays the
   compiler's (question 2, accepted) is only when the storage is reclaimed, and the count's over-statements (a node held
   by three owning places at once pins its count; a let-go no code records) - both keep memory, and keep a weak read
   giving the node, never the reverse.
3. **Two compile-time errors** (T2d): storing a fresh node only into weak places (it would read `null` at once); and a
   type that weak references name but no owning place of the program holds - a whole-program check, an acceptance fact
   (docs/wholeprog.md, kind A).
4. **Whole-program facts** (question 4, superseded by docs/wholeprog.md's facts with readers): a type is generational
   where any module of the program names it weakly, and its holder facts come from the whole program. The error for a
   slot holding it by value, where that slot is in another module than the `weak`, is said at the `weak` (the code that
   widened the decision); at a precompiled module's boundary the defining module decides (SPEC B3i), so an importer's
   `weak` to a precompiled type its module does not make generational is an error at that `weak`. The status reaches
   code as a fact read by each module allocating or storing the type, keying its object (wholeprog kind D): it flips
   only when the first `weak` to a type is written or the last removed, and kind B would put a load and a branch at every
   allocation and owning store of every struct type in `-quick` and `-debug` builds.
5. **The one-holder rule** (the user's): a type whose instances the compiler shows are never held by two owning places at
   once - weak places not counting, every store of an existing instance into an owning place a transfer of 5.2's shapes
   - is reclaimed where its owning place lets go of it (judged for references in use by 5.3), decided at compile time
   only, with no count read. For a type no weak reference names it needs no header at all: an extension of O8d to
   linked structures (the stack of section 1 is one). A store that is no transfer, anywhere in the program, makes the
   type not qualify (a whole-program fact), and `-memory` names that store.
6. **Every module's let-go sites reclaim** (question 5, round 7): the same mechanism as docs/wholeprog.md's early freeing
   in every module, so round 7 is folded into wholeprog's round W2, and round 4's sites are emitted in every module
   from the start.
7. **`std/pool`** (question 6) is being built (wt-pool2).


## 0. Summary

**Where it stands.** Early freeing (O8d) frees a value when the place that was its only holder lets go of it. A linked
structure never qualifies: the moment a node links to another node, a reference into a value of the place is stored
in another value of it (memory.md 2.6, item 10), and every back link is a second holder. Measured, a singly linked stack
keeps every node it ever pushed (17.9 MB for 1M pushes and pops with 100 live), a doubly linked list 91.4 MB, a tree
with parent links 100.0 MB, an LRU cache 44.4 MB - against 1.8 MB for the same loop keeping only what is live.

**The design in a few lines.**

1. **Back links are written: `weak`** (T2d). `prev weak mut Node?&`, `parent weak Widget?&`, `Map<String, weak Node?&>`.
   A weak place holds its referent without keeping it: reading it gives the referent, or `null` once the referent has
   been reclaimed. Every other place holding a reference is an **owning place**, so nothing about owning is inferred
   or written. This departs from the framing (owning links inferred): no rule can tell `next` from `prev` or `head`
   from `tail` - a doubly linked list is symmetric - and a wrong guess is not lost memory but a broken program (a
   `next` taken for a back link would let the list's nodes go while the list still links them). Section 2.1.
2. **Generational types** (T13d). A struct or enum type its own module names in a weak reference has instances with
   identity, held only by reference (`n := Node(1)` is a `mut Node&`); each instance carries one word before its
   allocation - a 16-bit generation and a 2-bit holder record - so `T.Size`, its layout and C's view of it never
   change. Decided from the type's own module, as the coordinator asked.
3. **A weak word is one word** (4.2): the pointer with the generation it saw in its top 16 bits. Reading a weak place
   compares that with the instance's generation - one load, a compare and a select, measured at 0.5 ns. Values read are
   ordinary `T?&`; locals, parameters and results are never weak. The `is null` the program writes after is the
   ordinary test.
4. **Reclaiming** (O8e). An instance is reclaimed - its slot back on its scope's free list for its size, its generation
   bumped so every weak place given it reads `null`, what its own owning places hold let go of in turn - where no owning
   place holds it and no reference in use reaches it, as the compiler can show; at the latest as its scope closes,
   with nothing done per instance there (weak places obey section 8, so none outlives it).
5. **Which owning places hold an instance is followed at run time**, in the header's two bits, because moves between
   owning places (a child moved up a tree, a node relinked to the front of an LRU) cannot be proved statically in
   general. Two forms (2.4, question 3): (a) a held bit that pins an instance seen in two places at once, never counting,
   with the compiler recognizing transfers and the program clearing a link before relinking; (b) a count of holding
   places, saturating at 3, which frees every shape measured as written. Measured on the LRU: (a) with no transfer
   recognized pins every node (414 MB at 10M operations, more than today's 355 MB); with transfers recognized it still
   grows (13 MB at 1M, one node in four pinned); with "clear first" too, 1.7 MB; (b) 1.7 MB, and the fastest (550 ms
   against today's 734 ms).
6. **What is in use is judged while compiling** (5.3), by O8d's final step as today: a reference read from a weak place
   is a reference in use like any other, so nothing it may reach is reclaimed while it is; the body's own locals are
   told apart from the reclaimed instance by a compare at run time, and an instance let go of while a reference still
   uses it is reclaimed at that reference's last use (an **orphan**).
7. **Cost** only where `weak` is written: 8 bytes per instance of a generational type, a header update per store into
   an owning place of one, a check per weak read. Nothing changes for any program today: no `weak` exists in the
   repository, and no back link in std/ or compiler/ churns.
8. **Per module, with the final step for the whole program** (section 6): the type's facts and every module's code come
   from the type's own module; where an instance is reclaimed is O8d's final step, in the root's object, as early
   freeing is today. Questions 4 and 5 put the whole-program variants: generational by any module's `weak` (link-time
   constants), and every module's let-go sites freeing (link-time constants - which would help all of O8d, not only
   this).

**Rounds** (section 13): 1 `weak` and generational types (rules, errors, no reclaiming - a weak place then never reads
null early, which the contract allows); 2 the header and the weak word; 3 the holder record; 4 reclaiming, with
orphans and the cascade (after docs/fnvalues.md round 6); 5 an instance's own arrays reclaimed with it; 6 the
sanitizer, the dead-region evaluator and the fuzzers; 7 (question 5) every module's let-go sites; 8 (question 6) a std
pool of generational handles.

## 1. Where things stand (measured at 1879ade)

Each probe churns 1M operations in `main`, whose scope outlives the loop, and prints its peak (VmHWM) and time; built
with `-O3` and LTO (`olang build`), run three times (times varied with other rounds building; peaks did not).

| program (`docs/genrefs/`) | shape | live | peak today | time today | why it keeps (`-memory`) |
|---|---|---|---|---|---|
| `stack.olang` | `s.head = Node(v, s.head)`, pop `s.head = h.next` | 100 | 17.9 MB | 9-13 ms | "'s.head' keeps what it lets go of until the Stack's scope closes - a reference into it is stored here" (the push stores the old head into the new node: condition 2) |
| `dlist.olang` | `next`/`prev`, `head`/`tail`, push back, pop front | 100 (88-byte nodes) | 91.4 MB | 42-74 ms | no place qualifies at all ("no place lets go of storage in code that runs again") |
| `tree.olang` | binary search tree, `parent` links, delete-min through `replace(n, child)` | 1,000 | 100.0 MB | 75-104 ms | `t.root`, `at.left`, `at.right` keep: "a reference into it is stored here" (`Node(k, at)` stores the parent) |
| `lru.olang` | `Map<String, mut Node&>` + a doubly linked list, 4,000 keys, evicting at 1,000 | 1,000 | 44.4 MB | 116-251 ms | no place qualifies |
| baseline (scratch) | the same loop keeping 100 nodes in a `Vec` ring | 100 | 1.8 MB | 1 ms | - |

So today a linked structure is reclaimed only as its scope closes, by design (memory.md 2.6, items 1 and 10): O8d
decides per place declaration that a place is the only holder of what it holds, and a node linked from another node, or
pointed back at, has two. The coordinator's starting point - "lists already compile with plain references; what is
missing is freeing a removed node" - holds, and the measurement adds that even the plainest singly linked stack frees
nothing, so the owning side (moves between owning places) needs as much design as the back links.

## 2. The model

### 2.1 Owning places and weak places - and why the weak side is written

A **place** is O8d's: storage that holds a value and can be given another - a field, an element, a global, a local. In
a linked structure, one link to a node owns it (the list's `head` and each node's `next`; a tree's child links; a
`Map`'s slot) and others only point back (`prev`, `tail`, `parent`, a cache's index). If the structure's owning links
form a tree - each node held by one owning place at a time - a node is free to go when its owning place lets go of it,
and every back link must then read `null`.

Which links own cannot be inferred:

- **Symmetry.** A doubly linked list is owned as well by `head`/`next` as by `tail`/`prev`: both are spanning trees of
  the same nodes. Nothing in the program picks one, and statement order (whichever store a fresh node meets first) would
  make the meaning of a list depend on how its `PushBack` is written.
- **Store patterns are no guide.** `next` and `tail` are both given fresh nodes; `prev` and `tail` are both given
  values already held elsewhere; a field's stores do not separate owning from pointing back.
- **A wrong guess breaks the program.** If inference took `next` for a back link, a node held only through `next`
  would have no owning place, would be reclaimed, and the list would read `null` in its middle. Early freeing's rule is
  that failing to prove something only keeps memory (memory.md 2.6: "Each of these only keeps memory; none is ever an
  error"); a back link changes what a read gives, so it cannot be a guess.
- **It is a meaning the reader should see** (PRINCIPLES: "explicit where a cost or a hazard would otherwise be
  invisible"): a field that may turn `null` with no store to it.

So the back link is written - **one word, `weak`, before a nullable reference type in a stored position** - and the
owning side is everything else, inferred by nothing. The word is what Swift, Objective-C, Rust (`Weak`) and Python
(`weakref`) call it, and reads aloud ("prev, a weak reference to a Node").

```
type Node struct(v I64) {
    v
    next mut Node?& = null           # owning: the list holds each node through 'head' or the previous 'next'
    prev weak mut Node?& = null      # points back: reads null once the node it names is gone
}

type DList struct() {
    head mut Node?& = null
    tail weak mut Node?& = null
}
```

### 2.2 Generational types

A weak place must be able to tell, when it is read, whether the instance it was given is still there. The instance
carries the answer: a **generation** in one word before its allocation, bumped when it is reclaimed. A weak word
remembers the generation it saw. That needs every instance a weak place can be given to have that word, which holds
only for whole heap instances - a struct held by value inside another value, or in a frame, has no word before it,
and is reclaimed when its container is. So:

- a struct or enum type its own module names in a weak reference is **generational** (T13d);
- a generational type is **held only by reference**: `n := Node(1)` is a `mut Node&` naming a new instance, as a
  unique value's copy is a reference (T13b); a slot laid out for a value of it is an error naming `Node&`;
- each heap instance of it carries the header word; `T.Size`, its layout and C's view of it (X11) are what they were.

Only the type's own module decides. Its importers see the decision as they see its fields (B3i hashes what a module
is compiled against). An importer writing `weak Widget?&` for a type whose module never does holds it as an ordinary
reference: it reads `null` only where `null` was stored - which the contract of 2.5 allows (question 4 asks whether any
module's `weak` should make the type generational instead).

Why reference-only rather than a header on every value of the type, wherever it lies: a header inside a container
would change the container's size and layout; and an instance inside a container reclaimed early would need its own
generation bumped by the container's reclaiming and its header at a fixed place in the reused slot - which slots of
another type do not keep. A node with back links is a thing with identity; holding it by value is not something such
types want (no `Node` by value appears in any probe or in the corpus's linked types).

### 2.3 What reclaiming is, and when

An instance of a generational type is **reclaimed** when nothing but weak places holds it:

- no **owning place** - any place in a scope's storage holding a reference to it but a weak one: a field of an
  instance, an element of a collection or of an array held there, a global - holds it; and
- no **reference in use** reaches it - a local, a parameter, a value being computed, a reference inside a value held
  in a frame.

Reclaiming puts its slot back on its scope's free list for its size (4.4), bumps its generation (so every weak place
given it reads `null` from then on), and lets go of what its own owning places hold (so removing a subtree reclaims
the subtree). Nothing is done per instance as a scope closes: weak places obey section 8 like every reference, so no
weak place outlives the scope its referent lives in, and the scope's chunks go back as today, in one step.

The first condition is the run time's to follow (2.4); the second is the compiler's (5.3). Where either cannot be
shown, the instance stays until its scope closes - memory, never a wrong read.

### 2.4 Following owning places at run time: two holder records

Which owning places hold an instance changes with every store. The hard case is a **move**: a value read from one
owning place and stored into another, where the first stops holding it only later - or only because its holder is
reclaimed in the same step.

```
s.head = Node(v, s.head)                 # the old head goes into the new node's 'next', then 'head' lets go of it
l.head = h.next                          # h's 'next' still names the new head while 'head' lets go of h
t.replace(m, m.right)                    # p.left = c while m.right still holds c; m goes after
```

Static analysis can prove the first two (the old value of the place assigned is read in the same statement, or by a
local read from it with nothing between - 5.2); not the third, where `replace` stores a parameter whose source only the
caller knows, and whose old value (`n`) only an invariant of the tree names. An LRU's move-to-front is the third kind
on every hit. So the header carries a **holder record**, updated at every store into an owning place - and the two
candidates differ in what it can say:

- **(a) A held bit, and a pin.** Bit 16: some owning place holds it; bit 17: **pinned**, never reclaimed early. A
  store into an owning place sets *held*, or sets *pinned* where *held* is already set (a second place: sharing, or a
  move the compiler did not recognize); a let-go clears *held* unless pinned. Nothing is counted. A move the compiler
  recognizes as a **transfer** (5.2) updates nothing; every other move pins, unless the program clears the source first
  (`n.next = null` before relinking `p.next = q` - the "clear first" idiom), which `-memory` can name.
- **(b) A count of holding places, 0-3, saturating** - 3 pins. A store adds one, a let-go takes one, reclaiming takes
  one from each instance its own owning places hold. Every move is exact with no recognition and no idiom: the count
  passes through 2 and back to 1. It counts **places**, never references - nothing at a local, an argument, a return or
  a copy into a frame - in two bits of the word the generation already needs, so no memory beyond (a)'s. A cycle never
  reaches 0 and stays until its scope closes, which needs no collector. It is, all the same, a count.

Measured (8.2, a C simulation of the run-time half; "today" is an arena that frees nothing until the end):

| shape, ops | today | (a), no transfer recognized | (a), transfers recognized (5.2) | (a), transfers and "clear first" | (b) |
|---|---|---|---|---|---|
| tree, 1M | 95.2 MB, 61 ms | 1.8 MB, 21 ms (3,450 pinned) | the same (no transfer shape here) | 1.4 MB, 22 ms | 1.4 MB, 27 ms |
| tree, 10M | 940 MB, 605 ms | 1.9 MB, 200 ms (4,612 pinned) | the same | 1.4 MB, 205 ms | 1.4 MB, 202 ms |
| LRU, 1M | 37.1 MB, 123 ms | 42.9 MB, 119 ms (753K pinned, none reclaimed) | 13.0 MB, 60 ms (207K pinned, 545K reclaimed) | 1.7 MB, 53 ms | 1.7 MB, 56 ms |
| LRU, 10M | 355 MB, 734 ms | 414 MB, 882 ms (7.5M pinned) | - | 1.7 MB, 493 ms | 1.7 MB, 550 ms |

(a) works where the compiler recognizes the transfers and the program clears a link before relinking it; with the
transfers alone the LRU still pins one node in four (each move-to-front's `p.next = q` while `n.next` still names
`q`), so its memory still grows. (b) works as written. Both are faster than today's arena on these loops (reclaimed
slots are reused while hot; today every node touches a fresh page). **Decided: (b)** (0.1, item 2). Before the answer, the default was
(a) - the user's "no counting" - and every round before the holder record is the same for both.

Either record is a cache of a fact, kept on the safe side: a store always records a holder, a let-go missed (an owning
place whose storage is reclaimed by a scope's close, a non-root module's code that keeps - section 6) only leaves it
recorded, so the record can over-state the holders, never under-state them. Over-stating keeps memory; under-stating
would free a held instance, and section 9 is about why it cannot.

### 2.5 What a weak read gives

Reading a weak place gives a `T?&`: its referent while the referent is held (by an owning place or a reference in use),
`null` from the moment it is reclaimed, and in between - after the last holder let go, before reclaiming - still the
referent. Where reclaiming happens is decided by the compiler (section 5) and reported by `-memory` and the language
server, the same for every build of one program by one compiler.

That is the contract of a weak reference everywhere: Swift's `weak var` turns nil where ARC frees the object, which its
optimizer may move ("object lifetimes end at their last use", `withExtendedLifetime` exists for it); Java's and
Python's when a collector runs. A program written to it - one that treats `null` as "gone" and never reads a removed
node through a back link expecting it - behaves the same whatever the compiler decides. It is also a departure from the
user's rule for contracts (direction.md: "a program's meaning never depends on how clever the prover is"): a program
that does read a removed node through a weak place may print the node with one compiler and `null` with a better one.
Exact timing would need ownership written and checked in types (Vale's owning references, Rust's `Box` with moves),
which olang has declined (no borrow checker, no `own`). Question 2.

## 3. The rules, as SPEC would state them

**L9** gains `weak` (a reserved keyword - with docs/fnvalues.md's round 1, every word is; the repository uses `weak` as
a name nowhere, so nothing is renamed). **L9a** lets it name a method after a receiver or `.`, as every keyword.

**T24** (grammar), the reference forms:

```
ref-type    ::= [ "weak" ] [ "mut" ] type-ref          (* "weak" only with the marker "?&", T2d *)
```

**T2d (weak references).** A reference type written with `weak` before it - `weak Node?&`, `weak mut Node?&` - is a
**weak reference**, written only where a value is stored: a field (a constructor's field included, C2a), a payload
field of an enum case, the element type of an array or a type argument a type stores (`Array<weak Node?&>`,
`Vec<weak Node?&>`, `Map<String, weak mut Node?&>`), or a global. A place of that type is a **weak place**: it holds its
referent without keeping it. Reading it gives a `T?&` - the referent, or `null` once no owning place holds the referent
(O8e); what is read is an ordinary `T?&`, narrowed by a test of a local (S8e) as any other. Everything else is a
`T?&`'s: it is given any `T&` or `T?&`, compared by `==` (by identity, or `Eq`, E10), rendered by `$`, its permission
the reference's (T25b). `weak` before a never-null reference (`weak Node&`), on a local, a parameter, a receiver, a
result, a function type's parameter or result, before an array, a function type, an `any`, an extern type (X10) or a
number is a compile-time error - naming `?&` for the never-null one, a stored position for the others; a type variable
(`weak T?&` in a generic) is judged where its instance is asked for (G18a). Two more errors (0.1, item 3): a body that
makes an instance (a constructor, or a call giving a new one) and stores it into weak places while no path of the body
stores it into an owning place, returns it, or hands it to a callee that may keep it - it would read `null` at once -
is a compile-time error at the store, naming an owning place to store it into first; and a weak reference to a type no
owning place of the program holds (a field, an element, a payload or a global holding it other than weakly) is a
compile-time error at the `weak`, judged over the whole program.

**T13d (generational types).** A struct or enum type that any module of the program names in a weak reference (T2d;
0.1, item 4) - `type Node
struct(v I64) { v  next mut Node?& = null  prev weak mut Node?& = null }` - is **generational**: each of its values is an
instance with an identity of its own, held only by reference. `n := Node(1)` makes `n` a `mut Node&` naming a new
instance (built where O28 places it); a slot laid out for a value of it - a local written `x Node`, a field, an element,
a payload, a parameter, a receiver or a result typed `Node`, an array of `Node` by value - is a compile-time error naming
`Node&`. It may not be declared `unique` (T13b) - an error naming T13d - and a destructor does not make it unique (C11):
no value of it is ever copied, only referenced, so each instance's destructor runs once (O15, O16). `x.Copy()` makes a
new instance (E31d), but of a type declaring a destructor, where it is an error. Whether a type is generational is a
fact of the whole program; where the `weak` making it so and a by-value slot are in different modules, the error is at
the `weak`, and a type of a precompiled module is generational only where its own module names it weakly (B3i).

**O8e (reclaiming an instance of a generational type).** An instance of a generational type is held by the **owning
places** holding a reference to it - every place in a scope's storage but a weak place: a field of an instance, an
element of a collection or of an array held in a scope, a global - and reached by the **references in use** to it: a
local, a parameter, a value being computed, a reference inside a value held in a frame. It is **reclaimed** - its
storage and what was made for it alone (O8d's "made for the place": its own arrays) given back for reuse, and what its
own owning places hold let go of in turn - where the last owning place holding it lets go of it (O8d's let-go: an
assignment, a removal, a reclaiming of the instance holding the place), or, after that, at the last use of the last
reference in use reaching it, where the compiler shows both; at the latest as its scope closes (O8). It is not
reclaimed early where O8d's conditions 3 or 4 forbid it - something it holds reached by two threads or by C able to call
back, a destructor still to run - nor where the program's run cannot tell that the last owning place let go (an
instance two owning places held at once whose second store was no recognized transfer, in the implementation without a
count). From the moment no owning place holds it every weak place given it reads `null` (whether or not it is reclaimed
yet); nothing else a program reads changes.
Where an instance is reclaimed and where it is kept, and why, `-memory` reports (B18). O8d's conditions 1 and 2 are not
asked of a generational type's instances: which owning places hold one is followed while the program runs, and a weak
place is no holder.

**O8d**: its list of what a place lets go of gains "and an instance of a generational type is reclaimed by O8e"; its
"Reclaiming early changes no value a program can read" gains "but a weak place's (O8e)".

**T2c** gains, after "a narrowing of a field path can still meet a null that a call stored there": "and a weak place
reads `null` once no owning place holds its referent (O8e), with no store to it - read it into a local and test that (S8e)". S8d
and S8e are unchanged: a field never narrows, weak or not, so `p := n.prev; if p is not null { p.v }` is the form, as
for any field, and `n.prev!.v` ends the program on a gone node as on a null one.

**C11**: "A type declaring a destructor is declared `unique` (T13b)" gains "- or is generational (T13d), whose values
are never copied".

**B18** (`-memory`) gains, for each generational type, a row at the declaration of each of its weak places (once):
`p.olang:7:5: memory: 'prev' is weak: a Node is reclaimed where its last owning place - 'next' or 'head' - lets go of it,
and 'prev' reads null after`; and, for a let-go of an owning place of a generational type that keeps, the row and note
O8d's rows have: `memory: 'p.next' keeps the Nodes it lets go of until the DList's scope closes` with a note at the
reason - "'q', a reference to a Node, is in use across this call" (5.3), "a Node was given to two owning places at once
here: clear 'n.next' first" (implementation (a), 2.4), "the program has tasks that may reach a Node" (condition 3), "Node
declares a destructor" (condition 4), "an importer's weak reference to Widget is held as an ordinary one: its module
holds none" (T2d).

**K1, B3e**: compile-time evaluation decides a read of a weak place only where an owning place still holds its referent
(it follows holders exactly); where none does, the read is left to the run time, as K1 leaves everything it cannot
decide. `interpret` reclaims where the build does (section 7).

## 4. Representation

### 4.1 The header word

Every heap instance of a generational type is allocated with one word before it:

| bits | what |
|---|---|
| 0-15 | the generation: 1 when a slot is first carved, bumped as each instance in it is reclaimed; 0 for constant data |
| 16-17 | the holder record (2.4): (a) held, pinned; (b) a count 0-3, 3 pinned |
| 18-63 | zero (spare) |

- **Where instances come from.** The arena, as every instance's (O6, O28), bumping `size + 8` (aligned so the instance
  keeps its alignment, O8a); or a slot of the scope part's free list for its class (4.4).
- **Constant data** (K2, T25d) already has a zero word before every constant (emit writes it, for the regions): its
  generation is 0, and emit writes its holder record as pinned. A weak word naming a constant carries generation 0 and
  matches forever; a store into an owning place reads "pinned" and writes nothing (constant data is read-only).
- **A frame** (O7's storage set aside for a local, an instance built on the stack where nothing keeps it) gets the word
  too, written pinned - a frame instance is never put on a free list.
- **Regions** (O8d's early freeing of owners held in place): a generational instance is never built in a region - where
  a region is planned for a value holding one, the instance is built in the region's parent scope and held by its
  holder record; the region's release lets go of the owning places in what it reclaims (4.5).

`T.Size`, a struct's layout, `T.Offset` and `T.Align` (reflection), and C's view (X11) are unchanged - a struct holding
references is no plain-data struct, so none crosses to C by value anyway.

### 4.2 The weak word

A weak place is one word, as a `T?&` is: the pointer, with the generation it saw in bits 48-63. User-space addresses on
x86-64 (4-level and, without a high hint, 5-level paging) and AArch64 are below 2^48; the runtime allocates every
chunk without high hints, and checks the top bits of a chunk it is given once (on the slow path), aborting where they
are not clear - a machine where it would is not one olang targets.

```
read  x.prev:   w = load x.prev
                p = w & 0x0000ffffffffffff
                h = load32 (p - 8)                  ; only where p != 0: generation and count in one load
                r = (p != 0 and h & 0xffff == w >> 48 and h >> 16 & 3 != 0) ? p : null
store x.prev = r:   w = r == null ? 0 : r | (load16 (r - 8) << 48)
copy  a.prev = b.prev:   the word copied as it is (no check: the copy says what the source said)
```

The read is one load (the header, on the instance's own cache line in most cases), two compares and a select - the
count's test (0.1, item 2: no owning place, `null`) rides on the load the generation needs; the store
one load, a shift and an or. Values read are plain `T?&` from then on - one representation for every local, so no
weak value flows into code that does not expect it. The check is paid where the program reads a field it declared
`weak` - shown in the declaration, as `mut` shows what a store may do - never per use of what was read.

### 4.3 Retirement

Sixteen bits of generation would wrap after 65,535 reclaimings of one slot. Live instances carry generations 1 to
65,534; reclaiming one of 65,534 sets 65,535 - which no live instance carries, so no weak word does - and **retires** the
slot: it is not put back on a free list, and is kept until its scope closes. A stale weak word can therefore never meet
its generation again within the scope (0 stays constant data's alone), and after the scope closes no weak word into it
exists (section 8). The simulation's 10M-operation list retired 101 slots (100 live nodes, each slot reused ~100K times) -
1/65,536 of the reclaimings, 11 KB.

### 4.4 Free lists by size, found by address

A reclaimed instance's slot goes on its **scope part's** free list for its size class: classes of 16 bytes up to 256,
then 320, 384, 512, 768, 1,024, 1,536, 2,048 (the header included); an instance larger than that is not reclaimed
early (kept until its scope closes; `-memory` says so) - large nodes are rare, and the regions' block sizes stop at
the same point. The lists are a small table (one word per class, 23) the scope part makes in its own storage the first
time it reclaims, named from its header. Every slot of these classes is laid out alike - its first word the
generation, the payload after it - so after round 5 an instance's own arrays use them too, leaving the first word alone.

The slot must go back to the scope part it came from, so its generation word stays at the same place for as long as a
weak word may name it (4.3). The let-go site knows the owning place's scope, not always the instance's (placement may
have built the instance further out). docs/fnvalues.md's O29 (section 12) answers it: chunks of up to 128 KB in
128 KB-aligned slots, so `p & ~(128K - 1)` is the chunk's header, which names its scope part (`owner`). So reclaiming
needs that round (fnvalues round 6) and nothing more per instance; a large chunk is found in its sorted table. A slot's
memory is reused only as a slot of its class in its scope part while that scope is open, and its first word is written
by nothing but a generational instance's allocation and reclaiming, so the word before an instance in a slot is always
that slot's generation.

Could the generations live in the chunk headers instead, with nothing per instance (as fnvalues 12 put the scope)? No:
a generation is per instance, a chunk holds instances of every size by bump, and a side table indexed by offset would
cost a byte per 8-byte granule of every chunk - every program paying for what only `weak` uses. The word per instance is
paid only by generational types, the users of `weak` (fnvalues 12.7 measured what a word per object of every type
would cost: +7.6% on the self-build, +50% on binarytrees).

### 4.5 Reclaiming, and the cascade

`reclaim(x)`: let go of what `x`'s own owning places hold (a per-type function the compiler writes - the fields, payload
fields and arrays of `x` holding references to generational instances), bump `x`'s generation (or retire the slot),
clear its holder record, push the slot on its scope part's list. Letting go of a held instance updates its record and,
where the record says no owning place holds it and the compiler planned a reclaim at that let-go (5.3), reclaims it -
through a worklist, never recursion, so dropping a list of a million nodes takes no stack. Under (a), the cascade clears
*held* on what the reclaimed instance's own places hold, and reclaims those not pinned. A child is reclaimed by the
cascade only where the let-go that began it was judged for the child's type too (5.3: no reference in use may reach
one); otherwise the child is left held by nothing and stays until its scope closes.

### 4.6 Threads

An instance something two threads can reach is never reclaimed early (O8d condition 3, unchanged), so its generation
never changes while two threads can read it, and a weak read on another thread compares against a word written before
the instance was published (P8's edges order it as they order the instance's fields). Its holder record may still be
updated by two threads storing it into owning places at once - a race on a field nothing consults, since nothing
reclaims it early; so ordinary builds update it with plain loads and stores, and `-race` builds with relaxed atomics,
so ThreadSanitizer reports only the program's own races (P7).

## 5. The compiler's half

### 5.1 Each module's check and code (per module)

- `weak` parsed and checked (T2d), generational types found and their slots checked (T13d): a module's own facts.
- Every module's code, from the facts of the types' modules: an allocation of a generational type with its header;
  a weak read and store (4.2); a store into an owning place of a generational type updating the holder records of
  the new value and the old (2.4), including the prelude's collection code in instances whose element type is a
  reference to one (instances are emitted in the root's object, B3d, from facts of the element type's module).
- **Stores of whole values.** A value holding references to generational instances stored into a scope's storage whole
  (a struct by value into a field, a `Vec` element, an array copied, `Copy()`) records a holder for each reference
  it holds - a per-type function, as the cascade's - and a move of such a value (D9i's last use, a collection's growth,
  a `Pop`) records nothing new: the holders move with it. Round 3 builds the direct stores; until round 3b builds
  whole-value stores, a type whose references are stored inside whole values so is not reclaimed early (the final step
  sees the copy and keeps - O8d's "a value holding it made with no store into the place").

### 5.2 Transfers (implementation (a) only)

A move needs no record update where the compiler shows, in one body, that the source stops holding the value at the same
step. Two shapes, both read off the body with no assumption about the structure's invariants:

1. **The old value goes into the new.** `s.head = Node(v, s.head)`; `h := c.head; n.next = h; c.head = n` (no store to
   `c.head` and no call between the read and the store): the place's old value is stored into an owning place inside
   or before the value that replaces it. The store of `h` and `c.head`'s let-go of `h` cancel.
2. **The new value comes out of the old.** `h := l.head!; ...; l.head = h.next` (no store to `l.head` between): the
   place lets go of `h` and takes a value read from `h`'s own owning place. Where `h` is reclaimed at this let-go (or at
   a later last use with no store of `h` between), `h.next`'s hold ends with it, so the store records nothing; where
   `h` is not, the stored value is pinned.

Every other move pins, and `-memory` names it with the fix (clear the source first). Under (b) none of this exists.

### 5.3 References in use (the final step)

An instance is reclaimed at a let-go only where no reference in use may reach it. Today's O8d judges that for references
read from the place (condition 6). With weak places, a reference to an instance can come from elsewhere - a weak read,
a parameter, a field of a value in a frame - so the rule widens: **a reference in use that may reach an instance of a
generational type T - in the function after the let-go, or in a caller across the call making it - makes a let-go that
may reclaim a T not reclaim there**, judged by type, as O8d judges calls that may let go of a place. Three refinements
keep that from keeping everything:

- **Compares with the body's own locals.** Where the references in use after a let-go are locals of the same body,
  the let-go compares the instance with each (one compare each) and reclaims only where it is none of them.
- **Orphans.** An instance let go of while a local of the body (or of a caller, across the call) may still name it is
  an **orphan**: no owning place holds it. After the statement holding that local's last use, where no other reference
  in use may reach a T (the body's later locals, its callers across the call - by type, the final step), the compiler
  places a check: still held by no owning place (it may have been stored again), then reclaim. `h := s.head!; s.head =
  h.next; return h.v` reclaims `h` after its last read.
- **Results.** A function giving back an instance it let go of (`fn (l mut DList&) PopFront() mut Node&`) records in its
  summary that its result may be an orphan; the caller's local holding the result is then checked after its last use
  as above. A `Pop` of the prelude's collections is the same shape (O8d's "moved there from a place that was its only
  holder").

What it reads: every body of the program, as O8d's final step does today (free.olang's must- and may-summaries, its
callers lists, its loop and order facts). Where a fact is missing - a call through a function value docs/fnvalues.md
does not follow, an extern, a body not judged, a cycle not settled - the let-go keeps; `-memory` names it. The probes,
by hand: the stack's push (a transfer under (a)) and pop (an orphan reclaimed after `h.v`); the list's `PopFront` (`q`,
in use after `l.head = q`, is compared with `h`); the tree's `replace` (no reference to a Node in use after its stores
in it or in `DeleteMin` after the call); the LRU's eviction, the `Map` owning (section 10): `old := c.tail!` reads a
weak place, `c.unlink(old)` stores only into weak places, and `c.at.Remove(old.key)` lets the map's slot go of the
node while `old` is still in use in that statement - an orphan, reclaimed by the check after it.

### 5.4 How it composes

- **Section 8.** Unchanged. A weak reference is a reference: it may not outlive its referent's scope, and storing one
  into a longer-lived place places the referent there (O28), as storing any reference does. So an instance referred to
  from a long-lived registry is built where the registry lives - and then reclaimed early by its holders, which is what
  frees it, not its scope.
- **Unique values and destructors.** A generational type is never unique (T13d). One with a destructor is never
  reclaimed early (condition 4): its destructor runs as its scope closes (O16), so a weak place to it never reads `null`
  before then. A non-generational value holding a destructor value keeps O15 and the rule of docs/fnvalues.md section
  10 (a value's destructor runs where its storage lives). `x.Destroy()` (being removed) plays no part.
- **Generics.** `weak T?&` in a generic is judged per instance; a generic type `type DNode<T> struct(...) { ... prev
  weak DNode<T>?& }` is generational in every instance (its declaring module names it).
- **Function values.** A call through one keeps where docs/fnvalues.md does not follow it, as every let-go judged
  across such a call does today.
- **Tasks.** Condition 3: nothing two threads can reach is reclaimed early; 4.6 for the header.
- **C.** A reference to a generational instance handed to C is the instance's address (the header is before it,
  invisible). A weak place is never a parameter or a result, and a struct holding references is no plain-data struct,
  so no weak word ever crosses the boundary. A pointer C makes and hands back as a generational type's reference -
  which only a wrong prototype can do - would have no header: X1a's hole, stated with it. A program C may call back frees nothing early (condition 3, unchanged), so its weak places
  never read `null` early.
- **Early freeing's other places** (owners held in place, collections' slots and buffers, regions): unchanged.

## 6. Which step does what, and what an edit costs

| part | where it runs | what an edit of one module rebuilds |
|---|---|---|
| `weak` checked (T2d); a type found generational, its slots checked (T13d) | the module's own check | that module, and what imports it - as today: an importer's object hashes its imports' sources (B3i) |
| headers at allocations, weak reads and stores, holder updates at owning stores, the cascade's per-type functions | each module's code, from the declaring modules' facts | nothing beyond the above |
| transfers (5.2) | each body, alone | nothing beyond the above |
| where an instance is reclaimed: references in use across calls, orphans, results (5.3) | O8d's final step, over every body, written into the plans of code emitted in the root's object (the root module and every instance) - as early freeing is today | the root's object and the link |

The last row needs the whole program: whether a reference in use may reach an instance across a call depends on
every caller, in every module. Decided per module, a let-go in an exported function could never reclaim (a caller
elsewhere might hold the instance across the call), so the decision stays in the final step, where O8d's already is -
over the typed bodies every build checks anyway (B3i), changing only the root's object.

Code in a module compiled into its own object (a non-generic type's methods in a module other than the root) updates
holder records and never reclaims early - as O8d's let-gos there never free today (free.olang's `rootEmitted`). A
generic structure (`List<T>`, a user's `DList<T>`) is emitted in the root's object and reclaims. So the per-module
constraint costs memory in one case: a non-generic structure's let-go sites in a module of its own, which keep.

**The whole-program variants** (questions 4 and 5 - both decided for the whole program, 0.1; the per-module text above is superseded):

- **Generational by any module's `weak`** (question 4). The final step would decide that a type is generational where
  any module names it weakly. Every module allocating the type, or storing it into an owning place, would have to emit
  both forms behind a **link-time constant** per type (`@__olang_gen.Widget`), defined by the final step: folded away
  under LTO (the default build), a load and a branch per allocation and per owning store of every struct and enum type
  in `-quick` and `-debug` builds. An edit adding the first `weak Widget?&` anywhere rebuilds only the constants and the
  link. Gain: an importer's weak references to a library's types reclaim (an application holding `selected weak
  Item?&` into a GUI library's tree) - but only where the library's own module names none, which a library with parent
  links does. Recommended per module.
- **Every module's let-go sites reclaim** (question 5). The final step's decision at each let-go site, and each orphan
  check, delivered to a module's object as a link-time constant per site (`@__olang_free.<module>.<n>`), the code in
  the module holding both paths: folded under LTO; a load and a branch per let-go site in `-quick`/`-debug`. An edit
  rebuilds the constants and the link, never another module's object. Gain: a non-generic structure in a module of its
  own reclaims (today it keeps - for O8d's places as much as for this), which is the common way to write a library's
  cache or tree. Recommended, as a round of its own after round 4; it serves all of early freeing.

## 7. The sanitizer, the evaluator and `interpret`

- **`-sanitize` (B2f).** A reclaimed instance is quarantined - never reused, its contents written with a poison
  pattern, its generation bumped - and, since under `-sanitize` every chunk is a mapping of its own, a generational
  instance is given a mapping per page it fills, protected when reclaimed, so a reference in use that 5.3 wrongly let
  through, or an owning place whose store recorded no holder, faults where it reads.
- **The dead-region evaluator** (`OLANG_DEADREGIONS`) marks a reclaimed instance dead; a read of it through anything
  but a weak place is a finding; a weak read gives `null`. It also checks the holder record, which the run time cannot
  (it knows no layouts): at each reclaim it walks its own heap model for an owning place still naming the instance - the
  one way a missed store (2.4's under-statement) would show.
- **`interpret`** (B3e) follows the plans as built: it keeps holder records and generations on its instances and
  reclaims where the plans say, so a weak read gives what the build's gives.
- **Compile-time evaluation** (K1) follows holders exactly (its values carry them) and decides a weak read only where an
  owning place still holds the referent; where none does, it refuses that read and the expression is left to the run
  time - it never guesses which of `null` and the referent the run time gives (2.5). Tests the evaluator runs: a baked
  global built from a list whose back links are read while every node is held (decided), and a top-level assert that
  reads a back link after a removal (refused, so it stays a run-time check - a case in checks/ saying so).

## 8. Cost

### 8.1 Per operation, only where `weak` is written

| what | generational types | everything else |
|---|---|---|
| an instance | +8 bytes | nothing |
| an allocation | one store (the header); a pop where a slot is free | nothing |
| a store into an owning place | the holder record of the new value and of the old: a load, a test, a store each | nothing |
| a weak store | a load, a shift, an or | - |
| a weak read | a load, a compare, a select: 0.5 ns measured (a walk doing nothing but follow back links: +26%) | - |
| a let-go that reclaims | the cascade's per-type function, ~10 instructions, a list push | - |
| a let-go of a body with references in use after | a compare per such local | - |
| a scope's close | nothing per instance | nothing |

### 8.2 Measured (C simulation of the run-time half) and estimated (olang)

The simulation, throwaway C in the scratchpad (rule: C only where it must be; not committed), so it can be redone: a
64 KB-chunk bump arena standing for today's (nothing freed), against the same arena with an 8-byte header before each
node, one free list (one class), weak words `p | gen << 48` read with the check of 4.2, retirement at 16 bits; the
doubly linked list of `dlist.olang` (88-byte nodes plus links), the tree of `tree.olang`, and the LRU of `lru.olang`
(a table of weak words standing for the `Map`, so the list owns the nodes - the harder arrangement for (a)); clang 18
`-O3`, peak from `getrusage`; glibc malloc and free as a third column for the list.

| program | today (nothing freed) | reclaimed | malloc/free |
|---|---|---|---|
| list, 1M ops, 100 live | 87.4 MB, 39.6 ms | 1.3 MB, 2.9 ms | 1.4 MB, 17.3 ms |
| list, 100K live | 87.4 MB, 58.0 ms | 10.8 MB, 13.0 ms | 10.9 MB, 24.9 ms |
| list, 10M ops | 862 MB, 396 ms | 1.3 MB, 56.5 ms (101 slots retired) | - |
| list + 100M weak reads (walks back) | 182.5 ms | 230.0 ms (+0.48 ns a read) | 180.5 ms |

The tree and the LRU are in 2.4's table.

Estimated for the olang probes once built (rounds 1-4, holder record (b), or (a) with the transfers and "clear first"):
the stack, list and tree at the baseline's ~1.8-2 MB (100-1,000 live nodes of 30-112 bytes plus 8) and no slower than
today; the LRU at ~2 MB once an instance's own arrays are reclaimed with it (round 5) - before that each evicted node's
key text stays, ~750K evictions of ~24 bytes, ~18 MB.

## 9. Why it is sound

What can never dangle:

1. **A weak read never returns a reclaimed instance.** A weak word names a slot and a generation. For as long as a weak
   place exists, its referent's scope is open (section 8 - unchanged for weak references), and while that scope is
   open the slot is reused only as a slot of its class in its scope part, its first word the generation, written only
   by allocation and reclaiming, only ever bumped, and retired before it reaches a value a weak word could carry again
   (4.3, 4.4). So the generation read is the slot's, and it
   equals the word's only if no reclaiming has happened since the word was written. Constant data's generation is 0 and
   never changes; frame instances are pinned.
2. **No owning place names a reclaimed instance.** The holder record never under-states (2.4): every store into an
   owning place records a holder - direct stores (5.1), whole-value stores (round 3b; before it, such types keep), the
   prelude's collections - and a holder is removed only by that place's let-go or by reclaiming the instance holding the
   place. Under (a) a second holder pins, and a transfer is skipped only where the source's hold provably ends at the same
   step (5.2: reclaimed then, or later with no store between; else pinned). Under (b) the count is exact up to 3, then
   pinned.
3. **No reference in use names a reclaimed instance.** 5.3: a let-go reclaims only where no reference in use may reach
   an instance of the type after it - judged by type for everything but the body's own locals, which are compared at run
   time; an orphan is reclaimed only at a last use after which nothing in use may reach the type. This is O8d's condition
   6 widened from "read from the place" to "may reach the type", the price of weak places making references to an
   instance obtainable without reading its owning place.
4. **Nothing reclaimed early is shared between threads, reachable by C calling back, or awaiting a destructor**
   (conditions 3 and 4, unchanged).
5. **Section 8 is untouched**: every reference, weak or not, still never outlives its scope; reclaiming early only
   returns storage sooner, inside the scope.

What the gates check: `-sanitize` (quarantine, protection, the holder walk at each close), the dead-region evaluator,
`fuzz free` with a generator that writes linked structures, weak places, moves and references kept across calls,
`scopefuzz` with weak places among its stores; `-race` on the probes with tasks.

## 10. Existing code

- `?&` in std/: 5 (one of them a field: std/list's `listNode.next`, an owning link of a chunked list whose nodes are
  never pointed back at). In compiler/: 673, of which about 95 are stored fields; they are optional children (`Root
  Block?&`, `ty TypeRef?&`), session handles and lazily made passes - none is a back link of a structure that removes
  what it holds. **None would be written `weak`**, and no program in the repository changes meaning or cost.
- Back links in the corpus: tests/nll.olang `Widget.parent`, tests/shared.olang `c5Frame.parent`, checks/cases
  o15dropcyclestep, o17selfstore and o17bkeeps - five, none in a structure that removes. They stay as written; new tests
  add `weak` beside them.
- The name `weak` is used nowhere (identifiers, fields, methods), so the keyword renames nothing.
- The probes, rewritten for the design, are the round tests (13): `prev weak mut Node?&` and `tail weak mut Node?&` in
  the list; `parent weak mut Node?&` in the tree; in the LRU, the `Map` owning (`Map<String, mut Node&>`) and the four
  list links weak, or the list owning and `Map<String, weak mut Node?&>` - both shapes, since (a) treats them
  differently (2.4).

## 11. Against the alternatives

**Reference counting** (QCR 2, dropped by the user 2026-11-08). A count per instance changed at every copy of a
reference - locals, arguments, returns - with a word per counted instance, atomic across threads, and cycles leaked or
collected. This design changes nothing at a local, an argument or a return; implementation (b)'s two bits count owning
places only, in the word the generation needs anyway, and fall back to the scope's close for cycles. Where counting
would win: a value shared by many owning places that all let go mid-scope (a DAG's shared subtree) - (b) pins it at 3,
(a) at 2, and it waits for its scope.

**A std pool of generational handles** (a slotmap: `h := pool.Add(v)`, `try pool.Get(h)` failing on a stale handle,
`pool.Remove(h)`). Nothing in the language changes, memory is flat at once, every access is a named call that fails -
no hidden cost - and it serves arrays of plain records well (the settle loop's data is never linked). Against it: links
become handles, not references - no `n.next.v`, every step a `try`, a pool's elements are values in a `Vec` (no
reference to one held across a growth, M19g), and existing code with references is rewritten around indices (the
values study measured +17-25% instructions for that rewrite). Weak references keep the code a linked structure is
written in. Both are worth having: a pool is a few hundred lines of std, buildable now (question 6).

## 12. Tools, and the walk of DEPENDENTS.md

- **A keyword** (DEPENDENTS "A keyword"): SPEC L9 and the grammar; compiler/token.olang (`Tok`, `Text`, `Keyword`);
  parse.olang and ast.olang (the reference form); unparse.olang and fmt.olang (`weak mut Node?&`); names, check,
  typed, lower, eval, emit; session.olang `Keywords`; editors/nvim/syntax/olang.vim; the token and tree goldens; the
  fuzz generators; tests and checks. No migration: nothing is renamed.
- **Rules and diagnostics**: T2d, T13d, O8e and the edits of section 3 in SPEC; msgs.olang's new errors (weak on a
  never-null reference, on a local or parameter or result, on an array or function type or any or extern type, a
  generational type by value, a generational type declared unique, `Copy()` of a generational type with a destructor);
  `make diaggold`; `olang explain T2d`, `T13d`, `O8e`.
- **`-memory`** (olang.olang) and the language server's placement hint (session.olang): section 3's rows.
- **`explain`, `doc`, hover**: a weak field shows its word; a generational type's signature line says `# generational:
  held by reference; weak from 'prev', 'tail'`.
- **The runtime**: `__olang_gen_alloc`, `__olang_reclaim`, `__olang_san_check_holders` and the free-list table
  (DEPENDENTS "A runtime function": runtime.ll, emit's declarations, the evaluator's builtins list).
- **`olang api`**: making a type generational (a `weak` added in its module) is **breaking** - its by-value slots stop
  compiling elsewhere; a field becoming weak is breaking (its reads may turn null).
- **bindgen**: nothing (no C type is generational).

## 13. The build plan

As decided (0.1), the rounds change so: round 1 adds T2d's two errors (the whole-program one through docs/wholeprog.md's
facts, W1) and decides generational status over the program; round 2 and round 3 are one round, the count with (a)'s
weak read built in it (a weak read gives `null` from round 3 on, before anything is reclaimed) and the one-holder
rule's classification; (a)'s pins and the "clear first" idiom are not built; round 4 reclaims counted types and
one-holder types alike, its sites in every module through wholeprog's W2 (round 7 is W2); round 8 is being built
(wt-pool2). Their places among the other rounds are docs/wholeprog.md section 10.

Each round: spec first, then the checker and codegen, the evaluator in agreement, tests (corpus tests read back after
an arena churn, as tests/nll.olang does; run cases reading their own peak through VmHWM, as checks/cases/mapchurn
does; checks cases naming each new diagnostic; a test the evaluator decides beside each run-time test), the records,
DEPENDENTS.md's walk, `make verify`. The gates (`make scopesan`, `make scopefuzz`, `fuzz free`, the dead-region
evaluator) on rounds 3-6.

### Round 1 - `weak` and generational types (sections 2.1, 2.2, 3; opus, high)

The keyword, the grammar, T2d and T13d with their errors, `-memory`'s weak rows, explain/doc/hover, the tools of
section 12. Represented as ordinary references (no header, no check): a weak place never reads `null` early, which the
contract (2.5) allows, so the round is complete and safe on its own. Tests: the four probes rewritten with `weak` (they
compile, behave and keep as today); a generational type's by-value slots refused; `n := Node(1)` a reference (aliasing
read back); checks cases for every error. Evaluator: a baked global holding a list with weak back links, read back.

### Round 2 - the header and the weak word (4.1-4.3, 4.6; opus, high)

The header at every allocation of a generational type (arena, constants, frames), the weak read and store and copy of
4.2, retirement, the top-bits check at chunk allocation. Nothing reclaimed yet, so every check passes; the round is
measured: the probes' time against round 1 (the 8-byte header and the check), bench unchanged (no generational type).

### Round 3 - the holder record (2.4, 5.1, 5.2; opus, high)

The record question 3 picks: updates at direct stores into owning places, the prelude's collections in instances of
generational element types; (a)'s transfers, or (b)'s count. Round 3b: stores and copies of whole values holding
references to generational instances. Still nothing reclaimed: the dead-region evaluator's holder check (section 7) runs
over every test with a reclaim simulated at each let-go that empties a record (the round's gate).

### Round 4 - reclaiming (2.3, 4.4, 4.5, 5.3, section 7; opus, xhigh; after docs/fnvalues.md round 6)

The final step's widened condition 6 by type, the compares with the body's locals, orphans and results, the reclaim
and its cascade, the free lists found by address, the sanitizer's quarantine, the dead-region evaluator, `interpret`
following the plans, compile-time evaluation's refusal of a weak read of an unheld referent. Tests: the four probes as
run cases asserting their peaks (the stack, list and tree within a few MB of the baseline; the LRU below 25 MB, and
within a few MB after round 5); weak reads after removals giving `null`, read back after an arena churn; an orphan
reclaimed after its last use; a removed node kept by a reference in use across a call (its `-memory` row); a cycle kept
until its scope closes; a destructor type kept; a program with tasks reclaiming nothing (and clean under `-race`); the
evaluator's decided and refused weak reads.

### Round 5 - an instance's own arrays reclaimed with it (4.4; opus, high)

The run-time arrays an instance holds by value (a `String` key, a `Vec`'s buffer) allocated as class slots of its scope
part when the instance is generational, and reclaimed by the cascade's per-type function; the LRU flat.

### Round 6 - the fuzzers and a bulk review (section 9; opus, high)

`fuzz free`'s generator writes linked structures with weak places, moves and references kept across calls; scopefuzz's
stores include weak places; a soundness review of rounds 3-5 (the record never under-states, 5.3's judging by type).

### Round 7 - every module's let-go sites (decided; folded into docs/wholeprog.md's round W2)

Link-time constants per let-go site and orphan check, for O8d's places and this note's alike; a measure of `-quick`
builds' cost.

### Round 8 - a std pool of generational handles (decided; being built on wt-pool2; sonnet, medium)

`std/pool`: `Pool<T>`, `Handle`, `Add`, `Get`/`Ref`/`RefMut` failing with `PoolError.Stale`, `Remove`, walks; tests
and examples (B7a); any time, independent of the rest.

## 14. Decided here (mine, within the user's decisions - to object to)

1. **Back links are written, `weak`; owning is everything else** (2.1), against the brief's inference: symmetric
   structures, and a wrong guess changes reads. Asked as question 1 because it adds a word.
2. `weak` only with `?&`, only in stored positions (fields, payload fields, elements and stored type arguments,
   globals); never on locals, parameters, results or function types.
3. **The check is at the read of a weak place**, not at a later `is null`: values read are ordinary `T?&`, so no weak
   value reaches code that does not expect one; one check per read, shown by the declaration.
4. ~~A type is generational by its own module's `weak` references~~ - **revised by the user's answer to question 4**
   (0.1, item 4): a type is generational where any module of the program names it weakly, and its holder facts come
   from the whole program (facts with readers); at a precompiled boundary its own module decides.
5. **Generational types are held only by reference** and are never `unique`; a destructor does not make one unique
   (C11 relaxed for them); `Copy()` makes a new instance unless the type has a destructor.
6. **One header word before the allocation**: 16-bit generation, 2-bit holder record; `T.Size` and layouts unchanged.
7. **A weak word is one word**, the generation in the pointer's top 16 bits; slots retired before the generation wraps.
8. **Weak references obey section 8** (no outliving the referent's scope), so a scope's close does nothing per instance;
   a weak reference that outlives its referent's scope is not offered (it would need generations bumped at every close,
   or epochs per chunk).
9. **Reclaimed slots go to per-class free lists of their scope part**, found by address (fnvalues O29); instances above
   2 KB are not reclaimed early.
10. **Where an instance is reclaimed is O8d's final step**, delivered to every module's let-go sites (question 5,
    answered yes: docs/wholeprog.md's W2).
11. **Condition 6 widened by type** for references in use, refined by run-time compares with the body's own locals,
    orphans checked at last uses, and results that may be orphans.
12. **An instance with a destructor still to run is never reclaimed early** (condition 4 kept): its destructor at its
    scope's close, so its weak places never turn `null` before then.
13. **Constants and frame instances carry the header pinned.**
14. **Threads**: holder updates plain in ordinary builds, relaxed atomics under `-race`; nothing shared is reclaimed.
15. **Compile-time evaluation refuses a weak read whose referent no owning place holds**, rather than guess; `interpret`
    follows the plans.
16. **Making a type generational and making a field weak are breaking changes** for `olang api`.
17. ~~Holder record (a) is the default~~ - **the count (b), decided** (0.1, item 2).

## 15. Direction questions - all answered 2026-11-08

**Answered** by the user, 2026-11-08 evening, in steps. Question 1: "Yes, record weak is decided" (after weighing `?&`
alone, `!`, `back`, `unowned`, and an `owned`/`unowned` pair replacing `unique` - all declined, so `unique` and `weak`
stay). Two rules, "Yes, do them both": a weak read gives `null` as soon as no owning place holds the node, through the
count in the header word the read loads anyway - which answers question 3 with (b) - and a fresh node stored only into
weak places, or a type weak links name held owning nowhere (a whole-program check), is a compile-time error. Question
6: yes (`std/pool`, wt-pool2). Question 2: yes - "this is ... the entire point of having weak links". Question 5: yes -
"especially now since we have whole program compilation ... there's no difference between these kind of things
anymore". Question 4 is superseded by docs/wholeprog.md's facts with readers (the user's yes to its questions the same
evening): generational status and holder facts from the whole program. And the one-holder rule (the user's, from the
discussion): nodes only ever held by one owning link are freed early, decided at compile time only. Section 0.1 says
what each changes. The questions as they were asked:

1. **`weak` as a written word** - one keyword before a nullable reference in a stored position (`prev weak mut Node?&`),
   the owning side everything else. The brief asked for no syntax unless it must be written; it must, I think: no rule
   tells `next` from `prev` in a symmetric list, and a wrong guess is a list reading `null` in its middle, not lost
   memory (2.1). Recommendation: yes. Default: nothing built.
2. **When a weak read turns `null` is the compiler's** - at the reclaiming it can show, reported by `-memory` and the
   language server, the same for every build by one compiler; a better analysis may make it earlier. That is every
   language's weak reference (Swift, Java, Python) and departs from "meaning never depends on the prover" only for a
   program reading a removed node through a back link; exact timing needs ownership in the types (Vale, Rust), which
   olang declined (2.5). Recommendation: accept. Default: as designed.
3. **The holder record**: (a) a held bit that pins a value seen in two owning places, no counting - frees the measured
   shapes only where the compiler recognizes the transfer and the program clears a link before relinking (the LRU as
   written, transfers recognized, still pins one node in four and grows: 13 MB at 1M operations, against 1.7 MB); or
   (b) a count of owning places, 0-3, in the same header bits -
   frees every shape as written (1.7 MB), nothing counted at locals, arguments, returns or copies into a frame, cycles
   left to the scope's close. (b) is a count, which the user dropped today; it is not reference counting's per-copy
   cost. Recommendation: (b). Default: (a).
4. **Generational per module or per program**: a type is generational where its own module names it weakly (an
   importer's `weak` to another type holds strongly), or wherever any module does - decided in the final step and
   delivered as link-time constants: no object rebuilt on an edit, nothing under LTO, a load and a branch per allocation
   and owning store of every struct type in `-quick` and `-debug` builds (6). Recommendation: per module. Default: per
   module.
5. **Early freeing in every module's code** - the final step's decision at each let-go site delivered as a link-time
   constant, so a non-generic structure in a module of its own reclaims (today it keeps, for O8d's places as for these);
   an edit rebuilds only the constants and the link; free under LTO, a load and a branch per let-go site in `-quick` and
   `-debug` (6). Recommendation: yes, as round 7. Default: the root's object only, as today.
6. **A std pool of generational handles** (`std/pool`, a slotmap) beside weak references, for data held as records
   rather than linked (11). Recommendation: yes, small, any time. Default: none.

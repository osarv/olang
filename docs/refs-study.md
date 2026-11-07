# The references study (2026-11-03)

The question the user asked (decisions.md QCS): the values study tried everything as values - what about everything as
references? No `&` or `?&`, only `mut` and `immut`; "can we do this without losing performance?", with structs whose
layout is known (to write them to files). The sketch to test: **references by meaning, layout by inference** (Java
Valhalla's lesson) - every value of a struct or enum type is an object with identity (`b := a; b.x = 1` changes `a`);
an `immut` type has no identity, so the compiler lays it out flat; a `unique` value is held inline by its one holder;
numbers and arrays of numbers stay flat; only a mutable, shared, non-unique object is a pointer; layout guaranteed for
`immut` and `unique` types; `mut` on parameters; `?` marks absence (`Node?`); copies written `a.Copy()`.

This is research: nothing in `compiler/` or `std/` changed. The experiments are in `docs/refs-study/`; the companion is
`docs/values-study.md`, whose programs and numbers are the baseline here.

## 0. Summary

- **Recommendation: do not make references the default** (section 8). Keep values by default, `&` written where a value
  is shared, and `immut` and `unique` as decided - which already give reference meaning where it pays (an `immut` copy
  is a share; a copy of a `unique` value is a reference).
- **What the measurements say.** In olang an object behind a pointer is cheap - no header, one bump allocation, never
  moved - so references by default cost nothing where data is built once and walked in the order it was made: the
  compiler slice with every struct an object is **-2.0%** instructions and **-11%** peak memory (a `Vec` of pointers
  grows by copying 8-byte words, not 24-byte tokens), the settle **-0.3%**. The cost lands where olang's data and AI
  work lives: small mutable records. Held as separate objects, a widget's rectangle and position cost **+16.6%**
  instructions and +10% memory; an array of 4M particles as pointers takes **2.0-2.4x** the memory always, level time
  while walked in allocation order, and **10-13x** the time once the order differs (after a sort, a shuffle, churn) -
  where the flat array's values move with their order.
- **Inference does not win that back safely.** Struct locals to the stack and immutability per type are decidable but
  either worth little (0.2% here) or not needed (the slice); flattening a mutable record into its holder (object and
  array inlining) is decidable only conservatively, whole-program, and gives a layout that changes with distant code -
  against C layout, files, separate compilation and `olang api`. Java's research on it (object and array inlining) never
  became HotSpot's answer; Valhalla made identity-freedom *declared* instead. The data case (records updated in place
  and copied, C's arrays of structs that C writes, FPGA state) needs a flat, mutable, copyable type: references by
  default bring back two kinds of type (C#'s class and struct) - which olang has now, chosen at each use by `&` rather
  than once per type.
- **Migration**: every by-value use of a mutable struct type flips from copy to share - ~2,150 written by-value struct
  positions in compiler/ (1,500 of them `Vec`/`Map`), ~350 in std, plus every copying `:=` and every `==` on a record
  (identity once records are objects).
- **Found on the way** (section 3.5): a parallel assignment of two `Vec` elements is refused (E31); an `immut`-style
  update (replace the whole element) costs +23% instructions and 1.8x the time of in-place field writes (branch-free
  codegen); structure-of-arrays beat flat structs 1.65x in time and 6.5x in instructions.

## 1. Method

The values study's method, unchanged: each experiment is a set of programs doing the same work with the same random
sequence and printing the same checksum, built `-target x86-64-v3` (valgrind cannot decode the native build's AVX-512),
`-O3` with LTO as by default:

```text
./build/olang build -target x86-64-v3 -output build/rs/NAME docs/refs-study/DIR/NAME.olang
/usr/bin/time -f "%e s %M KB" ./build/rs/NAME ARGS          # wall time (best of three), peak RSS
valgrind --tool=callgrind ./build/rs/NAME ARGS              # instructions (Ir)
```

The compiler is master bffe06a's (compiler/ and std/ last changed at 0f194c5, hybrid round 1), built by itself. The
values study's programs, re-measured with it, give its numbers to the instruction (compiler slice 1,311,989,147;
widget tree 876,881,821; settle 1,654,847,075), so its tables are the baseline. Callgrind counts instructions, not cache
misses: where the layout changes the memory traffic, wall time is the number (best of three on this noisy 4-core Xeon,
L2 2 MB per core, L3 260 MB shared).

**How today's olang expresses the sketch.** No layout inference is "every struct held by `&`": `Vec<Token&>` for a
token list, `Map<I64, Binding&>`, `box mut Rect&` for a nested record, `Vec<mut P&>` for particles, a local `r mut
Rand& = Rand(7)` for an object a function makes. What inference would flatten is today's value form, so the gap
between the two programs is what inference must win back. Payload-free enums (`Tok`, `Op`, `Kind`) stay flat in every
version: an enum with no fields has nothing to write and so no identity to keep; enums with payloads were objects in
the values study's reference programs already.

**What an olang object is.** A reference is a pointer to the value's storage in an arena: no header (no class word, no
lock word, no GC bits - Java's 12-16 bytes), no count, no move. A struct object is laid out exactly as the struct is
inline. That is why the sketch's costs here are smaller than Java's, and why they land on *nesting* (a field or element
that is a pointer rather than inline) and *order* (objects allocated in one order, walked in another).

## 2. The sketch, made precise

What "references by default" would mean, so the experiments test one thing:

| | today | references by default |
|---|---|---|
| `b := a` of a struct | a copy (elided where nothing could tell, D9h/D9i) | a second name for the object |
| a struct field or element | held inline, a copy stored | a pointer, unless the type is `immut`/`unique` or inference flattens it |
| a parameter `p T` | a value (the callee's copy) | the caller's object, read-only unless `mut` |
| `==` on records | structural | identity, unless the type declares `Eq` or is `immut` |
| absence | `T?&` | `T?` |
| a copy | implicit at a value place, `Copy()` the type's | written, `a.Copy()` |
| `immut T` | shared freely, flat (decided) | the same - the one guaranteed flat record |
| `unique T` | held where it lands, other uses references (decided) | the same - the guaranteed inline mutable record, never copied |
| arrays of numbers | values, elements flat | objects (`b := a` shares, as numpy's arrays), elements flat |

## 3. The experiments

### 3.1 The compiler slice: `refs-study/compiler/`

`allrefs.olang` is the values study's `compiler/refs.olang` with every struct an object: the 3.52M tokens
(`Vec<Token&>`, made by `scanref.olang`, the values study's scanner and generator with tokens and generator variables as
objects), a name's binding in the checker's scope map (`Map<I64, Binding&>`), the undo records, the parser, the checker
and the machine. The trees were objects already. `baseref.olang` is generation and scanning alone. N = 200,000
statements:

| | instructions | peak RSS | time |
|---|---:|---:|---:|
| base: generate + scan, tokens flat | 970.2M | 222 MB | 0.20 s |
| baseref: tokens as objects | 937.7M (-3.3%) | 182 MB (-18%) | 0.18 s |
| refs (values study): tokens, bindings, undo records flat | 1,312.0M | 348 MB | 0.36 s |
| allrefs: every struct an object | 1,286.1M (-2.0%) | 311 MB (-11%) | 0.34 s |

Above their bases the front ends are level (refs 341.8M, allrefs 348.4M: +1.9%, the extra load per token read and an
allocation per binding). The scanner is cheaper with objects because of how a `Vec` grows: `Vec<Token>` copies 24-byte
tokens at every doubling (its last buffer 2^22 x 24 bytes = 100 MB, beside the buffers it outgrew); `Vec<Token&>`
doubles 8-byte pointers (34 MB) while the 84 MB of token objects are bumped once and never move, so its doubling slack
and outgrown buffers are a third the size. A token list reserved to its size up front would turn this around (84 MB flat
against 84 + 28 MB), but nothing knows the count before scanning. **For data built once and walked in order, olang's
objects are as cheap as values.**

### 3.2 The widget tree: `refs-study/gui/`

The values study's `gui/refs.olang` is already the sketch's program: widgets are objects, `kids Vec<mut Widget&>`,
`parent mut Widget?&`; its measurements (values study 2.2) stand. A references-by-default olang would spell it without
the `&`s (section 7) and run it as it runs now. The question the sketch adds is a mutable record *inside* an object:
here a widget's rectangle in its parent and its absolute position, `box Rect` and `at Pt`, written in place by layout
(`w.at.x = ax + w.box.x`) and read by every hit test.

- `nested.olang` holds them inline (today's value fields) - what object inlining or a `unique` type would give. It
  runs exactly the instructions of `gui/refs.olang`, whose six numbers are plain fields (876,881,821).
- `nestedbox.olang` holds them as objects (`box mut Rect&`, `at mut Pt&`), `nestedref.olang` the generator `r` too.

100,000 widgets, 1,000,000 clicks:

| | instructions | peak RSS | time |
|---|---:|---:|---:|
| nested, no churn | 876.9M | 16.6 MB | 0.23 s |
| nestedbox, no churn | 1,022.2M (+16.6%) | 18.1 MB (+9%) | 0.21 s |
| nestedref, no churn | 1,024.2M (+16.8%) | 18.2 MB (+9.6%) | 0.23 s |
| nested, 20,000 churn rounds | 1,758.9M | 48.3 MB | 0.46 s |
| nestedref, 20,000 churn rounds | 2,052.1M (+16.7%) | 53.3 MB (+10%) | 0.49 s |

Two more loads per hit test (`w.at` then `.x`, `w.box` then `.w`) and two more allocations per widget; the generator as
an object adds 0.2%. The times are within the noise: the tree fits in the caches. With churn the memory grows
in both versions (the values study's QF: a detached widget's parent link is a second holder, so no let-go shows it
dead) - references by default would make that the common case, not the graph's (section 6.3).

### 3.3 The settle: `refs-study/settle/`

`allrefs.olang` is the values study's `settle/refs.olang` with the blocks, the circuit and the generator as objects too
(the regions were). 200 settles of 64 sweeps:

| | instructions | peak RSS | time |
|---|---:|---:|---:|
| refs (values study) | 1,654.8M | 2.0 MB | 0.14 s |
| allrefs | 1,649.5M (-0.3%) | 2.0 MB | 0.14 s |
| vals (values study) | 1,633.2M (-1.3%) | 2.2 MB | 0.14 s |

Level: the settle's state is arrays of numbers (flat in every model), its blocks three objects read once per sweep, its
weights fixed arrays shared by reference already.

### 3.4 Arrays of small mutable records: `refs-study/data/`

The case the sketch's sentence "only a mutable, shared, non-unique object is a pointer" decides: a record of four F32s
(`P(X, Y, Vx, Vy)`, 16 bytes) updated in place every step - particles, a neuron's state, an ECS component, a C
`struct pollfd`. Each program steps n particles under gravity with a bouncing floor:

- `flat.olang`: `Array<P>`, C's array of structs - what the sketch gives only for an `immut`/`unique` type or one
  inference finds unshared;
- `ptrs.olang`: `Vec<mut P&>`, each particle an object, made in the order the loop walks them (the best case);
- `shuffled.olang`: the same with the pointers shuffled once after the particles are made - the order a list of objects
  is in after a sort, a filter or churn (a flat array shuffled the same way stays sequential: its values move);
- `replace.olang` (and `replace2.olang`): `Array<P>` updated as an `immut` type must be - each step reads an element and
  stores a new particle over it;
- `soa.olang`: four arrays of F32, one per field (structure of arrays).

Instructions of the steps alone (1M particles, 10 steps, minus 0 steps), time of the steps alone (setup subtracted,
best of three), peak memory:

| | instructions per update | time, 4M x 100 steps | time, 20M x 5 steps | peak, 4M | peak, 20M |
|---|---:|---:|---:|---:|---:|
| flat | 13.0 | 0.38 s | 0.25 s | 64 MB | 314 MB |
| ptrs, allocation order | 13.5 (+3.8%) | 0.45 s (1.18x) | 0.26 s | 130 MB (2.0x) | 743 MB (2.4x) |
| shuffled | 13.5 (+3.8%) | 4.80 s (12.6x) | 2.54 s (10.2x) | 130 MB | 743 MB |
| replace (immut style) | 16.0 (+23%) | 0.68 s (1.8x) | 0.38 s | 64 MB | 314 MB |
| soa | 2.0 | 0.23 s (0.61x) | 0.11 s | 64 MB | 314 MB |

In allocation order the hardware prefetcher hides the pointers: the arena lays the objects out in the order they were
made, so `ptrs` walks memory almost as `flat` does. The memory is the price paid always: a pointer per 16-byte object
plus the `Vec`'s doubling (at 20M its buffer holds 2^25 pointers, 268 MB, beside what it outgrew, and the objects 320
MB). Once the walk's order and the allocation order part, every element is a cache miss - 10-13x, the same
instructions. This is Python's and Java's arrays of objects; it is why numpy exists.

### 3.5 Found on the way

1. **A parallel assignment of two `Vec` elements is refused**: `ps[i], ps[j] = ps[j], ps[i]` on a `Vec<mut P&>` gives
   E31 "this writes into a value a call gave back, a copy no one holds - store the whole element: x[i] = v" twice,
   though each target is a whole element; `ps[i] = ps[j]` alone is accepted (E31b's `SetAt`). The parallel form does not
   take E31b's path. `shuffled.olang` swaps through a local. A gap to fix (mine to queue, not a question).
2. **An `immut`-style update costs more than an in-place one**: replacing the whole element (`ps[i] = P(x, y, p.Vx,
   vy)`) is +23% instructions and 1.8x the time of writing its fields. Not the conditional (`replace2.olang`, an `if`
   and an `else`, gives the same 201.3M): the compiled loop computes both new particles and blends them branch-free,
   where the in-place loop keeps a well-predicted branch. Same layout, same memory; an optimization (mine), and one
   that matters if `immut` records in arrays become the way data code is written.
3. **Structure of arrays wins regardless of the question**: `soa.olang` vectorizes (2 instructions an update) where
   neither the flat nor the pointer array of structs does (the branch, the interleaved fields) - 1.65x faster than
   flat. For the data domain's hot loops, arrays of numbers are the layout in every model.
   Built since (2026-11-07, T7e): `Columns<P>` lays the same columns out from the record type -
   `refs-study/data/columns.olang` (the step as soa's loop over the columns, named by reference) measures 2.0
   instructions an update, as `soa.olang` does (flat 13.0; callgrind, `-target x86-64-v3`, 1M particles, 10 steps less
   0), the setup 45 against 42 instructions a particle (rows written through `c[i] = p`); `columnslanes.olang`, the step in lane
   operators and a mask, gives the same checksum and pays an array per lane statement (E39 fuses within one statement, not
   across them).

## 4. What inference would win back, and how decidable it is

| inference | flattens | decidable? | scope of the facts | measured gap it closes |
|---|---|---|---|---|
| struct locals to the stack (escape analysis, scalar replacement) | a local whose object never leaves its block | yes - the scope pass already knows each value's home | per function | 0.2% (the widget tree's generator) |
| immutability per type: no field of T is written after its constructor, nowhere is T compared by identity | every value of T: tokens, bindings, undo records | yes, trivially (a scan for stores) | whole program: one store anywhere, in any module, flips T's layout | none needed - the slice is cheaper with objects |
| object inlining of a field: every value stored into it is fresh, no reference to it lives across a store into it | nested records (`box`, `at`) | conservatively, with free.olang-style alias facts | whole program, per field | +16.6% instructions, +10% memory |
| array inlining of elements: no element reference outlives a store, swap, removal or growth of its slot, no slot given another slot's object | arrays of records | conservatively - M19g's stale-view check generalized; any `best := ps[k]` kept across a sort or a push defeats it | whole program, per container | 2-2.4x memory; 10-13x time once reordered |

The first two are cheap and safe; the last two are where the cost is. They are decidable only conservatively, and their
answer is a *layout*: `T.Size`, a field's offset, whether an array of T can be handed to C or written to a file as a
block. A layout that depends on whether some other module stores a shared object into the field makes `olang api`
unable to say what is stable, makes a module's object depend on every module that stores into its types (B3i's keys
grow), and turns a one-line edit far away into a 2x memory and 10x time change with no diagnostic. Java has been here:
HotSpot shipped escape analysis for locals (scalar replacement), while object and array inlining stayed research
(Dolby and Chien, PLDI 2000; Wimmer and Mössenböck, VEE 2007 and CGO 2008), and Valhalla's answer is the opposite of
inference - a class declared without identity (`value class`, JEP 401), and even then flattening is the VM's choice, not
a guarantee. The sketch's own guarantee, "layout guaranteed for immut and unique types", is that lesson: what must be
flat is written.

## 5. The data, AI and FPGA cases

What they need, and whether `immut` and `unique` cover it:

- **Arrays of numbers** (weights, activations, the settle's state, tensors): flat in every model; the settle's fixed
  weights are `Array<F32>` shared by reference today. Covered.
- **Read-mostly records** (complex numbers, colours, vectors, a key, a token, a GEMV's block description): `immut` -
  flat, copies are shares. Covered, at section 3.5's cost where they are updated by replacement (an optimization away).
- **Resources and single-owner state** (a file, a socket, a buffer owned by one structure): `unique`. Covered.
- **Records updated in place and also copied**: particles, neuron state as records, ECS components, double-buffered
  simulation state (`next[i] = cur[i]` then change it), a C `struct pollfd` array C writes `revents` into, a packet or
  file header filled field by field, a 4x4 transform inside a struct. Not `immut` (written in place); not `unique` (a
  unique type declares no Copy and an existing value is never stored by value elsewhere - `next[i] = cur[i]` is an error
  naming `&`; and a unique element is relocated by a sort or a growth, so references to elements go stale as views do).
  Under references by default these are either pointers (3.4: 2-2.4x memory, 10-13x time reordered) or a third kind: a
  **mutable flat type** - C#'s `struct`, Swift's `struct`: copied on assignment, laid out inline, mutable. That is
  today's olang struct.
- **The FPGA subset** (planned: fixed-width numbers, fixed arrays, no run-time allocation, no recursion, no function
  values): state registers and on-chip memories are flat by nature. Under references by default the subset could use
  only `immut` and `unique` types, or the flat kind - again the third kind. Today the subset's records are plain values.

So references by default need two kinds of type - objects, and values - as C# and Swift have, with their known trap:
modifying a copy of a record you meant to change (C#'s CS1612 on `list[i].X = 1` for a `List<struct>`, worked around
since C# 7 by `ref` returns). olang today has the same two representations without the second kind: the type is one, and
each use says whether it holds the value or shares it (`Vec<Token>` here, `Token&` there).

## 6. What changes in the language and compiler

### 6.1 Meaning and grammar

- `&`, `?&` and `fn&`/`fn?&` leave the type grammar; `T?` marks absence; `mut` stays on parameters and receivers. A
  read-only parameter must then be read-only *deeply* (`w.parent.clicks++` through a read-only `w` would otherwise
  write), or `mut` returns on fields to say which referents a holder may write - today's per-level permission (T25b)
  under another spelling.
- Assignment, by-value parameters, fields, elements and `:=` share for every mutable struct type; `Copy()` is written.
  `==` on mutable records becomes identity (as on references today), so a record compared by value needs `Eq` or
  `immut`; Map keys of record types hash by identity. Arrays become objects (`b := a` shares), so QCE's "a guarantee is
  declared by holding a value" (`Map<String, V>` owning its keys) holds only for `immut` element types - String is
  immut, so its case survives.
- `unique` keeps its meaning (one place, references elsewhere); `immut` keeps its. Generics read the same for every T -
  `x := xs[i]` always shares (an immut share is a copy no one can tell) - a real simplification over today's T-vs-`T&`
  duality.

### 6.2 Section 8 under shared-by-default

No rule is new - they are today's rules for `&` - but they cover every struct. Today a value lives in its holder's
storage and only references and the storage they view are placed; with objects every construction is placed (O18a,
item 17's "built where it is kept", QCR's O27-as-placement), every struct local is a reference local (O25, NLL), every
struct field a reference field (O20). The copy side shrinks: no implicit copies means QCE's store copies
(`MakeKind.Copy`), D9h's handover, D9i's moves and split values (O17) have nothing left to do. The scope pass's work
grows with the number of references it places (compile time), and more programs meet the placement rules that today
only `&` code meets.

### 6.3 Early freeing and counting

Today a value is its holder's own, so free.olang's sole-place proofs hold by construction for value fields and elements
(round 8's owners held in place). With sharing by default every `b := a`, every stored parameter and every element read
into a kept local is a second holder: the proofs need alias facts for every struct, and where they fail storage is kept
until its scope closes - the widget tree's 16.5 -> 48 -> 78 MB under churn (values study 2.2) would be the ordinary
case. QCR (2)'s counting
carve-out ("values the compiler finds with several holders that may outlive one another") would then apply to ordinary
records, not to graphs - the "bunch of memory overhead" the user ruled out.

### 6.4 Aliasing and LLVM

olang emits TBAA and no `noalias`, `readonly` or `nonnull` today (grep of compiler/). Values give LLVM unaliased stack
copies it scalar-replaces into registers; objects are pointers from the arena that may alias any other object of their
type (TBAA separates types only), so a struct local stays in memory unless the compiler gives it a stack slot (section
4's first row), and a loop over an array of objects can be neither vectorized nor guarded by run-time overlap checks
(an array's are one range compare; a pointer per element is not).

### 6.5 The evaluator, C, `any`, destructors, the build

- **The evaluator** copies values today; it would allocate and share objects instead - closer to how it treats
  references, no simpler. `interpret` (stage 1, nothing reclaimed before a scope closes) holds more.
- **C interop**: an object is C's struct (no header), so a pointer to one is C's `T*`. What breaks is nesting: a C
  struct with a struct field, and an array of structs C reads or writes (`struct pollfd fds[n]`, `struct iovec`), must
  be flat - the C import's record types become the flat kind by declaration.
- **`any`**: every record is an object already, so an `any` is its pointer and a table - simpler; an immut value boxed
  by a share.
- **Destructors**: with no implicit copies a destructor type needs `unique` only for when it runs, not for copy safety.
- **The build**: whole-program layout facts (section 4) make module objects depend on more modules; `olang api` and
  `T.Size` would change with inference.

### 6.6 The migration

Every program's meaning flips for mutable struct types - a migration as large as the values study's would have been.
Counted over compiler/ and std/ (written type positions only, comments, tests and the generated message table left
out):

| | compiler/ | std/ |
|---|---:|---:|
| struct types declared | 289 | 116 (43 generic) |
| written by-value struct positions (fields, parameters, results, type arguments) | ~2,150 (Vec 1,159, Map 342) | ~350 |
| written `&` struct positions (these lose their `&`) | ~3,900 | ~440 |

Each by-value position starts sharing unless its type becomes `immut`. Not counted: `:=` locals copying a record,
`==` between records, by-value stores into a collection. A tool could make the meaning-preserving part mechanical - the
compiler knows every place today's semantics needs a copy (where D9h/D9i cannot leave it out; `-memory` lists them), and
a written `.Copy()` there keeps each program's meaning - but the result is code full of `.Copy()` where today nothing is
written, until each site is rethought.

## 7. Python-likeness: gained and lost

Gained - object-graph code reads as Python, Java or C# classes read. The widget tree's click, references by default (a
sketch, not today's olang) beside today's:

```olang
# references by default                              # today
type Widget struct(kind Kind, parent Widget?) {      type Widget struct(kind Kind, parent mut Widget?&) {
    kind                                                 kind
    parent                                               parent
    kids Vec<Widget> = Vec<Widget>()                     kids Vec<mut Widget&> = Vec<mut Widget&>()
    clicks I64 = 0                                       clicks I64 = 0
}                                                    }

fn click(w mut Widget) I64 {                         fn click(w mut Widget&) I64 {
    depth := 0                                           depth := 0
    at Widget? = w                                       at mut Widget?& = w    # refused today (O25); NLL, decided,
    for at is not null {                                 for at is not null {   # makes it work
        if at.kind == Kind.Button {                          if at.kind == Kind.Button {
            at.clicks++                                          at.clicks++
            return depth                                         return depth
        }                                                    }
        if at.kind == Kind.Panel: at.clicks++                if at.kind == Kind.Panel: at.clicks++
        depth++                                              depth++
        at = at.parent                                       at = at.parent
    }                                                    }
    return depth                                         return depth
}                                                    }
```

The difference is the `&`s and nothing else: object-graph code is already written as Python writes it, less the markers.
A tree would be `Bin(op Op, a Expr, b Expr)`. Assignment means one thing for objects, as in the languages most data and
scripting programmers know; no accidental O(n) copy (today an optimization, D9h/D9i, not a guarantee); generic code
means the same for every T. About 12,300 `&` in compiler/ would go (values study 3.3).

Lost:

- **Copy-by-default safety.** `x := cfg; x.Port = 1` changes `cfg`; a function that keeps a record it was given shares
  it with its caller; Python's aliasing bugs (`[[0] * 3] * 3`, a mutable default) become olang's. Today a value is its
  holder's and only a written `&` shares.
- **Local reasoning about mutation.** `mut` on a parameter says the callee may write; nothing says whether another alias
  writes the same object during the call. Today a value parameter cannot change under the callee at all.
- **Race freedom of value data.** A task given a value has its own copy; given an object it shares it, and
  `-race` finds the rest at run time.
- **`==` on records** becomes identity until `Eq` or `immut` is written - a surprise for data code.
- **A performance model you can read.** Whether `Array<P>` is 64 MB or 130 MB, and a loop 0.4 s or 4.8 s, would depend
  on what inference concluded from the whole program, unless the programmer writes `immut`/`unique` - the two kinds
  again.

The `&` that today's code writes is the visible part of what references by default would make implicit: where two
holders share one value. After the scoping rework (QCB) it says only that.

## 8. Recommendation

**Do not make references the default.** The deciding numbers:

1. Where references by default cost nothing - data built once and walked in order - olang's header-free bump-allocated
   objects already cost nothing *today*: the compiler slice is -2.0% instructions and -11% memory with every struct an
   object, the settle -0.3%. There is no performance to gain by flipping, and no reason for code to avoid `&` for speed.
2. Where they cost, the cost is in the domain principle 2 and the data/AI work name first: mutable records nested in
   objects +16.6% instructions and +10% memory; arrays of small mutable records 2.0-2.4x memory always and 10-13x time
   once walked out of allocation order.
3. Winning that back needs object and array inlining - decidable only conservatively, whole-program, a layout that moves
   with distant code (what Java declined in favour of declared value classes) - or a declared flat mutable type, which
   is two kinds of type: today's olang with the default inverted and the choice moved from each use to each type.
4. The migration flips the meaning of ~2,500 written by-value struct positions in compiler/ and std plus every copying
   `:=` and record `==`, and gives up copy-by-default safety, local reasoning and race-free value data.

**What to take from the study** (none changes the language): `immut` and `unique` as decided are the reference-meaning
parts worth having; holding build-once data by reference is not slower in olang (std and the compiler need not avoid
`&` for speed, and a growing `Vec` of large records is lighter as `Vec<T&>` or reserved); three compiler items, mine to
queue - the parallel assignment of two `Vec` elements (3.5 item 1), whole-element replacement compiled as the in-place
update (3.5 item 2, before `immut` records in arrays become common), and stack slots for struct locals that do not
escape (optsurvey item 2's territory, 0.2% here, after the scoping work).

## 9. Questions for the user

1. **References by default**: not taken - values stay the default, `&` marks sharing, `immut` and `unique` as decided?
   Recommended: yes.
2. **If the `&` in object-graph code is the pain** (GUI trees, the compiler's trees): an opt-in declaration-site object
   kind on top of values - `type Widget object struct(...)` always held by reference, `&`/`?&` implied at every use,
   `?` for absence - or keep `&` at each use? Recommended: keep `&` - a second kind of type and two spellings of one
   thing, where today's use-site `&` lets one type be held flat in a list and shared elsewhere.
3. **Structure of arrays for data code** (3.5 item 3: 1.65x faster, 6.5x fewer instructions than flat records here): a
   std container built by reflection (`soa.Of<P>(n)`, `s.X[i]`, lane operators per field) now, or when oann's data code
   asks for it? Recommended: when a program needs it.

## References

Brian Goetz et al., Project Valhalla, "State of Valhalla" (2021-2024) and JEP 401, "Value Classes and Objects"; J.
Dolby, A. Chien, "An Automatic Object Inlining Optimization and Its Evaluation", PLDI 2000; C. Wimmer, H. Mössenböck,
"Automatic Feedback-Directed Object Inlining in the Java HotSpot Virtual Machine", VEE 2007, and "Automatic Array
Inlining in Java Virtual Machines", CGO 2008; C# language reference, structure types and compiler error CS1612, and
`ref` returns (C# 7.0); The Swift Programming Language, "Structures and Classes"; docs/values-study.md and its
references (mutable value semantics, regions, Perceus).

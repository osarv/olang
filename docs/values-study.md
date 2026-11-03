# The values study (2026-11-03)

Two questions the user asked, answered with code and measurements: **A** - could olang drop references (`&`) and make
every value its own, the compiler inferring representation (mutable value semantics: Hylo, Swift's structs)? **B** -
which additions to the memory model would make refused programs work or free memory earlier, at compile-time cost only?
This is research: nothing in `compiler/` or `std/` changed. The experiments are in `docs/values-study/`.

## 0. Summary

- **A: do not make values-only the language; take three of its parts into today's model** (section 5). Measured on
  three programs written both ways: values-only code is never faster in olang and sometimes much slower or larger - an
  index arena costs +17% to +25% instructions against the arena-allocated objects it replaces, keeping copies where
  views were kept costs 2.75x the instructions of the work, and the settle is level (-1.3%). What values-only buys -
  memory that stays flat under churn, no stale views, a smaller section 8 - comes in the widget tree only through a
  free list the program writes itself, which is manual memory management in index form. What a rewrite would cost: the
  compiler's ~4,000 stored references (35 structs holding writable context references, every tree) restructured, std's
  shared-state types (Mutex, channels, List) given an escape hatch, `any` and function values redefined.
- **What values-only teaches**: (1) in today's olang a value that owns parts is *copied* on an element read wherever the
  D9h optimization cannot prove the copy unobservable - the widget tree with its reads written plainly (`u.nodes[i].f`)
  ran 5.8 s and peaked at 1.3 GB where reading through `Ref` takes 0.23 s and 27 MB, and with churn ran out of memory at
  14 GB; (2) a last use is never a move - handing a local to a constructor at its last
  use copies it (+62% peak memory, twice the time: `findings/lastuse.olang`); (3) such copies made in a loop turn are not reclaimed by the
  turn (a bug, `findings/turncopy.olang`).
- **B, ranked** (section 6): move at last use; D9h judged by evaluation order (and the turncopy fix); reference locals
  typed per assignment (three refusals met in this study); in-place calls through an element's field
  (`x[i].f.M()`); exact freeing and in-place reuse for `unique` values; then stack placement and last-use freeing,
  measured first. Not recommended: promotion copies, generational references, explicit regions.
- **Reference counting** is worth asking about in exactly two places (section 4.11): owner trees with back-pointers that
  lose subtrees (GUI trees - the one measured case no compile-time technique frees), and `immut` values shared into
  long-lived structures. Neither is proposed now.
- Seven numbered questions close the document (section 7).

## 1. Method

Each experiment is a pair of programs doing the same work with the same random sequence and printing the same checksum:
`refs.olang` in today's style (objects held by reference, as `compiler/ast.olang` and std do), `vals.olang` with values
only - every structure owned by one variable, shared structure as indices into a `Vec`, the only `&` left being the lends
of parameters and receivers, which today's olang must spell (`p T&`, `p mut T&`) and a values-only olang would not (a
parameter lent read-only by default, `mut` lending it writably). Where today's olang forced a reference the files say so.

Built with the compiler at master f8bf123 (compiler/ and std/ last changed at abdcff1), `-target x86-64-v3` (valgrind
cannot decode the native build's AVX-512 code), `-O3` and LTO as by default:

```text
./build/olang build -target x86-64-v3 -output build/vstudy/NAME docs/values-study/DIR/NAME.olang
/usr/bin/time -f "%e s %M KB" ./build/vstudy/NAME ARGS          # wall time (best of three), peak RSS
valgrind --tool=callgrind ./build/vstudy/NAME ARGS              # instructions (Ir), the number compared
```

Wall times on this 4-core Xeon are noisy at this size and are given only where they differ by more than the noise.
"Code lines" leaves out comments and blank lines.

## 2. The experiments

### 2.1 A slice of the compiler: `docs/values-study/compiler/`

A front end for a small expression language (lets, prints, blocks with nested scopes, `if ... then ... else`, five
operators, two types), shaped as the compiler is: a generated program of N statements is scanned into tokens (spans,
interned names - `common.olang`, shared by both), parsed into a syntax tree, resolved and typed into a typed tree (names
to slots through a flat map with an undo log, as `compiler/names.olang` does; type errors counted), and run.

- `refs.olang` (212 code lines): both trees are recursive enums held by reference, `Bin(op Op, a Expr&, b Expr&)`, as
  `compiler/ast.olang` and `typed.olang` are; nodes are built once and never written.
- `vals.olang` (229 code lines, +8%): both trees are `Vec<Node>` of plain nodes, children as `I32` indices, a block's
  statements a run of a list (Zig's design). The parser and the checker own what they build.

At N = 200,000 statements (3.52M tokens; `base.olang` is the generator and scanner alone):

| | instructions | above base | peak RSS | above base |
|---|---:|---:|---:|---:|
| base (generate + scan) | 970.2M | | 222 MB | |
| refs | 1,312.0M | 341.8M | 348 MB | 126 MB |
| vals, Vecs growing | 1,384.1M | 413.9M (+21%) | 477 MB | 256 MB (2.0x) |
| vals, room reserved up front | 1,370.1M | 399.9M (+17%) | 334 MB | 113 MB (-11%) |

Per phase at N = 50,000 (callgrind, inclusive): parse 39.2M against 49.3M, resolve and type 35.3M against 41.7M, run 10.6M
against 12.7M - indices cost about a fifth more in every phase. olang's arena is the reason: a node held by reference is a
bump allocation that never moves, while a node in a `Vec` pays the push's capacity test, the copy of each doubling and an
index through the Vec's record on every read; in Rust or Zig, where the alternative to an index arena is `malloc` per
node, indices win, and in olang they do not. A Vec left to grow also keeps the buffers it outgrew until its scope closes,
which doubles the tree's memory; reserving room fixes that, when the size is known.

**Clearer with values**: nothing in a tree can be shared or changed by accident; a tree is flat data that could be
written to a file as it is; resolution to indices is what the compiler does already. **Worse**: positional fields
(`n.A`, `n.B`) replace the named payloads a match binds (`case Expr.Bin(op, a, b)`); every walk takes the tree as a
parameter beside the index; an index into the syntax tree used on the typed tree type-checks (both are `I32`); more
instructions, and memory unless sized ahead.

**What a values-only olang would really write here** is neither file: an immutable tree never shared is the case
mutable value semantics handles best - the recursive enum held by value, the compiler boxing the recursion (Swift's
`indirect enum`), building bottom-up by moves and matching by borrowed projections. Its layout and cost are `refs.olang`'s:
the arena node is already the box. So for trees values-only changes the spelling (no `&` on payloads), not the program,
until a subtree is shared (then a deep copy, or `immut`'s pointer share) or written after it is built.

### 2.2 A widget tree with parent links: `docs/values-study/gui/`

A GUI's retained tree: widgets (panels, buttons, labels) with positions in their parent, children in z-order and a
parent link; a layout pass (absolute positions, top down), clicks dispatched by hit-testing from the root to the deepest
widget under the point and bubbling up through parents (a button takes the click, a panel counts it and passes it on),
and churn - a random subtree detached and as many widgets grown elsewhere, so the live tree stays at 100,001 widgets, as
a long session does.

- `refs.olang` (128 code lines): `Widget` objects, `kids Vec<mut Widget&>`, `parent mut Widget?&`. **Refused**: the
  bubbling loop with a cursor, `at mut Widget?& = target` then `at = w.parent`, is O25 ("a reference never narrows");
  it is written as a recursion.
- `vals.olang` (161 code lines, +26%): `Vec<Node>` of plain nodes, `parent I32`, `kids Vec<I32>`, and a free list: a
  detached subtree's slots are released by the program (`release`) and reused by the next widgets. **Refused**:
  `u.nodes[p].kids.Push(c)` is E31b (a mutating call through an element's field), written `u.nodes.RefMut(p).kids...`.
  Every element access is `u.nodes.Ref(i)` / `RefMut(i)`: see 2.4 for what the plain `u.nodes[i].f` costs today.

100,000 widgets and 1,000,000 clicks; the third argument is the churn rounds:

| | instructions | peak RSS |
|---|---:|---:|
| refs, no churn | 876.9M | 16.5 MB |
| vals, no churn | 1,096.4M (+25%) | 27.5 MB (+67%) |
| refs, 20,000 rounds | 1,758.9M | 48.1 MB |
| vals, 20,000 rounds | 2,202.9M (+25%) | 31.7 MB (-34%) |
| refs, 80,000 rounds | | 78.3 MB |
| vals, 80,000 rounds | | 34.9 MB |

The reference version's memory grows with every detached subtree (QF): `olang build -memory` finds no place letting go -
a detached widget is held by its parent's `kids` and, as long as it has children, by each child's `parent`, so it is
never a sole holder's. The values version stays flat, but only because the program frees slots itself: the free list is
manual memory management in index form, and an index kept past `release` names whatever the slot holds next - a logic
error no rule catches, where a stale reference cannot exist today. Instructions: +25%, every step through an index.

**Clearer with values**: no cycle of references; the whole UI is one value that could be saved, diffed or rolled back.
**Worse**: the free list; every access through the collection; a "focused widget" or a hover target kept elsewhere is
an index that can go stale; event handlers that change the model must be given it (`u mut Ui&`) rather than reaching it
through their widget - which is the Elm architecture (survey3 A8) and fits values well, but is a GUI library's whole
design, not a local rewrite.

### 2.3 The settle: `docs/values-study/settle/`

A settling network's inner loop as `oann/docs/settling.md` 1.2 and 2.4 describe it: regions of 128, 64 and 16 neurons
(plus a 64-neuron input folded into a constant once per settle), three reciprocal blocks (a lateral 128x128 one, 64x128,
16x64); per sweep every total starts from its constant part, each block adds `W s_pre` into post and `W^T s_post` into
pre, every region relaxes (`d = total - v`, `v += dt d`, `s = tanh(v)`) and reports `max |d|`. 200 settles of 64 sweeps.

- `refs.olang` (92 code lines): `Region` objects holding their arrays; a `Block` holds references to its two regions and
  to its weights.
- `vals.olang` (97 code lines): the circuit owns everything; a block names its regions by index. **Forced by values**:
  a lateral block reads `s` of a region while writing `total` of the same region, which mutable value semantics allows
  only if the two are different values (the law of exclusivity: no writable lend beside a read of the same value) - so
  the region's state is split by role into collections of its own (`s`, `total`, `v` ...), a structure-of-arrays layout.

| | instructions | peak RSS |
|---|---:|---:|
| refs | 1,654.8M | 2.0 MB |
| vals | 1,633.2M (-1.3%) | 2.2 MB |

Level, as expected: the settle is already values and indices in spirit - fixed arrays, no sharing but the blocks naming
their regions; 86% of the instructions are the program's own loops (the GEMVs and the relax), 14% libm's `tanhf`
(not vectorized - settling.md section 3 item 6). Values
cost nothing here and gain nothing; the layout exclusivity forces is the one a vectorizing kernel wants anyway.

### 2.4 What the experiments found about today's olang

1. **Element reads copy owned parts where D9h cannot prove the copy unobservable.** `findings/gui_natural.olang` is the
   widget tree's `vals.olang` with its reads written plainly, `u.nodes[i].f`, as values-style code writes them. A read
   such as `for u.nodes[at].kids.Len() > 0 and r.roll(4) > 0: at = u.nodes[at].kids[r.roll(u.nodes[at].kids.Len())]`
   copies the whole `Node` - its `kids` Vec included - because a call (`r.roll`) shares the statement; `-memory` counts
   18 call sites copying (0 in `vals.olang`). Same checksums, against `vals.olang`'s 0.23 s and 27 MB: **5.8 s and
   1.3 GB** with no churn, **32 s and 9.0 GB** with 2,000 rounds, and 20,000 rounds killed at 14 GB. The call runs after
   the read has finished, so no view lives across it - D9h judges by statement, not by evaluation order.
2. **Those copies are not reclaimed per loop turn** (`findings/turncopy.olang`, a bug): a value local declared in a
   loop as a copy of an element of a `Vec` the same function holds keeps every turn's copy until the frame closes -
   1M turns of a 100-element copy peak at 517 MB. With the `Vec` a parameter, D9h leaves the copy out and the run stays
   at 2 MB.
3. **A last use is never a move** (`findings/lastuse.olang`). `t := mk(20000000)` then `p := P(t)` (a constructor
   keeping the Vec in a field) copies `t`: 682 MB, 0.39 s (best of three) and 206.5M instructions, against 420 MB,
   0.19 s and 183.3M for `P(mk(20000000))` - the copy is one memcpy, its cost the pages it touches.
4. **Reference locals refuse cursors.** Three refusals met: the widget tree's parent walk (O25 above); the generator in
   `compiler/common.olang`, `op := " < " if ... else " == "` then `op = String&[" + ", " - ", " * "][k]` (O25, a constant
   then an element of a literal); and the recorded `planAt String& = ""` then `planAt = args[k]` of compiler/tools'
   dump tools (the program's scope inferred from the constant).
5. **Keeping views is worth a lot** (`split/split.olang`): 4M words of text kept and hashed - as views of the text
   (`Vec<String&>`) the work costs 456M instructions above building the text and 95 MB; as spans (start, end) into it
   635M (+39%) and 95 MB; as copies of their own (`Vec<String>`, what a language without stored views keeps) 1,254M
   (2.75x) and 130 MB (+37%), for six-character words - larger pieces double the text.

## 3. What values-only would change (A)

### 3.1 The meaning

The representation of a value can be inferred; its meaning cannot. After `b := a` and `b.x = 1`, whether `a.x` changed
is observable, so one meaning must hold for every value. Mutable value semantics (Racordon et al., "Implementation
strategies for mutable value semantics", JOT 2022; Hylo, formerly Val; Swift's structs) picks values: every variable owns
its value, no two variables share mutable state, and

- parameters have **conventions**: lent read-only (`let`, the default), lent writably and exclusively (`inout`, olang's
  `mut`), consumed (`sink`), initialized (`set`);
- the **law of exclusivity**: while a value is lent writably nothing else may read or write it - checked statically
  (Hylo; Swift for locals, dynamically for class properties and globals);
- **projections** replace references: a subscript or a field lends a part for the duration of one access, and a
  projection is second-class - never stored, never returned past the access (Hylo's subscripts; Swift's `_read`/
  `_modify` accessors);
- copies are explicit in Hylo (`x.copy()`) and implicit in Swift, whose collections make them cheap by copy-on-write -
  a reference count per buffer, which olang's principle 1 excludes;
- shared mutable structure (graphs, back-pointers, observers) is indices into a collection, or an escape hatch: Swift's
  classes (reference counted), Hylo's unsafe pointers.

### 3.2 What olang would change

- **Grammar.** `&` leaves every type; `mut` comes back on parameters and receivers as the writable lend (`fn
  (c mut Checker) Expr(...)`); `?&` (nullable references) has no subject left - absence becomes an optional value, which
  QAZ declined for values ("values are just not worth it"), or an index sentinel; `any Trait&` becomes an owned
  existential (a boxed value, copied by its table's Copy); `fn&`/`fn?&` become closure values capturing by copy (a
  writable capture only in a closure that cannot escape); recursive enums are boxed by the compiler.
- **Section 8.** Scope tags, obligations (O10b-O10d), lending and split values (O17-O17b), derived and unknown scopes
  (O12, O23), no-narrowing (O25), result scopes (O13, O14, O26) and the no-extension rule's views (O27) all go: nothing
  stored can dangle when nothing stored is a reference. What remains: placement (the same escape analysis, now over
  owned values only), the projection rule (a projection does not outlive its access - lexical, simple), and the new law
  of exclusivity. M19g (stale Vec views) is subsumed by exclusivity. About 160 of `checks/cases`' section-8 refusals
  (O17 28, E11c/O12 35, C2d 15, O10c 10, O20 8, O27 8, T22a 9, P2/D16 17 ...) would become accepted programs, exclusivity
  errors or projection errors; the 37 M19g cases become exclusivity errors.
- **The passes.** `scope.olang` (9,643 lines), `free.olang` (4,261) and `views.olang` (1,778) - 16% of compiler/ -
  would shrink to placement, drops and an exclusivity check: with no aliasing every place is its value's sole holder, so
  early freeing becomes exact and total (a value's storage released when its owner is overwritten, removed or ends -
  Rust's drop, Hylo's deinit), and free.olang's alias analysis has nothing left to prove. The checker loses permissions
  (T25), E12's value/reference conversions and nullable references, and gains conventions, projections and
  exclusivity; lowering gains move and drop insertion; the evaluator and `interpret` get simpler (they copy already).
- **Concurrency gains.** Static race freedom for fan-out: disjoint writable projections (`a.Chunks(n)`) handed to tasks
  are exclusive by the law, so P3/P5, withdrawn for want of an ownership discipline, become checkable.
- **What has no form.** Shared mutable state between tasks - `std/sync`'s `Mutex<T>`, `std/chan`, `std/cancel`, atomics
  on a shared counter - is shared by definition and needs a reference type back (Swift's actors and classes); `std/list`'s
  `List` is a handle; C's extern types (`Db&`) and the user-data pointer of a callback (X13) are references C owns. A
  values-only olang keeps a reference kind for these anyway.
- **Generators.** A generator copying its input works unchanged; one yielding views of its input (D18c, `Iterator<String&>`)
  holds a projection across its walk and becomes second-class (walked only where it is made - D18e's case).
- **Destructors and `unique`** fit directly: a unique value is a non-copyable value with one owner.

### 3.3 The migration

Counted over compiler/ (105k lines) and std/ (18.8k lines), comments left out:

| | compiler/ | std/ |
|---|---:|---:|
| `&` in all | 12,301 | 1,564 |
| lends - receivers (`mut` / read-only) | 3,500 / 401 | 252 / 237 |
| lends - parameters in signatures (approx.) | ~4,300 | ~440 |
| results `T&` | ~665 | ~110 |
| struct fields holding a reference | 686 in 333 structs | 128 in 135 |
| ... of them writable (`mut T&`), in how many structs | 126 in 35 | 52 in 28 |
| element type arguments `<T&>` | ~1,370 | ~98 |
| enum payloads holding a reference | 193 | 4 |
| nullable `?&` | 587 | 5 |

The lends (~8,200 in compiler/) are a spelling change a tool can make - but not a pure one: today a `p T&` parameter
may be stored by its callee, and under values a lend cannot be, so every function keeping what it is given changes. The
~4,000 stored references are the redesign: trees (cheap if never shared - 2.1), the 35 structs holding writable context
references (`Resolver`'s `L mut load.Loader&`, the checker's context) rewritten to own their context or take it as a
writable parameter at every call, `?&` absence rewritten, std's shared-state types given the escape hatch, and the 25k
lines of tests and 1,600 checks cases migrated or retired. Larger than the scoping rework (which inferred what `&`
already meant): this changes what assignment and parameter passing mean.

## 4. Additions to the memory model at compile-time cost (B)

The base is SPEC section 8 as it stands: scopes inferred, nothing written, a block a scope, early freeing (O8d) where a
sole place lets go. For each technique: what it would make work or free earlier, its compile-time cost, how it composes
with the scope model, early freeing (`free.olang`), the evaluator and `interpret`, and a verdict.

### 4.1 Move at last use (Rust's moves, Hylo's `sink`, inferred)

A local, a parameter or a temporary handed by value - an argument, a field store, an element store, a `return` - at its
last use is moved, not copied: its storage becomes the destination's, and `Copy()` is not called. Today every such
store copies a value owning parts (QCE's store copy, QCK's by-value argument): 2.4 item 3 measured twice the time and
+62% memory. Cost: liveness per function (the checker's definite-initialisation walk already orders uses). Composes: the
copy design decided today already lets the compiler leave out a `Copy` where nothing could tell; a moved-from local is
never read again, so nothing can. The move is a placement decision the scope pass makes (the source's storage must be
where the destination needs it - else a copy stays); early freeing gains a "made for" place; the evaluator may keep
copying (unobservable). **Build** - with the copy batch.

### 4.2 Copies judged by evaluation order (D9h's precision), and the turncopy fix

D9h leaves out a copy of an owning value only where no call in the same statement could write the source. A read whose
result is consumed before the next call starts (`r.roll(u.nodes[at].kids.Len())`: `Len()` returns before `roll` runs)
needs no copy whatever the statement holds - the question is whether a view lives across a call, which the evaluation
order answers. Compile-time only (an order walk over the statement's tree). With it, element reads become what a
values-only language calls projections, which is what the decided Copy design needs to be cheap in natural code.
Composes with everything (it removes copies D9h already proves needless one way or another). Fix turncopy at the same
time (a copy made in a turn reclaimed by the turn, O2). **Build** - before the copy batch makes copies more common.

### 4.3 Reference locals typed per assignment (NLL's liveness)

A reference local's scope is today the one it is declared with (O25a): every later assignment must fit it exactly. Rust's
non-lexical lifetimes ask instead where the reference is live. In olang terms: give each assignment of a reference local
its own version (SSA), each with its own exact scope, and check every use against the version that reaches it; at a
join the versions meet (the shortest; building into a met version stays O12's "not known here"). This accepts the three
refusals of 2.4 item 4 (cursors and a constant replaced by a view) and makes compiler/tools' dump tools build again. Cost:
SSA renaming of reference locals, the walk the narrowing pass (`pushFacts`) already makes. Composes: each version is an
ordinary local to section 8, so obligations and placement are unchanged; free.olang sees more, shorter-lived locals;
the evaluator does not see scopes. Sound by construction (a version is a local). **Build** - it is the decided fix of the
reference-local over-rejection, done in its general form.

### 4.4 In-place calls through an element's field, arguments first (two-phase)

E31b makes a mutating call on `x[i]` in place through `RefMut` when the call's other arguments are plain values. The
widget tree met its neighbour: `u.nodes[p].kids.Push(c)` - a call on a field of the element - is refused. Rust's
two-phase borrows evaluate the arguments before the writable lend is taken; olang can do the same for a field path
`x[i].f.g.M(args)`: arguments into temporaries, then `RefMut(i)` and the field path, then the call. Compile-time only,
the existing E31b machinery extended to paths. **Build** (small).

### 4.5 `unique` as the ownership spine: exact early freeing, and drop at let-go

`unique` (decided 2026-11-03) makes "one place holds this value" structural: the value is held by value where its fresh
value lands, every other use is a reference. Early freeing today must prove a place sole by whole-program alias facts per
declaration (memory.md 2.6); for a unique value the place is sole by rule, and only stored references to it need ruling
out (they are typed `T&` of a unique `T`: a type-based fact). So a unique value removed from its collection and landing
nowhere can be freed at once - including the values with destructors QF lists as "freed only where a `Destroy()` ends
them" - *if* its destructor may run there. Running it at the let-go is Rust's drop at the end of the statement and
Mojo's ASAP destruction; olang's O15 runs destructors at the scope's close. That timing is a language decision (question
3). Cost: compile-time; composes with free.olang (its candidate places gain the unique ones for free); the evaluator
already runs destructors where they run. **Build** the memory half with `unique`; the destructor half on the user's word.

### 4.6 Reuse in place (Perceus's reuse analysis, Koka's FBIP, without the count)

Where a function takes a value it is the last holder of (a sink: 4.1) and matches it apart while building a value of the
same size (`insert(t, x)` rebuilding a tree's path; an interpreter's step replacing its state), the old cell's storage is
reused for the new - no allocation and nothing left behind, so a functional update loop runs in constant memory.
Perceus decides "last holder" by a reference count at run time; olang can decide it statically for `unique` values and
for free.olang's made-for places, and only there. Cost: a reuse pairing per function body (match arms against
constructions of the same size class). Composes: an arena cell overwritten in place is exactly what a region release
plus a bump would give, without either; the evaluator need not reuse. This is survey3's A6.1 (QBP 12: "if it saves
performance", after the scoping rework). **Build after 4.1 and 4.5**, benchmark first (a red-black tree insert loop, an AST rewrite pass).

### 4.7 Escape analysis to the stack (Go, Tofte-Talpin's finite regions)

A value whose storage is bounded (a struct, a fixed array, a small text) and does not leave its block is given a stack
slot instead of an arena allocation, so LLVM can keep it in registers (SROA) - the arena bump is cheap but opaque to the
optimizer. Already done for text copied from a literal (optsurvey item 9); plan.md parks the general case "needs a
benchmark first". It frees nothing earlier and accepts nothing new; it is speed. Cost: the scope pass already knows each
value's home; a size bound per type. **Build** as an optimization (mine to decide), measured on bench.

### 4.8 Last-use freeing of large values (ASAP for memory)

Free a block-local value's storage at its last use rather than at the block's close, where it is a sole place's and no
view of it lives on - free.olang's let-go with "last use" as one more trigger, destructors untouched (O15). Gains where a
phase's data dies long before its block ends (the compiler's tokens after parsing). Measured on the compiler slice it
gained little: closing the text and tokens before checking (by hand, with a block) moved the peak 347 -> 341 MB, because
the peak sits in scanning, not checking. Cost: liveness, plus a region per such value at run time (a few instructions per
value, as free.olang's regions). **Measure first** on the compiler's own build (peak 2.37 GB) before building.

### 4.9 Region inference refinements (Tofte-Talpin, the ML Kit)

olang's inference is already region inference with the ML Kit's discipline (regions as hidden parameters, a least
solution, fixed points over recursive components). The ML Kit's refinements and where olang stands:

- *Storage modes* (`attop`/`atbot` - reset a region before storing a value that replaces everything in it): what
  free.olang's owner locals and owner places do (round 8: 620 MB -> 1.6 MB for a Vec local replaced per turn); left:
  a struct local holding references rebuilt from itself each turn - double-buffered regions would free the old one after
  the new is built. Small; **after 4.5**, where unique makes "built only for it" a type fact.
- *Multiplicity inference* (finite regions on the stack): 4.7.
- *Polymorphic recursion* (region parameters of a recursive function solved by iteration): olang falls back to a
  function's signature inside a cycle of calls still being checked (SPEC O26a). No refusal met in this study traced to
  it. **Not now.**

### 4.10 Not recommended

- **Arena per loop turn with promotion** (copy what turns out to be kept into the outer region when it is kept): the
  copy is hidden - against the user's rule that a value kept longer is built where it is kept, and that a view of turn
  storage kept longer is an error naming `.Clone()`/`$x`. The static form - build the whole value where it is kept - is
  decided already (item 17, not built) and covers what promotion would.
- **Vale's generational references** (a generation per object, checked at every dereference): a cost per operation the
  code does not show (principle 2). Generational *indices* are fine as a library: a std slot map whose `try s.Get(id)`
  fails with `Stale` - the check written at the use, as `try a.Get(i)` is - is the safe form of 2.2's free list (question 5).
- **Cyclone's explicit and dynamic regions** (`region r { }`, region handles): manual scopes, which the user made
  impossible (QCB). Cyclone's unique pointers are `unique` (4.5).
- **Rust's full borrow checker** (exclusive `&mut`): what values-only would bring (section 3); NLL's liveness (4.3) and
  two-phase borrows (4.4) are the parts that pay without it. Polonius-style location sensitivity met no refusal here.

### 4.11 Where reference counting would really be worth it

Two places, neither proposed - named because the user asked:

1. **Owner trees with back-pointers that lose subtrees** - GUI trees, scene graphs, a document model, doubly linked
   lists. Measured (2.2): with parent links every widget has two holders, so no compile-time analysis can show a detached
   subtree dead, and a session's memory grows with every detach (16.5 -> 48 -> 78 MB). The alternatives are the program's
   own free list (2.2, manual) or a slot map (4.10). Counting only the *owning* references (children) and making the
   parent link non-owning would free a subtree exactly at its detach, at one increment and decrement per owning store -
   the code would show it in the type (`parent weak Widget?&`-like). Rust's `Rc`/`Weak` and Swift's `weak` are this.
2. **`immut` values shared into long-lived structures.** An immut copy is a pointer share (decided); a share defeats
   early freeing (the place is no sole holder), so a long-running map whose immut values are replaced keeps them all
   until its scope closes. Immut values cannot form cycles (built bottom-up, never written), so counting them is exact
   and complete (Perceus, Lean). The cheaper answer first: copy an immut value into a long-lived place where it lands
   (the Map already copies its String keys at a new Put), share only within a scope.

## 5. Recommendation on A

**Do not make values-only the language.** The numbers: index-based structures cost +17% (compiler slice) to +25% (widget
tree) instructions in olang, whose arena makes an object held by reference as cheap as it can be; the trees that matter
(the compiler's, std/json's) would keep their layout as boxed values and gain only a spelling; shared mutable structure
moves to indices and free lists the program manages - manual memory management in a new form, and stale indices no rule
catches; text kept as copies instead of views costs 2.75x; the settle, the main experiment's loop, is level. The rewrite
reaches ~4,000 stored references in compiler/ and every shared-state type in std, and `Mutex`, channels, C handles and
`any` would need a reference kind back anyway.

**Take three of its parts into today's model** (a hybrid):

1. **Reads are projections.** An element or field read never copies: `x[i].f`, `x[i].Len()` read in place, a copy made
   only where a value place keeps the value - judged by evaluation order (4.2), so natural values-style code costs what
   values-only would. This is what makes the decided Copy design safe to use.
2. **Moves at last use** (4.1): a value handed on at its last use is moved, never copied.
3. **`unique` as ownership** (4.5, 4.6): unique values freed exactly when their one place lets go, reused in place by
   functional updates - values-only's memory behaviour where the program asks for it, references everywhere else.

And keep `&` for what it means today: sharing, back-pointers, views of storage the caller owns. A later option, if
races become the problem: exclusivity checked for task arguments only (static race freedom for fan-out), not for the
whole language.

## 6. B, ranked

| # | addition | makes work / frees earlier | compile-time cost | gain measured |
|---|---|---|---|---|
| 1 | move at last use (4.1) | no copy of an owning value handed on at its last use | liveness per body | -38% peak, half the time on a 20M Vec |
| 2 | copies judged by evaluation order + the turncopy fix (4.2) | no copy for reads consumed before a call; turn copies reclaimed | an order walk per statement | 5.8 s / 1.3 GB -> 0.23 s / 27 MB (by hand, with `Ref`) |
| 3 | reference locals typed per assignment (4.3) | cursors, a constant replaced by a view; the dump tools build | SSA of reference locals | 3 refusals in this study |
| 4 | in-place calls through an element's field (4.4) | `x[i].f.M(args)` | E31b over field paths | 1 refusal in this study |
| 5 | unique: exact freeing at let-go (4.5) | QF for unique values; destructors' values (with question 3) | a type-based fact | not measured |
| 6 | reuse in place for unique and made-for values (4.6) | functional updates in constant memory | a reuse pairing per body | benchmark first |
| 7 | stack placement of bounded non-escaping values (4.7) | speed, not memory | a size bound per type | benchmark first |
| 8 | last-use freeing of large values (4.8) | phase data freed before its block ends | liveness + a region per value | 347 -> 341 MB here; measure the self-build |
| 9 | double-buffered regions for self-rebuilt locals (4.9) | a local rebuilt from itself each turn | after 5 | none met |

## 7. Questions

1. **A**: drop the values-only rewrite and take the hybrid of section 5 (reads as projections, moves at last use,
   `unique` as ownership), keeping `&` for sharing? Recommended: yes.
2. **Reads as projections** (5, item 1) changes a cost, not a meaning - every read today is a copy by meaning that D9h may
   leave out; it would become a read in place by rule, a copy only where a value place keeps it. Take it as the rule
   (SPEC) rather than as D9h's best effort? Recommended: yes.
3. **Destructor timing for `unique`**: a unique value that leaves its one place and lands nowhere - run its destructor
   right there (Rust, Mojo) or keep O15 (at its scope's close, freed early only by `x.Destroy()`)? The first frees QF's
   resource-holding values with nothing written; the second keeps today's guarantee of when a destructor runs.
   Recommended: right there, for unique values only.
4. **Reference counting for owner trees with back-pointers** (4.11 item 1): worth a design note (counting only owning
   references, the parent link non-owning and shown in the type), or keep such trees on slot maps and Elm-style models?
   Recommended: no counting now; revisit when a GUI library is written.
5. **A std slot map** (generational indices, `try s.Get(id)` failing with `Stale`) as the endorsed structure for graphs
   that lose nodes? Recommended: yes, when the first program needs one.
6. **`immut` values in long-lived places** (4.11 item 2): copy where a long-lived place keeps one (as the Map's keys),
   share only within a scope? Recommended: yes; counting only if a measured program needs it.
7. The two bugs found (2.4 items 1-2: D9h's statement-level judgment, and turn copies not reclaimed) and the last-use
   copy (item 3): fix them before the copy batch (4.1, 4.2)? Recommended: yes, first.

## References

Racordon, Shabalin, Zheng, Abrahams, Saeta, "Implementation strategies for mutable value semantics", JOT 21(2), 2022
(Hylo); Tofte, Talpin, "Region-based memory management", Information and Computation 132, 1997; Birkedal, Tofte,
Vejlstrup, "From region inference to von Neumann machines via region representation inference", POPL 1996 (storage
modes); Reinking, Xie, de Moura, Leijen, "Perceus: garbage free reference counting with reuse", PLDI 2021 (and Koka's
FBIP); Proust, "ASAP: As Static As Possible memory management", Cambridge TR-908, 2017; Grossman et al., "Region-based
memory management in Cyclone", PLDI 2002; Matsakis, RFC 2094 "Non-lexical lifetimes" (2017) and two-phase borrows (RFC
2025); Vale's generational references (vale.dev); Mojo's ASAP destruction (the Mojo manual, "Death of a value").

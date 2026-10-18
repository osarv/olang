# Owned references: `own`, `take`, loans - design and implementation plan

Status: designed 2026-10-10; a first cut (section 11) built the same day. The normative rules are in `SPEC.md`: §8.8 (O30-O42), T25e, E34, and
the rules marked *(§8.8, not yet implemented)* - L9, T2, T8, E1, E31b, S3, C11, M19d (own elements, `TakeAt`,
`SwapTake`, `Map.Take`, `Vec`), K1, K2. This note is the plan for building them in the C compiler (`bootstrap/`) before
the port starts, and the record of the details decided on the way. Read it with §8.8 open.

## 1. What was asked

The user's design (ledger QG, QH, QI and the 18:20 CEST decision of 2026-10-10):

1. `own` is a reference modifier written like `mut` (`conns Map<I64, own Conn&>`, `current own mut Conn&`,
   `List<own Msg&>`). An object built into an own slot lives in its own small allocation, holding the object and what it
   builds into itself. It is Rust's `Box`, except that its region holds what it builds, and only freeing is checked.
2. No `free` keyword. An object is freed when its owner lets go: removed from its container, its slot set to `null`,
   its slot overwritten, its owning local reaching the end of its block unless moved on, at the latest when the
   container's scope closes.
3. `take` moves, leaving the source null, and is needed only where the source place would still hold the object. A
   call's result never needs it, nor `return c` of a local. `Map.Take(k)` and `List.TakeAt(i)` remove and hand out.
   Generic containers are made move-aware once, with `take`, which is a plain copy for element types that are not
   owned.
4. A reference read out of an owned object is a borrow. Its scope outlives nothing, and a free that may happen while a
   borrow is in use is refused - liveness-checked (non-lexical, from where it is taken to its last use), at compile
   time only. This covers locals, calls (a fact read off bodies, a fixed point like O17's), loops (a for-in over owned
   elements borrows for the body), and tasks (nothing a task may be using is freed before the join). Frees from other
   threads outside these rules are data races (P8b).
5. `Vec<T>` follows as library code - its buffer an owned array, growth making the next buffer, copying, releasing
   the old - and is the default growable array; `List` stays where it earns its place.

## 2. The design on one page

```olang
type Server struct() {
    conns Map<I64, own mut Conn&>
}

type Conn struct(fd I64, s mut Server&) {
    fd
    srv mut Server&s = s          # where s lives: outside the Conn's region
    pending StringBuilder         # built in the Conn's region, released with it
}

fn (s mut Server&) Accept(fd I64) {
    s.conns.Put(fd, Conn(fd, s))  # the Conn is built in a region of its own
}

fn (s mut Server&) Handle(fd I64, data String&) ? {
    c := try s.conns.Get(fd)      # a borrow of the Conn: a loan, live until c's last use
    c.pending.Push(data)          # built in c's region
}

fn (s mut Server&) Close(fd I64) {
    s.conns.Remove(fd)            # the Conn's region closes now: its StringBuilder and destructor go with it
}
```

The one new check, at compile time only:

```olang
c := try s.conns.Get(fd)
s.conns.Remove(other)             # error[O39]: may release a Conn while the borrow 'c' (line 1) is used (line 3)
c.pending.Push(x)
```

A queue of messages, and moving:

```olang
q List<own Msg&>
q.Push(Msg(7))                    # Push takes an owner: a value made here is one
m := try q.Pop() catch { break }  # m owns the Msg now; released at the end of its block unless moved on
handled.Push(m)                   # m is not read again: moved without 'take'
first := take inbox.head          # a field still holds what it owns unless it is taken
```

A `Vec`, where the check is what makes a contiguous growable array safe:

```olang
a := Vec<F32>()
b := Vec<F32>()
x := a.View()                     # a loan on a's buffer
for v in x { b.Push(v * 2.0) }    # fine: b's buffer is not a's (O39's roots)
a.Push(1.0)                       # error[O39] while x is still used after this line: Push may release a's buffer
```

## 3. Decisions

The user's decisions above are not repeated. These are the details decided here, each with its reason.

1. **Grammar.** `type-expr ::= [ "own" ] [ "mut" ] ( ... )`: `own` before `mut`, matching how the permission
   follows ownership in speech ("an owned, writable connection"). `own` is valid only before a reference type (a
   struct, enum or array type with `&`, or `T&` on a type variable, G11a). It may be written on fields, elements and
   type arguments, locals, parameters, results and globals. It is an error on a receiver (a method is called on a
   borrow), in a function type (a callback is lent its argument), in an enum payload (an enum value is copied freely
   and nothing could take a payload out), in `extern` declarations, before a non-reference, and with a scope marker
   (`own Conn&x`: an own reference's scope is its region). `take` is a prefix operator on a postfix place (E1).
2. **What reading gives.** Reading an own slot anywhere but in a move position gives a **borrow**: the same type
   without `own`, in the object's region. Reading a slot of another owning type (a struct holding an own field by
   value, `Vec`) gives a **borrowed copy**: the same type, owning nothing. This is why owning value types need not be
   reference-only as destructor-bearing types are (C11): C11 exists because a by-value copy is invisible to §8, and a
   borrowed copy is a loan §8.8 tracks. Without it `Vec` could not be a value, and `MapEntry<K, own V&>` (what a walk
   over a `Map` of owners hands out) could not exist.
3. **Ownership is deep.** A borrow read through a read-only path is read-only whatever the own type's permission,
   since an owned object is part of its owner (as Rust's `&Box<T>` gives `&T`). T25b's shallow rule stays for plain
   references. A borrowed result is as read-only as a copy out of the same place would be (T25c), so it follows the
   argument through a generic's read-only receiver: `try s.conns.Get(fd)` on a writable `s` gives a writable borrow,
   on a read-only one a read-only borrow.
4. **Moves.** A move position is where an owner goes: a slot's initializer or assignment, an owning argument, an owned
   result, a spawn target, an array literal's element of an owning type, a `catch default` of an owned result, and
   each value of a conditional or match in one. A value made there is built in a new region; an owner local or owning
   parameter is moved when nothing reads it again (liveness), else `take` is required; a field, element, global or a
   part of a borrowed copy always needs `take`. `x := e` declares an owner only from an owner (a value made there, an
   owned result, `take`); from a slot it borrows. So `c := s.cur` never moves silently.
5. **`take`.** It leaves the place holding its type's zero value: `null` for an own reference; for a value of an
   owning type its zero value (D13c), so a type with no zero value cannot be taken from. On a type variable bound to a
   type that is not owning, it is a copy and leaves the place alone (the user's rule). `take x[i]` on a type declaring
   `At` is an error naming the type's method (`TakeAt`), since an element of such a type is not a place. `take` as a
   statement releases what it takes: it is the generic way to let go of a slot of type `T` (`null` cannot be written
   to a `T`), which the prelude's `Remove` and `Clear` need.
6. **Regions and reach.** A region is a scope that is outlived by the reach of the slot holding its object and by
   everything outliving that, and that outlives nothing but itself. A slot's reach is where its storage lives, and a
   slot inside a region takes the region's reach - so an object owned by another may be moved out of it. An owner's
   reach is the shortest scope its outward references live in; moving it requires that reach to outlive the
   destination slot's. Consequences, all of them wanted:
   - a borrow stays in locals, calls and its own region;
   - distinct owned objects never refer to one another except by owning, so owners form trees;
   - an object cannot be moved into itself: reaching the slot borrows it, so the move is O39's error;
   - an object in an own slot cannot hold a reference into its owner's region (no back-pointer into the parent).
     References within one region are free, so a graph is one owned object holding plain references, not owned nodes
     pointing at each other.
7. **Each read is a region of its own** to the scope check, since the checker cannot tell two reads apart. A local
   given borrows of different reads (`best = c` in a walk) holds them where it is not known (O12): readable, never
   built into. A typed reference local given only `null` and borrows of one read takes that read's region. Sharing one
   scope per container was considered and rejected: it would let `y.peer = x` store one element's borrow into
   another element's region.
8. **Building into a region** needs the region's header at run time. It is known for a borrow of the object itself
   (from its slot, or a borrowed result that is the object), and for references this function read out of such a
   borrow. A borrow of a part of an object handed back by a callee lives where it is not known: it can be read and
   walked, not built into. This costs one hidden word per owned object (decision 15), and nothing per borrow.
9. **Release points** (O35): a slot assigned, or assigned `null`; a collection removing; an owner local or owning
   parameter leaving its block by any way (after deferred code and the join, in O15's order, and on test unwinding);
   an owner nobody receives, at the end of its statement; the scope holding the slot closing (the instance's destructor
   first, then its fields' owners in reverse declaration order, an array's elements last to first); never for globals.
   A released slot always holds `null` or a new owner. That invariant is what keeps a stale walk (a `ListIter` after
   a `Clear`) from ever reading a released object: it reads `null`, which traps (T2b).
10. **Owning and borrowing parameters, owned and borrowed results** are read off bodies, except where `own` is
    written. This uses the pattern T25c and D9b already use, and is what lets one generic `List<T>` serve `T = own
    Msg&`: `Push`'s parameter owns because `Push` stores it, `Has`'s borrows. `At`'s result is borrowed because it
    reads a slot; `Pop`'s is owned because it `take`s. A function returning an owner on one path and a borrow on
    another is an error. Function-type parameters never own; a function type cannot return an owning type.
11. **Loans** last to the last use of anything derived from them (non-lexical, flow-sensitive per local), as an
    argument until the call returns, and as a task argument until the join. Numbers and Bools read out carry nothing
    (O26a's rule), so `n := c.count` holds no loan.
12. **Conflicts are decided by type and root.** A release of a `T` reaches a loan on a `U` only when a `T` can hold a
    `U` (or `U` is `T`). The two must also have meeting roots:
    - **Precise roots** are an owner local, an owning parameter, or a local value of an owning type (not a borrowed
      copy), reached through by-value parts and own references only. References to such a variable's storage, and
      values derived from its loans, carry its root.
    - **Everything else is the shared root**: parameters that do not own, globals, captures, handles (`List`, `Map`).
    - Two precise roots meet only when they are the same variable; precise and shared never meet; shared meets shared.

    The result is Rust-like precision for local `Vec`s and owner locals, and type-based conflicts for owners held in
    `List`/`Map`. A borrow of one `List<own Msg&>`'s element forbids releasing from any other `List<own Msg&>` while
    it is used; Rust would allow it across two lists. This is sound and refinable later: fresh handle locals could be
    precise if every copy of them were tracked.
13. **Function values release only through their parameters; destructors only within their instance** (O40), each
    an error where the function becomes a value or at the destructor.
    - Without the first rule, a call through any function value (every `Fold`, `Map`, `Any`) would have to be assumed
      to release anything, and would conflict with every live loan.
    - Without the second, releasing one object could run arbitrary releases elsewhere through destructors.

    The precedent is T25c's "a function made a value may have no parameter that needs writable".
14. **Tasks.** A borrow given to a task is a loan until the join (P2 already holds arguments that long). A spawned
    call's releases are pending from the spawn to the join: a loan live anywhere in between, on what they may reach,
    is an error. An owning parameter of a spawned call moves its argument to the task, which releases it on its own
    thread (pools are per thread; returning another thread's chunks to one's own pool is already what folding does).
15. **Representation.**
    - An own reference is one pointer to the object; an own array is `{len, ptr}` as any array reference.
    - The word just before the object holds its region's header address (decision 8).
    - A region is a scope header (48 bytes) in the region's first chunk, with the object and what it builds bumped
      after it; it is closed by `__olang_own_free(ptr)`.
    - Regions take their first chunk from new small size classes (128 B to 2 KB) beside O8b's, then grow as any
      scope does.
    - Overhead is about 128 bytes per owned object (a chunk header and a scope header), against 16 for malloc. Tiny
      owned objects are dearer than arena values: a compaction (no scope header until the object first builds
      something) is a later optimisation, measured first.
16. **Drop registration.** An instance or array holding owners registers, where it is built, one node on its scope's
    destructor list (as a destructor-bearing instance does, O16), whose function runs the instance's destructor, then
    releases its owners. An owner local or owning parameter registers a node on its block's scope holding the slot's
    address, so every way out, test unwinding (P1d) included, releases what the slot still holds. Moving out of a local
    nulls its slot, so the node releases nothing. Cost: one node per declaration that executes. An allowed
    optimisation, skipping the node when every path moves the local before any way out, is left for measurement.
17. **The evaluator** models a region as the set of nodes built while it was the target. A release marks the set
    dead and runs its destructors under K1's existing rule. A read through a dead node stops evaluation with a message
    - unreachable in an accepted program, so it is the agreement oracle for the fuzzer. A global holding an own
    reference is never written out as data (K2): its objects live in regions, which a baked global's data is not.
18. **The prelude API.**
    - `TakeAt(i)` gives, and `RemoveAt(i)` now gives nothing; `SwapTake(i)` gives, and `SwapRemove(i)` gives nothing.
      This is the user's pairing: Take gives, Remove lets go.
    - `Pop()` keeps its name and gives. `Map.Take(k)` gives and fails on a miss as `Get` does.
    - This changes `RemoveAt`/`SwapRemove`, which gave the element; uses of the result move to `TakeAt`/`SwapTake`
      (mechanical). Two names for one operation (a giving `RemoveAt` beside `TakeAt`) would break "one way to write
      each thing".
    - Copying operations (`Clone`, `ToArray`, `PushAll`, `Filter`; `Map.Update`, `Map.Clone`) are errors for owning
      elements, reported at the program's use (B11). `Reverse` and `Sort` move.
19. **E31b with own elements.** `x[i]` of a collection of owners is a borrow, so a store through it goes into the
    object and nothing is written back. A call with a writable receiver on `x[i]` is allowed: the write-back hazard
    E31b guards against does not exist for a borrow, and O39 checks what the call may release.
20. **`Vec<T>` is a value holding its buffer's owner**, an owning type: a copy is a borrowed copy, `take v` moves,
    `v.Clone()` copies. It is not a handle, because a handle's owners have the shared root (decision 12) and every
    `Vec<F32>` would conflict with every other. As a value, two local `Vec`s are two roots, and `x := a.View(); for v
    in x { b.Push(v) }` compiles. `View()` is a borrowed result, a loan on the buffer. `Vec` declares `Eq`, `Hash` and
    `Str` over its used elements, not the whole buffer.

## 4. One predicate per question

The C checker's history (HISTORY.md, 2026-10-09 and 10) is that "where does this live" was answered in several places
that drifted apart, and each drift was a use-after-free. Each question below is answered by one function, decided in
one place, and every other site asks it.

| Question | Predicate | Decided in | Asked by |
|---|---|---|---|
| Does type `T` hold an own reference by value (an owning type)? | `TypeIsOwning(T)` | type walk beside `TypeHoldsReferences`/`TypeValueChildren` | slot checks, borrowed copies, drop registration, T8 fill, enum payload check, G18 |
| Which own types can releasing a `T` release? | `OwnTypesHeld(T)` | type walk (fields, elements, references into the same region) | O39 conflicts, effects |
| Is this operand position a move position? | `ownMovePosition(site)` | checker, at each fit site (one enum of sites) | `OperandFitsType` callers |
| Is this operand an owner, a borrow or a borrowed copy? | `ownKindOf(operand)` | checker, where the operand is built | moves, `take`, loans, codegen |
| Is parameter `p` owning? Is the result owned or borrowed (and from which parameters; root or part)? | `OwnParamOwns(f, i)`, `OwnResultKind(f)` | `settleOwnership()` after bodies | call sites, codegen, the borrow pass |
| What may a call release, through which argument, and through globals? | `OwnEffects(f)` | `settleOwnEffects()` after bodies | the borrow pass |
| Where does a temporary bound for an own slot live? | `cgWhereBuilt` → *a new region* | codegen's one placement answer | every promotion |
| What is a region scope's header at run time? | `ownRegionHeader(scope)` (checker records the source operand); `cgRegionHeader` | checker at the read; codegen | builds into a region |
| What does a slot's or an owner's reach say? | `ownReach(slotOrOperand)` | checker, from C2d/E12c bindings | moves, O33's outliving |
| Is loan `L` live at point `q`? | `loanLiveAt(L, q)` | the borrow pass's dataflow | conflicts |
| Does release `R` reach loan `L`? | `releaseHitsLoan(R, L)` = types (`OwnTypesHeld`) and `rootsMeet` | the borrow pass | conflicts |
| May a function made a value release through captures or globals? | `OwnEffects(f).viaGlobals`, captures | `checkOwnFuncValues()` | where a function becomes a value |

Nothing in the borrow pass reads tokens. It reads the checked statements and operands, the same trees codegen lowers,
as the review of 2026-10-10 required after O17b's token scan let a use-after-free through.

## 5. Runtime representation

- **Own reference**: one `ptr` to the object. **Own array**: `{ i64, ptr }`, the elements' pointer as for any array.
- **Header word**: the word at `ptr - 8` holds the region's scope header. When the object's alignment is larger,
  the allocation reserves that alignment before the object, the word sitting just below it.
- **Region**: a `%olang.scope` (owner, parts, parent as for any scope - decision 48 applies unchanged) placed at the
  start of its first chunk's data area.
  - `__olang_region_new(size)` takes a chunk of the smallest class holding chunk header, scope header, header word
    and `size`, and returns the scope.
  - `__olang_own_alloc(region, size, align)` bumps the object with its header word written.
  - Later allocations into the region are ordinary `__olang_scope_alloc(region, ...)`.
- **Release**: `__olang_own_free(ptr)`. It does nothing for `null`. Otherwise it reads the header, runs the region's
  destructor list (folding parts as `__olang_scope_close` does), and gives the region's chunks back to the pool, the
  chunk holding the header last.
- **Small classes**: 128, 256, 512, 1024 and 2048 bytes, kept per thread beside O8b's classes (their own short array:
  O8b's `[128 x ptr]` is full from 4 KB up), bounded with the same LRU accounting.
- **Drop nodes**: ordinary `%olang.dtornode`s registered with `__olang_scope_register_dtor(scope, instance, fn)`:
  - for an owner local or owning parameter, the instance is the slot's address and `fn` is `__olang_own_drop_slot`
    (load, null, free);
  - for an instance or array holding owners, `fn` is a `linkonce_odr` helper per type, emitted beside the deep-equality
    helpers: the destructor if any, then its owners in reverse field order, an array's elements from the last.
- **`-s`** (B2f): a region's chunks are poisoned and held back like any closed scope's, so a use after release is
  reported by the scope sanitizer with no extra work.
- **TSan** (`-r`): a region released on another thread returns its chunks to that thread's pool, a path P2a already
  takes; nothing new is synchronised.

## 6. Implementation plan

Each step ends with `make verify` green and, from step 3 on, its own tests. Steps 1-9 are one change; step 10 migrates
the prelude in the same series; step 11 (`Vec`) follows once own references are in. Soundness review after steps 6 and
8 (see section 9), before merging.

**Step 1 - lexer and parser** (`bootstrap/token.c`, `token.h`, `syntax.c`).
- `TOK_OWN` and `TOK_TAKE` in the keyword table.
- `parseTypeExpr` (and the places that accept `mut` before a type: parameters, fields, locals, globals, type
  arguments - `syntax.c` around the `TOK_MUT` sites) accepts `own` before `mut`.
- `parseExprUnary` takes `take postfix`.
- The statement-start declaration scan (the `u.type == TOK_MUT` loop near line 4124) treats `own` as `mut`, and so do
  the parse hints that name `mut`.
- Rename every identifier named `take`/`own`: `checks/cases/t6alocalnote.olang` declares `fn take`; grep std, the
  corpus, checks, fuzz, bench, oann.
- Tests: the existing suite; parse errors for `own` in the wrong places.

**Step 2 - types** (`semantic.h`, `semantic.c` type section).
- `struct type` gains `refOwn`. `resolveTypeExpr`/`applyRefMarker` set it; `TypeIsSame` compares it (T27); T25e's
  position errors live in `resolveTypeExpr` and the declaration builders (receiver, function type, enum payload,
  `extern`, scope marker, non-reference).
- New `TypeIsOwning`, `OwnTypesHeld` (one walker each, built on `TypeValueChildren`'s traversal). G18 re-checks enum
  payloads and function-type results per instantiation.
- G16a instantiation names spell `own`; `%t` and `$`'s type spellings write it.
- T8: a fill of an owning type is an error.

**Step 3 - reading, moving and `take` in the checker** (`semantic.c`).
- `ownMovePosition` at every fit site: `buildVarDeclStmnt`, `buildAssignCore`, argument fitting in `OperandFuncCall`
  (with `bindCallScopeVars`), `buildRetStmnt`/`checkBuiltResult`/`checkValueResult`, `buildSpawnStmnt` targets, array
  literal elements, constructor fields (`buildTypeBodiesCtor`), `catch default`, conditional and match values
  (`buildMatchCore`).
- A slot read in any other position is converted at the read into a borrow (type without `own`, a fresh region scope,
  step 4) or marked a borrowed copy (a var/operand flag, as the read-only copy mark is).
- `take` in `buildUnary`: the place check, the zero value, the generic copy case.
- S3 admits `take`.
- Implicit moves of owner locals are recorded on the operand (`ownMovesLocal`) for the borrow pass to confirm (step 6)
  and codegen to null.
- Deep permission: the borrowed-value permission code of T25c.
- E31b's own-element path in `buildAtFieldAssign`/`buildSetAt`: borrow, no write-back.
- Tests: corpus tests of moves and borrows that need no conflict check yet; must-fail cases for the position and move
  errors.

**Step 4 - regions in §8** (`semantic.c` scope machinery).
- A region scope kind on `struct type`: `scopeRegion` pointing at a record holding its reach, its header source (the
  operand read, or none) and its read id.
- `scopeOutlives`/`scopeCanFlowInto`: a region outlives only itself and is outlived by its reach and longer.
- `RefExactScope` gives a borrow its region.
- `ownReach` for slots and owners, from C2d's per-instance bindings (`ctorComputeHeld`, `checkCtorHereFits`) and
  O25h's homes. The move check: owner reach outlives slot reach.
- An owned result's result scope is its reach, landing by O18a's machinery unchanged.
- O12's "not known" for locals given borrows of several reads.
- `cgWhereBuilt`'s *new region* answer is fed from here.

**Step 5 - settlement** (`semantic.c`, after `settleReadOnlyArgs()` at the end of checking).
- `settleOwnership()`: which parameters own (O36), which results are owned or borrowed, from which parameters, root
  or part (O37). A least fixed point over the call graph: a parameter owns only if a move or release of it is reached.
  It is the same walk shape as `settleRegions`/`roSettleResults`.
- `settleOwnEffects()`: per function, per parameter, the own types it may release reachable from it, and the set
  through globals. Also a least fixed point, with calls through function values contributing what their arguments
  reach (O39).
- `checkOwnFuncValues()`: O40's error where a function is made a value; and the destructor rule.
- Every call checked before its callee settled is checked again (the `dischargeLateObligations` pattern): an argument
  given where an owner is needed, a result taken as an owner.

**Step 6 - the borrow pass**: `checkOwnBorrows(func)`, once per checked body (instantiations included), after
settlement. It is its own pass over the checked tree - the design compiler/DESIGN.md §1.7 wants for §8 in the port - so
it can be ported as a pass.
- **CFG**: statements and operands in evaluation order (S4's left-to-right, a call's arguments before the call),
  blocks, loops with back edges, `break`/`continue`/`return`/`error`/`done`/`fail` exits, `try` clauses, `match` arms,
  conditional values, the lowered for-in and comprehensions (already statements), deferred code placed at each of its
  block's exits, join blocks with their pending task effects.
- **Loans**: made at reads (step 3) and borrowed results (step 5), each with types and roots.
- **Holders**: per local, a forward may-hold dataflow (gen at a store of a derived value, kill at a store of a
  non-derived one). Liveness of locals is a backward dataflow. A loan is live at `q` if a holder of it is live there,
  or an enclosing operation still holds it (an argument until its call returns, a task argument until its join).
- **Releases**: direct ones (slot assignments, `= null`, `take`, implicit moves, statement-end owners, block ends),
  calls through `OwnEffects` with the arguments' roots, and pending task effects.
- **Conflict**: `releaseHitsLoan`. The error names the release, the loan's read and its next use.
- **Implicit moves**: confirmed or refused (the local is live after: "write 'take x'").
- **Roots**: one pass over the body assigns each local its roots (precise, derived, shared).

**Step 7 - runtime** (`bootstrap/runtime.c`).
- The small classes.
- `__olang_region_new`, `__olang_own_alloc`, `__olang_own_free`, `__olang_own_drop_slot`.
- `-s` and `-r` need nothing new (section 5).
- Driven from C in the `scopesan`-style checks scenario: release, a release with destructors, a release on another
  thread, sizes across the small classes.

**Step 8 - codegen** (`bootstrap/codegen.c`).
- `cgWhereBuilt`/`cgPromote`: a new region for a temporary bound for an own slot or an owning parameter, the object
  bumped first (it already is, O15's change) with its header word.
- `cgStoreInto`/`cgAssign`: load the old owner, store, then release it.
- `take`: load, store zero.
- Implicit moves null the local.
- Owners nobody receives are released at the statement's end.
- `cgVarDecl` and function entry register drop nodes for owner locals and owning parameters. Owner-holding instances
  and arrays register theirs beside `cgRegisterDtorIfNeeded`.
- A borrow's region header for builds (`cgRegionHeader`: load the word before, `null` for `null`).
- The E31b own path.
- `cgCheckMayBuild` learns that a region scope is a scope a body may build into (decision 48's walk counts it).
- P2 needs nothing: a region handed to a task as a scope argument gets a stand-in as any scope does.

**Step 9 - evaluator and `-i`** (`bootstrap/comptime.c`).
- A region id on nodes built while a region is the target (`ctCallBind`, the promotion paths).
- A release marks the region dead and runs its destructors under K1's rule.
- A dead read stops: "use of a released object at FILE:LINE".
- `CtEvaluateGlobal`/the bake loop never bake a global whose type is owning.
- Tests: a global computed through owners (built, moved, released) and an assert decided while compiling, beside the
  same at run time.

**Step 10 - prelude and migration** (`std/prelude/list.olang`, `map.olang`, `array.olang`, `tests/`).
- `List`:
  - `Pop`, `TakeAt` and `SwapTake` move out with `take`.
  - `RemoveAt`, `SwapRemove`, `Remove`, `Clear` and `Truncate` release with `take` statements. `Clear` on a list of
    numbers keeps its O(1) cost: the loop of `take`s is empty for non-owners and LLVM removes it - check the IR.
  - `Insert` and the shifts move with `take`; `Reverse` and `Sort` move. `Sort` sorts an `Array<T>` it moves into
    and out of, so `Array.Sort` moves with `take` too.
- `Map`: `Take`; `Remove` and `Clear` release; `Iter` hands out borrowed copies by its body as written.
- Migrate uses of `RemoveAt`'s and `SwapRemove`'s result to `TakeAt`/`SwapTake` with a re-runnable script
  (`tools/takeat.olang`, from the compiler's errors as `perm_mut.olang` does) over std, the corpus, checks, fuzz, bench and
  oann.

**Step 11 - `Vec<T>`** (`std/prelude/vec.olang`), after steps 1-10 have merged.
- The API in M19d.
- Growth doubles from 8, moving elements with `take` (a `memcpy` for numbers once LLVM sees the loop).
- Tests, and the benchmark against `List` push/walk and C's `realloc` vector (bench/).
- Then the migration the user asked for - `Vec` as the default growable array - where code wants contiguity: std's
  numeric code and oann first, the corpus where it reads naturally; `List` stays where pushing during a walk or never
  copying matters.

**Step 12 - records.**
- CLAUDE.md entry; HISTORY.md.
- Remove the "not yet implemented" note at §8.8's head and the markers elsewhere.
- errmsg entries for O30-O42, T25e and E34, so `-e O39` prints the rule.
- PRINCIPLES.md's "No borrow checker" gains its qualifier: one exists for owned references only, and checks only
  freeing.

## 7. Diagnostics

One row each (B11), the rule in brackets, a note at the other place where one exists.

| Rule | When | Message (shape) |
|---|---|---|
| T25e | `own` before a non-reference | `'own' marks a reference: write 'own Point&'` |
| T25e | `own` with a scope marker | `an own reference lives in its own region: drop '&x'` |
| T25e | on a receiver / in a function type / in a payload / in `extern` | `'own' is not written on a receiver: a method is called on a borrow` (and one per place) |
| T8 | fill of an owning type | `one owner cannot fill every element: build Array<own T&>(n) and give each its own` |
| O34 | a field, element or global moved without `take` | `moving out of 's.cur' leaves it empty: write 'take s.cur'` |
| O34 | an owner local read again after an implicit move | `'c' is read again on line N: write 'take c' (it is null after)` |
| O34 | a borrow or borrowed copy given where an owner goes | `'c' borrows 's.cur' (line N) and owns nothing: take it from where it is owned` |
| O34 | owner's reach too short for the slot | `the Conn refers to 'buf', which lives shorter than 's.conns': build it where they live` |
| E34 | `take` of a non-owning, non-generic place | `'take' moves an owner, and 'n' is an I64` |
| E34 | `take x[i]` on an `At` type | `'l[i]' calls At: take it with 'l.TakeAt(i)'` |
| E34 | `take` through a read-only path, or of a borrowed copy's part | `'take' writes 'p'` / `'e' is a borrowed copy and owns nothing` |
| O32 | a borrowed copy's own part assigned | `'e.Value' belongs to what 'e' was copied from: assign it there` |
| O33 | a borrow stored outside its region | the existing O20/O25/O10c error, with a note: `'c' borrows an owned object; copy what you need ('$c', a field), or take it` |
| O36/O37 | an owner on one return, a borrow on another | `'first' gives an owner here and a borrow on line N: one or the other` |
| O36 | a borrow given to an owning parameter | `'Push' keeps 'x' (it stores it): give an owner - 'take x', or a new value` |
| O39 | release under a loan | `'s.conns.Remove(id)' may release the Conn 'c' borrows`, notes `borrowed here` and `used here` |
| O39 | move under a loan | `'take s.cur' moves the Conn 'c' borrows` + the same notes |
| O39 | an owner released at the statement's end while borrowed | `'mk()' is released at the end of this statement: keep it, 'm := mk()'` |
| O39 | a task's pending release | `the task spawned on line N may release the Conn 'c' borrows before the join` |
| O40 | a function value releasing through a capture or global | `'onClose' releases a Conn through 's' (line N): a function used as a value releases only through its parameters - pass 's'` |
| O40 | a destructor releasing outside its instance | `a destructor releases only what its instance owns: 'srv.conns.Remove(fd)' (line N)` |
| B11 | a copying prelude method on owners | `'Clone' copies the List's elements, and an own element is moved, not copied` at the program's call, note in the prelude |

## 8. Test plan

**Corpus** (a new section of `shared.olang`):
- Destructor counters prove each release point (O35): assignment, `null`, `RemoveAt`/`Remove`/`Clear`/`Truncate`,
  `Map.Remove`/`Clear`, block end, every way out of a block (`return`, `break`, `continue`, an error, a join), test
  unwinding (with `done`), the container's scope closing, nested owners released with their owner's region, never
  twice.
- Moves: `take` of fields, elements, globals; implicit moves of dead locals into `Push`, `Put`, a `return`, an owning
  parameter; `x := take p`; generic `take` on non-owners; `Pop`/`TakeAt`/`SwapTake`/`Map.Take`.
- Borrows: reads, method calls on borrows, a walk over `List<own T&>` and `Map<K, own V&>`, borrowed copies of
  `MapEntry`, building into a borrowed object's region (`c.pending.Push`), `best = c` read after the walk.
- Every test that keeps something reads it back after an arena churn, and passes under `-t -d -s` (regions poisoned
  on release).
- Evaluator agreement: globals computed through owners (built, moved, released, counted) baked and asserted while
  compiling, beside the same at run time; `-i` on a fixture printing the same as `-b` and `-b -d -s`.

**Must-pass programs** (over-rejection watch; each a corpus test or `checks/cases` `# check: run`):
- the network loop of section 2, with accept, handle (building into the connection), and close;
- a message queue that pushes, pops, moves into a done list and clears;
- an ECS-like world: `Map<I64, own Entity&>`, entities added and removed 100,000 times in a loop. Run under
  `ulimit -v` as a checks scenario, it proves memory stays bounded - the QF problem (O8c) this feature exists for;
- an owned tree built and pruned by moving subtrees between parents;
- `Vec` numeric loops with `View` (step 11).

**`checks/cases` must-fail list**, one file each, naming the expected rule:
- `own` on a non-reference, with a scope marker, on a receiver, in a function type, in an enum payload, in an
  `extern`, through a type argument into a payload;
- a fill of an owning type;
- each move error of O34;
- each `take` error of E34;
- a borrowed copy's part assigned or taken;
- a borrow stored in a field, element, global, result or longer-lived closure, and a borrow of one object stored into
  another;
- an owner and a borrow returned from one function;
- a borrow given to an owning parameter;
- O39:
  - a release by assignment, `null`, `take` and an implicit move under a live loan;
  - through a call (direct, two calls deep, through a cycle, through a back-pointer field, through a global);
  - through a call through a function value;
  - a statement-end release under a loan;
  - a block's end under a loan held outside it;
  - a release inside a for-in over owners;
  - a release in deferred code while a borrow is used before it;
  - a release between a spawn and its join;
  - a release under a loan captured by a lambda;
  - a release under a loan held in a borrowed copy or in an iterator;
- O40: a lambda releasing through a capture, a named function made a value releasing through a global, and a
  destructor releasing outside its instance;
- B11: `Clone`, `ToArray`, `PushAll`, `Filter`, `Map.Update`, `Map.Clone` on owners.

**Scope fuzzer** (`fuzz/scopegen.olang`): new shapes, each generated both accepted (no conflict) and conflicting
(must be refused - the generator records refusals and must see one where the conflict is certain):
- own slots in fields, elements, `List`/`Map` values, locals and globals; overwritten, nulled, taken, removed, cleared,
  while borrowed and not;
- borrows passed to calls that release through the argument, through a back-pointer, or through a global (refused),
  and calls that do not (accepted);
- borrows captured by lambdas, given to tasks, used in deferred code, held across loops that remove;
- E31b through own elements;
- `take`/moves into and out of nested owners; releasing by an overwrite whose value reads the old object;
- borrowed copies of owning values lent to calls that may grow them (refused);
- generic code (`Pair`, `List`, `Vec`) instantiated with own elements.

Accepted programs run `-b -d -s` against `-i` (outputs equal; `-s` reports any use after release), as the scope fuzzer
does now.

## 9. Risks the soundness review should attack

1. **A release the effects miss**:
   - a call through a function value (O40's check skipped somewhere: a `Call` adapter, a default method, a generic
     callback bound at instantiation, a lambda in a parameter default);
   - an unsettled cycle read before settlement;
   - a destructor reached through a region release running a release elsewhere;
   - `os.RunOnStack`, `spawn fn() {}()`, a `try join`'s clauses;
   - deferred code;
   - a `catch` clause's block;
   - a for-in's own calls (`Next`, `RunFrom`).
2. **A loan not recorded**: a borrow hidden in a value (a struct local holding a borrow by a `&p` field, an iterator,
   a `MapEntry` copy, a closure); a borrowed result through two calls; a borrow in a `match` binding, an `as` payload,
   a conditional's value, a comprehension's element, a `try` default; a borrow passed through a generic `T` whose
   instantiation makes it a borrow; a loan whose holder is reassigned on one path only.
3. **Roots too precise**: a reference to an owner local's storage escaping the derivation tracking (a reference
   local assigned on one path, a struct field holding a `&p` reference to the local, a parameter repointed at the
   local - S4a), making a release through it look rooted elsewhere.
4. **Reach**: an owner moved to a slot that outlives what it refers to; a `&p` field of an owned object rebound (O13a)
   after its reach was computed; an owned result's reach landing wrong (O18a); a region reach through nested regions.
5. **Implicit moves**: liveness wrong at a loop's back edge, at a `defer`, at a closure capture, at a `$` after the
   move, or across a `try` clause - a double release if the source is not nulled, a use of `null` (safe) if it is.
6. **Region headers**: a build into a region through a borrow that is not the object itself (a part handed back by a
   callee), or through a reference whose root changed - a wrong header is heap corruption, not a trap.
7. **Borrowed copies**: one lent writably to a call that grows or replaces its buffer (must be O39 through its own
   loan); one stored into a slot as an owner; a `take` of its part; a borrowed copy of a value whose owning parts are
   behind `Array<own T&, N>` held by value.
8. **Generic per-instantiation decisions**: an owning/borrowing decision read at a call site before the callee
   settled; one instantiation's decision leaking to another (O17's per-function fix, 2026-10-10, is the precedent);
   `take` on a type variable bound to an owning value type that has no zero value.
9. **Codegen**:
   - drop nodes doubled in a loop;
   - a release before the new value is stored (`s.cur = Wrap(s.cur.child)` reads the old one while it is built);
   - the header word at the wrong offset for an over-aligned object;
   - `__olang_own_free` touching the header after giving its chunk back;
   - a region released on a task thread while the spawner's part (decision 48) is still linked.
10. **Evaluator agreement**: a release the evaluator runs in a different order (destructors, deferred code, joins),
    or a baked global reaching an owner.
11. **Test unwinding** (P1d): an owner released twice (once by the drop node, once by an instance's drop) or not at
    all.

## 10. Open, and left for later

Direction questions for the user (also in the report):

1. Copies of the two growable types mean different things: `b := a` on a `Vec` is a borrowed copy (b cannot push, `take
   a` moves, `a.Clone()` copies), on a `List` a second name for the same list. Kept, because a value `Vec` is what lets
   the check tell two `Vec`s apart (decision 20). Making `List` a value with an own chunk table would unify them, at
   the cost of its handle semantics, which code relies on.
2. A callback cannot release an owned object through what it captures or a global (O40): an event handler closing a
   connection takes the server as a parameter. Lifting it would make every call through a function value conflict
   with every live loan.

Left for later (additive):
- precise roots for fresh `List`/`Map` handle locals (decision 12);
- compact regions for objects that build nothing (decision 15);
- `own` in a function type's parameter (a consuming callback);
- own enum payloads;
- skipping drop nodes where every path moves the local.

## 11. What was built: the first cut (2026-10-10)

The cut is the part of the plan the rest stands on, with nothing half-wired: `own` on a reference to a struct type as
a field's, a local's or a global's type, `take` of such a slot, regions at run time, the borrow check (O38-O39) with
its effects, and K2. SPEC.md's §8.8 note and the rules marked there say what is not built; this section says what was
decided while building, against the plan above.

**Built**
- Lexer, parser and types (steps 1-2): `own`/`take` keywords, `refOwn` on `struct type`, T25e's errors - every
  position but a field's, a local's or a global's type, and every referent but a struct, is "not supported yet".
- Reads, moves, `take` (step 3): a slot read anywhere but a move position is a borrow with a region scope variable of
  its own (`isRegion`); `take` moves; a move position takes `null`, a constructor call made there, or `take`.
- Regions at run time (step 5, without the small classes): `__olang_own_new` makes a region per object (one 4 KB
  chunk), the header word before the object; `__olang_own_free` releases; an owning struct's own fields are released
  when its scope closes through a drop node registered at construction, so a test's unwinding (P1d) releases them too.
- The borrow check (steps 6-7): effects per function, a least fixed point over every body; loans of locals live to
  their last use, conservatively; tasks, deferred code, closures, loops.
- O40/O41 (step 8), in their strict form; K2 (step 9); the evaluator (K1) treats a release as nothing.
- Tests: shared.olang's own section (read back after churns, release counts, a list built through owner locals - baked
  and run), 35 checks cases, an agree fixture built, built `-d -s` and interpreted, and own scenarios in the scope
  fuzzer.

**Decided while building**
1. An owning struct is held only by reference (`ERR_OWNING_TYPE_BY_VALUE`, O31): with no borrowed copies yet, a value
   copy of one would be a second owner.
2. An owner local's reach comes from its initializer - the program's scope for `null`, nothing, or a constructor call
   given only numbers, literals, written text, `null` and such calls (`ownCtorPlain`); its block's for another value
   made there; the source's for `take p` - and an owner moved into it later must reach as far (O34's error).
3. Roots: a loan records whether its slot was reached from an owner local (which one), a parameter, or anything else.
   A release through an owner local reaches only loans rooted there and unrooted ones; a value made where it is
   released reaches none; a release through anything else reaches every loan of its types. Conservative where the spec
   lets a variable's root and the shared root never meet.
4. A release reaches no loan on an object inside the released one's own chain below it (the loan's region in the
   release's chain), nor one on the very slot path it assigns - so `head.next = take head.next.next` and
   `s.cur.close()` releasing a `Sock` under a borrowed `Conn` are allowed.
5. An assignment's release is checked against the loans live past the statement and those of its target's place; the
   value is computed before the store (S4), so loans used only in computing it are over.
6. `take p` moved into a field or a global of the same reach, not into its own region, is a move and releases
   nothing (`ownKeptReach`); into an owner local it is a move too. A `take` nothing receives - a statement - releases
   at the statement's end. *(Withdrawn by section 12: every `take` is checked as a release would be, Rust's rule.)*
7. `take` anywhere but a move position or a statement, and a conditional or a match giving an owner, are O34 errors
   (`ERR_OWN_OWNER_USE`, `ERR_OWN_IN_COND`) - not yet move positions.
8. O40 strict: a function made a value, a `Call` adapter's `Call`, a destructor, and `Str`/`Eq`/`Hash` (which `$`,
   `==` and a `Map` call by themselves) release nothing at all. O41 strict: a spawned call releases nothing.
9. A global reaching an own reference is never baked (K2, `ownReachesOwn`).
10. **A region is known only once the borrow naming it is read**, and a call's hidden scope arguments were resolved
    before its arguments: `ogrow(h.cur, 4)` handed `ogrow` a null scope (a segfault), or in a loop the previous
    iteration's region (a use after free). Found by the own scenarios of the scope fuzzer. Codegen now reads a
    region's scope again after the arguments (`regionArgs`), a task's stand-in made from that; and a value built for
    an argument in the region a *later* argument reads - `setN(Node(9), s.cur)` - is O33's error, naming the local
    to read the borrow into first (`ERR_OWN_BUILT_BEFORE_BORROW`). Hoisting the read would be unsound: an argument
    between could release the slot.

**Fuzzed**: own scenarios (a holder with two own slots; new owners, moves, owner locals, `null`, `take`, calls,
methods, tasks building into regions, borrows kept across a release, values built before their region is read) are
one in twelve of the scope fuzzer's. Run all-own: the compiler before decision 10's codegen fix gives 24 findings in 60
programs; with it, none - and none in 300 more all-own programs (2,561 scenarios run, 1,039 refused) or 200 of the
usual mix (981 run, 1,419 refused).

**Left** (each additive): owning parameters and owned results (O36, O37); own elements and `List`/`Map` holding owners,
`TakeAt`, `SwapTake`, `Map.Take`; `Vec`; owning value types and borrowed copies; implicit last-use moves of owner
locals; conditionals, matches, array literals, spawn targets and catch defaults as move positions; O40/O41's releases
through parameters; the evaluator marking a released object dead; small region classes (a region is one 4 KB chunk);
a flow-sensitive liveness (loans live along paths, not per block).


## 12. The first cut's soundness review, fixed (2026-10-10)

The review of the first cut (42efc87) found two use-after-frees the borrow check accepted, and one pre-existing leak.
Fixing them turned up four more holes of the same families in the cut itself.

**C1 - a move dropped a loan's root.** Decision 6 above made `take` into a field or a global of the same reach a move
that releases nothing (`ownKeptReach`). But the move takes the object into another owner's tree, while a loan on it
keeps the root it was read through (decision 3). A release through the new owner then met no loan:
`c := o1.cur; o2.cur = take o1.cur; o2.cur = null; use c` freed what `c` names. The same held between a parameter's tree
and an owner local of its reach, in either direction.
- **Decided (the coordinator's call): Rust's rule.** A `take` is refused while a loan on the moved object, or on
  anything it holds, is live, as a release would be: "taking 'o1.cur' moves the Node borrowed on line N, which is used
  after it". This holds wherever the owner goes: an own field, a global, an owner local, a `take` statement.
- `ownKeptReach` is gone. A move frees nothing, and an object is never moved while borrowed, so a loan's object stays
  below the root it was read through. Decision 3's root model holds again.
- To a caller, a function's moves out from below a parameter are effects like its releases. The note says "'mv' moves
  it here".
- Every error now names where the borrow is next used ("used here, after it").

**C2 - a task's own borrows were invisible to the spawner.** Only borrows handed to a task as arguments were loans
until the join. A task given the holder (`spawn work(s, a, b)`, where `work` reads `h.cur`) borrowed inside, and the
spawner's `s.cur = null` freed it. Channel synchronisation made this race-free, so ThreadSanitizer was silent.
- **Decided (the coordinator's call): a borrow effect, dual to the release effect.** Per function, it is what its body
  may borrow, by type and by root: below which parameter, or through anything else. It is collected in the same least
  fixed point, from:
  - the own slots the body reads;
  - its calls' borrows, mapped through their arguments;
  - for `$` and `==` on a value: the own types the value reaches, and what every `Str`/`Eq`/`Hash` may borrow;
  - what the destructor of a value it builds may borrow through a global.
- A call through a function value, a body not known here, borrows anything (any type, the shared root).
- At a spawn, the call's borrows, and those of its clause lambdas (P4a), become loans held until the join. The lambda
  is found through the hidden `$task`/`$clause` local. Arguments are mapped to their roots, so a global is the shared
  root. A release or a move that may reach one of these loans is O41's error, naming the spawn and where the task
  borrows.
- This also holds after the spawn in deferred code that runs before the join waits, and on the later turns of a loop
  inside the join block around the spawn. Both are walked again with only the task loans checked (`ownTaskRewalk`).
  Neither was covered for argument loans either - `defer { s.cur = null }` then `spawn look(s.cur)` compiled, as did a
  loop releasing the slot before each turn's spawn.
- A spawn's targets are places used until the task stores into them, so they count as loans as well:
  `spawn s.cur.n = f(); s.cur = null` compiled.

**Found while fixing (holes in the first cut, decisions mine):**
1. **A lambda capturing an owner local** was a second owner: `f := fn() { o.cur = null }` released through it with no
   effect (root LOCAL), and `fn() { p := take o }` freed `o` twice. Now it is an error (O32) naming the fix: capture a
   borrow, `b := o`. Making the capture a borrow implicitly is left for later; the spec says it is one.
2. **A borrow of an owner local declared in a block inside the join**, lent to a task, died at that block's end, before
   the join. P2 took every region to outlast the join. A region now records where its slot lives (`regionLife`): an
   owner local's block, a field's container. P2 judges a region by that.
3. **One error per statement.** A move and the store it feeds reported twice.
4. **An assignment's value may use a borrow of what the assignment releases** (`c := s.cur; s.cur = Conn(c.fd + 1)`).
   The value is computed before the store, which decision 5 already said, but a local holding the loan counted its read
   in the value as a use after the release. This was an over-rejection.

**Precision, so the fix refuses nothing new:**
- A release or a move through one own slot of an object never reaches a loan read through another own slot of it
  (`ownLoanBesidePlace`). This compares both paths, slot by slot up through the borrows they were read through.
- Without it, C1's rule refused `h.cur.sub = take h.other`, where the target's place borrows `h.cur`. On the old
  generator's own programs, the fixed compiler then refused 22 scenarios the old one ran. With it, the refusals are
  identical.
- It also accepts the first cut's own over-rejection `c := s.cur; s.other = null; use c`.
- Task loans made from a borrow effect have no slot, so they are judged by type and root alone, as decided.

**P1 (pre-existing, codegen):** `a.kid = Node(5)` built `Node(5)` in the function's own scope, wherever `a` lived:
- for `a` a reference local of an inner block, it was destructed (and its storage reclaimed) only when the function
  returned - a loop leaked one per turn;
- through an own region (`s.cur.kid = Node(5)`), it was never part of the region, so releasing `s.cur` did not run its
  destructor (O30).

`cgResolveEffectiveScope` now builds through a borrow into the borrow's region, and through a reference local where the
checker says its referent lives. `cgAssign` resolves that after evaluating the place, since a region is known only once
the borrow is read (decision 10). Measured: the review's `fr05` drops 2 at its block's end (was 1), `fr04` drops 2 at
the release (was 1).

**Over-rejections left (low priority, decided):**
- A typed borrow local (`best Node& = s.cur`) lives in its block by O25a. O33 now says so, and the O10 error gains a note
  that only `:=` holds a borrow.
- Reassigning a `:=` borrow local to another read (`best = s.alt`) is O10's error at the reassignment, with the same
  note. O33's "not known" walk is marked not yet implemented.
- Task loans and releases are matched by type. A task borrowing `s.cur` still forbids `s.other = Conn(..)` in its join
  block.

**Fuzzed.** The scope fuzzer's own scenarios gained the review's shapes, all must-fail:
- a move to another owner local's tree while borrowed, then released there;
- a helper moving from below its parameter into an owner local of its reach while borrowed;
- a task borrowing through the holder, synchronised by an atomic flag with a bounded wait (`owait`, so `-i`, which runs
  a task only at its join, goes on), while the spawner releases;
- a loop in a join block releasing what the last turn's task builds into;
- deferred code in a join block releasing before the join waits.

All-own runs, seeds 1-60:
- the 42efc87 compiler gives **56 findings** (567 scenarios run, 153 refused), each shape among them;
- the fixed compiler gives **none** (294 run, 426 refused - the new shapes are refused, as they must be).

On the old generator's own programs (seeds 1-40) the fixed compiler refuses exactly what 42efc87 refused, and finds
nothing.


## 13. Phase 2a: what `Vec<T>` needs (2026-10-10)

The pieces a `Vec<T>` written in the prelude stands on: an own array for its buffer, owning parameters and owned
results, owning value types with borrowed copies, and a small region for a small object. Each piece below says what
was decided while building it; SPEC.md's notes say what is still not built.

### 13.1 Own arrays

`own mut Array<T>&` as a field's, a local's or a global's type: a buffer in a region of its own, released at will.
`Array<T>(n)` makes one, `take` moves it, `null` or another buffer releases it. A `Vec` is a count beside one of these.

**Decided**
1. **The region holds the buffer alone; the elements' referents live in the slot's reach (option B).** An array in an
   own slot keeps what its elements refer to exactly where a plain array in that slot would - the element scope `E`,
   the read's own exact scope before it is made a borrow (`RefExactScope` on the plain read), recorded as the region's
   reach. So a temporary stored into an element is built in `E`, an element read out of the borrow lives in `E`, and
   releasing the buffer frees nothing the elements refer to. The alternative - elements in the region with the buffer -
   would make every element a borrow of the region, so `e := b.names[2]; b.names = ...` (keeping one element while the
   buffer is replaced, the commonest thing a growable array does) would be O39's error, and a `Vec`'s growth would have
   to copy the elements' referents too.
2. **One place makes the elements' scope `E`**: indexing a borrow of an own array whose elements are references or
   function values retags the base to `E` (`operandIndexAt`), so the thirty-odd O20/container walks see a plain array
   and need no case of their own. A slice of the borrow keeps the region: it is a borrow of the same buffer.
3. **What an own array slot takes** (O34): `Array<T>(n)` - zero values, or a fill that is `null`, zero bits, or, for
   elements carrying no scopes, any value; for elements carrying no scopes, also an array literal, written text, a join
   and a comprehension (`ownFreshArray`); `take` from another own array slot; `null`. A temporary fill holding
   references (`Array<String&>(4, $3)`) is refused - every element would share one temporary built in the call's block.
4. **A move between own array slots** needs the source's reach to outlive the destination's (as for structs) and, where
   something can be stored through the elements (O25g), to be it exactly (`ERR_OWN_REACH_EXACT`) - the same exactness
   a plain array of them asks.
5. **Elements that are values holding references** (a struct, an enum or `Array<T, N>` by value) are T25e's "not
   supported yet", re-checked per instantiation (G18): their references would need the element scope at every depth of
   a value read, which the one retag in decision 2 does not reach.
6. **A constructor's own field** (`nums own mut Array<I64>& = Array<I64>(n)`, `a own mut Node& = Node(n)`) is an owner
   local of the constructor, built expecting the type without `own` and moved in: its reach is the instance's scope,
   the constructor's top level (C2g), as a read through the instance finds it - not its initializer's, which for `take
   p.x` would have let the instance outlive what the moved object refers to. The first cut had no path for an own
   field's initializer at all (E12 for anything but `null`).
7. **A global own slot is assignable through its `mut`** (T2): `G own mut Array<I64>& = ...` puts the `mut` in the type
   expression, after `own`, where `collectVar` never looked. Its initializer stores the owner it makes (`cgOwnValue`) -
   it was copied into the program's scope, so the first `G = ...` freed arena storage.
8. **Written text and literals adapt to a declared array type** in an own slot (`text own mut String& = "a"`), as they
   would to the slot's reference without `own`; codegen copies a literal of its own length from its storage, not from a
   `{len, ptr}` it does not have.

**Found and fixed on the way (pre-existing)**
- **A variable's read was taken for a landing call.** `w := mk()` leaves `mk`'s result to land in `w`'s block, and `w`'s
  read shares the call's binding list. A later `w.inner.t` handed to a call (`println`) landed that shared binding in the
  borrow's region, so `mk` was called with a null result scope - a segfault on the first cut too (`checks/cases` keeps
  the shape). A variable's read is now never landing (`callIsLanding`, `landCallIn`).
- **A global's borrow read as the program's scope** (`RefExactScope`), so `sum(G)` with `G` an own global was O10.
- **A `for ... in` over an own array** fitted the borrow at the bare type before adopting its region - O10 on every loop
  over one (found by the scope fuzzer's new shapes).
- **A call's built result stored into an owned object's field** (`s.cur.n.next = mkNode(6)`) was O10's error: the
  call landed in the object's region, and a region outlived even a bare field's "any scope" target. That target accepts
  a region now; the store is judged by its container (O20), as for any scope.

**Tests**: shared.olang's own-array section (read back after churns, a buffer replaced while its element is kept, a
global replaced and sliced, a constructor's own fields; a computation through own arrays baked by K2 and an assert
decided while compiling beside the run time); checks cases for a stored buffer borrow, a release under a whole-buffer
borrow, a temporary fill, a value element (and one per instantiation), an element outliving its text, a move breaking
exactness, a typed local kept past its owner, and three constructor shapes that would let the instance outlive what it
holds. Scope fuzzer: the own shapes gained new buffers, element writes and stores, a buffer moved through an owner
local and back, elements kept across a release, text joined into an own `String`, a constructor's own fields moved out,
and a slice kept across a release (refused); own-only seeds 1-40 ran 252 scenarios (228 refused by the checker) and
mixed seeds 100-139 ran 203 (277 refused), no findings.

### 13.2 Owning parameters and owned results

`fn grownFrom(old own mut Array<T>&, cap I64) own mut Array<T>&`: a parameter written `own` owns what it is handed - the
caller gives it up (`take`, a constructor call, a call's owned result) and the callee releases it as it returns unless it
moves it on; a result written `own` hands the caller the owner. With them a `Vec`'s growth is one statement:
`v.data = grown(v.data, cap * 2)` (the value borrows what its store then releases, O39) or
`v.data = grownFrom(take v.data, cap * 2)` (the old buffer handed over and released in the callee).

**Decided**
1. **Only a declared function's parameter or single result owns.** `own` on a constructor's, a trait method's or an enum
   payload's parameter, and on one of several results, stays T25e's "not supported yet"; on a receiver, a function
   type's parameter or result and a lambda's it is O36's error, as the design said.
2. **An owning parameter is an owner local of its callee.** Its reach is its implicit scope variable `&p` (O4b), bound at
   each call from its argument as an owner local's initializer gives its reach (`ownDeclReach`): `take x` - x's region's
   reach; a constructor made for it - the program's scope if it holds nothing from outside, else the caller's block; a
   call's owned result - **it lands with `&p`** (O18a), where another argument binds it, else where the call's own result
   lands, as any call made for a parameter does. The callee registers the parameter's slot on its own scope at entry
   (`__olang_own_drop_slot`, the destructor node an owner local gets), so it is released as the callee returns, on every
   way out, unless `take` or a `return` emptied the slot. Inside the callee its loans are an owner local's (its root is
   the parameter itself, not the caller's argument), and the callee's release of it is no release effect on its caller's
   roots: the caller gave it up, so no loan of the caller's can be on it (a `take` under a live loan is C1's error).
3. **An owned result is the caller's**, and is an owner only in a move position - `x := f()`, an own slot, an owning
   parameter, a `return` of an owned result - or standing as a statement, which releases it at once (as `take` alone
   does, O35). Anywhere else (`f().fd`, a borrowing parameter, a `$` operand) it is O37's error naming `x := f(...)`: read
   in place it would be owned by nothing. Its result scope lands at the slot's reach (O18a), so what the callee refers to
   from the object outlives the slot; a scope argument (E25) must outlive it instead.
4. **`return x` of an owner local or an owning parameter moves it**: in a function with an owned result it is `return take
   x`, its slot emptied so its registration releases nothing. Deferred code reading `x` after that `return` is an error
   naming `return take x` - it would read null where the program says `x`.
5. **An owner local the function returns whole lives for the result.** Declared in a block whose later statements
   `return` it (D3a makes the name one variable there), its reach is the result scope - `r own mut Node& = Node(n);
   r.next = build(n - 1); return r` builds what `r` refers to where the caller puts the result - as O26a moves a returned
   value local.
6. **Function values and tasks never own.** A function owning a parameter or giving an owned result is called by name
   only: made a value it is O36's error, reported once - the read becomes the unknown stand-in, so no misfit follows it;
   a `Call` method owning a parameter never fits a function type at all. A task's call may not own or give an owned result
   (O41's "not yet"): the owner would have to cross the join.
7. **A type variable binds the borrow.** `TypeUnify` drops `own` from what it binds, so an owner never reaches a generic
   by inference - `id(take x)` is O34's "take gives an owner, which only an own slot receives", and an own type argument
   stays T25e's "not supported yet".
8. **An owned result's `catch default` is `null`** for now (O34), reported once, where the default is built.
9. **A read-only owned result keeps its permission.** A built result is made writable (T25c: only the caller holds it);
   one written `own Node&` stays read-only.
10. **An element read out of an own array refers where its slot's would - the region's reach - in every scope walk**:
    `RefExactScope` read the borrow's region for an element, so `a[i] = old[i]` from one own array into another was O20.
    It now answers the reach, as `operandIndexAt` already did for a field's read (13.1, decision 2).

**Found and fixed on the way (pre-existing)**
- **`take` moved an owner of any type into any own slot**: `s.other = take s.cur.sock` put a `Sock` into a `Conn` slot
  (the first cut compiled it). A move now fits the slot's type and permission (`ownFitsSlot`): E12's "expected own Conn&,
  found own Sock&".
- A function type's parameter was rendered `c mut own Conn&`; `own` is written before `mut`, as in source.

**Over-rejections left** (each refused, never unsound): an owner local made by a call's owned result reaches its block
(`x := mk(); s.cur = take x` with `s` outliving the block is O10c, though `mk` may refer to nothing outside - the
direct `s.cur = mk()` works); a constructor made for an owning parameter with an argument from outside reaches the
caller's block; growing a buffer of references through a *borrowing* parameter (`v.data = grown(v.data, n)` with
`String&` elements) is O10c - an obligation cannot tell the buffer's storage, in the region, from what its elements refer
to, outside it (r06's limit) - and the owning form (`grownFrom(take v.data, n)`) is the one that works; a conditional
or a match is still no move position.

**Measured**: two million turns each building three short lists by owned results and cutting them through owning
parameters ran in 11 MB peak (`m1`) - every region released as its owner lets go.

**Tests**: shared.olang's section "owning parameters and owned results": released at the callee's end, moved on into a
holder, handed in and back, let go as a statement, made for an owning parameter (released there, or landing with it and
moved on), read back after the arena churns; a list built by owned results and cut by an owning parameter and a
`Vec`-shaped buffer grown both ways, each baked by K2 and decided by an assert (S18c) beside the run time; text elements
of a buffer grown by moving it, read back after a churn. checks cases: t25eparam (a constructor's parameter), t25etrait,
t25eresults, o36receiver, o36functype, o36lambda, o36funcvalue, o36resultvalue, o37use, o37borrowparam, o37default,
o34deferread, o34borrowtoown, o34localtoown, o34taketype, o34takegeneric, o39ownparam, o39takeandborrow, o41ownsig,
o10cownresult (an owned result holding a borrow of what its caller then releases) and o10cownlanding (an owned result
landing with an owning parameter where a loop body's text may not reach). Scope fuzzer: `ownCallOp`'s twelve shapes.

### 13.3 Owning value types and borrowed copies

`v := Vec<I64>()` is a value: a local of an owning type held by value, an **owner value local**, whose own fields'
objects it owns and releases as its block closes. `b := v` is a **borrowed copy** - read-only, owning nothing, a loan on
everything `v` owns until `b`'s last use; `take v` moves `v`'s owners out, leaving `v` its type's zero value; and
`v.Clone()` (a method returning `Vec<T>` by value, an owned result) copies. The user's QJ1 answer, as section 10 put it.

**Decided**
1. **O31 narrows to two places.** An owning type other than an own reference is held by value by a local of a function,
   test or lambda body, and by a function's result - nowhere else yet: a field, an element, a parameter, a global or a
   type argument holding one by value is O31's error, now naming `Server&` or `own mut Server&`. A field holding a `Vec`
   by value would need the drop function to walk value fields and a borrowed copy read out of a member path; a
   parameter by value, a borrowed copy made at each call. Both are additive. After the error the type is unknown, so one
   cause is one error.
2. **What makes an owner value local** (`ownValueDecl`, `ownValueGiven`): a value made there (a constructor call), its
   type's zero value (no initializer), `take` of another owner value local, or a call's owned value result. `x := y` from
   a local holding such a value is a borrowed copy instead; a typed `x T = y`, or an assignment `x = y`, without `take`
   is O34's error naming `take y`; a conditional or a match is still no move position; a `catch default` giving one is
   O34's "not supported yet". An owner value local is assigned only with `=` (`+=` is O34's error, one error).
3. **A borrowed copy is rooted where its source is, and borrows each of its source's own fields** - one synthetic read
   per own field (`ownCopyReads`), each a loan held until the copy's last use, so a release or a move of the source while
   the copy is live is O39's error, and a copy of a copy borrows from the first source. It is a read-only copy (T25c), so
   it is not lent writably and nothing is written through its references; its plain fields are its own to write. Taking
   from it, or from a part of it, is E34's error naming its source; assigning it, O32's (`declare another with ':='`);
   assigning one of its own fields, O32's naming the source.
4. **Reach** (O33): an owner value local whose type can refer to nothing outside the objects it owns (`ownRefersOut`:
   its own references' objects refer nowhere, its other parts hold no reference) reaches the program's scope and moves
   anywhere; otherwise it reaches its storage's scope - its block, or the result scope O26a moves it to. The latter is
   conservative: `{ x := take h; h = take x }` in an inner block is refused although `x` refers only where `h` did. The
   own-reference local's finer rule (the source's reach for `take`) is not taken over, because a store into an owner
   value local's own non-own fields is judged against its storage, not its reach - so the reach must not be longer than
   the storage while such fields exist. Splitting those cases is additive.
5. **A returned owner value local is moved** (`return x` is `return take x`, as for an own reference local), and it
   lives in the result scope (O26a) - storage and all - so `c := Vec<T>(); ...; return c` is correct as written.
6. **Releasing**: the declaration registers the local's slot with its block's scope, its zero value stored first, the
   drop function `@olang.owndrop.<T>` releasing its own fields (the last first) as the block closes, on every way out;
   an assignment releases what the local held after the value is computed (S4), then copies the new owner in; `take x`
   copies the value out and stores the zero value; an owned value result used as a statement is released at once.
   Codegen's constructor calls of an owning type made as temporaries are registered like destructor-bearing ones (O16) -
   the first cut copied the instance into the arena only for destructors, so a temporary's own fields were never
   released (`$OwnBuf(4)`, a constructor argument).
7. **The evaluator** (K1): `take` of an owner value copies the value and stores its zero value, so a global computed
   through owner value locals, borrowed copies, `take` and `Clone` bakes (shared.olang's `OwnValuesBaked`, the agree
   fixture's `Bufs`) and agrees with the run time and `-i`.
8. **A lambda does not capture an owner value local** (O32), as for an own reference local: it captures a borrowed copy
   made before (`b := v`). An owned value result is an owner only in a move position or as a statement - `a.Clone().n`
   is O37's error, as for an own reference.
9. **A type variable a value of an owning type reaches binds the reference** (`unifyTempAsRef`, G9d's rule for
   destructor-bearing values): `id(v)` lends `v`, and `id(take v)` is O34's error.

**Found and fixed on the way**
- `List<Vec<I64>>` gave O31 and then two E12 errors about the list; `Array<In, 2>` with `In` owning, O31 twice. The O31
  type is unknown now, and the walk skips unknown types.
- Four checks cases changed meaning, since `s := Server()` now declares an owner value local: `e34notown` takes from a
  plain struct now, `o40lambda` and `o41clause` declare a reference (`s mut Server& = Server()`) to keep testing what
  they test, and `o31byvalue` holds an owning type in a field.

**Over-rejections left**: an owner value local made in an inner block, or by `take` or a call's owned result there,
whose type can refer outside what it owns, moves out of that block only through a call's owned result (decision 4); a
`Vec` of references grown with an own local and `take` reaches the local's block (13.1's rule for an own array local) -
growing it through a call's owned result (`v.data = grownFrom(take v.data, n)`) is the form that works; a borrowed copy
is not lent to a generic's `<T>`, which binds a writable reference (decision 9). Not built: an owner value moved into an
own reference to its type (`h.b = take a`, `b own mut Buf&`) is E12's mismatch - it would need a region made around
the moved value.

**Measured**: 200,000 turns each building an owner value local of 20 elements, copying it, moving the copy into
another and letting a copy go ran at a 2 MB peak - every buffer released as its owner lets go.

**Tests**: shared.olang's section "an owning type held by value": owner value locals, borrowed copies, `take`, `Clone`,
an owned result let go, baked by K2 and decided by an assert (S18c) beside the run time; destructor counts at a block's
end, at an assignment, for an owned result let go, per loop iteration and for `take` as a statement; text in a returned
owner value read back after a churn, and one moved out of an inner block (numbers only). The agree fixture's own part
built, built `-d -s` and interpreted. checks cases: o32copypush, o32copywrite, o32copyassign, o32copypart,
e34copytake, e34copytakepart, o39copyrelease, o39copymove, o39copychain, o39copylambda, o34valuecopied,
o34valueassigned, o34valuenotowner, o34valuecond, o34valuedefault, o32valuecapture, o31valueparam, o37valueuse,
o34valuecompound. Scope fuzzer: `ownValOp`'s twelve shapes - borrowed copies of the holder read before a release, or
kept across a release, a move or a reassignment (refused); the holder moved out and back, given an owned value result,
one let go, parts of one moved in; one made in an inner block and moved out (refused). The lambda shape captures a
borrowed copy of the holder now (decision 8). Under b50019d and now, the same generator: own-only seeds 1-40 ran 206
and 181 scenarios (274 and 299 refused), mixed seeds 100-139 ran 201 and 199 (279 and 281 refused), no findings - the
extra refusals the borrowed-copy shapes that must be refused, which b50019d accepts with the holder a reference.

### 13.4 Small regions, and releases that do not nest without bound

**Decided**
1. **A region of one small object is one allocation.** An object of 2 KB or less gets a block from the C allocator
   holding the region's 48-byte header, the destructor nodes it will register (24 bytes each: its owners' release,
   its destructor), the word before the object and the object; `__olang_own_free`'s `free` of the header frees it
   all. A larger object, and every region under `-s`, takes a chunk as before. The C allocator's own size classes
   are the small classes the design (section 3, decision 15) asked for, so no second set of classes was written
   beside O8b's. What the object builds later takes chunks as any scope does.
2. **Registration takes no allocation.** An owning struct's object registers its owners' release, and a
   destructor-bearing one its destructor, on its region - each a 24-byte node bump-allocated in the region, which was a
   4 KB chunk per region however small the object. `__olang_own_new` now reserves the nodes before the word (in the
   small block, or in the chunk's first allocation), and `__olang_scope_push_dtor` links a given node; registration
   still happens after construction (O16), so the order is unchanged.
3. **A release nests at most 256 deep.** A region's destructors release what the object owns, each in turn, so
   releasing a chain of owners recursed as deep as the chain was long and overflowed the stack - a million owners
   linked through own fields crashed at the end of `main` (300,000 on a 256 KB stack). Beyond 256 nested releases on
   a thread a release is pushed on a per-thread stack, which the 256th release drains once its own region has closed;
   each batch one release defers is reversed, so they are finished in the order made, depth first. The only order
   that changes is between a deferred release and the rest of the region it was made in (its remaining destructors
   now run first) - nothing an object refers to is in its owner's region (O33, O34), so that is memory-safe and
   unobservable except as destructor order 256 releases down. A test abandoned inside a release resets the count
   (`__olang_unwind_to`), leaving what it had deferred unreleased.

**Measured**: a million owners linked through own fields - 4.2 GB peak and 3.45 s, then a crash, before; 111 MB and
0.18 s, and a clean exit, after.

**Tests**: shared.olang releases 300,000 owners with destructors checking their order, and a fork of owners 300 deep
whose order matches the shallow case; `checks/cases/o35deepchain` releases 300,000 owners on a 256 KB stack (the old
compiler crashes); the scope fuzzer builds chains of 260-268 owners through `sub` and releases them later (own-only
seeds 1-40: 268 scenarios run, 212 refused; mixed seeds 100-139: 209 run, 271 refused; no findings - the old compiler
cannot compile the own preamble, which holds own arrays).

## 14. Phase 2a's soundness review, fixed (2026-10-11)

The review of phase 2a (`/home/user/review/own3`) found four bugs the compiler accepted at 079921e; all are fixed, each
with must-fail cases or a run check and a corpus test read back after a churn.

### 14.1 F1: an own array lent to a callee that stores into it (O17, O17a, O33)

An own array's borrow is a **split value**: its storage, the buffer, is its region, while its elements' referents live
where the slot's container keeps them (the element reads are retagged to the slot's reach, `operandIndexAt`,
`RefExactScope`). Lent whole, the callee's variable was bound to the buffer's region, so what `fill(a)` built and stored
into `a[0]` lived in the region and was freed with the buffer while `e := b.names[0]` said it lived on. The same through
a generic (`setFirst(b.names, $5 "x")`, the value built where the callee's variable is bound), a lambda capturing a
local holding the borrow, a task, and a slice of the borrow.

**Decided** (the coordinator's call; the details mine): O17/O17a apply unchanged - the lend is refused where the callee
(a function, a constructor, a lambda by its capture's scope, a task's call) can store into what it is lent, read off its
body (`calleeStoresRegion`, settled with every other lend once every body is checked); reading through it and writing
numbers into it stay free. The callee's variable is not bound to the elements' scope: a callee could then hand the
buffer out as living there. The diagnostic (`ERR_OWN_ARRAY_LENT_STORES`) names fixes that compile - lend the callee what
holds the array (`fill(b)`, which builds where `b` lives), or hand it the array as an owner, `b.names = f(take b.names)`.
The coordinator's suggested wording, "build the new array in a local, then move it in", does not compile: an own local
lent is the same split value, and a plain array cannot be moved into an own slot (O34).

**Found on the way, fixed**: an element store through a **slice** of an own array's borrow (`b.names[0:2][0] = t`) was
not retagged - built in the buffer's region, read back as living in the slot's reach (a use-after-free on 079921e).
`ownArrayRegionOf` sees through slices for the retag, `RefExactScope` and the loan walk.

**Over-rejection, recorded**: O17 reads a body's stores syntactically, so a callee that only permutes the elements - the
prelude's `Reverse` and `Sort`, a swap through a local - is refused as well: a local copy of an element stored back is a
store from outside the region, and a call through `less` with elements is taken to store. Both are conservative for
every split value; a precise reading (a local holding only region reads; a function value cannot keep its arguments,
T22a) would lift it, and `Vec<String&>.Sort` will need it.

### 14.2 F2: a borrowed copy kept by a call (O38, O39)

*(Reversed by own4, section 15.1: a borrowed copy is now confined to this function's locals, and a call that may keep
it is refused rather than followed.)*

A borrowed copy's loans lasted until its own last use, so a call keeping it - `l.Push(b)`, `m.Put(1, b)`, `put(g, b)`,
`g.set(b)`, a lambda capturing `b` pushed into a `List` - let `v.o = null` release what the kept `b` still named.

**Decided** (the coordinator's design, one detail changed, mine): a call that may keep an argument derived from a loan in
another argument - the callee's checked obligations relate their scopes (O10b), or a derived obligation names the other
(O22) - stores it there, as an assignment would. The loans are held until the end of the **block the destination lives
in** - the root local's block for a value local or a handle, the body's for one reached through a reference or a
parameter - not until the destination's last use, as `ownHoldMore` holds a store into a local. A holder by the local's
last use is unsound wherever the storage has another name: a reference to the local taken before (`gr mut Big& = g`,
then `g.x = b`, read through `gr`), a copy of a handle made before (`l2 := l` shares the list's state), a field of a
handle. Both were found by reproducing them (the first in the direct store path, pre-existing). A block outlives every
such name (§8.4), so holding to its end is sound; the price is that a release after the destination's last use but
before its block ends is refused - put the destination in a block of its own. Where the destination cannot be followed -
the callee's body unknown or generic, a destination in a global or a lambda's capture - the call is refused
(`ERR_OWN_KEPT_UNFOLLOWED`). Not refused, by the language's own rules: what a call keeps in its result - a constructor's
instance, read off its own built body, a borrowed result - is held by the local given it, as before; a call through a
function value keeps nothing but in its result (T22a); a borrow of an owned object kept anywhere is kept in its region
(O33); an owner moved into an owning parameter or an own slot holds no loan.

**Found on the way, fixed** (pre-existing, same class): a value derived from a loan stored **through a reference**
(`gr.x = b`) gave no holder at all, and one stored into a local a reference had been taken to was held only by that
local; both are held to the end of the storage's block now (`ownHoldUntil`), and a store into a global or a capture is
`ERR_OWN_STORED_UNFOLLOWED`.

Holders kept to an outer block's end are added while an inner block is walked, so `ownFramePop` removes every holder of
the frames it pops wherever it sits in the list (it stopped at the first outer one, leaving inner ones - a task's
`always` holder among them - alive past their block).

### 14.3 F3: an owner left behind by an argument that leaves (O35, O36)

An owner made, taken or given for an owning parameter sat in a register until the call; an argument after it that left
the expression (`try g()` propagating, a clause's `break`, `continue` or `return`) left it released by nobody. So did the
region `cgOwnNew` makes before a constructor's arguments, and an own array's buffer made before its fill.

**Decided** (the coordinator's call): each is held in a hidden owner slot of the frame, registered for release before it
is filled (as a constructor temporary is) and emptied when the call takes it - only where a later argument runs code
(`cgRunsCode`), so a call whose arguments are plain values pays nothing.

### 14.4 F4: a destructor's own owner locals (O35, C9a)

A destructor's top level is the scope being closed (C9a), and its owner locals were registered for release there - with
a slot in the destructor's frame, read by the release after the destructor had returned (a segfault on a chain of 1000).

**Decided** (the coordinator's call): an owner held in a frame's storage - an owner local, an owner value local, an
owning parameter, a hidden owner slot - is registered on its own block's scope, and at a body's top level on the frame's
private scope, which a destructor closes as it returns, on every path; never on a constructor's instance scope or a
destructor's closing scope (`cgOwnReleaseScope`). Deferred code at a destructor's top level runs first, and lambdas made
in one are unaffected (both checked).

### 14.5 Tests and the fuzzer

`checks/cases`: `o33ownarrcallee`, `o33ownarrgeneric`, `o33ownarrlambda`, `o33ownarrtask`, `o33ownarrslice` (F1),
`o38keptpush`, `o38keptmap`, `o38keptcall`, `o38keptmethod`, `o38keptgeneric`, `o38keptlambda`, `o38kepttask`,
`o38keptthroughref`, `o38keptaliased` (F2) - every one compiles on 079921e. `checks/checks.olang`'s `ownleave` scenario
builds `checks/fixtures/ownleave` (F3's shapes and F4's chain, counting every object made and released) plain, `-s` and
`-d`, and under valgrind where it is installed: 079921e prints `dropped 0` and segfaults, valgrind reports the regions
definitely lost. shared.olang: an own array filled through its holder, as an owner and through a slice, baked while
compiling and at run time (837 both); a borrowed copy kept in a List, a Map, a struct and a lambda, read back after a
churn, and one a constructor keeps in its instance, released after the instance's last use; owners released when a
later argument leaves; and a chain of 1000 destructors holding owner locals.

The scope fuzzer's own mode writes the review's shapes (`ownReviewOp`, one own statement in seven): the three F1 lends,
a read-only lend, the six F2 keeps and a kept copy used without a release, and - in programs with destructors - F3's
three and F4's chain. On 079921e, own seeds 1-120: 524 scenarios run, 916 refused, **41 findings**, every one holding
one of these shapes (F1 in 28, F2 in 16, F3 in 14, F4 in 7). Fixed, own seeds 1-400: 1256 run, 3544 refused, **no
findings**; mixed seeds 100-179: 377 run, 583 refused, none. Compiling each scenario of own seeds 1-40 alone under both
compilers, every scenario 079921e accepts and this refuses holds one of the shapes, or the old `ogrowAt` lend - a
callee storing a node built in the buffer's region into an element's field, the F1 shape once removed.

## 15. own4: borrows are confined, F2 reversed (2026-10-11)

The review of phase 2a's fixes (`/home/user/review/own4`, at 67cb5b1) reproduced six bugs the compiler accepted: four
use-after-frees (N1, N2, N4, N5) and two leaks of regions and destructors (N3, N6), plus a growth in a loop condition
(M1). All six reproduce on 079921e too.

### 15.1 The pattern, and the reversal of F2's extension (O33, O38)

N1, N2, N4 and N5 have one cause: a value carrying a loan was allowed to be **kept** - stored where another name reaches
it - and the checker then had to find every holder and keep the loan alive as long as each. F2 (section 14.2) extended
that chase from stores to calls, holding the loans to the end of the destination's block. The holders it could not see:

- **N1**: a destructor reads the kept copy - a resource made earlier in the same block (`w := Watch()`, destructed
  last, O15) given the copy (`w.x = b`, `put(w, b)`) is destructed after the owner value local's owners are released at
  that block's close, so its destructor reads freed objects;
- **N2**: a spawn target is set on the task's thread from the call's result (`spawn r = id(b)`, a value holding `b`,
  one of several targets, a closure capturing it) and held nothing after the join;
- **N4**: an owner given the copy - an own local or an owning parameter receiving an owned result whose own array holds
  `b` - holds no loan (owners never did);
- **N5**: a handle's copy made in an inner block (`l2 := l`, a for-in element, a Map's copy) keeps `b` in state that
  lives where the original was made, an outer block, while the hold ended with the inner one.

**Decided** (the coordinator's call, reversing F2's extension): a value carrying a loan of a **borrowed copy** - the copy,
a borrow read out of it, anything built from one - may be held only by locals of the function it is made in: the `:=`
locals holding it and the value locals built directly from them (a struct or an enum made holding it, a lambda
capturing it, a copy). Their loans last to each holder's last use; where a holder's storage has another name (a
reference taken to it, E12c), to the end of its block. Anything that would keep it elsewhere is **refused**, not
extended (`ERR_OWN_BORROW_KEPT_BY_CALL`, `ERR_OWN_BORROW_STORED`, `ERR_OWN_BORROW_IN_OWNER`, each saying to keep a
`Clone()` instead):

- a call whose checked body may keep it beyond the call - in another argument, its receiver or a collection
  (`List.Push`, `Map.Put`, `put(g, b)`, `g.set(b)`), read off the callee's obligations (O10b, `ownKeepDests`) - or
  whose body is not known (a generic, an `extern`); a task's call among them;
- a store through a reference or into a handle (a handle's state is reached through its reference field), into a
  global or a capture;
- a spawn target given a call's result made from it, whenever that result can hold a reference;
- an owner made from it or holding it - an owning parameter given one, a call's owned result or a result of a type with
  a destructor (`ownTypeOutlivesLoans`) that may keep the argument;
- a lambda capturing it, kept by any of these.

A borrow of an owned object itself needs nothing new: §8 already keeps it in its region (O33). Loans now carry whether a
borrowed copy made them (`ownLoan.copied`); only those are confined. What the review found was a holder the checker
could not see; under confinement there is no holder outside the function's own locals to see, so each N shape is one
error where the copy would leave. The F2 machinery that followed calls (`ownCallKeeps`, `ownDestFrame`, the `kept` loan
and its note, `ERR_OWN_KEPT_UNFOLLOWED`, `ERR_OWN_STORED_UNFOLLOWED`) is removed; `ownHoldUntil` stays for the one
place it still guards a direct local store - a value stored into a local a reference was taken to.

Reading stays free: a borrowed copy may be passed to a call that keeps nothing (`count(b)`), captured by a lambda
handed to a helper that runs it (`Any`, `Fold` - T22a), made into a struct local, rendered and compared.

### 15.2 N3: an argument that leaves by a checked operation (O35, O36, R20)

F3 held an owner (for an owning parameter, a constructor's region, an own array's buffer) only where a later argument
"runs code" (`cgRunsCode`, written for E11a's joins), which takes a checked index, slice, division, conversion or `as`
for a plain operation. Under `try` each can leave by propagating a `BuiltinError`. **Decided**: an argument can leave
whenever it holds an operation that can fail or jump - a call, a checked operation under `try` (`checkRoot`), a tried
operation, a catch clause - `cgMayLeave`, keyed on at the three F3 sites.

### 15.3 N6: a constructor failing after making its own fields (O35, C2a)

A constructor's own field was registered for release by nobody until the instance was assembled, so a body failing
first - its own `error`, a `try` it does not catch - left the field's region and destructors to nobody. **Decided**: a
constructor's own fields are registered on its frame (`cgOwnReleaseScope`, as any owner local) from when they are made;
assembly takes them (`cgCtorTakeOwners` empties their slots after the instance's value is computed, before the frame
closes), and a failing constructor's frame releases them on its way out, the test unwind included.

### 15.4 M1: a hold in a loop's condition

F3's hidden owner slot registered a release node on the enclosing block's scope every time it was evaluated, and a loop's
condition or post clause is evaluated again and again in one open scope: 4M turns grew ~98MB. **Decided**: the slot is
`{ owner, registered }`; a hold registers only while the mark is clear and sets it, and the release
(`__olang_own_drop_held`, `_aheld`) clears it with the slot, so the scope's next opening registers again. What an earlier
evaluation left behind - it left before the call took the owner - is released before the slot is reused. 4M turns run in
flat memory (1.6MB peak).

### 15.5 New over-rejections, recorded

- `g(Names())` - a constructor call of an owning type passed to an owning parameter - is O34's error, while
  `x own mut Names& = Names()` then `g(take x)` compiles.
- Storing existing text into an own array's elements in a callee (`setAll(arr, s)`) is F1's refusal even where `s`
  lives in the program scope.
- An own struct result holding a parameter's reference (`return Box(x)` for an `own mut Box&` result) is C2d's error,
  while the own-array form of the same compiles.
- Confinement refuses keeping a borrowed copy even where nothing is released while it is kept (`l.Push(b)` with no
  release before `l`'s last use, accepted by phase 2a) - keep a `Clone()`.
- Borrowed copies cannot reach a generic's `<T>` (T25c) - known.

### 15.6 Tests and the fuzzer

`checks/cases`: the nine `o38kept*` cases of section 14.5 now fail with the confinement errors (`o38keptaliased`, a local
a reference was taken to, still with O39 - its loans held to the block's end), and twelve more, every one accepted by
67cb5b1: `o38dtorstore`, `o38dtorcall` (N1), `o38spawnborrowed`, `o38spawnvalue`, `o38spawntwo`, `o38spawnclosure`
(N2), `o38ownlocal`, `o38ownassign`, `o38owningparam` (N4), `o38handlecopy`, `o38handleloop`, `o38handlemap` (N5). An
own object built from a borrowed copy, a global and a capture given one are refused before O38 already (C2d, O1b), so
they need no case. `checks/fixtures/ownleave` gained N3's shapes - an index, a division, a conversion, a slice and `as`
failing under `try` after an owner was made, a constructor's region and an own array's buffer - and N6's (a
constructor failing by `try` or `error` after making one field, or two and an own array), counted made and released,
built plain, `-s`, `-d` and under valgrind; and `ownloop.olang` runs M1's condition and post clause 4M turns under
`ulimit -v 50000`. shared.olang: the F2 test of a copy kept in a List, a Map, a struct and a lambda is now one of a copy
held by locals (a copy of it, a struct local, a lambda local) read back after a churn; and owners left behind by a
checked index, division and slice propagated out of a helper, and constructors failing after making their fields, all
released (a built one with its instance).

The scope fuzzer's own mode writes own4's shapes (`own4Op`, half of `ownReviewOp`'s statements, which became one own
statement in four): a borrowed copy of an owner value of a plain type (`OPlain`, nothing storable through it, so O17
lends it) kept by a spawn target four ways, an owned result or an owning parameter, a handle's copy in an inner block, a
for-in element and a Map's copy; in programs with destructors, a resource given the copy beside the owner (N1), an owner
left by a checked operation propagated out of a helper or caught by a clause (N3), and constructors failing after
making their own fields (N6). On 67cb5b1, own seeds 4200-4299: 355 scenarios run, 845 refused, **67 findings**, every
one holding an own4 shape (N1 2, N2 26, N3 3, N4 17, N5 28, N6 1; some hold two). Fixed, own seeds 4000-4299: 765 run,
2835 refused, **no findings**; mixed seeds 100-139 and the checks scenario's seeds: none.

## 16. own5: derived fields, references to an owner value local, every way out of a test (2026-10-11)

The review of own4's fixes (`/home/user/review/own5`, at e3ded09) found that confinement held almost everywhere, and
reproduced three defects, each also present on 079921e.

### 16.1 F1: a callee keeping an `&p` field of its argument (O38, O23a)

`w := W(b)` with `W` holding `f Outer&o = o` (an `&p` field), then a callee given `w` that keeps `w.f` -
`l.Push(w.f)` in a function taking `w` by value, in a method on it, or `g.x = w.f` into another argument. The field is
read at a **derived** scope variable of the parameter (O23a), and the obligation "derived outlives `l`'s scope" was not
attributed to the parameter: `ownKeepDests` and `calleeMayHoldArg` matched only the parameter's own variable.

**Decided** (the coordinator's call): a derived scope variable counts as its parameter, at any depth, wherever "can
this callee keep this argument" is asked. One predicate, `scopeIsParams`, now answers it for `ownKeepDests` (and the
destination side: kept into another argument's derived scope is kept into that argument), `calleeMayHoldArg`,
`calleeMayKeepArg` (O26a's question too), O17's `paramTransient` and the O10c note's `argForScope`. O17's region facts
need nothing: a store or hand-out reaching a derived region is resolved exactly by each caller from the argument's own
bindings (O23a) - nothing there asks which parameter an obligation names. Every other place matching an obligation
against a variable compares it with the result scope, not a parameter.

### 16.2 F2: an owner value local O26a moved, released at the return (O38, O26a, O35, K1)

`fn mk3() mut Outer& { v := Outer(); v.o = Inner(3); return v }`, and `h := Hold(v); return h`: O26a puts `v`'s storage
in the result scope, but its owners are released as its block ends, so the caller held nulled slots (a null trap at run
time) while the evaluator, which gives a release no meaning, baked 3 and decided the assert.

**Decided** (the coordinator's call; the mechanism mine): a reference to an owner value local's storage - borrowed by
E12c (a reference local, a reference parameter, a receiver, a field), or sliced - is a borrow of that owner: a loan on
every object it owns, made from reads of its own fields taken once as it is declared (`ownValueReads`) and marked on the
borrowing operand (`ownValueBorrow`), confined as a borrowed copy's is (O38), and never returned. A return reaching it -
the reference itself, or anything holding it - is `ERR_OWN_RETURNS_OWNER_BORROW`, naming the owned value result (`fn
mk3() Outer`, where `return v` moves the owner). Its loans meet releases as the borrow it is, not as a copy: the owner
releases nothing through its own name while a local holding one is used after (`r mut Outer& = v; v.o = x; r.o` is
O39's error), but a release through the borrow itself, or any other reference, is the borrow's - what it reads it reads
through the owner's slots, `null` or the new owner after a release, never freed memory - and an argument's loan is used
by its call alone, once every argument is evaluated (`ownStash(s, take s.cur)` stays legal).

**Two places the build departs from the decision, and why.** (1) *O26a still moves an owner value local*: the decision
said it never should, but the move form it names as the fix needs it - `fn mk3() Outer { v := Outer(); v.name = "n" $k;
return v }` builds `v.name`'s text into `v`'s storage, which is in the result scope only because O26a put it there; left
in the block, that return is O26's error. What O26a's move made unsound is a reference reaching past the release, and
the return rule refuses every one. The same rule covers `h := Hold(v); return h` without excluding `h` from O26a - which
also keeps the error the one that names the fix, instead of O26's "returns a local's storage". (2) *Owners made from such
a borrow*: an owner made from a reference to an owner value local's storage is held to O34's reach, as one holding any
reference to a block's storage is, not refused outright as one made from a borrowed copy is (a copy of the owner's
pointers would dangle once it releases; a reference reads through its slots). Refusing it would refuse the corpus's
`OwnArrHolder(x, h)`, whose constructor moves `h.cur` out (`ctorHeld` cannot tell a moved owner from a kept argument). A
value with a destructor stays refused - which is what "a destructor-bearing holder counts as a use at its block's end"
asks for, in both declaration orders.

**Found on the way**: the own walk asked `calleeMayKeepArg`/`calleeMayHoldArg` with `obligUnsettled` still set on every
function that had been in a call cycle while bodies were checked, so such a callee "might keep" anything - `a.Clone()` on
an owner value local was refused. The walk runs after every obligation is known (`ownObligationsKnown`). And a value
derived from a call now carries only what the callee may keep in its result (`ownKeptOnly`): a holder or a confined
value took every argument's loans before, so `c := a.Clone()` held a loan on `a`'s buffer (O39 on the next `a = ...`).

### 16.3 F3: an owner held in a register past a guaranteed check, inside a test (O35, S18, P1d)

`eat(Res(1), a[lo:hi])`, `eat3(Res(2), e as E.A)`, `eat(Res(3), Array<I64>(n))` inside `test` blocks: the slice, the
`as` and the array length fail a guaranteed check, which outside a test aborts the process but inside one abandons the
test (S18) - and the owner, held in no scope, was never released.

**Decided** (the coordinator's call): `cgMayLeave` is a whitelist - an argument cannot leave only if it is built from
literals, `null`, reads of locals, parameters, globals and fields (and an array's length), unchecked numeric operators
and comparisons on primitives, and unchecked indexing; anything else holds the owner in its slot. **Measured** (callgrind,
`-a x86-64-v3`, 1M turns of four calls each giving an owner made in place, two of them now held - a slice and an `as`
argument): 1,441M instructions on e3ded09, 1,570M now, +9%: about 65 instructions per newly held call, 42 of them the
registration on the loop body's scope (made once per opening of the scope, M1) and the rest the slot and its release at
the close. Calls whose later arguments the whitelist admits pay nothing; the leftover release is skipped inline where
the slot is empty (it was a call each time). Outside a test a guaranteed check ends the process, so there an
expression is left only by `try`, a catch clause or a clause of a match value: holding for anything else buys
correctness in tests alone, at these instructions in every build. Holding for the whitelist only in test builds would
make it free again outside them - recorded, not done.

### 16.4 Tests and the fuzzer

`checks/cases`: `o38derivedvalue`, `o38derivedmethod`, `o38derivedfield` (F1), `o38ownerreturnref`,
`o38ownerreturnhold`, `o38ownerrefstored` (the review's n1v), `o38ownerrefpush`, `o39ownerref` (F2) - every one
compiles on e3ded09. `checks/fixtures/ownleave/ownabort.olang` (F3): five tests abandoned past an owner held for a call,
a constructor's region and a moved owner, then one asserting every owner made was released - `-t` and the test binary
under valgrind, both in the `ownleave` scenario (e3ded09: `assertion failed`). shared.olang unchanged, 733 tests; the
review's F2 move form bakes and runs the same (`baked 10 run 10`, `-i` and `-s` agreeing).

The scope fuzzer's own mode writes the shapes: `own5Op` (F1's three keeps through an `OW` field, F2's two returns as
helpers of their scenario), and in programs with destructors test blocks with some of F3's five shapes, run by `-t -d -s`
and checked by their last test - the harness's first test-mode check. On e3ded09, own seeds 7000-7099: 280
scenarios run, 920 refused, **52 findings**, every one an own5 shape (F1 21, F2 14, F3 21 - by its tests; some programs
hold two). Fixed, own seeds 7000-7299: 775 run, 2825 refused, **no findings**; mixed seeds 100-139 and the checks
scenario's seeds: none.

### 16.5 The next phase's first items

- **A borrowed result of an own field through the receiver** - `fn (v Outer&) First() Inner&v { return v.o }`,
  `View() Array<I64>&v { return v.buf }` - is O10's error today, with or without `mut`. `Vec<T>.View()` needs it.
- **O17's precise reading for `Sort`** (section 14.1): a callee only permuting a split value's elements is refused.

Both go with the `Vec<T>` phase, each with a soundness review.

## 17. own6: one of several results, conditionals of owners, a result in flight (2026-10-11)

The fourth review (`/home/user/review/own6`, at 79bf11c) found the three relaxations of section 16 holding everywhere but
one place, and four defects: N1, new in 79bf11c, and N2, N3 and N3b, present on e3ded09 too. The coordinator decided each.

### 17.1 N1: a borrow handed back as one of several results (O38, D8c)

`ownKeptOnly` (16.2) makes a call's result carry only the arguments `calleeMayKeepArg` says the callee may keep in its
result. That asked the result's own scope variable and the result scope - and a multi-result result (D8c) is an
anonymous tuple with neither, its elements carrying the scope variables. So `fn two(x Inner&) (Inner&x, I64)` "kept
nothing", every loan on its argument was dropped, and O39, O38 and 16.2's return rule all passed: `c, k := two(h.cur);
h.cur = null` then `c` read freed memory; through a borrowed copy, into a `List`; and `a, b := v.Two(); return a` was
16.2's F2 again.

**Decided** (the coordinator's call): `calleeMayKeepArg` walks every scope variable the result type names, at every depth -
a tuple's elements, a struct's or an enum's type arguments, an array's element, a function type's parameters and result
(`resultScopeVarsOf`) - and the result scope; the argument is kept when any of them is the parameter's or derived from
it (`scopeIsParams`), or an obligation of the body ties the parameter's scope to one of them. A kind the walk does not know
(a type variable, an interface, a scope) answers "kept" - the default is conservative. The other places that read one
result scope as if a result were one reference were checked:

- `madeAsLocal` (B11's notes) reports a tuple element of a call as built - a less precise note, nothing more;
- `resultHome` (O26a) gives a tuple result no home unless an element of it is built (the result scope): locals are then
  not moved there, and returning one is O14's error - conservative;
- `return a, b` judges each value against its own element's scope (O25d per result), `return f()` passing several
  results on as the whole value's fit (`two(local)` passed on is refused); `storageInProgram` never puts a tuple
  call's element in the program's scope - conservative;
- `ownKeepDests` takes an obligation reaching another parameter's scope - one a tuple element names included - as kept
  into that argument; through a function value (T22a) a callee keeps everything; D8c's destructuring is a hidden local of
  the tuple type, which now holds the loans, and each element's member read carries them where it holds a reference.

An own reference and an owning value type are refused as tuple elements (T25e, O31), so no owned result is one of several.

### 17.2 Item 5 of the decision: a value holding no reference carries no loan (O38)

What a value keeps of a call's arguments is read through its type too: a value whose type can hold no reference keeps
nothing, whatever it was read through - `return b.buf.Len()` on a borrowed copy, `return r.o.deep.text.Len()` through a
borrow of an owner value local, a count kept across a release. 16.2's by-loans had refused them (e3ded09 printed `4 4 5`;
79bf11c refused), and a built-in method's call is judged by its result's type like any other. O38 already said "a number,
a `Bool`, or any value holding no reference read out of it carries nothing" - the walk now does, in its kept-only mode.

### 17.3 N2: a conditional of owner value locals given to a writable reference (O34, E28)

`r mut Outer& = v if c else w`, then `r.o = null`: codegen gives the conditional's value as a copy built where `r` lands
(E28), while the own walk read it as a borrow of `v` (a by-loan), under which a release through `r` is the borrow's own.
So `r.o = null` freed the `Inner` `v.o` still pointed to. **Decided** (the coordinator's call): a conditional or a match
whose values are of an owning type held by value is an O34 error wherever it stands (`ERR_OWN_VALUE_IN_COND`), naming the
form that works - `r mut Outer& = a`, then `if not c { r = b }`. The read-only form was already O39's error; a reference
repointed in a branch is a borrow of the very owner chosen.

### 17.4 N3 and N3b: an owned result in flight (O35, O37, P4b, S18)

`return Res(1)`, or `return h` with an owner value local moved into the result, inside a `try join` whose task fails:
P4b replaces the return by the join's failure, and nothing released the result (destructors never ran). In a test,
deferred code failing a guaranteed check after the result was computed abandoned the test with the same result held
nowhere. **Decided** (the coordinator's call; the mechanism mine): from where the `return` computes it until the function
returns, an owned result is held in a hidden owner slot (`cgRetHold`), so the code the return runs first - deferred code,
a join's wait, the scopes it closes - runs with it held:

- outside a test only a join failing in the return's place can keep it from the caller, so the slot is made only where
  the return crosses such a join, and that join's failing branch releases it (`cgRetHeldRelease`, in `cgLeaveJoin`);
  a join inside the deferred code is not one the return leaves and releases nothing (its own clauses take its failure);
- while a test runs, the slot is registered in a scope of its own whose unwind node is linked just **below** the frame's
  own node: every block's node leads down to the frame's with links fixed when the frame starts, so a node pushed on top
  at the return would be skipped by a block opened afterwards - the deferred code's. An unwind walks it after the
  frame's scope, so a failed check in deferred code, in a block's destructors or in the frame's own close releases the
  result; the frame's normal end restores the chain from below the hold node, leaving it unrun (its node and scope are
  in the frame and take no chunk); a join failing in the return's place releases it and unlinks the node;
- a result returned through memory (over 128 bytes) is held in a slot of its own and copied to the caller's storage once
  nothing can keep it.

No cost outside a test unless the return crosses a join that can fail (one store and one load); in a test, a few stores
and a registration per owned return.

### 17.5 Item 4 of the decision: F3's whitelist only in test builds

Outside a test a failed check ends the process, which leaves no frame to release anything, and a call not tried returns
or ends it. So `cgMayLeave` applies section 16.3's whitelist in test builds only; elsewhere an owner is held for a call
only where a later argument leaves to the program's own code - a `try`, a catch clause, a match's or a sequence's own
statements (`cgLeavesToProgram`). **Measured** (callgrind, `-a x86-64-v3`, `bench`'s loop of four owner-passing calls
per turn, 1M turns): 1,570M instructions on 79bf11c, **1,223M now** - below e3ded09's 1,441M, whose rule held where a
later argument ran code (`first(a)`), which outside a test cannot leave either.

### 17.6 Tests and the fuzzer

`checks/cases`: `o39tupleborrow`, `o39tuplecopy`, `o38tuplekept`, `o38tuplereturn` (N1), `o34condvalue`, `o34matchvalue`
(N2) - every one compiles on 79bf11c. `checks/fixtures/ownleave/ownflight.olang` (N3: an owned result, an owner value
local, one through memory and an own array, each given to nobody by a failing join, and a join failing three times
before a return stands - `made 9 dropped 9`, 79bf11c `made 9 dropped 4`) built, `-s`, `-d` and under valgrind;
`ownflightabort.olang` (N3b: deferred code failing after each kind of result, in an inner block, a destructor failing in
the returning frame's own close, joins failing in a test, one failing in deferred code - `made 10 dropped 10`) with `-t`
and under valgrind. shared.olang's new test returns and keeps counts read through borrows, bakes them (K2) and compares
them with the run time: 735 tests.

The fuzzer's own mode writes the shapes (`own6Op`): N1's three through `otwo` (kept across a release, pushed to a
`List`, returned from a helper's owner value local), N2's conditional and match, item 5's counts (accepted), and in
programs with destructors N3's two failing-join helpers and two N3b test blocks. On 79bf11c, own seeds 9000-9059: 189
scenarios run, 531 refused, **22 findings**, every one an own6 shape (8 use-after-frees the sanitizer caught, 3 crashes of
the `-b` run, 1 destructor not run, 10 tests leaving owners unreleased). Fixed, own seeds 9000-9059: 177 run, 543 refused,
**no findings**; seeds 9100-9339: 661 run, 2219 refused, **no findings** (one `-i` run failed as the compiler was
rebuilt under it; that seed again: none).

### 17.7 Over-rejections left as they are

- `x := u.Me(); x = v.Me()` into an existing local: only `:=` holds a borrow (O33), and 16.2 made `v.Me()` one, so the
  assignment is refused where e3ded09 printed `4 5`.
- C2d refuses an own-reference owner made from a reference to an owner value local even where O34's reach would allow
  it (the review's `c1`, `c2`, `c4`, `c6`).
- The O10c note "the index is held here" points at the wrong cause in the review's `e3`.

## 18. own7: a part borrowed where it is (2026-10-11)

The fifth review (`/home/user/review/own7`, at d8c942b) found everything section 17 added holding, and one older defect
class, present on e3ded09 too.

### 18.1 F1: an inline part of an owned object, borrowed in place, took no loan (O38, E12c)

`f(h, h.cur.pl)` and `g(h, h.cur.data)` to a reference parameter, `h.cur.pl.Bump(h)` as a receiver, `s :=
h.cur.data[0:8]` and `v := h.cur.data as Array<I64, 8>&`, `for x in h.cur.data`, `spawn useP(h.cur.pl, out)` - and an
own array's plain element, `f(h, h.buf[3])` - each with the owner released under it: by the callee, the loop's body, the
spawner inside the join. `ownLoansIn` walked a member's or an element's base as transient whenever the part's type held
no reference, which is right for a part read as a copy (`r := h.cur.pl`, a number) and wrong for one whose storage is
borrowed where it is: no loan on `h.cur`'s object reached the statement's loans, O39 or the task's (O41).

**Decided** (the coordinator's call): the consumer decides. A value lvalue is marked where E12c borrows it
(`inPlaceBorrow`, set in `borrowLifetimeFits` - every fit of a value into a reference target: an argument, a receiver,
a reference local, field or element, a task's argument, the hidden reference a `for` walks - and where an argument binds
a callee's scope variable by borrowing); the base of a slice and of an `as` view whose result is a reference is walked as
a place. A place walk keeps the base of a member or an element (`place`), and item 5's early return (17.2) does not cut
it - a part borrowed where it is is a reference in all but its type. Only a value read stays transient, so `r :=
h.cur.pl` and numbers compile as before. The five reproducers are refused (O39, O41 for the task), and so are a result
borrowed from such a part (`x := same(h.cur.pl)`, which item 5 had let through) and an array literal of references to one.

**The join in f1e** (TSan's second report, `__olang_join_tasks` writing into the freed region): the task's stand-in for
the In3's region is folded into that region at the join, so the region freed inside the join block was written. With the
argument's loan held until the join (O41), every release inside the block - directly, in deferred code run before the
wait, through another name - is refused, and the region lives past the fold. Checked rather than assumed: the legal
variants (the release after the join; a loop breaking out of the join) run clean under `-r` and `-s`, and the illegal
ones (inside the block, in deferred code, in a nested block) are refused.

**Found on the way, the same class, older:** a join's pieces are rendered once every operand is evaluated (E11b, decision
49 - Go's rule), so `$h.cur " " $f(h)` read `h.cur`'s object after `f` released it - the rendering's operand was walked as
transient like a lone `$x`, which is rendered at once. A piece reading a reference, or an array's elements, is now a
borrow across the later operands that run code (`ownJoinPieces`, `ownOpCalls`); one no later operand runs code past -
`$f(h) " " $h.cur` - is rendered as soon as it would be alone, and stays accepted.

**The message (the coordinator's small fix):** `h.cur = Inner(1) if c else Inner(2)` was refused with 17.3's "chosen by
copying" wording, which is for existing owner values. Owners made there - constructor calls, enum cases, owned results -
get O34's "gives an own slot nothing yet - assign each case's owner in its own branch"; a `take` among the values is left
to the own walk, which names it at the take.

**Nothing accepted before is accepted now that was refused** - the change only adds loans; item 5 now applies to fewer
operands, never more. One over-rejection is new: a statement's loans are not ordered, so a slice or view argument after a
releasing call in the same statement (`g(f(h), h.cur.data[0:8])`) is refused, as any loan in it already was.

### 18.2 Tests and the fuzzer

`checks/cases`: `o39inplacearg`, `o39inplacereceiver`, `o39inplaceslice`, `o39inplaceview`, `o39inplaceforin`,
`o39ownarrayelem` (the growable array's shape: an element lent to a function that replaces the buffer), `o41inplacetask`,
`o39inplaceresult`, `o39joinpiece`, and `o34condmade` for the message - every F1 case compiles on d8c942b.

The fuzzer's own mode writes the shapes (`own7Op`): a part lent to a releasing callee by reference, as a receiver and as
an array, a slice and a view kept across a release, a for-in releasing in its body, an own array's element lent, a
task, a borrowed result, a join's piece before a releasing operand - and, accepted, copies and numbers read out of the
parts, lends no release meets, and a join releasing before its piece. On d8c942b, own seeds 9400-9459: 180 scenarios run,
540 refused, **13 findings**, every one an own7 shape (one of them the join's piece). Fixed, the same seeds: 164 run,
556 refused, **none**; own seeds 9500-9699: 554 run, 1846 refused, none; mixed seeds 9800-9879 (before the join's
shapes were added): 375 run, 585 refused, none.

### 18.3 Over-rejections left as they are

- A `take` swap, `a, b = take b, take a` and `x.c, x.d = take x.d, take x.c`, is refused (O34).
- `return pass(a, 0, take x)` is O10c's error: an owner local's reach is its block.
- From 17.7: `x = v.Me()` into an existing local, C2d against O34's reach, O10c's note in the review's `e3`.
- New (18.1): a statement's loans are not ordered, so a part borrowed after a releasing call in the same statement is
  refused.

## 19. Vec phase 1: `Vec<T>` in the prelude (2026-10-11)

What phase 2a left for a growable array written in olang: returning a view of its buffer, sorting a buffer of text, and
the type itself. Items 1 and 2 are **relaxations** - programs refused on 3a4f5e8 compile now - so each was preceded by
must-fail cases for every way the relaxed borrow could outlive its loan.

### 19.1 A borrowed own result (O37, O38)

`fn (v Vec<T>&) View() Array<T>&v { return v.data[:v.n] }` and `fn (o Outer&) First() Inner&o { return o.in }` were
O10's error: the result is in the object's region, which no parameter names.

**Decided**: a reference result borrowed from a reference parameter `p` (`T&p`) may return a borrow of an owned object
reached from `p` by own fields only, a slice of one (a slice of a borrow keeps its region, 13.1 decision 2), or another
function's borrowed own result given `p` or such a borrow. The function is marked (`ownBorrowResult`, `p`'s index) and
the returned operand retagged to `p`'s scope variable - down a slice to the borrow it slices, since a slice's storage is
its base's (E16a). At each call the result is a new region `R'` (`ownResultRegionOf`), typed by the result's type,
rooted where the argument for `p` is rooted, and carrying a **copied** loan: the result is confined to the caller's
locals as a borrowed copy is (15), and every release of an object of that type below the argument's root while it is
used is O39's error. Inside the borrowing function, a `return` does not count its own loan on that region.

**Adversarial cases first** (`checks/cases/o37borrowres*`, 22, all refused): the view kept across a call that replaces
the buffer, a release, a `take`, a field of a local; kept by a `List` or a `Map`; returned from the owner's own local,
captured by a returned lambda, handed to a task, stored in a reference holder; through a borrowed copy, a re-export, a
slice, a for-in, a plain function taking the owner; read through an own field; copied into another local; stored
through a reference parameter; the owner reassigned; a pass-through function; a lambda's call; an argument of a
releasing call. **Not built**: a borrow reached through another call's borrowed own result and then an own field
(`return v.First().deep`) is not one, and stays O10's error.

### 19.2 Sort's precise O17 reading (O17)

`Vec<String&>.Sort` lends the buffer - a split value, its elements' referents outside it (14.1) - to `Array.Sort`, and
O17's reading of the body refused it: Sort's swaps store a local into the lent region, and its comparison is a call
through a function value given elements, which was taken to keep them.

**Decided**: (1) a local whose initializer and every write are reads out of the lent region itself (`t := a[i]`, `t =
a[j]`) holds nothing from outside it, so storing it back is a permutation, not a store; such a local lent writably to a
callee, or a spawn's target, is tainted and counts as from outside (`regionLocalStore`, resolved per body and once more
at `settleRegions`). (2) A call through a function value keeps its arguments only in its result (T22a), so it stores
into the region only where a parameter bound to the region's scope variable admits stores - a reference parameter
something can be stored through (O25g), or a value holding writable references - or where none names it. So `less(a[i],
a[j])` stores nothing.

**Adversarial cases first** (`checks/cases/o17permute*`, 13, all refused): a local holding an element then given a value
from outside before it is stored back - directly, later in a loop around the store, after the store, through a field
of it, through a field written in a loop, through a writable reference to it, by a task's result, through a second local
copying it; the local lent writably to a callee that stores into it; a local reading another array's element; a
function value whose parameter can be stored through, called on elements - given as a by-value parameter holding
writable references, or handed in from outside. **Over-rejection**: a function value with a writable reference
parameter is taken to store whether or not it does.

### 19.3 `Vec<T>` (prelude, `std/prelude/vec.olang`)

`type Vec<T> struct(cap I64 = 0) { data own mut Array<T>& ... n I64 }`: Push (doubling from 8), PushAll, Reserve, Len,
Cap, `v[i]`/SetAt and the derived TryAt, First/Last/Pop failing with the default error, Clear/Truncate keeping the
buffer, Insert/RemoveAt/SwapRemove (both giving the element, as List's do today), Reverse, Sort, IndexOf, Remove, Has,
Join (of texts), View/ViewMut (19.1), RunFrom (one run, so `for x in v` is an array walk), Iter (`VecIter<T>`), Clone (an
owned result), ToArray (a copy), and Eq/Hash/Str as an array of the elements with `Vec` named in front.

**Decided**:
1. **Growth hands the old buffer over as an owner** (`vecGrown(old own mut Array<T>&, n, room)`, called `v.data =
   vecGrown(take v.data, ...)`): the old buffer is released as the callee returns and the elements' referents stay where
   the Vec keeps them (13.1's form; a copy read through a borrow puts them in the result scope, O10c for `String&`).
2. **An element read out of the buffer is no loan on it** (O38, the third relaxation). `s := v[0]` of a `Vec<String&>`
   was refused across a later Push: `At`'s result is derived from the receiver (the callee may keep it, O26a), and the
   receiver's loans are on the buffer. An own array's elements refer outside its buffer (13.1), so a call's result that
   can refer neither to the argument's own storage, nor to an own array its loans are on, nor to an element such an
   array holds by value - checked on types at any depth (`ownMayReferTo`, `ownMayReferToPart`): arrays met as one
   storage whenever their elements are both references or both values (slices, and T29a's conversions between arrays
   of one representation), any function value, type variable or unknown taken to reach anything - takes none of those
   loans. Every loan in the argument must be on an own array for this; a struct's region still lends everything (its
   parts live in it). Adversarial: `vec07text` (a `String&` naming a `Vec<Char>`'s buffer by conversion), `vec11inplace`
   (a `Pt&` into a `Vec<Pt>`'s element held by value), `vec09iter` (an iterator holding the Vec), all refused; found
   while writing them: the first version checked the buffer's type alone, so the in-place element was let through - the
   walk covers the buffer's parts held by value now.
3. **One T25e error per instantiation**: `Vec<Tok>` with `Tok` a value holding references was reported at the type and
   again at every method used; the type's report marks the instantiation (`unmetTypeInsts`) so its methods are not
   checked again, with a note naming the fix: `Vec<Tok&>`.
4. **Found on the way, pre-existing**: the own walk kept a pointer to its block's frame across the walk of the block's
   statements, which push frames of their own and may move the list - forty nested `try ... catch` blocks crashed the
   compiler (the `nestparse` check) once the prelude's walk had grown the list; the frame's block is read once, before.
5. The corpus's own `Vec<T>` (shared.olang, G6's example) is `GrowBuf<T>` now, the fixtures' `Vec` structs `Vec2`, and
   SPEC's examples `Buf<T>`: the prelude owns the name (M19d).

**Tests**: `std/prelude/tests/vec.olang` (10 tests): every operation, an empty Vec's errors, 1,000 pushes read back
after a churn, text and node elements kept across growth and replacement read back after a churn, two computations
baked by K2 (`VecBaked`, `VecTextBaked` - through View and Sort of text) and decided by S18c beside the run time, `-i`
agreeing; under `-d -s` too. `checks/cases/vec01`-`vec12`: a view or a walk kept across a Push, a borrowed copy, the f1d
shape (a view, and a view's element, lent to a callee that grows the same Vec), a view through a program's function,
`take` then reassignment, the three of decision 2, `Vec<Tok>`, and one run case keeping elements across growth.

**Fuzzer** (`vecOp` in the own mode): a borrowed own result of a buffer, a slice of one or one passed through, used
before its release (accepted) or after (refused); a borrowed own object; a callee permuting an own array of text
(accepted) or storing into it (refused); a Vec of text grown with an element kept, then replaced; a Vec of nodes cloned,
sorted, moved; a view kept across a push (refused); a view used before pushes. Own seeds 1-40: 3a4f5e8 runs 106
scenarios and refuses 374, finding nothing - the new shapes were refused there, never holes; this tip runs 112 and
refuses 368, finding nothing.

**Measured** (callgrind, `-a x86-64-v3` since valgrind cannot run AVX-512; 1M I64 values from a multiply-modulo, which
costs ~12M of each count): Push 1M - Vec 75.0M (16.8M of it memset, counted per byte as `rep stosb`), List 38.7M,
filling an Array 12.3M. Walking 10 x 1M - Vec, List and Array 117.5M each beyond the fill (vectorized alike). Random
indexing 10M - Vec 110M, Array 105M, List 600M. Sort 1M with a lambda - Vec 731M, List 769M, Array 708M. So a Vec walks,
indexes and sorts as an array does; its Push costs about 26 instructions to List's 14 beyond the value: the count is
loaded and stored through memory each time (the owner value local's storage is registered for its release, so its
address escapes) and each new buffer is zero-filled (D13c) though the copy overwrites its first half.

### 19.4 What Vec phase 2 must add for `Vec` to be the default growable array everywhere

1. **A Vec held by value in a field** (O31): a struct holding one (`toks Vec<Tok>`) becomes an owning type itself -
   borrowed copies of it, `take` of the field, its owners released with its own slot or its container's scope, a
   constructor field of Vec type.
2. **A Vec global** (O31; K2 never bakes an owner).
3. **A Vec as a type argument** - `List<Vec<T>>`, `Map<K, Vec<V>>`, `Vec<Vec<T>>`: phase 2b's move-aware collections
   (`Push` taking an owner, `At`/`Get` giving borrows, `TakeAt`, `SwapTake`, `Map.Take`, releases on
   `Remove`/`Clear`/`Truncate`) and generics instantiated with owning types (G9d, G18).
4. **Elements that are values holding references** (T25e, 13.1 decision 5): `Vec<Tok>` with `Tok` holding a `String&` -
   the commonest real element (tokens, records). It needs the element scope `E` at every depth of a value read, not the
   one retag at indexing. Until then the error says `Vec<Tok&>`.
5. **A task that pushes to a Vec** (O41): a task's releases, ordered by its join as its loans are.
6. **A lambda capturing a Vec** (O31): the capture as a borrowed copy or a reference.
7. **`return v.First().deep`** (19.1's not-built case), and `TakeAt`/`SwapTake` with `RemoveAt`/`SwapRemove` giving
   nothing (as List's).
8. **Push's cost**: keep the count in a register across a push loop (release registration without escaping the owner's
   storage), and leave the copied-into half of a grown buffer unfilled - then measure against List again.

## 20. Vec phase 1's soundness review, fixed (2026-10-11)

The review (`/home/user/review/vec1`) found two causes, six programs the compiler accepted and the scope sanitizer
stopped. Both are fixed by the coordinator's decisions; nothing is relaxed.

1. **The loan is on the owned object's type, not the result's** (f1, f1b, f3, f3b). A borrowed own result's loan was
   keyed `OwnTypeKey(result type)`, so `fn asText(v Vec<Char>&) String&v { return String(v.View()) }` made a loan on
   `String` that a release of the buffer, keyed `Array<Char>`, never met - through a reference parameter or an
   own-reference local, where nothing but the key matches a release. Underneath, a conversion of a call
   (`String(v.View())`) was not even recognised as a borrowed own result; one of a slot (`String(c.data)`, retyped in
   place) was, with the wrong key. `ownBorrowedOwnResult` now looks through conversions, slices and views to the borrow,
   and records on the function the owned object's type, read off its slot (`ownBorrowResultType`), or through a call
   the callee's; `ownResultRegionOf` keys each call's loan by it. Two returns borrowing objects of two types, or one not
   named, give a loan every release meets (`ownBorrowResultAnyType`, `regionAnyType`).
   **Found beside it**: a conversion's value is of a declared array type held by value, which holds no reference, so
   `ownLoansIn` kept nothing of it - `l.Push(String(v.View()))` stored a view of the buffer in a List. A conversion names
   its argument's storage (T29a), so it keeps what its argument keeps (vec19). `t := String(v.View())` is a copy, and
   stays legal.
2. **A borrowed own result is called by name only** (f2, f2b). The loan is made where a call by name is checked
   (`readVar->ownBorrowResult`); a call through a function value or a `Call` adapter made none. As O36 does for owning
   parameters and owned results, such a function made a value - a named function, or a type whose `Call` gives one
   adapted to a function type - is a compile-time error (O37, `ERR_OWN_FUNC_VALUE_BORROW`), decided in the own pass once
   every body is checked. A lambda cannot write a borrowed result's marker today; its error is there for when it can.

Over-rejections left as the review recorded them: lending an own-array field directly to a callee storing an outside
value into it, and `ViewMut()` results returned where a raw slice could be.

**Tests**: `checks/cases/vec13`-`vec18` (the review's six), `vec19listconv`, and `vec20byname`, a run case: a borrowed
own result by name and converted, used before a push; a conversion copied into a value kept across one; a plain borrowed
result's function still a value.

**Fuzzer** (`vecOp`, four new shapes): an own field's buffer converted and used after its release (refused, O39); a
Vec's view converted inside a function taking the Vec by reference and growing it (refused, O39 - the shape a local
Vec's owner structure would have caught); a conversion called through a function value (refused, O37); both used before
their release (accepted). Own seeds 1-100: 91ff37e finds three (seeds 39, 65, 94), this tip none.

## 21. Vec phase 1's second review, fixed (2026-10-11)

The review of 2d1aabf (`/home/user/review/vec2`) found two use-after-frees, N1 new in that commit and N2 through an older
gap that also explained two older use-after-frees (P1, P2) and a compiler crash (P3). Fixed as the coordinator decided.

1. **What a function's borrowed own result borrows is settled once every body is checked** (N1). `ownBorrowedOwnResult`
   resolved each return at once: a return borrowing an own field marked the function with the field's object type; a
   return of another function's borrowed own result copied that function's type and parameter. A caller checked while
   its callee's body was still being checked - `a` checks `b` through `ensureBodyChecked` from its second return, `b`
   copies `a`'s state at that moment, and `a`'s third return then borrows an object of another type - kept the stale
   type, so `t := b(c, 2)` held a loan on `Array<Char>` while it borrowed `c.text`, a `String`, and `c.text = "..."` was
   accepted. Each return is now recorded as a source (`struct ownBorrowSrc`: a parameter and the object's type, or a call
   whose callee decides), and `ownBorrowResultsSettle`, the first step of `settleOwnBorrows`, computes a least fixed
   point over them: a call's source adds, for each parameter its callee is settled to borrow from, the caller's parameter
   that argument is rooted at (scope-checked as before) with the callee's type; two types, or one not known, give any
   type. Every loan is made in the own walk after it (`ownResultRegionsOf`), so none is keyed by an unsettled answer -
   and one made before would be on any type (`ownBorrowSettled`). Least is sound: a function the fixed point leaves
   unmarked makes no loan at its calls, and its own return of a loan-carrying value is the O38 return check's error.
   **The parameter index is a set** (`ownBorrowParams`): a function whose returns borrow below two parameters sharing
   the result's scope makes a loan below each argument (`ownResultRegionsOf` gives one region per parameter); it was the
   last return's. **Found beside it**: a borrowed own result returned through a callee unmarked when it was checked -
   mutual recursion, the review's or6 - was refused (O38); it is marked through the fixed point now and compiles.
2. **A function is made a value on one path** (N2, P1-P3). `tryBuildCrossModuleVarRead` returned a function read
   through an import alias as a bare operand, skipping G12 (a crash on a generic), `noteFuncValueUse` (T22a, O36, O37,
   O40) and the O36 placeholder. Both it and the bare-name path in `buildPrimary` call `buildFuncValueRead` now. The other
   ways a function becomes a value were checked: a method is never one (M19), a generic is G12's error, a `Call` adapter
   has its own note (`noteCallValueUse`), a lambda is noted where it is made, a default parameter value is built through
   `buildPrimary`, and a constant argument naming a function is not read as one.
3. **Two over-rejections removed** (the review's 1 and 2), each with must-fail cases for the hazard kept refused.
   - `c := w.Clone()` of a `Vec<String&>` was O10c: Clone lent the whole buffer to `vecCopy`, whose single scope
     variable stands for both the buffer and its elements' referents, and the buffer's region outlives nothing. Clone
     now copies element by element (`c.data[i] = v.data[i]`), where an element read's referent is the region's reach,
     so the obligation is Clone's own (`v`'s scope outlives its result) and discharged at the call. The hazard still
     refused: a clone kept past the block its elements were made in (`vec27cloneshort`, O10c).
   - `a := v.ToArray()` (and the clone) of a `Vec<String&>` kept a loan on the buffer, since the result's type could
     name it. Two references are never the buffer: a **built** result's top (`T&`, `T&return`) is new storage in the
     result scope, which a region outliving nothing cannot be (O33; `ownResultBuilt`), and an **own** reference refers
     only to the object it owns (a moved one leaves its slot; `take` is refused under a loan) - so `ownMayReferTo` skips
     both, and what the result holds is still looked at. A written reference result only: one written as a type
     variable bound to a reference returns what its body gives it, its argument included (O14b), so `id(v.View())`
     keeps the loan (`vec31typevarresult` - the first version of this relaxation let it through, found by trying it). The hazards still refused: a built result that is the buffer or
     a slice of it is O10 at its return (`vec28builtleak`), and a built result holding a reference to it keeps the loan
     (`vec29builtholds`, O38 at the callee and O39 at the caller).
   The rest of the review's list stays as recorded there: an element read through a view keeps the loan (3), a
   borrowed own result through two layers of conversion and slice is O10d (4), one of several results is O38 (5), and a
   generic `Call` is not adapted (7, E12). **Found by the fuzzer, recorded too**: `Sort` of a Vec whose elements are
   writable references (`Vec<mut Node&>`) is O17's error in the prelude - the permutation reading counts the comparison
   function's writable parameters as stores into the buffer (sorting `Vec<Node&>` or `Vec<String&>` compiles). It was
   never reached before, since the fuzzer's shape cloned the Vec first, which over-rejection 1 refused.
4. **Found on the way (B11)**: O17's deferred split-lend errors (`lendChecks`, judged once every body is checked) lost
   the instantiation they were met in, so an error inside the prelude's `Vec.Sort` named no line of the program; they
   now keep the context and are reported at the program's use, with the library's line as a note.

**Tests**: `vec21stalerec` (N1, O39), `vec22recrun` (mutual recursion that compiles, run), `vec23recpush` (or6's
use-after-free, O39), `vec24twoparams` (the parameter set), `vec25cloneref` and `vec26toarray` (runs), `vec27`-`vec29`
(must-fail); the `vecalias` scenario builds N2, P1-P3, an owning function and a parenthesized alias value against a
library module (one error each) and a program of what stays legal through an alias, built and interpreted.

**Fuzzer**: own mode imports a library module the fuzzer writes beside each program (`OwnLib`, `oalib.olang`), and
`vec2Op` writes N1's shape (two borrowed own result functions of different objects' types recursing through each other,
used after a release in a function given the owner by reference, where nothing but the loan's type meets the release -
refused, O39 - or before it) and N2's (a borrowed own result function or a releasing one made a value through the alias
- refused, O37 and O40 - and the same called by name, used before the release).
Own seeds 1-200: 2d1aabf 28 findings (7 N1, 11 a borrowed own result made a value through the alias, 10 a releasing one),
this tip none (593 scenarios run, 1807 refused).

## 22. Vec phase 1's third review, fixed (2026-10-11)

The review of 280ef76 (`/home/user/review/vec3`) found four use-after-frees: F1 new in the second fix round's relaxation,
F2 and F3 older on this branch, F4 older than the Vec work and on master. Fixed as the coordinator decided; nothing new is
relaxed.

1. **A built result is new storage only where it is proven so** (F1). Relaxation (b) of section 21 took the top of any
   result *written* `T&` or `T&return` for new storage, but "built" says only which scope the result is in: a call whose
   result lands in the result scope - a type-variable result (O14b) such as `id(a)`, `pick(c, a, b)`, `l[0]`, `m.Get(k)`
   - hands an argument back into it, and a non-generic wrapper (`fn longer(a, b) mut Array<I64>& { return pick(...) }`)
   hid it from 8e3ddc1's narrowing, which looked at the keeper only. So `d := longer(v.ViewMut(), other)` kept no loan on
   the Vec's buffer. The top is now spared only for a function proven fresh: `ownResultFreshSettle`, run in
   `settleOwnBorrows` beside `ownBorrowResultsSettle`, is a least fixed point over the returns of every checked body. A
   return is fresh when it is a constructor call, `Array<T>(n)`, a comprehension, a literal, text rendered or joined,
   `null`, a call by name to a function already proven fresh, a conditional or a match all of whose values are, or a local
   declared once from one of those and never assigned, made a spawn target or taken anywhere in the body; a catch default
   on any of them must be fresh too. Anything else - a parameter, a field, an element, a call through a type variable, a
   function value or a lambda, a body unchecked (`calleeBodyKnown`) or with errors - is not, and the result keeps every
   loan its arguments carry as before section 21. Least is conservative: a function recursing through itself is never
   proven. **ToArray stays relaxed**: its one return is `out`, declared from `Array<T>(v.n)` and only written into by
   element, so it is proven fresh, and a wrapper returning `v.ToArray()` directly or through a local is too. Clone was
   never relaxed this way: its result is a `Vec<T>` held by value, an owned result (relaxation (a), own references).
2. **A marked function's other returns must borrow the type it settled on** (F2). The O38 return check skips a loan made
   by a borrowed own result call rooted at a parameter in the function's `ownBorrowParams` - the caller's to hold. But
   the function's settled type comes only from its recorded sources (an own slot's region, a call by name, a conversion,
   slice or view of either), so a return of a borrowed own result any other way - a local holding one (`t := c.Text();
   return t`), a pass-through (`h(c).Trim()`), a conditional, `id(h(c))`, a match, a catch default beside a recorded `try`
   - borrowed a `String` while every caller keyed its loan by the recorded `Array<Char>`. The skip now requires the
   loan's object type to be covered: the function settled any type, or the loan is not any-type and its region's type is
   the settled one. Otherwise the loan is kept and the return is O38's error.
3. **A spawn target holds the call's own loan** (F3). The check for a target given what only locals may hold collected
   `ownCarried` of the call's arguments only, so the loan a borrowed own result call makes itself (`ownResultRegionsOf`)
   was never looked at: `spawn d = w.View()`, `spawn d = c.Text()`, `spawn d = mid.Vl.View2(w)`. It now collects
   `ownCarried` of the call as well.
4. **A borrow of a global's own object is not in the program's scope** (F4). `storageInProgram` answered true for a
   member, index or slice of anything rooted at a global, an own slot read included, so O1b let `Current = Docs.title`,
   `Index.alias = Docs.title` and `Head = Buf[0:2]` into a global - whose region a later `Docs.title = ...` or `Buf = ...`
   releases. It answers false for an operand with an own region (`ownRegionOf`, `ownArrayRegionOf`): the slot's read, a
   local holding the borrow, a slice of an own array, anything reached through one. A global's initializer, walked as an
   expression statement and never confined, is now walked as the declaration it is, and any loan it keeps - a direct slot
   borrow (`T := G.text`) or a borrowed own result (`T := G.Text()`, which O1b cannot see while bodies are checked, its
   callee not settled yet) - is O38's error. A borrowed own result stored into a global from a function was already O38's
   (a copied loan through `ownHoldMore`).

**Tests**: must-fail cases `vec32`-`vec35` (F1: through `pick`, `id`, a `List`, a `Map`; O39), `vec36`-`vec40` (F2: a pass-
through, a conditional, a local, `id`, a catch default; O38), `vec41`-`vec42` (F3; O38), `vec43`-`vec47` (F4: a global
assignment, an initializer from a slot and from a borrowed own result, a slice, a field of another global; O1b, O38), and
`f3` in the `vecalias` scenario (F3 through an import alias chain). What stays legal runs: `vec48freshkept` (ToArray, a
wrapper returning it directly and through a local, a function returning a new array it filled, Clone - all kept across
pushes) and `vec49byname` (a view used before a push, a borrowed own result function whose returns all borrow a `String`
- one through a local - a global given a number read through another global's own object).

**Fuzzer**: own mode's `vec3Op` writes F1 (a built-result wrapper through `id`, a `List`, a conditional generic - refused,
O39 - and one returning `v.ToArray()` through a local, kept across a growth - accepted), F2 (a mixed-type borrowed own
result function - refused, O38), F3 (a spawn target given `View()` - refused, O38) and F4 (a global given a borrow of a
global's own object - refused, O1b - and a number read out of it - accepted).
Own seeds 1-200: 280ef76 6 findings (all F1's wrapper shape; 597 scenarios run, 1803 refused), this tip none (590 run,
1810 refused).

## 23. Vec phase 1's fourth review, fixed (2026-10-11)

The review of 1bcfb72 (`/home/user/review/vec4`) found two use-after-free classes - F1', a gap in section 22's fix, and R,
older than the Vec work and on master - one disagreement between `-i` and the built program (X, older, on master), and
one over-rejection new in section 22. Fixed as the coordinator decided.

1. **One list of the code a statement or an operand holds** (F1'). The freshness proof (`ownFreshReturns`), its write
   scan (`ownFreshStmtWrites`) and the deep loans of a comprehension's body (`ownLoansOfStmtDeep`) each kept a list of
   the fields to walk, and each missed some: an `else if`'s condition, a case guard, an assert's message, a `for`'s post
   clause, a spawn target's subexpressions. A `return pick(a, b)` in any of them proved a function fresh that hands its
   argument back. Now `StmtEachChild`/`OpEachChild` (semantic.c, beside `SemanticMatchValues`) list every field that can
   hold code, by role, with a comment naming each field of `struct statement` and `struct operand` and why the others
   are not code; `CodeDeepBlock`/`CodeDeepStmt`/`CodeDeepOp` visit everything at any depth. The proof, the write scan,
   the deep loans and the liveness scan (`ownStmtReads`/`ownOpReads`, whose list was complete but hand-kept) all read
   it. `ownStmtWalk` keeps its per-statement cases, which walk in their own order and frames, and then walks every child
   its case did not name (`ownStmtWalksRole`), so a field added later is walked at least plainly.
   **Other walkers checked**: the may-build walk `mbStmt` was complete; `mbiStmt` (the walk asking whether a body builds
   into one scope variable) never walked a spawn target's place - fixed directly, since its walk is role-dependent; C2d's
   instance-holding analysis (`holdStmt`/`holdMentions`) missed assert messages, spawn targets, catch defaults and most of
   a value's statements - it reads the list now (more joins, so more conservative); S8c's write scan (`stmtsWrite`)
   missed assert messages, comparison chains and `take` - reads the list now. `htStmt` (O17b's handle walk) was complete;
   `finalizeStmtLambdas` walks only top-level positions by design; codegen's and the evaluator's walkers were not
   touched (codegen.c is another branch's).
2. **A local built in an owned object's region holds a loan on it** (R). `x := c.text` holds a loan, but `d mut
   String&x = ...` (O25a) and `d := mk&x(5)` (E25) are new storage in the same region, and held none: releasing `c.text`
   and reading `d` read freed memory. A local whose scope is a region - its type's, or its value home's (`valueHome`,
   `refsHome`) - now holds a loan on it, live to its last use and confined as a borrow is (`ownHomeLoan`; for-loop
   variables too). The O20 note's path in the review (r1e: `last mut String&b`, `b := c.box`) ends at O39 now. Kept
   usable, as decided: text made where an owned `List` lives, pushed and read before the List is replaced.
3. **An assert's message may not leave** (X, S17). A `return`, an `error` statement, a `try` letting an error out and a
   `break`/`continue` other than of a loop written in it are compile-time errors, as in deferred code (S19b); a spawn in
   it needs a join in it. `-i` aborted where the built program returned; now neither can.
4. **A global value copy keeps no loan** (over-rejection 1). `T String = Docs.title` was refused because the global
   initializer's walk kept the slot read's loan whatever the declared type; like a local, a global whose type holds no
   reference keeps none. A global reference or a value holding one is still O38's error.

**Tests**: must-fail cases `vec50`-`vec57` (F1': an else-if catch, a match value's clause in an else-if, a case guard, a
for post clause, a generic, a spawn target's index; O39; `vec54` an assert message, now S17), `vec58`-`vec63` (R: a typed
local, a scope argument, in a method, an owned List's text, the O20 note's source and where it leads; O39 and O20),
`vec65` (a write in an assert message's catch block; O39), `vec68`-`vec69` (a global reference or value holding one; O38),
`s17msgreturn`/`s17msgerror`/`s17msgbreak` (S17). Run: `vec64globalvaluecopy`, `vec66elseiffresh` (an else-if returning
new storage stays proven), `vec67regionkept`, `s17msgok`.

**Fuzzer**: own mode's `vec4Op` writes F1' (a return of the argument, or a write of the local returned, in an else-if's
condition, a case guard, a for post clause, a match value's clause or a spawn target's index - refused, O39 - beside new
storage returned there - accepted), R (text built in a holder's own text's region through a typed local or a scope
argument, read after the release - refused, O39 - or before it - accepted) and X (a return in an assert message -
refused, S17).
Own seeds 1-200: 1bcfb72 6 findings (5 of F1''s wrapper shapes, 1 of R's; 599 scenarios run, 1801 refused), this tip none
(592 run, 1808 refused).

## 24. Vec phase 1's fifth review, fixed (2026-10-11)

The review of 7f1a37a (`/home/user/review/vec5`) found that the fourth round's changes held, and three classes older than
it: R2a, a §8 hole on master that needs no own; R2b, from own's first cut; and two gaps in the O33 order check. Fixed as the
coordinator decided, with nothing relaxed.

1. **Building in a parameter's scope is holding the parameter** (R2a, C2d). C2d's hold analysis (`ctorComputeHeld`,
   `holdStmt`/`holdMentions`) grouped variables by the values that *mention* them. A constructor field or local whose
   written scope names a parameter (`y String&x = $n "..."`), one given a value built there by a scope argument
   (`y := mk&x(n)`, E25), or a local typed `&x` then stored in a field is new storage where the argument lives, and it
   mentions nothing. So `ctorHeld[x]` was false, and the instance could outlive the argument's block. With own, a call
   kept no loan (`calleeMayKeepArg`). Now the groups also hold **scope variables**:
   - each parameter is joined with its own scope variable;
   - a local is joined with every scope variable it is built in (`LocalBuildScopes`: its written scope, its value home,
     its references' home - the predicate own's region loans use too, `ownHomeLoan`);
   - a call mentions every scope variable its bindings put something in.
   The instance then holds the parameter, C2d holds it to the argument's scope, a function returning the instance gets
   the obligation (O10b), and with own the argument's loans are kept. **Other analyses checked**: a plain function
   building in its parameter's scope and returning or storing it is already an obligation (O14/O10c; probed through a
   typed local, a scope argument, and a store into another parameter); O17's region facts already mark a typed local or a
   scope argument as a build (probed: a `regrow` building its new array through `d mut Array<I64>&b` or `mkarr&b(v)` is
   refused, O17); `calleeMayKeepArg` reads `ctorHeld` for a constructor and obligations otherwise, so it follows.
   **Restored**: `h := mk&x(x)`, a function returning such an instance with a scope argument naming a live region, judged
   where the scope argument put it (E25: the written binding of the callee's result scope - `scopeBinding.written`), as
   `H&x(x, 6)` already was. Over-rejection kept, consistent with the rest of C2d: `h := H(c.text, 6)` with no scope
   argument, the instance in the block and what it holds in a region that outlives nothing, as `W(c.text)` holding the
   borrow directly always was.
2. **Building in a region uses its loans** (R2b, O39). `d mut String&x` or `mk&x(5)` names the region of a read made
   earlier; the liveness scan counted only reads of `x`, so `x`'s holder was dead at a release before it, and the build
   went into the freed region. Now a statement building into a region - a local declared there (`LocalBuildScopes`), a
   call given a scope argument binding it, a constructor landed there - is a **use** of every holder with a loan on it
   (`ownStmtUses`/`ownOpUses`, used wherever liveness asks: later statements, deferred code, a loop around), and the
   release before it is O39's error, its note at the build. In the releasing assignment itself, what its value builds in
   the region it lets go of counts too. Naming a live region stays legal: a typed local or a scope argument read before
   the release, and in a loop a borrow taken again each turn.
3. **O33's order check looks everywhere** (O33). `ownOpContains` walked arguments, chain operands and the callee by
   hand, missing a match value's clauses, a comprehension's body, catch clauses and their defaults; it walks
   `CodeDeepOp` now (the plausible catch-default form with it). And the spawn case never ran `ownArgOrder` on the task's
   call; it does.

**Tests**: must-fail cases `vec70`-`vec76` (R2a: a block, a function, a scope argument, a typed local, an own slot's
borrow directly and through a function - C2d - and a global, O38), `vec77`-`vec80` (R2b: the review's four, O39),
`vec83`/`vec84` (R2b through a releasing call and in deferred code, O39), `vec81`/`vec82` (O33 through a match value and a
spawned call). Run: `vec85ctorbuildsheld` (an instance whose field lives with it kept past the block; one in a parameter's
scope read in the argument's block, and put in a live region by `mk&x(x)` and `H&x(x, 6)`), `vec86regionlive`,
`vec87o33ordered`.

**Fuzzer**: the scope mode's `ctorScopeOp` writes R2a over text from an inner block (a typed field, a scope argument, a
function returning the instance - refused, C2d - and its legal sides); own mode's `vec5Op` writes R2a over an own slot's
borrow, R2b (a typed local and a scope argument after the release, the loop form) and O33 (a match value, a spawned call),
each beside its legal side.
Own seeds 1-200: 4d9c1fc 10 findings (3 R2a, 1 R2b, 6 O33; 600 scenarios run, 1800 refused), this tip none (590 run, 1810
refused). Scope seeds 1-100: 4d9c1fc 6 findings (all R2a; 513 run, 687 refused), this tip none (506 run, 694 refused).

## 25. Vec phase 2a: a Vec in a field and a global, elements holding references, deep borrowed own results (2026-10-11)

Items 1, 2, 4 and 7 of 19.4. Items 3, 5, 6 and 8 are phase 2b's; 25.6 says what this phase's design means for them. The
design is one generalization: an **owner value place** - a place holding an owning type by value whose owners its
container owns - was a body's local; it is now also a field (to any depth of value fields) of an owner value local, of a
borrowed copy's source or of an instance reached through a reference, and a global (`OwnValuePlace`). Everything that
asked "is this an owner value local" asks this instead: `take`, assignment's release, the borrowed copy's source, the
loan's root (`ownRootOf`, `ownEvRoot`), the hold analysis and the statement walk. Its reach (O34) is a local's as
before, a field's where its instance keeps its references, a global's the program's scope.

### 25.1 A Vec held by value in a field (O31, O32, O34, O35, E34, C2a)

- **Owning types compose.** A struct holding an owning type by value in a field (`toks Vec<Tok>`) is an owning type
  itself (`TypeIsOwning` recurses through value fields), so a struct holding a struct holding a Vec is one too. Its
  owners are the instance's: released with the instance's own slot (an own slot, or an owner value local's block) or its
  container's scope (codegen's `cgOwnDropFn` releases the owning value fields after the own fields).
- **The field is a place of its own.** `take l.toks` moves its owner out, leaving the zero value; `l.toks = Vec<I64>()`
  or `l.toks = take w` releases what it held first (O35); `l.toks = m.toks` is O34's error naming `take m.toks`
  (`vec106`). A method writing `l.toks = Vec<I64>()` or pushing through `l.toks` is a release through its receiver - its
  release effect is on `Array<I64>`, so a view of the buffer held across `l.reset()` or `l.grow()` is O39's error
  (`vec92`, `vec93`).
- **Copies are borrowed copies.** `c := l` copies a struct holding a Vec as a borrowed copy (QJ1), and `c := l.toks` is
  one rooted where the field is - of an owner value local, of a borrowed copy (borrowing its source), or of an instance
  reached through a reference (`vec90`, `vec91`). Neither is declared from a global or a global's field (`vec126`,
  `vec127`): any call may release a global, so the copy would need a loan no liveness could bound - read through the
  global instead (`G.View()`, `G[i]`) or `take` it.
- **A constructor field** of an owning type (`toks Vec<I64> = Vec<I64>()`, or `:=`) is an owner value local of the
  constructor, given an owner and moved into the instance as it is assembled, released by the frame until then if the
  constructor fails first (own4's N6, C2a). A field's initializer may not be a borrowed copy (the instance would keep it).
- **Not held**: an enum payload (copied freely, and nothing takes a payload - O31, `vec108`), a type argument
  (`List<Lexer>`, phase 2b - O31, `vec109`), an element, a by-value parameter (O31: a parameter takes an owning value by
  reference), a lambda's capture (O32, `vec107`).

### 25.2 A Vec global (O31, O1b, K2)

A global may hold an owning type by value when its type is written (`G mut Vec<I64> = Vec<I64>()`, `GL mut Lexer =
Lexer()`): it is an owner value place whose reach is the program's scope, never released (the program's scope never
closes), and never baked (K2's existing rule: a global reaching an owner is set at startup). A function pushing to it
releases the old buffer as any owner's push does, so a view held across a call that may push is O39's error (`vec97`);
`take G` and `G = take e` move it (the `-i` and run-time outputs agree, fuzz shape 9). `G := Vec<I64>()` keeps declaring a
reference, as `:=` does for any global holding an owning type (D15) - making it a value global was tried and reverted:
it changed the meaning of programs that already declare such a global with `:=` (`o41global`'s `G := Holder()`). A global's view (`d := G.View()`) is a borrowed
own result with a loan on the global's buffer, like any other; a global keeping a view is O1b's error (`vec95`).

### 25.3 Elements that are values holding references (T25e, O33, O17a, O38, O39)

`Vec<Tok>` with `Tok` holding a `String&`, and any own array of values holding references (`own mut Array<Tok>&`), is
accepted - per instantiation (G18), so `own Array<T>&` with `T` bound to such a value is too (`t25earrinst`). The design
is 13.1 decision 5's: an element is **stored in the buffer** - its own storage the region - while **what it holds lives
in the slot's reach**, where a reference element's referent lives, at every depth of a read through it:

- `operandIndexAt` marks a read of such an element (`ownElemRegion`): its storage scope is the region
  (`lvalueStorageScope`, `splitValueHome`) and what it holds the reach (`valueRefsHome`, `RefExactScope`) - a split value
  (O17a), never held by reference where something can be stored through it.
- A temporary stored in an element - `v.Push(Tok($i "x"))`, `v[i] = Tok(t)` - is built in the reach, so C2d holds the
  argument to where the Vec is: a loop turn's text is refused (`vec110`, `vec113`), text built for it (`$(i + 1) "-w"`)
  is accepted. `fn add(v mut Vec<Tok>&, t String&)` pushing `Tok(t)` needs `t` to outlive the Vec (O10c, `vec114`).
- An element read out by value (`d := v[1]`, `for e in v`) is a copy: its own storage is the copy's, what it holds is in
  the reach, so it takes **no loan on the buffer** (`ownLoansIn`'s index case: what the element holds is outside the
  buffer, as a reference element's referent is), and `d` is good across a growth - fuzz shape 6. One borrowed **in
  place** - lent by reference, stored into a local's field, read out of a view in the same statement, sliced - borrows
  the buffer (own7's rule) and is confined and held as any part borrowed in place (`vec115`-`vec119`).
- Two values meet only where one could be the other's storage (`ownSameReferent`): elements of one representation
  (T29a, T29h) - so a `String&` held in a `Vec<Tok>`'s element never names the `Array<Tok>` buffer, and a release of the
  buffer does not meet a loan on the text.
- A zero-filled array (`Array<Q>(3)`, its elements Q's zero value, which refers nowhere) given to an own slot of such
  elements is a fresh array, an owner (`ownFreshArray`).
- Read-only copies (QC) carry through: a borrowed copy of a `Vec<Link>` with `Link` holding a `mut Box&` writes nothing
  through it (T25c, `vec111`); `roRefOf` reads an own slot's borrow as read-only where the path to it is (through an
  instantiation's read-only reference parameter), which is what lets `Vec<Link>.At` compile.

### 25.4 `return v.First().deep` (O37, O38, O39)

A borrow reached by own fields from another call's borrowed own result is a borrowed own result too (`fn (x Outer&)
Deep() Leaf&x { return x.First().deep }`), below whatever the first result is below, its loan on the deeper object's
type (`ownBorrowSrc.deep`). A release meets a loan on any object it holds by own fields (`ownHeld`, `ownHeldBy`), so
`d := v.Deep()` meets a release of `v.o` (`vec121`), of `v.o.deep` (`vec122`), a `take v.o` (`vec123`), and a function
handing such a result on (`vec124`). The callee's set of parameters is settled with the rest (`ownBorrowResultsSettle`):
a deep source whose call settles on no parameter its function's result names is O10's error then. One reached through a
reference that is no own field (`v.Plain().deep`) is not one - what holds it is not below the parameter - and is O10d's
error (`vec125`).

### 25.5 TakeAt and SwapTake (M19d)

`Vec` and `List` have `TakeAt(i)` and `SwapTake(i)`, giving the element they remove, beside `RemoveAt(i)` and
`SwapRemove(i)`, which now give nothing (Remove lets go, Take gives - M19d's naming). The corpus and std moved the
callers that used the removed element to the Take forms (`std/prelude/tests/list.olang`). For elements that own nothing
they are ordinary methods; for own elements (phase 2b) `TakeAt` is the move out and `RemoveAt` the release.

### 25.6 What this means for phase 2b (19.4 items 3, 5, 6, 8)

- **Item 3, a Vec as a type argument or an element** (`List<Vec<T>>`, `Map<K, Vec<V>>`, `Vec<Vec<T>>`). The element is
  the next kind of owner value place: what 2a did for fields - `TypeIsOwning`, `OwnValuePlace`, `ownHeld` walking value
  fields - has to reach elements. Three things follow. The collection's protocol changes for an owning element: `At` and
  `Get` give a **borrowed own result** (O37) instead of a copy, `SetAt` and `Push` take an **owning parameter** (O36),
  `TakeAt` gives an owned result, and every release (`Remove`, `Clear`, `Truncate`, an overwrite) releases the element's
  owners. A buffer's release must release its elements' owners - codegen's drop function walks the elements, as
  `cgOwnDropFn` now walks value fields. And growth must **move** each element (`take old[i]`), so `take a[i]` on an own
  array of owning elements becomes a move position, which `buildTake` does not accept yet. The loan machinery needs no
  new idea: loans are keyed by owned object type, so `Vec<Vec<I64>>`'s inner buffers are `Array<I64>` objects held by the
  outer `Array<Vec<I64>>` - `ownHeld` has to walk an own array's element type as it walks value fields.
- **Item 5, a task pushing to a Vec** (O41). 2a makes a Vec field reachable through any reference to its instance, so a
  task given `l mut Lexer&` may release `l.toks`'s buffer; O41 refuses such a task today. The release effects 2a
  computes per type already say what a task's call may release, so 2b's check is O39's call check stretched over the span
  from the spawn to its join: a loan used in that span conflicts with the task's release effect.
- **Item 6, a lambda capturing a Vec** (O31/O32). A capture is a copy (D16c), so capturing an owner value local is a
  borrowed copy whose loan lasts to the lambda's last use - the machinery `vec94` already exercises for a captured view.
  2a keeps refusing it (`vec107`) so as not to open that path before its review.
- **Item 8, Push's cost** is unchanged: a field's Vec is pushed through a reference to the field, the count in memory
  as for a local's.

### 25.7 Relaxations, listed for the review

Each was checked by must-fail cases on its hazard and by the fuzzer's vec2a shapes (25.9).

a. **O31**: an owning type held by value in a struct field (recursively), the struct an owning type.
b. **O31**: a global holding an owning type by value (typed), never released, never baked.
c. **O32**: a borrowed copy declared from a field (`c := l.toks`), rooted where the field is.
d. **E34/O34/O35**: `take` of, and assignment into, an owning field or global (`OwnValuePlace` in `buildTake`,
   `buildAssignCore`, `ownHoldMore`, `ownStmtWalk`).
e. **T25e/O33**: own arrays - so Vecs - of values holding references (`ownArrayElemsOk`).
f. **O38** (`ownLoansIn`, index case): a value element read out of such an array takes no loan on the buffer for what
   it holds.
g. **O39** (`ownSameReferent`): values meet only where elements of one representation could be one storage - a
   `String&` in an element never names the buffer.
h. **O38** (`ownCallConfined`, `ownReachesIn`/`ownTypeMayHold`): a call keeps nothing of a borrow when the parameter it
   would be kept in can refer, at any depth and through references own ones included, neither to an object the loan is
   on nor to the argument's own storage (`v.Push(Link(...))`, `Link` holding a `mut Node&` related exactly to the Vec).
i. **O37**: a deep borrowed own result through another call's borrowed own result and own fields.
j. **O39** (`ownLoanPut`): two borrows of one owner value local's storage in one expression are one loan
   (`v.Push(v.Len())`) - only the owner a borrow is of is read off it.
k. **D13c/O34** (`ownFreshArray`): `Array<Q>(n)` filled with Q's zero value is a fresh array for an own slot.
l. **precision** (`ownMayReferToIn`): a type holding itself through a reference is walked once, where it used to reach
   the depth limit and be taken to refer to anything.

### 25.8 Over-rejections, recorded

- A borrowed copy of a global or of a global's field (`vec126`, `vec127`): read through the global or `take` it.
- A lambda capturing a struct holding a Vec (`vec107`, item 6).
- A struct holding a Vec as an enum payload, a type argument, an element or a by-value parameter (O31; item 3).
- A value element borrowed in place and kept beyond this function's locals (`vec115`-`vec117`): confinement (own4).
- A text from a loop turn stored into a `Vec<Tok>` that outlives the turn (`vec110`, `vec113`): build the text where the
  Vec is (`$i "x"`), as for any container (C2d).

### 25.9 Tests and the fuzzer

**Corpus** (read back after an arena churn, and decided while compiling where the evaluator can - baked globals compared
with the same computation at run time): `shared.olang`'s four O31/O33/O37 tests (`OwnPair2a` built by its constructor,
`OwnHolder2a` releasing its fields with the instance, `OwnGPair`, `OwnTexts2a`, `OwnOuter2a.Deep`), and
`std/prelude/tests/vec.olang`'s six (a lexer holding `Vec<vecTok>` built, grown, sorted and taken - `VecLexBaked` baked -
a field filled by a method, two structs deep, a global Vec, elements holding text across growth). Both files also pass
under `-t -s`. **Cases**: `vec88`-`vec127` (must-fail, one per hazard the brief named and more: a borrow of a field's Vec
across a push through the struct or a method, take of the field while borrowed, a copy of the struct used after the
original's Vec grows, a task, lambda and global keeping a borrow, a release through a method of the struct, a release of
an owned holder, the deep results, the element shapes); `t25earrvalue`, `t25earrinst`, `vec12elemvalue` became run
cases; the two O31 cases reworded.

**Fuzzer** (`vec2aOp` in own mode, one statement in eight): fifteen shapes - a Vec field viewed across a push through a
method, used before and after a replacement, taken while viewed, taken and given back, a borrowed copy of the struct
across a push; a `Vec<V2T>` given a loop turn's text, given built text with an element kept across growth, two structs
deep replaced through each level; a global Vec viewed across a push, taken and given back; a deep result used after
and before its holder's release; an own array of values with an element copied out across the buffer's replacement, and
a slice of an element's inline array kept across it; `TakeAt`/`SwapTake`/`RemoveAt`/`SwapRemove` on a `Vec<String&>`.
Each was generated alone and checked: the seven meant to be refused are (O39, C2d for the loop text), and the eight
accepted print the same built `-b`, built `-b -d -s` and interpreted.
Own seeds 1-300, the same generator under both compilers: f743da5 no findings (773 scenarios run, 2827 refused), this
tip no findings (870 run, 2730 refused - the 97 more are the shapes f743da5 refuses: a Vec in a field or a global, value
elements, deep results, `TakeAt`).

## 26. Vec phase 2a's review (vec6), fixed (2026-10-12)

The read-only review of d5ddcda (`/home/user/review/vec6`) found one high-severity hole, two smaller ones and an older
disagreement. Each is fixed; each repro is a checks case.

### 26.1 R1: a Vec field of an owned object keeps its words in that object's region (O33, O34)

`p.lx.toks.Push(x)` builds `x` where `p.lx.toks` lives - the region R of `p.lx`'s object, since a field of an object in
a region lives there. But `ownValuePlaceReach` asked `ownReachOfBase(p.lx)`, which answers R's own reach (where `p`
keeps its references): the reach of an **own slot** inside the object, right for the objects it owns, which reach as far
as it does. A field holding an owning type **by value** is not such a slot: its own objects' referents are built in R.
So `take p.lx.toks` was believed to refer only to `p`'s block, and every place of that reach accepted it - another owned
object's field, a local, a returned result (`return take p.lx.toks`, the natural form) - while `p.lx = null` or `p`'s
release freed R under it.

The fix is the own-array path's answer (`ownBorrowRead`'s `isArr` branch, which takes `RefExactScope` of the read): a
field of an instance in a region (`ownRegionOf` the base, or a plain reference into one) reaches **R itself**, which
outlives nothing. Moving it out is then refused unless what it holds refers to nothing outside what it owns (`Vec<I64>`)
- O34's "the owner refers to what lives shorter than the slot it is moved into". Two moves stay legal: the object moved
whole (`take p.lx`), which carries R, and a field moved into another field of the same object read by the same path
(`p.lx.more = take p.lx.toks`) - each read of `p.lx` is a region of its own to §8, so `ownValueTakeReach` accepts two
regions whose slots are one path (`ownSamePath`), as O39 already does for loans; the loans keep the slot from changing
between the two reads. All eight variants (r1a-r1h: another object, a local then an own place, a struct holding the
Vec by value, globals, a `Vec<Tok>`, a function, the return, a borrow local) are refused (`vec128`-`vec135`).

Over-rejection this brings, recorded: words built in an owned object's region leave it only with the object, or as
copies (`$w`); `m := take p.lx.toks` used while the object lives is refused too (it had a loan; the region now refuses it
first).

### 26.2 D: loans at any depth (O38, O39, O31)

`ownOwnSlotReads` - the loans a borrowed copy, or a reference to an owner value local's storage, carries - stopped at
depth 8, so a Vec 8 owning value levels down had none: a copy read freed memory after a push, and own5's F2 came back
(`return o` through a reference). The walk is uncapped now; a path of struct types guards it (only a program where T16 is
already reported has a cycle by value). The same audit of the own pass found the same problem in three more places,
fixed the same way: `typeIsOwningAt` (cap 8; the `owning` flag answered first, but a type the flag missed would have been
copied freely), `ownReachTypes` (cap 64, under-collecting what `$`/`==` read; its seen-set ends the walk), and the
operand-path loops capped at 64 or 256 (`ownArrayRegionOf`, `ownCopyPartOf`, `OwnValuePlace`, `ownValuePlaceReach`,
`ownChain`, the deep-result source walks - past 64, a field 70 levels down could not be taken at all, E34's error, and
a take of a borrowed copy's part got that message instead of O32's): an operand tree is finite, so they are unbounded. And at 64 levels the next limit bit: `TypeHoldsReferences` answered "no" past
`VALUE_WALK_LIMIT`, so the copy was never held (`ownHold` skips a type carrying no scopes). The value walks §8 and own
rely on - `typeHoldsReferencesAt`, `valueRefsAdmitStoresAt`, `typeHoldsWritableRefsAt`, `typeHasBareOwningStructAt` -
answer the safe way past the limit now: a type nested 65 levels by value may be over-rejected, never under-checked. The
limit stays because those walks may meet a self-holding type before T16 is reported (C2e). `vec136`/`vec137` (8
levels), `vec145` (70 levels, refused), `vec146` (70 levels used, copied and taken, run).

### 26.3 L1: a borrowed copy's owning part is not assigned (O32)

`c.a = Lexer(...)` with `c` a borrowed copy was accepted: O32 checked only own references. The copy owns nothing, so
nothing released what it was given until the function's scope closed - 8.6KB a turn in a loop. `buildAssignCore` now
reports `ERR_OWN_COPY_PART` for a target of an owning type held by value that is part of a borrowed copy
(`ownCopyPartOf`), as `buildOwnAssign` does for an own reference part. Compound assignment reaches the same check;
`take` of such a part was already refused; a `mut` method or a writable lend of it is T25c's (a borrowed copy is
read-only); a spawn target is O41's. `vec138`-`vec140`.

### 26.4 x1: a conversion of a reference a call gives names its storage (T29a)

`w String&v = String(v.View())` printed `aa` built and `za` under `-i`. T29a retypes the argument in place where it is
a variable, a field, an element or a slice; a call's result reached `OPERATION_NOMINAL_CONVERT`, a value, which codegen
promoted into the reference by copying. A reference argument (an array reference: `{len, ptr}` either way) is now
retyped in place too, so the conversion is the reference. `vec143` runs it with a baked global; the corpus test
`std/prelude/tests/vec.olang` compares `VecViewBaked` with the run time. Consequence, recorded: `d := String(v.View())`
holds the Vec's loan, so a callee that may keep it (`keep(h, d)`, the review's `k09`) is O38's error - where it used to
copy, it now names the buffer, as T29a says. `copied := String(t.View())` declares that reference too (D15), so
`vec20byname`, which kept it across a push as a copy, now writes the copy as a typed value declaration (`copied String =
String(t.View())`, T7b).

### 26.5 Also

- **O26a follows `take`** (over-rejection 2): `take` starts a whole value (`tokStartsWhole`), so `w := take l.toks;
  return w` and `l.toks = take v; return l` move `l`/`v` into the result scope as `return take l.toks` did (`vec144`,
  and a corpus test reading the text back after a churn).
- **B11** (over-rejection 4): a destructor's O40 is reported at the call in its own body (`G.Push(i)`), with a note where
  the callee releases (`ownRel.site`, the call a release was propagated through) - `vec141`.
- Not done: over-rejection 1 (`GL = take l` for a struct holding a Vec, `ownRefersOut` taking a Vec field to refer out)
  and 3 (`x.First().deep.text`, O10) - both safe, recorded.

### 26.6 The fuzzer

`vec2aOp` gained seven shapes (k 15-21, the review's suggestions): a Vec field of an owned object moved into another
owned object then released, or out through a local (both refused, O34); the whole object moved, and the field moved
within its object (accepted); a borrowed copy of a Vec 8-12 owning value levels down used after a push (refused, O39) or
before it (accepted); a borrowed copy's owning field given an owner (refused, O32). Own seeds 1-300, the same generator under both
compilers: d5ddcda **22 findings** (897 scenarios run, 2703 refused) - 14 R1 shapes and 8 D shapes, every one of them
the review's (L1 is a leak, which the sanitizer does not see; its shape is refused on the tip); this tip **none** (865
run, 2735 refused - the 32 fewer run are those 22 shapes and their siblings in the same scenarios, now refused).

### 26.7 Regressions checked

The review's 1,259 older programs (vec1-vec5, own1-own5, own7) built `-b -d -s`, run and interpreted: no sanitizer
report. Six differ from d5ddcda: `a9` now agrees with `-i` (x1); `vec1/a3`, `vec1/a4`, `vec2/d_convcopy` and
`vec3/k2` hold a converted view across a push and are O39's error - the conversion names the buffer now, as `t :=
w.View()` would; `own3/h4` is accepted (O26a follows its `take`) and runs clean under the sanitizer, differing from `-i`
only because `-i` runs no destructors. Of the review's own attack programs (`work/`), every change is one of this
section's: the R1, D and L1 shapes refused, `s04`/`s06` accepted, `k09` refused (26.4).

## 27. Vec phase 2a's fix round reviewed (vec7), fixed (2026-10-12)

The read-only review of c7099f6 (`/home/user/review/vec7`) found two high-severity holes, both silent use-after-frees in
plausible code, and five smaller findings. Each repro is a checks case (`vec147`-`vec160`).

### 27.1 F1: "the same path" is the same object only within one statement (O34)

26.1 accepted a move between two regions whose slots are one path (`ownSamePath`): the same variable, then the same own
fields. Its argument - the loans keep the slot from changing between the two reads - holds for the own slots on the path,
not for the root variable: a reference local, a reference parameter used as a cursor (S4a) or a global may be repointed
between the reads, which releases nothing, so no loan sees it. `prev := c.lx; c = c.next; prev.more = take c.lx.toks`
moved the second lexer's words into the first lexer, and releasing the second freed them (sanitizer stop, `-i` right,
`-b` churn text; `f1a`-`f1d`).

Narrowed (the coordinator's decision) to `ownSamePathHere`: both region reads made **in the statement being checked**
(each region records the statement whose check made it, `regionStmt`, from a counter `buildStatement` sets) and both
paths **pure** - a variable that is no global, then fields only, each own slot read directly there, never through a
local holding a borrow (whose region was made in its declaring statement). Nothing in one statement repoints a local or
a parameter between its reads; a call within the statement can repoint a global, so a global root is not trusted. A
parallel assignment whose target repoints the root (`p, p.lx.more = b, take p.lx.toks`) is O34's error already (an owner
value is not held by a parallel assignment). Everything else falls through to the ordinary reach check, which refuses.
`p.lx.more = take p.lx.toks`, by an owner value local, a parameter or a reference local, stays legal (`vec151`); proving
a local un-repointed across statements was not attempted.

The other users of `ownSamePath` (O39's `ownLoanBesidePlace`, the chain test in `ownLoanHits`) stay as they were: they
only skip a conflict between two trees, which conflating two objects never makes unsound (the review's analysis).

### 27.2 F2: a take through a getter (O34)

R1's fix found the region of a Vec field's instance by `ownRegionOf` or `RefExactScope`. An instance reached through a
call giving a borrowed own result (`p.Lx().toks`, `fn (p mut Parser&) Lx() mut Lexer&p { return p.lx }`) is neither:
the result is tagged with the parameter's scope variable bound to `p`'s scope, so `ownValuePlaceReach` answered `p`'s
scope (or the program's, for a global, where the check returned at once) and `d.lx.toks = take p.Lx().toks` was
accepted - then `p.lx = null` freed the words (`f2a`-`f2c`).

Whether a callee gives a borrowed own result is settled only once every body is checked (`ownBorrowResultsSettle`), so
the decision is deferred there rather than taken blindly: a take whose instance is reached - through fields, elements,
slices and conversions - from a call (not a constructor's) or from a variable is recorded (`ownViaTakes`), and after the
settle (`ownViaSettle`) it is refused (O34, with a note saying the region is not known and to take through the own field)
when the call's callee gives a borrowed own result (or is a function value), or when some such call's result may reach
the variable - read off every checked body, flow-insensitively: a declaration, an assignment, a `for`'s initializer, a
spawn's target, through other variables (a fixed point). So a take from a factory's new object (`q := fresh(3); d.toks =
take q.toks`) stays legal (`vec156`), and a getter's is refused directly, through a local, on a global, and with the
local assigned the getter's result only after the take on a later loop turn (`vec152`-`vec155`).

### 27.3 F3: building through a getter, recorded

`p.Lx().toks.Push(x)` builds `x` where the call's result is tagged - `p`'s scope - not in the region of `p.lx`'s object,
and holds it until `p`'s block closes: memory only (the object's reach is `p`'s storage, so O34 never lets it outlive the
words), unbounded in a loop that releases and remakes the object (400,000 turns: 152 MB against 1.7 MB written
`p.lx.toks.Push`). Making the call the region for building needs the landing (O18a) to know at the call what the settle
decides afterwards, which is not cheap; recorded as a known memory cost: build through the own field, not a getter.

### 27.4 The smaller ones

- **N1 (T29a)**: 26.4's in-place retype applied to any array reference, so a conversion of a conditional or a match of
  array references was retyped while its values kept `Array<Char>&`, and returning it through a borrowed result said
  "returns String&, found String&". The retype is limited to a call's reference (`OPERATION_FUNCCALL`); a conditional or
  a match stays a conversion of its own, a copy - built, interpreted and baked alike (`vec157`). Two review programs
  refused before (`c7`, `c9`: a converted conditional of views kept across a push) are accepted now, soundly: the
  conversion is a copy, holding no loan.
- **X1b (T29a)**: a call giving a fixed-length array reference (`String(view(b))`, `Array<Char, 4>&`) was still copied
  at run time; it is retyped too, as a slice of the referent - the run time, `-i` and a baked global agree (`vec159`).
- **N2 (O31)**: past `VALUE_WALK_LIMIT`, `typeHasBareOwningStructAt` answers "not known", reported as its own error
  (`ERR_TYPE_TOO_DEEP_TO_CHECK`: too deep to check), not as O31's "owns objects" with a `T&&` spelling (`vec158`).
- **V1 (T16)**: a generic type holding itself by value (`x N<T>` in `N<T>`) reached codegen's layout and recursed until
  the stack ended; each instantiation is now checked for holding itself when it is made (`instantiateType`), reported
  as `N<I64> cannot hold itself by value` (T16's message now spells the type, `%t`) (`vec160`).

### 27.5 The fuzzer

`vec2aOp` gained five shapes (k 22-26): a borrow through a cursor, the cursor moved on, a Vec moved into the borrow
(refused); both reads in one statement and the cursor moved on after (accepted); a Vec taken through a getter, directly
or through a local holding its result (refused); and through the own field itself (refused, as 26.1).
Own seeds 1-300, the same generator under both compilers: c7099f6 **18 findings** (878 scenarios run, 2722 refused) - 10
F1 cursors and 8 F2 getters (3 direct, 5 through a local), every one of them the review's; this tip **none** (860 run,
2740 refused).

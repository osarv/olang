# Owned references: `own`, `take`, loans - design and implementation plan

Status: designed 2026-10-10, not implemented. The normative rules are in `SPEC.md`: §8.8 (O30-O42), T25e, E34, and
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
  (`tools/takeat.py`, from the compiler's errors as `perm_mut.py` does) over std, the corpus, checks, fuzz, bench and
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

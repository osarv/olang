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

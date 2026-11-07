# Soundness review of rvfix, rv2fix and qc (master 82310a0), 2026-10-10 ~00:55-01:35 CEST

Compiler: `/home/user/wt/s3c/build/out` (82310a0). "Previous compiler" is `/home/user/wt/oannc2/build/out` (db2af5d,
before all three merges); "pre-existing" below means it gives the same. Reproducers are in `repro/`, each headed with
expected and actual; scratch programs are in `work/` (`work/t.sh FILE [b d i v]` builds and runs one under `-b`, `-d`,
`-i` and valgrind; `work/acc.sh FILES` says ACCEPTED (and the output) or the first error). Every memory reproducer churns
the arena before reading back. As in the earlier reviews, valgrind sees none of them (a dead block's chunk goes back to
the pool, not to malloc): the tell is `-b`/`-d` disagreeing with `-i`.

All eight findings of `/home/user/review/tonight` and all eight of `/home/user/review/tonight2` were re-run: every one is
fixed (refused, or correct in every mode; `work/old/`).

## CONFIRMED, by severity

### 1. A spawned lambda builds into the spawner's scopes through its captures, from the task's thread - heap corruption (`repro/01-spawned-lambda-capture-arena-race.olang`)
Pre-existing; the first review's #1 was this class (RunOnStack reaching the real program scope) and rvfix closed only
that path. P2 promises that a scope a task is handed gets a private stand-in folded back at the join, "while no arena is
ever bumped by more than one thread", and a spawned **call** gets one: `spawn fill(a, 0)` - also through a lambda called
with arguments, `spawn fn(l mut List<N&>&, base I64) {...}(a, 0)`, or a function value - is correct in every run. A
spawned **lambda** `spawn fn() { ... a.Push(N(i)) ... }` instead uses the scope the captured reference carries in its
closure, which is the spawner's block: four tasks bump main's block arena at once. `-b`: most runs segfault or print
`wrong elements:` 1679 to 101143, a few print 0 (db2af5d: the same, e.g. 7927). `-r` reports races in `listState.grow` and a SEGV.
`work/ros/r02.olang` shows the smaller shape: a closure made in a task that captures a spawner reference is built in the
spawner's block, and TSan reports the task writing that block's scope header on main's stack. `work/ros/r01.olang`
(RunOnStack inside tasks) races the same way, through the closures it makes, not through the program scope.
Location: codegen of D16e spawned lambdas (closure env / scope arguments of captures, `buildSpawnStmnt` lambdaTask path)
versus the stand-ins made for a spawned call's scope arguments.
Fix: give each scope variable a spawned lambda's captures bind (O4b on a captured reference; the refs home of a captured
value) a stand-in, folded back at the join, exactly as for a spawned call's scope arguments - or lower `spawn fn() {
body }` to a spawned call of a lambda taking the captures as reference parameters, which already gets them.

### 2. A copy out of a reference is placed right only for a declaration or assignment from an lvalue reference - use-after-free, four shapes
rvfix extended O25h ("a copy out of a reference keeps its referent's scope") in `copyRefsHome`/`buildAssignCore`; the
other ways a value holding references is copied out of a reference were not covered. All print -7 under `-b` and `-d`
and 42 under `-i`; all are pre-existing (db2af5d gives the same).

- **2a, the reference is not an lvalue** (`repro/02-copy-out-of-returned-reference-uaf.olang`): `d Box = pick(r)` with
  `fn pick(x mut Box&) mut Box&x`. `copyRefsHome` (semantic.c:15401) returns on `!OperandIsLvalue(rhs)`, and the O25h
  block in `buildAssignCore` requires `OperandIsLvalue(rhs)` too, so a call's reference (also `r.me()`, under `try`),
  a conditional `r if c else Box()` and a match value of references all leave the copy's references in its block. Also
  `d = pick(r)` and `for d Box = pick(r), ...`.
  Fix: for a reference-shaped rhs, take RefExactScope whether or not it is an lvalue (the condition should be
  `!OperandIsLvalue(rhs) && !rhs->type.structMAlloc`), in both places.
- **2b, a reference passed for a by-value parameter** (`repro/02b-reference-for-by-value-parameter-uaf.olang`):
  `fn build(b Box) { b.head.next = Node() }` called as `build(r)` with `r mut Box&`. The argument is a copy out of the
  reference, but b's scope variable is bound as for a temporary: the IR passes grow's own `%olang.scope`, not its
  `%sarg0`. `build(w.b)` (a value, the first review's #2) is right; `build(pick(r))` is wrong too.
  Fix: in `bindCallScopeVars`, a reference argument for a by-value parameter holding references binds the parameter's
  scope variable to RefExactScope(arg) (the referent's), as a value argument binds it to valueRefsScope.
- **2c, a reference passed for a constructor's by-value field or an enum's by-value payload**
  (`repro/02c-reference-into-constructor-or-payload-uaf.olang`): `H(r)` / `E.A(r)`. The instance's references are taken
  to be where the instance is built; the same with a value argument (`H(src.b)`, `E.A(src.b)`) is refused by C2d/T17c.
  Fix: C2d/T17c (`checkCtorHereFits`, `bindEnumHere`) must see a copy out of a reference as existing storage whose
  references are at RefExactScope(arg).
- **2d, a match binding or `as` copying a payload out of an enum the function was handed**
  (`repro/02d-payload-copy-from-parameter-uaf.olang`): `fn f(e E) { match e { case E.A(b) { b.head.next = Node() } } }`,
  `b := e as E.A`, and the same with `e mut E&`. O4b says a payload "bound by match or taken by as" lives in the
  parameter's scope variable, and that holds for a reference payload; a by-value payload holding references gets its
  block instead. Fix: in `patBind` and the `as` lowering, give the copy the refs home of the place it reads (O25h's
  rule), as `copyRefsHome` does for `b := h.b` (which is right, `work/uaf/g10`).

### 3. A slice or E32b view of a split value's inline array is not "held by reference" to O17a - use-after-free (`repro/03-split-value-slice-uaf.olang`)
Pre-existing; O17a (rvfix) is incomplete. `b := src.b; s := b.items[0:2]; s[0].next = Node()` - and `b.items as
Array<mut Node&, 2>&` - borrow the value's storage without passing `borrowLifetimeFits`, and an element read through
the slice takes the slice's scope (RefExactScope's SLICE branch, semantic.c:14969, is the base's storage scope; only an
INDEX directly on a value consults valueRefsHome, :14966). `-b`/`-d` print -7 -7, `-i` 42 42. The same for a by-value
parameter (`fn grow(b Box) { s := b.items[0:2]; ... }`), a slice passed to a callee, `for x in b.items[0:2]`, and
`b.items[0:2][0].next = Node()` written directly (`work/uaf/a13`-`a17`). `b.items[0].next = Node()` is right.
Fix: refuse a slice or view of a split value where something can be stored through its elements (O17a's error, at the
slice), or have RefExactScope read an element through a slice/view of value storage at that value's refs home, as the
for-in over a split value does (`forInElemSplitHome`).

### 4. A conditional of literals beside an operand it does not fit hides an undefined shift - the modes disagree (`repro/05-conditional-literal-shift-modes.olang`)
Regression from rvfix's conditional literals (E4a/E6d). In `OperandBinary` (semantic.c:11063-11064) a conditional of
literals takes `why = LIT_VALUE_OK` without folding, and then `markFoldedAway(&saved)` marks every operand under it as
folded, so `checkLiteralShifts` skips `1 << 40` inside `b + (1 if c else (1 << 40))` (b a `U8`): it stays an I32 shift by
40. `-b` prints 4, `-d` 3, `-i` stops ("shifts by a count outside the type's width"); db2af5d rejects it with
error[E8a, E4a]. Related, same place: a literal-only expression inside such a conditional is computed in its literals'
own type - `b + (0 if c else (2000000000 + 2000000000))` is -294967293 where `b + (2000000000 + 2000000000)` is
4000000003 (E6d: "taken as the one literal holding its value"); and with `k I32` the same conditional is refused with
"this literal does not fit I32, and I32 does not flow into I32" (db2af5d accepted it).
Fix: do not `markFoldedAway` a conditional's values unless they were folded; better, fold each literal-only value of
the conditional (as E6d does for one) and meet at the widest folded type.

### 5. T25c is not applied to global initializers (`repro/04-global-initializer-readonly-copy.olang`)
qc. `semaBuildGlobalInits` (semantic.c:21100) builds each initializer with no `roStoreCheck` (written type) and no
`roInheritFrom` (`:=`), so `M mut List<I32> = G` (G an immutable value global), `M mut := G` and `M mut List<I32> = H.l`
are writable copies sharing G's record: `M.Push(9)` changes G (`G has 3`, all modes). The same copy as a local, or
assigned to M in a function, is error[T25c].
Fix: in `semaBuildGlobalInits`, call `roStoreCheck(rhs, ..., ERR_READ_ONLY_COPY_DECL)` for a written value type of a
`mut` global, and for `:=` refuse (or make read-only - an immutable global already is) a `mut` global copied from a
read-only place.

### 6. A read-only copy's references are handed out writable through a slice, a view or a for-in (`repro/10-qc-readonly-copy-slice-forin.olang`)
qc. `x := G; x.arr[0].v = 5` is error[T25c] ("writes through a reference a read-only copy holds"), but
`s := x.arr[0:2]; s[0].v += 1`, `w := x.arr as Array<mut Node&, 2>&; w[0].v += 1` and `for e in x.arr { e.v += 1 }` are
accepted: each borrows the array into a reference first, and roRefOf treats an element read through a reference as
shallow (roRefOf, semantic.c:14692-14695: a base that is a reference gives `false`). `forInElemFrom` (semantic.c:17637) sets `roFrom` only
for value elements, so a by-value parameter whose for-in writes through its reference elements is not found to need a
writable argument: `look(G)` with `fn look(x B) { for e in x.arr { e.v += 1 } }` is accepted. Low impact - G's own
references are writable directly (shallow, `G.arr[0].v = 5` stands) - but it breaks T25c's stated rule, and with a
private field it is the laundering QC exists to stop.
Fix: a slice or view of a read-only value is a read-only reference (its `refMut` off, and roRefOf following a SLICE/AS
view to its value root); `forInElemFrom` gives a reference element read-only permission when the source is read-only
(as `patBind` does for references) and adds the source's parameters to the fixed point.

### 7. `Str` with an effect through a reference is accepted, and `$` runs it twice at run time, once under `-i` (`repro/08-str-effect-through-reference-modes.olang`)
Pre-existing (db2af5d: `b 2`), touching qc. E11c requires Str to have no effect and checks it as K1a evaluability, which
refuses a global write but not a write through a reference (`fn (a B) Str() String { a.c.n = a.c.n + 1 ... }`): the
built program calls it to measure and again to write (`b 2 b 2`), `-i` once (`b 1 b 1`). With G immutable and a
by-value receiver it is also a read-only copy written through, which T25c refuses for every explicit protocol call
(operators, Eq, Hash, At, Len, Call - `work/qc/e*.olang`) but not for the implicit Str call.
Fix: `checkStrPurity` (semantic.c:10792) should also refuse a store through a reference (any reference reached from the
receiver or a global), or `$` should call Str once and keep the text.

### 8. S4d does not cover compound assignment or increment - a value holding its own storage (`repro/06-s4d-compound-assignment-cycle.olang`)
rv2fix. Only a plain `=` collects `ctx->assignPlaces` (buildAssignStmnt, buildParallel, spawn), but `x += e` is
`x = x + e` (S5) and `x++` is `x = x.Inc()` (E31). With `fn (a E&) Plus(b E&) E { return E.Add(a, b) }`, `x = x +
E.Lit(2)` gives 3 and `x += E.Lit(2)` makes x hold itself: `-b`/`-d` segfault in eval, `-i` "recurses deeper than -i
allows". `x++` through `Inc` likewise. A cycle, not a use-after-free.
Fix: collect the target's place for compound assignments and for the increment lowering (`buildIncDec`), so the
operator call's `copyOldBorrows` sees it.

### 9. Low: S4d through another reference to the same place (`repro/07-s4d-aliased-place-cycle.olang`)
rv2fix. `storageWithinPlace` compares paths, so `set(x, x)` with `p.a = E.Neg(q.a)` (q aliasing p) builds a value
holding its own storage - undecidable in general. The spec's "no assignment makes a value hold its own storage" should
be narrowed to the place as written (its last sentence already says a reference written in the value makes the cycle
it says).

### 10. Low (over-rejection, and the inconsistency behind it): collections of handles in the prelude (`repro/09-qc-collections-of-handles.olang`)
qc. With elements that hold writable references (List, Map, any handle), the prelude's own generic code no longer
compiles: `Map.Get` (map.olang:111 - `f mapSlot<K, V>&s` is read-only, so `return f.entry.Value` is a read-only copy),
`List.Clone`, `Array.ToList` (through `PushAll`), `Array.Filter` - error[T25c] at the program's call; db2af5d compiled
them (`Iter().ToList` is refused too, but db2af5d refused it already, with O23). Meanwhile `ls[0].Push(9)` through a user `At` on a read-only `List<List<I32>>&` is accepted (a call's
result is fresh) where `for x in ls { x.Push(9) }` and the same on `Array<List<I32>>&` are refused - one element, three
answers. One of the errors (`list.olang:70`, PushAll's `s.grow(a[from])`) is reported in the prelude with no
"instantiated here" note (`settleReadOnlyArgs` runs after the instantiation context is gone, B11).
Fix: make the prelude's reads of its own elements writable where the collection is (`f mut mapSlot`, a `mut` receiver
or a borrow for Clone/ToList), and decide whether an At on a read-only receiver gives a read-only copy (as for-in does).

## PLAUSIBLE (traced, not reproduced)

None kept apart: everything traced was then tried, and is either a finding above or clean below.

## Over-rejections noticed on the way (not regressions unless said)
- `k, h.next = i, Node(i + 200)` (or `a, b = Node(i), Node(i * 10)` with reference targets) inside a loop body or an
  inner block is error[O17a] "this value's references live where its own storage does not" - the constructed value is
  held in a value hidden local landed at the target, then borrowed. db2af5d refused it too (O25/O10), and refusing is
  the safe outcome (the reference would name the hidden local); the message is misleading. `work/par/p04`-`p07`.
- Returning a reference local assigned in a parallel assignment is error[O10d] (O26a is not applied there). `work/par/p08`.

## What was checked and found clean
- **Earlier reviews**: all 16 reproducers re-run - fixed (`work/old/`). RunOnStack: 07 clean under `-r`; nested
  RunOnStack and joins inside RunOnStack threads keep the program scope's stand-ins (the races in `work/ros/r01` are #1).
- **O4b by-value parameters** (rvfix): copies of the parameter, reference fields read out, generics instantiated with
  Box, by-value receivers, constructors' by-value parameters, spawned calls, chains, `if` blocks, loops - all 42 in
  `-b`/`-d`/`-i` (`work/uaf/b*`, `g03`-`g07`, `g10`). Function values with such a parameter are refused by T25c.
- **O25h copies out of references** (rvfix): `d Box = r`, through a reference local, a field through a reference
  (`r.b`), in an inner block, a copy of a copy; refused where they must be (array literal / fill, O25c; parallel, O25h).
- **O17a** (rvfix): reference locals, conditionals, reference array literals, reference payloads, constructor reference
  parameters, Call adapters, lambda captures - refused; `b.items[i]`, match/as of reference payloads, inline copies and
  the for-in over value elements (`work/uaf/s01`) - correct.
- **O17** (rv2fix): readFromRegion's LENT/IN split classifies the parameter, its inline storage and views as stores and
  only reference-followed reads as region reads; muted copies of catch clauses and for-in probes do not lose edges
  (ensureBodyChecked never runs under mute).
- **P2 for computed callees** (rv2fix): `spawn (e as E.F)()`, a match value, a held reference's field, `id(h).f()`, a
  conditional of fields, a field read into a local - all refused when the closure is shorter than the join.
- **S4d and parallel assignment** (rv2fix): `x = E.Neg(x)`, `n = Node(n)` in a loop, pairs through fields, swaps,
  array elements, `x = wrap(x)` through a keeping callee, globals - baked = `-b` = `-d` = `-i`, read back after churn
  (`work/s4d/d01`, `d03`, `d06`); evaluation order with At/SetAt targets and index side effects agrees in all modes
  (`work/par/p01`, `p02`).
- **T22 for Call** (rv2fix): the unsafe directions (a writing Call or lambda for a read-only parameter, a read-only
  result for a writable one) are refused.
- **QC fixed point** (qc): by-value parameters written through, lent, stored, returned, passed to callees (also cycles),
  default arguments, generic constructors, by-value receivers, spawned callees, defer, conditionals, fills, match and
  `as` - all refused for read-only copies (`work/qc/p*.olang`), as are operators, Eq, Hash, Less, Call, At, Len, `in`,
  Map keys and match value cases with a writing by-value parameter (`work/qc/e*.olang`).
- **`==` on recursive types** (rvfix): struct/array mutual recursion, a struct through an enum-free cycle, NaN and -0.0
  in leaves - baked = run in every mode (`work/eq/e01`).
- **Conditional literals** (rvfix), apart from #4: F32/F16/BF16 rounding, U8 wrap, U64 hex patterns, chains, match
  values, G9a inference - baked = `-b` = `-d` = `-i` (`work/cl/c01`, `c02`).

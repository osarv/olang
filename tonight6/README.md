# tonight6 - soundness review of wt-s5scope (a2e2878..055e97c)

Built `/home/user/wt/rv6` at 055e97c ("new") and, for "pre-existing", the diff base a2e2878 from `git archive` into
`/home/user/review/tonight6/base` ("base"; master's `build/out` predates a2e2878, so it was not used). Every program was
built with `-b`, `-b -s`, `-b -d -s` and run, and run under `-i`, by `work/t.sh` (which also builds it with base).
Reproducers are in `repro/`, scratch programs in `work/`.

## Confirmed

**F1 - NEW, heap corruption: the E31b write back indexes the collection as it is after the call**
(`repro/f1_writeback_out_of_range.olang`). `v[0].Shrink(v)` copies `v[0]` out, calls `Shrink` on the copy, then
writes it back with `SetAt(0, copy)`. `Shrink` replaced `v`'s storage with an empty array, so the compiler-made
`SetAt` stores past it: `v.other`, allocated next, reads `I64[555, 666, 777, 888]` (the copy's fields) under `-b`,
`-b -s` and `-b -d -s`; `-i` stops with "it indexes outside the array, which is undefined at run time" at the SetAt
line. The program never indexed out of range - `v[0]` was valid when written. Base builds it and prints `7, 7, 7, 7`
(the copy was dropped, r02). The derived check `try` gives the field-assign form does not exist for a method call:
`try v[0].Shrink(v)` is R20 "'try' needs something that can fail", so there is no way to opt into the check.

**F2 - NEW, the write back goes to another slot: an index or base that is a variable is read twice**
(`repro/f2_writeback_index_read_twice.olang`, `repro/f2b_writeback_base_read_twice.olang`). `atReadForWrite` holds an
index "unless a variable or a literal" and the base unless a READ_VAR, but a global can change between the At read and
the post-call SetAt. `l[G].AddAndMove()` with the method setting `G = 1` writes slot 0's modified copy into slot 1
(`l[0].N=0 l[1].N=100`, the Array line gives `100 50`); `l[G].N = bumpG()` the same (`0 7`). All four modes agree; base
rejects the assignment (E31) and drops the method's write. With a global List base the callee replaces
(`GL[0].Reset()` doing `GL = List<Acc>()`), the write back indexes the new empty list: segfault (exit 139) built, `-i`
"list.olang:145: it indexes a null array"; base prints 0. S4/E31 promise "x and i evaluated once"; a global index
changed to an out-of-range value turns this into F1.

**F3 - NEW behaviour, lost writes through aliasing the element** (`repro/f3_writeback_loses_writes.olang`). The get/set
model overwrites any other write to the element made during the call: `l[0].AddFrom(l[0])` (two copies, the receiver's
`+1` lost: list 10, array 11); `l[0].Touch(l)` with Touch writing `l[0].N += 100` through the list (list 11, array 112);
and `r[0].Remove(r)` with Remove doing `l.RemoveAt(0)` writes the REMOVED element over the survivor (`len 1 r[0].N 1`,
the remaining element had N 50). All modes agree. Base dropped all of these writes (r02) - so not a regression in
kind, but the batch makes x[i] writes look like array writes while they are not; Swift traps these as exclusivity
violations. Same family: `bump2(l[0], change(l))` with `change` writing `l[0].N = 100` gives list 1, array 101 - the
read is made before later arguments run (`work/b2.olang`).

**F4 - NEW use-after-free: a local from a fallible call on a LOCAL collection, returned**
(`repro/f4_return_local_from_local_map_get.olang`). `l := try groups.Get(1); return l` with `groups` a local
`Map<I64, List<I64>>` builds; `-b -s` and `-b -d -s` stop with "use after scope closed" (`-b`/`-i` print 11 1, no
reuse visible). Same with `x := try ll.Last(); return x` on a local `List<List<String&>>` and with
`try m.Get(0) catch default List<String&>()` (`work/o5a.olang`, `work/o5c.olang`). Base rejected all three with O10c at
the call (the local was moved into the result scope by O26a and the callee's obligation then failed). The batch's
`callResultTiedToBlock` now keeps such a local in its block - and nothing judges the returned value's references
against the result scope, so the List handle (and its text) comes back pointing into the closed block. Non-fallible
calls held up: `x := ll[0]; return x`, `x := first(ll); return x`, `return ll[0]`, `x := ll.RemoveAt(0); return x`
and a user `? ` function all build and run clean under `-s` (base gives garbage for the first three - fixed by this
batch).

**F5 - PRE-EXISTING use-after-free that r01's fix does not reach: a projection of a call's value result passed on**
(`repro/f5_projection_of_call_result_uaf.olang`). `bs.Push(pairish(t).a)` (a field of a struct result holding `t`),
`bs.Push(boxes(t)[0])` (an element of an array result) and `bs.Push(wrap(pairish(t).a))` build in both new and base;
`-b` prints the churn text, `-s` "use after scope closed", `-i` the right text. `bs.Push(box(t))`, `x :=
pairish(t).a; bs.Push(x)` and `arr[k] = pairish(t).a` are correctly O10c now. `landedCallRefsScope` walks projections,
but its `b->landing` early return leaves a still-landing call's projection to be "built where the parameter is bound",
and the callee's obligation is never held there.

**F6 - E31b skipped in global initializers: r02's lost write remains there** (`repro/f6_global_init_writeback_skipped.olang`).
`Y I64 = GM[0].AddRet()` and `Z I64 = bump(GM[0])` (GM a `mut` global List) write copies nobody writes back:
`Y 5 Z 7 GM[0].N 5 w 5`, expected `Z 12 ... 17`. `atWriteBackArgs` returns when `!ctx->hasOwnScope`. Pre-existing in
effect (base: `GM[0].N 0`), but the batch's rule says these calls write back.

**F7 - PRE-EXISTING lost write not covered: a reference to the element copy** (`repro/f7_ref_to_element_copy.olang`).
`x := l[0].Self(); x.N = 99` (Self a `mut` method returning its receiver as `mut Acc&a`) or `y := first(l[0])` leave
`l[0].N` 0; the Array spelling gives 99. Same in base. Memory-safe (the copy lives in the statement's block), but it is
r02's silent lost write by another route.

**F8 - diagnostic regression** (`repro/f8_spawn_writeback_diag.olang`). `spawn l[0].Add()` / `spawn bump(l[1])` with a
`mut` receiver/parameter now say "'spawn' takes a call" (the call is wrapped in the write back's OPERATION_SEQ). Base
built them and dropped the writes. Refusing is right (the write back would race the task); the message is not.

**F9 - diagnostic: the new B11 text-copy note gives wrong advice** (`repro/f9_compound_key_note.olang`). On a user type
whose SetAt stores its String& key, `m[$k "..."] += 100` is O10c (pre-existing over-rejection: the compound path holds
the rendered key in a hidden local in the block) with the new note "pass a copy ... write '$' before it" - it already is
a `$` rendering. The plain `m[$k "..."] = k` and `m[mkKey(k)] = k` build and run right under `-s`.

## Plausible (traced, not reproduced)

None beyond the variants noted above. `forgetCall`: I could not make it drop an obligation that mattered - the set-aside
At is never evaluated, the compound path and atReadForWrite each build a fresh read with its own obligations, and a
SetAt storing its key still refuses a loop-local key (`work/fc2.olang`) and places a built key where the map lives
(`work/fc1.olang`).

## Tried and held

- E31b permissions: read-only parameter, immutable global, read-only copy (`x := G`), by-value parameter given a
  read-only copy, nested `rows[0][0].N = 9` through a read-only `List<List<Acc>>&`, an immutable value-type collection
  with At/SetAt - all refused (`work/p1_readonly.olang`, `work/p2_nested_ro.olang`).
- E31b references: storing loop text into the copy by field assignment, a `mut` method, a `mut &` function, a function
  value, a nested `rows[0][0].name = t`, through `Self()` - all refused (`work/s1*.olang`); a generic method building
  into a receiver's field, per instantiation and with the storing helper declared after main, refused only for the
  instantiation that stores, in either statement order (`work/rg5-7.olang`); pushing through an element's List field
  handle is placed in the state's scope (`work/rg1.olang`, clean under `-s`).
- E31b in `defer`, in a conditional's arm, a match value and the right side of `and` (runs only when evaluated) -
  correct in all modes (`work/df1.olang`, `work/c1.olang`).
- r01: study5's r01-r01e are refused; new variants through a generic, a method, `wrap(box(t))`, `try ... catch
  default`, a conditional, a match value, a function value, Insert, PushAll, Map.Put, Map.Update, a destructured result
  and `keep(bs, wrap(idg(box(t))))` are refused (`work/v*.olang`) - only the projections of F5 get through.
- r04/E25: `mk2&t(k)` then pushed outward, `mk3&rows(t)` with `t` loop text, `mk2&u(k)` - refused; `try mk2&rows(k)`,
  with `catch default` and in a nested block - correct under `-s` (`work/e25a.olang`, `work/e25b.olang`).
- r07/D16c: returning, pushing outward or assigning outward a lambda that captures a value holding loop text; a
  spawned lambda capturing one inside the join; returning a lambda capturing a by-value parameter holding references
  (direct and generic) - all refused (`work/d1-d6.olang`); building into the capture's scope from inside the lambda
  (`fresh(r) Node&r`) gets a real scope (`work/d7.olang`); a captured List handle is read-only (`l.Push` refused).

## Follow-up (a10397c)

Rebuilt `/home/user/wt/rv6` at a10397c (E31b narrowed, F4/F5/F9, merged with rv3fix). "Base" is still a2e2878. All of
F1-F9 above are now refused or fixed: F1, F2, F2b, F3, F6, F7, F8 are E31b's new "writable call on x[i]" error, F4 and F5
O10c, F9's note reworded. Repros `repro/g*.olang`, scratch in `work/` (n*, h*, u*, q*, p*, s*, b*, sp2).

### Confirmed

**G1 - PRE-EXISTING use-after-free that the handle hold-and-lend does not reach: a call on a handle element of a
handle element** (`repro/g1_nested_handle_call_uaf.olang`). `users[0][0].Push(t)`, `pushFn(users[0][0], t)` and
`(try mm.Get(0))[0].Push(t)`, with `t` a loop body's text, all build; `-b` prints freed bytes, `-b -s`/`-b -d -s` stop
"use after scope closed", `-i` prints the texts. `users[0][0].Push($t)` too (the rendering is built in the loop body,
work/n2). One level (`users[0].Push(t)`, work/h2) and the two-level store `users[0][0][0] = t` (work/n5's first
version) are correctly O10c. Traced: `atWriteBackArgs` holds the argument `users[0][0]` in `$handle` as `:=` would,
but its base `users[0]` is an unheld call result, so `$handle`'s references read as the statement's block and Push binds
there; the store path re-reads and holds the inner collection (`atReadAgain`), the call path does not. Base builds the
same programs with the same garbage, so it is not new - but the batch's claim covers this shape. A local copy first
(`l := users[0]; l[0].Push(t)`) is correctly refused.

**G2 - lost write through a handle element: a mut method that repoints the handle's own field**
(`repro/g2_handle_method_repoint_lost.olang`). `bags[0].Reset()` (Reset does `b.s = State()`) and `resetFn(bags[0])`
on a user handle (`type Bag struct() { s mut State& = State() }`) run on the hidden `$handle` copy and nothing is
written back: both resets are lost (`12`, `12`; an Array element would give 7 then 0). The same statements inside a loop
are E31/O17's split-lend error (work/u2), so the outcome depends on whether the statement sits in the collection's own
block (the copy is then not "split", and no lend check runs). Not reachable through List/Map/StringBuilder (none of
their methods assigns its own field) - only a program's own handle type. Base gives the same lost writes via r02.

**G3 - field store through x[i] whose value replaces the collection's storage: an out-of-range write-back**
(`repro/g3_store_value_shrinks_collection.olang`). With the decided order (place held, value, then read, store, SetAt),
`v[0].E = shrink(v)` - shrink replacing `v.data` with an empty array - reads and writes back at index 0 of the empty
array: `v.other` becomes `[555, 7, 7, 7]` in every built mode; `-i` stops "it indexes outside the array" at At. The
plain element store `w[0] = shrinkBig(w)` corrupts the same way and is pre-existing (base builds it, same output); the
field store is new (base: E31's error). E16e's unchecked index - but an index the program wrote while it was valid,
sequenced by the compiler; worth stating in E31b or E16e if kept.

**G4 - diagnostic: a note names a compiler-made local** (`repro/g4_note_names_hidden_local.olang`). `names[0][0] = t`
(t a loop's text) is correctly O10c, but the B11 note reads "pass a copy, which is made where '$handle2' lives: write
'$' before it"; work/n5 gives the same with `$handle5`.

**G5 - over-rejections (no soundness issue).** `boxes[0].items.Push($k "...")` in a loop, with `items` a by-value
`List<String&>` field of a struct element, is O10c even for a temporary (`repro/g5_box_list_field_overreject.olang`);
the batch's s6handleloop uses `items mut List<I64>&` (a reference field), which compiles. And every use of an element of
a global `List<List<I64>>` or a global `Map<I64, List<I64>>` - `GL[0].Push(5)`, `GL[0][0] = 9`, even
`println($GL[0].Len())` - is O10c, mutable or immutable, here and in base (work/q2, q3) - pre-existing, so the
permission side of a global's handle elements could not be exercised through globals.

### Plausible

None.

### Tried and held

- Handle copies escaping: `me(users[0])` returning the lent reference into an outer local, `keepIn(users[0], h)`
  storing the handle into a holder, `keepRef(users[0], rs)` pushing the reference into an outer list, `r = me(users[0])`
  in a loop - all refused (work/h1, h5, h6, h7).
- One-level hold-and-lend with loop text: `users[0].Push(t)`, `users[0][0] = t`, `(try m.Get(0)).Push(t)` refused
  (h2-h4); with renderings `users[0].Push($t)` / `users[0][3] = $t` correct under `-s` (n4); the store with call indices
  `names[idx(names)][idx(names)] = $t` correct (s3).
- Permission (QC): a read-only parameter's `ls[0].Push`, `ls[0][0] = 4`, `for l in ls { pushFn(l) }`, a read-only copy
  of a global (`x := GL; x[0].Push(7)`), and by-value parameters writing through handle elements one and two levels
  deep (`f(ls)`, `g(ls)`, `h(ls)`, `k(ls)` from a read-only reference) - all refused (q1, p3, p4).
- Spawn on a handle element (`spawn users[0].Push(1)`, `spawn pushFn(users[1], 2)`) is E31b/P2's error; a task taking
  the collection works (sp2).

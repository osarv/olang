# e31view - soundness review of c9d14a7 (E31b view lends, `try x[i]`, the bench check)

"new" is `/home/user/wt/rve31` at c9d14a7 (`build/out`); "base" is master d05c915 from `git archive` in `base/`
(`base/build/out`). Every repro is built with new `-b` and `-b -d -s` and run, interpreted with new `-i`, and built with
base `-b` by `t.sh`; `maxrss.sh` gives a peak resident size. `./runall.sh` runs every `repro/*.olang` (output
`runall.out`). Scratch probes are in `work/`; `fuzz/` holds a small differential generator (below).

## Findings, by severity

**F1 - CONFIRMED, new reach (the class exists for handles): a view's premise fails when the collection is reached
another way - the callee's writes through its copy go to the wrong storage, silently.** SPEC E31b now says "the callee
cannot tell such a copy from the element, so no write is lost". It can, when something replaces the element through
another path while the view is lent - the callee itself (a second argument, a global, a capture) or a LATER argument of
the same call. The hidden copy keeps the old element's references, so a write through `c.d` lands in the replaced
array, or in another element that now holds it:

- `repro/s1_view_alias_replaced.olang` - `work(l[0], l)`: `l[0] = V(...)` then `c.d[0] = 5`; List: element `d[0] 0`,
  and the callee reads the stale `n 1`; Array spelling: `d[0] 5`, `n 7`.
- `repro/s1b_view_later_argument.olang` - `l[0].Put(replace(l))`: the receiver's copy is read first, the argument
  replaces the element, Put writes the old array. List `0`, Array `5`.
- `repro/s1c_view_alias_other_element.olang` - the callee moves slot 0 to slot 1 and refills slot 0, then writes "its"
  element: from a List the write lands in **slot 1**, from an Array in slot 0.

All modes agree (`-b`, `-b -d -s`, `-i`); base refuses all three with E31b. Memory-safe. This is exactly the hazard E31b
names ("may reach the collection another way"), now in the other direction: no write-back clobbers the other path's
write, but the callee's own write is misdirected. The handle rule (decision 44) already accepts the same thing -
`repro/s1h_handle_alias_preexisting.olang` (a pushed value lands in the replaced list; base builds it too) - so it is a
consistent extension, but the SPEC sentence is false as written. Recommendation: keep the relaxation and state the
caveat in E31b (as G3's E16e sentence does for stores): "a callee, or a later argument, that replaces the element
through another path leaves the copy naming the old element's storage". Narrowing views to callees that cannot reach
the collection would need whole-program reach (globals, captures), which O17b never had either.

**M1 - PRE-EXISTING class, doubled by the view: unbounded memory for an element over 64KB lent in a loop's condition**
(`repro/m1_bigcopy_condition_growth.olang`, `repro/m1b_bigtemp_condition_growth_preexisting.olang`). A temporary over
64KB comes from its block's arena (T7c); a loop's condition is evaluated in the enclosing block, which does not close
while the loop runs, so every evaluation keeps At's 72KB result: 5,000 turns peak at 351MB on base and 364MB on new
(m1b, a plain read `s[0].n`). The view lend holds a second 72KB copy per evaluation: m1 peaks at 737MB (200,000 turns
was OOM-killed at 9.4GB). In a loop body or a function the copies are reclaimed per turn/call (k03: 2MB flat). Not
introduced by c9d14a7, but the hidden copy is also an extra memcpy of the whole element per call (At's result is
already a temporary) - free for `Matrix`, not for big elements.

**P1 - PRE-EXISTING E31b hole, CONFIRMED: a computed callee skips the x[i] check entirely**
(`repro/p1_computed_callee_lost_write_preexisting.olang`). `h.fv(l[0])` (a field's function value), `fs[0](l[0])` and
`bumper()(l[0])` with a `mut Acc&` parameter build in base and new; the List copy is a temporary and every write is lost
(List `0`, Array `1 10 1`). `atWriteBackArgs` runs only on the named-call and method paths; `g(l[0])` through a local or a
parameter is E31b's error. A function value's body is unknown, so the fix is E31b's error there (never a view).

**T1 - PRE-EXISTING, minor inconsistency** (`repro/t1_try_array_index_lost_write.olang`). `bump(try a[1] catch default
Acc())` on a built-in array is a value (element or default) lent as a temporary - the write is lost silently - while
c9d14a7 makes the List spelling `bump(try l[0] catch default Acc())` E31b's error. `bump(try a[0])` and
`(try a[2]).Add()` on an array are the element and write it.

**S - SPEC/code mismatches.** (1) The "cannot tell" sentence (F1). (2) SPEC: "Any other use says no: ... a value field
lent ...", but `vsOp` accepts a value field lent to a read-only reference parameter or by value (`work/a01_keepinner`
compiles), and a handle field lent to an O17b-qualifying parameter (in CLAUDE.md, not in SPEC). Both are sound; the text
should say so.

**D - diagnostics.** (1) `repro/d1_diag_held_index_note.olang`: correctly refused (O10c: the callee keeps a borrow of the
hidden copy in an outer `List<Pt&>`), but the note says "the index is held here, for both the read and the write ...
make it where 'out' lives first, then index with it" - `NOTE_HELD_INDEX_WHERE` fires for any `$`-named hidden local
(semantic.c ~12726), so a view's `$handle` gets it; no index is held and nothing is written back. (2)
`repro/d2_diag_cascade_body_errors.olang`: a callee whose body has an error (here C2d) adds an E31b at every x[i] call
("which this call would write ..."). (3) A refused view gives no reason: E31b at the call names no callee statement.
`ws.Gemm(S[g, h], ...)` becomes an unexplained E31b the day Gemm's body gains a `println($c)` or a `match` on an enum
field; a note "the callee is no view because of this statement" (as O10c's "the callee requires it because of this
statement") would point at it.

## Over-rejections (secondary)

- `repro/r1_overreject_nested_view_fields.olang`: an element holding view structs **by value** (a layer of matrices),
  its callee lending a field to a view-only method (`c.w.Fill(3)`) - E31b, though `s[1].w.Fill(3)` written at the call
  site is accepted. `vsOp` recurses only for the parameter whole; a value-field path lent to a writable parameter that
  is itself a view of the field's type is sound by the same argument (the field is part of the copy's own storage and
  the callee writes none of it). Likely to matter for numeric code (structs of `Matrix` values).
- `repro/r2_overreject_try_view_regression.olang`: `put(try s[2] catch default ..., 9)` to a view-only callee - base
  built it and the write reached the collection (`I64[0, 0, 9, 0]`); new refuses it. A view needs no write-back, so the
  try form's copy (a temporary) would be fine for a view callee - only writers need E31b. (`try (put(s[2], 9) + 1)`
  compiles: the index inside a call is not checked.)
- `repro/r3_overreject_enum_field_read.olang` and `work/o11`-`o18`: in a view callee, `match c.kind`/`c.kind == K.A`
  (an enum value field), `c.inl[0]` (an inline array element read) and `$c.p` (rendering a value field) make it no view;
  `c.p.X`, `$c.n`, `for x in c.d` do not. Also `$c`, `c == d`, `w := c` (read-only alias).
- `spawn put(s[k], ...)` is refused (`work/j01_spawn.olang`, documented); `spawn fn() { put(s[k], k) }()` works.

## Tried and held (no finding)

- **Own-storage writes at every depth are refused** (`work/b01`-`b24`, `a05`, `e03`, `g01`, `g03`, `p01`, `p02`, `q01`,
  `m01`, `a04`): assignment, compound, `++`, `AtomicAdd`, destructuring, parallel/swap, `defer`, a for's post clause, a
  do-for, a spawn target, a spawned lambda, a catch block, a match value's block, a nested block, `try x.N++`/`+=`,
  `<<=`; a generic callee (per instantiation - `match T` arms judged per type, e03/e04), a trait default (g01 refused,
  g02 accepted), `Call` directly and through an adapter, a `mut` method on a value field, a value field lent to a
  writer, an operator method with a `mut` receiver on x[i], read-only to `mut <T>` (T25c), the parameter to `mut <T>`,
  a cycle through a handle field with the bodies declared after main (settle), a constructor pun keeping the parameter.
  `take` of an own field would be consumed by `vsOp` as a read, but no view element can hold one (O31/O37 refuse an
  owning element: `work/e02_ownelem.olang`).
- **Memory**: the callee storing a borrow of the copy's value part, or the caller's loop-local references, through the
  copy's reference fields into the collection is O17's error whenever the copy and the collection are in different
  blocks (`a03`, `c01`-`c11`, `a12`-`a14`, `a10` with O26a's result scope, `v01`); same-block keeps (`a01`, `v02`) live as
  long as the collection, clean under `-s`. Derived `&h` fields: O10c (`c12`, `c13`), O23/O11 for List elements (`c15`,
  `c16`), C2d for builds (`c14`). Borrows of the copy kept through a List, a closure, a borrowed result or a return:
  O10c/O10/O10d/T25c (`n01`-`n04`, `f01`, `f02` - f01 with a 72KB element whose copy is in an arena, under `-s`). QC:
  a read-only List's element lent as a view is T25c's error, hidden or written out (`u01`, `u02`). Own elements (`e02`,
  O37) and a Vec's buffer (`i01`, O38) cannot reach a view.
- **Run time = evaluator**: `work/d01`, `d02`/`d03` (a catch default, a guard, an assert message, a comprehension filter,
  a for's condition and post, a do-for, a lambda, a constructor field, a destructor, a conditional, `and`), `k01` (an
  element over 64KB in those positions), `h01` (an immutable global collection, baked global set at startup), `l01`
  (every argument once, left to right: `12345`) - identical under `-b`, `-b -d -s`, `-i` and in baked globals.
- **Differential generator** (`fuzz/gen.py SEED`, `fuzz/run.sh FROM TO`): a callee of 1-4 random statements over `c mut
  V&` (writes through references, own-field writes, writers/views/read-only/by-value callees, `mut` methods, a value
  List field pushed, a handle field reset, `defer`, `if`, `for`) given `l[0]` and `a[0]`; seeds 1-300: 84 accepted, 216
  refused, **0 mismatches** between the List copy and the Array place.
- **`try x[i]`**: `derivedAtRead` covers `g(try l[0])`, `(try l[0]).Add()`, `try l[0] catch default`, `try ll[0][1]`,
  `(try ll[0])[1]` (`work/t02`, `t03`); a declared `TryAt` is refused too (`t01`).
- **Bench check**: all 13 `bench/*.olang` compile with `-c` on new (`fused.olang` did not on base); the scenario copies
  the top-level `bench/*.olang`, compiles each, and requires at least 10.

## Verdict

No memory-safety hole and no disagreement between the run time, `-d -s`, `-i` and the evaluator. The walk is sound for
its claim - a callee judged a view writes nothing of the copy's own storage (every crafted writer refused, 0
mismatches over 84 accepted random callees) - and O17 still refuses every build or store through the copy's
references that would outlive it. **Merge, with SPEC E31b corrected** (F1's aliasing caveat in place of "cannot tell
... so no write is lost", and S2's accepted lends); F1 is the handle rule's known behaviour extended to structs, not a
regression in kind. Follow-ups, none blocking: P1 (computed callees skip E31b - older, silent lost writes), M1
(over-64KB temporaries in loop conditions - older, doubled here), D1-D3, r1/r2 over-rejections.

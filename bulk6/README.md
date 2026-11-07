# Bulk review 6: the rework as it stands on master (a041393..5357ee7)

Reviewed read-only at 5357ee7 (worktree /home/user/wt/rework, detached, clean), 2026-11-02. The compiler is the
worktree's own `build/olang`, built from 5357ee7 by /home/user/wt/mut's binary of the same commit. `run.sh FILE`
(beside this file) runs a program three ways: built (-O3, LTO), built `-debug -sanitize`, and `olang interpret`.
Reproducers that show a finding are in `repro/`; the attempts that held are in `repro/held/`. Every finding below was
run; the outputs quoted are what the three runs printed (they agree unless said).

Counts: soundness 0 (no use after free or read of freed storage found), wrong result 7 (F1-F7), over-rejection 5
(F8-F12), memory 1 (F13), diagnostics 1 group of 7 (F14).

## Wrong results

### F1 (wrong result; E31b). A mutating call made in place through RefMut loses its write when the callee grows the collection

Round 8's E31b: `x[i].M(args)` is made on `x.RefMut(i)` where every other argument is a plain value, "taken before the
arguments are evaluated, which nothing they do can change". The check looks only at the arguments - the method body
itself (and a constructor a "plain" argument calls) may grow the collection, so the element reference names the
replaced buffer and the call's write goes there.

- `repro/inplace_global_grow.olang`: `G[0].Bump()` where `Bump` pushes 1000 elements onto the mutable global `G`, then
  writes `b.n = 99`. Built: `G[0].n = 1 len 1001` (write lost). `-sanitize`: "stale view: storage a collection replaced
  when it grew was read or written"; interpret: stops ("it uses a view of a Vec's elements taken before the Vec grew").
- `repro/inplace_closure_grow.olang`, `repro/inplace_closure_grow_loop.olang`: the element holds a closure over a
  writable reference to its own Vec; `v[0].Run()` calls it, then writes. Built: `sum 200`, by the rule `sum 19800`.
- `repro/inplace_ctor_arg_grow.olang`: `G[0].Set(w(42))` - `w`'s constructor body grows `G` (a "plain" argument: a
  constructor called on plain values). Built `G[0].n = 1`; sanitizer and interpret stop.

The copy form the rule replaced (read, call, write back) would have given 99/42; SPEC's own reason for the copy-form
error ("the callee runs between the read and the write-back and may reach the collection another way") is exactly
what the in-place form leaves unchecked. Memory-safe here only because the replaced buffer is retired, not released.

Code: `compiler/check.olang` `inPlaceCall` / `plainArg` (`case typed.Expr.Call(_, _, k): c.ctorCall(k) and
c.plainArgs(k.Args)` - the constructor's body is not looked at; the call's own target is never looked at). Suggested
fix: take the in-place form only where neither the target's body nor any constructor an argument calls may grow a
collection of the receiver's type - the views pass's may-grow summaries (M19g rules 2-3: a parameter, a global by name,
anything through a function value or an `any`) or effects.olang's "may grow a Vec" - else keep the copy form and its
E31b error. SPEC E31b's paragraph should say the callee is judged too.

### F2 (wrong result; D9h, S9, E12). An element copy read in place while a call writes its source through a writable reference held in a struct

A value copy of a Vec element owning storage (`e := v[0]`, a for-in's `e`) is held as a view of the element (D9h,
"copies left out where nothing could tell"); a later call that writes the Vec through a `mut` reference held as a field
of a struct it is given is not seen, so the copy shows the write.

`repro/d9h_hold_walk.olang` (`type hold struct(v mut Vec<blk>&)`, `blk` holding a `Vec<I64>`):
`walkRef 99 walkVal 98 elemVal 98`, expected `1 1 1` - a for-in over a read-only `Vec<blk>&` parameter calling
`pokeRef(h mut hold&)`, the same with `pokeVal(h hold)` by value, and a plain `e := v[0]` then `pokeVal(h)`. Same in
all three runs (interpret runs the same lowered MIR). `repro/d9h_quiet3.olang` and `_control.olang` are the first
shapes found. The controls in `repro/held/d9h_alias_param.olang` (the `mut Vec<blk>&` passed directly) and
`held/forin_copy.olang` copy correctly.

`OLANG_VIEWDUMP=1` on d9h_hold_walk says the element locals "hold views" and "kept stable". Code: `compiler/lower.olang`
- the view local's source judged stable at its declaring statement (`stableRef`: `quiet()` and `placeRooted`) and the
rest of its life judged by `typed.LocalUses` (`WrOther`, `heldUnchanged`) and `quietLife`/`quietCall`, which see a
write lent through the same local's name but not one reached through a writable reference inside another argument
(a struct by value or by reference; note `quietCall` skips `writesCover` entirely for reference arguments that are not
writable themselves - `not writable and ... and not t.IsRef(a)`). Suggested fix: for the rest of a view local's life,
any call one of whose arguments `writesCover` the view's object - by value, read-only or writable, through reference
fields at any depth - ends the view (copy instead).

### F3 (wrong result; O17's `owns`/`viewed` exemptions, O28 placement). A loop turn's value local kept by reference past the turn: every kept reference names one slot

A value local that owns storage (a Vec, a struct holding a String), made in a loop turn and lent to a constructor that
keeps a reference to it (`holder(v)` with `holder struct(v Vec<I64>&)`), the instance pushed onto a Vec declared
outside the loop: every turn's instance refers to the same frame slot, so all of them read the last turn's value.

- `repro/turn_local_kept_ref.olang`: `vec lens 25 (15)` - five holders, all naming the length-5 Vec.
- `repro/owns_turn_struct.olang`: `recs 55555 (12345)` with `rec struct(s String)` - while the same shape with an
  `Array<I64>` (whose reference names arena storage) gives the right `15`.
- `repro/o17_viewed.olang`: an iterator struct kept over each turn's `Vec<String&>`: `sum 25 (15)`.
- `repro/owns_uaf_big.olang`: the same with an 80 KB struct: `texts 5-th 5-th 5-th 5-th 5-th`.

The same shape with a struct that owns no storage (`pt struct(x I64)`) is refused with C2d, as it should be; across a
function boundary (`held/owns_param_escape.olang`, `held/owns_global_slot.olang`, `held/o17_viewed_ret.olang`) the
local is placed where the keeper lives and each call's value is its own. No read of freed storage was found (the slot
lives as long as the function), but the kept references alias one another, and the evaluator agrees with the wrong
answer.

Code: `compiler/scope.olang` `argExisting`: `owns := s.ownsUnshared(at)` ("holds nothing a callee could keep but its
parts") and `viewed` let the argument go "lent where its references are" even where the callee keeps a reference to
the value itself - `calleeKeepsArg` is true for the constructor here. Suggested fix: the two exemptions only where the
callee keeps nothing of the argument's own storage (its parts at most); otherwise the normal path (`wantPromotion`,
C2d), which lifts the local to where the keeper lives - with its own storage made there each turn - or refuses.

### F4 (wrong result; T2c, E11a). A null `String?&` inside a value renders as `""`

`repro/nullarr_render.olang`: `top null null`, but `struct rec("", null)`, `vec Vec<String?&>["", "x"]`,
`array String?&["", "y"]`, `payload opt.Some("")` - a null `Array<I64>?&` in the same struct renders `null`. Same in
the evaluator (`$R` of a baked global, `repro/nullarr1.olang`). CLAUDE.md: "a null renders `null` (top-level text
included)". Code: lowering's renderer - `renderMaybeText` is taken only at the top of a rendering; a nested text that
may be null goes to the plain text branch (which, writing its bytes, would read a length of -1 - it gives `""`
instead: worth checking that it does not read the null's storage). Fix: the nested text branch tests for null as the
top one does; tests for each container.

### F5 (wrong result; T2c - the known item). An `Array<T>?&` / `String?&` declared with no value starts empty, not null

`repro/nullarr1.olang`'s last line: `zero-valued declaration is null: false` (expected true, decisions.md 2026-11-02,
QCI 3/4 item 1, "fixed in the bulk review's fix round"). Listed so it is not missed. (A field defaulted `= null`, a
null argument, a parameter's default and an assignment of null are null - `held/nullarr_default.olang`; equality of
null and empty, inside values too, is right - `held/nullarr_eq.olang`.)

### F6 (wrong result against SPEC; M19d, M19g, K1). A stale view of a Vec of owning elements reads emptied elements, not "the elements as they were"

SPEC M19d: "a view used after a growth reads the elements as they were - never storage that was freed"; B2f and the
evaluator's text say the same, and interpret's stop message says it "shows the old elements". But `grown` moves owning
elements out as `vacate` does, so the replaced buffer's positions are emptied: `repro/stale_view_vacated.olang` prints
`old view reads n=0 s='' (5 five)` and `ref reads n=0 s=''` (the plain `I64` field is zeroed too);
`repro/ref_stale_simple.olang` `r.n = 0 r.s = ` each call. Memory-safe. Fix: the SPEC sentences (M19d, B2f's
paragraph, the K1 stale-view paragraph) and interpret's message say a stale view reads whatever the growth left - the
old elements for plain data, emptied positions where the elements own storage - or `grown` leaves the old positions
as they were (it cannot without a second owner of their parts).

### F7 (wrong result; M19g). A `Ref`/`RefMut` kept across its collection's growth in the same function is not refused

M19g refuses a `View()`/`ViewMut()` used after the same Vec may have grown (`repro/view_stale_grow.olang`: error, with
the growth noted). The same with `v.RefMut(0)` (`repro/ref_stale_grow.olang`) compiles: built it prints `v[0].n = 1
r.n = 77` (the write lost); `repro/ref_stale_loop.olang` prints `sum 0`; a Map's `m.RefMut(k)` across Puts that grow it
(`repro/map_ref_stale.olang`) prints `m[0].n 1 r.n 77`. `-sanitize` and interpret stop on each. This is handles' recorded
item 10 ("a stale Ref after growth caught only by -sanitize and the evaluator"); the local case is as checkable as a
View's. Code: `compiler/views.olang` and SPEC M19g's definition of a view ("what `v.View()` or `v.ViewMut()` gives") -
add `Ref`/`RefMut` (Vec and Map: anything handing back a reference into the collection's own arrays) as view-makers;
the rest of M19g (second names, calls given both, globals, tasks) then applies unchanged.

## Over-rejections

### F8 (O26a, O28). A list cursor returned is refused; the list's head returned is not

`repro/infer_list_build.olang`: `head := node(0); cur := head; for ... { nn := node(i); cur.next = nn; cur = nn };
return cur` is O10d "this value lives in this function's own scope", while the same function returning `head` compiles
and runs. Every node flows into what is returned through `cur`; the inference should place them in the result scope.

### F9 (O26a, D16d). A local given a call's built result, captured by a returned lambda, is refused

`repro/infer_closure_return.olang`: `r := mk(k); return fn() I64 { return r.v }` is O10d; `r := node(k)` in its place
compiles, and so does `r := mk(k); return r` (`held/infer_call_local.olang`). The capture's flow into the result does
not lift a call's result as it lifts a constructor's.

### F10 (O26a). A slice of a call's view returned is refused; the same through a local is not

`repro/o26a_slice_view.olang`: `return v.View()[2:4]` is O10d; `return v.View()` and `w := v.View(); return w[2:4]`
compile and run.

### F11 (G29, D9a; also a diagnostic). A body deciding on its by-value array's length cannot be given a run-time length

`repro/g29_runtime.olang`: `fn kind(a Array<I64>) String { if a.Len() == 3: ... }` called with `Array<I64>(n, 7)`, `n`
from `os.Args()`, is "error[G9]: the type arguments of kind cannot be inferred from these arguments" - `kind` has no
type arguments. SPEC G29: "a length known only at run time otherwise (one instance for those)". With fixed lengths it
works and the evaluator agrees (`held/g29_runtime_rest.olang`). Fix: the run-time-length instance, or, if it is to be
refused, a message naming the rule and `&`.

### F12 (R11, T21b). Small ones

- `repro/fnref_default_overreject.olang`: `try v.Pop() catch default inc` for a `Vec<fn&(x I64) I64>` - a named function
  (made once for the program, T21) - is R11 "a default for a value holding references builds all it holds".
- `repro/t21b_compare_base.olang`: `h == g` with `h Handler?&` and `g fn?&(x I64) I64` of the same signature is E12,
  though T21b says a declared function type fits its base (and `b fn?&(..) = h` is accepted).
- `repro/nullarr_mapkey.olang`: `Map<String?&, I64>` is refused inside std/prelude/map.olang (`key.Hash()` on a
  nullable key, T2c) - either an over-rejection or (if nullable keys are not meant) F14's kind of message, at the call.

## Memory

### F13 (O8d, round 8). A Vec local reassigned in a loop, and a Vec field of a constructed local struct, keep everything they let go of

`repro/local_vec_reassign.olang`: `v = mk(k)` each turn of a 200,000-turn loop, `mk` building a 100-element Vec: 414 MB
peak (`-memory`: "no place lets go of storage in code that runs again"). `repro/field_vec_reassign.olang` and
`field_vec_reassign2.olang` with `b := box(mk(0))` / `b := box(Vec<I64>())` then `b.v = mk(k)`: the same 414 MB, and
`-memory` says `'b.v' keeps what it lets go of ... a value holding it is made with no store into it, by a call's value
copied: 'box(Vec<I64>())'` - a constructor call read as a copied call result, which looks wrong (a constructor builds
its instance where it lands). Round 8 says an owner held in place is freed; only the Map-value shape (the earlyfree
fixtures) is. An optimization, so no meaning changes - but it is the shape O8d exists for (QF), and the reason given
reads as a bug in `free.olang`'s made-for test.

## Diagnostics

### F14

1. `repro/diag_ref_number.olang`: `Vec<I64>.Ref(0)` is T24 "I64 cannot be a reference" reported in
   std/prelude/vec.olang with an instantiation note - G18a's rule is to say a generic's needs at the program's call.
   Same for `RefMut` (and F12's nullable Map key in map.olang).
2. `repro/direct_borrow2.olang`: D3b ("'g' is declared and never read") is said beside O27 - D3b is to be said only of a
   program with no other error - and `olang interpret` reports only the D3b, not the O27 the build reports.
3. `repro/gen_borrow_turn.olang`: a loop turn's text kept past the turn through a generator's borrowed elements is
   O10c with a `$` note, where the same keep through a plain function (`out.Push(first(t))`) is O27 naming `$x` /
   `x.Clone()` - one cause, two rules. The generator body's own refusal in `held/gen_walkkept.olang` also adds a second
   error at the consumer for one cause.
4. `held/fnval_capture_result.olang`: a lambda handing back a view of its *capture* is T22a "relates its arguments'
   scopes"; `explain` of `pick` (`held/explain_pick.olang`, `# scopes: h outlives return`) says the same of a result
   borrowed from a by-value parameter. The wording is wrong for both (no two arguments are related).
5. `repro/map_ref_stale.olang` under interpret: "a view of a Vec's elements ... the Vec grew here" for a Map.
6. F11's G9 message.
7. F13's `-memory` reason.

## Provisional decisions reviewed

- **Round 3d item 7 (D9h's quiet statements: no function value or `any` reached through an argument, mutable globals
  judged by type)**: agree with the shape, but F2 shows the per-local life check misses writes through writable
  references held inside arguments; the type-based global reading held in every attempt (`held/d9h_argview.olang`,
  `held/d9h_piece.olang`, `held/d9h_quiet2.olang`).
- **Handles as values item 5 (`owns`, `viewed`, `ownCall`, `splitHeld`)**: disagree as built - `owns`/`viewed` are
  F3's cause. `ownCall`/`splitHeld` showed nothing wrong in what I tried.
- **Handles item 10 (a stale Ref caught only by -sanitize and the evaluator)**: disagree for the local case - F7.
- **Round 4 detail 3 (`&` followed by an operand on its line is the bitwise operator)**: agree; `a &b`, `a &` + line
  break + `b`, and `I64[a &b, a & b]` all compute 2 (`held/amp_operator.olang`).
- **Round 4b detail 3 (a call through a function value may refuse where the direct call builds the argument longer)**:
  agree; `held/fnval_borrow1.olang`, `fnval_borrow2.olang`, `fnval_generic_ref.olang`, `fnval_byvalue_param.olang`,
  `fnval_capture_result.olang` - each refused where it should be, or right at run time.
- **Round 4b detail 5 (the reuse comparison ignoring E11c's build-site note)**: no case found where it matters; the
  self-build with `OLANG_SCOPECHECK=1` (`-quick`, 49 s) and every tests/*.olang but shared.olang with it passed.
- **Round 8 items 1, 2, 6 (nullable function types a flag; nullable arrays `{-1, null}`; plain arguments only for x[i]
  in place)**: agree with 1 and 2 (`held/fnnull1.olang`, `held/t21b.olang`, `held/nullarr_baked.olang` - the run and the
  evaluator agree); 6 is right as far as it goes but too narrow - F1 (the callee, and constructors' bodies, are
  calls too).
- **Round 8, owners win over their arrays; a task counts only where code that may run reaches it**: no finding
  (`held/tasks_*.olang`, `held/put_free_ref*.olang`, `held/grow_free_ref*.olang`).
- **QCI 3/4 item 1 (a `?&` array declared with no value starts null)**: agree; not built yet (F5).
- **QCI 3/4 details 3 and 8 (fnref_migrate a text tool, `?&`/`!` left to null_migrate; `Catch.Braced`/`Func.Bodied`
  stay flags)**: agree - tooling and representation, nothing a program can observe.
- **Front-end/back-end refactor (the merged tip was not verified as a whole)**: no behaviour change found - see below.

## Checked and found sound

- **Scope inference (QCB)**: views kept past their turn are refused (O27) directly and through function values
  (`held/fnval_borrow2.olang`), generators' borrowed elements (`gen_borrow_turn` refused), tasks (`held/spawn_infer*.olang`:
  a task keeping a turn's text builds it where it is kept; a task result viewing a turn's text is O27); O26a's slot fix
  with Ref and View results (`held/o26a_ref_local.olang`); text and struct values lifted across functions
  (`held/owns_*`). No use after free under `-debug -sanitize` in any reproducer.
- **The component-reuse cache**: `OLANG_SCOPECHECK=1` over the compiler's own build and all of tests/ but shared.olang
  - no mismatch.
- **QCE / D9a-D9c lifted**: copies of value arrays in structs, Vecs, Maps (own keys), arrays of text, writes into
  constructor- and literal-made text, run-time arrays by value (`held/qce_copies.olang`, `held/qce_const.olang`,
  `held/g29_runtime_rest.olang`).
- **Early freeing round 8**: `fuzz free 5000 150 2 6` - 500 scenarios run, 400 refused, 687 places freeing at once,
  0 findings (log: `fuzzfree.log`; 44% of scenarios refused, worth a look at the generator after round 4 and handles);
  the earlyfree fixtures under `OLANG_DEADREGIONS=1 olang interpret` (ast.olang ran past the 300 s timeout); condition 6
  across calls and lambdas (`held/put_free_ref_across.olang`) - each place kept where a view was in use.
- **Function types and nullable arrays**: `fn&`/`fn?&` fields, defaults, narrowing, `f!(x)`, `$f`, `==`, declared types'
  methods and conversion, Map/Vec/Deque of `fn&` (`held/fnref_coll.olang`), all in the run and the evaluator.
- **The refactors**: the pre-refactor compiler (ae8e869, built from `git archive`) and the merged tip give the same
  diagnostics and status for all 1,565 checks cases under `compile -quick` (`diffcases.sh`; `diffcases.txt` holds only
  the script's own file-name artifacts), and the same `olang doc` for every std module.

Not run: `make verify` (another agent verifies in /home/user/wt/mut), the scope fuzzer, `-race`, tests/shared.olang
under `OLANG_SCOPECHECK=1`.

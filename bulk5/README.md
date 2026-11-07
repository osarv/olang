# Bulk review 5: the scoping and parameters rework, rounds 1 and 2a-2e

Reviewed read-only at a041393 (worktree /home/user/wt/review5), 2026-11-01. The compiler is the worktree's own
`build/olang`, built from a041393 by the rework worktree's binary of the same commit (clean tree). Every
"under the switches" run uses std migrated the way `make verify-params` migrates it:

```
cd /home/user/wt/review5 && rm -rf build/params && mkdir -p build/params/tests && cp -r std build/params/std
build/olang build -output build/params/param_migrate tools/param_migrate.olang
cd build/params && OLANG_STD=$PWD/std OLANG_PARAMS=new OLANG_SCOPES=infer ./param_migrate --olang ../olang -j 3 std
```

`run.sh FILE` (beside this file) runs a program three ways under
`OLANG_STD=build/params/std OLANG_PARAMS=new OLANG_SCOPES=infer`: built (-O3, LTO), built `-sanitize`, and
`olang interpret`. Prefix it with `DEF=1` to add the default path (no switches, today's std). Reproducers are in
`repro/`; the attempts that held are in `repro/held/`.

## Confirmed findings, by severity

### F1 (unsound: write through a read-only level; constant data written - a segfault). An element read out of a bare parameter, an immutable global or what a generic container hands out is writable

QCC (SPEC D9 under round 2: "it, and everything reached through it, is read-only in the body") and the immutable
globals (S6, T25d; the D9g message itself lists "constant data or an immutable global" as read-only) are broken by
every read that is not a field of a bare struct:

- `repro/bare_vec_write.olang` - a bare `Vec<node&>`: `x := v[0]`, `for x in v`, `try v.Get(0)`, `v.View()`,
  `v.Clone()`, a bare `Array<node&>`'s `a[0]`, a bare struct's `Vec` field walked - each writes the caller's node.
  Expected: refused (T25c, as `p.n.v = 99` of a bare struct is) or `0`. Actual: `11111111 1` built, sanitized and
  interpreted; the baked global agrees (the test inside passes).
- `repro/entrycopy_elem_write.olang` - the copy on entry of a bare `Array<node&>` is `Array<mut node&>` (`-memory`
  prints "copied on entry: a Array<mut node&>"), so `a[0].v = 6` (named a write of `a`'s own storage by
  `load.BareWritten`) writes the caller's node: prints `6 1`, expected a refusal or `1 1`.
- `repro/bare_handle_write.olang` - a bare `Vec<I64>`'s `View()` and even `ViewMut()` (a `&` receiver, given a bare
  argument), a bare `Map<I64, node&>`'s `Get`/`Values()`, a bare `list.List<node&>`'s `l[0]`: prints
  `Vec<I64>[11] 111`, expected refusals or `Vec<I64>[0] 0`.
- `repro/global_view_write.olang`, `repro/global_elem_write.olang`, `repro/global_reach_write.olang` - an immutable
  global written: `G.View()[0] = 42` on a `Vec` global, `x := G[0]; x.v += 1` on an `Array<node&>` global,
  `G.n.v = 5` and `poke(G.n)` on a global struct's reference field. The default path refuses each (T25b).
- **Memory-unsafe**: `repro/const_write.olang` - `v.Push("abc")` (constant data) then a bare `poke(v Vec<String&>)`
  doing `x := v[0]; x[0] = 'q'`. `olang build` then running it: **Segmentation fault** (status 139); `olang interpret`
  stops with "it writes constant data" (the evaluator disagrees with the checker that accepted it).
  `repro/global_reach_write.olang`'s second half (`x := N.s; x[0] = 'q'` on a global struct holding a literal): at -O3
  the store is silently dropped (prints `abc abc` - UB deleted by LLVM), with `-debug` a segfault, under `interpret`
  "it writes constant data".

Code: `compiler/check.olang`, `roRef`/`roRoot`/`rootIn` - read-only is found for a local (`roLocal`, `roCopies`), a
field (`roFieldX`) and a few wrappers, but not for an element reached through a read-only array (an `Elem` through a
`Deref`), not for anything rooted at an immutable global (`rootLocal` follows locals only), and not for a generic
instance's result (`At`, `Get`, `View`, `ViewMut`, `Values`, a walk's `Next`) when its receiver is a bare by-pointer
parameter, an immutable global or a container whose element level was inferred read-only (`followedResult`/`roByArg`
do not see the bare handle as read-only; `ViewMut`'s `&` receiver accepts it - the `roNeedOf` "needs a writable
argument only where that parameter does" lets it through because ViewMut writes nothing itself, though it hands out a
writable view). And `bareByPointer`'s copy on entry takes the referent type with its levels writable.
Suggested fix: treat an immutable global like a bare parameter's root in `rootIn`/`roRoot`; read an element of a
read-only array as `roFieldX` reads a field (read-only at every level below); make an instance's result follow a bare
or global argument as it follows a read-only copy (and refuse a `&` receiver for one whose result hands out a
writable reference into it); build the copy on entry's type read-only below its top (`roCopies` already marks the
local - the element type must follow), or count a write through an element reference as no write of own storage in
`BareWritten`. Add the seven shapes above to tests/params/fail.

### F2 (wrong result: by-pointer passing observable, against D9e). A bare parameter's own storage kept through routes the keep analysis does not see

SPEC D9e: what a body keeps of a bare parameter's own storage past the call ("the parameter itself or a view of it, in
a value it builds and hands back (a constructor's field, a case's payload, an element)") is the callee's own copy.
Memory-safe in every case tried (`-sanitize` clean, the scope pass ties the result to the argument), but the caller's
later write shows through, and the evaluator agrees with the wrong answer:

- `repro/kept_push.olang` - kept as an element by a callee's type-variable parameter: `v.Push(t)` into a returned
  `Vec<String&>`, and `m.Put(t, 1)` into a returned `Map<String&, I64>`. After `t[0] = 'x'` the Vec reads `xbc`
  (expected `abc`), and the map has lost its key - `Has("abc")` and `Has("xbc")` are both false (the hash was taken of
  `abc`): exactly QCE's map-key hole, through a bare parameter. Prints `xbc false false abc`; expected
  `abc true false abc`. `repro/held/kept_vec.olang` shows the contrast (an array literal `String&[t, t]` copies).
  The same with `Vec<any shape&>.Push(p)` of a bare struct (`repro/held/any_kept_scope.olang` is the scope-safe
  version; `Push(p)` then `p.x = 10` in the caller shows 30, expected 6).
- `repro/kept_routes.olang` - `s := t; return holder(s)` (a `:=` view of the bare parameter, D9 says "a read-only
  view of it") and `holder(t if k == 0 else u)` (a conditional of two bare parameters) share the caller's text:
  prints `abc xbc xbc abc abc abc`, expected all `abc`. The direct `holder(t)`, `holder(t[1:])`, a match of `holder(t)`,
  `Vec<holder>.Push(holder(t))` and an array of holders are copied correctly.
- `repro/lambda_kept.olang` - a kept lambda capturing a slice local of a bare parameter (`s := t[1:]; return fn()
  String { return $s }`): prints `abc abc yc`, expected `abc abc bc` (the lambda capturing `t` itself is copied).

Code: `compiler/scope.olang` `ownGiven`/`ownItem`/`ctorKeepsOwn`/`keepOwn` (and `summary.KeptOwn`) trace the
parameter's own storage only where it is read directly as a constructor's or case's argument, a value's item or a
KeptOwn callee's argument. Missed: (a) the parameter (or a view of it) converted to a reference given an instance's
by-value type-variable parameter that the callee stores (`calleeStoresArg`/`Puts` of Push/Put - a keep of the
argument's own storage once T is a reference); (b) a reference local made from it (`:=`, a slice) - its origin
(check's `roFrom`) is not carried into the scope pass's own-storage term; (c) a conditional's or match's arms
(`Cond` is not looked through, `Match` is). Suggested fix: compute "keeps own storage" from the term of the
argument's storage wherever it flows (the frame-term `ownT` reaching any kept place), not from the syntactic
position of the parameter's read; then the caller's ArgCopy follows unchanged.

### F3 (wrong result: by-pointer passing observable; documented as provisional). The same call writes the bare argument's storage another way

`repro/alias_amp.olang`: `f(p, p)` with `fn f(a pt, b pt&) I64 { b.x = 5; return a.x }` gives 5 (by value: 1), and
`g(t, t)` gives `x` (by value: `a`). `repro/alias_global.olang`: a mutable global passed bare while the callee writes
it (directly, or through a callback) - `17 17`, while the old by-value form on the default path gives `11 11`. Built,
sanitized, interpreted and baked alike. This is 2.10's hole, stated in SPEC D9 ("unobservable but where the same call
also writes that storage through another route") and open point 2 / docs/rework.md 12.6 item 4 - listed so the flip
does not ship with it unnoticed: QCC's promise is "never observable". Fix: 2.10's caller-side copy (a bare argument
whose storage type the call may write through a `&` argument, a mutable global, a function value or an `any`).

### F4 (wrong result: by-pointer passing observable). An `any` made from a bare struct borrows the caller's instance, and `==` on anys is identity

`repro/identity_any.olang`: `fn same(p pt, a any shape&) Bool { b any shape& = p; return a == b }` called with the
caller's `p` and an any of it prints `true` under the switches; on the default path (by value) `false`. It would be
`false` again if the body wrote `p` (a copy on entry), so the answer depends on the representation the compiler chose.
(A write through such an any is refused - `repro/held/any_write.olang`.) Code: check's any conversion of a bare
by-pointer parameter (T32/D17f "a struct or enum variable is borrowed"). Fix: box a bare parameter's value (a copy,
as for numbers) or a copy-on-entry local, never its pointer; or refuse `==` between anys built from one.

### F5 (over-rejection). A function with a bare parameter does not fit a generic's `fn(x T) T`

`repro/generic_fnvalue.olang`: `pass(t, inner)` with `fn inner(t String) String` and `fn pass<T>(x T, f fn(x T) T)
T` is `E12: expected fn(x String) String, found fn(t String&) String` - T binds the value type (by value, round 2b's
`namesVar`), the function's parameter is by pointer. (The default path refuses its own form too, so this is no
regression, but under QCC both are "a bare `String`".) Fix: compare function types with bare parameters up to
representation (`sameUpToShape`, as for a trait's parameter) and give the call an adapter, or bind T to the bare form.

### F6 (diagnostics)

- `repro/diag_d9g_any.olang`: D9g on `fn boxed(p pt) any shape& { return p }` suggests "give the value 'any shape'",
  which T32 refuses ("an 'any' is always a reference"); E12 then spells the bare parameter `pt&`.
- Under the switches T25b still says "a read-only reference - one with no 'mut' in its type" and E12 prints
  `Array<mut String&>`/`Array<mut node&>` (e.g. `repro/held/kept_push_write.olang`, `-memory` on
  `repro/entrycopy_elem_write.olang`) - `mut` is not the spelling there.
- D9f calls a write through an element's or a field's reference (`v[0].v = 5` of a bare `Vec<node&>`, `p.t[0] = 'q'`
  of a bare struct) "writes 'v', this function's own copy" and suggests `&` - the write is not to the parameter's own
  storage (and with a later read it becomes F1's copy on entry).
- T25c's "what a bare parameter reaches" wording appears for a lambda's capture of a local
  (`f := fn() { poke(t3) }` in main).

## Relaxations tried hard and held

All run built, `-sanitize`, interpreted, and (where marked) against a baked global; files in `repro/held/`.

- **2c, O17 lent by storage (`lentByStorage`/`putsUnder`)**: a bare enum lent to an `unAway` reader whose borrowed
  result is pushed into a `&` parameter's Vec, the argument a temporary built per call, in a loop
  (`lend_store.olang`); the test file's own recursive walks. No refusal missed, sanitizer clean.
- **2d, `scope.readOnlyResult`**: a `T?&` result following its argument that builds a new node on one path, kept in a
  Vec past the call and through a chain (`ro_result.olang`). Clean.
- **2d, D9h handover**: the view's source written inside the for-in that walks it, arguments evaluated in order with a
  later one writing the source, through a function value, an any's table, a become, an array literal
  (`handover_stmt.olang`, `handover_values.olang`); a view of a copy on entry handed back (`handover_entrycopy.olang`,
  baked global agrees). All as by value.
- **2d, value results following bare parameters / instances built from them, O25h's Promote fit**: `get(get(mkw(nd)))`
  returned past the node's function in a loop (`promote_fit.olang`). Clean.
- **2d, enum payload fields read-only by inference; enums by pointer**: writes through a payload binding, a narrowed
  payload, a match arm lending it - refused (`write_reach.olang`).
- **2d, E28/E31b skipped for an instance's type-variable reference parameter**: a conditional and a match of loop-turn
  value places pushed onto an outer `Vec<node&>` and written through later (`tvparam_choice.olang`). Clean (the
  locals are lifted).
- **2e, D9e's caller-side copy and `stableArg`/`refStable`/`unwritten`**: a writable reference local, a writable slice,
  a lambda writing through a captured reference, a second reference to new storage, a Vec holding the text, a `&`
  constructor keeping it, a write in a later loop turn, the same local given bare and `&` to one call
  (`stable_bypass.olang`, `stable_bypass2.olang`, `kept_same_arg.olang`). All copied where needed.
- **2e, `ownT`/`keepOwn`**: kept through a constructor, a view, a match, a Vec of holders, an array of holders, a
  generator walk (`gen_bare.olang`), a become (`become_kept.olang` - the stated limit did not reproduce in this shape),
  a lambda capturing the parameter, a lambda kept in a Vec or a struct field; and scope-safety of every F2 shape
  (`kept_push_loop.olang`, `any_kept_scope.olang`, `kept_routes_scope.olang`, `lambda_kept_scope.olang`). No use after free found.
- **2e, open point 5 (`valueRels`/`valueCovered`)**: `link` (stores one parameter into another) made a value - refused
  (`fnvalue_rel.olang`); `self` made a value, called with a local whose result is returned out of that function
  (`fnvalue_result.olang`) - clean; a lambda handing back a capture as a `&` result - refused (`fnvalue_lambda_capture.olang`).
- **2e, `bareLent` and O25h**: as above (promote_fit, lend_store).
- **QCC writes through a bare struct, enum or array's own reach**: fields, a payload binding, `:=` copies, slices,
  `name(t)` conversions, lambda captures, `&` callees, method receivers, generic callbacks, spawn, function values,
  constructors, maps and Vecs made in the body (`write_reach.olang`, `entrycopy_writes.olang` - lane `+=`, swaps,
  increments, defer, Sort on a copy on entry - all copied correctly). Only F1's element routes get through.
- **Round 1 (inferred scopes)**: a promoted cursor field repointed by a method to a loop turn's text, the instance
  living past the loop (`field_promote.olang`) - the text is lifted, sanitizer clean.

## The default path

Unchanged as far as measured. A compiler built from 5937e7d^2 (master just before the rework's first merge) and this
one built all 16 bench programs: every `.main.ll` and module `.ll` is byte-identical but `sum.main.ll` and
`vec.main.ll` (std/list's `runIn`, docs/rework.md 13.4, stated) and the `.loc.ll` files (`FILE:LINE` texts - std's
line numbers moved). Every finding above is refused on the default path (or, F5, refused there in its own form).

## Not tested

- `make verify`, `make verify-params` and `make verify-infer` (not run: one shared slot, and the round's own runs
  are recorded as passing); the scope fuzzer and `fuzz free` under the switches.
- Round 1's `OLANG_SCOPES=infer` alone with today's (unmigrated) std, `OLANG_PARAMS=new` alone.
- Tasks (`join`/`spawn`) holding bare parameters' storage, cross targets, `-race`.
- The compiler/ migration's remaining errors (docs/rework.md 14.6), including the E16 at `ts[0]` of an instance it
  lists as "a real bug to look at".

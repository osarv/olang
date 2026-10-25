# Bulk review of a6c2292..843871e (lang25, errs, esgen, small2, refl, mem47)

Read-only review of `/home/user/wt/bulk1` at 843871e, built with `make build/olang` (bootstrap, 1m41s). A compiler at
a6c2292 (the range's base) was built from `git archive` to tell regressions from older behaviour.

Every finding below is CONFIRMED: reproduced on 843871e with the program in `repro/`. `tools/t.sh FILE` builds
`-memory` at -O3, builds `-debug -sanitize`, runs both, and runs `interpret` with `OLANG_DEADREGIONS=1`.

## Summary

| # | Severity | Batch / commit | What |
|---|---|---|---|
| F1 | high (UAF) | mem47 x esgen: 3da3976 / abd1296, free.olang | A view held in a generator's frame across a `yield` is not judged against what the consumer lets go of between `Next` calls. Also lets a `Destroy()` end an instance a suspended generator still reads. |
| F2 | high (UAF, wrong output at -O3) | mem47 round 6: 79e22ef | A value of a place stored inside *another* value of the same place is exempt from condition 2. Example: `a.n.next = b.n`, two `Holder`s, or two Map values. A place key names every instance's field, not one value. |
| F3 | high (UAF) | mem47 round 6: 79e22ef | The walk's origin fixed point stops after 16 rounds without falling back to "keep". A view passed down about 34 locals is missed. |
| F4 | medium (observable, spec violation) | mem47 rounds 6/7: 79e22ef, 18a7821 | Early freeing runs a destructor early. A constructor's top-level temporary is registered in the instance's region, and the release runs it at the let-go, not at the scope's close. |
| F5 | medium (UB / segfault) | esgen: 377105b, emit.olang | A generator's `Next` called from inside its own walk segfaults in built code. `interpret` stops with a message instead. |
| F6 | high (UAF) | mem47 round 6: 79e22ef | An `extern` call is taken to let go of nothing, but C may call an `export fn` that lets go. A view held across the extern call is then freed. |
| F7 | medium (security) | small2: da98796, load.olang | `embed` in a remote repository reads any file through a symlink inside the repository. The "stays inside the repository" check is textual only. |
| F8 | medium (silent data change) | refl: e994493 (std/json) | `json.Decode<I64>` silently changes integers above 2^53, so a struct round trip loses them. `Decode<U64>` of a value above `I64.Max` fails. |
| F9 | low (spec contradiction) | esgen + lang25: 377105b, 8c2878e | A generator with a contract cannot be written: D17 demands `? ArgumentError`, and D18 refuses a `?` after a generator's result. |
| F10 | low (diagnostics) | mem47 round 6, errs | `-memory` notes name a hidden local as `''` and a place as a whole `for` statement. A captured catch name adds a T20 cascade. |

Counts: high 4 (F1, F2, F3, F6), medium 4 (F4, F5, F7, F8), low 2 (F9, F10). PLAUSIBLE: 3. Over-rejections: 2
(one older than the range).

Note on mem47's recorded relaxations. HISTORY.md "Memory round 6" lists six relaxations as "recorded, not built":

1. a view delaying the release to its last use;
2. pins;
3. per-callback summaries;
4. a prelude dead slot for SetAt;
5. per-site task reach;
6. a narrower keep for destructors, Str, Eq and Hash.

Round 7 built only item 6: a destructor, Str, Eq or Hash that lets go keeps only the places it may let go of. The code
matches that:

- any task anywhere still keeps every place;
- every call through a function value is still a let-go of anything;
- an element store is never a let-go.

So the review attacked the built relaxation (sound, see the end) and the analysis's own exemptions. Exemptions are
where F1-F3 and F6 are.

---

## F1 - a generator's frame holds views across `yield` (UAF)

Reproducers:

- `repro/01a_yield_view.olang`: a view of `h.t` held across `yield 1`; the consumer calls `h.set(...)` in between.
- `repro/01b_yield_destroy.olang`: the generator holds `r := try s.rs.Get(k)` across a yield; the consumer does
  `s.rs.Take(i)` and `r.Destroy()`; the generator then reads `r.t`.

Observed (both):

- `-memory`: "1 frees it at once";
- `-debug -sanitize`: `use after scope closed: storage a closed scope gave back was read or written`, status 134;
- `interpret` in dead-region mode: `internal compiler error: ... it uses storage early freeing reclaimed (O8d) - a place
  decided sole was not`, status 70;
- -O3 happens to print the old values.

Expected: the place keeps. In 01b, C9b's error that the instance is still reachable.

Root cause:

- compiler/free.olang:1069-1084 walks `typed.Stmt.Suspend` exactly as a `Return`: its value's origins, and nothing
  else.
- Between a suspension and the next resume the consumer runs arbitrary code, so a `yield` is a point where any place
  may be let go of (and any value taken out and destroyed).
- The view check (`views()`, free.olang:2066) only sees let-go events inside the generator's own body, and a body
  local live across the yield is never judged against the consumer's `h.set` / `Take` + `Destroy`.

Suggested fix: record a let-go of any place at each `Suspend` in the final walk (`w.go(AnyPlace, LCall, ...)`, as
`goAll` does). Then a local view used after a yield keeps its place, and a dtor place viewed across one is not
destroy-sole.

Introduced: the generators merge (abd1296), made a walked statement by 3da3976. The base has no generators.

## F2 - one value of a place stored inside another value of the same place (UAF)

Reproducers:

- `repro/02a_same_place_link.olang`: `a.n.next = b.n`, `a` and `b` two `Holder`s, then `b.n = Node(...)`.
- `repro/02b_map_values_link.olang`: `b.next = a`, both read from one Map, then `Remove` of `a`.
- `repro/02c_link_in_callee.olang`: the same as 02a, through `fn link(a mut Holder&, b Holder&) { a.n.next = b.n }`.

Observed:

- 02a and 02c at -O3 print `linked: 2 node 2 ...` where the node linked is node 1. The freed block was reused by the
  next `Node`, so this is wrong data with no error.
- The base compiler a6c2292 prints `linked: 1 node 1 ...`.
- `-debug -sanitize` aborts with "use after scope closed"; `interpret` stops with O8d's internal error.

Expected: the place keeps (condition 2: a reference into it stored elsewhere).

Root cause:

- `storeAs` (free.olang:1808) skips `oval(y) != w.storeInside`, and `escape` (free.olang:1397) skips
  `oval(y) != q`. Both come from `insidePlace` / `rootPlace` (free.olang:2675), which answer with a place *key*.
- A key is per declaration: `Holder.n` for every `Holder`, the Map's entry place for every entry. So "a view of q
  stored inside a value of q stays where it was" is assumed for two different values, with two regions.
- docs/memory.md 2.4 step 1 names exactly this case ("one ρ for all of a place's values would accept a reference into
  one value stored inside another"). The implementation took the one-ρ shortcut.

Suggested fix: exempt a store only where the stored value is provably the *same value* as the container's root - the
same local, or a must-fact identity, not the same place key. Otherwise treat it as a store elsewhere: keep, with
RStore.

Introduced: round 6 (79e22ef).

## F3 - the origin fixed point is cut off at 16 rounds (UAF)

Reproducer: `repro/03_origin_rounds.olang`. 34 locals are written last to first in a loop with no let-go, then `h.set`,
then the last local is printed.

Observed:

- `-memory` says it frees at once;
- sanitize and dead-region mode both report the use of freed storage.

With 20 or 30 locals the view is found and the place keeps; from about 33 it is missed.

Root cause:

- `Free.walk` (free.olang:912) runs `for round in range 16` and goes on to the final walk even when `w.grew` is still
  true. Origins grow monotonically and the set is finite, so the loop could run to convergence.
- When it is cut short the origins are an under-approximation, which is unsound for "keep".
- The repeat walks of the may fixed point add rounds through the saved origins, which is why the threshold is about
  33, not 17.

The same pattern is in `mustOf`'s `for round in range 8` (free.olang:2398), a greatest fixed point: cut short, it
leaves must-facts too optimistic. Those feed `storeInside`/`withinOf`, `freshLocal` and `mustRes` (the SMove
classification). That second instance is PLAUSIBLE: one attempt (a generic `pick<T>` returning a chained local)
compiled with the place kept, so it was not shown.

Suggested fix: iterate to convergence. Or, where the bound is hit, treat the body as not known: every local viewing
everything, a let-go of any place.

Introduced: round 6 (79e22ef).

## F4 - early freeing runs a destructor early (observable)

Reproducers: `repro/04a_dtor_run_at_release.olang`, and `repro/04b_dtor_kept_place.olang` (the same program with the
place made to keep).

`Node`'s constructor has `Res(v)` as a top-level statement. That is O16's "a constructor call no reference takes",
registered where the Node instance landed. `h.n = Node(i + 1)` in a loop.

Observed:

| program | output |
|---|---|
| 04a, 843871e (-O3, -debug -sanitize, interpret alike) | `turn 0: 1 ended` ... `turn 4: 5 ended` |
| 04b, 843871e (the place kept) | `turn 0: 0 ended` ... `before the close: 0 ended` |
| 04a, a6c2292 | `turn 0: 0 ended` ... `before the close: 0 ended` |

Spec:

- O8d: "Reclaiming early ... runs no destructor (O15), and is not otherwise observable".
- O16: the instance is "registered with the scope it was built in ... and destructed once when that closes".

Root cause:

- Condition 4 is decided by the value's *type* (free.olang's `safe`/dtor checks in `decide`, around 2748-2775).
- A destructor-bearing instance can be registered in the value's region without being held by it. C2g puts a
  constructor's top-level temporaries in the instance's scope, which here is the region.
- `__olang_region_release` (std/runtime/runtime.ll, around 2105-2120) runs the region's destructor chain.

Suggested fix: keep (RDtor) any place whose made-for values come from a constructor or built result that may register
a destructor in its instance or result scope (a may-summary per body). As a runtime fallback, a release of a region
holding registrations should be refused.

Introduced: round 6 (79e22ef); round 7 (18a7821) moved the registration onto the region's chain.

## F5 - a generator resumed from inside its own walk (segfault)

Reproducer: `repro/05_generator_reentry.olang`. A `Cell` holds the generator, and the generator's body calls
`c.g.Next()`.

Observed:

- -O3 and `-debug -sanitize`: segfault after printing `1`, status 139.
- `interpret`: `it asks a generator for its next value from inside the generator's own walk`, status 1.

SPEC D18 says nothing about re-entry, so the built program and the evaluator disagree, and the built one has no
defined behaviour.

Root cause: `Emitter.genNext` (compiler/emit.olang:2122-2140) calls `llvm.coro.resume` on a coroutine that is not
suspended. The promise already has a running flag (`%pr`, set to 1 around the resume and used only by `genDrop`), but
genNext never tests it.

Suggested fix: test `%pr` before the resume and abort as a failed check, with the evaluator's message (one compare per
`Next`, beside the existing `coro.done` test). State the rule in D18.

Introduced: 377105b.

## F6 - an extern call that calls back an export fn lets go under a view (UAF)

Reproducer: `repro/06_extern_callback/` (`cb.c`, `x9.olang`, README.txt). `v := G.t`, then `c_run(i)`, whose C body
calls the export fn `olang_reset`, which assigns `G.t`; then `v` is printed.

Observed:

- `-memory`: "1 frees it at once";
- `-debug -sanitize`: "use after scope closed", status 134.

Expected: O8d says "a body not known (a function value, an `extern`)" means keep, and X12 lets C call an export fn at
any time.

Root cause:

- `walker.call` (free.olang:1753-1766) escapes a foreign call's arguments, but only a non-foreign unknown call does
  `goAll`.
- Export fn bodies are not `implicit()` (free.olang:652), so their let-goes reach no call site and no `hiddenAt`.

Suggested fix: make an extern call a let-go of anything whenever the program declares an export fn, or always. Or
count export fn bodies as implicit: their `lets` go into `hiddenAt`, `letsAll` sets `hidden`. Under `-library`, C
calling export fns from threads of its own is the tasks condition too.

Introduced: round 6 (79e22ef). Export fns are older.

## F7 - `embed` escapes a remote repository through a symlink (security)

Reproducer: `repro/07_embed_symlink/run.sh` makes a local git "remote" whose `lib/data.txt` is a symlink to a file
outside it, and a module there that embeds it.

Observed: the build succeeds and the program prints the outside file's contents. A `../../..` path is refused (`it
leaves example.com/me/tools`), so the textual check works.

Root cause: `Loader.Embed` (compiler/load.olang:604-615) checks the path's text against the repository's identity,
and `os.ReadFile` (load.olang:619) follows symlinks.

Suggested fix: resolve with `os.RealPath` and check that the real path is under the repository's (or std's) real root.
Or refuse a symlink anywhere on the path inside a remote repository.

Introduced: da98796.

## F8 - `json.Decode` silently changes large integers

Reproducer: `repro/08_json_large_int.olang`.

Observed (built, -debug and interpret alike, baked and at run time):

```
9007199254740993 -> 9007199254740992 false
{"Id":9007199254740993,...} -> {"Id":9007199254740992,...} false
```

Also, `repro/08b_json_u64.olang`: `Decode<U64>` of `18446744073709551615` fails with `json.Error.WRONG_KIND`, although
`Encode` wrote it (and a struct holding such a field cannot be read back).

Expected, by std/json's own comment: "an integer only where the number is whole and fits, else WRONG_KIND". The value
read is a different number with no error.

Root cause:

- `Parse` keeps a number as `Json.Num(v F64)`. A 16-19 digit integer is rounded while parsing, and `AsInt` then sees a
  whole number that fits.
- `From<T>` (std/json.olang, around 830) reads integers through `j.AsInt()` (I64) and `Narrow`, so U64 values above
  `I64.Max` cannot be read either.

Suggested fix: keep an integer token's exact value in the tree (an I64/U64 beside the F64), or have `AsInt` / `From`
fail with WRONG_KIND where the number is beyond 2^53 and was not parsed exactly.

Introduced: e994493 (Decode). The F64-only tree is older.

## F9 - a generator with a contract is unwritable

Reproducer: `repro/09_generator_contract.olang`. `fn evens(n I64) [n >= 0] Iterator<I64>` gives D17's "add it after
'?'". Adding `? ArgumentError` gives D18's "a generator fails as its Next does".

D18 says "Its contract's requirements (D17) are checked when it is called". Suggested fix: let a generator's contract
infer `ArgumentError` for the call (not the `Next`), or say in D18 that generators take no contract.

## F10 - diagnostics

- `repro/11a_report_names.olang` (`-memory`):
  - the note names the for-in's hidden borrow as `'' (line 25) is used here`;
  - `repro/11c_report_place_span.olang`: the place of a List walked by a generator is named as a whole multi-line
    `for` statement: `removed elements of 'for x in each(h) { ... }'`.
- `repro/11b_capture_cascade.olang`: a lambda capturing a catch name gives R11b's error, plus a T20 error on `P.A` in
  the same comparison (one cause, two errors).

---

## PLAUSIBLE (traced, not reproduced)

1. `mustOf`'s 8-round cut-off (free.olang:2398) leaving must-facts too optimistic (see F3). They feed the
   `storeInside`/`withinOf` exemptions and `mustRes`, which classifies a call's result as a move out of a place
   (SMove). A wrong SMove would let a release read the word before a non-region object.
2. The `decide` loops `for round in range 64` (free.olang:2763, 2780) propagate "not sole" over moves between places,
   and stop silently after 64 rounds. A chain of more than 64 places moving into one another would leave one
   wrongly sole.
3. `-library` / X13: C may call export fns from threads it makes. The program-wide task condition is set only by
   `spawn`/`join` and an extern given a function value, so early freeing stays on in a library C calls from several
   threads. That is a data race only if the olang code itself races (P8b), so it may be by design; it is worth
   stating in O8d's condition 3.

## Over-rejections (brief)

- `repro/12_destroy_continue.olang`: `r.Destroy(); continue` in a loop body is refused ("'r' is used after"). C9b ends a
  path only at `return`, `error` and `unreachable`, not `break` or `continue`.
- `repro/13_global_built_result.olang`: `fn Show() String& { return Data }` (an immutable global) is refused at the
  call with O10c, "the callee needs one argument's scope to outlive another's", for a call with no arguments. This is
  older than the range: a6c2292 says the same.

---

## Attacked and found sound

Early freeing (mem47):

- **Views across let-goes:**
  - a view used after `h.set(..)` in the same function or across a call;
  - in `defer` and `errdefer` code registered before the let-go;
  - in a later turn of a loop (also a deferred let-go in a loop);
  - read in the same statement, including a join (`$h.t $reset(h)`) whose operands are evaluated before rendering;
  - through a callee chain;
  - through a contract condition that lets go (contracts are walked as part of the body).
- **Views through collections:**
  - for-in over an array, a List or a Map with an assignment, `Clear` or `Remove` in the body;
  - a Map walk with other entries removed mid-walk;
  - views of elements of handle elements;
  - `Clone()` replacing a List or Map field;
  - moves between two Lists with the source List let go;
  - a move out of a list inside a value of another sole place (`reach` through containers keeps the container's
    place).
- **Stores elsewhere:**
  - a view stored by a constructor (directly, or held by a non-candidate field);
  - stored in a List, captured by a lambda, or kept by a destructor;
  - moves via a local into another place, all kept (not "made for").
- **Destroy() (C9b):**
  - a constructor storing a value built in its instance into a registry argument: refused, "cannot be built in a
    region";
  - aliases through a lambda, a conditional or a constructor;
  - use after the call, including in a later loop turn.
- **The built relaxation (hidden calls):** a destructor storing a view of another sole place's value into an object
  keeps both places. Implicit bodies are matched by name, instances included.
- **Lowering and runtime:**
  - assignments release after the store, the old value copied first;
  - a `try` statement's release happens on the success path only;
  - constant data has a zero word before it (emit.constGlobal);
  - slices, conditionals, matches and defaults stored into a place are classified "not made for it" (keep).
- **Clean under sanitize and dead-region mode:**
  - the fixtures (session, server, mapremove, conns, sockets);
  - generic enum trees rewritten in a holder (kept);
  - an `errdefer`/`defer` order matrix with a failing `try join` (built, -debug, interpret and baked all agree).

errs:

- catch names rendered, compared, narrowed and raised again across sets written in other orders (`? Q, PQ, P` from a
  `PQ` set);
- nested clauses naming two errors;
- comprehensions over a caught name;
- `defer` and `yield` of `$e` inside a clause in a generator;
- capture, `match ... => e`, `e == e` and spawning a lambda all refused.

esgen:

- error-set parameter unions bound from two callbacks failing with differently ordered sets (`? Q, P` and `? P`): the
  words decode correctly in built, -debug, interpret and baked runs;
- generator `defer`/`errdefer` and Destroy tests in the corpus pass under sanitize.

lang25:

- `try` binding:
  - `2 * try f() + 1`;
  - `try f() catch default 5 + 1`;
  - commutes evaluating left first (`h(n) * g(n) + h(1)` gives the log 323);
- `arith.Checked` overflow;
- `Narrow` at every boundary tried (F64 to I64/U64 at 2^63/2^64, F32 to I32 at 2^31, F64 to F16 at 65504/65520, NaN
  and Inf to integers, negative fractions to unsigned, U64 to I8, I64 to U64): built, interpret and baked all agree,
  and all as E26b says;
- contracts with a fallible call in the condition;
- a `Call` adapter with a contract used as a function value of a two-error type;
- `olang fix` on old `try`/`checked` forms (it lists the changed reading and the `checked` use, status 1).

small2:

- errdefer ordering, as above;
- `embed` with `..` paths from a remote: refused;
- generic enums: `==`, `Hash`, `$`, patterns and trees.

refl:

- json `Encode` of structs with public fields, generic enum payloads, text escapes, `-0.0`, `1e300`;
- private fields are not written, as documented (so a lowercase-field struct encodes as `{}` and does not decode).

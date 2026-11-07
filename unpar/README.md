# Soundness review: wt-unpar (b1adc47 on master 4c18220)

This review was read-only. The branch's compiler was built in `/home/user/wt/rvunpar` at b1adc47 (`make bootstrap`,
stage 2 == stage 3). Master's compiler (4c18220) was built in `/home/user/wt/rvunpar-m` with the branch's binary.
Every candidate ran under `build/olang -debug -sanitize` on both compilers, and under `build/olang interpret`.
The scratch programs are under `held/` and `precision/`. The confirmed one is under `repro/`.

## Confirmed holes

**None introduced by the branch.** One older hole was found. Master accepts it too, and the branch does not change it.

### 1. A constructor field initialized with a lambda that captures a reference: the closure dies with the constructor (pre-existing)

`repro/ctorlambdafield.olang`:

```
type M struct(n I64, data Array<I64>&) {
    n
    F fn() I64 = fn() I64 { return data[1] }
}

fn main() {
    d := Array<I64>(4, 7)
    m := M(2, d)
    churn()
    io.Println($m.F())!
}
```

- **Master:** accepts it. At run time: `use after scope closed: storage a closed scope gave back was read or written`, status 134.
- **Branch:** accepts it, with the same report and status 134.
- **`olang interpret`:** `ctorlambdafield.olang:12: it uses storage after the scope it was made in closed`.

`d` and `m` live in one block here, so the dead storage is not `d`. It is the closure environment, which is built in
the constructor's own scope and reclaimed when the constructor returns. Other forms of the same hole:

- `repro/ctorlambdafield2.olang`: the lambda captures another reference field of the constructor. Both compilers
  segfault, and `-i` reports the use after scope closed.
- `repro/ctorlambdafieldloop.olang`: the instance is pushed into a list that outlives the loop. Both segfault.

These forms are sound in both compilers:

- the same lambda bound to a local first (`g := fn ...; F fn() I64 = g`);
- the lambda chosen by a conditional (it is refused or correct);
- the lambda passed as a constructor argument;
- the lambda assigned in the constructor body;
- a lambda capturing only numbers;
- `F fn() I64 = mkf(data)` (refused, C2d).

Only the direct field-initializer form is wrong. This is outside what the branch changes. It bears on the branch's
argument, though: that argument is "sound provided the obligations are complete", and this is a body whose placement
is wrong. Moving `d` to the result scope would not help either, since master moves it and still fails.

## Plausible concerns (not confirmed)

1. **`canKeep` reads only `Var` relations.** A callee that keeps an argument only through the referent of the
   argument's `&p` field records a `Derived(p, w)` obligation, and `canKeep` does not treat that as keeping the
   argument. Every such shape I wrote was either sound or refused:
   - by-value and by-reference `W` parameters;
   - `Rewrap`, `RewrapH`, `RewrapR`, `Get`, `GetR`, `MkW`, `Id`, `Inner`;
   - in loops, and through tuples.

   The call's own obligation resolves the derived scope through the argument's per-instance binding. I could not find
   a binding that falls back to "the argument's own scope" while that local is moved and its referent is not. Each
   route I tried hit O25h, O17 or O26 first.

   The cost is precision. `precision/t17.olang`, `return lib2.RewrapR(w1)` where `w1 := lib2.W(d)` is a local:
   - master accepts it, because `laterModule` moved `w1`, and it runs clean;
   - the branch refuses it with O26;
   - the same-module form is refused on master too.

   So the branch only makes cross-module code read the way same-module code already did. Real code that compiled
   before (oann, for example) may hit this.

2. **The argument for item 2 holds only if every summary is complete.** The scope pass has no module-specific logic
   left: `laterModule` was the only place that compared files. So after the branch, a callee in another module is
   read exactly as a callee in the same module, and any hole it opens is a hole that same-module code already has.
   The C2d conditional field the author fixed was one such summary gap, hidden in master by `laterModule`. I looked
   for more and found only the lambda field above, which `laterModule` did not hide either.

## Shapes tried that held

All of these, on the branch: either refused, or accepted and clean under `-debug -sanitize` and under `-i`.
Cross-module and same-module variants agree.

### Through `try` (item 1)

`held/try_flows.olang`, `held/try_flows2.olang`, `held/try_view.olang`, and the t3/t4 programs. The receiver came
from:

- a call result (`m := mk()`);
- a zero-value declaration;
- a struct field (`try w.M.Get(1)`, `try w.In.Get(1)` across modules);
- nested tries (`try (try m.Get(1)).First()`, `try (try mm.Get(1)).Get(1)`);
- a loop body with `break`;
- a catch block that returns;
- a catch block that writes the map, with a default;
- a conditional `(try m.Get(1)) if c else o`;
- a later-module function wrapping `try m.Get` (`lib.Find`, `lib.FindR`);
- `try ls.First()` on a List or a Vec of handles;
- a tuple return of a try;
- a destructured map;
- a parallel declaration;
- a map declared in an inner block;
- the local reassigned later;
- `return l.View()` on a Vec taken out of a map, in a loop, and after the local is reassigned.

A plain copy of the receiver (`m := src`, or `c := m`) is still refused with O10c on both compilers, which is correct.

### Later-module callees (item 2)

- A lambda returned bare, in a struct, an enum payload, a List or an Array (`held/bat`).
- A spawn target in the callee.
- A try default.
- A match binding.
- A for-in.
- A tuple result.
- A callee calling a callee.
- Several constructor-field forms: a `:=` field, a field filled in the body under `if`, `match` or `for`, a handle
  field pushed in the body, a nested constructor, a method in a field.
- Generic instances at reference types: `Wrap1`, `WrapL`, `PushG`, `Box1<Array<I64>&>`.
- An enum built from a conditional, an array fill from a conditional, a constructor argument that is a conditional
  or a match with a guard, a field store of a conditional (`held/bat2`).
- Stores into another argument (`lib3.Store`, `Push`, `PushG`): refused with O10c.
- Stores into a global's Vec or List through a callee: refused with O10c at the caller.
- A function value, a named function or a `Call` adapter that keeps its argument, passed to a later-module `Apply`:
  refused with T22a.
- A three-module import cycle with a call cycle (`held/cyc` shape).
- An array value returned whole from a reference parameter: copied.
- `olang compile` of a single module judges its imports' bodies (the O10c errors appear there too).

### The "result holds no reference carries nothing" shortcut

- `return lib.Ret(d)`, where `Ret` returns `I64` but stores `d` into a global List: refused with O10c.
- Array values returned by value: always copies.

### The constructor-field fix (C2d/E28)

All of these are refused where an argument from a closing block could be kept (`held/cf`):

- nested conditionals;
- a match with guards and several alternatives;
- `:=` fields;
- a conditional of two parameters, including `M(2, d, d)` and `M(2, o, d)`;
- a parameter or a global;
- a `&p`-marked field;
- a writable List field;
- a derived `w.D` field;
- by-value struct fields holding references (`In H = (a if c else b)`);
- a generic `G<Array<I64>&>` field;
- a conditional nested in a constructor argument in a field;
- a slice of a conditional.

Master accepted e2, e4, e5, e10, e11, e12, nestcond, matchguard, condcall and condlist, and each of those aborted under
the sanitizer. The branch's fix closes them all. One shape, `L.Push((a if n > 1 else Array<I64>(3)))` in a constructor
body, is accepted by both and runs clean with `-i` agreeing.

### The scope fuzzer, branch compiler

| seeds | scenarios per program | programs | scenarios run | refused | findings |
|---|---|---|---|---|---|
| 2000-2299 | 12 | 300 | 1387 | 2213 | 0 |
| 5000-5399 | 16 | 400 | 2440 | 3960 | 0 |
| 9000-9499 | 16 | 500 | 3086 | 4914 | 0 |

The fuzzer writes single-module programs. That covers item 2 only by the equivalence argued in concern 2: there is
no module-specific logic left in the scope pass.

## Judgement

The branch can merge.

- **Item 1** (a try's receiver now flows) only adds moves to the result scope. That lengthens lifetimes and never
  shortens one, and every shape I tried was correct at run time.
- **Item 2** (later-module plain calls read by their summaries) makes cross-module calls read exactly as same-module
  calls already did. It costs some precision (concern 1, `precision/t17.olang`), and it relies on the summaries being
  complete.
- **The C2d fix** closes about ten older use-after-frees that master accepts.

One older hole remains, in master and in the branch alike: a constructor field initialized directly with a lambda
that captures a reference (repro/ctorlambdafield*.olang). It should be fixed separately.

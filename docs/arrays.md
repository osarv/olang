# Arrays: one constructor, lengths inferred, arrays by value - design and plan

Status: phase 1 (spec and plan) 2026-10-17 on branch `wt-arrays`; phase 2 (the implementation, in the self-hosted
compiler - stage 0 has been removed) from 2026-10-24 on `wt-arrays2`, where `SPEC.md`'s rules were re-applied onto the
spec as it stands then (after the error and syntax batches, QW's type-parameter lists `fn f<T>(...)` and `checked`).
The normative rules are in `SPEC.md`: T7-T7d, T8, T10-T12, D8f (renumbered from phase 1's D8e, which `noreturn` took),
D9a-D9c, D13, D15/D15a, E12/E12b, E13a, E16/E16a, E19-E21, S8/S8a, S13f, S18a, S18c, S18e (renumbered from phase 1's
S18d, which the error return trace took), C2e, X3/X3a, G1-G17 (no constant parameters), G29-G31 and K1; E32b and
G20-G28 are gone. What the compiler does not implement yet is marked so in `SPEC.md`, and listed in section 7. This note
says how the user's decisions are specified, what was decided on the way, what has to move in the repository, and how
phase 2 builds it.

## 1. What was decided (ledger QP1-QP4)

1. **QP1: one array constructor.** `Array<T>(n)` and `Array<T>(n, fill)` make fixed storage when `n` is a
   compile-time constant, and a run-time-length array otherwise. `Array<T, N>()` goes. `:=` keeps the fixed storage.
2. **QP2: no written lengths, no constant generics.** The written `Array<T, N>` type goes, and so do constant
   parameters of types and functions (G20-G28): `<N I64>` introductions, `Matrix<T, R, C>`, G26's per-instantiation
   decisions on a constant. Whether storage is fixed is inferred, never written. The user: "This still doesn't give
   more information than inferring a known size at compile time".
3. **QP3:**
   1. fixed storage is inferred where an array is made;
   2. a function's array result is fixed when every return gives one known length, inferred from the body, as error
      sets are; the evaluator follows lengths through calls;
   3. D9a is relaxed: arrays may be passed **by value**. A by-value array parameter makes the function, invisibly, one
      instance per known argument length. In an instance the length is a constant (registers, unrolled loops), and
      the function's asserts on lengths are decided while compiling, so a shape mismatch is a compile-time error at
      that call. A reference parameter (`Array<T>&`) makes no instances. A run-time-length array passed by value is a
      compile-time error: write `&`, or copy explicitly ("Do A for now").
4. **QP4: a 128-byte cap.** Every by-value parameter of an aggregate type - struct, enum, array, a by-value receiver,
   a constructor's or lambda's parameter, a generic's parameter checked per instantiation - holds at most 128 bytes as
   laid out, padding included. A larger one is a compile-time error naming its size and `&`. Results are not capped.

And the standing rule behind QP3 (the user, 2026-10-17): "Anything that can be simulated at compile time should be."

## 2. The design on one page

There is one array type, `Array<T>`, and its reference `Array<T>&`. A length is never written in a type. The compiler
still knows a length wherever the program fixes one, and uses it. Internally the checker keeps the fixed-length array
type it has today (T7c's machinery); only its spelling goes.

```olang
fn dot(a Array<F32>, b Array<F32>) F32 {      # by value: one instance per length, at most 128 bytes each
    assert a.Len() == b.Len()                 # decided in each instance, at compile time
    s F32 = 0.0
    for i in range a.Len() { s = s + a[i] * b[i] }    # a constant count: unrolled, in registers
    return s
}

fn cross(a Array<F32>, b Array<F32>) Array<F32> {      # its result's length is inferred: 3
    assert a.Len() == 3 and b.Len() == 3
    return F32[a[1] * b[2] - a[2] * b[1], a[2] * b[0] - a[0] * b[2], a[0] * b[1] - a[1] * b[0]]
}

type Particle struct() {
    pos := Array<F32>(3)                      # held in the instance: its length is the declaration's
    vel := Array<F32>(3)
}

fn main() ? {
    x := F32[1.0, 2.0, 3.0]                   # fixed storage, 3
    y := Array<F32>(3, 1.0)                   # fixed storage, 3
    z := cross(x, y)                          # 3, known from cross's body
    w := dot(x, z)                            # dot at length 3
    r := Array<F32>(os.Args().Len())          # run-time length
    q := dot(r, r)                            # error: a run-time-length array by value; write '&' or 'r[0:3]'
    v := dot(x, F32[1.0, 2.0])                # error at this call: dot's assert is false at 3 and 2 (S18c)
}
```

Three rules carry it:

1. **Known lengths (T7c).** A length is known while compiling where the program fixes it: a literal, `Array<T>(n)`
   with a constant `n`, a slice with constant bounds, a function's inferred result, a by-value parameter in its
   instance, a local whose every value has that length. Everywhere else it is a run-time length, and that is never an
   error, except for QP3's one rule.
2. **Fixed storage (T7d).** Storage takes a known length where it is made. A local takes it when every value stored
   in it has that one length; a field when its declaration fixes it. Fixed storage is a representation: a program
   behaves the same whether a local's storage is fixed or not.
3. **Arrays by value (D9a, D9c, G29-G31).** A by-value array parameter takes its length from the argument, one
   instance per length. The by-value aggregate cap is 128 bytes.

## 3. Decided

Numbered for reference. Each is within QP1-QP4 and the principles, and is the spec's rule now.

### 3.1 Where a length is known (T7c)

1. **The sources of a known length** are: an array literal (its item count); written text (its characters); a `$`
   rendering or a join whose every piece the compiler computes (`$3`, a constant's rendering), as the text it is;
   `Array<T>(n)` / `Array<T>(n, v)` where `n` is a compile-time constant (§3.2); a slice whose length `hi - lo` is
   known (item 2); a comprehension over a source of known length with no `if`, or over a `range` of constant bounds
   with no `if`; a conditional or `match` all of whose values have one known length; a conversion (`String(x)`, a
   declared array type) keeps its argument's length; a read of fixed storage (a local, a global, an inline field, an
   element of an array of inline arrays); a call whose result's length is inferred (D8f); a by-value array parameter
   in its instance (G29); a value of a type variable bound to a fixed array.
2. **A slice's length is known** when both bounds are compile-time constants (an omitted `lo` is 0; an omitted `hi`
   is the base's length, when that is known), or when `hi` is written `lo + k` (or `k + lo`), with `lo` the same
   name or the same chain of field reads written twice and `k` a constant: `raw[off:off + 784]` has length 784. Its
   bounds are still checked once, at run time (E16b). This is what replaces E32b's `x as Array<T, N>&`.
3. **Not a source**: a function value's result (a function type is written without lengths); a reference field
   (`Array<T>&` held in a struct holds whatever it is given); an element of an `Array<Array<T>&>`; a parameter taken
   by reference outside an instance; `List.ToArray()`, `Filter`, `Map` and the like, whose lengths are their
   arguments' at run time; a mutable exported global (item 9).
4. **An inferred length is a fact where it is known.** `Len()` of fixed storage is a constant everywhere a constant
   is read: a constant index out of range is E16's compile-time error, and a condition fixed by it is S8a's dead
   branch - outside instances (item 21) it cannot be configuration, since no build changes it. Diagnostics found while
   the storage of a function's locals is still being settled (§3.3, item 8) are held back until it is, so a local
   demoted to a run-time length never reports an error its first, optimistic check found.
5. **No known length is ever invented.** Where none of item 1 applies, the length is a run-time length. That is never
   an error, except a run-time-length array passed by value (QP3, item 15).
6. **Diagnostics spell a known length in words**, never as `Array<T, N>`: "an Array<F32> of 3 elements". The spelling
   `Array<T, N>` no longer exists, and is simply `Array`'s argument count (one) being wrong (G8) - the user's rule that
   a removed spelling is not kept alive by a diagnostic.

### 3.2 `Array<T>(n)` (QP1, E13a, T8)

7. **`n` is a constant** when the compile-time evaluator can compute it (K1): a literal, a literal-only expression, an
   immutable global or build constant, a K1a-evaluable call, arithmetic on these - computed as the program computes it
   (the typed fold G21 had: `Array<I32>(B + 1)` with `B U8 = 255` has 0 elements, as `B + 1` is 0 in the program).
   One that cannot be computed makes a run-time length - never an error. A constant out of range (negative, or a byte
   count no `I64` holds) is D14b's error at compile time. `n` needing evaluation proper (a call, a computed global) is
   decided once the program has checked, and the program checked again with the length known - the loop C2e and G21
   already used.

### 3.3 Fixed storage (T7d)

8. **A local's storage is fixed when every value stored in it has one known length** - its initializer (or zero
   value: an empty array, 0 elements), every assignment, destructuring target, parallel assignment and `spawn` target
   naming it. A local given two lengths, or a run-time one, keeps its length at run time. Decided by checking the
   function with every local fixed at its initializer's length, then again with each local some store disagreed with
   demoted, until none does - monotone, so it ends. This is the reading of "a written target type wins" that QP2
   left: with no length in a written type, `x Array<I32> = Array<I32>(3)` and `x := Array<I32>(3)` are the same
   declaration, and the stores decide. It keeps T11's rule that representation is never behaviour: no store into a
   local ever aborts or is refused for its length. So `lit := I32[1, 2]` then `lit = I32[1, 2, 3]` stays legal (a
   corpus test pins it), and makes `lit` a run-time-length local.
9. **A global's storage**: an immutable global is fixed when its initializer's length is known. A mutable global that
   is private (M6) is fixed when every store into it in its module agrees, as a local's (item 8). A mutable exported
   global keeps a run-time length: an importer compiled later may store any length, and the global's own module cannot
   see it.
10. **A field's storage is decided by its declaration.** A struct's layout is one per type (per instantiation of a
    generic type), so a value array field is held in the instance exactly when its declaration gives it a known
    length that is the same for every instance: an initializer (`pos := Array<F32>(3)`, `m Array<F32> =
    Array<F32>(16)`, `lock := Array<I64>(MutexWords)`) whose length depends on no constructor parameter. This is C2e's
    original design (2026-10-01), back now that the written length is gone. A value array field with no such
    initializer is T7a's error: hold it by reference (`m Array<F32>&`) or give it a length. A constructor field
    punning a by-value array parameter is the same error: the parameter's length is each constructor instance's, and
    the field's must be the type's (question 1).
11. **Storing into fixed field or element storage** needs a value of that known length. One of another known length,
    or of a run-time length, is a compile-time error naming the explicit copy: a slice with constant bounds,
    `s.m = v[0:16]` (checked once, E16b; `try` for an error, E16c). So no implicit run-time length check exists
    anywhere: where a run-time length meets fixed storage, the check is the slice the program writes. This replaces
    T7d's "copied in, its length checked once per copy" abort, which with inferred storage would be a hidden abort.
12. **Elements held by value** - an `Array<Array<T>>` - are laid out in place, so their length is the outer array's
    storage's: given by the fill (`Array<Array<F32>>(4, Array<F32>(4))`) or by a literal whose items all have one known
    length. With no fill (`Array<Array<F32>>(4)`) or items of different lengths it is T7a's error (hold the elements by
    reference, `Array<Array<F32>&>`). An element length never demotes: a local whose element lengths disagree is an
    error, not a run-time representation, since run-time-length elements are references.
13. **A payload held by value** cannot carry an array: a payload's layout is its enum's, and a payload parameter has
    no declaration to give a length. `Tri(pts Array<I32>)` is T7a's error; hold it by reference, or put the inline
    array in a struct (`Tri(t Tri3)`). The old `Tri(pts Array<I32, 3>)` has no spelling now.
14. **Results** (D8f, item 18) are returned in place when their length is known, as an `Array<T, N>` result was.

### 3.4 Arrays by value (QP3, QP4)

15. **A by-value array parameter** (`a Array<F32>`, a declared array type such as `s String` included) takes its
    length from the argument. The function is compiled once per distinct known length (G29). An argument of run-time
    length is a compile-time error naming `a Array<F32>&` and the explicit copy, a slice with constant bounds (`r[0:3]`).
    This is QP3's "A". Its meaning is D9's: the callee's own copy of the argument **as it was at the call** - always a
    copy, never the caller's array read in place, since the cap makes it at most 128 bytes and an in-place read would
    see a write another reference makes during the call (D9b's in-place reading stays for a type variable bound to a
    run-time-length array, item 17, where a copy would cost the array's length).
16. **An element held by value under a reference** - `m Array<Array<F64>>&` - is a by-value array level too: the
    function is instanced per element length, though the outer array is a reference and makes none. Without this an
    array of inline rows could not be passed at all, since its row length would have to be written. QP3's "a reference
    parameter makes no instances" is read as: the reference level makes none.
17. **A type variable keeps D9b.** `x <T>` bound to a run-time-length array (`Pick(s, t)` on two `String`s) is one
    instantiation, copied only where written - QP3's "A" is about parameters written as arrays, which D9a governed,
    and a generic's own parameters were never D9a's. Bound to a fixed array, the length is part of the binding (one
    instantiation per length, as for any type argument); two arguments binding one variable to two lengths meet at the
    run-time-length array, as two numbers meet at the wider (T6b).
18. **A function value has the written signature.** A written function type with a by-value array parameter is an
    error (no length to give it; write `Array<T>&`), unless a type variable bound to a fixed array gives it one, which
    is one instance. A lambda is a value, so its by-value array parameter is the same. A named function whose result's
    length is inferred, made a value, is reached through its adapter, which builds the run-time result where the call's
    result lands from the in-place one (a copy, the cost of reaching a fixed result through a function value). A
    function with a by-value array parameter made a value is its instance at the length the function type gives.
19. **Instances** (G29) are named by the function (with its generic arguments) and the length of every by-value array
    level, spelled injectively as G16a spells an instantiation (the internal type `Array<F32, 3>` is a fine name; it is
    no source syntax). They are defined by the root object only, `weak_odr`, as generic instantiations are (B3d): a
    module's own object cannot know its callers' lengths. G16b's notes, G17's bounds and G18's re-checks apply to them.
20. **The cap (D9c)**: a by-value parameter whose type is a struct, an enum, a fixed array or a run-time array by
    value (D9b's pair, 16 bytes) holds at most 128 bytes as laid out (`TypeGetSize`). Checked at the declaration where
    the size is known there, else per instance or instantiation, the error at the parameter with G16b's note at the
    call - "parameter 'a' holds 3136 bytes by value (784 F32s); a by-value parameter holds at most 128 - take it as
    'a Array<F32>&'". It covers a receiver, a constructor's parameter, a lambda's, a function type's (a value of it would
    pass the same copy) and a task's call. An `extern` parameter is exempt: X3 passes a pointer, nothing is copied.
    Captures are not parameters. A bare type-variable parameter (`x T`) is exempt (question 2).
21. **Decided per instance (G30, replacing G26)**: in an instance, a condition reading `p.Len()` of a by-value array
    parameter `p` - or the length of a value of a type variable bound to a fixed array - is evaluated while compiling,
    and only the chosen branch is checked and compiled for that instance; it is configuration, never S8a's dead code.
    The same for a conditional expression and a `match` on such a length. This is what ends a recursion on a length:
    ```olang
    fn total(a Array<I64>) I64 {
        if a.Len() == 0 { return 0 } else { return a[0] + total(a[1:]) }   # a[1:] has a known length: one less
    }
    ```
    `total` at 0 checks only `return 0`; at 3 it checks the `else`, which asks for `total` at 2. A chain of more than
    1,000 instances each asking for the next is G17's error.
22. **Asserts decided at the call (S18e).** QP3's call-site asserts, extended by the standing rule:
    - in an instance, an assert that reads only constants and its parameters' lengths is decided while compiling
      (S18c already decides a constant assert); a false one is a compile-time error **at the call** that asked for the
      instance - the program's own call, the outermost of G16b's chain - with a note at the assert, since a length
      mismatch is the caller's mistake;
    - beyond instances, at **every call**, the callee's **leading asserts** - the asserts that begin its body, before
      any other statement - are evaluated with what the call knows: the known lengths of its array arguments, the
      values of constant arguments, and the fields of a struct argument that is a local built by a constructor, where
      the field is a pun of a constructor parameter given a constant, never assigned in its function, and lent
      writably only to callees whose bodies never assign that field (a fact read off the bodies, as O17's are) - so
      `Gemm(c, a, false, b, false)` still knows `c.Rows`, though it writes `c`'s elements. What is not known is unknown, and an assert that
      reads it is undecided: nothing is reported, and the assert runs at run time as written. A false one is the same
      compile-time error at the call. This is diagnostic only: the run-time asserts are unchanged, and the knowledge of
      struct fields used here is used nowhere else (S8a and S8b do not see it, so it never turns a condition into dead
      code).
    So `Ring<I32>(6)` with a constructor beginning `assert cap > 0 and (cap & (cap - 1)) == 0` is a compile-time error
    at the call, and `linalg.Gemm(c, a, false, b, false)` with `a` and `b` built `Matrix<F32>(784, 128)` and
    `Matrix<F32>(10, 64)` is one at that call - what `Matrix<T, R, C>` would have checked, without the parameters.
23. **Generics without constants.** What constant parameters did is now done by: an inline field of a constant length
    (`items := Array<T>(8)`); a run-time capacity with a constructor assert decided at the call (item 22); marker types
    and `match T` for a flag or a layout (std/linalg's `wideTile`/`thinTile`, `packedA`/`rowsA` already work so); a
    by-value array parameter for a function over a length (item 15). `match N`, G26 and G27 have no counterpart beyond
    items 21-22. A type parameter followed by a type that is not a trait is now an error ("a type parameter's constraint
    is a trait") - the form that declared a constant parameter.
24. **Declared types over fixed arrays go.** `type V3 extends Array<F32, 3>` has no spelling. A declared array type is
    over `Array<T>`, and a value of it has whatever length its storage has, known lengths flowing through its
    conversion (`Vec3(F32[1.0, 2.0, 2.0])` is fixed, 3). A type all of whose values have one length is a struct with an
    inline field. E32b's view, and `V3(x)` as a view, go with it; the explicit form is the slice of item 2.

### 3.5 Everything else

25. **`$`, `==`, `Hash`** do not change meaning: a fixed array renders, compares and hashes as any array. An array
    of arrays renders its element type without a length: `Array<I64>[I64[1, 2, 3], I64[4, 5, 6]]`.
26. **§8.** Fixed storage lives where its local, global, field or element is (a local's frame, or its block's arena
    above 64KB, the rule T7c had); a by-value parameter's storage is the callee's own for every scope rule - a copy for
    an array parameter (D9a), the caller's array read in place only for a type variable bound to a run-time one (D9b);
    a fixed result is built in place in the result scope.
    Nothing in §8 refers to a length.
27. **§8.8.** An own array (`own mut Array<T>&`) is a reference, run-time length, unchanged. An inline array of owners
    is a field `kids := Array<own Node&>(4)` (every element null, T8's rule that an owner fill is an error). A
    by-value parameter of an owning element type stays O31's error.
28. **`extern` (X3).** A fixed array is still passed as a pointer to its first element. X3a's blobs become inline
    fields: `lock := Array<I64>(MutexWords)` in `std/chan`, the length a constant the evaluator computes.
29. **The evaluator and `-i`.** They run instances as they run instantiations; a baked global's array keeps its
    length (K2b writes `[N x T]` data); S18e needs a new evaluator mode in which an argument may be **partly known** -
    a length without its elements, a struct with some fields - and reading an unknown part makes the evaluation
    undecided (no error, left to run time). G23's constant variables and their values go.
30. **What QP1's ":= keeps the fixed type" means now**: `:=` declares `Array<T>`, and the storage is fixed by item 8,
    the same as for a typed declaration. The phrase "a written target type wins" was about a written length, and there
    is none.

## 4. Questions (decided)

Both were decided by me on 2026-10-17 (ledger, "Arrays phase 1"), within QP2 and QP4:

1. **A struct whose inline array takes its length from a constructor argument** (`type Fir struct(taps Array<I16>)
   { taps }`) does not become one type per length: a field's length is the type's, written in the field's declaration;
   such a field holds a reference or declares its length (item 10). A type whose layout depends invisibly on its
   constructor's arguments is the length-in-the-type QP2 removed, coming back where it cannot be seen.
2. **The cap and bare type-variable parameters**: QP4's cap applies to a parameter whose **written** type is an
   aggregate (a struct, an enum, an array, an application of a generic type, a by-value receiver); a bare type variable
   `x T` is exempt, so `List<Big>.Push`, `Map.Put` and `Sort` over big structs keep working - the container's own
   semantics, not a copy the caller wrote. `SPEC.md` D9c says so.

## 5. Migration inventory

Counts are occurrences, from grep over the tree at 755fe36 (and the port worktrees named). "Fixed" is `Array<T, N>`
written as a type; "ctor" `Array<T, N>()`; "view" `x as Array<T, N>&`; "const" a constant parameter or `<N I64>`.

| Area | Fixed | Ctor | View | Const | What each becomes |
|---|---|---|---|---|---|
| `std/linalg.olang` | 6 | 0 | 0 | 0 | inline tile fields `v := Array<A>(384)`, `at := Array<I64>(12)`, ... (§5.1) |
| `std/chan.olang` | 7 (3 fields, 2 locals, 2 comments) | 0 | 0 | 0 | `lock := Array<I64>(MutexWords)`; locals `ts := Array<I64>(2)`; X3a comment |
| `std/io.olang` | 7 locals | 0 | 0 | 0 | `buf := Array<U8>(8)`, `fds := Array<I32>(2)` - fixed, handed to `extern` |
| `std/os.olang` | 8 locals | 0 | 0 | 0 | as io |
| `std/cancel.olang` | 3 (2 locals, 1 parameter) | 0 | 0 | 0 | locals as io; `WakeAt(ts mut Array<I64>&)` with a leading `assert ts.Len() == 2` |
| `std/rand.olang` | 3 | 0 | 0 | 0 | `State() Array<U64>` (inferred 4); `SetState(s Array<U64>)` by value (32 bytes, instance at 4) with a leading assert |
| `std/prelude/text.olang` | 1 local | 0 | 0 | 0 | `room := Array<Char>(65)` |
| `shared.olang` | 119 | 8 | 7 | 12 decls, 9 `<N ...>` | the G20-G28/T7c/T7d section (lines 12701-13137, ~440 lines) rewritten for §3 (§5.2); ~40 lines elsewhere (4715, 8448, 9203, 10481, 11268, 13422-14384, 15337-15976) moved to inline fields, `Array<T>(n)` and slices |
| `worker.olang` | 1 | 1 | 0 | 0 | `b := Array<I64>(5)` |
| `checks/cases` | 108 in 59 files | 3 | 3 | 14 | §5.3 |
| `checks/fixtures`, `checks.olang` | 10 in 8 files | 0 | 0 | 0 | inline fields and locals; expected texts that spell `Array<T, N>` |
| `fuzz/gen.olang` | 28 | 2 | 5 | generated | its own state: 18 inline fields (`vt Array<I32, 4096>` -> `vt := Array<I32>(4096)`); what it generates: the fixed-array type family (codes 2000+, 2300+, 2600+) becomes known-length values and by-value parameters, `as` views become constant-bound slices, the `<T, N I64>` struct and `N == 0` recursion become a by-value parameter and G30 |
| `fuzz/scopegen.olang` | 7 | 2 | 2 | 0 | inline fields and slices |
| `fuzz/repro/trygenericindex.olang` | 5 | 0 | 0 | 1 | a by-value parameter at two lengths |
| `compiler/` (port, master) | 14 (msgs 5, generic 5, types 2, typed 1, ast 1) | 3 | 2 | 4 | §5.4 |
| port worktrees | `wt-check` check.olang 3, typed 2; `wt-drv` build.olang 5 locals | - | - | - | the checker's G21/G24 code; `build.olang`'s hash state as locals `Array<U32>(64)` |
| `bench/`, `tools/` | 0 | 0 | 0 | 0 | nothing |
| oann (`/home/user/oann`) | 9 in 5 files | 0 | 0 | 0 | inline fields (`kernels`, `sparse`, `quant` tiles, `agent`'s RNG state) as linalg's; `Generator() Array<U64>` and `SetGenerator(s Array<U64>)` as std/rand's - the same script, when oann's compiler moves |
| By-value aggregates over 128 bytes | 6 parameters and a function type `fn(b CgBig) I64`, all `CgBig` (328 bytes) in `shared.olang` 10489-10522 | | | | the >128-byte memory-path test (cgfix) becomes a `checks/cases` program for D9c's error, and its run-time half takes `CgBig&` (the codegen path stays, for results and, if question 2 exempts them, bare type variables) |

The last row is measured, not estimated: a copy of the compiler built in a scratch directory with one line printing
every by-value parameter over 128 bytes it emits, run over std, the prelude's tests, worker, runner and shared. Nothing
in std or the prelude is affected. The compiler finds anything else (checks fixtures, programs not built here).

### 5.1 std/linalg

(std/linalg was removed from std on 2026-10-26 - oann owns its tensors and kernels; this section is kept as written.)

`Matrix<T>` already has run-time dimensions (`Rows`, `Cols`, `Stride` fields over a `mut Array<T>&`); the
`Matrix<T, R, C>`/`Dynamic` design of G20 was never merged into the library. So linalg loses nothing to QP2 but its
six inline tile fields, which become `v := Array<A>(384)` and the like - the same layout, element type and alignment,
so the generated code is the same.

What has to stay fast, and why it does:

- **The micro-kernel's tile sizes are compile-time constants without constant generics.** `tileRows(z)`,
  `tileCols(z)` and `tileColsOf(z, sh)` compute them from `TargetVectorBits` (a build constant) and `match A` / `match
  S` over type variables (G13-G15), and are inlined; the accumulators are an inline field indexed only at constants,
  which is what keeps them in registers. Nothing there reads a constant parameter.
- **bench/README.md's numbers are the acceptance test**: single-threaded GEMM F32 57-78 GFLOPS and F64 25-33 (native,
  AVX-512), batched causal attention, the 784-128-10 training step 0.8-1.1 ms. Phase 2 checks that linalg's emitted IR
  is unchanged apart from names, and re-runs `bench/run.sh` for GEMM and the training step.
- **What linalg gains**: its operations check shapes with an assert (`assert productShape(c, a, transA, b,
  transB)`); S18e decides a leading one at each call whose matrices were built from constants in the caller, so a
  shape mismatch there is a compile-time error - what `Matrix<T, R, C>` was meant to give, through inference. For that
  the assert has to be each public entry point's **first statement** (today the plain `Gemm` forwards to the
  workspace's, whose first statement it is): the migration moves or repeats it there, one assert per call. Small fixed vectors and transforms (a 4x4 `F64` is 128
  bytes) can be taken by value and live in registers.

### 5.2 shared.olang's constant-generic section

Each test is kept in substance and rewritten to the new rules (the tests' rule: a test the change invalidates is
rewritten, not dropped), each with its baked global (K2) and decided assert (S18c):

- `KRing<T, N>` -> `Ring<T>(cap)` holding `items Array<T>& = Array<T>(cap)`, its constructor beginning with the
  power-of-two assert - and an S18e `checks/cases` program for `Ring<I32>(6)`;
- `kDot`/`kConcat`/`kLast`/`kWiden` -> by-value parameters (instances) and inferred results;
- `KMat<T, R, C>` -> a struct over a run-time `Array<T>&` with its dimensions as fields, its `Times` beginning with a
  shape assert, decided at the call (S18e);
- `kTotal`/`kSize`/`kPick` -> G30's decided conditions on `a.Len()`;
- `KGrid<L, W>` -> marker types and `match T`;
- `kAsValue`, `KfDef`, `kfCount` (G23/D8a on constants) -> removed with G23, their D8a half kept on ordinary defaults;
- `KBlock` (G21 by evaluation) -> inline fields `words := Array<I64>(KPageWords)`, `bytes := Array<U8>(kPage())`;
- T7c's value tests, T7d's conversions, the long-array copy, the huge local and E10c's `is` -> the same programs with
  inferred storage and constant-bound slices for the views;
- `KVec3`/`KfV3` (T29a/T29f over a fixed array) and `KSized` (G28) -> a declared type over `Array<F32>` whose length
  is inferred, and nothing for G28;
- `KfWrap`'s fold (G21's typed computation) -> `Array<I32>(KfB + 1)` and friends, the same arithmetic now deciding
  QP1's `n`.

### 5.3 checks/cases

As built (phase 2): 20 cases went with their rules - e32blength, g20eqafter, g20eqbefore, g20float, g21kind,
g21paren, g21typeargs, g22asttype, g22constrained, g22global, g22twotypes, g22typeandconst, g22typed, g23typevar,
g24mismatch, g24runtime, g27assert, g4constexpr, g4constgenericbody, t8fill; g17constchain became d9cgrowing (a
by-value chain meets D9c's cap long before G17); 54 were rewritten or respelled - g21divzero, g21effect and
g21mutable over QP1's `n`, g22local and g22param over a type variable's name (D3a), t7aelem over a field, the views
(`as Array<T, N>&`) as slices, rv9slicetempas's payload through a struct, and the rest in spelling. Their entries in
`compiler/goldens/diag.txt` were spliced from the port's output; the file's other entries are still stage 0's text.

### 5.4 The port (compiler/)

Stage 0 was gone by phase 2, so the port alone was changed, in two stages since it builds itself from a seed that
accepted only the old spellings:

- **Stage A** added the rules beside the old forms - `generic.FoldLength` (QP1's `n`, soft asks to the evaluator),
  `StorageOf`/`GlobalStorage`/`LengthsOnly` (fixed fields, globals, rows), the `storedIn` pre-scan for fixed locals,
  G29's hidden constant variables per by-value array level (`a.Len()`, `m[0].Len()`) bound by the old inference by
  value, `paramLen` and G30's decided conditions, `sliceLength`, D9a's and D9c's checks - and the seed was written
  again by it.
- **Stage B** removed `ast.TypeRef.Const` and the constant-argument grammar (type arguments are types only),
  names' constant variables, constant type parameters (a declaration's constant flags in the type table too),
  `generic.constArg`, G26's `match N`, E32b's views (`typed.Slice`'s flag), T29a's fixed-base view, `Array<T, N>()`
  and twenty messages. `types.olang` keeps the internal length slot (`Const`, `ConstExpr` for a length an instance
  computes) and `Canon`'s internal spelling of it, for instance names.
- `compiler/build.olang`'s SHA-256 state moved to `Array<U32>(64)` and the like; compiler/'s own by-value parameters
  over 128 bytes take references (D9c); the generic.olang tests that used constant parameters were rewritten over
  inline fields; the token, tree, layout and diagnostics goldens were captured again from the port.

## 6. How phase 2 built it

Phase 1's plan (stage 0 and the port moving together, in `syntax.c`, `semantic.c`, `comptime.c` and `codegen.c`) was
overtaken when stage 0 was removed; phase 2 built the same design in the port, as section 5.4 says. Its main idea
held: **the checker keeps its internal fixed-length array type** - the layout, in-place results, constant `Len()`, the
emitter's and the evaluator's handling were all there for `Array<T, N>` - and phase 2 removed its spelling and added
the inference that produces it. Decided on the way (recorded in `CLAUDE.md` and `HISTORY.md`): a local's storage by a
syntactic pre-scan rather than phase 1's re-check and demotion; checked slices keep a run-time length; a conversion of
fixed storage to a declared array type names its storage as a run-time one would; a run-time array into fixed field
storage is an error naming a slice, never a checked copy; D9c reported once, the instance over it not checked further;
a pun of a parameter D9a reported adds no T7a error. The evaluator agrees through the same lowering - each test of the
new rules in `tests/shared.olang` sits beside a global it bakes and an assert it decides - and one evaluator bug was
fixed on the way (an array copied out of a reference parameter was aliased while compiling).

## 7. Not yet implemented

Marked *(not yet implemented)* in `SPEC.md`, for a later round:

- **D8f**: a declared function's array result has a length known only at run time, even where every return gives
  one length.
- **S18e**: superseded on 2026-10-24 by contracts (SPEC D17): a rule a function's callers are held to is a requirement
  in its contract, decided at each call whose arguments the evaluator computes.
- **G29 for constructors**: a constructor's array parameter is by reference; by value it is D9a's error.
- **T7c**: a comprehension's length is not yet known where its source's is; a reference local (`Array<T>&`) is not yet
  judged fixed as a value local is.
- **T7d**: a mutable private global keeps a run-time length even where every store in its module gives one length.


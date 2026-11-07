# Bulk review of 68c693e..ea0a6de (lanes, small3, prel)

Read-only review of `/home/user/wt/bulk2` at ea0a6de, built with `make build/olang` (2m12s). A compiler at 68c693e (the
range's base) was built from `git archive` (`work/base`) to tell regressions from older behaviour.

`tools/t.sh FILE` builds `-memory` at -O3, builds `-debug -sanitize`, runs both, and runs `interpret` with
`OLANG_DEADREGIONS=1`. Each CONFIRMED finding below has a program in `repro/`.

## Summary

| # | Severity | Batch / commit | What |
|---|---|---|---|
| F1 | high (miscompile while compiling) | lanes: T4a b2bec35, eval.olang | The evaluator's fast path takes every signed integer held in 8 bytes, I33 to I63, for an I64. Sums do not wrap, and comparisons compare raw words of two different encodings. Baked globals, asserts decided while compiling and `interpret` all disagree with the built program. A true assert is reported false at compile time. |
| F2 | high (UB, crash, wrong results) | lanes: T4a b2bec35, std/arith.olang | std/arith at the new widths runs its `nomatch` branches, which were written for U8..U64. `Neg` fails for every nonzero signed odd width. `widthOf` is 64, so Shift refuses valid counts at 65-128 bits and runs an out-of-range shift below 64 bits. Div, Mul and Rem skip Min by -1. Built -O3: NUL bytes printed, exit 48, a segfault. |
| F3 | high (lost writes, accepted program the spec forbids) | lanes 23efbd9, check.laneAssign | `x op= v` on an array reached through `v[i]` (At/SetAt, e.g. a Vec element's field) writes a hidden copy that is never written back. The write is lost in every mode. On `Vec<Array<I64>&>` it is accepted where T25c refuses the same `+=` on an `Array<Array<I64>&>`. |
| F4 | medium (write to .rodata; segfault; mode disagreement) | pre-existing (base too) | A slice of an immutable global array is writable: `poke(G[0:2], 9)` and `s := G[0:2]; s[0] = 9` are accepted. `-debug` segfaults, -O3 drops the store, and `interpret` changes G. |
| F5 | medium (accepted program the spec forbids, UB) | pre-existing (base too); T4a makes it easier to hit | E8a's compile-time check of a literal shift amount was never ported: `msgs.ShiftOutOfRange` has no caller. `x >> 70` on a U8, or `u << 9` on a U7, compiles. |
| F6 | medium (unbounded memory) | lanes 23efbd9 + pre-existing E27 | A lane result (or a comprehension) assigned to a long-lived reference place in a loop is never freed early: `free.mayRegister` takes every `Seq`/`Collect` for "may register a destructor". `h.arr = h.arr * 2` runs 100k times at a 1.6 GB peak, against 1.8 MB through a function. |
| F7 | low (an effect runs one time too many) | lanes 23efbd9 | `Min`/`Max` build lane 0 twice, so a type's own `Plus` runs n+1 times for n lanes. |
| F8 | low (refused at width 1) | T4a b2bec35 | `x.Pow(n)` and `arith.Pow` start from `r T = 1`, which does not fit I1. The error is a compile error inside the prelude. |
| F9 | low (text vs program disagree) | T4a b2bec35 + E4a d04ea75 | `"0x1FFFFFFFFFFFFFFFF".ParseAs<U128>(0)` fails with OVERFLOW, though `0x1FFFFFFFFFFFFFFFF` is a valid U128 literal in a program (L10a). |
| F10 | low (spec gap) | lanes 23efbd9 | In place `x op= v`, with v overlapping x, reads lanes already written (`s := a[1:5]; s += a[0:4]` is a running sum). E39 does not say which reading is meant. All modes agree. |
| F11 | low (spec and implementation disagree, sound) | lanes 23efbd9 | E39 says an element type holding references is an error. `z := x + y` is refused, but `x += y` on the same arrays is accepted. It is checked soundly, as the loop it is. |

Counts:
- high 3 (F1, F2, F3);
- medium 3 (F4, F5, F6), F4 and F5 older than the range;
- low 5 (F7-F11).

Also: PLAUSIBLE 2, over-rejections and diagnostics 3.

The two compiler-side fixes the diagnosis points at were checked on scratch copies, not in the worktree. Both are
saved as diffs:
- F1: one condition in `eval.i64`, compiler rebuilt (`work/patched2.eval.diff`).
- F2: the four `nomatch` branches and `widthOf` in a copy of std (`work/patched.arith.diff`).

With both, the differential fuzzer with odd-width primitives (below) found nothing in 60 programs, 1,410 cases, every
global baked.

---

## F1 - the evaluator computes I33..I63 as I64 (miscompile while compiling)

Reproducer: `repro/01_eval_wide_signed_wrap.olang`.

```
fn wraps(k I64) Bool { a := I40.Max; b := a + I40(k); return b < a }      # wraps: true
fn order(k I64) Bool { x := I40(0) - I40(k); y := I40.Min / I40(k + 4); return x < y }   # -1 < Min/5: false
WrapsBaked := wraps(1)
OrderBaked := order(1)
```

Observed, printing `$WrapsBaked $wraps(K) $OrderBaked $order(K)`:
- -O3 and `-debug -sanitize`: `false true true false`;
- `interpret`: `false false true true`.

Expected `true true false false` everywhere. `test "w" { assert wraps(1) }` is refused at compile time with
`error[S18c]: this assertion is false, evaluated while compiling`: a correct program does not build.

Root cause, compiler/eval.olang:
- `fn (m mut Machine&) i64(ty)` is `m.shape(ty) == vInt and m.width(ty) == 8`. Since T4a, `width` is
  `types.IntBytes(bits)`, so it is true for every signed width from 33 to 64.
- `flatten` then sets `Fast[o + 10] = 1` for such an operation. `flat` computes `+ - * & | ^ == != < <= > >=` on the
  raw 64-bit words: no wrap at the width, and no sign extension before a comparison.
- Worse, two encodings meet. `flatten` stores a constant as `bits & m.mask(8)`, which is sign-extended (I40.Max + 1 is
  2^39, never wrapped). Values from `intOp`/`canonBits` are masked to the width, which is zero-extended. So `-1`
  computed one way and `I40.Min / 5` the other compare as 8589934591 against a small positive.

Fix: `i64` must also require `m.ibits(ty) == 64` (`work/patched2.eval.diff`). Both cases agree after it.
`flatten`'s constants should use `canonBits` too.

Reach:
- every compile-time use: K2 bakes, S18c asserts, B9c/S8b conditions, G26/G35 constant decisions, and `interpret`;
- the battery in `work/w1/bat2.olang` (22 widths x 2 signs x 14 operations x 10 values): MISMATCH for exactly I33,
  I48, I53, I54, I63;
- the odd-width fuzzer: seed 10 case 25, seed 16 cases 8/15/17.

Introduced by b2bec35 (before it the only 8-byte signed type was I64). tests/intwidths.olang tests I1, U7, I24, U63,
I65, U128 and I128, and no signed width between 33 and 63.

## F2 - std/arith wrong or undefined at the new widths

Reproducers: `repro/02_arith_odd_widths.olang` (one line of results) and `repro/02b_arith_shift_segfault.olang`.

T4a put all 256 widths into `Integer`. std/arith was not changed in the range. Its `match T` branches name I8..I64 and
leave everything else to `nomatch`, which was written when only U8..U64 reached it:

| function | nomatch branch | at the new widths |
|---|---|---|
| `Neg` | `if a != 0 { error OVERFLOW }; return a` (the unsigned rule) | `arith.Neg(I24(5))` and `arith.Neg(I128(5))` fail with OVERFLOW (want -5) |
| `ShiftLeft`/`ShiftRight` | `widthOf` -> `nomatch => 64` | `ShiftLeft(I128(1), 100)` is INVALID (want 2^100). `ShiftLeft(U7(1), 9)` and `ShiftLeft(I9(x), 10)` run `a << n` past the width: UB |
| `Div` | no `T.Min / -1` test | runs the undefined division. `Div<I24>`'s inferred set has no OVERFLOW, so `catch arith.Error.OVERFLOW` is R14's "the call does not fail with Error.OVERFLOW" |
| `Mul` | `r := a * b; if r / b != a` | `Mul(I24.Min, -1)` divides Min by -1 (UB). -debug returns Min, not OVERFLOW |
| `Rem` | nothing | `Rem(I24.Min, -1)` runs `%` there (E6a undefined). It should be 0, as the eight's branch gives |

Observed for `repro/02`, which expects `-5 -5 1267650600228229401496703205376 77 77 77 0`:
- -O3: `77 77 77 77 77<NUL x18> 77 77<NUL x18>` (poison rendered);
- -debug: `77 77 77 77 -8388608 -8388608 0`;
- `interpret`: stops at arith.olang:120, "it shifts by a count outside the type's width".

`repro/02b` (expected `2`):
- -O3 prints nothing and exits 48;
- -debug prints 2;
- interpret stops.

The fuzzer program it was reduced from segfaults at -O3: `work/fz2`'s generator (I9/I17/I33 for I8/I16/I32, atomics off), seed 16, case 22. Regenerate it with `fuzz show 16`.

Fix (`work/patched.arith.diff`; with it every case and the fuzzer agree):
- `widthOf`: `T.Max.PopCount() + (1 if T.Min < 0 else 0)`;
- each `nomatch` branch: an `if T.Min < 0 { ... }` signed case, which G35 decides per instance.

Introduced by b2bec35 (the code is older; T4a made it reachable).

## F3 - lane `x op= v` through At writes a copy (lost writes)

Reproducer: `repro/05_lane_inplace_through_at.olang`.

```
type P struct() { arr := Array<I64>(3)   xs mut Array<I64>& = Array<I64>(3, 1) }
v := Vec<P>(); v.Push(P())
v[0].arr[2] += 5      # E31b: written back with SetAt - kept
v[0].arr += 5         # lost
v[0].xs += 7          # lost
w := Vec<Array<I64>&>(); w.Push(Array<I64>(3))
w[0] += 2             # accepted, lost
```

Observed in all three modes: `I64[0, 0, 5] I64[1, 1, 1]` and `I64[0, 0, 0]`. Expected `I64[5, 5, 10] I64[8, 8, 8]` and
`I64[2, 2, 2]`, or an error.

`check.laneAssign` takes the target as `fit(read(p), Ref(.., Writable))` into a hidden local. On a place reached
through an `At` call, that is a temporary's value made writable. E31b's write-back (`writeBack`) is not used, and
neither is E31's "this writes into a value a call gave back" refusal. Writes through a reference field of the copy are
lost too, so the hidden local is a fresh array, not a borrow.

The same `+=` on `r := Array<Array<I64>&>(1, a)` is `error[T25c]: a read-only reference cannot become writable`. On
the Vec it is accepted. Assignment (`v[0].arr = v[0].arr + 1`) and a slice of the copy (`v[0].arr[0:2] += 4`, E31's
error) behave correctly.

Introduced by 23efbd9.

## F4 - a slice of an immutable global is writable (older than the range)

Reproducer: `repro/03_slice_immutable_global_write.olang`.

```
G := I64[1, 2, 3]
fn poke(s mut Array<I64>&, k I64) { s[0] = k }
s := G[0:2]; poke(s, K)
```

Observed:
- -O3: `I64[1, 2, 3] I64[1, 2]` (the store dropped);
- `-debug`: segfault (139, a write to .rodata, T25d/K2b);
- `interpret`: `I64[9, 2, 3] I64[9, 2]` (G changed).

Expected: T25c's error. E16a: a slice carries its base's permission, and an immutable global is read-only.

The other forms:
- `poke(G[0:2], 9)` is accepted, and so are `G[:]`, `G[1:]`, `t := G[0:2]; t[0:1]`, `s += 5`, and `H[0:2][0] = 9`
  with `H := Array<I64>(3, 4)`;
- `poke(G, 9)` is S6's error;
- through a read-only parameter (`fn ro(a Array<I64>&) { poke(a[0:1], 9) }`) the slice is correctly read-only.

The same on 68c693e.

## F5 - E8a's literal shift amount check is missing (older than the range)

Reproducer: `repro/04_shift_literal_out_of_range.olang`.

E8a says: "Where the amount is a literal or a literal-only expression the check is made at compile time and an
out-of-range one is a compile-time error". `fn f(x U8) U8 { return x >> 70 }` and `fn g(u U7) U7 { return u << 9 }`
compile:
- the built program prints whatever the poison gives - NUL bytes for `$(x >> 70)` in `work/lit/m.olang`, `0 0` here;
- `interpret` stops at the shift.

`msgs.ShiftOutOfRange` (msgs.olang:1975) is declared and has no caller. The same on 68c693e, for U8/U64/I32. T4a's
narrow widths make it easy to hit (`U7 << 8`).

## F6 - lane results and comprehensions are never freed early

Reproducer: `repro/06_lane_result_never_freed.olang`.

`h.arr = h.arr * 2` in a 100k-turn loop (an `Array<I64>&` field of 1000 elements):
- 1,626,688 KB peak;
- -memory: "keeps what it lets go of until main's scope closes - its new value may hold an instance whose destructor is
  still to run (O16)".

`h.arr = dbl(h.arr)`, the same loop in a function: 1,840 KB, "frees it at once".

`free.mayRegister` ends in `case _ { return true }` for "statements inside (a sequence, a match, a comprehension's
loop)". A lane result is `Seq(..., Collect(...))`, so it always "may register", even with elements of a type that has
no destructor and can hold none.

Older for comprehensions: `I64[x * 2 for x in h.arr]` keeps 4.5 GB on 68c693e and here. But E39 builds every
run-time lane result this way, and is presented as level with the hand loop. The fix is to look inside a Collect whose
element type cannot hold a destructor-bearing instance.

## F7 - Min/Max run lane 0's operation twice

Reproducer: `repro/07_lane_minmax_twice.olang`. `(a + a).Max()` over 4 lanes of a type whose `Plus` counts calls
prints `2 after 5 Plus calls for 4 lanes`.

`laneTotal` builds `first` from lane 0 (diagnostics held), and then the loop starts at `i = 0` and builds lane 0
again. E39 says each lane is the operation as written, in one loop. Starting the loop at 1 fixes it.

## F8 - Pow at I1

Reproducer: `repro/08_pow_one_bit.olang`. `I1(-1).Pow(2)` gives:

```
error[T6]: '1' does not fit I1
std/prelude/number.olang:510:11: note: in the standard library's code, here
```

Number.olang's `Pow` and std/arith's `Pow` both start from `r T = 1`. T4a gives every width `Pow`, and "x.Pow(0) is
1", which at I1 wraps to -1. Found because the differential battery had to guard `Pow` with `if T.Max > 0`.

## F9 - ParseAs base 0 reads only 64 bits of a prefixed literal

Reproducer: `repro/09_parseas_wide_prefixed.olang` prints `7 36893488147419103231`. The text parse fails and the
program literal holds the value.

`ParseAs` sends any `base == 0 and isPrefixed(digits)` through `ParseInt`/`ParseUint`. SPEC (around line 2573) says
"its 64 bits then fitting T", but since d04ea75 L10a has hexadecimal and binary patterns of up to 128 bits, so "read as
a program reads one" no longer holds for a wide T.

## F10 - in-place lanes with an overlapping operand (spec gap)

Reproducer: `repro/10_lane_inplace_overlap.olang`. `s := a[1:5]; s += a[0:4]` on ones gives `I64[1, 2, 3, 4, 5]`: each
lane reads the one written before it. Building first and storing gives `I64[1, 2, 2, 2, 2]`. E39 says "writes x's
elements in place, lane by lane" and "the operands are evaluated once ... before any lane", and does not say which is
meant. numpy reads the old values (it buffers on overlap since 1.13). Consistent across modes, so this is for the spec
to settle.

## F11 - in-place lanes on elements holding references (spec and code disagree)

Reproducer: `repro/11_lane_inplace_refs.olang`. E39: "An element type that is or holds a reference is an error". Both
forms run on `Array<P>` with `P` holding a `String&`:
- `z := x + y` is refused, as E39 says (`laneOut` checks `HoldsRefs`);
- `x += y` is accepted (`laneAssign` has no such check).

The in-place form was checked soundly. A Plus returning `b` (a borrow of a shorter-lived array) is O10c's error, in the
lane form and in the hand loop alike (`work/lanes2/refin2.olang`). So either the spec should exempt `op=`, or
`laneAssign` should refuse.

---

## PLAUSIBLE (traced, not reproduced)

- **P1. 16-byte-aligned elements in an 8-aligned arena allocation (T4a).** IntBytes gives I65..I128 an alignment of
  16, and the datalayout says `i128:128`. The emitted loads and stores carry no `align`, so LLVM assumes 16. But
  `__olang_scope_alloc` aligns an array by its size class: 8 below 32 bytes. So `Array<I128>(1)`, `Array<I65>(1)` and
  an array of one `struct(a I128)` are 8-aligned. An aligned SSE move LLVM chose for such a value would fault. In
  `work/align` no such move was emitted and nothing failed. T4a's types are the first with an alignment above 8.
- **P2. K1a's `unknowns` counter (54acdfc).** It counts every `c.unknown()`, and some are made with no error said
  (speculative checks under `Diags.Hold`, placeholder recoveries). A condition body whose check made one is now
  refused. A top-level condition refused that way with nothing said `continue`s ("waits on the error already said")
  and is never decided. Not reproduced: every no-error `unknown()` found sits next to an error.

## Over-rejections and diagnostics (brief)

- A top-level condition calling a lambda (`if A.Any(fn(x I64) Bool { return x > 3 })`) or holding a `try ... catch
  default` is B9c's "uses what exists only in the branches it decides, or does not check". The same on 68c693e.
- `fn dflt(x Array<I64> = Array<I64>(2))` called as `dflt()` says "the type arguments of dflt cannot be inferred" (G9),
  for a function with none, and not D9a's by-value array error. The same on 68c693e.
- `type W extends I24` has neither `Sqrt` nor `PadStart`: they are Integer defaults, and an extending type is no
  Integer. `extends I32` keeps I32's own `PadStart` and `extends U8` keeps U8's `Sqrt`. Consistent with T29f as
  written, but the widths now differ in what an extending type inherits.

---

## What was attacked and found sound

**E39 lanes:**
- every consumer of a lane expression materializes it - indexing, slicing, `.Len()`, a generic `T`, a reference
  parameter, a constructor argument, a default argument, `==`, `in`, `for`, a lambda capture, match and conditional
  values;
- placeholders never leak;
- meeting (T6b/E6d: `a + 300` on U8 lanes is I64), wrapping, unary negation of unsigned lanes, F16 lanes, `Select`
  with a shared value, Some/Every, NaN in Min/Max;
- user operator methods per lane, including fallible ones (`arith.Checked`, `try ... catch default` mid-loop);
- **the exact collect**:
  - `LaneLen` is checked before the Collect is made;
  - the loop yields exactly its reserve;
  - every early exit (an error to an enclosing `try`, `!`, a failed check, a test's longjmp) leaves only through paths
    where the partial array is unreachable;
  - nothing else sets `Exact`.

  Note that `-sanitize` zero-fills a no-fill `NewArray`, so the sanitizer cannot see an unwritten lane. The argument
  rests on the structure, not on a run;
- a user's `Plus` reassigning, or early-freeing, a lane's source global: the free analysis keeps the place;
- the in-place target replaced by its own operand's call: S4 order, consistent in all modes;
- lanes over odd and wide widths, read back after a churn.

**T4a and E4a literals:**
- a 2-by-22-width differential battery (`work/w1`, `work/w2`): wrapping, division, shifts, conversions to and from
  F64/F32/BF16/F16 (one rounding, `wideToBF16`), Format in bases 16 and 7, Hash, ParseAs round trips, `Narrow`,
  PopCount/LZ/TZ, Rotate, PadStart, Min/Max and Sqrt agree between -O3, -debug, baked and interpreted, apart from F1
  and F2;
- structs and arrays with U3/I65/U12/I1/U128/I24 fields: layout, `$`, `==`, Hash, Map keys, Vec growth, baked globals;
- `match` on wide literal cases (U128, I128 negative, U65);
- literals past 64 bits:
  - fold, `intFits`, the `(hi << 64) | lo` lowering;
  - L10a's 64-bit pattern readings in `<<` and `| & ^`;
  - range errors;
- the C boundary refuses odd widths, and structs holding them, for extern and export;
- G35's `T.Min`/`T.Max` decisions per instance, the wide ones left to run time;
- T35c's list: all 256 widths, once each;
- K1a's global reads;
- O14's new return error;
- SPEC §5 citations, 30 spot-checked: all point at the right subsection.

**D18 findIdle:**
- every path that turns a ScopeRef into a header (`fe.scope`: New, NewArray, Text, Closure and its caps,
  Region/RegionOr, Write, RegisterDtor/RegisterOwner, a Call's and a Task's Scopes and Copies, Spawn/Wait, Give, a
  local's Home, Frame through `frame`) is a use findIdle counts;
- a Suspend's held range is a range of its own (`lower.suspend` appends it), so excluding it hides no other use;
- the drop and the test unwind chain skip only idle scopes;
- dynamic tests (`work/d18/idle.olang`) under `-debug -sanitize` and in dead-region interpret, with the results agreeing:
  - loop bodies building through a callee's result scope;
  - a closure over a loop-local array;
  - a destructor in a loop, `defer` in a loop, a catch clause with a default;
  - tasks given loop locals;
  - a generator walked part way 100 times;
- scope fuzzer: 240 programs, 1,487 scenarios run, 0 findings. Free fuzzer: 240 programs, 1,838 scenarios run, 0
  findings.

**prel:**
- `vacate` now skips the any-dispatch and the null check only for a call named `vacate` with no arguments in a prelude
  module, which reaches `suppliedCall`'s Take. So no other call through an element changed;
- `Vec<any Named&>` and `Vec<Node?&>` grow, Pop, RemoveAt, SwapRemove and Truncate with borrowed and new elements, read
  back after a churn in all modes: an `any`'s elements never free early, and the nullable Vec keeps existing storage;
- `$` on `Vec<Char>` with quote, newline, backslash, NUL and byte 200, on `Vec<Letter>`, `Vec<Vec<Char>>`, `Vec<String&>`
  holding `[`, `Vec<U8>`, `Vec<Name&>`;
- a Vec walked by `for` while pushed to sees the pushes, in all modes;
- `olang fix` keeps a List program on `list.List`, same output;
- std/json's List and Vec cases;
- semantics: List and Vec are both handles, and nothing migrated depended on List's stable addresses, since no
  reference into an element can be held across a push. The one behavioural change is that Vec's removals vacate, so
  early freeing reaches more code; the free fuzzer covers it.

## Work files

- `work/` holds the batteries (`w1`, `w2`, `w3`), the lane, Vec, D18 and literal probes, and the fuzz copies with
  odd-width primitives. `fz2` uses I9/I17/I33 in place of I8/I16/I32, with atomics off; `fz4` is the same, run against
  the patched compiler.
- The scratch compilers are kept only as the two diffs above.
- The 68c693e build, every `build/` directory and the large binaries were deleted at the end.

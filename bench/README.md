# bench - olang against C

Does olang deliver "C-like performance" (PRINCIPLES.md, principle 2)? Ten classic programs, each written twice - as
a good olang programmer would write it (`*.olang`) and as plain idiomatic C (`c/*.c`) - with the same algorithm, the
same sizes and byte-identical output, timed against each other.

```
bench/run.sh                 # build both, check the outputs agree, time (median of 7, interleaved)
bench/run.sh -n              # also -march=native for both
bench/run.sh -q              # build and check only
bench/run.sh -r 9 nbody text # 9 repetitions, only some rows
BENCH_LOCK=/home/user/verify.lock bench/run.sh   # hold a lock while checking and timing, on a shared machine
bench/ir.sh spectral         # whole-program optimized IR and disassembly of both versions, in build/lto/
bench/repro/opt.sh NAME      # the same for one reproducer in repro/
```

Nothing here is part of `make verify` or `make test` - the makefile names the directories it tests, and `bench/` is
not one of them.

**Fairness.** The C versions are compiled with exactly the flags olang compiles and links its own output with
(`clang -O3 -flto`, `addModeFlags` in `main.c`): the same compiler, optimizer and link-time optimization, for the
default x86-64 target. The `-n` columns build olang's own emitted IR and the C source with `-march=native`; C there
also gets `-ffp-contract=off`, because clang's default would fuse `a*b+c` into an FMA wherever the target has one and
change the results - olang never contracts, and has no way to ask for an FMA either. Both versions print floats as
olang's `$` does (the fewest digits that read back as the same value; `c/common.h` copies util.c's `FloatShortest`),
so one differing bit in any result fails the check.

| program | what it exercises |
|---|---|
| `nbody` | F64 arithmetic on an array of structs, written in place |
| `spectral` | nested loops over F64 arrays, a small function called in the inner loop |
| `mandelbrot` | an F64 escape loop, bits packed into bytes, a 1 MB binary write |
| `fannkuch` | small I32 arrays: indexing, swapping, rotating (run 4 times) |
| `binarytrees` | allocation: millions of small nodes built, walked, dropped - scopes against malloc/free, and against a hand-written C arena (`c/binarytrees_arena.c`) |
| `knucleotide` | a `Map` keyed by text slices, counting k-mers of a generated DNA sequence |
| `matmul` | F32 matrix multiply over flat arrays and row slices (vectorization) |
| `sum` | a `List` built by `Push`, then summed with `for x in`, and with `Iter().Fold(...)` and a lambda, over the List and over an Array; C pushes onto a realloc'd array and loops |
| `parallel` | longest Collatz chain, four tasks: `join`/`spawn` against pthreads |
| `text` | `$n` renderings into a `StringBuilder`, `Split`, `ParseInt` against snprintf and strtoll |

## Results

Medians of interleaved runs, in seconds: run 1 (7 repetitions, with the `-march=native` columns, load average 2-4)
and the ratio from run 2 (9 repetitions, load average 3-5) as a check on the noise. Ratios above 1 mean olang is
slower. Sizes: nbody 10M steps, spectral-norm 3000, mandelbrot 3000, fannkuch-redux 10 (x4), binary-trees 18,
k-nucleotide 2M bases, matmul 1536, List push 20M, the sums 100,000 elements x 8,000 passes (in cache), parallel 10M,
text 5M numbers.

| benchmark | olang (s) | C (s) | olang/C | olang/C, run 2 | olang -march=native | C -march=native | ratio |
|---|---:|---:|---:|---:|---:|---:|---:|
| nbody | 0.885 | 0.954 | **0.93** | 1.00 | 0.881 | 0.661 | 1.33 |
| spectral-norm | 0.677 | 0.493 | **1.37** | 1.44 | 0.631 | 0.670 | 0.94 |
| mandelbrot | 0.913 | 0.928 | **0.98** | 0.99 | 0.897 | 0.898 | 1.00 |
| fannkuch-redux | 0.931 | 1.022 | **0.91** | 1.02 | 1.092 | 1.072 | 1.02 |
| binary-trees | 0.495 | 2.533 | **0.20** | 0.20 | 0.457 | 2.631 | 0.17 |
| binary-trees, C arena | 0.491 | 0.386 | **1.27** | 1.32 | 0.479 | 0.381 | 1.26 |
| k-nucleotide | 1.030 | 0.691 | **1.49** | 1.36 | 1.060 | 0.713 | 1.49 |
| matmul F32 | 1.027 | 1.189 | **0.86** | 0.94 | 0.815 | 0.829 | 0.98 |
| List push | 0.514 | 0.161 | **3.19** | 3.26 | 0.504 | 0.152 | 3.32 |
| sum: for x in List | 0.869 | 0.180 | **4.82** | 4.70 | 0.559 | 0.115 | 4.88 |
| sum: List.Iter().Fold | 2.234 | 0.184 | **12.12** | 13.43 | 2.449 | 0.112 | 21.95 |
| sum: for x in Array | 0.199 | 0.192 | **1.04** | 0.94 | 0.126 | 0.129 | 0.97 |
| sum: Array.Iter().Fold | 1.740 | 0.174 | **9.98** | 9.69 | 1.585 | 0.122 | 13.01 |
| parallel, 4 tasks | 0.724 | 0.798 | **0.91** | 1.08 | 0.712 | 0.781 | 0.91 |
| text | 1.186 | 0.482 | **2.46** | 2.33 | 1.099 | 0.522 | 2.11 |

### After the code generator fixes (2026-10-09)

Items 1, 2, 7 and 8 below were fixed in the compiler (CLAUDE.md, "Code generator gaps from the benchmarks, closed").
Before and after, each the previous compiler's binary against the new one's, interleaved medians in seconds (A/B runs
of 5-11 repetitions under the lock, load 1-6):

| benchmark | before | after | C | after/C |
|---|---:|---:|---:|---:|
| sum: Array.Iter().Fold (capturing lambda) | 1.627 | 0.228 | 0.217 | 1.05 |
| `a.Iter().Count(f)`, f capturing (hand loop 0.543) | 1.566 | 0.556 | - | 1.02 of the hand loop |
| sum: List.Iter().Fold | 2.125 | 0.929 | 0.195 | 4.76 |
| List push | 0.510 | 0.165 | 0.167 | 0.98 |
| binary-trees, C arena | 0.514 | 0.422 | 0.391 | 1.08 |
| matmul F32 | 1.247 | 1.223 | 1.313 | 0.93 |

And the whole suite after them, `bench/run.sh -r 7` (load 2-4):

| benchmark | olang (s) | C (s) | olang/C |
|---|---:|---:|---:|
| nbody | 0.936 | 0.996 | 0.94 |
| spectral-norm | 0.687 | 0.561 | 1.22 |
| mandelbrot | 0.913 | 0.921 | 0.99 |
| fannkuch-redux | 1.043 | 0.996 | 1.05 |
| binary-trees | 0.442 | 2.574 | **0.17** |
| binary-trees, C arena | 0.448 | 0.395 | **1.13** |
| k-nucleotide | 1.127 | 0.766 | 1.47 |
| matmul F32 | 1.135 | 1.437 | 0.79 |
| List push | 0.166 | 0.172 | **0.96** |
| sum: for x in List | 0.915 | 0.179 | 5.11 |
| sum: List.Iter().Fold | 1.150 | 0.183 | **6.27** |
| sum: for x in Array | 0.243 | 0.181 | 1.34 |
| sum: Array.Iter().Fold | 0.195 | 0.183 | **1.07** |
| parallel, 4 tasks | 0.778 | 0.805 | 0.97 |
| text | 1.137 | 0.544 | 2.09 |

`for x in Array` moved within the run's noise (it measured 0.245s before and after the fixes in the A/B runs); what is
left of the `List` rows is `ListIter` (item 3), of k-nucleotide `Map`'s API (item 6), of text the renderer (item 4) -
std's - and of spectral-norm the wrapping arithmetic (item 5).

In short: **the code generator is at C's level wherever the program is loops over arrays and numbers** - nbody,
mandelbrot, fannkuch, matmul, array loops and the parallel fan-out are level with C (within about 10% either way,
which is this machine's noise), and allocation-heavy code is 5x faster than C with malloc/free. **The gaps are in the
abstractions above that**: capturing lambdas, the `List` iterator and `Push`, `Map`'s API, text rendering - and one
language-level trade-off, wrapping arithmetic (spectral-norm). Every gap but that one has a fix inside the compiler or
std that keeps the language as it is.

### After std's fixes (2026-10-09)

Items 3, 4 and 6 below were std's, and are fixed there (CLAUDE.md, "std closes the benchmarks' library gaps"): `for x
in` a `List` walks it run by run and `ListIter`'s helpers do the same (S9f), `$n` renders an integer without
`snprintf`, `Find` compares in place, and `Map.Update` counts in one lookup. Two runs of `bench/run.sh` on these rows
(7 and 9 repetitions, interleaved, on a machine at load 7-9 - so each ratio is given as the range of the two, with the
minimums, which the load disturbs least, beside it):

| benchmark | olang/C, run 1 | olang/C, run 2 | minimums, olang / C (s) | before (olang/C, above) |
|---|---:|---:|---:|---:|
| sum: for x in List | 1.07 | 0.89 | 0.177 / 0.162 | 5.11 |
| sum: List.Iter().Fold | 0.85 | 0.93 | 0.169 / 0.162 | 6.27 |
| sum: for x in Array | 1.20 | 1.22 | 0.172 / 0.178 | 1.34 |
| sum: Array.Iter().Fold | 1.04 | 1.14 | 0.173 / 0.165 | 1.07 |
| List push | 1.20 | 1.10 | 0.168 / 0.142 | 0.96 |
| k-nucleotide | 0.80 | 1.04 | 0.561 / 0.680 | 1.47 |
| text | 0.76 | 0.84 | 0.357 / 0.453 | 2.09 |

`List push`'s code did not change, so its rows are a measure of the noise. An A/B of the `List` rows against master's
compiler at the same load (blocks of 7, medians): `for x in List` 1.23s -> 0.22s, `List.Iter().Fold` 1.31s -> 0.21s.
The `List` rows are now where the `Array` rows are, and k-nucleotide and text are level with C or faster (text gains
from rendering into a `StringBuilder` with no `snprintf` at all, where C's `snprintf` parses its format every time).
Of the gaps this page found, what is left is wrapping arithmetic (item 5).

## Why olang is slower where it is

Each finding was read off the whole-program optimized IR (`bench/ir.sh`), confirmed by an experiment - the IR
edited by hand, or the C side changed to do what olang does - and re-timed (single runs under the same lock, so
±10%), and has a minimal program in `repro/` whose header says what to look for. Ordered by size.

1. **FIXED (T21/D16c): a capturing lambda was never inlined - `Iter().Fold(...)` 10-13x.** A function value was a
   pointer to a closure object (code pointer, then captures) in the arena, so `Fold`'s inlined loop loaded the code
   pointer before every indirect call, and since an unknown call may write any memory, LLVM could not forward the
   pointer stored when the closure was built: the call was never devirtualized or inlined, the captured value was
   reloaded every iteration, and nothing vectorized. **Now a function value is the pair `{code, environment}`**, so the
   code is an SSA value - a direct call once `Fold` is inlined, and inlined in turn - and the captures are read from the
   environment under a TBAA node of their own. `a.Iter().Fold` with a capturing lambda 1.63s -> 0.23s (C 0.22s, the
   hand loop 0.25s); `Count` with a capturing predicate 1.57s -> 0.56s against its hand loop's 0.54s.
   (`!invariant.group` on the old closure, clang's vtable treatment, was the alternative; its soundness needs launders
   at every construction and strips at every comparison, and it measured 0.33s.) `repro/closure_call.olang`.
2. **FIXED (T7/E12c, D13c): a fresh `Array<T>(n)` assigned into a reference field or element was allocated twice and
   copied - List `Push` 3.2-3.3x.** `l.chunks[k] = Array<T>(size)` built and zero-filled the array where it lands, then
   copied it into a second allocation. **Now such a store adopts the array** (`cgAdoptsFresh`, for every store site),
   and **a zero-filled array from a freshly mapped chunk is not cleared again**: a chunk of 128KB or more comes from
   `mmap`, whose pages are zero, and is flagged fresh until it is recycled, so `Array<T>(n)` skips the memset there -
   D13c's "nothing uninitialized" unchanged. 20M pushes 0.51s -> 0.165s (C 0.167s). `repro/fresh_into_field.olang`.
3. **FIXED (S9f, M19e): `for x in List` did not vectorize - 4.7-4.8x.** `ListIter.Next` hands out one element at a time with the chunk
   change folded into every step, so the loop has a data-dependent branch in its body and stays scalar; `ToArray()`
   then the same loop runs at C's speed. **Fix:** walk a List chunk-wise - an outer loop over chunks, an inner
   counted loop over each - e.g. a protocol for "contiguous pieces" that `for ... in` lowers to nested loops, or
   `ListIter` overriding the iterator defaults (`Fold`, `Count`, ...) with chunk loops. **Both were built**: a type
   with `RunFrom(at)` (a `List` has it) is walked run by run by `for ... in` (S9f), and `ListIter`'s `Any`, `All`,
   `Count`, `Fold`, `Map` and `Filter` walk the same way - `for x in List` 0.92s -> 0.24s, `List.Iter().Fold` 1.15s ->
   0.18s (table above). `repro/list_sum.olang`.
4. **FIXED (E11a, T29c): text - `$n` formatted every integer twice, 2.3-2.5x.** A rendering calls its `olang.rd.<T>` helper once with a null
   buffer to measure and once to write, so each `$n` is two `snprintf` calls (about 80ns each here) where C makes one;
   5M renderings take 0.79s against 0.42s for one `snprintf` each (0.81s for two). And `Split` scans the text twice
   (count, then fill), and `Find` builds a bounds-checked slice and calls `Eq` at every position - 0.48s for split
   and parse against 0.05s for C's strtoll walk. **Fix:** render integers with a digit count and an itoa instead of
   snprintf (measuring becomes a few compares); `Find` with a one-byte needle as `FindByte`, comparing in place
   instead of slicing per position. **Done** (E11a, T29c): the runtime counts digits from `ctlz` and writes them two
   at a time (5M renderings 0.79s -> 0.09s), `Find` compares in place, and `Split` by one byte counts in one
   vectorizable pass. `repro/render_int.olang`.
5. **Wrapping arithmetic costs the optimizer the facts `nsw` gives C - spectral-norm 1.37-1.44x.** E6c defines integer
   overflow to wrap, so `(i + j) * (i + j + 1) / 2` is emitted with plain `add`/`mul`; LLVM cannot prove the product
   non-negative and keeps the signed division by two as three instructions (shift, add, shift) where C's
   `mul nsw` lets it use one, and C's loop is unrolled twice besides. **Proof:** the same IR with `nsw` added by hand
   to those four operations runs 0.54s against 0.83s (C 0.52s); writing `>> 1` in the source gives 0.57s. This is a
   language trade-off rather than a bug - Rust and Go wrap and pay the same; C and Zig's release mode make overflow
   undefined to get it - and the only general fix is a direction decision (overflow undefined outside `try`, or
   poison-producing arithmetic). The same missing fact keeps the per-position bounds check in `Find`'s loop
   (`a[i:i + sub.Len()]`) from being hoisted. `repro/wrapping_div.olang`.
6. **FIXED (M19d): a `Map` counted with two lookups - k-nucleotide 1.36-1.49x.** `Map` has no find-or-insert, so counting is
   `m.Put(k, (try m.Get(k) catch default 0) + 1)`: two hashes and two chain walks per key. The same C rewritten to
   look up then insert goes from 0.83s to 1.03s (olang 1.13s in that run), so most of the gap is the API. **Fix:** an
   update in one lookup - `m.Update(k, init, fn(v) { return v + 1 })`, or a method handing out the slot (a reference
   to a struct with a mutable `Value`, which olang can express), or a place protocol so `m[k] += 1` is one lookup.
   The rest is `String.Eq`'s byte loop against `memcmp`, a slice bounds check per key, and finding 2 in `Map.grow`.
   **Done** (M19d): `m.Update(k, init, f)`, and `Map` is in the prelude; k-nucleotide uses it. `repro/map_count.olang`.
7. **FIXED (E12c/O16, O8a): binary-trees was 1.27-1.32x a C arena.** Two causes, both addressed. (a) **Allocation
   order:** a constructor's arguments were evaluated before its instance was allocated, so `Node(tree(d - 1),
   tree(d - 1))` laid a tree out in post-order against `check`'s pre-order walk. **A promoted instance's slot is now
   bumped before its arguments are built** (`cgPromote`); its destructor is still registered when its constructor
   completes, so destructor order is unchanged. The walk gets faster and the build ~8 instructions per node slower (the
   slot's pointer is live across the recursion); on binary-trees the order wins by 6% over (b) alone. (b) **The
   arena's fast path** jumped after the room check into the block shared with the slow path, which reloaded and
   rounded the cursor again; **it is now self-contained**, rounding once (not at all for an 8-aligned allocation). 0.51s
   -> 0.42s against the C arena's 0.39s; instructions at depth 16 780M -> 690M (C arena 591M).
   `repro/alloc_order.olang`.
8. **FIXED (T7b): returning a local array copied it** - `matmul`'s `matrix()` paid one extra allocation and copy per
   matrix. A local that is the function's result and nothing else (declared once in the body from storage it makes,
   every return returning it, otherwise only indexed or measured, numeric elements, no `defer`/`join`, an infallible
   function) is now built in the result scope; anything else keeps the copy. Within noise on matmul, as expected.
   `repro/return_local_array.olang`.
9. **nbody under `-march=native`: C 1.33x faster.** C's body count is a compile-time constant, so its pair loops are
   fully unrolled and SLP-vectorized (`vsqrtpd`); olang's count is the array's run-time length, so LLVM loop-vectorizes
   the inner loop instead. An optimizer heuristic, not diagnosed further; at the default target the two are level.

## Where olang is as fast or faster

- **binary-trees against malloc/free: 5x faster, and in less memory** (peak RSS at depth 18: olang 18.8 MB, C with
  malloc 34.7 MB, the C arena 26.5 MB). A tree is dropped by its block closing - its chunks go back to a pool in one
  step - where C frees node by node. This is principle 1 paying for itself.
- **matmul F32, 6-14% faster at the default target** (both runs): both vectorize the same 4-wide loop, but olang's
  arena aligns a large array to 64 bytes (O8a) while glibc gives a large (mmap'd) block 16-byte alignment; C with
  `aligned_alloc(64)` closes the gap (in a noisy measurement). Level under `-march=native`.
- **nbody, mandelbrot, fannkuch, parallel, `for x in Array`: level with C** (0.91-1.08 across the two runs). In
  nbody LLVM fully unrolls olang's pair loop into straight scalar code while it SLP-vectorizes C's into 2-wide code
  with shuffles, which costs C a little at the default target and wins under `-march=native` (item 9). The array
  loop vectorizes exactly as C's (T36's TBAA tags); spawn/join costs nothing measurable against raw pthreads for a
  4-task fan-out, and the results a task hands back (`spawn best[t], lens[t] = longest(...)`) need no struct.

## Writing idiomatic olang: friction met

1. A multi-line array literal cannot close with `]` on its own line - the line break ends the statement first.
2. There is no bare block, so a scope cannot be ended early to drop memory: `if true { }` is rejected (S8a) and a
   helper function is the only way (`binarytrees.built`).
3. `x := a - b` is rejected (arithmetic does not name its type, D15), so numeric code writes `dx F64 = ...` on every
   temporary (ten times in nbody's two functions).
4. `x I64 = 1 << s` shifts an `I32` - the left literal does not take the target's type - so it is undefined for
   `s >= 32` and silently gives 256 for `s = 40` here, while `x I64 = 1 << 40` works (E4a). binary-trees writes
   `I64(1) << ...`; C programmers know to write `1L`, olang's adapting literals teach the opposite.
5. Packing bits into a `U8` needs `U8(128) >> U8(x % 8)`: a compound assignment's result must fit the target, and the
   literal meets the `I64` index.
6. (Fixed: `Map` is in the prelude, with `Update`.) `Map` had no update-in-place (item 6 above), and it lived in
   `std/map` (`import`, `map.Map<...>`) while `List` was in the prelude.
7. A function whose `for { }` returns from inside still needs `unreachable` after the loop (D10a counts no loop).
8. (Fixed: `std/time`'s `Now`/`Since`/`Wall`.) std had no clock, so a benchmark could not time itself and this runner is
   a shell script.
9. (Fixed: `x.Fixed(n)`, rounded as `%.*f`.) There was no fixed-precision float formatting (`%.9f`): `$` gives the
   shortest round-trip text only, so the Benchmarks Game's output formats could not be produced and the C side had to
   imitate olang's.
10. (Fixed: `Find`, `FindByte` and `FindIndex` fail with the default error on a miss.) `String.Find` answered "not
   found" with `-1` - a sentinel value, against "errors are errors".

## std/linalg against C and OpenBLAS (`bench/gemm.sh`)

`bench/gemm.sh` times `std/linalg`'s products against the same algorithm written in C (`c/gemm.c`: the blocking,
tiles, packing and write-back of `Gemm`, so the difference is the language's), a naive C loop and OpenBLAS 0.3
(`-lopenblas`, AVX-512 with FMA, its own threads), plus a training step of a 784-128-10 perceptron at batch 64
(`mlp.olang` against `c/mlp.c`, the same data and the same losses). Each time is the best of several runs inside
the program; "native" is olang's own IR linked again with `-march=native`. Load average 1.8-4.5 (run 2; run 1, at
6-7, agreed single-threaded within ~10% and showed no thread scaling at all).

Square C = A B, GFLOPS:

| type | n | olang 1T | olang 4T | olang native 1T | C naive | C blocked | OpenBLAS 1T | OpenBLAS 4T |
|---|---:|---:|---:|---:|---:|---:|---:|---:|
| f32 | 64 | 11.72 | 11.72 | 23.58 | 13.02 | 11.97 | 109.14 | 82.79 |
| f32 | 128 | 7.73 | 15.16 | 11.23 | 7.78 | 13.83 | 94.32 | 120.10 |
| f32 | 256 | 15.70 | 25.09 | 19.16 | 14.54 | 14.10 | 107.55 | 281.83 |
| f32 | 512 | 16.59 | 31.79 | 19.58 | 12.17 | 14.54 | 67.92 | 235.89 |
| f32 | 1024 | 13.99 | 53.06 | 18.71 | 10.30 | 13.99 | 105.55 | 215.36 |
| f32 | 2048 | 15.41 | 39.95 | 17.70 | 3.76 | 14.29 | 99.26 | 196.48 |
| f64 | 64 | 5.56 | 5.56 | 12.34 | 6.73 | 7.00 | 65.60 | 62.92 |
| f64 | 128 | 7.42 | 7.85 | 5.97 | 4.79 | 6.74 | 46.16 | 65.47 |
| f64 | 256 | 7.64 | 13.65 | 11.70 | 6.73 | 6.95 | 52.00 | 146.94 |
| f64 | 512 | 7.89 | 16.95 | 11.48 | 5.01 | 5.54 | 31.20 | 127.38 |
| f64 | 1024 | 7.58 | 27.94 | 10.51 | 4.55 | 6.67 | 46.76 | 132.54 |
| f64 | 2048 | 7.49 | 17.13 | 10.59 | 1.65 | 6.80 | 54.33 | 157.48 |

Matrix-vector products at batch 1 through `Gemv`, W n x m - `mv` is y = W x (rows of W dotted with x: a dense layer),
`mvt` is y = W^T u (rows of W added in, scaled: the same layer's input gradient) - ns a product:

| type | form | n x m | olang | olang native | C loop | OpenBLAS |
|---|---|---:|---:|---:|---:|---:|
| f32 | mv | 64 x 64 | 1020.2 | 1168.9 | 3050.9 | 373.9 |
| f32 | mv | 256 x 128 | 7161.5 | 7960.7 | 30820.0 | 2467.7 |
| f32 | mv | 1024 x 1024 | 237266.9 | 245247.4 | 1308877.8 | 105329.6 |
| f32 | mvt | 64 x 64 | 547.1 | 378.7 | 566.6 | 266.4 |
| f32 | mvt | 256 x 128 | 4776.6 | 3031.0 | 5335.6 | 2202.7 |
| f32 | mvt | 1024 x 1024 | 177583.3 | 122218.4 | 210464.3 | 110223.9 |
| f64 | mv | 64 x 64 | 1140.6 | 1131.4 | 3025.8 | 532.4 |
| f64 | mv | 256 x 128 | 8526.0 | 8607.3 | 31164.5 | 4138.6 |
| f64 | mv | 1024 x 1024 | 382639.1 | 398845.1 | 1441366.6 | 285589.5 |
| f64 | mvt | 64 x 64 | 1130.9 | 786.9 | 1193.3 | 487.4 |
| f64 | mvt | 256 x 128 | 9523.3 | 5928.1 | 11020.9 | 4017.3 |
| f64 | mvt | 1024 x 1024 | 438094.7 | 350830.6 | 517999.2 | 281905.9 |

Training step, 784-128-10, batch 64, F32, us a step (forward, softmax cross-entropy, backward, SGD):

| olang 1T | olang 4T | olang native 1T | C naive | OpenBLAS 1T | OpenBLAS 4T |
|---:|---:|---:|---:|---:|---:|
| 2374 | 3681 | 2231 | 13356 | 757 | 5640 |

(run 1, under load: olang 2333, C naive 9645, OpenBLAS 1T 374.)

**What the numbers say.**
1. **The language costs nothing here**: single-threaded, olang's `Gemm` is level with or ahead of the same algorithm in
   C (F32 14-17 GFLOPS against 14-15, F64 7.5-8 against 5.5-7), 1.1-4x the naive loop (the naive loop falls off once
   B leaves the cache, 3.8 GFLOPS at 2048), and 70-75% of the default target's peak (SSE2: 4 F32 lanes x (mul + add) x
   2.8 GHz = 22.4 GFLOPS) - the micro-kernel's 48 accumulators stay in registers and its loads are the packed panels'.
2. **The gap to OpenBLAS (5-7x single-threaded) is the instruction set, not the code**: olang builds for baseline
   x86-64 - SSE2, 4 F32 lanes, no FMA - and never contracts `a*b + c` into an FMA (`math.Fma` is a correctly rounded
   call, and at the baseline target a library call); OpenBLAS runs AVX-512 FMA, 16 lanes and two operations per
   instruction. The native relink buys little (F32 18-19) because the tile, 4 x 12, is sized for 4-wide vectors and
   still has no FMA; a native build would want its own tile sizes (8-wide or 16-wide vectors, 6 x 16 or 12 x 32) and
   contraction, which is a compiler direction rather than a library one.
3. **Threads scale when cores are free**: F32 1024 goes 14 -> 53 GFLOPS on four tasks (3.8x), F64 1024 7.6 -> 27.9.
   Under the first run's load average of 6-7 the same products did not scale at all (a pure-compute four-task probe
   took 1.6x one task's time). The perceptron's products (64 x 784 x 128) are just past the threading threshold and
   lose with four tasks on this shared machine - as OpenBLAS's do.
4. **Batch-1 matrix-vector products**: olang's dot form (rows of W against x, eight partial sums in lanes) is 3-5x the
   plain C loop, which clang keeps scalar since it may not reorder the sum; the axpy form (`mvt`) vectorizes in both
   and is level with C. OpenBLAS is 1.5-3x ahead, again by its instruction set.
5. **The training step**: olang 2.4 ms against OpenBLAS's 0.4-0.8 ms and the naive C step's 9.6-13 ms; about 26M of its
   flops are in the two large products, which at olang's 15 GFLOPS account for ~1.7 ms - so the step follows the
   GEMM, and the gap to OpenBLAS is point 2's.
6. **Element-wise math**: `std/math`'s Exp and Tanh call the C library per element, so a Map over them does not
   vectorize. `linalg.FastExp`/`FastTanh`/`FastSigmoid` are olang arithmetic and bit operations that do: counted
   with callgrind on a Map over 4096 elements, F32 FastExp 14 instructions an element (C library expf 39), FastTanh
   17 (tanhf 129), FastSigmoid 16; F64 34, 40 and 37 (exp 67, tanh 129). The same FastExp written in C runs at the
   same speed as olang's. glibc's vector math library (libmvec) would vectorize `expf` too (`_ZGVbN4v_expf`, about 15
   instructions an element; `_ZGVdN8v_expf` with AVX2), but only for calls that may not set errno - which X8
   deliberately does not declare, so that the program calls exactly the function the compile-time evaluator called -
   and libmvec's results are within 4 ulp, not the scalar function's, so it would break X8's agreement between the
   evaluator and the run time; clang 18 maps no `tanhf` at all.

## Machine

Intel Xeon @ 2.80GHz (Cascade Lake class, family 6 model 85, AVX-512), 4 vCPUs in a Firecracker VM, 33 MB L3;
Linux 6.18; Ubuntu clang 18.1.3; glibc 2.39; olang at master 3a821a1. The machine was shared with other agents'
builds and tests (load average 2-5 during the runs); the checks and timings ran under `/home/user/verify.lock`, which
keeps full test suites off it but not smaller jobs, so differences under ~10% are within the noise.

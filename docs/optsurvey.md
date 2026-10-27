# Missed optimizations: a measured survey (2026-10-27)

What the compiler leaves on the table, found by measuring, not by reading: the benchmarks in `bench/` against their C
counterparts, small probes written for each area (the natural olang form beside a hand-written lower form, and C where
it helps), the optimized IR and assembly behind every gap, and a profile of the compiler on its own source. Every
finding below is measured; a fix proposed for one is a proposal, and where a prototype was built (outside the
repository, see "Method") its effect is measured too. None of them changes what a program means unless its section
says so (two do, marginally - "Needs a decision").

## Ranked

Ranked by gain times how common the shape is, over cost. "Ir" is instructions retired (callgrind); "turn" is one pass
of a loop body.

| # | finding | shape | measured | where | cost | meaning |
|---|---|---|---|---|---|---|
| 1 | [The allocator's fast path is a call](#1-the-allocators-fast-path-is-a-call) | every allocation | binary-trees 185M -> 131M Ir, 0.43 -> 0.35 s (C arena 0.35); the compiler's front end -7.1% Ir; StringBuilder pushes -29% | runtime | an afternoon | none |
| 2 | [Temporaries on the stack, and a loop body's scope reused](#2-temporaries-on-the-stack-and-a-loop-bodys-scope-reused) | `f(P(x))` for a `P&` parameter, `p P& = P(..)`, `mk(i).M()`, adapters built inline | ~70 Ir a turn against 3 for the same argument as a value local lent to it | scope, lower, emit, runtime | days (a §8 argument) | none |
| 3 | [Vec/List Push cannot be inlined](#3-veclist-push-cannot-be-inlined) | `v.Push(x)` | Push 24 Ir an element (C's realloc loop ~10); out-of-line growth 74.5M -> 60.5M Ir; building 100k elements 5.4M Ir against C's 1.1M | prelude, emit | an hour | none |
| 4 | [Generator walks in large functions lose their elision](#4-generator-walks-in-large-functions-lose-their-elision) | `for x in gen(n)` in a big function | 28.6M -> 2.4M Ir with `alwaysinline` on the `.walk` ramp | emit | one line | none |
| 5 | [A call's result is copied into a reference parameter](#5-a-calls-result-is-copied-into-a-reference-parameter) | `use(make(x))`, `ln(mk(i))` with arrays or text | 233 -> 172 Ir a call (text); 3.5x for a 10,000-element array | lower / scope | a day | none |
| 6 | [Constant calls in bodies are run at run time](#6-constant-calls-in-bodies-are-run-at-run-time) | `primes(200)`, `"..".Find("x")` inside a function | 255,000 Ir a turn against 52 for the same call baked as a global | check, interp | days | none |
| 7 | [Growth copies, and nothing grows in place](#7-growth-copies-and-nothing-grows-in-place) | a Vec growing large; `T[x for x in a if p]` | Vec push 50M: 1.3 GB and 326k page faults against C's 783 MB and 195k (1.2-5 s against 0.5 s); 45% of a filtered comprehension is memcpy | runtime, prelude, lower | days | Vec: see section |
| 8 | [Lazy adapters keep reductions scalar](#8-lazy-adapters-keep-reductions-scalar) | `a.Iter().Take(k).Sum()`, `Skip`, `StepBy` ... | 9.5 Ir an element against 0.2 (`a.Iter().Sum()`) and 1.4 (the counted loop) | prelude | a day | none |
| 9 | [Text locals from a literal are copied every turn](#9-text-locals-from-a-literal-are-copied-every-turn) | `t := "abc"` in a loop | ~70 Ir a turn against ~2 for `I64[1, 2, 3, 4]` | lower | hours | none |
| 10 | [Enum layout: an I32 tag and whole-word payloads](#10-enum-layout) | arrays of small enums | `Opt { None, Some(F32) }` 16 bytes (C 8): 314 MB / 0.86-1.19 s against 158 MB / 0.47 s | types, emit, eval | days | `T.Size` reads differently |
| 11 | [Filter/Map chains build every array](#11-filtermap-chains-build-every-array) | `for y in a.Filter(f).Map(g)` | 2x the hand loop (22.6M against 11.4M Ir) | check (fusion) | days | none |
| 12 | [Integer `Sqrt` divides twice](#12-integer-sqrt-divides-twice) | `x.Sqrt()` on integers | 47 Ir against F64's 3.6 | prelude | minutes | none |
| 13 | [`match` is a compare chain with a trap](#13-match-is-a-compare-chain-with-a-trap) | `match` over many cases | 8-way: 13.7M against C's switch 11.1M Ir | emit | hours | none |
| 14 | [Every empty array is an allocation](#14-every-empty-array-is-an-allocation) | `Vec<T>()`, `Array<T>(0)` | `Vec` + two pushes 150 Ir; one of its three allocations is the empty buffer | runtime, emit | hours | check E10 |
| 15 | [Small leftovers](#15-small-leftovers) | `nounwind`, I128 division by a constant, baked globals' startup code under `-quick` | regex binary -4%; 27.5 against 10.3 Ir; 6k Ir at startup | emit | minutes each | none |

Needs a decision before it is built: `x.Pow(2.0)` as `x * x` (section 16, X8's exactness), and - only if section 7 is
taken further than proposed - what a stale `View()` reads after a Vec grows in place. Everything else is the
coordinator's to queue (rules.md, "Optimizations are mine to decide").

## Method

- **Machine.** Intel Xeon @ 2.10GHz (Sapphire Rapids, AVX-512), 4 vCPUs in a Firecracker VM, idle while measured;
  olang at 9f4c841 (master), clang 19 (the newest on PATH, so olang's own choice). Times are medians of interleaved
  runs and noisy here: the VM's page-fault cost varies by 3-10x between runs (see section 7), so the ranking leans on
  instruction counts.
- **Instruction counts** are callgrind's (`valgrind --tool=callgrind`), since the VM exposes no hardware counters to
  perf. valgrind does not decode AVX-512, so counted builds are `-target x86-64-v3` for olang and
  `-march=x86-64-v3 -O3 -flto -ffp-contract=off` for C; timed builds are native, as `bench/run.olang` builds them.
- **Prototypes** never touched the repository: the runtime and prelude were changed in a copy of `std/` named by
  `OLANG_STD`; a change to emitted IR was made by building through a clang wrapper (`OLANG_CLANG`) that applies a
  `sed` expression to every `.ll` it compiles, or by relinking one patched module from the link command the wrapper
  logged; final IR comes from the wrapper adding `-Wl,-plugin-opt=save-temps` to the link. Those scripts were
  throwaway (scratch only); what each one did is written in its section, so a fix can be redone from the text.
- **Reproducers** for the new findings are in `bench/repro/` (header: what to look for, what was measured, how to run):
  `turn_temporaries`, `adapter_reduce`, `call_result_copy`, `text_local_copy`, `const_call_in_body`, `enum_layout`,
  `filtered_comprehension`, `gen_big_function`. Raw notes: the branch's `optlog/notes.txt`.

The benchmark table this started from (`build/bench_run -r 3`, native, medians of 3, olang/C): nbody 1.02,
spectral-norm 1.09, mandelbrot 0.96, fannkuch 1.08, binary-trees 0.33 (C arena 1.19), k-nucleotide 1.10, matmul 1.00,
List push 1.74, the four sums 0.52-0.55, parallel 1.01, text 1.09, sha256 1.11, regex 0.68, Vec push **10.99**, Vec two
fields 1.25, Vec store 1.19, dispatch: any 0.92, enum 1.17, direct 1.33, the lane rows 0.88-1.01, generator filter
0.89 (iterator struct 1.53). Counted (x86-64-v3, smaller sizes), most of these are level: spectral 1.00, mandelbrot
1.00, fannkuch 1.00, matmul 1.06, sha256 0.90, regex 0.81, text 0.61, k-nucleotide 0.79, sort 0.63, any dispatch 0.68.
The rows above 1.15 trace to sections 1, 3 and 7: binary-trees' allocations (1), every Vec- and List-building setup
(dispatch's 100,000 pushes: 5.4M Ir against C's 1.1M, the loops themselves level), Vec push's page faults (7).

## 1. The allocator's fast path is a call

**What.** Every allocation - a struct built where a reference wants it, text, an array, a Vec's state, a closure's
environment.

**Measured.** binary-trees, depth 14: 185.0M Ir, of which 84.1M (45%) inside `__olang_scope_alloc_a`, about 30 an
allocation; the C arena 127.4M. The compiler checking its own source (`olang explain compiler/olang.olang main`, the
whole front end): 9.879G Ir, of which `__olang_scope_alloc_a` alone is 1.469G (14.9%) - the single hottest function
of the compiler.

**Why.** `__olang_scope_alloc` (the size-class wrapper) is `alwaysinline`, but it calls `__olang_scope_alloc_a`, which
holds the ten-instruction bump path and the slow path (a fresh scope's first chunk, the spare chunk, forwarding, a
region, a new chunk) in one body; its inline cost is 280-300 against a threshold of 250 (`-pass-remarks-missed=inline`),
so every allocation is a call with its spills. bench/README's item 7 made the bump path self-contained inside the
function; it still is not inlined.

**Prototype.** `__olang_scope_alloc_a` split into an `alwaysinline` body that bumps (load the head, compare, add,
store) and a `noinline __olang_scope_alloc_slow` with the old body, in a copy of `runtime.ll`:

| program | before | after |
|---|---|---|
| binary-trees 14 (Ir) | 185.0M | 130.8M (C arena 127.4M) |
| binary-trees 18 (native, s, 5 runs) | 0.42-0.46 | 0.33-0.36 (C arena 0.35-0.36) |
| compiler front end on itself (Ir) | 9.879G | 9.181G (-7.1%); wall 2.12-2.55 s -> 1.91-2.29 s |
| StringBuilder, five pushes a turn (Ir) | 64.9M | 46.1M |
| bench text (Ir) | 149.5M | 140.8M |
| k-nucleotide (Ir) | 247.0M | 243.4M |

**Fix.** Exactly the prototype, in `std/runtime/runtime.ll`; `emit` already copies `alwaysinline` bodies into every
module as `available_externally`, so nothing else changes (the slow path needs a declaration). With ThinLTO (the
compiler's own build) it matters more: a 280-cost function is never imported across modules at all.
**Gain** 5-30% wherever a program allocates in a loop; **cost** an afternoon and a re-verify; **risk** code size (a
dozen instructions per allocation site). No meaning.

## 2. Temporaries on the stack, and a loop body's scope reused

**What.** Storage made for one statement or one turn and dropped with it: a struct built for a `P&` parameter
(`norm(P(i, i + 1))`), a reference local (`p P& = P(i, i + 1)`), a built result used once (`mk(i).Sum()`), the
adapters of `a.Iter().Skip(10).Take(k)`, a small Vec made and dropped each turn.

**Measured** (`bench/repro/turn_temporaries.olang`, 100,000 turns, Ir): the same struct as a value local 0.34M - all
folded - against 7.67M passed to a `P&` parameter, 7.27M as a reference local, 7.27M as a built result: about 70
instructions a turn. The same argument written as a value local and lent to the parameter (`t := P(i, i + 1);
norm(t)` - an `alloca`, which is what part 1 below would make of the temporary): 0.63M, 3 a turn. A Vec made and pushed twice: 15.3M (150 a turn); a Map with one Put and Get: 21.7M. Split
(callgrind by function, `arg`): 33 a turn in the allocator's slow path, the rest the scope's header cleared on entry
(56 bytes) and its close (`__olang_scope_close`: parts, destructors, chunks back to the pool). Section 1's prototype
does not help here (7.67M either way): every turn's scope is new, so its first allocation always takes the slow path.

**Why.** E12 builds a temporary "in the target's scope", and lowering always places a scope's storage in its arena;
the loop body is a block scope, opened and closed every turn.

**Fix, two parts.**
1. *Stack slots for frame-local storage* (the parked item in plan.md, now measured): where the scope pass places a
   value of fixed size (a struct, an enum, a fixed array) in the function's own frame or the innermost block of the
   statement that makes it, nothing it holds has a destructor, and nothing in a task, a region (O8d) or a closure that
   outlives the block reaches it, lowering gives it an `alloca` in the entry block (O2c) instead of an arena slot. The
   block's arena is reclaimed every turn, so one slot reused per turn is exactly the arena's lifetime; §8 already
   proves nothing outlives the block. A size cap (Go's 64KB, O8a's alignment for arrays) keeps frames small.
   LLVM then promotes most of these to registers (the value form's 0.75 Ir).
2. *Reuse a loop body's scope*: where a body scope cannot go on the stack, the runtime resets it at the end of a turn
   (destructors run, parts folded, chunks after the first given back, the first rewound) instead of closing and
   reopening it, so the next turn's first allocation bumps in place. Estimated from the split above: ~70 -> ~15 Ir a
   turn for any loop that allocates (text built per turn included).

**Gain** large and common: every constructor passed to a reference parameter, every adapter chain, every short-lived
helper object. **Cost** days: part 1 is a placement decision in `scope.olang`/`lower.olang` with its soundness written
out (the scope fuzzer and `-sanitize` as for any §8 change); part 2 is a runtime function and an emit change. No
meaning.

## 3. Vec/List Push cannot be inlined

**What.** `v.Push(x)` - every Vec and List filled element by element, so most programs' setup.

**Measured.** `bench/vec.olang push vec 2000000`: 74.5M Ir against C's 29.1M; 47.4M of it inside a `Push` that is a
call, 24 Ir an element (seven callee-saved registers pushed and popped around a store and an increment). Every
benchmark that builds a Vec pays it: `dispatch`'s setup (100,000 pushes) 5.4M Ir against C's 1.1M, `vec fields`' 4.0M
against 0.9M - in both the measured loops themselves are level with C.

**Why.** `Push` calls `vecState.room` only when full, but LLVM inlines `room` - and `grown`'s copy loop with it - into
`Push`, which then costs too much to inline anywhere. With `room` kept out of line (patched IR, `noinline` on the
instance), `Push` is eleven instructions, 74.5M -> 60.5M Ir, and its inline cost is 50: inlined at any ordinary call
site (threshold 250). In `bench/vec.olang`'s `main` it still is not, because a call deep in a chain of
`if mode == ...` branches is judged cold (threshold 45) - a property of the benchmark's shape. `List.Push` is the
same (cost 60).

**Fix.** Keep the growth paths out of line - `vecState.room`, List's chunk growth, `Map`'s rehash: emit them
`noinline` and `cold` (their callers' branches then get `!prof` weights from LLVM's cold-call heuristic). They are
prelude functions; the compiler marking them is a compiler fact about the prelude, as `grown` and `retire` are
prelude-only already. A general rule - a call reached only when a capacity test fails - is possible but not needed
for the prelude's three. **Gain** ~2x on building any Vec or List; **cost** an hour; no meaning.

## 4. Generator walks in large functions lose their elision

**What.** `for x in gen(n)` (D18e's walk form) in a function with much else in it.

**Measured** (`bench/repro/gen_big_function.olang`, 100,000 x 10): the same walk is 1.44M Ir alone in a small
function (it folds to the closed form) and 28.6M in this `main` - 28 Ir a value, the frame's 72 bytes from the arena
(`__olang_scope_alloc_a(.., 72, 8)` in the final IR). Removing any one of the other branches of `main` did not bring
it back: it is the function's size.

**Why.** D18e relies on LLVM inlining the generator's `.walk` ramp into the loop, so CoroElide sees the frame's
allocation and destroy together. In a large caller the inliner declines the ramp; the frame then comes from
`llvm.coro.alloc`'s fallback.

**Prototype.** `alwaysinline` on the `.walk` function (patched IR, relinked): 28.6M -> 2.36M Ir.

**Fix.** Emit the `.walk` ramp `alwaysinline` (it is small, and only made for a direct call at a for-in's own source).
**Gain** 12x on such walks; **cost** one line; no meaning.

## 5. A call's result is copied into a reference parameter

**What.** `ln(mk(i))` where `mk` returns `String` and `ln` takes `String&`; `sum(make(n, p))` for an `Array<I64>`.

**Measured** (`bench/repro/call_result_copy.olang`, 100,000 calls): `ln(mk(i))` 23.3M Ir, `t := mk(i); ln(t)` 17.2M -
61 Ir a call, an allocation and a copy. With 10,000-element arrays (`sum(make(n, p))` x 100): 11.2M Ir, of which 8.0M
memcpy, against 3.2M through a local (3.5x).

**Why.** The caller treats the call's result as a value to be converted into a reference (E12) and builds a temporary
for it - `__olang_scope_alloc` in the same scope the result was just built in, then `llvm.memcpy` - although a call's
result is already new storage, built in that scope (O18a). bench/README's item 8 removed the callee's copy of a
returned local; this is the caller's.

**Fix.** In lowering (with the scope pass's plan): a call result lent to a reference parameter whose scope binding is
the scope the result was built in is that storage - no copy. **Gain** an allocation and a copy per such call, common
with text and arrays; **cost** a day; no meaning.

## 6. Constant calls in bodies are run at run time

**What.** A call whose arguments are all constants and whose body the evaluator can run (K1a), inside a function:
`primes(200)[i % 10]`, `"hello world, wonderful".Find("wor")`, `"12345".ParseInt()`.

**Measured** (`bench/repro/const_call_in_body.olang`, 10,000 turns): `primes(200)` in the loop 2,552M Ir (255,000 a
turn); the same call as an immutable global's initializer is baked (K2) and the loop is 0.79M in all. `Find` on two
literals 150 Ir a turn, `ParseInt` on a literal ~50 - LLVM folds neither.

**Why.** The evaluator is asked only where a value is required (globals, asserts, conditions, lengths); recorded future
work ("constant contexts inside function bodies"), and the user's rule asks for exactly this ("pure calls with constant
arguments inside bodies computed while compiling", rules.md).

**Fix.** After check, offer the evaluator every call (and method call) whose arguments are constants, whose result
holds no reference to storage the caller could tell apart (numbers, text, arrays of them, plain structs), and whose
body it can run within a small budget; bake the result as constant data (K2b's path) and replace the call. What it
refuses runs as now. Survey2's `comptime e` (decided) is the written form that must succeed; this is the silent one
that may. **Gain** unbounded where present, nothing elsewhere; **cost** days, and compile time (a budget per call
and a cache keyed by callee and arguments); no meaning (K1's agreement with the run time is already the evaluator's
contract).

## 7. Growth copies, and nothing grows in place

**What.** A Vec grown far (reading a file, collecting results); a comprehension with an `if`; anything grown by
doubling in an arena.

**Measured.** `bench/vec.olang push vec 50000000`: 1.2-5.2 s against C's 0.48-1.25 s across runs, almost all of it
kernel time: 326,480 page faults and 1.31 GB peak against C's 195,433 and 783 MB. The retired buffers (8 + 16 + ... +
N/2 < N) all stay until the Vec's scope closes (`retire()` does nothing outside `-sanitize`; `-memory` reports
nothing let go), and each growth copies. A filtered comprehension (`bench/repro/filtered_comprehension.olang`): 15.3 Ir
an element against 10.2 for the same filter pushing onto a Vec, 45% of it memcpy - the doubling copies plus a last copy
to the exact length.

**Why.** The arena has no "grow this allocation": a buffer at the top of its chunk could simply be extended (bump the
chunk's offset), and a buffer alone in a mapped chunk could be `mremap`ped as glibc's `realloc` does; and a
comprehension's last trim could rewind the chunk's offset instead of copying.

**Fix.** A runtime `__olang_scope_grow(scope, ptr, old, new)`: in place when the allocation is the last in its chunk
and the chunk has room (or is mapped and alone: `mremap`), else a new allocation and a copy as now; and
`__olang_scope_shrink` for the comprehension's trim. Comprehensions use both with no question. For `Vec`, growing in
place changes one thing: a `View()` taken before a growth reads the buffer as it is now rather than "as it was then"
(vec.olang's header). Reading such a view is already an error where the compiler sees it (M19g), a stop under the
evaluator and a trap under `-sanitize`, so the proposal is: grow in place only while no view of that Vec has been
taken (a flag set by `View()`/`ViewMut()`, one store), else copy as now - then nothing a program can observe changes.
**Gain** the copies and up to half of a growing Vec's memory and page faults; **cost** days (runtime, prelude, the
comprehension's lowering); no meaning as proposed.

Also tried: `madvise(MADV_HUGEPAGE)` on every mapped chunk (copy of `runtime.ll`): page faults 326k -> 4.8k but wall
time 0.70-7.0 s - the kernel's compaction for huge pages costs more than it saves on this VM; inconclusive, not
proposed.

## 8. Lazy adapters keep reductions scalar

**What.** `a.Iter().Take(k).Sum()`, `.Skip(n)`, and in the same way `StepBy`, `TakeWhile`, `SkipWhile` over an array or
a Vec.

**Measured** (`bench/repro/adapter_reduce.olang`, 100,000 x 10, setup 1.7M): `a.Iter().Sum()` 1.9M (vectorized, 0.2 Ir
an element), the counted loop over the same range 1.9M, `Take` alone 11.4M, `Skip` alone 11.4M (9.5 an element),
`Skip` and `Take` 13.4M as locals, 15.4M inline (section 2's arena temporaries on top). `Fold`, `Count`, `Zip`,
`Enumerate` and `Iter().Fold` were level with their hand loops.

**Why.** Each adapter's `Next` wraps the inner `Next` - two counters and an `Exhausted` code checked per element - so
the reduction's loop has two exits and LLVM's vectorizer refuses it (Skip's own inner loop in every `Next` adds a
branch).

**Fix.** Rust's answer, in the prelude: internal iteration. A default `Fold` on `Iterator` that the adapters override
by folding their inner iterator over a bounded range (`TakeIter.Fold` folds `it` at most `left` times; an
`IndexIter`'s `Fold` is the counted loop), with `Sum`, `Count`, `Min`, `Max`, `Some`, `Every` written over `Fold` - as
`ListIter` already overrides them for chunks (bench/README item 3). `for x in it` stays on `Next`. **Gain** ~7x on such
reductions; **cost** a day of prelude; no meaning.

## 9. Text locals from a literal are copied every turn

**What.** `t := "abcdef"` (a `String` local from a literal) in a loop.

**Measured** (`bench/repro/text_local_copy.olang`, 100,000 turns): 7.37M Ir - 33 a turn in the allocator, the rest the
copy and the loop scope - where `xs := I64[1, 2, 3, 4]` in the same place is 0.48M in all (fixed storage, then
registers).

**Why.** The local is a value array, so lowering copies the literal into the loop body's arena; T7c's fixed storage
applies to the number array but not to a `String` (a declared type over `Array<Char>`), and T25d's "the constant data
itself" applies only where a literal reaches a read-only reference.

**Fix.** A text local that nothing writes (no element store, no `ViewMut`, no `mut &` lending - the pre-scan T7c
already does) is the literal's constant data, as T25d gives a read-only reference; failing that, fixed storage as for
the number array. **Gain** ~70 Ir a turn wherever a loop names a literal; **cost** hours; no meaning.

## 10. Enum layout

**What.** Arrays and Vecs of small enums.

**Measured.** `T.Size`: `Dir { North, East, South, West }` 4, `Small { A(x U8), B(y U8) }` 16,
`Opt { None, Some(v F32) }` 16 - C's tagged unions 1, 2 and 8. `bench/repro/enum_layout.olang`, 20M elements walked 10
times: `Array<Opt>` 314 MB and 0.86-1.19 s, the same data as a packed struct (`Bool`, `F32`) 158 MB and 0.47-0.49 s.

**Why.** A tag is an `I32` and every payload whole words (Codegen: "enum payloads are whole words").

**Fix.** The tag as the smallest unsigned integer that counts the cases; each case's payload laid out as a struct with
its natural alignment; the enum the size of the largest case after the tag. Touches layout in `types`/`emit`, the
evaluator's baking (K2), `$`, `Hash`, `==` (padding must not be compared) and reflection's `T.Size`/`T.Align`/
`f.Offset`, which read the layout. **Meaning:** none in the rules, but those three reflection values change - a
program printing `T.Size` prints another number; nothing in std depends on them. **Gain** up to 2x memory and
bandwidth on enum-heavy data (ASTs held by value, state machines, `Opt`-like fields); **cost** days, with the
evaluator's agreement to keep.

## 11. Filter/Map chains build every array

**What.** `for y in a.Filter(f).Map(g) { ... }`.

**Measured** (`bench/repro` not separate - the survey's iterator probe, 100,000 x 10): 22.6M Ir against 11.4M for the
loop with an `if` - two arrays made and walked.

**Fix.** The decision taken for lane expressions in a comprehension (rules.md, 2026-10-27) applied here: where
`Filter`/`Map` results are only walked once by the `for` (or a comprehension, or a reduction) right there, the checker
elaborates the chain into one loop, as it does for lane nodes. **Gain** 2x on such chains, less memory; **cost**
days; no meaning (the arrays are not observable when consumed in place).

## 12. Integer `Sqrt` divides twice

**What.** `x.Sqrt()` on an integer.

**Measured** (survey probe, 1M elements): 47 Ir an element against F64 `Sqrt`'s 3.6; `sqrtU64`'s correction loops
compare `r > n / r` and `r + 1 <= n / (r + 1)` - two 64-bit divisions (each tens of cycles) per call.

**Fix.** Cap `r` at `0xFFFFFFFF` and compare `r * r > n` / `(r + 1) * (r + 1) <= n` (no overflow below 2^32; the
`r + 1` case needs `r < 0xFFFFFFFF`). **Gain** several times on integer roots; **cost** minutes in
`std/prelude/number.olang`, with the existing exactness tests; no meaning.

## 13. `match` is a compare chain with a trap

**What.** A `match` over many payload-less cases.

**Measured** (survey probe, 8 operations, 1M elements x 10): 13.7M Ir against C's `switch` 11.1M; olang's `if`-chain
over an `I64` 11.5M. In `dispatch`'s enum loop (three cases) the tag is compared case by case and a fourth branch
traps on an impossible tag (`jne` to the exhaustiveness abort): 1.09x C's loop.

**Fix.** Emit a payload-less dispatch as an LLVM `switch` on the tag with `unreachable` as the default (the match is
exhaustive, S13a), and `!range` metadata on tag loads. **Gain** ~20% on such dispatch; **cost** hours; no meaning.

## 14. Every empty array is an allocation

**What.** `Vec<T>()`, `Array<T>(0)`, `I64[]`-like empties.

**Measured.** `Vec<I64>()` and two pushes: 150 Ir, three allocations - the Vec's state, an 8-byte "empty" buffer
(`data = Array<T>(0)`) and the first real buffer.

**Why.** E10: "an allocation of nothing still gets storage of its own, so two of them are two instances" - a rule for
identity, which `a is b`'s removal (2026-10-24) took away.

**Fix.** Check what still observes an empty array's address (an `extern` given one, `ToC`); if nothing, all empty
arrays share one static zero-length storage. **Gain** one allocation per empty array made (every `Vec()`, every empty
result); **cost** hours, after the check; meaning: none if the check holds.

## 15. Small leftovers

- **`nounwind`.** olang has no unwinding, but no emitted function and no declaration says so, so every function gets
  unwind tables. Marking all of them `nounwind` (patched IR): instruction counts identical on k-nucleotide, text and
  regex; the regex binary 97,952 -> 93,864 bytes (-4%). Minutes in `emit`.
- **I128 division by a constant.** `I128(x) * I128(x) / I128(7)`: 27.5 Ir against `I64`'s 10.3 - LLVM calls
  `__divti3` rather than multiplying by a magic number for 128 bits. Rare; a multiply-high sequence in `emit` for a
  constant divisor if 128-bit code matters (FPGA, hashing).
- **Baked globals' startup code.** Each global's initializer is emitted and called at startup even when K2 baked it;
  LTO deletes it (the final IR has none), `-quick` runs it (6k Ir for three small globals) and every build compiles it.
  Compile time only; dropping the initializer of a baked global in emit is known work (plan.md, definit).

## 16. Needs a decision

- **`x.Pow(2.0)`** costs 137 Ir an element against `x * x`'s 3.1: X8 declares inexact libm functions `nobuiltin` so the
  run time calls exactly what the evaluator called. `pow(x, 2.0)` and `x * x` are both correctly rounded in IEEE
  terms only if libm's `pow` is; glibc's is not guaranteed to be. Folding small integral exponents into multiplies
  (as LLVM would without `nobuiltin`) makes `Pow` mean "x times x" for those exponents, in the evaluator and at run
  time alike - a change to what `Pow` computes in rare last-bit cases. Recommended: yes, for exponents 2 and 3 only,
  written into the method's documentation; the user's call (it changes a result, however rarely).
- **Vec growth in place with views alive** - only if section 7 is taken past "no view taken" (see there).

## Checked and as good as C (or better)

- **Error paths.** A `try` call in a hot loop: 12.4M Ir against C's early-exit loop 12.2M; `catch default` vectorizes.
  Contracts' entry checks and `Narrow` cost their own compare, as in C.
- **Loops.** spectral-norm, mandelbrot, fannkuch, Vec/Array walk, gather and store: level in instructions; the lane
  rows (bench) level; `nbody` 1.19x in instructions but level in time (C's bodies are a static array, so its pair loop
  unrolls fully; bench/README item 9).
- **Iterator helpers.** `Fold`, `Iter().Fold`, `Count`, `Zip`, `Enumerate`, `Iter().Sum` and a lambda passed straight
  to a function: level with the hand loops (bench/README item 1's fix holds). Functions stored in a Vec are indirect
  calls, as C's function pointers.
- **Dispatch.** `any Shape&` 0.68x C's instructions; Sort 0.63x (Vec); text rendering 0.61x; k-nucleotide 0.79x;
  regex 0.81x.
- **Concurrency.** 20,000 joins of four tiny tasks: 1.12-1.18 s against C's create/join 2.26-2.94 s (the thread
  cache).
- **Numbers.** Integer `Pow` with a constant exponent folds to multiplies; comparison chains equal `and`; integer
  conversions free.
- **`null_pointer_is_valid`** (on every function since T2b): removed from every module (patched IR): instruction counts
  identical on binary-trees, k-nucleotide, dispatch, text, regex and sha256. Nothing to gain; it can stay or go.
- **Startup and size.** A hello world runs 261k Ir against C's 259k (the dynamic loader); 30 KB against 16 KB on disk.
- **Baked globals.** Fold under LTO (section 15 for `-quick`).

## Compile time, in passing

The compiler checking itself (callgrind, 9.88G Ir): the allocator 14.9% (section 1), the views pass about 20%
(`Viewer.factPut` 6.1% alone, `call`, `str`, `grow`, `below`), `std/json`'s parser about 7% (bindgen reading clang's
JSON tree to translate the C imports - a cache miss in this run, since the cache is keyed by the compiler and this was a
new binary; a warm build skips it), the scanner 1.6%. Section 1's prototype takes 7.1% off the whole. The views pass is skipped where no
body takes a Vec's view (round 9), but the compiler takes views; its fact maps are the next place to look.

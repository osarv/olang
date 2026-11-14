# Index checks in every build: a measurement

The user's idea (2026-11-14): check `a[i]` in every build, release included, but move the check out of loops wherever
possible, so release code pays one check per loop nest rather than one per element. This is a **measurement**, not a
language change: nothing in SPEC.md moved, and the switch is an environment variable, off by default.

## The switch

`OLANG_CHECKS=all` - every index the program writes (`a[i]` on an array, a slice's base, text; E16g's sites) is checked
in every build, as a checked build checks it (one unsigned comparison against the length, a cold call on failure).
Indexes the language makes (for-in walks, comprehensions, lanes, patterns) stay unchecked, as in E16g.

`OLANG_CHECKS=hoist` - the same checks, and each object's IR goes through LLVM's `opt` before clang:
`sroa, early-cse, simplifycfg, instcombine`, rotated loops with invariant loads hoisted (`loop-rotate, licm`), then
**IRCE** (inductive range check elimination). IRCE takes a loop whose range checks are affine in its counter and splits
its iterations into a pre-loop, a main loop and a post-loop; the main loop's bounds are computed once so that it needs
no check, and the pre/post loops (which run zero times when every index is in range) keep them. That is loop versioning
by iteration space: a program that would stop on element 1000 still stops there, never earlier. The rest of the
pipeline (clang `-O3`, the LTO link) is unchanged. `OLANG_CHECKSITES=FILE` appends each lowered index site and whether
it is in a loop (in the source) to FILE. Built in `compiler/build.olang` (`hoisted`), `lower.olang` (`IndexChecks`),
`olang.olang` (`checksMode`); our own MIR pass was not built: IRCE is the cheaper route and shows what hoisting buys.

## Index sites (what each site's check becomes)

Every index site lowered while building every bench program, every `tests/` file (as `test` builds it) and the
compiler (which takes in most of std), classified on each module's IR optimized per module (`opt -O3`, with and without
the IRCE prefix; no cross-module inlining, so a little pessimistic). A site counts once however many instances lower it,
by its worst place.

| sites in | total | in a loop (source) | checked away statically | hoisted (IRCE) | per access, in a loop | per access, not in a loop |
|---|---|---|---|---|---|---|
| std/ | 870 | 546 | 313 (35%) | 108 (12%) | 278 (31%) | 171 (19%) |
| tests/ | 919 | 158 | 598 (65%) | 20 (2%) | 39 (4%) | 262 (28%) |
| compiler/ | 4679 | 2964 | 1915 (40%) | 681 (14%) | 1124 (24%) | 959 (20%) |
| bench/ | 189 | 148 | 102 (53%) | 31 (16%) | 49 (25%) | 7 (3%) |

"Checked away statically": no check of the site is left after `-O3` (LLVM proved it - the loop's own bound is the
array's length, a constant index - or the code was dead and dropped; the two are not told apart). "Hoisted": left in
a loop by `-O3` alone, but only in IRCE's pre/post loops (or nowhere) once IRCE ran. Typical per-access sites left in a
loop - the index is not affine in a counter, or the array is not invariant, or the loop is not counted:

- `a[k] = a[i]` (std/prelude/array.olang:342, merge sort: two cursors moving down under a data-dependent condition)
- `t U8 = buf[lo]` (std/io.olang:108, `for lo < hi` with both ends moving: no counted loop)
- `v.data[i] = x` (std/prelude/vec.olang:134, `SetAt` inlined into callers' loops, among them gathers `v[idx[i]]`)
- `data[3 * i + 1]` (std/base64.olang:22, affine in a counted loop, yet still in it after IRCE - a limit of LLVM's
  pass rather than of the idea)
- `m.ws[fr.Scopes + i]` (compiler/eval.olang:5888, a counting-down loop that also ends on `m.halted`, the base read
  through a reference each turn)
- `f.argOpen[i]` with `for i in argAngles` (compiler/fmt.olang:47, the index is an element of another array)
- `ln.partsOf(cur)[k]` (compiler/lower.olang:6640, a call's result indexed by an element)
- `c.Args[ai]`, `toks[i - 1]` (compiler/scope.olang, load.olang: arrays reached through references in loops whose
  bounds are something else)

## Run time

bench/'s programs at their bench sizes (bench/run.olang's table), built with the default `-O3` and LTO, median of 7
interleaved runs, on a 4-core machine shared with other builds (rows under 40 ms are noise and left without a ratio).
Outputs were identical in all three builds.

| program | unchecked (ms) | per-access (ms) | hoisted (ms) |
|---|---|---|---|
| nbody | 469 | 431 (0.92) | 506 (1.08) |
| spectral-norm | 448 | 444 (0.99) | 522 (1.17) |
| mandelbrot | 525 | 519 (0.99) | 520 (0.99) |
| fannkuch-redux | 1025 | 912 (0.89) | 920 (0.90) |
| binary-trees | 256 | 237 (0.93) | 318 (1.24) |
| binary-trees, C arena | 286 | 280 (0.98) | 286 (1.00) |
| k-nucleotide | 379 | 411 (1.08) | 415 (1.09) |
| matmul F32 | 811 | 808 (1.00) | 785 (0.97) |
| List push | 161 | 152 (0.94) | 168 (1.04) |
| sum: for x in List | 59 | 69 (1.17) | 60 (1.02) |
| sum: List.Iter().Fold | 70 | 66 (0.94) | 75 (1.07) |
| sum: for x in Array | 66 | 63 (0.95) | 50 (0.76) |
| sum: Array.Iter().Fold | 67 | 67 (1.00) | 109 (1.63) |
| parallel, 4 tasks | 514 | 518 (1.01) | 531 (1.03) |
| text | 286 | 309 (1.08) | 291 (1.02) |
| sha256 | 1174 | 1141 (0.97) | 1098 (0.94) |
| regex | 72 | 85 (1.18) | 87 (1.21) |
| Vec: for x in v | 43 | 44 (1.02) | 44 (1.02) |
| Array: for x in a | 45 | 45 (1.00) | 42 (0.93) |
| Vec: v[idx[i]] | 145 | 168 (1.16) | 159 (1.10) |
| Array: a[idx[i]] | 148 | 170 (1.15) | 157 (1.06) |
| Vec: v[i] = v[i] * 2 | 45 | 50 (1.11) | 45 (1.00) |
| Array: a[i] = a[i] * 2 | 46 | 42 (0.91) | 42 (0.91) |
| Vec: two fields | 84 | 82 (0.98) | 84 (1.00) |
| Array: two fields | 81 | 75 (0.93) | 80 (0.99) |
| Vec push | 739 | 780 (1.06) | 785 (1.06) |
| List push (vec.olang) | 583 | 592 (1.02) | 581 (1.00) |
| Vec: opaque call | 172 | 162 (0.94) | 169 (0.98) |
| Array: opaque call | 173 | 201 (1.16) | 215 (1.24) |
| Vec Sort | 71 | 106 (1.49) | 103 (1.45) |
| Array Sort | 69 | 102 (1.48) | 98 (1.42) |
| Array Sort, through an unknown value | 93 | 155 (1.67) | 138 (1.48) |
| Array Sort, < written in | 78 | 121 (1.55) | 106 (1.36) |
| dispatch: any Shape& | 706 | 746 (1.06) | 740 (1.05) |
| dispatch: enum match | 542 | 559 (1.03) | 530 (0.98) |
| dispatch: one type, direct | 42 | 42 (1.00) | 42 (1.00) |
| lanes: dot | 238 | 250 (1.05) | 246 (1.03) |
| lanes: dot, hand loop | 242 | 242 (1.00) | 253 (1.05) |
| lanes: isum | 122 | 118 (0.97) | 118 (0.97) |
| lanes: isum, hand loop | 122 | 118 (0.97) | 116 (0.95) |
| lanes: axpy | 118 | 114 (0.97) | 114 (0.97) |
| lanes: axpy, hand loop | 115 | 111 (0.97) | 116 (1.01) |
| lanes: saxpy | 170 | 164 (0.96) | 168 (0.99) |
| lanes: saxpy, hand loop | 155 | 150 (0.97) | 151 (0.97) |
| lanes: select | 306 | 302 (0.99) | 290 (0.95) |
| lanes: select, hand loop | 326 | 322 (0.99) | 325 (1.00) |
| gen: range | 2 | 2 | 10 |
| gen: range, iterator | 2 | 2 | 2 |
| gen: range, loop | 2 | 2 | 1 |
| gen: filter | 102 | 102 (1.00) | 98 (0.96) |
| gen: filter, iterator | 117 | 115 (0.98) | 130 (1.11) |
| gen: filter, loop | 110 | 114 (1.04) | 110 (1.00) |

Geometric mean over the 49 rows of 40 ms or more: **per-access 1.042, hoisted 1.053**. Where indexing is the work and
the index is data-dependent, every check stays: the sorts +40-60% (merge sort's cursors), the gathers `a[idx[i]]`
+10-15%. Where the loop is a plain counted walk, LLVM already removes the check without IRCE (the loop's bound is the
length). IRCE then hoists a further 15% of the compiler's sites, but its pre/main/post split costs more than it saves
on these programs: `Array.Iter().Fold` 1.63, spectral-norm 1.17, binary-trees 1.24 against per-access's 1.00, 0.99, 0.93.

The compiler, built three ways, building itself (`build -quick compiler/olang.olang`), front end up to the end of
lowering and emission (the part whose speed is the compiler's own; clang's share does not change), the fastest of 5
runs on the shared machine: unchecked 12.4 s, per-access 13.6 s (+10%), hoisted 12.8 s (+3%). The runs spread by about
2 s, so the order between per-access and hoisted is within the noise.

## Compile cost

The compiler's own build (`build`, `-O3` and LTO): IR 97.3 MB unchecked against 103.0 MB with the checks (+5.9%), the
binary 13.9 MB against 15.1 MB (+8.4%); wall time 92 s, 131 s per-access, 143 s hoisted (one run each on the shared
machine, the extra `opt` pass per object is in the last). A checked test build of tests/shared.olang (E16g, divisions and
shifts included) against the build before E16g: IR 11.6 MB against 13.4 MB (+16%), compile 9.6-9.8 s against 9.8-10.0 s
(+2%), run time 0.10 s both.

## What it says

- About 40% of the index sites the compiler and std write are proved in range by LLVM with no help; IRCE hoists another
  10-15%; a quarter stay per access inside loops, mostly where the index is data-dependent (sorts, gathers, cursors,
  indexes read from other arrays) - the places no hoisting reaches, and where the check's cost is the cost.
- Checking every index in release builds costs about 4% on bench/ (geomean) and about 10% on the compiler's front end,
  with outliers of +40-60% (sorting) and +10-15% (gathers).
- IRCE as LLVM ships it does not pay here: it removes checks but its loop splitting slows as many loops as it helps.
  A pass of our own could do better on the cases it does handle (check the whole range once before a counted loop,
  version the loop only where the check can fail), but it would not touch the data-dependent quarter, which is where
  the remaining cost is.

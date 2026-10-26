# std/linalg kernel tuning - findings (WIP, 2026-10-26)

Stopped part way: std/linalg is leaving std for oann. These notes keep what was measured, for oann's port.
Machine: Xeon (Sapphire Rapids class: AVX-512, FP16, BF16, AMX), 2.1 GHz, 4 vCPUs, L1d 48 KB, L2 2 MB per core,
shared VM - timings vary by up to 30%, so each figure is the median of 5-9 interleaved runs (best of 6 inside each).
Profiles were taken with `perf record -e cpu-clock` (no hardware counters in the VM).

## Single-threaded square C = A B, GFLOPS (median)

| type | n | before (master) | after (this branch, store fix excluded) | OpenBLAS 0.3.26 |
|---|---:|---:|---:|---:|
| F32 | 256 | 123 | 136 | 145 |
| F32 | 512 | 124 | 135 | 134-139 |
| F32 | 1024 | 114 | 132 | 141 |
| F32 | 2048 | 106 | 133 | 143 |
| F64 | 256 | 43 | 62 | 62 |
| F64 | 512 | 54 | 62 | 48-59 |
| F64 | 1024 | 53 | 59 | 66 |
| F64 | 2048 | 51 | 57 | 70 |

The last commit's storeTile change (below) was measured only by a quick run (F64 300: 53 GFLOPS, F32 300: 124);
re-measure it before relying on it. Thin, transposed, batched, patch and multi-threaded shapes were not measured.

## Where the time went on master (F32 1024)

- micro-kernel 83% - its inner loop was already right: 24 `vfmadd231ps zmm`, 12 broadcasts, 2 loads, no spills.
- packing B 10%: each step of a panel read a run of a different row of B (stride = a row, 4 KB at n 1024), so every
  read went to a new page and the hardware prefetcher, which stops at page boundaries, never helped; the copy was
  also 32 scalar moves, since LLVM may not reorder the loads above stores that might alias.
- packing A 5%: a transpose (12 rows gathered per step), scalar.
- F64 at 2048: storeTile 9-10%, scalar (`vmulsd`/`vaddsd`) and not inlined.

## What helped (all in this commit)

1. B packed a row of B at a time across every panel (reads in order), each run through registers (`copyRun`):
   B packing 10% -> 2%.
2. A not transposed packed by rows - a plain copy, at a constant row stride (the depth block, `rowsK`) - and the
   micro-kernel reads it by rows: one base register, constant displacements (`vbroadcastss -0x2800(%r12,%r9,4)`).
   A packing 5% -> ~1%. Transposed, triangular and patch operands keep the panel layout.
3. Loop order swapped to BLIS's: for each tile row, every tile column (`for ir { for jr }`) - the A micro-panel stays
   in L1, B's micro-panels stream from L2, and C's tiles are walked along rows (prefetchable).
4. Blocking for that order: depth block 384 for 4-byte elements and 256 for 8-byte (`KC4`, `KC8`, `depthBlock`), B
   panel 512 columns (`NC`), so B's panel (768 KB / 1 MB) stays in L2. The largest single gain at 2048.
5. storeTile reads the tile into a local before storing (the F64 store was scalar because the tile, read through a
   reference, might have been C). Measured only briefly.

Tried and reverted: a constant-index whole-tile store (`storeWhole`, then `rowStore` per row straight from the
accumulators). Passing the accumulators by reference, or storing them in row order from registers, made LLVM keep
them in memory or re-vectorize the FMA chain across rows - 5-25 GFLOPS. The copy into `t` in row order, as master
does, is what keeps them in registers. A transposed A packing through a 12 x 8 register block (`transposeRuns`) was
left scalar by SLP, with spills; it is gone (replaced by packing by rows).

## What is left of the gap to OpenBLAS (F32 ~5%, F64 ~15-20% at 2048)

- C's tile is read from L3 when beta != 0 (every depth block after the first), with nothing to hide the latency.
- No prefetch: OpenBLAS prefetches C's tile and the next panels.
- Not done: F16/BF16/F8, the direct path, transposed operands, GemmBatch, GemmPatches, threads, code size and
  compile time.

## Compiler limitations found

1. No prefetch operation (an `llvm.prefetch` intrinsic): C's tile and the next panels cannot be prefetched, which is
   most of what is left of the gap.
2. No inlining control: a helper that must be inlined to keep accumulators in registers (a whole-tile store) cannot be
   asked to be, and once it is not, its reference to the tile makes everything stay in memory.
3. A copy whose loads and stores may alias (array to array) is never made into vectors by SLP; olang has no `noalias`
   or array-copy operation, so a copy goes through a local (`copyRun`). The beta store loop
   (`c[o + j] = alpha t[j] + beta c[o + j]`, constant trip count) also stayed scalar under SLP.

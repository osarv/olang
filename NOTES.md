# int8 investigation notes (delete at the end)
- 11231ef0's fix (-fno-vectorize/-fno-slp-vectorize on every unit under full LTO) fixes INT8 (rowStep inlined, 80 vpdpwssd,
  ~80-95 GOPS) but regresses linalg F32 thin products: 100352x9x16 32 -> 17 GFLOPS, 1024x128x512 138 -> 105.
- Isolated (bench f32 only, 100352x9x16 GemmAct): fixed 2100-2400 us, old 1300-1500 us. Hot: storeTile line 927 and
  epilogueAs line 1187 (instances in the root unit).
- Not a weaker LTO pipeline: opt default<O3> on the merged unvectorized module is as slow; adding loop-rotate no help.
- Per-unit bisect with a clang wrapper: vectorizing the ROOT unit (.main) at compile restores F32 (1230-1320 us) and
  keeps rowStep inlined. Std/linalg units alone: no effect.
- Fix: the flags only on UnitKind.Module units; Main/Tests/Instances vectorize in their compile.
- BUT root-only vectorizing halves batch-1 INT8 (1x1024x1024 ~25 vs ~60 GOPS). Real cause of the F32 loss: with the
  vectorizers off, the compile's late LoopUnroll still runtime/partially unrolls the loops (epil.iter remainders),
  and the link's vectorizer then cannot vectorize them (remainder: tiny trip count -> opt-for-size -> no runtime
  checks; main: unrolled body not beneficial). Disabling the compile's runtime+partial unroll
  (-mllvm -unroll-runtime=false -mllvm -unroll-allow-partial=false) on every unit restores F32 (~1300-1500 us) and
  keeps INT8 everywhere (batch-1 ~55-60). Implemented that; Module-only condition reverted.

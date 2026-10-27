# B20: `olang profile` - progress (hand-off note)

## Done (all committed on wt-profile)
- Driver mode `profile` (olang.olang tables, -output/-quick/-define/-update), compiler/profile.olang (run by fork+exec,
  samples reader, ELF segments and symbol tables, llvm-symbolizer, report, flame graph), build.olang (Profile flag,
  .prof suffix, FnAttrs frame-pointer, shrink-wrap off at compile and LTO link, -lrt), emit (Prof: LineTablesOnly CU,
  ProfName names, every generated function a subprogram in "<generated>", main starts the sampler), runtime.olang
  (`; @prof` hook lines), std/runtime/prof.ll (sampler), types.Demangle.
- Tests: profile.olang's, types Demangle, olang.olang's parse/mistake tests, checks scenario `profile`.
- Records: SPEC B20-B20b (+B1 table, B4), docs/profiling.md (rewritten - was lost), CLAUDE.md, HISTORY.md, READMEs,
  makefile release ships llvm-symbolizer and releasetest profiles.
- Measured overhead (HISTORY/docs), byte-identical IR of plain builds.

- Goldens recaptured (drv, tokens, ast, layout, diag); `make verify` passed (2026-10-27); `make release` +
  releasetest passed (57 MB tar.xz with llvm-symbolizer; profile named the hot function).

## Next
- Nothing for this batch. Left (recorded in HISTORY): allocation profiling per site, threads C starts, a finer clock
  than the kernel's tick; the shared repo's .git/info/exclude unanchored patterns (prof*, any, check, ...) want a "/".

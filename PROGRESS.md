# B20: `olang profile` - progress (hand-off note)

## Done
- 5bc64df (previous agent, WIP): Config.Profile, `.prof` mode suffix, FnAttrs ("frame-pointer"="all"), -lrt, `prof`
  condition in runtime.ll, prof hooks at thread start/end and the hard abort, UC_* facts, instance Text in generic.
- std/runtime/prof.ll committed (it was hidden by the shared repo's .git/info/exclude pattern `prof*`, which also hid
  docs/profiling.md - lost, never committed; rewrite it).

## Decided (mine)
- (see SPEC B20 once written)

## Next
- emit: Prof field, line tables (LineTablesOnly), readable DISubprogram names, main calls __olang_prof_start.
- driver: `profile` mode (olang.olang tables, build.ProfileProgram), compiler/profile.olang (samples reader,
  symbolizer, report, flame graph, demangler).
- tests, checks scenario, SPEC B20, docs/profiling.md, CLAUDE.md, HISTORY.md, bench overhead, byte-identical check.

# optsurvey progress (hand-off note)

Task: survey missed optimizations in the olang compiler, measured; output docs/optsurvey.md. No compiler changes.

## Done
- docs/optsurvey.md written: ranked table, 15 findings + a decision section + checked-as-good list + compile-time note.
- bench/repro/: turn_temporaries, adapter_reduce, call_result_copy, text_local_copy, const_call_in_body, enum_layout,
  filtered_comprehension, gen_big_function (all build).
- optlog/: notes.txt (raw measurements), bench1.txt (bench_run -r 3), cg_explain.txt (callgrind of the compiler's front
  end), profile_front.txt (olang profile - distorted by kernel page-fault time, see notes).

## Method (to redo a measurement)
- callgrind on -target x86-64-v3 builds (no PMU in the VM; valgrind lacks AVX-512); C with -march=x86-64-v3 -O3 -flto.
- runtime/prelude prototypes: copy std/ to a scratch dir, edit, build with OLANG_STD=that dir.
- IR patches: OLANG_CLANG=a wrapper that seds each .ll before compiling (build in a fresh dir so objects do not mix),
  or relink one patched module from the logged link command; -Wl,-plugin-opt=save-temps for final IR.

## Next (if resumed)
- Nothing required. Possible extras: prototype section 2 part 2 (loop-scope reset) to replace its estimate; measure
  section 11's fusion; map E10's remaining observers for section 14.

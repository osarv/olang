# wt-bench: benchmarks in the test runner (B19b)

Done: runtime counting (`; @bench` lines, per-thread counters, perf instruction counter), `-bench` option (table, help,
B1, errors beside -fuzz / -interpret), std/bench (Run, Keep, Measurement.Of), evaluator cases, tests/bench.olang,
SPEC B19b, CLAUDE.md, HISTORY.md, std/README.md, tests/README.md, DEPENDENTS.md, drv golden.
Verify: passed but for the goldens of the new files and changed compiler files (recaptured: tokens, ast, layout, run - every row mine) and consistency naming PROGRESS.md (this branch-only file); the rerun targets pass.

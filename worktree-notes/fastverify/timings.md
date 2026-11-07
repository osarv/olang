# make verify / make quick timings (2026-10-24, 4 cores, ~15 GB; wall seconds, peak = summed RSS of the run's processes)

## Before: make verify on c50fc15, part by part (sequential, as the makefile ran it)

| part | wall s | CPU s | largest process MB |
|---|---|---|---|
| seedobj | 111.2 | 110 | 279 |
| stage1 | 141.5 | 265 | 1967 |
| stage2 | 34.0 | 118 | 1723 |
| stage3 | 3.7 | 4 | 1163 |
| run | 7.4 | 10 | 723 |
| runner | 0.0 | 0 | 1 |
| checkir | 1.0 | 1 | 2 |
| tokdiff | 10.2 | 26 | 528 |
| astdiff | 4.7 | 5 | 109 |
| namesdiff | 10.8 | 11 | 135 |
| layoutdiff | 4.4 | 4 | 91 |
| fmtdiff | 12.5 | 16 | 250 |
| drvdiff | 16.5 | 18 | 1720 |
| all 93 test files, one after another | 449.9 | 1049 | |

Total 810 s. Summed RSS at most 2.7 GB (sampled through the bootstrap). master 7e4c24a, the same makefile: 709 s, 2.35 GB.

Test files, the longest (sequential):

| file | wall s | CPU s | MB |
|---|---|---|---|
| checks_checks.olang | 138.3 | 475 | 604 |
| compiler_scope.olang | 18.2 | 58 | 1235 |
| compiler_lower.olang | 17.7 | 55 | 1198 |
| compiler_check.olang | 17.3 | 57 | 1034 |
| compiler_views.olang | 15.3 | 48 | 1074 |
| std_linalg.olang | 14.9 | 33 | 577 |
| compiler_load.olang | 13.1 | 13 | 326 |
| compiler_olang.olang | 12.3 | 22 | 1938 |
| tests_shared.olang | 10.4 | 30 | 1189 |
| compiler_parse.olang | 10.2 | 10 | 306 |
| compiler_mir.olang | 10.1 | 11 | 256 |
| compiler_build.olang | 8.2 | 11 | 165 |
| compiler_emit.olang | 8.1 | 18 | 1411 |
| compiler_eval.olang | 8.0 | 22 | 551 |

## checks/checks.olang alone (CHECKS_TIMES), warm build/

| run | wall s | CPU s | longest check |
|---|---|---|---|
| c50fc15's checks.olang | 154 | 466 | strheld 77 s, fuzz 30 s |
| from a clean build/ | 192 | 532 | strheld 113 s, fuzz 84 s |
| + shared object store (first run / second run) | 154 / 139 | 454 / 390 | strheld 93 s |
| + 8 workers | 143 | 411 | strheld 129 s |
| + strheld as 29 parts using the store, fuzz seeds 2 at a time | 134 | 400 | fuzz 47 s |

Clean suite, clang's own time: 3,467 s, of which 1,059 s an object another directory had already made (std_io 76
times, std_os 26, the runtime 54); in the main build/ 76 duplicate compiles, 236 s, from builds side by side.

## After (master 7e4c24a merged; other agents' load varied, load average 2-9 in these runs)

| run | wall s | CPU s | peak MB |
|---|---|---|---|
| make verify, bootstrap from the seed (BOOT_FRESH=1) | 360 (boot 60, suite 295, checks 245) | 1337 | 5448 |
| make verify, bootstrap reused from .bootcache | 343 | 1309 | 5425 |
| make quick, nothing changed | 127 | 447 | 3429 |
| make quick after an edit to compiler/scope.olang | 137 | 461 | 4507 |
| old make verify on the same master | 709 | 1470 | 2351 |

Earlier runs of the same targets under heavy load from another agent (load average 9-15): make verify 648-719 s,
make quick 157-261 s, a clean suite 370-580 s with a peak of 6.0-8.1 GB before the two lanes (5.6 GB after).

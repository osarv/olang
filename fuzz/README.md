# fuzz - differential fuzzers

Random olang programs, each run several ways. A difference between the runs is a finding. Written in olang.

| file | what it is |
|---|---|
| `gen.olang` | writes random programs whose every value is defined, for the evaluator fuzzer. Each case is computed three ways: a global baked while compiling (K2), an assert decided while compiling (S18c), and the same call at run time. |
| `scopegen.olang` | writes programs that store, lend, copy and return values where scopes close (§8), for the scope fuzzer. |
| `fuzz.olang` | the driver for both: builds, runs, compares, keeps the findings. |
| `repro/` | reproducers of bugs the fuzzers found, small programs (some with `.ll`). |

## The evaluator fuzzer (K1)

Each program is built at `-d` and run, built with the asserts added (`-b`), and interpreted (`-i`). The outputs must
be the same: the compile-time evaluator gives the run time's answer or refuses.

```
make fuzz                         # SEED=1 COUNT=100 JOBS=2 CASES=30
make fuzz SEED=500 COUNT=1000
```

## The scope fuzzer (B2f)

Each program is built under the scope sanitizer (`-d -s`) and interpreted (`-i`). A value used after its scope
closed reads poison or faults under `-s`, so it shows as a difference. A program the compiler refuses is left out
and counted.

```
make scopefuzz                    # SEED=1 COUNT=100 JOBS=2 SCENARIOS=12
```

## Driver commands

```
build/fuzz_fuzz.debug run START COUNT [JOBS [CASES]]
build/fuzz_fuzz.debug show SEED [CASES [ONLY]]            # print a program, or one case
build/fuzz_fuzz.debug scope START COUNT [JOBS [SCENARIOS [avoid]]]
build/fuzz_fuzz.debug scopeshow SEED [SCENARIOS [ONLY]]
```

Build it first with `build/out -b -d fuzz/fuzz.olang` (the make targets do). Each run works in
`build/fz/runXXXXXX`. That directory is removed when nothing was found, and kept (with `findings.txt` and
`found/<seed>`) otherwise. Neither target is part of `make verify`; `checks/checks.olang` runs a few fixed seeds.

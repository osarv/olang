# docs - design notes

Long design notes that are too big for `CLAUDE.md`. They are records and plans, not the specification: what the
language means is `SPEC.md`, why each decision was made is `CLAUDE.md` and `HISTORY.md`.

| file | what it is |
|---|---|
| `ideas.md` | language features from other languages to work through one at a time: generators, reflection, units of measure, SIMD vectors, arbitrary widths, embedding files, `errdefer`, contracts, doc tests - none decided yet |
| `survey.md` | features from other languages olang lacks, and what an announcement needs beyond the language (2026-10-24, for review): a ranked shortlist with recommendations, candidates by area with verdicts, a readiness checklist, and what newcomers will find unusual |
| `survey2.md` | a second survey of other languages' features (2026-10-26, for review): Rust, Go, Python and C/C++ checked in depth, the functional languages and others; five ranked recommendations, candidates worth considering, rejected ones with reasons, a table of olang's form for each familiar feature, and tooling |
| `survey3.md` | a third survey (2026-10-27, for review): the functional languages looked at properly (functions, effects, types, patterns, walks, memory, concurrency, GUIs) and the languages closest to olang (function facts such as "allocates nothing", the region languages, array and data-parallel languages, systems details, tooling), each with an olang sketch and a verdict, and a ranked shortlist of fifteen |
| `memory.md` | the memory model without `own` (2026-10-17; rounds 1-3 built, `own` removed 2026-10-18): one rule - everything lives in a scope - with freeing early as the compiler's optimization (the trigger rule, the analysis, the `-memory` report), `Vec` as a handle with written views, destructors kept at scope close, and the round-by-round plan that removes `own` |
| `scope-model.md` | the formal model of §8 that the port's scope pass (M6) is built from (2026-10-18, for review): the run-time invariants, scope terms and their order, the fit rule, placement, calls and split values, each O-rule with why it is sound and the finding that motivated it; early freeing as a second layer; where the model is conservative; how M6 is ordered and tested |
| `prover.md` | history only - the prover was removed from the plans on 2026-10-25 (contracts are checked on entry now): the design note of 2026-10-24 for a prover for contracts, never built: what it decides and what "refuted" means, the logic (bit-vectors for wrapping integers, arrays, `for` items, a memory model from permissions), proofs from the MIR per function, loop invariants as asserts, our own solver in olang (abstract interpretation, CDCL SAT, bit-blasting, LRAT-checked proofs, counterexamples replayed by the evaluator), step budgets and caching, a staged plan and the direction questions |
| `optsurvey.md` | missed optimizations, measured (2026-10-27): fifteen findings ranked by gain, commonness and cost - the allocator's fast path, temporaries on the stack and loop scopes reused, Push and growth paths, generator walks, copies of call results and text literals, constant calls in bodies, in-place growth, adapters, enum layout, fusion, small ones - each with its measurement, cause, fix and whether it changes meaning; what was checked and found level with C |
| `profiling.md` | how to profile an olang program: which build keeps what (`-O3`, `-quick`, `-debug`), `perf record`/`report`/`annotate`, a flame graph from perf's folded stacks, callgrind - each command run here and its output shown |
| `install.md` | the README of a release (`make release`): what the tarball holds, what the machine needs, which clang is used |
| `own.md` | owned references (`own`, `take`, loans, the former SPEC §8.8, removed 2026-10-18), the record: what was asked, the design, decisions, the implementation plan, the diagnostics, the test plan, and one section for each soundness review and its fixes (sections 11-27), up to `Vec<T>` |

`memory.md` replaced `own.md`'s design: its round 3 removed `own` from the language, and `own.md` stays as the record.
Read it with SPEC.md as it was before that removal (rules O30-O42, T25e and E34, in git history). Sections 1-3 give the
design on a page. Sections 11 onward are a dated log of what was built and fixed.

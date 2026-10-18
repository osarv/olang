# docs - design notes

Long design notes that are too big for `CLAUDE.md`. They are records and plans, not the specification: what the
language means is `SPEC.md`, why each decision was made is `CLAUDE.md` and `HISTORY.md`.

| file | what it is |
|---|---|
| `ideas.md` | language features from other languages to work through one at a time: generators, reflection, units of measure, SIMD vectors, arbitrary widths, embedding files, `errdefer`, contracts, doc tests - none decided yet |
| `memory.md` | the memory model without `own` (2026-10-17; rounds 1-3 built, `own` removed 2026-10-18): one rule - everything lives in a scope - with freeing early as the compiler's optimization (the trigger rule, the analysis, the `-memory` report), `Vec` as a handle with written views, destructors kept at scope close, and the round-by-round plan that removes `own` |
| `scope-model.md` | the formal model of §8 that the port's scope pass (M6) is built from (2026-10-18, for review): the run-time invariants, scope terms and their order, the fit rule, placement, calls and split values, each O-rule with why it is sound and the finding that motivated it; early freeing as a second layer; where the model is conservative; how M6 is ordered and tested |
| `own.md` | owned references (`own`, `take`, loans, the former SPEC §8.8, removed 2026-10-18), the record: what was asked, the design, decisions, the implementation plan, the diagnostics, the test plan, and one section for each soundness review and its fixes (sections 11-27), up to `Vec<T>` |

`memory.md` replaced `own.md`'s design: its round 3 removed `own` from the language, and `own.md` stays as the record.
Read it with SPEC.md as it was before that removal (rules O30-O42, T25e and E34, in git history). Sections 1-3 give the
design on a page. Sections 11 onward are a dated log of what was built and fixed.

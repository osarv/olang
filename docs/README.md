# docs - design notes

Long design notes that are too big for `CLAUDE.md`. They are records and plans, not the specification: what the
language means is `SPEC.md`, why each decision was made is `CLAUDE.md` and `HISTORY.md`.

| file | what it is |
|---|---|
| `ideas.md` | language features from other languages to work through one at a time: generators, reflection, units of measure, SIMD vectors, arbitrary widths, embedding files, `errdefer`, contracts, doc tests - none decided yet |
| `memory.md` | the memory model without `own` (2026-10-17, for review, then built): one rule - everything lives in a scope - with freeing early as the compiler's optimization (the trigger rule, the analysis, the `-memory` report), `Vec` as a handle with written views, destructors kept at scope close, and the round-by-round plan that removes `own` |
| `own.md` | owned references (`own`, `take`, loans, SPEC §8.8): what was asked, the design, decisions, the implementation plan, the diagnostics, the test plan, and one section for each soundness review and its fixes (sections 11-27), up to `Vec<T>` |

`memory.md` replaces `own.md`'s design: its round 3 removes `own` from the language, and `own.md` stays as the record.
Read `own.md` with SPEC §8.8 (rules O30-O42), T25e and E34 open. Sections 1-3 give the design on a page. Sections 11
onward are a dated log of what was built and fixed.

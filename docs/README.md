# docs - design notes

Long design notes that are too big for `CLAUDE.md`. They are records and plans, not the specification: what the
language means is `SPEC.md`, why each decision was made is `CLAUDE.md` and `HISTORY.md`.

| file | what it is |
|---|---|
| `own.md` | owned references (`own`, `take`, loans, SPEC §8.8): what was asked, the design, decisions, the implementation plan, the diagnostics, the test plan, and one section for each soundness review and its fixes (sections 11-27), up to `Vec<T>` |

Read `own.md` with SPEC §8.8 (rules O30-O42), T25e and E34 open. Sections 1-3 give the design on a page. Sections
11 onward are a dated log of what was built and fixed.

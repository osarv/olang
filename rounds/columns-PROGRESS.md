# Round "columns" - Columns<T> and ColumnVec<T> (wt-columns)

Brief: /home/user/review/rounds/columns-brief.md (rules: /home/user/review/rounds/finish-rules.md).

## Done (committed on wt-columns)
- SPEC T7e (2.3.1); prelude std/prelude/columns.olang; compiler: generic.columnFields/IsColumns/IsColumnVec/ColumnsRow,
  FieldNames + check.fieldIndex for Columns, check.columnsFields (the constructor), check.columnVecField (`cv.x`),
  check.columnsMet/notRecord/neverNullIn (the record check at instancesIn), check.columnStore (whole-column store, in
  place, LaneLen-checked), wholeColumn (parallel assignment refused), M6a by the row's module, ReflItems: the prelude sees
  every field, Project: Element of a table.
- quick: passed but checks (columnsprivate: cases are single files - removed) and tok/ast goldens (recaptured, all rows this round's).
- tests: std/prelude/tests/columns.olang (baked global + top-level assert + run), prelude examples, checks cases
  columns*.olang (+ columnsrun's golden row in compiler/goldens/run.txt), reflnotype's message.
- measured: docs/refs-study/data/columns.olang 2.0 instructions an update = soa.olang (flat 13.0); docs/refs-study.md.
- records: CLAUDE.md entry, HISTORY.md "Structures of arrays", std/README.md.

## Decided (mine) - see HISTORY.md for the list (record rows, zero value, run-time length, cv.x slice, whole-column
store, privacy, Element, $ form, loops not comprehensions)

## For the FromIter round (QBU/QBW)
- `Columns<P>[...]` and comprehensions: give Columns a type-level `FromIter(it)` building into a ColumnVec (Push per
  row) and handing over its buffer trimmed to Len (each column `[:n]` copied into a fresh Columns - or better, built at
  the exact count where the iterator's length is known); ColumnVec's `FromIter` pushes. `$` already renders
  `Columns<P>[P(1, 2)]` / `ColumnVec<P>[...]`, so it becomes source once the literal parses.
- A row literal needs nothing new: rows are values of T.

## Left (limits)
- in-place layout for known lengths, G29 per-length instances (Columns is always run-time length).
- M19g's compile-time stale-view check does not know `cv.x` (evaluator and -sanitize do).
- the language server's completion does not list a ColumnVec's columns.

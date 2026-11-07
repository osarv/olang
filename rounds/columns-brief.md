# Round "columns" (wt-columns, /home/user/wt/columns; opus high) - Columns<T> and ColumnVec<T>, structures of arrays

Read /home/user/review/rounds/finish-rules.md first: the rules of work for today (no full verify, builds through
/home/user/blk, one quick through vlock at the end).

## Decided by the user

- 2026-11-06 (QCS 3): a built-in structure of arrays - a prelude type the compiler lays out as one array per field of a
  struct T. 2026-11-06/07 (QCU): no computed (Zig-style) types; the name `Columns`.
- 2026-11-07: TWO types, as Array and Vec split today - the user: "dont we want column to act a lot like array and be
  laid out in memory in structs etc?", then "do two column types".
  - **`Columns<T>` acts like `Array<T>`**: its length is set where it is made (`Columns<P>(n)` rows as zero values,
    `(n, fill)`), it is an ordinary value - laid out in place inside a struct, a local or an element where its length is
    known where it is made (T7c, as a fixed array is), passed by value (G29's instances where a body decides on the
    length, as arrays), its length a constant where known; it never grows.
  - **The growable one acts like `Vec<T>`**: the name is `ColumnVec<T>` (mine: Vec is the growable rows, ColumnVec the
    growable columns); Push, Pop, Insert, RemoveAt, SwapRemove, Swap, Truncate, Clear move rows together; growth as a
    Vec's (handles as values, `grown`, early freeing of the old buffers).

## Details (the coordinator's, from QCS 3 - refine where building shows a better choice, recorded as yours)

- T is a struct; each field a column. `c.x` is field x's column as an array view (lane operators apply; a ColumnVec's
  goes stale after growth as a Vec view does - M19g); `c[i]` reads row i as a T (a copy), `c[i] = v` writes the row
  back; `c[i].x` reads one element without assembling the row where that is cheaper (yours); `for row in c` walks rows;
  Len, Sort(less) moving rows together; Copy, ==, Hash and `$` by rows; a field named like a method is an error at the
  instantiation (M19); a private field's column only in T's module (M6a).
- Conversions: a ColumnVec to a Columns (its rows copied into a fixed one) and back; from an `Array<T>` / `Vec<T>` of
  rows. Literals and comprehensions (`Columns<P>[...]`) come later through `FromIter` (QBU/QBW, the last round of the
  day) - leave a note in PROGRESS.md of what FromIter will need.
- The evaluator and `interpret` agree (a test it decides); reflection (T.Kind, T.Element); explain/doc show them.
- Measure against hand-written columns and an `Array<Particle>` on the references study's particle program
  (docs/refs-study.md; bench/ if it is there) - the point of the type is the vectorized column loop.

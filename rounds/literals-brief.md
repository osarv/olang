# Round "literals" (wt-literals, /home/user/wt/literals; opus high) - the type in front of every literal; FromIter

Read /home/user/review/rounds/finish-rules.md first (no full verify, no gates, no reviews; builds through /home/user/blk;
one `make quick` at the end through /home/user/vlock). The branch starts from wt-merge 1877245 (every round merged
today, type-level builders included).

## Decided by the user (2026-10-27; the full entries: grep QBU, QBW, QBX in .claude/memory/archive/decisions_log.md)
- QBU: the type in front of a literal or comprehension is the type of the value made: `Array<I64>[1, 2]`,
  `Array<F32>[f(x) for x in a]`, `Vec<String&>[w for w in words(t)]`, `set.Set<I64>[1, 2]`, an array of Vecs
  `Array<Vec<I64>>[a, b]`; the keyed form `C[k: v, ...]` (brackets, never braces - T13's removal kept) for a type whose
  builder takes entries (`MapEntry<K, V>`), so `Map<String, I64>["a": 1]`. `$` renders each so, so E11b (a value renders
  as source writes it) holds again for Vec, Map, List and the rest (today `$v` of a Vec writes `Vec<I64>[1, 2, 3]`, which
  is not valid source).
- QBW: one protocol - the type-level builder `FromIter(it)` (D19, built today), generic over `Iterator<T ? E>` with the
  iterator's errors passing through (G1a); no FromArray, no Collection/Keyed traits, no default literal. `C[a, b]` is
  `C.FromIter(<the elements' walk>)`, a comprehension hands its walk straight in (no array made), `T.FromIter(it)` is an
  ordinary call. Every std collection declares one (Heap's needs its less, so Heap has no literal); the compiler
  supplies Array's and Vec's, and their literals and comprehensions are built directly as today.
- QBX (declined): no target-typed literals - the type stays in front (parity with constructors, `Point(1, 2)`).
- Columns<P>[...] and ColumnVec<P>[...] through their FromIter: /home/user/review/rounds/columns-PROGRESS.md says what
  they need.

## Notes
- From the builders round (/home/user/review/rounds/qbt-PROGRESS.md): generic builders work today
  (`fn Bag<T>.FromIter<I Iterator<T ? E>, ? E>(it mut I&) Bag<T> ? E`); a trait cannot yet require a FromIter generic
  over the iterator (T35) - take a concrete iterator type or relax T35 for builders; decide, record it as yours.
- Performance is the bar: an array literal and a comprehension into an Array or Vec compile to exactly today's code
  (bench IR identical for them); a comprehension into another container makes no temporary array; a literal's length
  known to the compiler is known to FromIter where it can use it (a reserve).
- The migration: a tool in `olang fix` (tools/, its README line, fix's table, DEPENDENTS.md) rewriting every `T[...]`
  literal and comprehension to the new form - idempotent, run over std, compiler, tests, checks, tools, bench, fuzz,
  docs' code blocks where olang fix reaches. Commit the tool's output separately from the compiler change: other
  rounds (sec8r2, tidy2) run at the same time and the coordinator re-runs your tool after merging them.
- Spec first (SPEC's literal and comprehension grammar, E27, E11a/E11b renderings, D19's FromIter note), the evaluator
  and `interpret` agreeing (a test each decides), records, DEPENDENTS (the formatter, LSP lists, editors' syntax, help,
  READMEs, goldens). The seed will need regenerating after the merge - leave that to the coordinator, as the builders
  round did, unless you need it to bootstrap.

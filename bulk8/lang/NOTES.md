# Bulk review 8 - lang

## Progress
- Read SPEC T19b/R3b/S13i, HISTORY errdata2.
- T19b payloads: done - stores (loop + churn into outer local, Vec, struct, Map key, mut global, lambda capture,
  task argument), raised-by-name (refs copied, names checked), join (F1), narrowing (F2), first raise (F3).
- Next: ArgumentError text / contracts, test harness payload, struct patterns, builders, literals/FromIter, packed,
  Columns, migrations.

## Findings
- F1 HIGH NEW (T19b, errdata2; runtime __olang_join_tasks): f01_joinown_payload.olang. A `try join` block whose own
  statement raises a payload error while its tasks fail too: P4b says the block's own error leaves and the tasks' are
  dropped, but __olang_join_tasks always attaches the earliest failing task's record on top of the payload stack. The
  clause taking the block's error (AErr.Own) pops the task's record (AErr.Bad's payload) - the build segfaults reading
  it (-debug -sanitize), interpret stops "it reads the payload of a case the value does not hold". With the same word
  on both sides the program silently prints the task's payload ("outer AErr.Bad("task 0")" where "own" was raised).
  Where the block's error carries no payload the task's record is left on the stack (a leak per join; LIFO kept).
- F2 LOW NEW (T19b narrowing): f02_errpayload_index.olang. After `if l == PErr.Bad` a payload array field read and
  indexed in one expression (`l.data[2]`) is refused "l may hold an error that has no field data"; `l.data.Len()`,
  `l.msg` and `d := l.data; d[2]` are accepted. An enum's payload (`e.data[2]`) works.
- F3 LOW-MEDIUM NEW (R3b, settleRaised): f03_firstraise_order.olang. SPEC R3b: the module's first raise in source
  order settles a raised error's field types. When the first raise's body calls (before its raise) a function that
  raises the same name, that later raise is met first and settles the type: X becomes (v I64) and b's I64 raise is
  accepted; without the call (scratch/r4.olang) X is (v I32) and b is refused. HISTORY says only a cycle can do this;
  no cycle is needed. So adding a call changes an error's payload type and what compiles.
- F4 LOW NEW (tools/builder_migrate): f04_builder_migrate_caseclash.olang. `fn RedCol() Col` with Col an enum with
  case Red is moved to `fn Col.Red()` (the type's camel-case word dropped), which D19 refuses ("'Red' is already a
  case of Col"). The tool states it keeps the long name where the short one would clash; it checks reflection's names,
  E36's and From (m3: MaxMeters, NamePt, FromOp kept) but not the enum's cases. olang fix then stops with "cannot run
  tools_errors_migrate" (status 2) and the file left half-migrated.
- F5 MEDIUM NEW (tools/literal_migrate): f05_literal_migrate_imported.olang (+ f05/bag.olang). On code of today, a
  literal through an imported type's FromIter (`bag.Bag[a, b]`, E19) is read as the old element-typed form and
  rewritten `Array<bag.Bag>[a, b]`: silent meaning change (prints bag.Bag(5) before, an array of two Bags after); with
  number items it stops compiling. A type of the file itself with FromIter is left alone (mig/l1.olang). olang fix
  runs this tool on every file, so fix is not idempotent on today's code.
- F6 LOW NEW (D19, D19a): f06_builder_bare_generic_owner.olang. A builder of a generic type declared with a bare owner
  (`fn Bag.mk2(n I64) Bag<String&>`) is accepted, though D19 says a generic owner is written with its arguments; D19a's
  error for `fn mk2(n I64) Bag<String&>` suggests exactly that bare form ('fn Bag.mk2(...)'), where the instance form
  `fn Bag<String&>.mk2` is what the spec says. Calling it through an instance (`Bag<I64>.mk2(7)`, which should be an
  error or the Bag<String&> builder) stops the build: "the self-hosted compiler cannot build this yet: it does not
  check a generic name as a value yet". Called bare (`Bag.mk2(7)`) it works (scratch/fi2.olang).
- F7 LOW NEW (T7e, M19g): f07_columnvec_stale_view.olang. A ColumnVec's column view (`xs := v.X`) used after a growth
  in the same function or through a call given the table compiles; T7e says such a view is good "until it grows, as a
  Vec's View() is", and M19g refuses exactly this for a Vec (scratch/cv3.olang). A plain build writes and reads the
  retired buffer silently (memory-safe, a lost write: prints "99 1"); -sanitize and interpret stop it. Either M19g
  should cover column views or T7e should say they are the run-time checks' only.

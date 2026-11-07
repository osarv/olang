# Bulk review 8 - lang

## Progress
- Read SPEC T19b/R3b/S13i, HISTORY errdata2.
- T19b payloads: done - stores (loop + churn into outer local, Vec, struct, Map key, mut global, lambda capture,
  task argument), raised-by-name (refs copied, names checked), join (F1), narrowing (F2), first raise (F3).
- Done (sound unless a finding says otherwise): ArgumentError text (entry, through any, baked/decided/!), struct
  patterns (permission of bindings, unique fields counted as mentions, packed fields, nested, evaluator), builders
  (F4 F6, migration of generic/constrained/value/test-target uses: mig/m1-m3), literals and FromIter (sets, lists,
  deques, maps, user FromIter failing with payload errors, generic C[...], baked sets - F5 F8), packed structs (bit
  widths, signed, enums raw/positional, I70, arrays at bit offsets, C import of packed bitfields by value and by
  reference, lending refused), Columns/ColumnVec (copies independent, Sort, reference fields' placement, unique and
  destructor records refused - F7).
- Payload stack: errdefer and defer catching their own payload errors while one is in flight, a generator raising
  into its for-in, a spawned call's own clause, an export fn from C 2M times (flat 2.2 MB), a test letting a payload
  error out then catching later, `!` - all agree build/interpret (scratch/ps1, t1, xlib/). Recoding payload values
  between sets, Map keys and == by payload (scratch/rc1), error values stored past churns (ok_payload_store.olang).
- Builder rules: extends does not inherit, E36 names refused, T30b's error-set agreement (scratch/bd1, bd2).
- Not covered: payload records left by a test that fails or a `!` in a test (a leak only, LIFO kept); C imports of
  packed records under interpret (refused by design); json of payload errors; deprec/asm/sec8 rounds (others').
- Done.

## Minor, not numbered
- `olang test -interpret`: a `!` failing in a test prints no "raised here" trace line where the build does
  (scratch/t1.olang).
- An E11b error in a join made M5a also say `nothing here is reached through 'io'` though io is used
  (scratch/cv4.olang before its fix) - one mistake, two errors.
- A `mut PErr&` receiver gives T24, then T20 and T19b errors for the same cause (scratch/em1.olang).
- O25i's advice for a unique local suggests `x.Copy()` (scratch/u2.olang), which a unique type never has.

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
  runs this tool on every file, so fix is not idempotent on today's code. Second shape (f05b_literal_migrate_typevar.olang):
  a generic's `C[3, 1, 2, 1]` (E19's own example of a type variable in front) is rewritten `Array<C>[...]`; the
  set instance stops compiling. The tool's doc lists both as deliberate ("an import's type through its alias, a type
  variable") - the reading is right for old code and wrong for today's, and fix cannot tell them apart without asking
  whether the type declares FromIter (it does ask for the file's own types).
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
- F8 LOW NEW (E19, T13b): f08_vec_literal_unique.olang. `Vec<Tok>[Tok(3), Tok(4)]` and `Map<I64, Tok>[1: Tok(5)]` of
  fresh unique values are refused inside the prelude (Vec.FromIter / Map.FromIter "needs a copy ... call it with a
  reference ('Tok&')" - advice that does not fit a literal), while `Array<Tok>[...]` and `v.Push(Tok(3))` compile. The
  literal of fresh values could hand each one on (it is the one holder of the items array). SPEC E19's last paragraph
  still says Vec's and Array's "literals and comprehensions are built directly", contradicting its first bullet (Vec
  through FromIter, e4875ee). Related, same rule area: a FromIter taking a concrete iterator type (E19 allows
  `ArrayIter<I64>`) has literals but its comprehension is refused "expected ArrayIter<I64>&, found Generator<I64>"
  (scratch/lit2.olang) - E27 does not say comprehensions need a generic FromIter.
- F9 LOW-MEDIUM NEW (T19b, check's payloadBad): f09_payload_text_inside.olang. T19b admits text, arrays by value,
  error values, "and enums and structs of those" as payload fields; a String field is accepted, but a struct holding a
  String, an enum case holding one, an `Array<String>` and an error value whose payload holds text are each refused
  "payload field ... holds a reference". Text counts as a value only at the top. So a wrapping error
  (`Wrap(inner PErr)`) works only while PErr's payloads hold no text (scratch/nest2.olang works) - and every std error
  carries text (os paths, json keys), so no std error can be wrapped.

# Review of the evening's merges (master 3691a1d), 2026-10-09 ~21:45-22:25 CEST

Compiler: `/home/user/wt/s3c/build/out` (3691a1d). Reproducers in `repro/`, scratch programs in `work/`
(`work/t.sh FILE [b d i v]` builds and runs one under `-b`, `-d`, `-i`, valgrind). "Pre-existing" was checked against a
compiler built from `edf8238` (the commit before the permissions merge) in `old/`.

## CONFIRMED, by severity

### 1. RunOnStack from a task allocates into the real program scope, unlocked - heap corruption (`repro/07-runonstack-program-scope-race.olang`)
Area: portgaps S1 x P2. Each task reaches the program's scope through a private stand-in (P2), but a RunOnStack thread
starts with `@__olang_prog_scope` at its initial value, `@__olang_global_scope` itself (codegen.c:6917; nothing in
`@__olang_stack_main`, codegen.c:9021, sets it). f's from two tasks - or one task's f and the main thread inside the
join block - bump one arena with no lock. Seen: `corrupted elements seen: I64[112, 0, 44, 45]` (1 run in 3 here; 4 of
4 lanes in another); `-r` reports the race in `__olang_stack_main` frames.
Fix: put the caller's `@__olang_prog_scope` in `%olang.stackrun` and store it in the new thread's TLS before calling f
(the caller is blocked in `pthread_join`, so its scope/stand-in is free for the thread to use).

### 2. A temporary stored through a reference field of a BY-VALUE parameter is built in the callee's own scope - use-after-free (`repro/03-byvalue-param-build-uaf.olang`)
Pre-existing (same output on edf8238), not from the permissions batch. `fn grow(b Box) { b.n.next = N(9) }` (Box holds
`n mut N&`): the IR allocates N(9) from grow's own `%olang.scope` (closed at its return), not from `%sarg0` (b's
O4b scope variable), and stores it into the caller's node. `-b`/`-d`: `expected 9 8, got 2999 8`; `-i`: `9 8`. The
checker knows the target's scope (storing a local there is O25's error), so it is the placement (cgWhereBuilt /
landing for a member of a member of a by-value parameter). `b = Box(N(77))` in the same position is built correctly
(work/bv2.olang), and `growRef(n mut N&)` is fine.
Fix: a target reached through a by-value parameter's reference field lives in that parameter's scope variable;
see also P1 below, which must be fixed with it.

### 3. Compiler crash: `==` on a struct that reaches its own type through an array reference (`repro/01-eq-recursive-struct-crash.olang`)
Regression from wt-s3std (E10: `==` through an array reference compares contents). `type S struct(xs Array<S>&)`,
`a == b` -> "internal compiler error ... segmentation fault" in `-b`/`-d`: cgDeepEq (codegen.c:2727 branch, via
cgDeepEqSlice at ~2574) expands S's fields inline, and Array<S>& recurses into S again without bound (gdb: 1000s of
cgDeepEq/cgDeepEqSlice frames). edf8238 compiled it (identity, printed false); `-i` prints true. Enums are fine (their
equality is a memoized function, cgChoiceEqFn). Also: with genuinely cyclic data (`xs[0] = s`, work/eq1.olang) the
interpreter itself segfaults instead of "it recurses deeper than -i allows" - ctDeepEqPublic has no depth guard.
Fix: emit a struct's deep equality as a linkonce_odr function per type (as cgChoiceEqFn), at least when the type can
reach itself; give the evaluator's deep equality the same depth guard as calls. (Data cycles themselves diverge by the
E10 rule - "no cycles walked" - which may deserve a sentence in E10.)

### 4. A read-only List/Map reference - or an immutable global List - is written through a copy of its handle (`repro/02-readonly-list-written.olang`)
wt-s3std (handles) x the permissions batch (T25b). `fn look(l List<I32>&) { c List<I32> = l; c.Push(99) }` then
`look(G)` with `G := I32[1, 2].ToList()` immutable: `assertion failed: G changed: 3` in -b, -d and -i. The value copy
is a writable local, and its only field `s mut listState<T>&` names the shared record; shallow permission lets it
through. Same for Map (`c Map<K, V> = m; c.Remove(k)`, work/perm3.olang). (A by-value List parameter cannot Push at all - O17 - so it is only the copy-out from a reference.)
This breaks T25b's "read-only never converts to writable" for the two most used collections.
Fix (direction call): make List/Map reference-only (C11-style: a value copy out of a reference is an error; `Clone()`
is the copy), or give a value copied out of a read-only reference a read-only handle field.

### 5. D9b: the evaluator copies a by-value array argument that the run time shares (`repro/04-d9b-evaluator-copies.olang`)
Permissions batch. A generic's by-value array parameter its body never writes is the caller's {len, ptr} at run time,
whatever the argument is; ctCallBind (comptime.c:1577) shares only for `OperandIsLvalue(a) && !ctIsRef(a->type)`, so a
reference or slice argument is copied (ctFitBoundary). With a write through another parameter:
`-b`: `baked 5 5 70 - run 70 70 70`; `-i`: `baked 5 5 70 - run 5 5 70`. An `assert viaRef() == 5` is decided true
while compiling and dropped, though the program computes 70.
Fix: share when the argument is a reference or a slice too (deref it), i.e. whenever the generated code passes the pair.

### 6. ListIter goes on after the list shrinks - out-of-range chunk reads, never ends (`repro/06-listiter-after-clear.olang`)
Pre-existing (edf8238 segfaults too); std/prelude/list.olang:312 (and `enter()`, ~330). `Next` tests
`it.at == it.list.count`; after `Clear()` or `Pop()` below the iterator's position the count is never met again, and it
indexes `it.list.chunks[it.k]` past the chunks made (unchecked). `-b`: 1001 elements and counting; `-d`: segfault;
`-i`: "it indexes a null array". MapIter in the same situation is fine (work/mapit.olang).
Fix: `if it.at >= it.list.count` in Next and enter() (RunFrom already uses `>=`).

### 7. `os.RunOnStack` with a small size aborts in `-d` builds (`repro/05-runonstack-small-debug.olang`)
portgaps S1. `RunOnStack(20000 or less, f)` -> "could not start a thread with that stack" (134) under `-d` / `-t -d`
(the std/os test "RunOnStack(0, ...)" fails under `-t -d`, work/rost.olang), fine under `-b` and `-r`. The floor
(codegen.c:8984) is `max(sysconf(_SC_THREAD_STACK_MIN), 16384)`, and glibc needs guard + static TLS + 2KB. Static TLS
is 0x4600 bytes in a `-d` link against 0x448 with LTO: each object's .tbss is 0x460 - the runtime's `linkonce_odr
thread_local` globals (`@__olang_pool` is 1KB) carry no `comdat`, so a non-LTO link keeps every object's copy of their
storage (16 objects here; the same holds for the non-TLS runtime globals in .bss).
Fix: emit runtime linkonce_odr globals in comdats (`$x = comdat any`), and/or retry pthread_create with a larger stack
on EINVAL (or add the TLS size, `__pthread_get_minstack`-style).

### 8. `x mut T = v` (a local of a type variable) is an error when T is bound to a number (`repro/08-local-mut-typevar.olang`)
Permissions batch. T2 says a leading mut "is valid ... on a type variable (which then stands for a writable reference
when bound to one)", and that holds for parameters (`y mut <T>`) and fields (`v mut T`), but localPermission
(semantic.c:14269) checks `BASETYPE_TYPEVAR` on the already-instantiated type, so `keep(3)` reports
"error[D11a]: a local is always writable - 'mut' is for a reference, and I32 is none". Over-rejection only.
Fix: skip the D11a error when the written type is a type variable (as declTypePermission does).

## PLAUSIBLE (traced, not reproduced)

- **P1. paramMayWrite misses builds through a by-value parameter's reference fields** (semantic.c:8656). For a
  by-value parameter it returns `pv->paramWritten`, which only OperandIsMutableLvalue on the parameter's READ_VAR sets;
  `b.n.next = ...` goes through baseWritable on the reference `b.n` and never touches b. So `grow(b Box)` above counts
  as "never builds into b's scope", and bindCallScopeVars skips ERR_BUILD_INTO_UNKNOWN_SCOPE / the derived-scope
  conversion for its callers. Masked today by #2 (the callee builds in its own scope anyway); once #2 builds into
  `%sarg0`, a caller passing a Box whose references sit in a derived or ambiguous scope gets no error and a wrong scope.
- **P2. os.Exec leaks a descriptor when the second memory file fails** (std/os.olang:165ff): `defer close(...)` now
  follows both `memFile()` calls, so `errs = try memFile()` failing leaves `out` open (before the change each had its
  defer right after it).
- **P3. Shallow permission and user handle types**: #4's mechanism applies to any struct whose private field is a
  `mut` reference to shared state - a read-only reference to it gives no protection once copied out. Worth stating in
  T25b next to "shallow, as in C".

## What was checked and found clean, per area

1. **Permissions (wt-perm)**: D9b copies decided right in -b/-d/-i for writes by index, slice, `Sort`, atomics, a
   writable local, spawn target, parallel assignment, `++`, `defer`, a lambda reached through a function value, and on
   constant literal arguments (no write to .rodata); unwritten parameters share; returned arrays copied. Writes to
   immutable globals refused in every form tried (field, element, slice, method, atomic, borrow); captured values
   stay read-only; match bindings are copies in all three modes (writing one never touches the subject); reassigned
   read-only reference fields are scope-checked (O20/C2d); a constructor reassigning a punned parameter agrees in all
   modes.
2. **Parked workers' shared pool, GemmWorkspace (wt-poolfix)**: every shared-pool list operation is under
   `@__olang_shared_lock`, only the byte count and idle count are atomic, no lock-free lists (no ABA), put/unlink keep
   `bytes` consistent; TSan clean on 8 tasks x 30 joins of 4KB-2.4MB arrays with the main thread allocating inside the
   join, and with RunOnStack threads inside tasks; panels grow by `grown()` as documented.
3. **Port gaps (wt-portgaps)**: RunOnStack nested, in tasks, in tests (a failing assert two deep fails only that
   test, destructors unwound; `fail`; next test runs), -i/evaluator agree; OnCrash message on stack overflow of the
   main thread, a task and a RunOnStack thread, and on abort; std/ffi scalars, arrays written back, short words
   stopped; RemoveAll never follows a link (also under -i; `link/` is refused with NOT_DIR); MkTemp; Exec without
   capture; O8a (nothing assumes more than 8 for an aggregate); Format on every signed type's minimum in bases
   2-36, round-trips, baked = run = -i.
4. **linalg2**: differential tests against a naive reference, exact integer data: GemmBatch 3,000 small + 300 large
   trials in F64 and F32 - all Triangular modes, diagonal offsets -148..148, both transposes, padded strides, groups x
   members, 1-3 threads, NaN above a's diagonal for Left (never read); GemmPatches 2,300 trials (C<K and C>=K packing,
   stride 1-3, pad 0-2, images smaller than the kernel) plus Im2col; GemmAct 400 trials, all activations, `pre`, beta -
   bit-identical to Gemm + AddRow + Activate. G9a null inference. (`-i` cannot run these: it runs out of memory, the
   known stage-1 limit.)
5. **s3std**: List/Map Clone (empty, after Pop/Clear/Remove), handle sharing, `Array<List<T>>(n, fill)`; `==` on
   array references - null, zero value, `Array<T>(0)`, empty literal, empty slices, nested, NaN, -0.0, struct fields,
   Map keys by contents - agree in all modes; located checks print the same FILE:LINE built, -d and -i; `case _` in
   value and statement matches, with guards, in constant matches, on null enum references; keyword method names.

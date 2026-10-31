# Bulk review 4: 1dd87cf..f0e0743

Worktree /home/user/wt/rv4 at f0e0743 (detached, no source changes). Compiler: `build/olang.q` = compiler/olang.olang
built `-quick` by the optsurvey worktree's compiler (same compiler/ and std/ sources as f0e0743), std read from rv4.
Reproducers are in `repro/`. Run as `build/olang.q [MODE] repro/FILE.olang`.

## Confirmed findings

### F1 - HIGH, section 8 / S21: `become` passes a run-time-length array built in a closing scope to a generic's by-value type-variable parameter (use after free)

`repro/b13_generic_array.olang`:

```
fn walk<T>(a T, n I64) I64 {
    if n == 0 { ... return a[0] + a[1] ... }
    b := Array<I64>(n + 2, n * 10)     # run-time length: storage in the frame's arena
    become walk(b, n - 1)
}
```

- Expected (S21: "an argument is storage of a scope the become closes" is a compile-time error): error at `b`.
- Actual: accepted. `-O3`/`-debug` print 20 by luck; `-debug -sanitize` aborts with "use after scope closed";
  `interpret` stops with "it uses storage after the scope it was made in closed". So the evaluator and the run time
  agree it is a UAF, but the checker lets it through.
- Cause: the become check in `scope.olang` `call()` (the `if c.Tail` block, ~line 6477) looks only at the callee's scope
  variables (`beta[v]` must be Program or a caller's `Term.Var`). A bare type-variable by-value parameter bound to a
  run-time-length array of plain data (D9b: "the caller's array" unless the body writes it) has no scope variable - an
  array of numbers "holds no references" - so nothing is checked, though the parameter is a view of the caller's
  storage. Text (`String` bound to T) is the same shape. A non-generic by-value array parameter is not affected (fixed
  lengths are copies, run-time ones are refused by QP3). Fix direction: in a become, a by-value argument whose type is a
  run-time-length array (at any level reached without a reference) must be storage the function was given or the
  program's, as for a reference - e.g. judge it as `s.val(arg)` and refuse an Existing/Fresh value in a block term.
  Explicit fixed-length siblings (`b1`, `b2`) and the struct/closure/handle/any cases (`b3`, `b4`, `b9`, `b14`) are
  refused or correct.

### F2 - HIGH, S8e / T2c (pre-existing, kept by the checker batch's relaxation): deferred code is checked under a null narrowing that a later assignment ends - a never-null read of null, segfault

`repro/n1_defer_null.olang`, `repro/n2_errdefer_null.olang`:

```
if p is not null {
    defer io.Println("deferred reads " $p.V)!    # checked with p narrowed
    p = null                                    # kills the narrowing only for what follows
}                                               # the deferred read runs here: p is null
```

- Expected: an error at `p.V` in the deferred statement (T2c: nothing is read through `T?&` unnarrowed), or the
  narrowing ended for deferred code when anything later in the block assigns `p`.
- Actual: compiles; the program segfaults (status 139) in every mode - not even T2b's "null reached" trap. `errdefer`
  the same (n2). The Oct 26 compiler (tensor worktree) behaves the same, so it predates this range; the checker batch's
  "a narrowing holds until a statement assigns the local" (stmtsOf's kill, check.olang ~4700) is what keeps it open.
- The case-narrowing twin (`repro/n3_case_defer.olang`): `if e == Shape.Circle { defer io.Println($e.r); e =
  Shape.Sq(2.0) }` prints `deferred r 1.5` though `e` is a `Sq` when it runs - memory-safe only because the payload is a
  copy, but it reads a field of a case `e` no longer holds.
- Cause: a `Defer` statement is checked with the facts holding where it is registered, but runs at the block's close,
  after every later statement. Fix direction: check deferred code (and errdefer) with only the narrowings that no later
  statement of its block (and of enclosing blocks up to the defer's) assigns - i.e. treat "a later statement assigns
  it" as a kill for deferred code, or kill at the registration point any narrowing whose local the rest of the block
  assigns (`assignsName(rest, path)`; `fr.rest`/`fr.restAt` are already kept).

### F3 - MEDIUM, S8d / T17a: a `mut` method or a writable-reference argument on a narrowed payload writes a hidden copy - the write is silently lost

`repro/n5_whole_mutate.olang`, `repro/n6_whole_mutate_param.olang`, `repro/n7_field_mutate.olang`:

```
type Shape enum { Round Circle, Sq(s F64) }
e := Shape.Round(Circle(1.0))
if e == Shape.Round {
    e.Grow()                      # fn (c mut Circle&) Grow() { c.r = c.r * 2.0 }
    io.Println($e.r)              # 2
}
io.Println($e)                    # Shape.Round(Circle(1)) - the growth is gone
```

- n6: `fn bump(e mut Shape&) { if e == Shape.Round { grow(e) } }` - the caller's value is unchanged.
- n7: the same through a field-list case, `case Box(c Circle)`, `e.c.Grow()`.
- Expected: either the write reaches the enum's payload, or an error as for a direct store - `e.r = 9.0` and `e.c.r =
  7.0` already are S8d errors ("a narrowed payload field is read, never written").
- Actual: accepted, write lost (a miscompile in the sense of K1/E12: a writable borrow of a copy no one holds). The Oct
  26 compiler does the same, so it predates the range; the checker batch's walk is where narrowings are made now.
- Cause: `narrow()` (check.olang ~20414) copies the payload's fields into Binding locals at the narrowing, and
  `narrowedField`/`wholeNarrowed` make `e.x`/`e` read those copies; a writable borrow (`mut` receiver, `mut T&`
  argument) of such a copy is not refused the way a store is. Fix: refuse a writable borrow of a narrowed copy with the
  same S8d error (or E31b's "a copy ... is written and lost"), or lend the payload place itself.
- Diagnostic, same rule: `NarrowedWrite` (msgs.olang:2306) always says `e = Shape.Circle(...)` - a fixed example, not the
  local's name and case (n7 shows it for `e.c.r` on `Shape.Box`).

### F4 - MEDIUM, S21 / O16: a destructor instance built in the function's frame through a callee's by-value result is destroyed before the become's call

`repro/b8_dtor_via_result.olang`:

```
type Res struct(n I64) { n } destruct { io.Println("destroy " $n)! }
type Wrap struct(r Res&) { r }
fn mkw(n I64) Wrap { return Wrap(Res(n)) }   # the Res is built in mkw's result scope = f's frame
fn f(n I64) I64 {
    if n == 0: return 0
    k := peek(mkw(n))
    become f(k - 1)
}
```

- Expected (S21: "the function holds, or builds in one of its blocks, an instance whose destructor would run as that
  block closes ... is a compile-time error"): error.
- Actual: accepted; output `before become, k 2 / destroy 2 / before become, k 1 / destroy 1` - each destructor runs
  before the next call, where `return f(k - 1)` would run them after it. Build and `interpret` agree.
- Cause: check's `tailSets` (check.olang ~18700) looks only at locals' types (`holdsDtor`); the scope pass sets
  `dtorBlock` (scope.olang ~6494) only for a call whose result is a *reference* to a destructor type (`s.isRef(ty) and
  s.destructsAt(...)`). A by-value result (here `Wrap`) that holds such a reference, built into a block scope, is
  missed - as would be any value type reaching a destructor type through references. Fix: use `holdsDtor`-style
  reachability on the result type (`isBlockTerm(beta[rv])` and the result type may hold a destructor instance).
  `checks/cases/becomedtortemp.olang` covers only `Res(n).n`.

### F5 - LOW-MEDIUM, S18c: a noreturn call before an assert is not "a statement that may leave", so a valid program is refused

`repro/a1_noreturn_before.olang`:

```
fn check(x I64) {
    if x > 0 { os.Exit(0) }
    assert false, "only reached for x <= 0"
}
fn main() { check(1) ... }
```

- Expected: compiles (runs with x > 0 end at `os.Exit(0)`, a normal end; the assert stays a run-time check).
- Actual: `error[S18c]: this assertion is false, evaluated while compiling`.
- Cause: `typed.AlwaysReached`'s `stmtLeaves` (typed.olang ~1070) counts return/raise/jump/suspend and fallible tries,
  but not an `Eval` of a noreturn call (D8e: "a call leaves for D10a"); SPEC S18c's list ("every run but those a failed
  check, `unreachable` or `!` ends", "may leave the block ... a `return` ...") also omits it. Spec and code both need
  "a call of a noreturn function" among the statements that may leave (D10a's `leaves` already knows it).

### F6 - LOW, R22 (std): `bitset.BitSet<T>(bits)` is a public constructor taking any bits; a walk of it then ends the program

`repro/std1_bitset_ctor.olang`: `s := bitset.BitSet<Color>(12)` (3 cases) - `Len` 2, `Bits` 12, and `for c in s`
aborts with `std/bitset.olang:43: unreachable reached`. FromBits checks the range; the constructor (which is how
`BitSet<T>(...)` is written, C2) does not, so the bits past the last case reach `caseAt`'s `unreachable`. R22: "No std
function may ever exit" on a caller's mistake. Fix: a contract on the constructor (`[bits & ~mask<T>() == 0]`, failing
with ArgumentError) or mask it.

## Diagnostics found on the way (not soundness)

- G39/G40, `repro/g1_attr_mut.olang`: an attribute whose type holds a `mut` reference (`@Holder(Cell(1))`, `Holder(c
  mut Cell&)`) can never be read: `T.Attr<Holder>()` is refused with `error[T25c]: 'attrGot' writes through or keeps its
  parameter 'a', and this Holder is a read-only copy - pass one of its own` and a note into std/prelude/reflect.olang.
  Sound (no write into the baked global gets through), but the error names a prelude internal and asks for something
  the user cannot do; it should be said at the attribute (an attribute's value is read-only data: no `mut` reference
  in its type) or the Attr call.
- S8d `NarrowedWrite`'s fixed `e = Shape.Circle(...)` text (F3).

## Checked and found sound

- become (S21): references/text/handles/closures/anys/structs-with-references built in the function refused
  (b3, b4, b14); by-value parameter lent to a reference parameter refused (b9); fixed-length arrays by value (b1, b2,
  16 x I64 with the callee's own frame use) correct in -O3/-debug/-sanitize/interpret; defer in an enclosing block
  refused (b6); a destructor local or a ctor temporary refused (b5); become inside a for-in over a generator whose
  frame is elided (D18e), 200k deep, correct in every mode and interpret/baked (b10, b11); evaluator baked globals and
  top-level asserts over 100k-step mutual recursion (b7); error propagation through become chains, baked vs run (b12);
  a failed check deep in a become chain in a test build unwinds and the next test runs, -sanitize clean (b15); -race
  and -debug -race builds.
- Narrowing (S8d/S8e): kills on assignment inside nested blocks, loops (the loop statement assigning kills before it),
  clauses, and post clauses; `and`/`or`/`not`; after-loop narrowing; a narrowed field store is refused (n4). Only the
  deferred-code (F2) and copy-borrow (F3) holes found.
- S3 (calls doing nothing): stores through a `mut` reference, a holder's reference field, a slice of a reference
  parameter, a local alias of a parameter, `Set` all count as effects (s3_idle).
- S18c: loop bodies that may run zero times are not "always reached" (a3); fixed-local evaluation is not fooled by
  writes through a borrow, a struct reference or a slice (a4-a6: run-time aborts, as they should).
- S17a: a mutable global or an extern makes a top-level assert an error (t1, t2).
- E40 Place.Here: direct, nested default (outermost call), through an `any` (trait default), generic instances (one
  place), global initializer, lambda - build and interpret agree (e1).
- G41 visibility across modules (r1/): `lib.Rec.Methods` from main omits lib's private method; lib's generic over its
  own type sees it, over main's type does not; `lib.Fields(...)` likewise for fields; `lib.Functions` gives only exported
  non-generic functions. Calling a `mut` method descriptor on a read-only value or an immutable global is refused (g2).
- std/order over a recursive enum through references (std2); std/bitset otherwise as documented.
- B20 profile: handler calls nothing (llvm.memcpy only), bounds its walk to [sp, top) with alignment and rising checks,
  reserves with one atomic add, publishes the header with release; per-OS-thread timers (worker loop, run-on-stack
  thread), a pid check so a forked child writes nothing; the record key and object names include the profile mode
  (`buildInputs` " prof", `.prof` suffix), so no IR or object of a profile build is reused by a plain one. Works on a
  program with 8 tasks (p1).

## Suspected, not reproduced

- S21 / free.olang: a narrowed payload copy (`narrow()`) holds the payload's references; if a callee lets go of the
  enum's old value (free.olang's early freeing of a sole place) while the copy is live, the copy dangles. Not built.
- S3: `Callee.Helper` (Equal, Hash) counts as no effect, but `==` calls a user `Eq` at every depth (E10), which may have
  effects - a call statement whose only effect is through such an `Eq` would be wrongly refused. Over-rejection only.
- B20: the handler's 1 KB `frames` alloca is on the interrupted stack (no SA_ONSTACK): a sample landing near a thread's
  stack limit could overflow where the program would not have. `__olang_prof_stop` may run while another thread's
  record is reserved but not yet published; the reader stops at the first zero header and drops the complete records
  after it (a few samples lost at exit).
- scope.olang `component()` caps a cyclic component's fixed point at 20 rounds (pre-existing; bulk review 1's F3 fixed
  only free.olang's). A 30-function cycle propagating an `outlives` obligation was still refused correctly, so not
  reproduced, but the cap remains a "cut at a round count".
- `fuzz` mode (B19) is not in `buildInputs` (olang.olang ~662), so a `-fuzz` build may reuse a plain test build's module
  records - probably harmless (the records hold IR, which fuzzing changes only through compile flags and the root's
  harness, and objects carry `.fuzz`); outside this range, not tested.

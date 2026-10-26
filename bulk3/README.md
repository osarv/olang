# Bulk review 3: ea0a6de..2960c67 (94 commits)

Read-only review of master 2960c67, built in /home/user/wt/rvb3 (`make build/olang`, bootstrapped from the seed).
"Older" was checked against ea0a6de, built in /home/user/wt/rvb3old (removed once done). Every reproducer is under
`repro/`; `repro/held/` keeps the programs of attacks that held up, for re-running. Run a reproducer as
`build/olang FILE`, `build/olang -debug FILE`, `build/olang -debug -sanitize FILE` and `build/olang interpret FILE`.

## Findings, most severe first

### 1. CONFIRMED, NEW (D13d): a do-while loop hides what follows it from definite initialisation

`repro/d13d_dowhile.olang`, `repro/d13d_dowhile_zero.olang`.

```
fn probe() I64 {
    n Node&            # never null, no zero value
    i I64 = 0
    do { i++ } for i < 3
    return n.v         # compiles
}
```

compiles; -O3 prints garbage, `-debug` segfaults, `interpret` stops with "it reads through a null reference". With a
type that has a zero value (`p P`, `P`'s zero `P(7)`) no zero is written: -O3 prints undef garbage, `-debug` stack
junk (0 1 2), `interpret` 0 - three answers, none of them 7.

Cause: `compiler/definit.olang`, `Stmt.Loop`: `if not breaks(body, body.Id) { return dead() }` asks only the body; a
`do { } for c` is lowered with its condition (and so its only `break`) in the post clause. The loop is taken for one
that never ends, everything after it for dead code, so no read after it is found, the local is judged definitely
assigned and lowering writes nothing for it (`Local.Unset`).

Fix: `breaks(body, id) or breaks(post, id)` there (stmtBreaks already does it for a nested loop).

### 2. CONFIRMED, NEW (D13d): a `break` inside an expression the definit walk does not look into hides what follows

`repro/d13d_hidden_break.olang`, `repro/d13d_hidden_break_ref.olang`, and `repro/d13d_breaks/*.olang` (one shape
each, all accepted by the compiler).

```
fn probe(a Array<I64>&) I64 {
    n Node&
    i I64 = 0
    for {
        io.Println($a[try g(i) catch { break }])!     # the loop's only break
        i++
    }
    return n.v                                       # compiles: segfault under -debug, garbage at -O3
}
```

definit has its own `breaks`/`exprBreaks` (not check's), which looks into `Try`, `Seq`, `Match`, `Cond`, `Call`
arguments, `Prim`, `Promote`, `Away` and the statements `If/Block/Loop/Let/Eval/Assign/Yield/Join` only. A break in a
catch clause inside an index (`Read` of an `Elem` place), a slice bound, an array literal item (`Make`), a `$`
rendering (`Text`), a constructor's argument read as a field (`Read` of a `Field` of a `Temp`), a `return` value, an
`assert` condition is missed (`nested.olang`: the same, after an inner loop with a break of its own). The loop then reads as never
ending, exactly as in finding 1. Accepted shapes: `text`, `arraylit`, `slice`, `ret`, `assertc`, `fieldread`,
`nested`.

Fix: one exhaustive walk - every expression and place kind, every statement kind (Return, Assert, Exit's message,
Spawn, Reraise) - or reuse check.exprBreaks if it is complete. A cheap backstop: treat a loop whose body holds any
`Try` with clauses as one that may end.

### 3. CONFIRMED, NEW (D14d): the counted fill skips the clear although the loop's counter can be assigned

`repro/d14d_index_assign.olang`.

```
a := Array<I64>(n)
for i in range n {
    i = 0          # a for-in's counter is assignable
    a[i] = 1
}
```

passes `filledNext` (one mention of `a`, `a[i] = e` at the top level, no break/continue/return), so `a` is made
without its clear; only `a[0]` is ever written and every other element is whatever the recycled chunk held: the
program prints 23100003 (built, -O3 and -debug alike, reading the 77s a previous array left) where `interpret` prints
234, the cleared answer.

Fix: in filledNext also require that the body never mentions the counter as an assignment target (`i = `, `i += `,
`i++`, `i--`), or count mentions of the counter as wordCount does for the array; simplest - the counter is written
only as the index of that one store.

### 4. CONFIRMED, OLDER: an immutable global text is written through a `mut Array<Char>&` (and a C `char *`)

`repro/roglobal_text.olang`, `repro/cimp/cimport_rotext.olang` (with `pt.c`).

```
T := "hello"
U String = "world"
fn w(b mut Array<Char>&) { b[0] = 'z' }
fn main() { w(T)  w(U)  io.Println($T " " $U)! }      # prints "zello zorld"
```

An array global (`G := I64[1, 2]`), a declared array type's global (`type Lab Array<I64>`), a read-only parameter
and a field through a read-only reference are all refused (S6, T25c) - only a `String` global is let through. The same
global given to a C function taking `char *` through a C import (`c.fillbuf(T, 3)`) is written by C; `interpret`
there stops with "it writes constant data" while the build writes it (the evaluator holds it as constant data, the run
time as writable). The C-import path is new in the range; the hole is older (ea0a6de prints the same).

Fix: the S6/T25c check on a `mut &` argument must see through the text global's Deref/String-over-Array path (the
place is a Global whatever conversion wraps it).

### 5. CONFIRMED, OLDER (recorded D18b leftover): a generator held in a local over program-scope storage leaks per call

`repro/gen_local_leak.olang`: `g := each(Data)` (Data an immutable global array) then `for x in g`, in a function
called 1M times: 139 MB, at ea0a6de too. The D18e change drops a walk the for-in itself makes in the loop's block
(`each(Data).Sum()` and `for x in each(Data)` are flat, 1.8 MB), but a generator in a local still lands where its
argument lives - the program scope - and its frame stays until exit. HISTORY's "Found, pre-existing, not fixed (a
decision for D18b)" names the class; this is the half the batch left. Fix direction: place a generator a `:=` local
holds in the local's block (nothing but the local reaches it unless it is stored), as D18e does for the loop's own.

### 6. CONFIRMED, NEW (T20 x G32): error values have no TypeKind, so reflection over a struct holding one fails in std's code

`repro/errval_reflect.olang`: `json.Encode(R(3, PErr.BAD))` with `type R struct(N I64, E PErr)` is 17 errors from
std/json's internals (G32 "PErr has no TypeKind", E12, S9a, M19, G38, G33...) and a false S18c from json.Decode.
T20 makes an error value a field type anywhere, but reflection (TypeKind, Fields, Base) has no answer for it, so every
generic walker over a type hits a cascade. Fix: a `TypeKind.Error` (or report an error type through one diagnostic at
the user's call), and json encoding an error value as its `$` text.

### 7. CONFIRMED, NEW, low (B7a): `olang test FILE WORD` naming no target runs nothing and succeeds

`repro/test_target_typo.olang`: `olang test test_target_typo.olang nosuch` prints `0 passed, 0 failed`, status 0. A
typo in CI passes silently. Fix: a word that names no target of a file (and no type) is an error, as a target naming
nothing in a test is (B7a).

### 8. CONFIRMED, NEW, low (spec vs compiler)

- T20 says `e == null` / `e != null` test an error value for "no error" ("`e is null` says the same"); the compiler
  refuses both with E10c ("null is tested with 'is', never compared"). One of the two is wrong - SPEC most likely, since
  E10c is the user's 2026-10-24 rule.
- X21 says an integer narrower than 32 bits passes as an I32; a `U5`/`I5` variable argument is refused with "pass a
  number" (it is one). Either promote the T4a widths or say they are refused, and reword the message.
- CLAUDE.md's T19 entry still writes `type IoError error { FULL  DENIED }` (two spaces); the listing rule makes that
  a parse error ("expected '}', found 'DENIED'"). Doc only.
- `$v` of a `Vec<lib.Both>` (another module's named set) renders `Vec<Both>[lib.LibErr.B, ...]`: the elements
  qualified, the type argument bare (`repro/held/errmod`). Cosmetic.

## Plausible, not reproduced

- definit's `exprBreaks` on a `Call` looks at the arguments but not at a `Callee.Value` expression; a break inside the
  expression giving the function value (`(try pick() catch { break })(3)`) would be missed as in finding 2. Not
  written out; the same fix covers it.
- Hash of an error value follows its own set's numbering: a `PErr.BAD` held as a `PErr` and as a `LoadError` are `==`
  but hash differently (`repro/held/errval.olang`, last field of line 6). Maps recode to the key type first, so no map
  is wrong; generic code hashing values of two types it compares would be. Mostly a note.

## Held up under attack (repro/held/)

- D13d: parallel assignment `a, b = Node(1), a` refused; reads in a three-clause loop's post after a `continue`, in a
  do-while condition, after a match without the assigning arm, after `try n = ... catch { }`, after range/Vec/
  generator/held-generator/enumerate/three-clause/forever loops, a comprehension and a join - all refused.
  Constructor fields and by-value struct locals left Unset are never released through as old values (lowering releases
  nothing on an element or a constructor-field assignment; `d13d_release`, `d13d_ctor_release`, `d13d_vec`).
- D13e: dependency order through a function body (`Y := readX()` above `X`'s top-level if), `-define` choosing
  branches, nested ifs both taken (error), a condition reading the global (refused), run-time initializers.
- D14d / comprehensions / T7c: reference elements uncleared (`d14d_refs`, no release on element stores);
  ranges with steps, U8 ranges near wrap-around, I64.Max ranges, comprehensions over a Vec that the element expression
  grows or shrinks; fixed lengths from locals reassigned on a path (`t7c`).
- Generators: `Iterator<T&return>` views kept past a for-in's walk, through ToVec, a returned view, `try g.Next()`
  temporaries; `Iterator<T&t>` views kept past their input, through ToVec and a held generator - refused or correct;
  exits by return/error/break/continue from nested walks, comprehensions over walks, held walks: destructor counts alike
  at -O3, -quick, -debug -sanitize and interpret (`gen_exits`); a view of a Vec walked while the Vec grows is M19g's
  error.
- Stored errors: recoding between a member type, a named set with words of its own, a wider set, a Map keyed by a set,
  a Vec of them, a baked global array of them, `error e` raised into a wider set, `match`, a generic `==`, across
  modules (`errval`, `errmod`): built, -debug -sanitize and interpret print alike.
- Named arguments: side-effect order with reordered names, `try` in a named argument, a failing one part way, an `any`
  method, a constructor, a generic, a baked global (`named`): all alike.
- C imports: a header edit (an included header, a macro, a static inline function) retranslates for build and
  interpret (`cache/`); variadic promotions of I8/U8/U16/F32/F16/declared types/Char/U32 (`va`); struct pointers given
  arrays, writes to an immutable array/struct/text global through `void *` refused (`voidp`); small structs by value
  (`sv`; interpret refuses them, as documented).
- Vec growth without the zero fill: pushes from a nested block, a function, a lambda through a reference, a task and a
  generator body, all clean under -sanitize (`vecgrow`); every walk of the buffer in vec.olang slices to the count.
- `make scopefuzz SEED=7331 COUNT=60`: 400 scenarios, 0 findings. `make fuzz SEED=4242 COUNT=80`: 2400 cases, 0 findings.

## Side note

A mistyped command in this review left an empty file `/m.olang` at the root of the container (zero bytes, from a
`cat > $S/m.olang` with `S` unset). Removing it was refused by the sandbox; it is harmless and can be deleted by hand.

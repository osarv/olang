# Errors carrying data

A design note (2026-11-07, for review; nothing built). The user decided on 2026-11-07 to add what was deferred on
2026-10-24: an error word that carries plain data, so `error ParseError.Bad(line, col)` raises one and a catch, a
match, `$e` and a stored error value can read it - with the success path paying nothing (PRINCIPLES.md 2).

## Progress

- 2026-11-07: read SPEC R1-R23, T19, T19a, T20, S13, X12-X14; check.olang's error values (ErrVal, errWordCalled,
  narrowing, Reraise), generic.olang's error lists and words, mir.olang (Recode, Raise, Call.Code, Wait), lower.olang
  (toClause, bang, renderErr, Reraise), emit.olang (RetLlvm, Raise, trace, main's message), eval.olang (recode, frame
  codes), runtime.ll (the trace and the requirement slot), std's error types and their raisers. Note written in full:
  sections 1-12, the decisions (13) and the direction questions (14). Nothing measured - no build was run (disk and
  memory shared); round 1's first job is the measurements section 12.4 names.

## 1. The answer in brief

- **Spelling.** A word declares its payload as an enum case does: `type ParseError error { Bad(line I64, col I64),
  Eof }`. It is raised with its fields, `error ParseError.Bad(line, col)`, and read where the error is named: a clause
  (`catch ParseError.Bad e { e.line }`), a narrowed error value (`if e == ParseError.Bad { e.col }`), a pattern (`case
  ParseError.Bad(l, _)`), `$e` (`ParseError.Bad(3, 7)`). An error raised by name carries one too: `error
  NotFound(path)`, its fields named by puns or `name = value` and typed by the values its first raise gives.
- **What it may hold.** Values only: numbers, `Bool`, `Char`, text and arrays held by value (its own copy), error
  values, plain enums and structs of those - nothing holding a reference, a function value, an `any` or a destructor.
- **Where it lives.** Not in the error union: a fallible call still returns `{ i32 code, T }` (R6), unchanged. The
  payload goes on a **per-thread payload stack**, pushed by the raise and popped by whatever takes the error - a clause
  (which copies it out where it names it), an export entry, a join. Errors in flight are strictly last-in first-out
  (deferred code may not let an error leave, a destructor may not raise), so the top of the stack is always the error
  in flight and nothing passes it along: `try` passing an error on touches nothing but the code. Success costs nothing;
  a set with no payload words compiles exactly as today.
- **Error values** with payload words are laid out as an enum is - the code, then the payloads' union - compared and
  hashed by what they hold (E10), read-only, copied where kept (QCE). A set with no payload words stays an `I32`.
- **std** gains payloads where the data is the point: `os.Error`'s words the path, json's reading words the line and
  column (its `Position` out-parameter goes), csv's the line, flags' the flag, regex's the offset, net's the host or
  address text, io's `Partial` the count written.

## 2. What exists today

- **Codes (R6).** A fallible function returns `{ i32 code, result }` (`types.RetLlvm`), the code `(type position from
  1) << 16 | word` under its own list; `try` passing an error on recodes it (`mir.Rvalue.Recode`). The code is all there
  is: `mir.Term.Raise(sp, code)`, `mir.Call.Code` (the local a call's code lands in), `mir.Term.Wait`'s code for a join.
- **Words (T19, R3b).** `ast.Decl.Errors(sp, name, words Array<NameId>, members)` - a word is a name and nothing else;
  `generic.Program.ErrorWords`, `ErrorWordName`; an error raised by name is a synthesized declaration of one word, its
  own name (`names.surveyBodies`, `generic.IsRaisedError`).
- **Error values (T20).** `types.Kind.ErrVal` over the set's entries, an `I32` in every layout (`types.olang` 1294,
  1348, 1460); a clause's name is a hidden `I32` local recoded at the clause's entry (`lower.toClause`); `error e` is
  `typed.Stmt.Reraise`; `$e` a chain of code tests writing constant names (`lower.renderErr`); `!` (`lower.bang`,
  `bangNames`) and `main`'s `unhandled error:` (emit.olang, its main wrapper) likewise constant texts per code.
- **Out of band already.** Two things travel beside the code today, in thread-locals written on the failure path only
  (`std/runtime/runtime.ll`): the error return trace (S18d, `__olang_ert*`, test and `-debug` builds) and the
  requirement a contract found false (`__olang_ert_req`, D17, every build). Section 5's payload stack is the same idea
  made general.
- **What std does instead.** json writes where a parse stopped into a `Position` its caller passes (`json.Parse(text,
  at)`); csv keeps `rows.Line` on the reader; flags keeps a sentence in `Message()`; os, net, regex and time say nothing
  of what failed. HISTORY.md says each time: "errors carry no data".

## 3. Spelling

### 3.1 Declared words

```
type ParseError error {
    Bad(line I64, col I64)
    Eof
}
```

A word's payload is a field list, as an enum case's is (T17): names and types, the listing rule inside the
parentheses, at least one field. Decided:

- **Field lists only.** The enum's other form, a case carrying one type written whole (`Round Circle`, T17a), is not
  taken for words: `{ Full Denied }` on one line would read as a word carrying a type `Denied`, where T19 has it as a
  listing error today, and a payload whole-type struct says nothing a field list does not. Additive later.
- **No defaults** on payload fields (an enum case's have none), so a raise gives every field.
- **Field names** are read everywhere the error is - public by the word, as an enum case's fields are (G32's "a case's
  fields everywhere"); `line` lower case is fine.
- A named set's own words (T19a) may carry payloads: `type LoadError error os.Error, ParseError { Timeout(ms I64) }`.

### 3.2 Raising

`error ParseError.Bad(line, col)` - the word called as an enum case is (positional, each field once, fitted by E12:
literals adapt, numbers widen, text and arrays copied - section 4). A payload word raised bare (`error ParseError.Bad`)
is an error naming its fields; a payload-free word called (`error ParseError.Eof()`) is one too. `error e` (R3a) raises
a held value with what it holds.

### 3.3 Errors raised by name (R3b)

`error NotFound(path)` declares, as `error NotFound` does, an error of its module - now with a payload whose shape
comes from the raise itself:

- **Field names**: an argument that is a bare name of a local, parameter or global is a pun, the field named as it is
  (C2's pun rule); any other argument is written `name = value` (E14b's spelling): `error OutOfRange(index = i, len =
  xs.Len())`. An argument with neither is an error naming `name = value`.
- **Field types**: the values' types at the module's **first** raise of the name (source order - a module is one
  file), a reference's referent (`p String&` gives a `String` field, copied - section 4), a literal at its own type
  (T6a: `I64`, `F64`). Every other raise of the name gives the same names in the same order, each value fitting its
  field (E12); differing is an error at the later raise naming the first. A payload type holding a reference is
  section 4's error.
- `? NotFound` names it in a set, `catch NotFound e` takes it, `e.path` reads it, `$e` is `NotFound("conf.toml")`.
- Built as R3b is: the resolver's survey already finds every raise by name; the checker settles a raised error's
  payload on demand - the first time anything needs its shape (a field read, a pattern, its layout) it checks the
  first raise's arguments in that function's context, as R1a's inferred sets are checked on demand. Direction question
  1 (section 14) asks whether the user wants this inference or prefers data only on declared words; until answered,
  round 1 builds declared words only and round 2 adds this.

### 3.4 Reading

- **A clause** naming what it took (R11b): `catch ParseError.Bad e { use(e.line) }`. The name's set is one word, so `e`
  is narrowed to it and its fields read. `catch ParseError e` holds both words: `e.line` needs narrowing first.
- **Narrowing** (S8d, T20's tests): `if e == ParseError.Bad { e.col }`, after `if e != ParseError.Bad { return }`, in
  `and`, after `assert` - every place the one narrowing walk (`pushFacts`) narrows. A field is read only where `e` is
  narrowed to **one word** (as S8d asks of an enum's case); two words sharing a field name are not merged (their
  offsets differ, and one rule is simpler) - a recorded limit, additive later.
- **A case test with a payload** (E32): `e == ParseError.Bad(3, _)` compares the payload too, `_` any part, exactly as
  `e == Shape.Circle(3.0)` does an enum's.
- **Patterns** (S13, S13c, S13d): `case ParseError.Bad(line, _)` binds; `case ParseError.Bad` matches the word whatever
  it carries (as `case Shape.Circle` does a case with a payload); literals and nested patterns in payload positions;
  alternatives bind the same names and types. So existing matches over a word that gains a payload keep compiling.
- **Catch items stay words** (R11): no `catch ParseError.Bad(0, _)` - a clause takes the word, then tests or matches.
  One rule for what a clause takes; a filter on values belongs in the clause's body.
- **`$e`** (E11a): the word as errors print, then the payload as an enum case's renders - `ParseError.Bad(3, 7)`,
  `os.Error.NotFound("conf.toml")`, text quoted as source writes it.
- **Read-only.** An error value is what was raised: a payload field is never written (`e.line = 0` is an error naming
  the rule, as an `immut` type's field is, T13a). One write check (`check.mustWrite`) says it.

## 4. What a payload may hold

A payload is copied twice - onto the payload stack at the raise and out where a clause names it - and outlives every
frame between raise and clause. So it holds **values** and nothing that names storage:

- numbers of every width, `Bool`, `Char`;
- text and arrays **held by value**, `String`, `Array<T>` (QCE's value arrays inside values: its own copy, deep through
  values), and handles as values (`Vec<T>`, `Map<K, V>`) of allowed element types;
- error values of other sets (`Wrapped(cause os.Error)` - a cause chain), a set reaching itself by value being T16's
  error (a type cannot embed itself);
- enums and structs (`immut` or not) all of whose parts are allowed.

Not allowed, each a compile-time error at the field naming the rule and saying to hold a value (`$x`, `x.Copy()`):

- **references** (`T&`, `T?&`, `mut T&`): a payload outlives the frame it was raised in, and nothing in §8 follows it
  from the raise to the clause - copying it (section 5) makes it safe exactly because it names no scope;
- function values and `any` (references underneath), extern types (C's storage);
- a `unique` type (T13b) or a type with a destructor to run (O15): a payload is copied, and a destructor value would
  run twice or never.

Text was weighed: it costs an allocation on the error path (into the payload stack's arena, section 5) and a copy where
a clause names the error. Without it `os.Error` cannot say which path - the case that motivated the feature - so it is
in.

## 5. Where a payload lives at run time

### 5.1 The options

| | success path | failure path | ABI | text's home |
|---|---|---|---|---|
| (a) in the error union by value | every fallible call whose set reaches a payload word returns `{ i32, T, payload }` - bigger returns, often through memory, on every call | copied up each frame by `try`, recoded code beside it | changes for every function whose inferred set reaches a payload word - os's errors reach most of std | the callee's result scope, re-bound or copied at each frame |
| (b) a thread slot written at the raise, copied out where named | nothing | written at the raise; saved and restored around anything that could overwrite it on the way out (deferred code, destructors); copied out at a naming clause | unchanged | a per-thread region, freed when a clause takes the error |
| (c) storage in a region named by the code | the code would have to carry a handle: `i32` grows to a pointer-sized word in every result and every error value | as (b) | changes everywhere | that region |
| **(d) a per-thread LIFO payload stack** | **nothing** | **a push at the raise, a pop where the error is taken, a copy only where a clause names it; nothing per frame** | **unchanged** | **the stack's own arena, popped with the record** |

(a) is Rust's and C++ `std::expected`'s: the error's size is paid by every return, which is why Rust's clippy tells
large errors to box themselves. Through inferred sets (R1a) os's payload would grow nearly every function that
touches a file - a per-call cost the code does not show, against principle 2. (c) widens every code. (b) is right in
cost but needs care at every place user code runs between raise and clause.

(d) is (b) without that care, made possible by a property olang already has: **errors in flight are nested, last in
first out**. Between a raise and the clause that takes it, the code that runs is deferred code (`defer`, `errdefer`,
S19), destructors (O15) and drops - and deferred code may not let an error leave (S19), a destructor may not raise
(R3). So an error raised in there is taken in there, before the outer one goes on. With every payload pushed at its
raise and popped where its error is taken, the error in flight is always the one on top: the stack needs no frame to
carry it, `try` passing an error on does nothing beyond the code it already recodes, and nothing is saved or restored
around deferred code. Decided: **(d)**.

### 5.2 The stack

Per thread (the runtime, `std/runtime/runtime.ll`):

- `@__olang_errpay_top` (thread-local, `initialexec`, as the trace's words are): the top record, or null;
- a scope of its own, `@__olang_err_scope`, made lazily on a thread's first push: an arena like any other, its chunks
  from the thread's pool, with a mark and a reset-to-mark the other scopes do not need (chunks past the mark go back
  to the pool on reset);
- a record: `{ prev record, scope mark }` then the payload, laid out as its word's payload record; the payload's owned
  parts (text, arrays) are built after it in the same scope by the ordinary Copy helper (`mir.HelperKind.Copy`, QCE),
  given the error scope as the scope to build into.

Operations, each a small runtime function:

- **push(size, align) -> ptr**: mark the scope, bump a record, link it on top; the caller then copies the payload in.
- **top() -> ptr**: the payload of the error in flight.
- **pop()**: top = record.prev, the scope reset to record.mark.

Measured costs are round 1's to give; the shape is an arena bump - a thread-local load, a compare against the chunk's
end, a few stores - plus the payload's own copy. A thread that never raises a payload word never makes the scope.

### 5.3 Who pushes and who pops

The code says which word an error is, under the list it is read with, so whether there is a record to pop is known
from the code - a payload-free word pushes nothing and pops nothing. Loops' `Exhausted.End`, `MapError.Missing` and
every other payload-free word cost exactly what they cost today.

| where | what happens |
|---|---|
| `error W(args)` | the payload record pushed (args copied in, owned parts built in the error scope), then `Raise` as today |
| `error e` (R3a) | for a payload word, a copy of e's payload pushed, then `Raise` |
| a call's error edge, `try` passing an error on (R9, R13) | nothing: the code is recoded, the payload stays on top |
| a clause taking the error (R11) | where it names it, the payload copied out into the name's value (built where the name lives, the try's block - standard placement); then, for a payload word, pop - named or not, `catch default d` included |
| `!` (E35), `main`'s escaping error (B5), an error leaving a test (S16) | the payload rendered in the message (section 9); the program or test ends, nothing popped (a test build resets the stack at each test's start, as the trace is cleared) |
| a task's call failing (P4b) | the task copies the payload into its join's stand-in scope (P2's private part, folded at the join) and pops its own; at `Wait`'s failed edge the joiner pushes a copy for the earliest-spawned failure - the others' are dropped with their parts at the fold |
| a task's own clauses (P4a) | as any clause, on the task's thread |
| an export entry (X12) returning a code to C | pop before returning (else every failing C call would grow the stack) |
| `become` (S21) | nothing: the callee's raise is the function's own |
| a generator's body raising (S20, D18) | as any function: the `Next` call fails, its caller's clause pops |
| a failed check unwinding a test (P1d) | the harness resets the stack with the test |

Section 8: the payload stack is a scope no reference reaches - a payload holds none (section 4) - so the scope pass
judges a raise's arguments as values copied into storage it never sees again (nothing to bind), and a clause's copy
out as an ordinary value made for a local. Early freeing (free.olang) sees the clause's local as any value local. No
rule of §8 changes; the one new rule is section 4's "no references in a payload", checked at the declaration (or, for
an error raised by name, at its first raise).

### 5.4 Optimizations noted (mine to build later, no meaning)

- A clause naming an error whose body only reads it could read the payload in place on the stack and pop at the
  clause's close instead of its entry - no copy. Not in the first version (a pop on every way out of the clause, as
  deferred code is).
- A plain-data payload of known small size (no owned parts) never needs the scope's chunk logic - a fixed reserve of
  the record area at thread start would make its push allocation-free in the facts' sense (G42, section 7.3).

## 6. Error values with payloads (T20)

- **Layout.** An error value's type is an `ErrVal` over its set's entries (`types.Kind.ErrVal`). Where no word of the
  set carries a payload it stays an `I32` - every existing program and layout unchanged. Where one does, it is laid out
  as an enum with payloads is: `{ i32 code, the payloads' union }`, aligned for the largest payload (os.Error with a
  `path String` per word: 4 + padding + 16 = 24 bytes). It then owns parts where a payload holds text (QCE:
  `types.OwnsParts`), so its copies are `MakeKind.Copy`'s - deep through values - wherever it is stored (fields,
  elements, `Vec<os.Error>`, type arguments, globals).
- **null** is code 0 and a zero payload, still the zero value (D13).
- **`==`** compares what is stored (E10): the word, then the payload structurally, text by contents. `e ==
  ParseError.Bad` (no arguments) tests the word only, as a case test does (E32); `e == ParseError.Bad(3, _)` the payload
  too. Consequence, said in the migration notes: a `Map<os.Error, I64>` counting failures by kind now counts them by
  kind and path - key by the word with a match (or a payload-free set) where that is wanted.
- **Hash** follows equality (E10b): the error's identity and word as today, then the payload's fields' hashes.
- **Recoding** between sets (a wider value narrowed, a narrower one widened, T20) keeps the word's payload as it is and
  moves it into the target's layout - the union differs in size from set to set, so for sets with payload words the
  conversion is a small helper per (from, to) pair (`mir.HelperKind.ErrConvert`) rather than `Rvalue.Recode` on a bare
  code, which stays for payload-free sets.
- **Read-only** (section 3.4) and **no arithmetic, ordering or number conversion**, as today.
- **Reflection** (G32-G34): `T.Cases` of an error value's type already gives its words; a payload word's descriptor
  gains `c.Fields` as an enum case's has, so `f.Of(v)` reads a field where `v` is narrowed and `c(args)` builds the
  value - std/json (section 9.5) walks it as it walks an enum.

## 7. Propagation and the type system

### 7.1 `try` and codes

R6's codes do not change: a payload word's code is its type's position and its word's, as any word's. Recoding at a
`try` changes the code and never the payload (it is not touched at all, section 5.3). `catch ParseError` takes every
word, payloads and all; `catch LoadError` (T19a) every member's.

### 7.2 Function types, named sets, error-set parameters

- A word's payload is part of the word's declaration, so nothing new enters a function type: a set naming
  `ParseError.Bad` (R1c) names the word with what it carries, and T22's "a set holding every word" is unchanged. Two
  function types differing in their sets differ as today.
- Named sets (T19a) flatten as today; their own words may carry payloads.
- Error-set parameters (G1a): `E` bound to a set holding payload words passes through `catch E e` and `error e` as any
  set does; per instance, the instance's layout of `e` follows its binding.
- Generators' `Iterator<T ? E>` likewise; `Exhausted` stays payload-free.

### 7.3 Effects and facts (G42, the effects line)

A raise whose payload owns storage (text, arrays, handles) allocates - into the error scope - and the effects line
and `Allocates` say so; a raise of plain data does not count (the record area is the thread's own, as a frame's slots
are). A function that only lets a payload error through allocates nothing. `Blocks`, `CallsC` and the rest are
unaffected.

## 8. The compile-time evaluator and `interpret` (K1, K2, B3e)

- **eval.olang's machine** keeps the code per frame (`fs[fi].Code`, recoded at a call's return, `m.recode`). It gains
  a payload stack per task (tasks run in sequence at the join under the evaluator): a raise pushes the payload value
  (its parts in the machine's own allocator), a clause copies it out and pops, `Wait` carries the earliest-spawned's -
  section 5.3 line for line, so the evaluator and the run time agree by construction. The checklist's test: a top-level
  assert (S17a) deciding `$e == "ParseError.Bad(3, 7)"` and `e.line == 3` through a function raising one, beside the
  same test at run time.
- **K2**: an error leaving a baked global's initializer is reported with `$` of it, payload included ("the initializer
  fails with json.Error.Unexpected(1, 3)"); a baked global holding an error value with a text payload is baked as data
  as any value owning text is (K2b).
- **`!` while compiling** (K1's abort class) and a decided contract (D17e) print the payload too.
- **`interpret`** runs the same machine; its stops (B3e) reset the stack.

## 9. Messages, the trace, C and json

### 9.1 The trace (S18d)

Unchanged in what it keeps - places, not values: `raised here`, `try passed it on`, `left the test`. The message
printed before it gains the payload (9.2).

### 9.2 `!`, `main`, a failed test

Today each is a constant text per code (`lower.bangNames`, emit's main wrapper, the test harness's `FAIL - name:
T.W`). For a list holding payload words, lowering makes one rendering helper per list (`mir.HelperKind.ErrText`): given
the code, the error's name as errors print plus, for a payload word, the payload read from the stack's top - `$`'s own
rendering (`lower.renderErr` extended). `!`'s message becomes `FILE:LINE: json.Error.Unexpected(3, 14)`, `main`'s
`unhandled error: os.Error.NotFound("conf.toml")`, a test's `FAIL - Parse: json.Error.Unexpected(3, 14)`. Lists with no
payload words keep their constant tables (no code change, no IR change).

### 9.3 Contracts (D17)

`ArgumentError.Invalid` stays payload-free in the first version, and the requirement slot (`__olang_ert_req`) keeps
saying which condition failed. Folding it into a payload (`Invalid(what String)`) would retire that special slot but
make every contract's failure copy its text and change `ArgumentError` in very many sets - direction question 3.

### 9.4 Export fns and the C header (X12, X14)

The payload is **not exposed** to C in the first version: an entry returns the code as today and pops the payload
before returning (5.3). The header says, beside the codes, that the error's data is not passed. Later, additively: one
entry per library, `int64_t NAME_error_text(char *buf, int64_t cap)`, giving `$e` of the thread's last failure through
a caller's buffer as array results are given (X12) - which needs the entry to keep the last payload (copied into a
library-owned slot) instead of popping it. Not now.

### 9.5 std/json

An error value is written today as `$` writes it, a string (`"io.Error.Full"`), and read back by its word. A
payload-free word keeps that. A payload word is written as json writes an enum case with a payload - externally tagged,
`{"json.Error.Unexpected": {"line": 3, "col": 14}}` - and read back through its word's descriptor and fields (G33, 6's
reflection). One rule with enums, so Decode needs nothing new beyond reading the word's name as the tag.

## 10. std

### 10.1 What gains a payload (mine; the user's naming rules applied)

| module | words | payload | replaces |
|---|---|---|---|
| os | `NotFound Exists Denied NotDir IsDir NotEmpty` | `(path String)` - the path the call named, `""` for a call on a descriptor | nothing said which path |
| os | `Failed` | `(path String, errno I32)` | errno lost |
| json | `Unexpected Unterminated BadEscape BadNumber BadUtf8 Trailing Depth` | `(line I64, col I64)` (col in characters, as Position's) | `json.Position` and every `at` parameter (Parse, Decode) |
| json | `Missing` | `(key String)` - the name, or the index as text | nothing said what was missing |
| json | `WrongKind Uneven` | none | |
| csv | `BareQuote TextAfterQuote UnclosedQuote` | `(line I64)` | reading `rows.Line` beside the error (Line itself stays: it says where the reader is) |
| csv | `NoColumn` | `(name String)` | |
| csv | `BadValue` | `(line I64, column String, text String)` | |
| flags | `Unknown Missing DeclaredTwice Required` | `(flag String)` | |
| flags | `BadValue` | `(flag String, text String)` | (`Message()` stays - a sentence naming the program; it can be derived from the error later) |
| regex | every `SyntaxError` word | `(at I64)` - the byte offset in the pattern | nothing said where |
| time | `Syntax` | `(at I64)` - the offset in the text | |
| net | `UnknownHost` | `(host String)` | |
| net | `Address` | `(text String)` | |
| io | `Partial` | `(written I64)` | |

Left plain: the prelude's errors (R20 - `Exhausted`, `ArrayError`, `NumberError`, `CaseError`, `MapError`, `VecError`,
`TextError`, `ArgumentError`, `AttrError`: they are raised in hot paths taken as control flow, `try a.Get(i) catch
default -1`, and a push there would be a cost the call does not show), `arith.Error` (the same, in arithmetic), http (curl
reports a class, nothing more), net's descriptor errors (`Refused Reset Timeout Closed ...`: the connection knows its
address; say it there if wanted later), base64, hex, utf8, chan, cancel, rand, stats, ffi, bitset.

### 10.2 What breaks

`olang api` (B21) reports a payload added to a word as breaking (a word's signature changed - api.olang gains the
comparison: a word's payload fields by name and type). For importers, concretely:

- **still compiles**: `catch os.Error`, `catch os.Error.NotFound`, `catch os.Error e`, `e == os.Error.NotFound`, `case
  os.Error.NotFound` and its alternatives, `? os.Error` - catch items, word tests and bare patterns are untouched;
- **breaks**: raising the word without its payload (std's own raisers), writing it as a value (`x os.Error =
  os.Error.NotFound` - now needs its fields, like an enum case), json's `Position` and `at` parameters (removed), and
  text compared against `$e` of a changed word (`"os.Error.NotFound"` becomes `os.Error.NotFound("a/b")`) - found in
  the repository: tests/errvalues.olang, tests/errsets.olang, checks/fixtures/osargs and interp/exec, compiler/build,
  check and lower's os uses - a handful, migrated by hand;
- **changes meaning silently**: an error value used as a `Map` key or compared by `==` across different paths (6). The
  repository's one such use (`Vec<os.Error>` in tests/errvalues.olang) compares a rendering and is migrated with the
  text above.

### 10.3 Migration

- std's raisers rewritten by hand in each module (os's `raise(code)` takes the path: `raise(code, path)`; json's
  reader raises with its own line and column; regex's parser with its offset) - 24 + 58 + 10 + 14 + 33 + 26 + 11 raise
  sites counted, mechanical once each module's raiser takes the data.
- `json.Position` users (std/json's own tests, two in std, compiler/'s none) move to `catch json.Error e { $e }` or the
  fields. No `olang fix` tool: a removed parameter with a replacement in another position is no text rewrite worth a
  tool, and the user's rule for a removal between versions is that `olang api` says what breaks.
- oann is not migrated (it waits for the language, as every other change).

## 11. Prior art, briefly

- **Zig**: error sets are codes only (a global `u16`); data is passed out through a diagnostics struct the caller
  gives - json.Parse's `Position` today. A payload proposal has been open for years; the reason given is that `try`
  must stay cheap and allocation-free. Section 5 keeps Zig's ABI and makes its diagnostics pattern implicit.
- **Rust**: `Result<T, E>` with `E` any type, enums with data; `Result` is sized by the larger of `T` and `E`, so a
  large error grows every return - clippy's `result_large_err` tells people to box it. Option (a).
- **Swift**: untyped `throws` boxes the error as `any Error` (a heap allocation per throw), returned through a
  dedicated register so success costs nothing; Swift 6's typed throws pass the error by value. Closest in cost to (d)
  for the success path.
- **Go**: `error` is an interface; rich errors (`*PathError{Op, Path, Err}`) are heap-allocated, and every caller tests
  for nil. os.Error's path is Go's PathError without the box.
- **C++**: `std::expected<T, E>` is Rust's model; exceptions are success-free with table-driven unwinding and
  heap-allocated exception objects - the cost model (d) has, without unwinding or hidden control flow.

## 12. Build plan

### 12.1 Rounds

1. **Declared payload words, end to end** (opus, high). Parser and AST (`ast.Decl.Errors`'s words gain field lists -
   parse.olang, ast.olang, unparse.olang, fmt.olang); generic.olang (a word's payload record type, `ErrorWords` with
   fields, the section 4 check); types.olang (`ErrVal` layout with a payload union, `OwnsParts`, `Llvm`, size/align);
   check.olang (raising with arguments, `errWordCalled`, field reads under one-word narrowing, case tests with payloads
   in `errValues`, patterns, read-only fields, `$e`, Hash/Eq for payload values); typed.olang/mir.olang (a push
   statement, `HelperKind.ErrConvert`, `ErrText`, the pop at a clause); lower.olang (raise, `toClause`'s copy-out and
   pop, `bang`, `renderErr`, Reraise, Hash/Eq helpers, `ErrConvert`); emit.olang and runtime.ll (the stack, main's and
   the test harness's messages through `ErrText`); eval.olang and interp.olang (section 8); scope.olang (a push's
   arguments as copied values; the error scope as a ScopeRef); free.olang, effects.olang (7.3). Spec first: T19's
   grammar and words, T20's layout and uses, R3, R3a, R11b, R6's sentence on payloads, a new rule for the payload stack
   (§7.3), S13d, E11a, E32, X14's note, G33's `c.Fields` on words.
2. **Errors raised by name with payloads** (3.3, if direction question 1 says yes): names.olang's survey records raise
   sites per name; check.olang settles the shape on demand and holds later raises to it. Small.
3. **Tasks, joins and export fns** (5.3's rows for P4a/P4b and X12): emit's task trampoline and `Wait`, runtime's join
   record, the export entry's pop; the concurrency risk (12.3). Could fold into round 1 if round 1 stays small.
4. **std** (section 10): os, json (Position removed), csv, flags, regex, time, net, io; api.olang's payload comparison;
   std/json's error encoding (9.5); docs and READMEs.

### 12.2 The checklist, per round

- SPEC first (1); checker and codegen (2); the evaluator with a test it decides beside each run-time test (3: a
  top-level assert reading `$e` and a field of a payload error, a baked global holding one); corpus tests - a new
  `tests/errdata.olang` with raise/catch/narrow/match/`$e`/`==`/Hash/stored values/recoding/cause chains/text payloads
  read back after an arena churn/deferred code raising and taking its own errors while one is in flight/a task's
  payload carried to its join (4); `checks/cases` for what must fail - a reference in a payload, a payload word raised
  bare, a payload-free word called, a field read without narrowing, two raises by name disagreeing, a write to a field,
  a unique or destructor type in a payload, a payload reaching its own set (4); std migrated (5); diagnostics naming the
  rule and the fix (6); CLAUDE.md's Errors entries, HISTORY.md, the ledger (7); DEPENDENTS.md - the scanner needs
  nothing, the formatter (field lists in error types), the LSP's hover and completion (payload fields), editors' syntax,
  `explain` (an error type's words with their fields), `doc`, `olang api`, goldens (tokens/AST hashes of changed std
  files), the seed only if compiler/ uses payloads (it need not in round 1) (8); `make verify`, scopesan, scopefuzz,
  `fuzz free` (9).

### 12.3 Risks

- **The LIFO argument** is what makes (d) sound: every pop must match its push. A path that takes an error without a
  clause - one missed in 5.3's table - would leave a record (memory growth) or pop another's (a wrong payload read). The
  guard: lowering's every consumer of a code goes through one function (`ln.takeError(code, list)`: copy out if named,
  pop if a payload word), and the MIR verifier checks that every block reached by a call's error edge or a `Wait`'s
  failed edge reaches either a `Raise` or a `takeError` on every path; the evaluator checks the stack's depth is back
  where it was at each test's and each top-level decision's end.
- **Concurrency**: a task's payload copied out on the task's thread into the join's part before the task's thread can
  be reused (cached workers, P1e); `-race` on a test with failing tasks.
- **Layout churn**: error values of payload sets become aggregates - every place that assumed `I32` for `ErrVal`
  (`types.olang`'s three sites, `lower`'s code tests, the evaluator's `intValue` reads, json's reflection) must take the
  code out of the aggregate first. Grep-able, but many.
- **The `$e` text change** reaches tests and any program printing os errors; listed in 10.2.

### 12.4 Measurements round 1 must give

- bench's machine code byte-identical (no program in bench raises a payload word);
- the self-build's IR unchanged where compiler/ declares no payloads;
- a failure-path microbenchmark: raising and taking `Bad(line, col)` and `NotFound(path)` 10M times, named and unnamed,
  against today's payload-free raise - instructions per raise and peak memory (the stack must stay flat);
- the evaluator's and interpret's agreement on the new tests.

## 13. Decisions (mine)

1. Payloads on declared words are field lists as enum cases' are; the whole-type form (`Word Type`) is not taken.
2. No defaults on payload fields; raising gives every field, positionally.
3. A payload word raised bare, or a payload-free word called, is an error naming the form.
4. Errors raised by name carry payloads named by puns or `name = value`, typed by the module's first raise; later
   raises agree (built in round 2, subject to direction question 1).
5. A payload holds values only: no references, function values, `any`, extern types, unique or destructor types; a set
   reaching itself by value is T16's error. Text and arrays by value are allowed.
6. The payload travels on a per-thread LIFO stack beside the code, never in the error union: the success path and the
   ABI are unchanged, and a set with no payload words compiles exactly as today.
7. The stack is popped by whatever takes the error - a clause (copying out where it names it), an export entry, a join
   - and never touched by `try` passing an error on.
8. Catch items stay words; a clause filters nothing on payload values.
9. A field is read only where the value is narrowed to one word.
10. Error values with payload words are enum-shaped (`{ code, union }`), compared and hashed by what they hold (E10),
    read-only, copied where kept; `null` is code 0 with a zero payload.
11. Recoding a payload value between sets moves the payload into the target's layout (a helper per pair).
12. The trace keeps places only; `!`, `main` and a failed test's message render the payload.
13. A raise whose payload owns storage counts as allocating (G42, effects); plain data does not.
14. X14 entries do not expose payloads (an accessor later); the entry pops before returning.
15. std/json writes a payload word as an externally tagged object, as an enum case with a payload.
16. std's payloads as in 10.1; json's `Position` and `at` parameters removed; the prelude's errors stay plain.
17. No `olang fix` tool for the std changes; `olang api` reports them as breaking.

## 14. Direction questions for the user

1. **Errors raised by name carrying data.** `error NotFound(path)` - its payload's fields named by the raise and typed
   by the module's first raise (3.3) - keeps R3b's "declared where raised" for data too, at the cost of a word's shape
   being inferred across raises (as an inferred error set is). The alternative: only a declared word carries data
   (`type LookupError error { NotFound(path String) }`), one explicit place. *Recommended:* inferred, as R3b and R1a
   infer. *Default until answered:* round 1 builds declared words only; round 2 waits for the answer.
2. **Methods on error types.** Decided by the user on 2026-10-18 with QAN (`fn (e IoError) Transient() Bool`, `Str`
   giving `$e` a message) and never built - QAN's Result went, and T20 now lists an error value's uses "and no others".
   With payloads they would have something to work on (`e.Explain()` from the line and column; flags' `Message()` as a
   method of its error). *Recommended:* build them after round 4, a method declared in the error type's module as for
   any type, a named set having none of its members'. *Default:* not built.
3. **`ArgumentError.Invalid` carrying the condition.** Today a thread-local slot says which requirement failed (D17).
   As a payload, `ArgumentError.Invalid(what String)`, the special slot goes and `catch ArgumentError e { $e }` names
   the condition - but every contract's failure then copies its text onto the stack, and `ArgumentError` is in many
   sets. *Recommended:* not now - keep the slot; revisit if code wants to read the condition. *Default:* not built.

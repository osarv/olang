# Settled decisions

The current-state design record of olang, one entry per area, read on demand (CLAUDE.md indexes it). Moved verbatim from CLAUDE.md's "Settled decisions" section on 2026-11-08 to keep the text every session loads small. New and revised entries go here.

The current state only, one entry per area, naming its rules (the spec is `SPEC.md`). Why each holds, what was tried
and reverted, the measurements and the bugs found on the way are in `HISTORY.md`; the entries this file held before
2026-10-17 that carried something HISTORY did not are copied there verbatim ("From CLAUDE.md's settled decisions,
moved 2026-10-17"). "(the user's call)" marks a decision the user made; the rest are mine within their direction.

### Syntax and statements

- **Statements end at a line break (L18), never `;`** (a `;` is one error). A `}` ends the statement before it (L20),
  so any block may be one line. Outside brackets a line starting with `if` starts a statement (L18b). Braces kept over
  indentation (the user's call, 2026-10-17, QN).
- **One listing rule (QY, L18a, the user's call 2026-10-17).** Everywhere a list appears (parameters, arguments,
  results, error sets, enum cases, constructor fields, type arguments, array literals, indexes, case alternatives,
  catch items) items on one line are separated by `,`, items on different lines by the line break; a comma before a
  line break or before the closing bracket is an error. `+` is gone from error sets and catch items (`? io.Error,
  ParseError`). A function type's or lambda's error set is one item or parenthesized. `x, y I64` (D12b) is unchanged.
- **`fn` is the function keyword (D7, the user's call).** Retired spellings (`func`, `while`, `&&`, `||`, `!`,
  `choice`, `+` on arrays, lowercase primitives) are simply unknown - their diagnostics were removed at the user's
  request.
- **Comments: `#` to the line's end, `## ... ##` a block (L4/L4a, the user's call).**
- **One-line bodies (S1b, the user's decision 2026-10-24).** `if x < 0: return 0`, `for x in xs: total += x`,
  `else: count++`: `:` and one simple statement (assignment, call, increment, `return`, `break`, `continue`, `error`,
  `unreachable`, `assert`, `spawn`) on the colon's line; a declaration, `if`, loop, `match`, `join`, `defer` or block
  there is an error naming the block form. `else`/`catch` may begin the next line. Not for the forever `for` or a `do`
  loop. **A lambda's body too (D16, the user's decision 2026-10-24):** `xs.Count(fn(x): return x > 3)`.
- **The command line is words (B1, the user's call 2026-10-17, reversing one-character flags).** Modes `build compile
  test interpret format explain help doc lsp mcp fix bindgen profile`; options `-output -debug -race -sanitize -target
  -define -update -check -quick -html -library -memory -fuzz -fuzztime -caps -asm -ir -interpret -bench`, each checked against
  the modes it applies to; old flags are gone.
- **`-quick` (B2g, the user's call 2026-10-24).** `-O2` without link-time optimization; an error beside `-debug` or
  `-race`. The default stays `-O3` + LTO (B2c).
- **`explain FILE NAME` (B11b, the user's call 2026-10-24).** Prints one top-level item of FILE as the compiler sees it
  once the program checks: a function's signature with an inferred error set written out and its scope obligations
  (`# scopes: a outlives b`), a generic's instances, a type's constructor, fields and methods, an enum's cases, a
  global's type and baked value. `Type.Method` names a method. `-target`, `-define`, `-update` apply.
- **Effects, needs and "not a value"; `explain -caps` (B11b, B11c, QBP 6, QBP 11, A2.3, B1.2, the user's "build it"
  2026-10-27 and "if it doesn't cost compile time" 2026-10-31; built 2026-10-31).** explain, doc and hover print
  `# effects: ...`, `# T needs: ...` and `# not a value: why` under functions; `olang explain -caps FILE` lists per
  module the capabilities (files, network, processes, environment, threads, C) its code may reach.
- **`explain -asm FILE NAME` and `explain -ir FILE NAME` (B11d, QBP 7, the user's "build it" 2026-10-27; built
  2026-11-07).** A function's machine code or optimized LLVM IR as build compiles it, headed by source lines with
  LLVM's optimization remarks.
- **`olang api OLD NEW PATH` (B21, QBP 15/B1.6, the user's "do it" 2026-10-31; built 2026-10-31).** Compares the
  exported items of two versions (commits or directories): `breaking` or `ok` rows; status 1 where something breaks.
  Breaking: removed names, changed signatures, grown error sets, added enum cases, error words or trait methods.
- **Doc comments (L4b) and `olang doc` (B14).** Go's rule, no new syntax: the `#` lines directly above a declaration,
  member or global are its documentation (a member or global with none takes its trailing comment); a module's is the
  comment lines its file begins with. `olang doc FILE [NAME]` prints them with explain's signatures; `doc -html DIR
  [FILE...]` writes static HTML. Exported items only.
- **Deprecation is a doc-comment convention, read by tools only (L4b, QCW, the user's "add deprecation only as a
  comment and kind of surrounding tools thing. It should not break the compiler", 2026-11-07; built 2026-11-07).** A
  doc-comment paragraph beginning `Deprecated:` is marked by `olang doc`, the language server and `olang api` (a
  non-breaking row); the compiler gives it no meaning. Removing between versions stays the main way.
- **`olang lsp` (B15) and `olang mcp` (B16), 2026-10-24 (the user: "we need this, both for MCP and neovim
  integration").** LSP over stdio (diagnostics, hover, definition, symbols, completion, formatting); MCP over stdio
  (`check`, `explain`, `doc`, `format`, `test`). The Neovim plugin and notes are `editors/`.
- **A file is built and run (B3g):** `olang [options] f.olang args...` builds as `build` does, then runs it (its
  status, `#!/usr/bin/env olang` scripts); `-output PATH` names the output (B3h).
- **`olang format [-check]` (B13)** rewrites files in one gofmt-style layout, no options; only whitespace changes.
- **The bitwise operators bind tighter than the comparisons (E5, mine 2026-10-24).** `x & 1 == 0` is `(x & 1) == 0`:
  `| ^ &` sit between the comparisons and the shifts.
- **`**`, the power (E5a, QCG, the user's "Yes add the operator", 2026-10-31; built 2026-10-31).** `a ** b` calls the
  type's `Pow` (E31), tighter than the prefix operators and to the right (`-x ** 2` is `-(x ** 2)`), `**=` with it,
  lane by lane on arrays. A type with no `Pow` is an error naming it.
- **Logic is in words: `and`/`or`/`not`/`xor` (E7/E7a, the user's design).** `and`/`or` short-circuit; `not` binds
  looser than comparisons. No compound logic assignments. Comparisons stay symbols `== != < <= > >=` (the user's call
  2026-11-05, QCT, word forms declined).
- **One loop keyword, `for` (S9, S9a, the user's direction).** `for { }`, `for cond { }`, three clauses, `for x in e`,
  `for i, x in e`, `do { } for cond`. `for ... in` walks an array, a type with `RunFrom`, a type's own `Iter()`/`Next()`,
  else `At`+`Len` (S9d), in that order; elements are copies. `range end` / `range s, e` / `range s, e, step` counts
  upward only (S9b). `for x in try c { } catch ...` covers the loop's own calls (S9e). A for-in's names are new (D3a).
  No labeled `break`/`continue` (the user's call, 2026-10-08).
- **An expression statement must do something (S3):** a call or an increment. `++`/`--` are statements only (S3a, the
  user's call). A bare `{ }` is a scope (S1a). **A call statement giving a value that does nothing else is an error
  (2026-10-26, the user's yes to docs/survey2.md's nodiscard replacement)**; a call giving nothing, a fallible call and
  a generic's body are never judged.
- **Every local is read and every import used (D3b, M5a, 2026-10-26, the user: "extend this to unused variables
  too").** A read is any appearance but as an assignment target (Go's rule); a place never read is written `_`.
  Exempt: parameters, constructor fields, catch names, destructor-typed locals, names in branches the build leaves out.
  Said only of a program with no other error.
- **Assignment (S4, S4a, S4c, S4d).** Left to right: the target's place, then the value; a compound place is evaluated
  once. Assignment to a reference repoints (S4a). Parallel assignment `a, b = b, a` evaluates every value first;
  `a, b := 1, 2` and `x, y I32` declare several names (S4c/D12b, the user's call); `x[i] = v` on a type declaring
  `SetAt` stores through it. An assigned value borrowing storage within the place takes its old value as a copy (S4d).
- **Every path of a function with a result must return (D10a)** - structural, loops never count, `for { }` with no
  `break` of its own leaves, a leaving `join` and a `noreturn` call count. `unreachable` is checked, never assumed
  (S16d), and behaves as a failed assert. `os.Exit(code)` for any status (B5b).
- **`unreachable "why"` (S16d, mine 2026-10-24).** An optional message, any text expression, evaluated only where
  reached. **As a value (S16e, survey2 item 6, the user's yes 2026-10-27; built 2026-10-31)**: `d := t[k] if k in t
  else unreachable "checked above"` wherever a value of any type is expected; `:=` from it is an error.
- **A test passes by ending, fails by what fails (S15/S16, QU, the user's design 2026-10-17).** A test passes by
  reaching its end or a bare `return` (deferred code runs); it fails by a failed assert or check, `unreachable`, a `!`,
  or an error leaving its body. `done`, `fail` and `abort` are gone.
- **`noreturn` (D8e, QU, the user's design).** `fn Exit(code I32) noreturn`, `fn(I32) noreturn`: the body never
  returns (no `?`); a call leaves for D10a and fits where a value of any type is expected. Not a type: no variable,
  parameter or type argument is `noreturn`, and `:=` from one is an error. Lambdas, constructors, operator methods
  and `main` may not be `noreturn`; `extern fn` may (X1); a trait method is met only by a noreturn method (T31).
- **The error return trace (S18d, decided by the coordinator for the user).** Test and `-d` builds keep each thread's
  last 32 places an error went; printed after an error ends a test, escapes `main`, or reaches a `!`. Other builds
  print `(build with -debug to see where it came from)`.
- **`assert cond[, message]` is a statement (S17/S18, the user's call for the message).** Outside `test` a failure
  aborts; in a test it fails that test. Every failed check prints `FILE:LINE:` and what failed (S18a).
- **A top-level `assert cond[, message]` (S17a, docs/survey2.md 2.6, the user's "Yes" 2026-10-26).** A declaration
  decided while compiling and never run: false, aborting or undecidable is a compile error, true emits nothing.
- **`Place.Here` (E40, D8a, docs/survey2.md 2.2, the user's "Yes do that" 2026-10-26).** The prelude's `Place(File
  String&, Line I64, Column I64)`, `$p` `FILE:LINE:COLUMN`; `Place.Here` is the place it is written, and in a
  parameter's default the place of the call leaving the argument off. No keyword. D3a reserves prelude names.
- **`become f(x)` (S21, docs/survey2.md 2.3, the user's "Build it now" 2026-10-26).** A guaranteed tail call. Only a
  call of a function or method declared with `fn`, in one (never main, export fn, lambda, generator, test,
  constructor or destructor), with one signature and error set; nothing passed through memory; not in deferred code,
  a message, a task clause or a join. Its errors are the function's own, so no `try`. **The tail scope (the user's
  "Yes, do A" 2026-11-08, docs/refusals.md R5; built 2026-11-08)**: what a step makes and hands on, and a destructor
  value in a block the become closes, is built in a hidden scope bound by the chain's first ordinary call where its
  result lands and passed down unchanged (the result scope, or a `RoleTail` one) - memory as `return`'s, constant stack,
  `-memory` names each site; a by-value parameter holding a destructor value must be handed on.
- **`defer` is block-scoped (S19, the user's decision).** Last registered first, on every way out but the
  process-ending ones; deferred code runs before a join's wait and before the scope closes; it may not leave.
- **`errdefer` (S19e, the user's decision 2026-10-18).** `errdefer STATEMENT` / `errdefer { }`: deferred code run only
  when an error leaves the block outward; one list with `defer`. None pending around a `yield` (S20).
- **`match` (S12-S13f).** Several values per case, guards (`case P if c`), nested patterns, literals in payload
  positions, `case _` (alone, last); exhaustiveness (S13a). `match T` dispatches on a type variable (G15). **`case _`
  is the one catch-all, `case P: v` the value form (S12, S12b, S13f; the user's QBQ "case _ is the best" and QBR "Ye
  agree", 2026-10-27)**: `nomatch` and `=>` are gone; a value match gives each clause's value on its `:`'s line (a
  clause may instead leave by one statement); a statement match's clause is a block or `case P: stmt`. A guard's test
  narrows in its clause (S13e, QBP 1, the user's yes).
- **Array patterns (S13h, QBP 10, the user's "Do it" and the rest spelled `...`, 2026-10-31).** `case
  Array<String&>["test", file, ...words]`: a literal compares an element, a name binds one, `...name` binds the rest
  as a slice, a bare `...` skips it, no `...` is the exact length; items after the rest count from the end. The type
  is written as the literal making the subject (QBU). Arrays, text and At+Len types.
- **Struct patterns by field name; payload fields by name too (S13i, S13b, the user's decision 2026-11-07: "structs
  by name, arrays by position, and enums by both").** `case Point(x = 0, y)`: a struct's parentheses list FIELDS,
  never constructor parameters, and nothing runs; `name = p` matches a field, a bare `name` binds it, unmentioned
  fields are ignored, only readable fields (M6a); no item by position. An enum case's payload by position, then by
  name (`Shape.Rect(w, h = 0)`). A struct is one constructor for exhaustiveness. A struct matched by a constructor's
  value (`case Point(1, 2)`) is gone.
- **Expressions read as words (E28-E30, E32, the user's designs).** `a if c else b`; `x in c`/`x not in c` call
  `Has`/`Contains`; comparison chains for `< <= > >=` only; `x as E.Case` gives the payload (fails with
  `CaseError.WrongCase`, so `try e as C` or `(e as C)!`). `is` tests for null and nothing else: `x is null`, `x is not
  null` (E10c, the user's decision 2026-10-24); `x == null`, `a is b` and `x is E.Case` are errors.
- **Case tests and narrowing (E32, S8d, the user's decision 2026-10-24: "I want == always. It generalizes better into
  the payload case").** `e == Shape.Circle` tests the case, `e == Shape.Circle(3.0)` compares its payload, `_` matches
  any part. After a case test a local or parameter is narrowed so `e.r` reads the payload field; a field read where
  nothing narrows is S8d's error. **One narrowing walk (2026-10-26, the user's "Do narrowing")** serves case, null and
  error-value tests: `and`/`or`/`not`, conditionals, after an assert, loops on the test; a narrowing holds until a
  statement assigns the local. Only locals and parameters narrow, never fields.
- **Comprehensions `Array<T>[e for x in c if p]` (E27, the user's design)** - the made type required (QBU), brackets;
  an array's reserved up front from a known length, else 100 and doubling (the user's numbers).
- **The type before a literal's `[` is the type it makes; `FromIter` builds the rest (E19-E21, E27, S13h, D19, QBU and
  QBW, the user's decisions 2026-10-27: "type in front for sure", "do only fromIter"; built 2026-11-07).**
  `Array<I64>[1, 2]`, `Vec<I64>[1, 2]`, `set.Set<I64>[1, 2]`, `Map<String, I64>["a": 1]`, `C[]` empty; a comprehension
  alike. An `Array<T>` is laid out as before; any other type is `C.FromIter(walk)`, the one protocol (D19), its errors
  the literal's. The prelude and std collections declare one. **`$` renders the literal making it (E11a)**. No trait
  requires FromIter. A primitive, reference or struct with no FromIter in front is an error naming `Array<T>[...]`.
- **Error words, enum cases and constructor fields follow the listing rule (T17/T19/C2, QY):** commas on a line, line
  breaks between lines; a named set's members are on its line (T19a).
- **Keywords as names (L9/L9a):** any keyword names a method after a receiver or `.`; statement-like and non-value
  keywords may name fields. `_` discards and is never a name. **One tier of keywords (L9, the user's decision
  2026-11-08, docs/fnvalues.md section 5; built 2026-11-08):** `any`, `unique`, `immut`, `packed`, `commutes` (once
  "words of one place", L9b/L9c, now gaps) and the promise words later rounds give meaning to - `returns`, `noalloc`,
  `noblock`, `nospawn`, `norecurse`, `noextern`, `pure`, `keeps`, `borrows`, `noborrow` - are ordinary reserved
  words; each may name a field or a method (L9a) and nothing else. `tools/keyword_rename.olang` (in `olang fix`)
  appends `_` to other people's names spelled like one.
- **Numeric literals (L10-L12b).** `_` only between digits; a decimal above `I64`'s max is `U64`, beyond 128 bits an
  error; a hex/binary pattern adapting to an unsigned type is its bits (L10a); a float literal beyond its target's
  range is an error (L12b). Escapes include `\0` and `\r`; a literal never crosses its line (L13).
- **Text literals by number, and raw text (L13-L15, L14a, the user's decision 2026-10-24: "add all if they are
  standard").** `\x41` (a byte), `\u{1F600}` (a code point, UTF-8). `"""` is the one raw form: no escapes, one line or
  several; across lines the opening `"""` ends its line, the closing one stands alone and its indentation is removed
  from every line (Swift's rules).
- **Text joins by adjacency; `$x` renders any value (E11a/E11b, the user's design).** A piece is a literal or a `$`
  rendering, so a missing comma never joins silently. Values render as source writes them; floats shortest
  round-trip; a type's `Str()` overrides (E11c, the user's call) and is called exactly once per rendering.
- **More syntax rules worth knowing.** `catch` may begin a following line (R9b); a join continues onto a new line only
  inside parentheses (E11b); a shift of a literal by a value takes its target's type (E8b) and a literal shift is
  computed exactly (E4a); `x := 1 + 2` is an `I64`. A one-line declaration of several names shares one type (D12b).
- **Removed spellings, for anyone tempted to bring them back:** struct literals `T{...}` and field-list structs (T13);
  `T[]`/`T[N]`/`T[expr]` arrays and 2-D arrays (`Array<T>`); `len(a)` (`a.Len()`); scope names `&s` and scope
  declarations; UFCS method calls (M19); `same(a, b)` and the `atomicLoad`-style builtins; `compif` (B9); `while`
  (S9); `a is b` identity, `x is E.Case` and `x == null`; the helpers `Any`/`All` (`Some`/`Every`); a `size()` builtin;
  an `Iterable` interface (T35b: `xs.Iter()`); labeled break; interface switch dispatch (dropped by the user, "it gains
  very little and causes a lot of problems"); Str purity (E11c); `done`, `fail`, `abort` (QU); `own` and `take`
  (`docs/memory.md` round 3); `Array<T, N>`, constant type parameters `<N I64>` and `x as Array<T, N>&` views (QP1-
  QP4); `checked`, `CheckError` and the `Checked...` forms (`try a.Get(i)`, `x.Narrow<T>()`, `std/arith`); contract
  guarantees, named results and `fits`; `error IoError { ... }` declarations (`type IoError error { ... }`, T19);
  `nomatch` and `=>` (QBQ/QBR); `Clone` (E31d: `Copy()`).

### Types

- **Numeric primitives `I8 I16 I32 I64 U8 U16 U32 U64 F16 BF16 F32 F64`, and `Bool` (T4/T5, the user's call).** F8
  (`F8E4M3`, `F8E5M2`, saturating, IEEE equality - the user's calls) and complex `C16 C32 C64` (the user's names) are
  prelude structs.
- **Integers of every width, `I1`-`I128` and `U1`-`U128` (T4a, docs/ideas.md #5, the user's decision 2026-10-18).**
  Ordinary members: wrapping at the width, the T6b lattice, literals adapting (up to 128 bits, E4a), `T.Max`/`Min`,
  `std/arith`, `Narrow`, `$`, `Hash`, `Format`, `T.Parse`, E37's bit operations. Storage is the next of 1, 2, 4, 8, 16
  bytes. A declared type may not be named `I2` (it is one now). Widths stay primitive (the user, 2026-11-08: a width is representation and layout - packed fields, C `_BitInt`, FPGAs - while wrapping, `arith.Checked` and `arith.Saturating` are behaviour, in std).
- **A literal's own type: an integer is `I64`, a float `F64` (T6a, the user's calls, 2026-10-08/10).** A literal adapts
  to a typed target (T6); an expression of literals only adapts as one literal, computed exactly (E4a).
- **Numbers widen implicitly toward their base, never narrow (T6b, the user's design).** Wider within a signedness,
  unsigned into strictly wider signed, F16/BF16 -> F32 -> F64; a declared type into its base. Narrowing is written
  (`I32(x)`), unchecked; `try x.Narrow<I32>()` checks it (E26b) - never a per-operation check (the user: "It's not even
  a question").
- **Integer arithmetic wraps (E6c, the user's call, re-confirmed 2026-10-09).** Division by zero and MIN / -1 are
  undefined (E6a); `std/arith` checks: `try arith.Add(a, b)`, `try arith.Checked(a) * b` (E15a), and clamps:
  `arith.Saturating(a) * b` (QCX 7, the user's yes 2026-11-07; built 2026-11-08: LLVM's saturating instructions, lanes vectorize).
- **Value or reference is decided by the `&` marker alone (T11, T25a); references by default declined (QCS, the user
  2026-11-03: "don't do the object thing ... references are always shown with ampersand").** `&` is scope-tagged heap
  indirection, not an address-of: no pointer type, no unary `&`, no reference to a reference, no primitive
  references. Value<->reference conversion is assignability at the outermost level only (E12). Write-through
  assignment was rejected: `x = y` must imply `x == y`.
- **Parameters: `p mut T&` may write the caller's, `p T&` is a read-only shared view, `p T` a value (a copy by
  meaning); globals immutable unless `mut` (QCK, the user 2026-11-01: "Yes, pause it and go back to mut", reversing
  QCC's "`&` on a parameter means it may write").**
- **A guarantee is declared by holding a value (QCE, the user's decision 2026-10-31).** An array of a run-time length
  may be a field, element, payload or type argument by value (T7a relaxed): the container's own, a store copying into
  it; `Map<String, V>` holds its own key text, `Map<String&, V>` shares. A by-value array of any size is copied at the
  call where something could tell (D9h, an optimization with no meaning).
- **Permission is part of a reference's type (T25b/T25c, the user's design; kept 2026-10-31: "knowing whether or not a
  function you pass things into mutates what you passed is valuable", and "globals shouldn't be mut unless you say
  so").** `mut T&` writable, `T&` read-only, at every level, shallow. Locals and parameters are always assignable
  (`mut` before a value type is an error), a field is assignable through a writable instance (C3). Writable converts to
  read-only only at the top. A copy taken from a place reached read-only is read-only (QC).
- **References are never null unless written `?&` (T2c, S8e, E35, the user's decision 2026-10-24).** `Node&` never is
  null, `Node?&` may be; `T&` flows into `T?&`, `T?&` into `T&` only where a test narrows it (locals and parameters,
  S8e), or `x!`, which ends the program with "null reached". A never-null reference has no zero value (D13c). **An
  array may be null where written `?&` (QCI 4, the user's "an array reference that isn't pointing at a valid array
  should be null", 2026-11-01)**: null distinct from empty, the zero of `Array<T>?&`; `null` given a never-null array
  is an error naming `?&`. Nothing is uninitialized: a declaration with no value takes its type's zero value (D13c, the
  user's design); a type whose constructor has effects has none.
- **Arrays: one type, `Array<T>`, a length never written (T7-T7d, QP1-QP4, the user's design 2026-10-01 and
  2026-10-17).** Storage is fixed, laid out in place wherever its length is known where it is made (T7c); inferred,
  never written. Arrays may be passed by value (D9a): a function is compiled once per argument length (G29) only where
  its body decides on the length. A run-time array stored into fixed storage is an error naming a slice (T7d). No 2-D
  arrays (the user's call). `x.Len()` is an `I64` (E23/T10).
- **Indexing is unchecked, slicing checked once per slice (E16, E16a-E16e).** `a[lo:hi]` is a borrow tagged with the
  base's scope and permission; `try a.Get(i)`, `try a.Set(i, v)`, `try a.SliceOf(lo, hi)` fail with
  `ArrayError.OutOfRange`. An out-of-range index, a wrong `extern` prototype and a data race are the three unchecked
  holes, stated.
- **Structures of arrays: `Columns<T>` and `ColumnVec<T>` (T7e, QCS 3 and QCU, the user's decisions 2026-11-06/07:
  "Do the columns solution", "two column types", no computed types).** `Columns<T>` is laid out as one `Array<F>` per
  field of the record `T` (`c.x` is a column, lane operators apply); `ColumnVec<T>` grows like a Vec. T must be a
  record. A column view goes stale on growth as a Vec's does; `c[i]` reads/writes a row.
- **Lane operators (E39, docs/ideas.md #4, the user's decision 2026-10-18).** An array's operators work lane by lane
  (`a * b + c`, `x * 2.0`, `-a`, `and`/`or`/`not` on Bool lanes); a whole expression is one loop; `Sum`, `Min`/`Max`,
  `LanesEqual`/`LanesLess`, `mask.Select(a, b)`, `Some()`/`Every()` take one with no array made. Lengths checked while
  compiling or once per operation. `x op= v` is in place. Not for text; `a < b` on arrays is an error naming
  `LanesLess`.
- **Equality (E10, E10a, E10b, the user's decision 2026-10-24).** `==` compares what is stored, never following a
  reference: values structurally, a reference by identity - unless its type declares `Eq`, which `==` calls at every
  depth. The prelude declares `Eq`/`Hash` by contents on arrays, `String`, `List`, `Map`, `Vec`. A type declaring `Eq`
  must declare `Hash`.
- **Structs are built only by their constructor (T13, C2d, the user's call).** No struct literals. A constructor body's
  top-level locals are the fields (C2a); a bare name is a pun of a parameter; `return` is rejected. Defaults are
  compile-time expressions (D8a). `destruct { }` runs once per value where its holder lets go (O15); an empty one is
  an error (C7a); its type is declared `unique` (T13b).
- **`immut` types (T13a, the user's decisions 2026-11-03 "immut DECIDED", "unique vs immut settled").** `type Config
  immut struct(...)`: nothing of a value of it changes after its constructor (writing it or lending it writably is an
  error); `mut T&` of one is an error; a holder need not be immut; no Copy. **String is immut (the user's decision
  2026-11-03)**: `type String immut extends Array<Char>`; text being written is an `Array<Char>` or a StringBuilder,
  made a String by `String(chars)`; a type declared over an immut type is immut.
- **`unique` types (T13b, the user's decisions 2026-11-03 "unique DECIDED", "Copy and unique DECIDED", "Collections
  DECIDED", "unique vs immut settled").** `type File unique struct(fd I32) { fd }`: a value exists in one place. A
  fresh value (constructor or call result) lands by value where put; any other copy is a reference (`w := f` is a
  `File&`). A slot laid out for the value given an existing one is an error naming `File&`. A by-value parameter hands
  its value on once at its last mention (a move). A unique type declares no Copy; a holder of a unique part is unique
  unless it declares a Copy; unique and immut are never one type's. Generics copying a unique T are refused at the
  program's call (G18a).
- **`weak` references and generational types (T2d, T13d, O8e; docs/genrefs.md, the user's decisions 2026-11-08
  evening; round 1 built 2026-11-09, rounds 2-3 2026-11-09).** `prev weak mut Node?& = null`: `weak` before a `?&`
  reference in a stored position (a field, a payload, a global, an element or type argument a type stores) makes a weak
  place - it reads `null` from the moment no owning place holds its node, by the count of owning places in the word
  before every instance (generation 16 bits, count 2 bits saturating at 3; constant data and stack instances pinned);
  a weak place holds the reference with the generation it saw in its top 16 bits. Owning places counted: fields,
  elements, globals, a value local's parts; a let-go not followed (an element overwritten in place, a dead value local)
  only puts the `null` later. While compiling such a read is refused, left to the run time (K1). Nothing is reclaimed
  yet (round 4). `-memory` adds the one-holder rule's classification per type (a whole-program fact). Errors: on a local,
  parameter, result or function type; before a never-null reference, an array, a function type, an `any` or an extern
  type; a constructor's new instance stored straight into a weak place; a weak reference to a type no owning place of
  the program holds. The type it names is **generational** over the whole program (any module's `weak`): held only by
  reference (`n := Node(1)` is a `mut Node&`; a by-value slot is an error, said at the `weak` when that is in another
  module), never `unique`, a destructor not making it unique, no Copy where it declares one. explain/doc/hover say
  `# generational: held by reference; weak from 'prev', 'tail'`; `-memory` gives a row per weak place.
- **Destructors run where the holder lets go - Rust's drop (O15, O16, C9, C11, T13b, the user's decision 2026-11-03
  "unique DECIDED"; `x.Destroy()` removed by the user 2026-11-08: "Yeah, remove dot destroy").** A value with a
  destructor is held by value in a variable, parameter, result, field or payload, and its destructors run once where
  that holder lets go (block exit, callee's end unless handed on, a store over a place after the new value is made);
  parts last first. A call's value no place takes is held where the call lands (O16). A global and a generator's
  parameter hold one by reference (C11); none is held across a `yield`; one in a block a `become` closes is kept in its
  chain's tail scope (S21). C9b is gone: the one-path early
  end is written with a block or a helper function, `Destroy` is an ordinary method name, and `tools/destroy_migrate.olang`
  (in `olang fix`) deletes `defer x.Destroy()` and a last-in-block `x.Destroy()` and lists the rest.
- **Collections hold values with destructors by value (C11 relaxed, O15, M19d, the user's "Collections DECIDED"
  2026-11-03).** `Vec<File>`, `Map<String, File>`, `Deque<File>` are unique as their elements are and end them (a
  removal giving nothing ends what it removes; the holder letting go ends the live elements last first). `vacate` as a
  statement ends the value, `occupy` stores into room; a generic struct of the prelude or std may declare a
  **conditional destructor** existing only in instances holding such values. `List<File>` and a run-time
  `Array<T>(n)` of them are refused.
- **Packed structs (T13c, X11a, X18, the user's QCX 2, 2026-11-07).** `type Header packed struct(version U4, ihl U4,
  length U16) { ... }`: no padding, fields from the lowest bit up, alignment 1. Fields: integers of any width, Bool,
  floats, payload-free enums, nested packed structs, fixed arrays; references, run-time arrays and ordinary structs
  are errors. No reference names a field. `build -library` and C imports handle them.
- **Holders ended before what they hold (O15, QCZ, the user's decision 2026-11-07: "let the compiler order them").** A
  block's by-value holders end last declared first, except that one holding a reference to another is ended before
  it; two that may hold each other (a cycle) is a compile-time error naming both.
- **Declared types are nominal (T29).** `type Meters I32`, `type Name Array<T>`; `extends` inherits the base's methods
  and operators (T29f); `Name(x)` converts and names the argument's storage (T29a); a declared primitive may have a
  constructor, which a literal runs while compiling (T29d). Over a struct, enum or generic instance it is an error.
  `Char` extends `U8`, `String` extends `Array<Char>` (T29h/T29c); text written in the program is a `String`.
- **Enums carry payloads and may be recursive through `&` (T17, T17a, T17c, T17d).** A payload lives where its value
  does; an enum reference's zero is null. A case may carry one type written whole, `Round Circle` (the coordinator's
  decision 2026-10-24).
- **Enum raw values (T17e, the user's decision 2026-10-24).** `type Op enum String { Plus = "+" }`, `type Status enum
  U8 { Ok, Busy = 9 }`: a table of constants beside the cases, never their representation. `op.Value()` is supplied;
  `try Op.From(v)` fails with `CaseError.NoCase`, only where no case carries a payload.
- **Type-level builders (D19, D19a, T30b, QBT, the user's decision 2026-10-27: "I want it with a)").** `fn
  Color.FromHex(t String&) Color ? BadHex` is called `Color.FromHex(t)`, through an import, an instance
  (`List<I64>.Of(a)`) or a type variable (`T.Parse(t)`); its owner a type of its module or a trait-constrained
  variable; one result, a value of the owner; never inherited through `extends`. **D19a**: a top-level function
  returning a type its module declares with no parameter naming it is an error naming `fn T.Name`. **T30b**: a trait
  may require a builder. `T.Functions` walks them. The prelude: `String.FromC(p, max)` (X15), `F64.FromBits(u)` (E33),
  `T.Parse(t, base)`.
- **Methods are declared with a receiver clause and called only as methods (M19, the user's call).** A method may not
  share a field's name. Built-in types get methods only from the prelude (M19d). Overloading by receiver only (M21).
- **A number written as a literal is a receiver like any other value (E13c, 2026-10-18, the user: "2.0.Sqrt() should
  be valid code. Don't make an exception for floats like that").** `2.0.Sqrt()`, `255.Format(16)` take the literal's
  own type (T6a); another type is a conversion (`F32(2).Sqrt()`).
- **`Copy()` makes a new value from an existing one (E31d, the user's decisions 2026-11-03 "Copy DECIDED", "Copy and
  unique DECIDED", "Collections DECIDED").** Every type has one supplied (deep through values, shared at references
  and function values); `x.Copy()` gives it. A struct or enum may declare its own, `fn (x T&) Copy() T`, called at
  every copy of a value; it may only build (allocation, no other effect). `Clone` is gone.
- **Operators are methods named for them (E31, the user's design).** `Plus Minus Mul Div Rem MatMul Neg Less BitAnd
  ... Inc Dec At SetAt Slice Call`, lowercase being module-private (M6b); `> <= >=` derive from `Less`. Any operator's
  method but `Len`/`Eq`/`Str` may declare errors (E31a). `x[i, j]` calls `At(i, j)`. **`commutes` (E31c, the user's
  decision 2026-10-25)** after an operator's result lets `2.0 * v` call `v.Mul(2.0)`. A store through `x[i]` uses
  `SetAt` (E31b). No user-declared operator symbols; `==` and `$` overridable only by `Eq`/`Str`.
- **Several results, no tuples (D8c/D8d, the user's call).** `return a, b`, `q, r := f()`, `f(g())`; `Pair<A, B>` in
  `std/pair`. **Results and error sets are written bare** (the user's call 2026-10-24): `fn divmod(a I64, b I64) I64,
  I64 ? A, B`. **Whole-item grouping (L18c, the user's call)**: a list item holding a top-level comma is parenthesized
  whole, `Map<String&, (fn(x I64) I64, I64 ? A, B)>`. Parentheses group nothing else.
- **Defaults and `default` (D8a/D8b/E14).** Trailing defaults, `default` in an argument slot. A default is built per
  call in its declaration's context.
- **Tests name their targets (B7a, B3a, B14, B15, 2026-10-26).** `test Twice "doubles" { }`, `test Map.Get "..."`: a
  function, type or `Type.Method` of the test's own file; an unknown target or a duplicate is an error. `olang doc`
  lists tests as examples. `olang test FILE WORD...` runs the tests a word names; words naming none fail the file
  with status 3.
- **Fuzzing and property tests (B19, B19a, docs/survey2.md section 5, 2026-10-26).** `olang test -fuzz NAME FILE
  [-fuzztime SECONDS]` runs one test per input with libFuzzer. `std/fuzz` and `std/prop` (parameters made by
  reflection, failures shrunk and saved).
- **Benchmarks are tests (B19b, QCX 4, the user's "sure" 2026-11-07; built 2026-11-08).** `bench.Run(fn() { ... })` in
  a test runs the work once in every build; `olang test -bench FILE [WORD...]` grows the calls to a second (Go's rule)
  and writes ns/op, allocs/op, B/op (counted only in that build) and instr/op where a counter exists. `bench.Keep(v)`
  defeats dead-code elimination; `bench.Measurement.Of(f)` measures in any build.
- **`olang profile FILE [ARGS]` (B20, QBL, the user's decision 2026-10-26).** A built-in sampling profiler; prints
  self/total by function, hot lines and callers, and writes an SVG flame graph. docs/profiling.md.
- **Arguments by name (E14b, QBG, 2026-10-26 - reverses the 2026-09 rejection).** A defaulted parameter only, after
  every positional argument, in any order, each once (`connect(h, retries = 5)`).
- **Variadic parameters (D8g, QCF, the user's "yes, add variadic args", 2026-10-31).** `fn sum(xs ...I64)`: any number
  of arguments, held as a fixed array in the caller's frame, or `...a` passes an array on; inside a read-only
  `Array<T>&`. Last but defaulted parameters; not constructors, payloads or externs.
- **Lambdas (D16, the user's design).** `fn(x) { return ... }`, `return` always written; captures copied (plain values
  read-only, references still naming their instance, value arrays borrowed); types from the expected function type
  (D16a) or the body (D16b). A function value is `{code, environment}`. `(args)` after any postfix expression calls
  (E13b). `spawn fn() { }` runs a lambda as a task (D16e).
- **No shadowing (D3a, the user's call)**, types included: no local or parameter named like a global, function, build
  constant or type; a type and a function or global of one module may not share a name (D2).
- **`:=` declares any settled expression's type (D15, the user's call).** `null` and a call giving nothing are errors.
- **Traits are constraints; `any Trait&` is the run-time form (T30-T35, G19, the user's calls 2026-10-08 and
  2026-10-24).** `trait` declares method signatures, satisfied implicitly (Go-style); a bare trait written as a type
  is an error naming `any R&`. Defaults are methods on a constrained type variable, overridable (M19e).
- **`any Trait&` (T32-T34, D17f, 2026-10-24, the user's design; layout confirmed 2026-11-01 "keep it that way").** Two
  words, the instance and a static table per (type, trait). A struct or enum variable is borrowed, a temporary built
  where the any lands, a number/Bool/Char/array copied. Calls dispatch through the table; `mut` only through `mut
  any`; `==` is identity. A closed trait's any is matched by type cases `case Button b`; an open trait's never (the
  user).
- **No `volatile` (X3b)** - a foreign call is an opaque barrier, atomics cover threads, MMIO is inexpressible.
- **Parameters (D9, D9b).** `&` says whose instance, `mut` whether it can be written; an immutable lvalue never binds
  a `mut &` parameter. Arrays are passed by value as instances (D9a, G29).
- **Assignability (E12, E12c).** Value into reference borrows an lvalue (with a lifetime check) or builds a temporary
  in the target's scope; reference into value copies out; a reference to fixed storage is lent where a run-time one is
  wanted with no copy. A copy is written as an assignment to a value place (the user, 2026-11-01).
- **Function types are reference-only (T21, QCI 3, the user's "g Handler should not be possible because a function can
  never be a value" and "only function declarations don't have &", 2026-11-01).** A place holding a function value
  writes the marker on the `fn`: `fn&(e Event)` never null, `fn?&(e Event)` may be; a bare `fn(...)` on a place is an
  error naming the `&`. **Declared function types (T21b)**: `type Handler fn(e Event)` (no marker in the declaration),
  held as `Handler&`/`Handler?&`; nominal. A C function pointer is `fn?&` (the user, 2026-11-03). Reference-only types
  also: `any W&`, destructor types and extern types have no value form.
- **Function types (T22, T22a).** Errors compared in order, `mut` and permissions on T22's terms; a type's `Call` fits a
  function type (E31). **A function value carries its relations (T22a, QCR (1), the user's "build them all"
  2026-11-03)**: a function or lambda whose inferred obligations are more than its type says is a value wherever the
  inference follows it whole, judged as the direct call; at a boundary (argument, store, capture, task, `any`,
  `yield`, return no caller follows) only what the written type says may come, else T22a's error. **Followed into
  calls (T22c, round 7, built 2026-11-09, mine within the user's decision):** an argument whose known functions do more
  than its parameter's type allows is followed into a twin of the callee, keyed by callee and the functions' bodies,
  judged by a copy of the scope pass; captures of those functions are derived scopes of the parameter, resolved at the
  call (a temporary built there goes where the capture lives, a derived scope its caller passes - round 8; in a
  lambda's body still T22c's error); a lambda's captured local given one capture-less function value is followed
  into its one judging; limits 16 twins a body, 4 deep, 2%/256; twins with a plan of their own get code of their own
  (`_twinN`, the root object) and no early freeing; programs accepted before make no twin, their IR byte-identical. The
  function-values
  work of 2026-11-08 (docs/fnvalues.md: function values followed and specialized where it pays) is decided and being
  built. **Promises (T21c, T22b; the user's decision 2026-11-08; built 2026-11-08, round 4):** words after a function
  type's signature - `keeps b in a`, `keeps b in a.f`, `keeps x`, `borrows a`, `noborrow` and the effect words `returns
  noalloc noblock nospawn norecurse noextern pure` (G42's facts, judged where a value is held since round 5) - written only on
  function types (a declaration's, lambda's or trait method's is an error), part of the type's identity by position.
  They are the type's bound: a call through an unfollowed value discharges exactly its relations (`keeps x` against
  where the value lives, such a value held exactly), a value fits where its functions' obligations are within it, and
  T22a's error names the word to write. No promise says an argument is kept in a global. The boundary's coverage now
  matches what a call discharges (a hole: a result kept in an argument was accepted through a read-only result type).
- **Static literals (T25d).** A literal known while compiling reaching a read-only reference is the constant data
  itself; an immutable global no writable reference reaches is `constant`, and importers see its value (K2).
- **A number type's limits through its name (E36, the user's decision 2026-10-24).** `I64.Max`, `U8.Min`, `T.Max`, and
  a float's `Max`, `Min`, `Inf`, `NaN`, `Epsilon`, `SmallestNormal` - constants of the type, never literals.
- **Bit operations are supplied methods of every integer type (E37, the user's decision 2026-10-24).**
  `LeadingZeros TrailingZeros PopCount`, `RotateLeft(n) RotateRight(n)`, `ByteSwap`; inherited through `extends`.
- **Small type rules:** a type cannot embed itself by value (T16); a self-holding array type is an error (T29); an
  inherited array method is never overridden (T29e); `x.Bits()` and `F64.FromBits(u)` move a float's IEEE pattern
  (E33); a NaN renders `nan`. TBAA tags (T36) are an optimization.
- **Visibility details (M6a, M12, M4).** A member or error word is public by its own first letter; enum cases are
  alias-qualified across modules; an alias-less import takes the file's base name; capitalized aliases re-export,
  through chains of any depth; a cycle in public reachability, or one file reached two ways, is an error.

### Generics

- **Generic enums (G6b, the user's decision 2026-10-18: "generic enums go in for sure").** `type Tree<T> enum {
  Leaf(v T)  Node(l Tree<T>&, r Tree<T>&) }`; a case is written with its arguments (`Tree<I64>.Leaf(3)`) or bare
  (`Tree.Leaf(3)`, the instance inferred); `x := Opt.None` is an error naming the fix. `$` writes `Opt.Some(4)`. std
  has no `Option`/`Result` (the decision).
- **Explicit type arguments (G12, E3, the user's calls 2026-10-24 and 2026-10-25).** `big<I64>` names a generic
  function's instance, as a value or at a call; a method takes them at a call too (`x.Narrow<I32>()`). After a name, a
  `<` on one line touching the name, with `(` touching its `>`, is type arguments (C#'s rule); spaced, it compares. A
  generic is no value unless named so. A type name read as a value is an error.
- **Type parameter lists (QW, G3, G8b, the user's decision 2026-10-17).** A function's type variables are a list after
  its name, constraints in it: `fn max<T>(a T, b T) T`, `fn area<T Shape>(x T)`; a method gets its type's parameters
  from its receiver's type arguments, bare, plus a list for its own; a constructor's own variables are `struct<T>(...)`
  (G10d). Calls infer their arguments (G4); a function type is never generic of its own (G3a).
- **Monomorphized; the instantiation's name is its identity (G16a).** Rules about contents are re-checked per
  instantiation (G18); errors carry where the instantiation was asked for (G16b); G17 bounds depth.
- **A generic's needs are its requirement, said at the call (G18a, QBP 13/B1.4 option d, the user's "do D"
  2026-10-31).** What a body asks of a type variable's binding (a method, operator, index, slice, walk, membership,
  field) is its need; no constraint is required, and a call whose type lacks one is an error at the program's own
  call (`Max needs Less ('<'), and Point has none`), with a note where the body asks.
- **Inference (G9a-G9d).** Literals adapt after other arguments bind; text binds `String`; `null` takes no part; a
  value of a destructor type binds the reference; reference arguments of differing permission meet read-only.
- **Constructors infer type arguments (G10c)** and a plain type's constructor may introduce variables its fields do
  not name (G10d). **References as type arguments (G11)**, bare marker only (`<T>&`, G11a). **Constraints (G19)**
  checked where a variable is bound.
- **Instances per array length (G29-G31; constant parameters removed 2026-10-24, QP2, the user's call).** A by-value
  array parameter binds its length per call; each instance checks and decides asserts on lengths (S18c) - made only
  where the body decides something on the length. A run-time-length argument is the one instance for those.
- **Generics composition (G8a, G15).** A type variable may be a type argument (`Vec<T>`); `match T` is
  exhaustiveness-checked and compiles only the chosen arm. A literal default for a type-variable parameter is fitted
  per call (G18).
- **Error-set parameters (G1a, QAH, the user's decision 2026-10-18).** A list may end in `? E` (`type Iterator<T ? E>
  trait { mut Next() T ? E, Exhausted }`, `fn apply<T, U ? E>(x T, f fn(x T) U ? E) U ? E`). `E` stands only where an
  error set is written; a call binds it to the union of what the matched function values and iterators fail with, the
  empty set where nothing fallible binds it (then no `try`). Satisfaction is "held by" (T31). Not a stored error (T20).
- **Generators (D18-D18d, S20, QAG revised, the user's decision 2026-10-18).** A `fn` whose result is `Iterator<T ? E>`
  and whose body holds a `yield` is a generator - no keyword; a bare `return` or an error ends the walk. **Borrowed
  elements (D18c, QBB, 2026-10-26)**: `Iterator<String&>` yields read-only views. Not allowed: `yield` in a lambda,
  deferred code or a join block.
- **Compile-time reflection (G32-G38, G13, docs/ideas.md #2, the user's decisions 2026-10-18).** A type's structure
  read through its name while compiling: `T.Name`, `T.Kind`, `T.Base`, `T.Element`, `T.Length`, `T.Target`,
  `T.Nullable`, `T.Size`, `T.Align`, and the lists `T.Fields`, `T.Cases`, `T.Params`, `T.Results`, `T.Errors`. A list
  is no value: a `for` over it is unrolled, `.Len()` and a constant index are constants. Elements are descriptors
  (`f.Name`, `f.Type`, `f.Offset`, `f.Of(v)`, `c(args)`). Conditions over reflected constants decide `if`s, asserts
  and `match` per instance (G35); `match T` takes trait and generic cases (G36); `T(arg(p) for p in T.Params)` builds
  through the constructor (G37). A struct's private fields are in `T.Fields` only in its module. `json.Encode(v)`/
  `json.Decode<T>(text)` take any value.
- **Typed attributes and function reflection (G39-G41, R8, QBN, QBO, the user's decisions 2026-10-26).** `@Type(args)` /
  `@Type` before a type, function, enum case, constructor field or parameter: a value of a type the program declares,
  built while compiling; the compiler gives none a meaning. Read by `try x.Attr<A>()` and `x.HasAttr<A>()`.
  `alias.Functions` and `T.Methods` give `FuncInfo` descriptors; `f(args)` calls one.
- **Function facts (G42, QBP 9, B1.1, the user's "yes build with item 6" 2026-10-27; sharper rule item 27, "do the
  sharper rule" 2026-11-03).** `mix.Allocates`, `Blocks`, `WritesGlobals`, `CallsC`, `Spawns`, `Recursive`,
  `Terminates`, `Pure`, `Returns` through a function's name or a descriptor: a Bool constant, true where the function or
  anything it may call may (the last three where nothing is known against them); so `assert not mix.Allocates` (S17a)
  pins one. A C call is "anything" only in a program that hands an export fn to C, is built `-library`, or links C of
  its own, and then not for libc's I/O, string, memory and time functions. **Through function values (round 5 of
  docs/fnvalues.md, 2026-11-08)**: a call through a value does what the functions it may hold do where followed, through
  a parameter what each call gives it (`Twice(inc, x)` is `inc`'s), else what its type's effect words promise (no word:
  anything); read through the name, a parameter by its written type. The effect words are judged where a value comes to
  be held (T22b), `returns` and `norecurse` with no call through an unfollowed value relied on.

### Errors

- **Error sets and `?` (R1-R8).** `fn f(params) Ret ? ErrA, ErrB`: result first, error set after `?` (the user's call).
  `error T.WORD` raises; a bare unhandled fallible call is a compile error.
- **Errors declared where raised; `?` always written; no flags (R3b, R1d, R23, R23a, T19; the user's decisions
  2026-10-31, QBZ).** `error NotFound` with nothing of that name declared declares an error of its module (one value:
  `catch NotFound`, `? NotFound`, `$e`); capitalized exported, lower case private. Named sets list them (`type
  LookupError error NotFound, Ambiguous`). Every error name is CamelCase. A function that can fail writes `?` (R1d). A
  raised name one edit from another error of the module is an error with did-you-mean. A `Bool` among several results
  (R23) and a `Bool` result beside a `mut T&` parameter (R23a) are errors naming `? E`.
- **`?` alone infers the set (R1a, the user's call 2026-10-17: "Do 2", Zig's); every error has a type (R3, R22).** A
  bare `?` is what the body can fail with - a least fixed point over calls; it may come out empty. `? E` is a promise
  the body is held to. A function type and a trait method write their set (R1b); a named function fits a superset
  list. The default error and bare `error` are gone (the user: "error should always require an actual error"). **Words
  in a set (R1c, 2026-10-17):** `? ListError.EMPTY` names one word, and `catch` is judged word by word (R14).
- **`try` handles what fails as written, and nothing else is checked (R8, E15a, E24, the user's design; `checked`
  removed 2026-10-25, the user: "one error system: try").** A `try` takes the whole expression after it, up to its end
  or the first `catch` (E24, the user's call 2026-10-25); it covers every fallible call and operator in it and never
  turns a check on; one covering nothing is an error (not in a generic's body). To cover less, parenthesize. What
  `checked` checked is now a call that fails: `try a.Get(i)`, `try a.SliceOf(lo, hi)`, `try x.Narrow<I32>()`, `as`
  (`CaseError.WrongCase`), and `std/arith`. Plain `/ %`, indexing and conversions stay unchecked. `for x in try c` and
  `try join` stay; no `try { block }`.
- **`!` ends the program on what fails as written (E35, the user's decision QV).** `f(x)!`, `(f(x) + g(y))!` - `try`'s
  reach, no checks; a failure fails the running test, else prints `FILE:LINE: io.Error.W` and aborts; needs no `?`.
  While compiling it is an abort. `spawn f(x)!` ends the program from the task's thread.
- **Operators may fail (E31, E31a, the user's calls).** A plain operator method (all but `Len`, `Eq`, `Str`) may
  declare errors, making the operator fallible as written (`try a - b`, `try x[i]`).
- **The prelude's errors of the language's own operations (R20, 2026-10-25):** `ArrayError.OutOfRange`,
  `NumberError.Overflow`/`Invalid`, `CaseError.WrongCase`, `ArgumentError.Invalid` (a false contract condition, D17);
  `Exhausted` is the loop protocol's. Nothing else is built in (QO3 withdrawn by the user).
- **std fails with its own errors, never ends the program on a caller's mistake (R22, QO4, the user: "No std function
  may ever exit").** `ListError`/`VecError`, `MapError.Missing`, `TextError`, `ArrayError.NotFound`, `ChanError.CLOSED`,
  `StatsError`, `RandError`, `JsonError.UNEVEN`, `NumberError.Negative`. Language guarantees still abort.
- **Catch clauses (R9a/R9b, R11, the user's calls).** Any number, in order; an item-less `catch` takes the rest; in
  value position each clause leaves or gives its own `default`; errors no clause names propagate. `try f() default d`
  is gone.
- **Error types are declared as types; named sets; a clause names what it took (T19, T19a, R11b, R3a, 2026-10-25, the
  user's decisions QAM and the clause-only names of the same day).** `type IoError error { Full, Denied }` (at least
  one word); `type LoadError error os.Error, ParseError { Timeout }` is a **named set** - members (flattened in order)
  plus words of its own; the same set as its members written out. **`catch os.Error e { }`, `catch A, B e`, `catch
  e`** name the error the clause took: `$e`, `e == Word`/`Type`/`Set`, narrowing as S8d, `match e`, `error e` (R3a, held
  to the function's set). A spawned call's clause names no error.
- **Errors as values (T20, R3a, R11b, 2026-10-26, the user's option (b)); kept: QCY "keep errors as built then",
  2026-11-07.** An error type or named set is a value's type everywhere but a function's result: parameters, fields,
  locals, globals, elements, type arguments. Values: words written, `null` (no error, the zero value), a catch name.
  `==`/`!=`, narrowing, `match` with `case null`, `$e`, a supplied Hash, `error e` raising a held value; raising null
  stops the program. No arithmetic, ordering or number conversion. A value of a wider set fits a narrower one only
  after narrowing.
- **Errors carry data (T19b, R3b, T20, D17, S13b; docs/errdata.md, the user's decisions of 2026-11-07 "Yes, sure. Let
  errors hold values." and the three after).** A word may carry plain data, `type ParseError error { Bad(line I64, col
  I64), Eof }`, raised `error ParseError.Bad(l, c)`, read where the error is named (`catch ParseError.Bad e { e.line
  }`), matched as an enum payload, rendered by `$e`, compared and hashed by word and payload. **An error raised by
  name carries data too** (`error NoKey(key)`), field types settled by the module's first raise. **Methods on error
  types** (`fn (e ParseError) Where() String`). **`ArgumentError.Invalid(what String)`** carries the failed condition.
  Programs without payloads pay nothing. std errors carry paths, positions and keys.
- **Errors are errors (the user's rule).** Nothing returns a value beside a flag: iterators fail with `Exhausted`
  (`Next() T ? Exhausted`), `Map.Get`, `Find`, `Pop` fail with their errors.
- **`main`**: no parameters or result, any error set or none (QU); an escaping error leaves main's blocks as any
  function's, then prints `unhandled error: T.W` (and its trace, S18d) and exits 1. `os.Args()`/`os.Env()` give the
  command line (B4a).
- **Where errors may be raised (R3, R10, R14).** `error` is valid in an ordinary function and a constructor, never in
  a `test` or `destruct`; the `try ... catch { }` statement discards the value. A run-time array length out of range
  aborts (D14b), out of memory aborts (D14c).

### Memory and scopes (§8)

- **Memory lives in scopes (O1, O2).** Each block is an arena, reclaimed in one step at its close; globals live in the
  program's scope (O1b). The arena aligns by size, 64 at 64 bytes (O8a). The chunk pool is per-thread size classes
  bounded by RAM/8 with an LRU (O8b).
- **Scopes inferred, none written (QCB, O28, the user's decision 2026-10-30: "Yes, do this scoping rework").** Every
  scope marker is gone (`&x`, `&return`, scope arguments, `outlives`); the compiler places each value in the
  shortest-lived scope every use allows (region inference over the whole program), a value kept longer built directly
  where it is kept (QCR (1) reversed the no-extension rule), never a hidden copy. **No manual scopes at all (the user,
  2026-10-30: "make manual scopes impossible")**. A block stays a scope (the user, 2026-10-31): what it built that
  nothing outside keeps is freed at its close. explain/doc/hover print the obligations as `# scopes: a outlives b`.
  A reference is a bare `&`; every reference parameter has an implicit scope (O4b); a result lands where the call's
  result is put (O18a) or, handed back from what an argument refers to, lives where that does (O13). Scope analysis is
  compile-time only except the address lookup below (the user, 2026-11-01: "keep scope analysis compile-time only").
- **The scope of storage is found at run time from its address only where no call knows it (the user 2026-11-08: "Yeah,
  do runtime building scope findings with just looking up the base address"; "Never do program scope callbacks").**
  Aligned chunks, a lookup for large allocations, nothing stored per object; no program-scope fallback anywhere, and
  derived scopes (O23a) go where the hidden scope argument and the lookup cover them. **Built as O29 (round 6 of
  docs/fnvalues.md, 2026-11-08):** chunks up to 128 KB in aligned slots of one reserved range, each header naming its
  scope, larger ones in a sorted table, `__olang_scope_of`; a build into a scope of several (O12, O25i), a derived one
  (O23a), an untraced one (O11) or a reference `Str` receiver's (E11c) is placed `Found` and built where the storage
  it goes through is found - from a reference read again with no effect, or the call's own argument. **Derived scopes
  passed (O23a, C1, round 8, built 2026-11-09, mine within the user's decision):** a directly called function or a
  destructor building into a derived scope takes it as a hidden scope parameter after its type's (`typed.Scope.Passed`,
  `VarKind.Derived`); a call that knows the argument's binding, or a holder's drop knowing its value's, passes it, any
  other call null, and the body then finds it (`__olang_scope_or`). Generators, lambdas, `export fn`s and become chains
  take none. The measured loop (docs/fnvalues.md 11.1): 183 MB to 1.7 MB. Left: a value argument holding two
  references and a task's result into such a place (o12spawntarget) are refused, or given the program's scope where
  nothing passes or finds it.
- **A reference never narrows (O25, the user's decision).** A local's type says where it lives (O25a); `:=` takes its
  initializer's scope; exactness is required only where something can be stored through (O25g). Copies of
  reference-holding values keep their references where the source's are (O25h).
- **A reference local typed per assignment (O25i; NLL DECIDED 2026-11-03, the user: "Yes, there's no point in omitting
  this").** A reference local, parameter or function-valued local gets a version at its declaration and every whole
  assignment, holding the value's exact scope; each read is judged by the versions reaching it.
- **Storage kept for a view (O27 as placement, the user's QCR (1a) 2026-11-03).** A view of storage (slice, borrow of a
  part, what a callee hands back of an argument, closure) kept where that storage does not live has the storage built
  where the view is kept. A value holding a destructor whose storage is placed this way goes with it, its destructor
  run where that storage's scope closes (O15; the user, 2026-11-08; built 2026-11-08, ViewKeptDestructor and
  PartKeptDestructor gone). `-memory` lists each placement (B18), saying where such a destructor runs.
- **Obligations (O10b/O10c).** Inferred from the body, held at every call to the callee's whole body; temporaries built
  where the obligation says (O18b/O18c).
- **A returned local lives where the result goes (O26a).** A value or reference local the function returns, or that
  flows into what it returns, lives in the result scope (Go's escape analysis, static), including through a returned
  lambda's captures. A constructor field given a conditional or a match is the instance's slot (C2d, E28).
- **A kept local is built where it is kept (O28, O17, D9i; item 17, the user's decision 2026-11-03: "creating it at
  the scope of the thing we're storing it in").** A value local kept by reference past its block or turn, or copied
  whole at its last mention into longer-lived storage, has its storage placed where it is kept, a new value each time
  its declaration runs.
- **Lending (O17, O17a, O17b; R1 of docs/refusals.md, 2026-11-08, mine within the user's decisions).** A split value
  (references living elsewhere than its storage) is lent where its references live, so a callee builds where they hang;
  its own storage is lifted there too only where the callee keeps it (stores, captures, returns or hands on the
  parameter itself), a local built there each time its declaration runs - not "always lift", which would hold a copy's
  header per call. Held by reference or sliced (O17a), its local is lifted likewise. Refused only where nothing can be
  placed (a by-value parameter's storage); where its references live is one of several, O29 finds it.
- **Kept through an obligation, a store or a payload (O28; R2 of docs/refusals.md, 2026-11-09, mine within the user's
  decisions).** O28's "built where it is kept" is reached through every way a statement keeps a value, not only a
  store: a callee's obligation (O10c) - a value the statement holds for itself included (E31b's held index, a borrow
  held for an inner list's SetAt, a call's value copy a callee keeps a view of) - a part read off a call's result (the
  call lands where the part is kept, O18c), an instance's argument a store keeps (C2d), a closure local, an array copied
  into an `any` (T32a), and two target locals of one `spawn` (P1g: lengthened to the longer). Only what was refused moves;
  compiler/'s and bench's IR are unchanged. rv3roclone stays refused: a read-only list's elements pushed into a new
  writable list is what T25c refuses outside a generic, and the instance's lower side is untraced, not too short.
- **By-value parameters and match bindings kept longer (O28, O14, C2g, S13b; R3 of docs/refusals.md, 2026-11-09, mine
  within the user's decisions).** A by-value parameter kept past the call - returned as borrowed, given as a function
  value through its Call, held by the instance or by what a reference parameter reaches - has the callee's copy made at
  entry where it is kept (the result scope, the instance's, a parameter's, the program's), deep through what it owns:
  one body, no change to how it is called, so it works through function values. A match binding kept past its clause
  has its copy made where it is kept, as a local. A generator's parameter and one holding a destructor value keep their
  frame. compiler/'s and bench's IR are unchanged. The caller building a fresh argument there directly (the copy
  left out) is not built: an optimization.
- **Constructors (C2d, C2g).** A bare field lives with the instance; an argument binds the instance only where the
  body can make it hold it; a constructor's top level allocates into the instance scope. A field given a lambda or an
  adapter lives where what it captured does.
- **Scopes belong to one thread (P2, decision 48).** A task's scope arguments are private stand-ins folded at the join.
- **Letting go (O8d, round 3 of `docs/memory.md`, 2026-10-18; the user's QAB: "the user should not have to deal with
  it").** Storage a place lets go of while it was its only holder may be reclaimed then rather than at the scope's
  close - the compiler's optimization, unobservable but in memory, never running a destructor early (O15). `own`,
  `take`, loans and borrowed copies are removed. Early freeing keeps wherever a fact is missing (function values,
  externs, tasks, destructors); `-memory` (B18) lists what keeps and why. **In every module (W2, wholeprog 2.1,
  2026-11-08):** the decisions are the whole program's, and each module's code reads its places' as link-time constants
  (weak `false` where read, `true` defined by the root's decisions object, folded by LTO), so objects stay the same in
  every program; code in the root's object has them written in **A global is a place like any other (2026-11-09):** a mutable
  global holding an owner or a reference, given another value in a function, builds each value in a region of its own,
  released as it is given another; a local copied whole into one at its last mention stays in its block (no O28 lift
  into the program's scope, which never closes). **Feeders (2026-11-09):** a local stored whole at its last mention
  into an owner field or global by a statement of its own block is built in that place's next region from its
  declaration, its calls' growth there too, and moved in - no copy; elsewhere (a conditional store) as before. A copy
  made for an owner part beside other owned parts (a `Map` entry's value beside its text key) is split: the part in
  its region, the rest where the region's parent is.
- **No reference counting (the user, 2026-11-08: "doing ref counting is a bad idea"; QCR (2) answered).** Truly shared
  ownership keeps memory until its scope closes; for structures that churn, `weak` back links (below) - the count they
  use is of owning places, in a header only generational types carry, never per copy. The memory model may grow by
  additions with no run-time cost (the user, 2026-11-03).
- **Back links are `weak` (T2d, T13d, O8e; the user's decisions 2026-11-08 evening, docs/genrefs.md 0.1; decided, being
  built).** `prev weak mut Node?&` in a stored position holds without keeping; every other holding place owns. A type
  any module names weakly is generational: held only by reference, one header word (generation and a count of owning
  places, 0-3). A weak read gives `null` as soon as no owning place holds the node (the user: "the entire point of
  having weak links"); reclaiming where the last owner lets go, in every module. Errors: a fresh node stored only into
  weak places; a weakly named type no owning place of the program holds. Nodes only ever held by one owning link are
  freed at compile time alone (the one-holder rule). `unique` and `weak` stay (alternatives declined); `std/pool` beside.
- **Recorded limits:** long-lived mutated structures holding values a task can reach still only grow (ledger QF); a
  `List<String&>` has one scope for chunks and referents (G11); a few over-rejections are left (the refusal audit,
  docs/refusals.md, 2026-11-08, sorts them by cause; the user's yes the same day, rounds R6/R8: what a global keeps
  lives in the program's scope, deferred code pending at a `yield` runs when an unfinished generator is let go, and C11
  accepts run-time-length arrays of destructor values, a program's own conditional destructor and a global holding one
  by value; and storage passed at a `become` is built in a tail scope shared by the chain, as `return`'s would be).
- **The unique hand-on is a move (T13b, O8d, D9i, 2026-11-07).** A unique value handed on out of a by-value parameter
  at its last mention is moved, never copied; a lambda keeps its own copy; a named function moving a unique value into
  what outlives the call is no function value (T22a).
- **More scope rules (O2d, O13a, O13c, O14b/O14c, O16, O18a, O20, O26).** Each return in a loop is judged again by
  later assignments; a call's result carries its callee's result bindings; a by-value parameter's references returned
  are an obligation; a by-value parameter's own storage is never returned as borrowed (O14); a reference field's scope
  is its container's; a slice or view of a temporary borrows it in the block it is written in (E16a).
- **A match binding lives in its clause's block (S13b) and takes the matched place's permission.** A conditional or
  match of references lives where its values share a scope, else "not known here" (E28, O12).

### Concurrency

- **`join { }` with `spawn` calls inside (P1-P1b).** Binding is lexical, one level; the join waits on every way out; a
  task's arguments must outlive the join block (P2). P3/P5 (no shared writes) were withdrawn - a spawning program owns
  its races, which `-race` (ThreadSanitizer, P7) detects - Go's position.
- **`spawn x = f()` binds a result (P1g)**; parallel map is `spawn out[i] = f(i)`.
- **A spawned call may fail (P4-P4d, decision 50, the user approved).** `spawn try f()`, clauses run on the task's
  thread; `try join { } catch ...` fails with the earliest-spawned failure; a failing task's target is unwritten.
- **Memory model (P8-P8c):** three happens-before edges (globals, spawn, join); a data race is undefined.
- **Atomics are methods on integer places (P9, E10c, the user: "I don't like built-ins very much"):** `AtomicLoad`,
  `AtomicStore`, `AtomicAdd`, `AtomicSwap`, `AtomicCompareSwap`, sequentially consistent.
- **Runtime:** 1:1 threads, cached (at most 64 idle); no fixed pool and no M:N (P1e/P1f). Cancellation and timeout are
  `std/cancel` (the user's call: "both"); channels are `std/chan`. `spawn` is for parallelism, not I/O concurrency.

### Modules and the build

- **A module is a file (M1/M22/M23, the user's design 2026-10-06).** Imports name a file without `.olang`: `std/x`,
  `host/owner/repo[@ref]/path`, or relative to the importing file. Identity is the path. Capitalized names are
  exported, members and words too (M6/M6a); a protocol method follows the same privacy (M6b). An import's alias is
  reserved in its module (M20). The prelude (`std/prelude`) gives built-in types their methods and types by bare name
  (M19d). No package-private visibility for now (the user's call). The unit of import is the module.
- **Remote packages** are fetched with git into a cache keyed by commit and pinned by `olang.lock` (M23b, the user's
  call); `-update` updates (M23c). Versions DECIDED 2026-11-07 (the user: "Yeah, go with the cargo model"): `olang get
  pkg` takes the newest same-major version and records it in olang.lock; `-update` moves all; `pkg@v1.2` pins.
- **Separate compilation; facts with readers (B1-B8, B3i; the user's decision 2026-11-08 evening, docs/wholeprog.md:
  "If we are going to do it eventually, just do it now").** `compile` one module, `build` build and link, `test` each
  file's tests in a process of its own (B3a), `interpret` through the evaluator (B3e). Imports are resolved from source;
  globals initialize imports first, then in dependency order (B5a). No interface file: records are a cache of what
  the source says. **Decided, being built** (docs/wholeprog.md section 10): facts with readers replace "one module at a
  time" - the front end may use whole-program facts, each recording the modules that read it, reaching code as a
  link-time constant (a choice at a site, folded by LTO), in the root's object (code for this program), or in a
  module's object keyed by the facts it read; an object is reused unless its module, its imports or a fact it read
  changed, and stays shared between programs where no program fact reaches it. Early freeing in every module through
  the constants; field sets of two scopes; the front end incremental on the same records, tested against clean builds
  in the suite. **Built (W1)**: the table of facts (`compiler/facts.olang`: G42's, E31b's, D9h's mutable globals),
  each module's record taken only where every fact it read holds, and the harness - checks scenarios `incremental`
  (each edit kind against a clean build), `records` (damaged, foreign and side-by-side records), `reuseall` (every run
  case under `OLANG_CHECKREUSE` in one directory, two orders), and the edit fuzzer (`make editfuzz`, a fixed set in
  verify). **Built (W3a)**: front records beside the IR's, under the same key and facts read - each body's M19g
  summary (a taken body is not walked again), signatures with inferred error sets and baked values - written from a
  program that checked cleanly; `OLANG_CHECKINCR` compares every record taken with checking afresh (in `incremental`,
  `reuseall`, `records` and the edit fuzzer). Keyed by the texts a module reaches; narrowing to what it reads of its
  imports waits for W3b's summaries. **At a precompiled module's boundary the defining module decides (B3i)**: its decisions from its own
  code, a store of the program's widening its field refused at that store. Compiling the program as one unit:
  declined.
- **Optimization (B2c-B2e):** `-O3` and full LTO by default (ThinLTO for a program of 8 MB of IR or more); `-debug` is
  `-O0` with DWARF; `-race` ThreadSanitizer; `-sanitize` the scope sanitizer (B2f).
- **Targets (B12, the user's call):** native CPU by default, `-target NAME` to cross-compile; target constants
  `TargetOs TargetArch TargetCpu TargetVectorBits TargetHasFma`. No fast-math or contraction (the user's call).
- **Conditional compilation is a top-level `if` (B9-B10c, the user's design).** `-define Name=value` build constants;
  an immutable top-level global is a default `-define` replaces (B10c); a local `if` the build decides is conditional
  compilation too (S8b); a constant condition not depending on the build is a dead-branch error (S8a).
- **Diagnostics are one row each (B11/B11a, the user's design).** `path:line:col: error[RULE]: message`, the source
  line and a caret, `note:` rows; one error per cause; `olang explain RULE` prints the spec rule. **Did you mean
  (2026-10-26, the user's request):** every name that names nothing ends with the nearest allowed name. **Typed holes
  (E41, QBP 3, the user's "yes build it", 2026-10-27)**: `_` where a value is wanted is an error naming the type
  wanted and the names in scope that fit.

### Compile-time evaluation

- **Anything computable at compile time may be (K1/K1a, the user's request); no function colouring.** The evaluator
  interprets the checked program with the run time's semantics and refuses only what it must (effects skipping would
  show, externs but libm, undefined behaviour, a step and memory budget). Whether a function is evaluable is a
  property of the function (K1a); it must handle everything it can (the user's rule).
- **`comptime e` and `comptime for` (K3, K3a, survey2 item 8, the user's decision 2026-10-27: "comptime is a good
  word").** A keyword at the use site only: `comptime e` takes the whole expression after it, is computed while
  compiling and is constant data; what the evaluator cannot compute is an error at it. `comptime for x in e` (a range
  or an array of integers up to 64 bits, Bool or Char) is unrolled, each copy's `x` a constant, so it decides `if`s,
  asserts and lengths (G35, T7c); at most 4096 copies.
- **Constant contexts:** immutable globals are baked as data, references and arrays included (K2, K2b); an assert it
  can decide is checked while compiling (S18c); a condition the build decides (B9c, S8b); fixed locals (S8c).
- **Decided asserts (S18c, 2026-10-27, mine).** A true one loses its run-time check; a false (or aborting) one is a
  compile error only where every run of its body reaches it; in a branch the build does not decide, an arm, a clause,
  deferred code or after something that may leave, it stays a run-time check.
- **Refusals and agreements.** Refused: mutable-global reads, global writes, externs (but known libm, X8), process
  endings, undefined behaviour, destructor-bearing values outside a global's own frame (K2c), anything past the step
  and 256MB budgets; tasks run in sequence at the join. Every disagreement with the run time is a bug fixed in the
  evaluator. Tests the evaluator runs sit beside run-time tests for every language change (the checklist above).
- **`interpret` runs programs as built, and `test -interpret` their tests (B3e, M8; compared in the suite
  2026-11-07).** Scopes reclaimed as they close, destructors run where holders let go; tasks run one after another at
  their join. Every test file and the checks' run cases are compared with the built runs; listed differences only
  (std/chan's waits for a task, std/net's getaddrinfo, memory-measuring cases, an export fn handed to C). Plain
  `olang` with nothing after it is to open the interpreter at a prompt, with a Jupyter kernel on top (QCX 6, the user
  2026-11-07; after "done").
- **`embed PATH` (E38, the user's decision 2026-10-18).** A file's bytes read while compiling: a read-only
  `Array<U8>&` of constant data; text is `String(embed "f")`. PATH is a literal or an expression reading no local,
  resolved like a relative import, kept inside std or a remote repository.

### std

- **Text is plain `String` with methods, no wrapper type.** A literal, a slice and every rendering already are one.
  `Eq`, `Find` (fails on a miss), `Split`, `Trim`, `Replace`, `ParseInt(base)`, `ParseFloat`, `PadStart`, `Lines`, `<`
  by bytes. A String never changes (T13a): text being written is an `Array<Char>` or a StringBuilder.
- **Math is the numbers' methods (M19d, 2026-10-18, the user: "Yes let's do this. I want an integer power as well",
  "Also abs for integers"; std/math removed).** Every C math function is a method of every float (`x.Sqrt()`,
  `y.Atan2(x)`, `x.Pow(y)`). `Abs`, `Min`, `Max`, `Clamp` over `Number`. Integers: `x.Pow(n U32)` (wrapping),
  `Sqrt()` (signed fails with `NumberError.Negative`). Constants `Pi`, `Euler`, `Inf`, `NaN` are the prelude's.
  **`x.Mod(n)`, `x.DivFloor(n)`, `x.DivCeil(n)` (QBP 2, the user's yes, 2026-10-27)** on every integer; `%` stays
  truncated.
- **The prelude's collections are Vec, Map and StringBuilder; List is `std/list` (M19d, QZ2, the user's decision
  2026-10-17).** `Vec<T>`, `Map<K, V>` (`Get` fails on a miss, `Take`, `Update`) and `StringBuilder` are the prelude's;
  every other container is std: `list.List<T>`, `pair.Pair` (the user's call: "Pair goes in Std not prelude"), set,
  deque, heap. Iterators and arrays have `Some Every Count Fold Map Filter ToVec`.
- **Vec, Map, Set, Deque, Heap and StringBuilder are values (QCE, "Handles DECIDED 2026-11-01"; QCL's
  reference-only form declined 2026-11-03).** Each holds its storage by value: a copy is a collection of its own,
  shallow at every `&`; sharing is written `&`. Collections are ordinary types with a Copy, unique exactly when their
  elements are. List stays a handle with `Clone()`.
- **`Vec<T>` is the default growable array (M19d, the user's QAB).** Growth doubles; the old buffer stays until the
  scope closes, so a stale view reads old elements, never freed memory. `View()`/`ViewMut()` give the elements as an
  array. **M19g**: using a view or Ref after the same Vec may have grown is a compile-time error where the compiler
  sees the same Vec on both sides. Array and Vec stay two types (QCV, the user's "Yeah, okay, keep them" 2026-11-06).
- **Printing (M19f, 2026-10-17, the user's decision):** one pathway, `std/io`: `io.Print`, `io.Println(t = "")`,
  `io.PrintErr`, `io.PrintErrln` fail with `io.Error` and are written with `try`. `io.Show<T>(v T, at Place =
  Place.Here) T` (QBP 4) writes `FILE:LINE:COLUMN: $v` to the standard error and gives `v` back. `io.Writer` buffers
  (errors at `Flush`); `io.Lines` reads lines.
- **Libraries:** `std/os`, `std/json` (immutable recursive enum tree), `std/http` (over curl), `std/csv`, `std/stats`,
  `std/rand`, `std/time`, `std/filepath`, `std/cancel`, `std/chan`, `std/ffi` (libffi), `std/sync` (`Mutex<T>` reached
  only in `m.With(fn(v mut T&) { })`, `RWLock`, `Once`), `std/net` (blocking TCP and UDP), `std/set`, `std/deque`, `std/pool` (a slotmap of generational handles: `Add`, `try p.Get(h)`/`Ref`/`RefMut`/`Remove` failing with `pool.Error.Stale`; the user 2026-11-08),
  `std/heap`, `std/utf8`, `std/base64`, `std/hex`, `std/sha256`, `std/crc32`, `std/flags`, `std/regex` (RE2's syntax,
  linear time) - survey items 7-8, the user: "Yes all of that", 2026-10-24; names mine, by the user's naming rule.
  Prelude iterator adapters `Take Skip Enumerate Zip Chain Sum Min Max MinBy MaxBy`.
- **`extern fn` and C interop (X1-X16; v2 the user's design 2026-10-24).** Across the boundary: Bool, numeric
  primitives, arrays of them, **extern types** (`extern type Db`, held as `Db&`/`Db?&`, X10), plain-data structs by
  reference and by value (X11). `link "name"` only on an extern block or a C import (X9). **Callbacks are `export
  fn`s only** (X13). `build -library` (X14) makes `libNAME.so` and `NAME.h`. `t.ToC()` and `String.FromC(p, max)`
  (X15). `olang bindgen HEADER.h` (X16). No extern variables; the X1a hole (a wrong prototype) stands. C math functions
  with exact prototypes are evaluated while compiling (X8). C's `T*` is `mut T&` (borrowed, no copy), `const T*` is
  `T&`; a source that cannot be borrowed writably (constant data, a bare parameter) is copied for C (the user,
  2026-11-01).
- **C headers and C files are imported as modules (X17-X22, X9, X3a, QBE, 2026-10-26, the user's design).** `import z
  "zlib.h" link "z"` gives a module of what clang reads, translated while compiling and cached; `import fast "fast.c"`
  compiles the file's C as IR so the LTO link inlines across; `extern link "golib" { fn ... }` declares a header-less
  library, `extern { }` what is already linked. Variadic C calls pass C's default promotions. `void *` is the prelude's
  `CVoid?&` (X22). One C import per library. Left: C extern variables and cast macros have no form.
- **std/linalg is gone (2026-10-26, the user: "No linalg in stdlib ... Tensors are part of oann and they declare
  everything themselves").**
- **std names never repeat their module's (the user's naming rule, 2026-10-24: "we don't integrate the knowledge that
  modules have namespaces"; refined: "chan.Chan can stay no?").** `io.Error`, `os.Error`, `json.Error`; a module named
  for its main type keeps that type's name (`chan.Chan`, `json.Json`, `set.Set`); a module with several error types
  names the others by subject (`http.HeaderError`). The prelude must never declare a plain `Error`. Names in std are
  mine unless marked; the user's: `Map` (not Dict), `Mul`, `extends`.

### Codegen and runtime

- **The runtime is `std/runtime/*.ll`, compiled once per configuration and linked once (B3, X7).**
- **Cold paths, inferred (survey2 item 9, the user's decision 2026-10-27).** No syntax. What ends the program or a test
  calls `cold noreturn` runtime functions; a call's error edge carries weights.
- **No per-operation run-time checks (the user's rule).** Checks are per construction (slice bounds, array length) or
  opt-in by a named call that fails (`try a.Get(i)`, `try x.Narrow<I32>()`, `std/arith`).
- **Optimizations are mine to decide (the user, 2026-10-27).** Those that change no meaning are never a question
  (docs/optsurvey.md lists what was built). Benchmarks against C are in `bench/` (not in verify).
- **Testing.** `make verify` runs the corpus, std's tests, `checks/` (must-fail cases and whole-build scenarios) and the
  port's diffs; `make race`, `make scopesan`, `make fuzz`, `make scopefuzz` stand apart. Old tests are kept (the
  user's rule). The suite runs side by side; `make quick` is the edit-test loop; `make verify` stays the gate.

### The C compiler and the port

- **The C compiler, stage 0, is removed (2026-10-23; the user's decision).** Its last commit is tagged `stage0-final`.
  The oracle is `compiler/goldens/`; building from nothing is the generated seed (`seed/`, `make seed`, `make
  bootstrap`, with clang alone - the user, 2026-10-18). The compiler is `build/olang`. No splitting files for size (the
  user).
- **The port is a redesign (the user's rule):** a hand-written scanner, recursive descent with Pratt expressions, a
  demand-driven checker over an AST of enums, §8 as its own pass, MIR, one evaluator for comptime and `interpret`, LLVM
  IR emission per module (`compiler/DESIGN.md`). Acceptance is the test suite plus stage 1 rebuilding itself. Compile
  speed is a first-class goal (the user, 2026-10-23). The port builds itself (stage 1 == 2 == 3).
- **Numeric traits: `Float`, `Integer`, `Number` (T35c, T31, 2026-10-17, the user's decision).** Closed prelude traits
  satisfied by the four floats, the eight integers, and all twelve; `Bool` none. **A declared type never satisfies
  one, `extends` included (mine)**. 
- **A literal reaching a constrained variable takes a type its constraint allows (G9a, G19, T35c, 2026-10-18, the
  user: "math.Sqrt(4) should not be an error").** A variable only numeric literals reach binds the widest of their
  types unless that fails the constraint, then the first of `F64, I64, U64, F32, I32, U32, F16, BF16, I16, U16, I8, U8`
  that meets it. A typed argument binds its own type.
- **Traits: extends, closed, intersections (T30a, T31a, G19, T35c, 2026-10-24, the user's decisions).** `type Dwelling
  trait extends Shape, House { ... }` has its methods and every extended trait's. `type Float trait for F16, BF16, F32,
  F64 { }` is **closed**: met by the very types it lists and nothing else. `<T Shape House>` is an intersection. A
  `match T` over a closed trait's types needs no `case _`.
- **Contracts (D17-D17g; the user's design 2026-10-24, revised by the user 2026-10-25).** One bracketed block after the
  parameter list: `fn pick(x I32, y I32) [y > x] I32 ? ArgumentError { }`, `type Percent struct(v I64) [v >= 0 and v <=
  100] { v }`. A condition is any `Bool` expression over the parameters and what a body reads at its top level.
  **Checked on entry in every build**: a false one fails the call with `ArgumentError.Invalid` carrying the function
  and condition (the failed condition's text, the user 2026-11-07); `ArgumentError` is in the function's set. Decided
  while compiling where the evaluator can. Scope relations are no condition (O10b). A trait method's contract is
  checked before dispatch. D17g: a conversion the evaluator computes that does not fit (`U8(300)`) is a compile error
  naming `x.Narrow<T>()`.
- **`olang fix FILE|DIR...` (B17, B1, 2026-10-24, the user: "runs every idempotent migration tool in order; no version
  marker").** Runs the migration tools of `tools/` over the files in the order the changes were made; `-check` lists
  what would change, status 1 where any would, 2 on failure. Not every tool is idempotent (tools/README.md).
- **Error names print qualified (B5, S16, S18d, E35, 2026-10-24).** Wherever the compiler or runtime prints an
  error's name it is written as source writes it outside its module (`io.Error.Failed`).
- **Definite initialisation; arrays written once with no clear (D13d, D13e, D14d, E27, T7c, 2026-10-26, the user's QBA
  and QBJ).** A local or constructor field with no value whose type has no zero value must be assigned on every path
  before any read. **Globals (D13e):** a global declared with no value is assigned by `NAME = expr` inside a top-level
  `if` below it. **Arrays:** a comprehension never clears its storage; `Array<T>(n)` filled by the very next `for i in
  range n` storing `a[i]` once is not cleared (D14d).
- **The formal specification (`SPEC.md`) and the spec-first process.** `SPEC.md` is the normative, current-state-only
  reference manual (rules numbered `<prefix><n>`; EBNF grammar) - no narrative, no history, and no mention of
  CLAUDE.md, Claude, or the design process. A language change is made spec-first: write the rule in `SPEC.md`,
  implement so the code conforms, then record the *why* here (and in HISTORY.md).

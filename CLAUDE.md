# olang design principles

olang is a custom programming language. C-like structure, with quality-of-life improvements over C.
Its direction (the user, 2026-10-08): no manual memory management, C-like performance, natural language as much as
possible, minimal syntax, multi-purpose (AI/data science, scripting, GUI) - the base of larger projects, so the design
has to be solid and smooth. The full statement - the principles, what they mean in practice, what is deliberately not done,
and how to judge a new feature - is `PRINCIPLES.md`, imported here:

@PRINCIPLES.md

Error handling is modeled on Zig (explicit error sets/unions, no exceptions). Longer-term direction:
Rust-like compile-time memory/security guarantees (underway - see "Memory and scopes" in Settled decisions below;
scope containment is checked at compile time, a general borrow checker is not, and nothing about freeing is written by
the program: freeing early is the compiler's, `docs/memory.md`).

This file is a living design record, kept terse on purpose - it is not a spec (see `SPEC.md` for the
normative, current-state language reference) and not the full story either (see `HISTORY.md`
for the complete discursive record behind every entry below: why each decision was made, what was
tried and reverted, what bugs were found and fixed along the way). Whenever a design decision is
made, implemented, revised, or reversed: write or extend the full entry in HISTORY.md in the
same session, and keep the short current-state summary below in sync with it - don't let either
drift out of sync with the actual code.

## Claude's memory

What Claude has learned working with the user, in four files in `.claude/memory/`, imported here so every session
starts with them: `rules.md` (their standing rules and corrections), `direction.md` (their direction for the language,
how they write, their time zone), `plan.md` (the work order and recorded future work), `decisions.md` (the ledger of
questions put to them and the decisions made for their review).
`MEMORY.md` is the index; `archive/` holds historical notes, which are not imported. Keep them current in the same
commit as the work, as with this file: a new standing rule or correction from the user goes into `rules.md` under its
topic (with their words) and, if it adds a file's worth of something new, a line in the index; and every question put to
the user goes into the ledger (`decisions.md`) when it is asked.

@.claude/memory/MEMORY.md
@.claude/memory/rules.md
@.claude/memory/direction.md
@.claude/memory/plan.md
@.claude/memory/decisions.md

## Checklist for every language change

Go through this for every change to what olang means - a rule added, revised or removed - before calling it done:

1. **Spec first**: write or revise the rule in `SPEC.md`, grammar included.
2. **Checker and codegen**: implement it so the code conforms to what was just written.
3. **Compile-time evaluator** (`bootstrap/comptime.c`, K1): give it the same semantics - never leave it refusing or diverging
   from the run time. Prove the two agree with a test the evaluator actually runs (an `assert` it can decide, S18c,
   or a global it bakes, K2) beside the run-time test.
4. **Tests**: corpus tests for what now works (read back after an arena churn where scopes are involved), and
   `checks/cases` programs for what must now fail, each naming the expected diagnostic.
5. **Migrate the corpus and `std`** when the change invalidates code; keep old tests unless the change invalidates them.
6. **Diagnostics**: new errors name the rule and say what to write instead; reword any message the change made stale.
7. **Record it**: the current-state entry below, the full story in `HISTORY.md`, and any question left open in the
   pending-decisions ledger (`.claude/memory/decisions.md`).
8. **`make verify`** passes, then commit.

## Settled decisions

The current state only, one entry per area, naming its rules (the spec is `SPEC.md`). Why each holds, what was tried
and reverted, the measurements and the bugs found on the way are in `HISTORY.md`; the entries this file held before
2026-10-17 that carried something HISTORY did not are copied there verbatim ("From CLAUDE.md's settled decisions,
moved 2026-10-17"). "(the user's call)" marks a decision the user made; the rest are mine within their direction.

### Syntax and statements

- **Statements end at a line break (L18), never `;`** (a `;` is one error). A `}` ends the statement before it (L20),
  so any block may be one line. Outside brackets a line starting with `if` starts a statement (L18b). Braces kept over
  indentation (the user's call, 2026-10-17, QN).
- **One listing rule (QY, L18a, the user's call 2026-10-17).** Everywhere a list appears - parameters, arguments,
  results, error sets, error words, enum cases, constructor fields, type parameters and arguments, array literals,
  indexes, case alternatives, catch items - items on one line are separated by `,`, items on different lines by the
  line break. A line break separates where L18 would end a statement (so a line ending in an operator continues the
  item), or after an item ending in `}`, `>` or a bare `&` when the next token starts a later line. A comma before a
  line break is an error (reversing L18a's trailing comma and T17/T19/C2's comma-is-an-error), and so is one before the
  closing bracket on its line. `+` is gone from error sets and catch items (`? IoError, ParseError`, `catch A, B.X`). A
  function type's or a lambda's error set is one item or parenthesized (`fn(I64) ? (A, B)`) - always, so a `,` after
  it separates the list it stands in (mine). A parenthesized expression and a comprehension are one item, not lists:
  line breaks inside separate nothing (mine). `x, y I64` (D12b) is unchanged. `tools/syntax_migrate.olang` migrates.
- **`fn` is the function keyword (D7, the user's call).** Retired spellings (`func`, `while`, `&&`, `||`, `!`,
  `choice`, `+` on arrays, lowercase primitives) are simply unknown - their diagnostics were removed at the user's
  request.
- **Comments: `#` to the line's end, `## ... ##` a block (L4/L4a, the user's call).**
- **The command line is words (B1, the user's call 2026-10-17, reversing one-character flags).** Modes `build
  compile test interpret format explain help`; options `-output -debug -race -sanitize -target -define -update -check`,
  each checked against the modes it applies to (one table, also `help`'s); old flags simply gone (`tools/cli_words.olang`).
- **A file is built and run (B3g):** `olang [options] f.olang args...` builds as `build` does, then runs in the
  compiler's place (its status, `#!/usr/bin/env olang` scripts); `-output PATH` names build's/compile's output (B3h).
- **`olang format [-check]` (B13)** rewrites files in one gofmt-style layout, no options; an olang program
  (`compiler/fmt.olang`, on the port's scanner and parser) built once into the cache; only whitespace changes.
- **Logic is in words: `and`/`or`/`not`/`xor` (E7/E7a, the user's design).** `and`/`or` short-circuit (the user's
  call); `not` binds looser than comparisons, as in Python. No compound logic assignments.
- **One loop keyword, `for` (S9, S9a, the user's direction).** `for { }`, `for cond { }`, three clauses (post clause a
  simple statement), `for x in e`, `for i, x in e`, `do { } for cond`. `for ... in` walks an array, a type with
  `RunFrom` (run by run, S9f), a type's own `Iter()`/`Next()`, else `At`+`Len` (S9d) - in that order of preference, an
  iterator winning over indexing; elements are copies. `range end` / `range s, e` / `range s, e, step` counts upward
  only (S9b, the user's design). `for x in try c { } catch ...` covers the loop's own calls (S9e). A for-in's names
  are new (D3a), so `for x in m` is never membership. No labeled `break`/`continue` (the user's call, 2026-10-08). A
  loop's condition is evaluated in the turn it decides, a post clause in a block of its own, so what either builds is
  reclaimed each turn (2026-10-18, E31b's M1 - the block around the loop kept every evaluation's: 745MB for 5,000 reads
  of a 72KB element); stage 0 lowers `do { } for c` to the three-clause form, its condition read from the second turn.
- **An expression statement must do something (S3):** a call or an increment. `++`/`--` are statements only, never
  operands (S3a, the user's call). A bare `{ }` is a scope (S1a).
- **Assignment (S4, S4a, S4c, S4d).** Left to right: the target's place, then the value; a compound place is evaluated
  once. Assignment to a reference repoints, in every position (S4a). Parallel assignment `a, b = b, a` evaluates every
  value first; `a, b := 1, 2` and `x, y I32` declare several names (S4c/D12b, the user's call). An assigned value
  borrowing storage within the place takes its old value as a copy, decided by types (S4d) - in stage 0 too since
  2026-10-18 (it had asked the callee's body, `calleeMayKeepArg`).
- **Every path of a function with a result must return (D10a)** - structural, loops never count, `for { }` with no
  `break` of its own leaves, a leaving `join` counts, a `noreturn` call counts. `unreachable` is checked, never assumed
  (S16d), and behaves as a failed assert. `os.Exit(code)` for any status (B5b), process-wide, tests included.
- **A test passes by ending, fails by what fails (S15/S16, QU, the user's design 2026-10-17).** A test passes by
  reaching its end or a bare `return` (deferred code runs); it fails by a failed assert or check, `unreachable`, a `!`,
  or an error leaving its body - a `try` in a test need not catch everything (`FAIL - name: T.W`, then the trace).
  `done`, `fail` and `abort` are gone, ordinary names now (they were the test/process enders; `crash` had been renamed
  `fail` by the user).
- **`noreturn` (D8e, QU, the user's design).** `fn Exit(code I32) noreturn`, `fn(I32) noreturn`: the body is checked
  never to return or fall off its end (no `?`; every path a noreturn call, `unreachable` or `for { }`); a call leaves for
  D10a and fits where a value of any type is expected (`catch default os.Exit(2)`, a conditional's value). Not a type:
  no variable, parameter or type argument is `noreturn`, and `:=` from one is an error. A noreturn function fits a
  function type with no result (my call). Lambdas, constructors, operator methods and `main` may not be `noreturn`.
  A noreturn call fits any value position - a match value, beside a conditional's other value - and takes no part in
  generic inference (G9a); a noreturn trait method is met only by a noreturn method (T31); `extern fn` may be one (X1).
- **The error return trace (S18d, decided by the coordinator for the user).** Test and `-d` builds keep each thread's
  last 32 places an error went - `raised here`, `try passed it on`, `left the test` - cleared where a clause takes it,
  nothing on the success path, nothing at all in other builds; printed after an error ends a test, escapes `main`, or
  reaches a `!`, and by `-i`. Other builds print `(build with -debug to see where it came from)` instead.
- **`assert cond[, message]` is a statement (S17/S18, the user's call for the message).** Outside `test` a failure
  aborts; in a test it fails that test. Every failed check prints `FILE:LINE:` and what failed (S18a).
- **`defer` is block-scoped (S19, the user's decision).** Last registered first, on every way out but the
  process-ending ones; deferred code runs before a join's wait and before the scope closes; it may not leave.
- **`match` (S12-S13f).** Several values per case, guards (`case P if c`), nested patterns, literals in payload
  positions, `case _` (alone, last); `match` as a value with `case P => v` (S12b); exhaustiveness over the patterns
  (S13a, Maranget). Binding alternatives bind the same names and types. `match T` dispatches on a type variable (G15).
- **Expressions read as words (E28-E30, E32, the user's designs).** `a if c else b`; `x in c`/`x not in c` call
  `Has`/`Contains`; comparison chains for `< <= > >=` only, each operand once; `x is T`/`x is E.Case` and `x as T`
  (fails with `WRONG_CASE` under `checked`, else aborts). `a is b`/`a is not b` is identity (E10c; `same` removed).
- **Comprehensions `T[e for x in c if p]` (E27, the user's design)** - element type required, brackets; reserved up
  front from a known length, else 100 and doubling (the user's numbers).
- **Error words, enum cases and constructor fields follow the listing rule (T17/T19/C2, QY):** commas on a line, line
  breaks between lines.
- **Keywords as names (L9/L9a):** any keyword names a method after a receiver or `.`; statement-like and non-value
  keywords may name fields (typed, never punned). `_` discards and is never a name.
- **Numeric literals (L10-L12b).** `_` only between digits (L10b); a decimal above `I64`'s max is `U64`, beyond 64
  bits an error (L10); a hex/binary pattern adapting to an unsigned type is its bits (L10a); a float literal beyond
  its target's range is an error (L12b). Escapes include `\0` and `\r`; a literal never crosses its line (L13).
- **Text joins by adjacency; `$x` renders any value (E11a/E11b, the user's design).** A piece is a literal or a `$`
  rendering, so a missing comma never joins silently. Values render as source writes them (`Point(1, -2)`, `I64[1,
  2]`, `List<I64>[1]`, `Map<K, V>{k: v}`); floats shortest round-trip (Schubfach); a `Char` (and a type over one) as a
  character, `U8` as a number. A type's `Str()` overrides it (E11c, the user's call) and is called exactly once per
  rendering, in order, and may have effects (decision 49) - but builds nothing where its receiver lives. A join's
  operands are evaluated before any piece renders (Go's rule).
- **More syntax rules worth knowing.** `catch` may begin a following line (R9b); a join continues onto a new line only
  inside parentheses (E11b); a shift of a literal by a value takes its target's type (E8b) and a literal shift is
  computed exactly (E4a); `x := 1 + 2` is an `I64`. A one-line declaration of several names shares one type (D12b),
  parsed as one declaration per name.
- **Removed spellings, for anyone tempted to bring them back:** struct literals `T{...}` and field-list structs
  (2026-10-01, T13 - a plain struct is a special case of a constructor struct); `T[]`/`T[N]`/`T[expr]` arrays and 2-D
  arrays (2026-10-01, `Array<T>`); `len(a)` (2026-10-01, `a.Len()`); scope names `&s` and scope declarations
  (2026-10-05); UFCS method calls (M19); `same(a, b)` and the `atomicLoad`-style builtins (2026-10-09); `compif` (B9);
  `while` (S9); a `size()` builtin (2026-09-30, serialization is future work); an `Iterable` interface (T35b:
  `xs.Iter()`); labeled break (2026-10-08); interface switch dispatch (dropped by the user, "it gains very little and
  causes a lot of problems"); Str purity (E11c, decision 49); `done`, `fail`, `abort` (2026-10-17, QU: a test ends by
  returning, a program by `os.Exit`); `own` and `take` (2026-10-18, `docs/memory.md` round 3: freeing early is the
  compiler's).

### Types

- **Numeric primitives `I8 I16 I32 I64 U8 U16 U32 U64 F16 BF16 F32 F64`, and `Bool` (T4/T5, the user's call).** Byte,
  Int32 and the rest are gone. One table (`PrimInfo`) answers every question about a primitive. F8 (`F8E4M3`,
  `F8E5M2`, saturating, IEEE equality - the user's calls) and complex `C16 C32 C64` (the user's names) are prelude
  structs.
- **A literal's own type: an integer is `I64`, a float `F64` (T6a, the user's calls, 2026-10-08/10).** A literal
  adapts to a typed target (T6); an expression of literals only adapts as one literal, computed exactly (E4a); a
  literal another operand cannot hold meets it at its own type (E6d).
- **Numbers widen implicitly toward their base, never narrow (T6b, the user's design).** Lattice: wider within a
  signedness, unsigned into strictly wider signed, F16/BF16 -> F32 -> F64; a declared type into its base. Narrowing is
  written (`I32(x)`), unchecked, `checked` checks it (R20) - never a per-operation check (the user: "It's not even a
  question").
- **Integer arithmetic wraps (E6c, the user's call, re-confirmed 2026-10-09 knowing its `nsw` cost).** Division by
  zero and MIN / -1 are undefined (E6a); `checked (expr)` checks every operation inside (E15a).
- **Value or reference is decided by the `&` marker alone (T11, T25a).** `&` is scope-tagged heap indirection, not an
  address-of: no pointer type, no unary `&`, no reference to a reference. Reference-shape is part of type identity;
  value<->reference conversion is assignability at the outermost level only (E12): an lvalue into a reference borrows
  (E12c), a temporary is built in the target's scope. No primitive references (the user's call: assignment to a
  reference repoints, and a number has no field to write through). Write-through assignment was rejected: `x = y` must
  imply `x == y`.
- **Permission is part of a reference's type (T25b/T25c, the user's design).** `mut T&` writable, `T&` read-only, at
  every level, shallow. `mut` speaks only about what a reference reaches: locals and parameters are always assignable
  (`mut` before a local's or parameter's value type is an error, D11a/D9), a field is assignable through a writable
  instance (no per-field immutability, C3), a global keeps `mut` as its binding. Writable converts to read-only only
  at the top. A copy of a value holding `mut` references taken from a place reached read-only is read-only itself (QC,
  the user's decision); a function made a value may not need a writable copy.
- **`null` is the zero value of every reference (T2a); a null read traps (T2b).** Nothing is uninitialized: a
  declaration with no value takes its type's zero value, made by the constructor from its parameters' defaults (D13c,
  the user's design); a type whose constructor has effects has none.
- **Arrays: `Array<T>` and `Array<T, N>` (T7-T7d, the user's design 2026-10-01 and 2026-10-09).** The length is never
  in a run-time-length type; `Array<T, N>` is a fixed value laid out in place, `Array<T, N>&` one pointer. An array is
  a value only where its storage is made and held by reference everywhere else (T7b): parameters must be references
  (D9a), a value array inside a struct or element must be written `&` unless fixed (T7a). `Array<T>(n[, fill])` makes
  one; literals `I32[1, 2]`; storage over 64KB never on the stack. No 2-D arrays (the user's call) - arrays of arrays.
  `x.Len()` is an `I64` (E23/T10, the user's design; `len` is gone).
- **Indexing is unchecked, slicing checked once per slice (E16, E16a-E16e)** - a bad slice is a value that stays wrong
  wherever it travels, a bad index one access; an index check cost ~50% on a data-dependent gather, so it went.
  `a[lo:hi]` is a borrow tagged with the base's scope and permission; `checked a[i]` checks; an out-of-range index, a
  wrong `extern` prototype and a data race are the three unchecked holes, stated (E16e, X1a, P8b).
- **Equality (E10, E10a, E10b).** `==` on values is structural; on an array reference it compares contents; on a
  struct or enum reference it is identity unless the type declares `Eq` (then `==` calls it at every depth, the user's
  call). The compiler supplies `Hash` for plain data; a type declaring `Eq` must declare `Hash`.
- **Structs are built only by their constructor (T13, C2d, the user's call).** No struct literals, no field-list
  structs. A constructor body is a block whose top-level locals are the fields (C2a); a bare name is a pun of a
  parameter; `return` is rejected. Defaults are compile-time expressions (D8a). `destruct { }` makes a type
  reference-only (C11) and runs once per constructor call, when the instance's scope closes (O16); an empty one is an
  error (C7a). Reference-only because §8 tracks references, not by-value copies: a copy would carry a released
  resource where no rule sees it (use after release, not double release).
- **Declared types are nominal (T29).** `type Meters I32`, `type Name Array<T>`; `extends` inherits the base's methods
  and operators (T29f, the user's design); `Name(x)` converts and names the argument's storage (T29a); a declared
  primitive may have a constructor, which a literal runs while compiling (T29d, the user's design). Over a struct,
  enum or generic instance it is an error. `Char` extends `U8`, `String` extends `Array<Char>` (T29h/T29c, the user's
  design); text written in the program is a `String`.
- **Enums carry payloads and may be recursive through `&` (T17, T17c, T17d).** A payload lives where its value does;
  an enum reference's zero is null; a null matches no case pattern.
- **Methods are declared with a receiver clause and called only as methods (M19, the user's call).** A method may not
  share a field's name. Built-in types get methods only from the prelude (M19d). Overloading by receiver only (M21).
- **A number written as a literal is a receiver like any other value (E13c, 2026-10-18, the user: "2.0.Sqrt() should
  be valid code. Don't make an exception for floats like that" - reversing their 2026-10-17 refusal).** `2.0.Sqrt()`,
  `7.Hash()`, `255.Format(16)`, `(1 + 2).Hash()` take the literal's own type (T6a: `I64`, `F64`, `U64` above `I64`'s
  largest), since a call is no place a literal adapts; another type is a conversion (`F32(2).Sqrt()`). `-2.0.Sqrt()` is
  `-(2.0.Sqrt())`. L12's lexing is unchanged.
- **Operators are methods named for them (E31, the user's design).** `Plus Minus Mul Div Rem MatMul Neg Less BitAnd
  ... Inc Dec At SetAt Slice Call`, a lowercase spelling being module-private (M6b); `> <= >=` derive from `Less`. A
  method is the operator only in the operator's shape - another shape is an ordinary method. Checked forms are
  `Checked...` (E31a); any operator but `Len`/`Eq`/`Str` may fail. `x[i, j]` calls `At(i, j)`. A store through `x[i]`
  reads, writes and writes back by `SetAt` (E31b); a `mut` method on `x[i]` is an error unless the element is a handle. No user-declared
  operator symbols; `==` and `$` overridable only by `Eq`/`Str`. A handle field of `x[i]`, or a handle a call gives
  (`ll[0][0]`), is lent as its reference where its call landed (O17b/O18c); a field of a try-default (R9a) and a
  conditional or match choosing a place (E28) are values, never lent writably or assigned. Any value with no storage
  of its own whose references live elsewhere, lent to a reference parameter, is a split value (O17): bound where its
  references are, refused where the callee keeps something in it - capturing the parameter in a lambda that can
  outlive the call counts; a slice of a `try` value is a temporary's (E16a).
- **Several results, no tuples (D8c/D8d, the user's call).** `return a, b`, `q, r := f()`, `f(g())` when g's call is
  the only argument; `Pair<A, B>` in `std/pair` for two things kept together (the user's call; in the prelude until 2026-10-17).
- **Defaults and `default` (D8a/D8b/E14).** Trailing defaults, `default` in an argument slot; named arguments rejected
  (parameter names stay internal). A default is built per call in its declaration's context.
- **Lambdas (D16, the user's design).** `fn(x) { return ... }`, `return` always written; captures copied (plain values
  read-only, references still naming their instance, value arrays borrowed); types from the expected function type
  (D16a) or the body (D16b). A function value is `{code, environment}`, nullable, identity by both words (T21).
  `(args)` after any postfix expression calls (E13b). `spawn fn() { }` runs a lambda as a task (D16e).
- **No shadowing (D3a, the user's call)**, types included: no local or parameter named like a global, a function, a
  build constant or a type; a type and a function or global of one module may not share a name (D2).
- **`:=` declares any settled expression's type (D15, the user's call).** `null` and a call giving nothing are errors.
- **Traits are constraints only (T30-T35, G19, the user's call 2026-10-08).** `trait` declares method signatures,
  satisfied implicitly (Go-style: a declared `implements` would point dependencies the wrong way and could never make
  a built-in type conform); a private method name seals a trait; written anywhere but a constraint it is an error.
  Defaults are methods on a constrained type variable, overridable (M19e). Removed: run-time interface values
  (2026-10-08 - bugs clustered in tables and boxing; enums and function values cover most uses). Planned back as `any
  Trait&` (decided 2026-10-08, ledger).
- **No `volatile` (X3b)** - a foreign call is an opaque barrier, atomics cover threads, MMIO is inexpressible.
- **TBAA (T36).** Every numeric primitive, the array descriptor and a reference to a struct or an enum have element and
  field tags (references since 2026-10-18, so a handle's reference hoists out of a loop); the runtime's scope and chunk
  headers have their own (a loop body's empty scope folds away); aggregates and function values are untagged.
- **Parameters (D9, D9b).** `&` says whose instance, `mut` whether it can be written; an immutable lvalue never binds
  a `mut &` parameter. A generic's by-value parameter bound to a run-time-length array is copied exactly when its body
  writes it (D9b, `paramWritten`), else is the caller's array. ON HOLD (the user): passing arrays by value.
- **Assignability (E12, E12c).** Value into reference borrows an lvalue (with a lifetime check) or builds a temporary
  in the target's scope; reference into value copies out; `Array<T, N>&` widens to `Array<T>&` with no copy. All four
  combinations read the same for structs and arrays.
- **Function types (T22, T22a).** Errors compared in order, `mut` and permissions on T22's terms (read-only for
  writable parameters, writable for read-only results is safe); a function with scope obligations or a `Call` that
  keeps its argument cannot become a value; a type's `Call` fits a function type (E31). A
  function value returned from a parameter is an obligation (O14a). Where its references live is part of a function
  type (T22, 2026-10-18): a parameter sharing another's scope (`b N&a`) or a borrowed result (`T&p`) makes a function a
  value only of a type saying the same, so `fn link(a mut N&, b N&a)` is no `fn(a mut N&, b N&)` (it was accepted, and
  crashed: the call passed other hidden scope arguments and established nothing link requires).
- **Static literals (T25d).** A literal known while compiling reaching a read-only reference is the constant data
  itself; an immutable global no writable reference reaches is `constant`, and importers see its value (K2).
- **Small type rules:** a type cannot embed itself by value (T16); a self-holding array type is an error (T29); an
  inherited array method is never overridden (T29e); `x.Bits()` and `u.F64FromBits()` etc. move a float's IEEE pattern
  (E33); an `Array<T, 0>` has storage of its own (E10); a NaN renders `nan`.
- **Visibility details (M6a, M12, M4).** A member or error word is public by its own first letter; enum cases are
  alias-qualified across modules (`Lib.Dir.North`); an alias-less import takes the file's base name, so a file's
  capitalization is part of its interface; capitalized aliases re-export, through chains of any depth; a cycle in
  public reachability, or one file reached two ways, is an error.

### Generics

- **Type parameter lists (QW, G3, G8b, G22, the user's decision 2026-10-17, reversing G8b's `<T>` introductions and
  G3's no-list rule).** A function's type variables are a list after its name, constraints and constants in it: `fn
  max<T>(a T, b T) T`, `fn area<T Shape>(x T)`, `fn count<N I64>(a Array<I32, N>&) I64`; a method gets its type's
  parameters from its receiver's type arguments, bare (`fn (l List<T>&) Push(x T)` - names there that are no type
  introduce), plus a list for variables of its own (`fn (l List<T>&) Map<U>(f fn(x T) U) List<U>`). A constrained
  receiver is listed after the method name, a listed name taking the list's constraint (`fn (it mut I&) Count<I
  Iterator<T>, T>(...)` - mine: one place for lists, the receiver clause staying a parameter). A constructor's own
  variables (G10d) are `struct<T>(...)`; a generic type's constructor may not have one. Type declarations are
  unchanged; calls still infer their arguments (G4: every variable must be inferable); there is no `<<` opening a
  list and `<T>` in a type is no type. A function type is never generic of its own (G3a).
- **Monomorphized; the instantiation's name is its identity, spelled injectively (G16a).** Instantiations are defined
  by the root object only (B3d). Rules about what a type contains are re-checked per instantiation (G18); errors carry
  where the instantiation was asked for (G16b); G17 bounds depth.
- **Inference (G9a-G9d).** Literals adapt after other arguments bind; text binds `String`; `null` takes no part; a
  value of a destructor type binds the reference; reference arguments of differing permission meet read-only.
- **Constructors infer type arguments (G10c)** and a plain type's constructor may introduce variables its fields do
  not name (G10d).
- **References as type arguments (G11), bare marker only.** `<T>&` on a type variable (G11a).
- **Constraints (G19)** checked where a variable is bound; written types' constraints checked after all signatures.
- **Constant parameters and `Array<T, N>` (G20-G28, the user's design 2026-10-09).** Integers, Bool, Char and
  payload-free enums; arguments are compile-time expressions, folded exactly as the program computes (G21); inference
  by value only; an `if`/`match` on a constant is decided per instantiation (G26); value constraints are asserts
  (G27). Run-time-known dimensions are the library's (`Dynamic` in std/linalg, the user's call). `Array<T, N>&`
  carries its length (D9a kept, the user's call), reversing T11a's "the size in a type is irrelevant" for fixed arrays
  only.
- **Generics composition (G8a, G15).** A type variable may be a type argument (`Vec<T>`); a still-generic receiver
  matches any application; an application with unknown arguments is a pattern, never laid out. `match T` is
  exhaustiveness-checked and compiles only the chosen arm; inside it the variable is the concrete type.
- **A default reading a type's constants is each instantiation's (D8a/G23)**; a literal default for a type-variable
  parameter is fitted per call (G18).

### Errors

- **Error sets and `?` (R1-R8).** `fn f(params) Ret ? ErrA, ErrB`: result first, error set after `?` (the user's
  call). `error T.WORD` raises; a bare unhandled fallible call is a compile error; coverage is judged at the callee's
  set. Locally scoped codes: `{i32 code, T}`, the code packing (type ordinal << 16) | word ordinal from the function's
  own list, so no whole-program numbering exists and propagation re-encodes.
- **`?` alone infers the set (R1a, the user's call 2026-10-17: "Do 2", Zig's); every error has a type (R3, R22).**
  A bare `?` is what the body can fail with - a least fixed point over calls, cycles included, ordered canonically
  (owner module, then name) so separately compiled modules agree; it may come out empty, and in a generic differ per
  instantiation. `? E` is a promise the body is held to. A function type and a trait method write their set (R1b); a
  named function fits a superset list, re-encoded. The default error, bare `error`, R15-R19 and generalization are
  gone (the user: "error should always require an actual error"). `main` may have no `?` at all (B4). Stage 0 checks
  the program again whenever a set read before it was final grows - a recursive call, a cycle - keeping both
  attempts' memory; a set written on one function of the cycle avoids it (compiler/generic.olang's canon parser).
  **Words in a set (R1c, 2026-10-17, the coordinator's decision):** `? ListError.EMPTY` names one word, so a function
  promises exactly what it raises and `catch ListError.EMPTY` is complete (R14 judges word by word); inferred sets carry
  words (a callee's, less what clauses take); a set's words are part of a function type. std names them (`Pop`/`First`/
  `Last` EMPTY, `RemoveAt`/`Insert`/`TakeAt`/`Swap*` OUT_OF_RANGE, `IndexOf`/`Find*` NOT_FOUND, `ShortestDecimal`
  NOT_FINITE). A lambda infers with nothing written, in the canonical order (D16b).
- **`try` handles what fails as written; `checked` is try plus every check (R8, E15a, E24, QQ1, the user's design).**
  One `try` covers every fallible call and operator in its operand - arguments, a chain (`try f().g()`, reversing
  E24's one-call reading), a parenthesized expression - and never turns a check on; a `try` covering nothing is an
  error (not in a generic's body, where instantiations differ). `checked (e)`, `checked a[i]`, `checked a[lo:hi]`,
  `checked x[i] = v`, `checked T[e for ...]`: overflow, `<<` whose true value `x * 2^n` does not fit, shift amounts
  (`OUT_OF_BOUNDS`), any integer conversion changing the value (signs too), a finite value made infinite (`OVERFLOW`),
  IEEE's exceptions - `DIVIDE_BY_ZERO` for an integer or a finite nonzero float divided by zero, `INVALID` for a NaN
  from non-NaN operands (`0.0/0.0`, `inf - inf`) and a NaN or infinity made an integer - `as` of another case
  (`WRONG_CASE`), indexes, slices, lengths. A clause-less `checked` inside a `try` or `!` hands its errors to it
  (`(checked a[i])!`). `for x in try c` and `try join` stay `try`. No `try { block }` (declined: hides exits).
- **`!` ends the program on what fails as written (E35, the user's decision QV).** `f(x)!`, `a.F().G()!`,
  `(f(x) + g(y))!` - `try`'s reach, no checks; a failure fails the running test, else prints `FILE:LINE: io.IoError.W`
  and aborts; needs no `?` (`fn main() { io.Println("hi")! }`). While compiling it is K1's abort class. `spawn f(x)!`
  ends the program from the task's thread (P4, P6).
- **Operators may fail; checked forms add checks (E31, E31a, QQ1, the user's calls).** A plain operator method (all
  but `Len`, `Eq`, `Str`) may declare errors, making the operator fallible as written (`try (a - b)`). Its checked form
  is `CheckedAt`, `CheckedPlus` ... (the Try forms renamed - the user, reversing their own TryAt), what `checked`
  calls, and must fail with every error the plain one can (a compile error at the declaration otherwise; for a generic
  type, per instantiation). A checked form requires its plain one (`CheckedAt` alone is an error); loops never call one.
  `CheckedAt`/`CheckedSlice`/`CheckedSetAt` are derived from the plain form and `Len` when not declared. A method called
  by name has its checked form the same way (`checked x.Pow(n)` calls `CheckedPow`, E31a, 2026-10-18, mine).
- **`BuiltinError` (`OVERFLOW DIVIDE_BY_ZERO OUT_OF_BOUNDS INVALID WRONG_CASE`) is raised only by `checked` (R20);**
  `Exhausted` is the loop protocol's. Nothing else is built in (QO3 withdrawn by the user).
- **std fails with its own errors, never ends the program on a caller's mistake (R22, QO4, the user: "No std function
  may ever exit").** `ListError`/`VecError` (`EMPTY NOT_FOUND OUT_OF_RANGE`), `MapError.MISSING`, `TextError`
  (`NOT_FOUND BAD_BASE NOT_FINITE`; `Format`, `ParseInt` and `ParseUint` take a `Radix` - 2 to 36, or 0 - failing with
  `TextError.BAD_BASE`, a literal one decided while compiling, `Radix(10)` written out included), `ArrayError.NOT_FOUND`, `ChanError.CLOSED` on a Send,
  `StatsError`, `RandError`, `JsonError.UNEVEN`, `NumberError.NEGATIVE` (a signed integer's `Sqrt`), linalg's `ShapeError.MISMATCH` and `ActivationError` (an operation
  with nothing to mismatch cannot fail; a float matrix never fails an activation). A `Matrix` built directly takes its
  data as a slice and an array length do (D14b, E16b); `View` is the checked form. Language guarantees still abort.
- **Catch clauses (R9a/R9b, R11, the user's calls).** Any number, in order; an item-less `catch` takes the rest; in
  value position each clause leaves or gives its own `default`; a default belongs to its clause, and errors no clause
  names propagate. `try f() default d` is gone. A reference default lives exactly in the result's scope.
- **Errors are errors (the user's rule).** Nothing returns a value beside a flag: iterators fail with `Exhausted`
  (`Next() T ? Exhausted`), `Map.Get`, `Find`, `Pop` fail with their errors.
- **`main`**: no parameters or result, any error set or none (QU); an escaping error prints `unhandled error: T.W`
  (and its trace, S18d) and exits 1. `os.Args()`/`os.Env()` give the command line (B4a).
- **Where errors may be raised (R3, R10, R14).** `error` is valid in an ordinary function and a constructor, never in
  a `test` or `destruct` (a test's `try` may let an error out, which fails it, S16); the `try ... catch { }`
  statement discards the value. A constructor field that fails produces no instance. A run-time array length out of range aborts outside `checked` (D14b), out of memory aborts
  (D14c). `tools/errors_migrate.olang` migrates code (Try forms renamed, `try` to `checked`, `try` for what now fails);
  `tools/donefail_migrate.olang` moves code off `done`/`fail`/`abort`.

### Memory and scopes (§8)

- **Memory lives in scopes (O1, O2).** Each block is an arena, reclaimed in one step at its close; nothing is freed
  before (O8c); globals live in the program's scope (O1b). Allocas are in the entry block (O2c). The arena aligns by
  size, 64 at 64 bytes (O8a); aggregates take their own alignment. The chunk pool is per-thread size classes bounded
  by RAM/8 with an LRU, parked workers sharing the rest (O8b).
- **No scope names (O3, O4a, O13, O14, O26, the user's design 2026-10-05).** A marker is bare `&`, `&x` (lives where
  `x` does) or `&return`. Every reference parameter has an implicit scope (O4b), a by-value parameter holding
  references too; a scope argument `f&x()` (E25). A result is built (`T&`, in the result scope, which lands where the
  call's result is put - O18a) or borrowed (`T&p`).
- **A reference never narrows (O25, the user's decision).** A local's type says where it lives (O25a); `:=` takes its
  initializer's scope; exactness is required only where something can be stored through (O25g), else outliving. Copies
  of reference-holding values keep their references where the source's are (O25h).
- **Obligations (O10b/O10c).** Inferred from the body, held at every call to the callee's whole body (checked on
  demand and at a fixed point); temporaries built where the obligation says (O18b/O18c). A `:=` from a call lands by
  obligations only where something is kept.
- **A returned local lives where the result goes (O26a).** A value or reference local the function returns, or that
  flows into what it returns, lives in the result scope - Go's escape analysis, static.
- **Lending (O17, O17a, O17b).** A value whose references live elsewhere than its storage is lent only to callees that
  keep nothing in it, read off their bodies; a handle (a struct of one reference) is lent as its reference.
- **Derived and unknown scopes (O12, O23, O23a).** A `&p` field of a parameter reads at a derived scope resolved per
  call; a scope not known here (alternatives from different scopes) is read but never built into.
- **Constructors (C2d, C2g).** A bare field lives with the instance; an argument binds the instance only where the
  body can make it hold it; a constructor's top level allocates into the instance scope.
- **Scopes belong to one thread (P2, decision 48).** A task's scope arguments are private stand-ins folded at the
  join; a closure that may build into a captured scope asks for its thread's part of it (`__olang_capture_scope`);
  reading closures pay nothing.
- **Letting go (O8d, round 3 of `docs/memory.md`, 2026-10-18; the user's QAB: "the user should not have to deal with
  it").** One rule: everything lives in a scope. Storage a place lets go of while it was its only holder (assigned,
  removed from its collection, a local given something moved out of one leaving its block) may be reclaimed then rather
  than at the scope's close - the compiler's optimization, unobservable but in memory, never running a destructor
  early (O15). *Not yet implemented*: stage 0 reclaims nothing early (O8c); the port's scope pass will (round 6). A
  Vec's replaced buffer is such storage: it stays where the Vec lives until that scope closes. `own`, `take`, loans and
  borrowed copies (O30-O42, T25e, E34, built 2026-10-10 to -11) are removed from the language; the rule numbers are
  retired, and `docs/own.md` is the record. The runtime keeps its region functions, renamed `__olang_region_*` and
  driven from C by a checks scenario, for the port.
- **Recorded limits:** long-lived mutated structures only grow (ledger QF; `docs/memory.md`'s early freeing, round
  6); a value `List<String&>` has one scope for chunks and referents (G11); a few over-rejections are left for the
  port's §8 pass.
- **More scope rules (O2d, O13a, O13c, O14b/O14c, O16, O18a, O20, O26).** A binding records the depth it was made at;
  each return in a loop is judged again by later assignments in that loop; a call's result carries its callee's result
  bindings; a by-value parameter's references returned are an obligation; destructors register once per constructor
  call and run at the instance scope's close, in reverse construction order; a reference field's scope is its
  container's, through whole chains; a local array's or block-built value's references are not returned past their
  block. A destructor's top level is the scope being closed (C9a); a slice or view of a temporary borrows it in the
  block it is written in (E16a); a by-value parameter's scope variable is built into wherever stores are possible
  (O4b).
- **A match binding lives in its clause's block (S13b) and takes the matched place's permission.** A conditional or
  match of references lives where its values share a scope, else "not known here" (E28, O12).

### Concurrency

- **`join { }` with `spawn` calls inside (P1-P1b).** Binding is lexical, one level; the join waits on every way out; a
  task's arguments must outlive the join block (P2). P3/P5 (no shared writes) were withdrawn - a spawning program owns
  its races, which `-race` (ThreadSanitizer, P7) detects - Go's position, for Go's reason: no static check without an
  ownership discipline, and a borrow checker would cost the doubly linked list, the graph and the parent pointer.
  Every ordering olang can express goes through pthread or LLVM atomics, so TSan sees all of it.
- **`spawn x = f()` binds a result (P1g)**; parallel map is `spawn out[i] = f(i)`.
- **A spawned call may fail (P4-P4d, decision 50, the user approved).** `spawn try f()`, clauses run on the task's
  thread; `try join { } catch ...` fails with the earliest-spawned failure; a target of a failing task is unwritten,
  so clauses on such a join must leave.
- **Memory model (P8-P8c):** three happens-before edges (globals, spawn, join); a data race is undefined.
- **Atomics are methods on integer places (P9, E10c, the user: "I don't like built-ins very much"):** `AtomicLoad`,
  `AtomicStore`, `AtomicAdd`, `AtomicSwap`, `AtomicCompareSwap`, sequentially consistent.
- **Runtime:** 1:1 threads, cached (at most 64 idle); no fixed pool and no M:N (P1e/P1f). Cancellation and timeout are
  `std/cancel` (the user's call: "both"); channels are `std/chan` (`Close`, rendezvous at capacity 0). `spawn` is for
  parallelism, not I/O concurrency, so 1:1 threads suffice; a fixed pool would deadlock on a nested join or a channel,
  and M:N would be the language's largest hidden machinery (revisit only with async I/O).
- **Task details.** A thread that cannot start aborts (P1c); a failed assert on a task thread aborts (P6); in a test
  build a failed check unwinds open scopes and joins tasks before its `longjmp` (P1d, test builds only); a task's
  chunk pool goes back when it parks (P2a). `os.RunOnStack(bytes, f)` is the call `f()` on a bigger stack.
- **Scope parts in detail (decision 48).** Every scope header has an owner thread (a number from a counter), parts and
  a parent; `__olang_capture_scope` gives the scope on its owner's thread, else that thread's part (made once, linked
  lock-free, folded at the close, destructors first); a worker's program-scope part is never folded; codegen holds
  every body to the checker's may-build walk (`cgCheckMayBuild`, an internal error on a miss). Decision 40's static
  refusal was removed with it.

### Modules and the build

- **A module is a file (M1/M22/M23, the user's design 2026-10-06).** Imports name a file without `.olang`: `std/x`,
  `host/owner/repo[@ref]/path`, or relative to the importing file. Identity is the path. Capitalized names are
  exported, members and words too (M6/M6a); a protocol method follows the same privacy, declared once (M6b, the user's
  rule). An import's alias is reserved in its module (M20). The prelude (`std/prelude`) gives built-in types their
  methods and types by bare name (M19d). No package-private visibility for now (the user's call).
- **Remote packages** are fetched with git into a cache keyed by commit and pinned by `olang.lock` (M23b, the user's
  call); `-update` updates (M23c); every part is validated and nothing runs through a shell.
- **Separate compilation (B1-B8).** `compile` one module, `build` build and link, `test` each file's tests in a process
  of its own (B3a), `interpret` interprets through the evaluator (B3e). Imports are resolved from source - no header files. Objects
  are named by a hash of everything compiled against and rebuilt when the compiler is newer; a root's object is its
  own artifact. Globals initialize imports first, then in dependency order (B5a; a cycle is an error). No interface
  file exists because a function's scope obligations are derived from its body, which only the source has.
- **Optimization (B2c-B2e):** `-O3` and full LTO by default (what the machine can do unless asked otherwise; LTO also
  made builds faster, ThinLTO measured no better at this size); `-debug` is `-O0` with DWARF; `-race` ThreadSanitizer; `-sanitize`
  the scope sanitizer (B2f: closed chunks poisoned and protected).
- **Targets (B12, the user's call):** native CPU by default, `-target NAME` to cross-compile (`compile` only); target
  constants `TargetOs TargetArch TargetCpu TargetVectorBits TargetHasFma`. No fast-math or contraction (the user's
  call).
- **Conditional compilation is a top-level `if` (B9-B10c, the user's design).** `-define Name=value` build constants;
  an immutable top-level global is a default `-define` replaces (B10c); a local `if` the build decides is conditional
  compilation too (S8b, the user's call); a constant condition not depending on the build is a dead-branch error
  (S8a).
- **Diagnostics are one row each (B11/B11a, the user's design).** `path:line:col: error[RULE]: message`, the source
  line and a caret, `note:` rows; source order, one error per cause; `olang explain RULE` prints the spec rule.
- **Build details.** Objects for a different mode are different artifacts (`.main.o`, `.test.o`, `.tmod.o`, `.race.o`,
  `.debug.o`, `.san.o`, a `-define` hash, B4/B10b); the target is in the object hash (B12b); symbols are mangled from
  module identity with every character but letters and digits escaped (B3b); two modules of one base name are fine
  (identity is the path). `-define` values are typed as the literal would be, text a `String` (B10); the token evaluator
  (B9a) decides only what it decides exactly and defers the rest to the compile-time evaluator (B9c), which checks the
  program again with each decision. An untaken top-level branch is not parsed.
- **Declared module identity was deferred until packaging, and is now the import path (M22).** Individual function or
  type imports are not planned: the unit of import is the module.

### Compile-time evaluation

- **Anything computable at compile time may be (K1/K1a, the user's request); no function colouring** (no `constexpr`:
  a call is evaluable when what it does is, and the places that need a value ask for one). The evaluator
  (`bootstrap/comptime.c`) interprets the checked program with the run time's semantics and refuses only what it must
  (effects skipping would show, externs but libm, undefined behaviour, a step and memory budget). Whether a function
  is evaluable is a property of the function (K1a). It must handle everything it can (the user's rule).
- **Constant contexts:** immutable globals are baked as data, references and arrays included (K2, K2b); an assert it
  can decide is checked while compiling (S18c); a condition the build decides (B9c, S8b); fixed locals (S8c).
- **Tests the evaluator runs** sit beside run-time tests for every language change (the checklist above).
- **Refusals and agreements.** Refused: mutable-global reads, global writes, externs (but known libm, X8), tasks run
  in sequence at the join (allowed), atomics on non-global places (allowed), process endings, undefined behaviour,
  destructor-bearing values outside a global's own frame (K2c), anything past the step and 256MB budgets. Reaching
  `unreachable` where a value is required is an error at the place. Every disagreement with the run time found
  (by reviews and the differential fuzzer) is a bug fixed in the evaluator.
- **`interpret` is stage 1** (no memory reclaimed, no destructors, tasks in sequence); stage 2 is the port's M8, not built in
  C.

### std

- **Text is plain `String` with methods, no wrapper type (`std/prelude/text.olang`).** A literal, a slice and every
  rendering already are one, so methods reach all of them with nothing converted. `Eq`, `Find` (fails on a miss),
  `Split`, `Trim`, `Replace`, `ParseInt(base)`, `ParseFloat`, `PadStart`, `Lines`, `<` by bytes.
- **Math is the numbers' methods (M19d, 2026-10-18, the user's decision: "Yes let's do this. I want an integer power as
  well", "Also abs for integers"; std/math removed).** Every C math function is a method of every float, written once as
  a default over `Float` (`fn (x T) Sqrt<T Float>() T`, `match T` inside, X8's libm calls, so the evaluator computes
  them while compiling), the first C argument the receiver: `x.Sqrt()`, `y.Atan2(x)`, `a.Hypot(b)`, `x.Fma(a, b)`,
  `x.Pow(y)`, `IsNan`... `Abs`, `Min`, `Max`, `Clamp` over `Number` (IEEE on floats). Integers: `x.Pow(n U32)`
  (wrapping as `*`; `CheckedPow` is what `checked x.Pow(n)` calls - E31a now covers a method called by name, mine) and
  `Sqrt()` (the user's name, not ISqrt: the floor of the root in the receiver's type, hardware sqrt plus a one-step
  correction, exact for every U64; signed fails with the prelude's `NumberError.NEGATIVE` - mine - unsigned cannot
  fail). Constants `Pi`, `Euler`, `Inf`, `NaN` are the prelude's, read by bare name everywhere and reserved (D3a);
  others are computed in place (`F64(2).Sqrt()`). Decided (mine): integer `Sqrt` is a concrete method per type (the
  two signatures differ); a type that only declares `Less` no longer has Min/Max/Clamp (nothing but std/math's own test
  used it - it declares its own); the methods live in `number.olang` beside the traits (M19: a default lives in its
  trait's module). Not done: a named constant adapting like a literal (`f F32 = Pi` is an error; `F32(Pi)` is written) -
  E4a covers literal-only expressions, not names. `tools/math_methods.olang` migrates (oann later).
- **Collections in the prelude:** `List<T>` (chunked, never moves, a handle - a copy is a second name, `Clone()`
  copies; indexable, `RunFrom` walks), `Map<K, V>` (a handle; `Get` fails on a miss, `Update`, ordered walks by
  insertion of slot), `Vec<T>` (below), `StringBuilder`. `Pair` is `std/pair` (2026-10-17, the user's call: "Pair goes in Std not prelude"). Iterators have `Any All Count Fold Map Filter
  ToList`.
- **`Vec<T>` is the default growable array, and a handle (M19d, round 1 of `docs/memory.md`, 2026-10-17; the user's
  QAB, approved in advance).** Its record (buffer and count) is made where it is constructed; a copy is a second name,
  `Clone()` a Vec of its own; it is a type argument, field, global, capture or task argument like any value. Growth
  doubles (8 first), fills the new buffer with the element being stored (so no zero value is needed), and retires the
  old buffer, which stays where the Vec lives until that scope closes - so a view taken before a growth reads the old
  elements, never freed memory. `View()` is the one way to have the elements as an array (`ViewMut()` writable - so `v.ViewMut().Chunks(n)` is how tasks split a Vec, with no Vec `Chunks` of its own). `for x in v` walks by `At`
  and `Len` (S9d), seeing what the body pushes; `RunFrom` and `VecIter` went (`v.Iter()` is `Indexable`'s). `a.retire()`
  (prelude-only, no method elsewhere) is nothing at run time but under `-sanitize`, where an array made in a module
  that retires has a chunk of its own and retiring poisons and protects it (`stale view: ...`, B2f); the evaluator marks
  the node and stops on a later read or write with both places - the use and the program's growing call (K1: an error
  where a value is required, a stop under `interpret`). **M19g (round 2, 2026-10-18)**: using a view after the same Vec
  may have grown is a compile-time error where the compiler sees the same Vec on both sides - grown in the function
  (by name or a second name it made), by a call given the Vec or a struct holding it through a parameter whose body may
  grow it (summaries read off bodies, a fixed point; a function value grows what it is given writably), a global grown
  by name, or while a task holds the view; never by element type, and a place through an index or a call's result
  meets no other (mine). Hidden routes stay the evaluator's and `-sanitize`'s. Vec had been abandoned in 2026-09 for `List` (a bump allocator could not free a grown
  buffer), then built on `own` (QH), and is now neither.
- **Printing (M19f, 2026-10-17, the user's decision):** one pathway, `std/io`: `io.Print`, `io.Println(t = "")`,
  `io.PrintErr`, `io.PrintErrln` fail with `IoError` and are written with `try`; no std function ends the program on
  its own. The prelude's print words are gone. `io.Writer` buffers (errors at `Flush`); `io.Lines` reads lines.
- **Libraries:** `std/os` (files, Exec without a shell, Start/Process, RunOnStack, OnCrash, MkTemp, RemoveAll),
  `std/json` (immutable recursive enum tree, exact numbers), `std/http` (over curl), `std/csv` (strict), `std/stats`,
  `std/linalg` (`Matrix<T>` views, Goto GEMM with per-target tiles,
  batched causal products, fused epilogues, convolutions - the base for all numeric work, the user's call: a 2-D
  Matrix, not a tensor), `std/rand`, `std/time`, `std/filepath`, `std/cancel`, `std/chan`, `std/ffi` (libffi).
- **`a.Chunks(size)` (M19d, P8b, 2026-10-17).** Every array cut into consecutive writable slices of at most `size`,
  held in an array living where the receiver does (Split's shape: an iterator's pieces would live where the iterator
  does, which P2 rejects as a task argument), so `join { for part in a.Chunks(4) { spawn work(part) } }` cannot race.
  `size` is a `ChunkSize` (a Radix-like checked `I64`, `ArrayError.BAD_CHUNK` below one; a literal checked while
  compiling). Arrays only for now; Vec later (another branch is reworking Vec).
- **`extern fn` (X1-X8).** Numeric primitives and arrays of them; an array marshals to a pointer; no extern returns a
  pointer; only the runtime's `__olang_` functions take a function value (X2). C math functions with their exact
  prototypes are known and evaluated while compiling (X8).
- **std API details.** `List`: `Push PushAll Pop First Last Clear Truncate Insert RemoveAt SwapRemove IndexOf Remove
  Reverse Sort Join ToArray Clone`, `l[i]` unchecked, `checked l[i]` checked, first chunk held on its own. `Map`: `Put Get
  Has Remove Update Keys Values Clear Clone`, removed slots reused, a key needs `Hash` and `==`. Text: `Split` borrows
  the receiver, an empty separator splits into characters; `Replace("", x)` inserts at every position; `ParseInt(0)`
  reads olang literal syntax; every base is a `Radix` (`TextError.BAD_BASE`, a literal one decided while compiling);
  `x.Fixed(n)` as `%.*f`, exact; `n.Format(base)`. `io.Writer` never fails on Write - the
  first refusal is remembered and every `Flush` fails with it; `io.Lines` ends a line at `\n` or `\r\n`. `os.Exec`
  captures through memory files; `chan.Send` on a closed channel fails with `ChanError.CLOSED`; `std/csv` is RFC 4180 strict;
  `std/stats` uses the sample variance and numpy's percentiles. `Array.Sort` is a stable O(n log n) merge.
- **Names in std are mine unless marked**; the user's: `Map` (not Dict), `Mul`, `extends`, `checked`.

### Codegen and runtime

- **The runtime is `std/runtime/*.ll`, compiled once per configuration and linked once (B3, X7).** Inline bodies go to
  every module `available_externally`.
- **Representation choices**: a function value is a code/environment pair crossing calls as two words; aggregates over
  128 bytes go through memory; one `ret` per function; enum payloads are whole words; integer `$` without snprintf.
- **No per-operation run-time checks (the user's rule).** Checks are per construction (slice bounds, array length) or
  opt-in with `checked`.
- **Benchmarks against C are in `bench/`** (`bench/run.olang`, not in verify): plain loops and allocation at or beyond C;
  remaining gaps are in abstractions above them (bench/README.md).
- **Fuzzers:** `fuzz/` (differential: baked, decided, run - `make fuzz`) and the scope fuzzer (`make scopefuzz`).
- **Runtime facts.** Runtime thread-locals are `initialexec`; the runtime's globals sit in comdats; every function
  carries the target's CPU and features and `null_pointer_is_valid`; LLVM 18's BF16/F16 bugs are worked around (BF16
  narrowing as integer arithmetic, asm fences on F16 bitcasts, FastISel off in `-debug`, AVX512-BF16 conversions removed -
  T4, E33, B2c, B12c). The arena under `-sanitize` poisons with `0x7FF5...`, protects and holds back closed chunks.
- **Testing.** `make verify` runs the corpus (`tests/shared.olang`, `tests/worker.olang`, `tests/runner.olang`), std's tests, `checks/`
  (must-fail cases with their expected diagnostic, and whole-build scenarios, four at a time) and the port's diffs;
  `make race`, `make scopesan`, `make fuzz`, `make scopefuzz` stand apart. Old tests are kept (the user's rule).

### The C compiler and the port

- **The C compiler is `bootstrap/`, stage 0 (the user's call, 2026-10-10).** It builds `build/out`; `make bootstrap`
  rebuilds it from C with no committed binary,; after self-hosting it is frozen and a generated seed (LLVM IR the olang compiler writes of itself, committed) rebuilds from nothing in one run (the user, 2026-10-18). From the port's
  start it takes fixes only (QB, the user's call). The refactor was modest: no splitting files for size (the user).
- **The port is a redesign (the user's rule):** a hand-written scanner, recursive descent with Pratt expressions, a
  demand-driven checker over an AST of enums, §8 as its own pass, MIR, one evaluator for comptime and `interpret`
  (`compiler/DESIGN.md`). Acceptance is the test suite plus per-stage diffs against stage 0 (tokdiff, astdiff,
  namesdiff, layoutdiff, diaggold) and stage 1 rebuilding itself. Merged: M1 scanner, M2 diagnostics, M3 parser, M4
  loading and names, M5a types and the typed contract, M7's MIR contract, M10's driver (`compiler/build.olang`,
  `target.olang`, `olang.olang` - the word command line over the whole pipeline, the runtime filled in by
  `runtime.olang`; `make drvdiff`; under an interim placement - every site and declared aggregate local in the program's
  scope, the scope pass's errors not reported - the port builds itself at `-debug`, stage 1 == stage 2 == stage 3,
  HISTORY.md "Port M10: the pipeline behind the driver"); the compiler under test is `OLANG ?= build/out`. In progress: M5b/M5c, `compiler/check.olang` (the checker
  elaborating the resolved AST into typed core; HISTORY.md "Port M5b/M5c"); M7, `compiler/lower.olang` (the typed core
  lowered to MIR with the stand-in placement, helpers, adapters and initializations made as MIR functions; `make
  lowerdump` verifies every function of the corpus, std, compiler and the checks' run cases - all clean but what check
  leaves wrong; a try's leftovers leave the body (R13) but for a loop's own Exhausted try and a clause-less checked, which pass them to the try around them, a T29d literal's error edge is never taken, no releases or
  holds since own is being removed; HISTORY.md "Port M7: lowering"); M8, evaluation in the pipeline (`compiler/interp.olang`
  over `eval.olang`: the build's conditions and asserts decided by evaluation, `olang interpret` running main, each
  scope reclaimed as it closes, immutable globals baked into emitted data (K2), constants computed by calls (G21), the
  error trace (S18d); `make evaldiff`; HISTORY.md "Port M8: evaluation in the pipeline"). M6, `compiler/scope.olang` (section 8 over the typed core, filling each body's
  plan, which lowering reads; `make scopediff` measures it against stage 0's goldens - round 4: 265 of 280 refused
  cases give stage 0's first error, 1 still gets none (kept on purpose), no error on compiler/*.olang stage 0 does not
  give, an array value's result has a result scope (T7b); HISTORY.md "Port M6"). M19g is `compiler/views.olang`, a pass of its own after check
  (summaries over the call graph's components, then a dataflow walk of each body; every M19g case as stage 0 gives
  it - HISTORY.md "Port M5b/M5c", fourth round).
- **Numeric traits: `Float`, `Integer`, `Number` (T35c, T31, 2026-10-17, the user's decision).** Sealed prelude traits
  (`std/prelude/number.olang`, one private method each) satisfied by the four floats, the eight integers, and all twelve;
  `Bool` none. **A declared type never satisfies one, `extends` included (mine)**: T31 now says a private method is
  supplied only for a type its own module declares (or a built-in one), so `Char` and `type Dist extends F64` inherit
  the method and satisfy nothing - that is what lets a body pick by `match T` over the built-ins, which would have no
  case for them. Stage 0 and the port both enforce it; the error is `G19, T31` "... is sealed". Used by the numbers'
  methods (`<T Float>`, `<T Number>`, `<T Integer>`, M19d), std/stats (`<T Number>`), linalg's
  FastExp/FastTanh/FastSigmoid (`<T Float>`, F16/BF16 through F32); the Matrix operations stay open (F8 elements).
- **A literal reaching a constrained variable takes a type its constraint allows (G9a, G19, T35c, 2026-10-18, the
  user: "math.Sqrt(4) should not be an error").** A variable only numeric literals reach is bound to the widest of their
  types unless that fails its constraint; then to the first of `F64, I64, U64, F32, I32, U32, F16, BF16, I16, U16, I8,
  U8` (my order: widest first, a float before an integer of its width) that meets it and that every literal adapts to
  (T6) - `root(4)` with `fn root<T Float>(x T) T` is `root` at `F64`; none fitting, G19's error stays (`whole(2.5)`). A typed argument binds its
  own type: `root(n)` with `n I64` stays an error (no implicit integer-to-float). Both compilers; the evaluator
  sees the bound type.
- **The formal specification (`SPEC.md`) and the spec-first process.** `SPEC.md` is the normative, current-state-only
  reference manual for the language (rules numbered `<prefix><n>`, e.g. `T24`, `O13`; EBNF grammar) - no narrative, no
  history, and no mention of CLAUDE.md, Claude, or the design process anywhere in it. A language change is made
  spec-first: write or revise the relevant rule(s) in `SPEC.md`, then implement so the code conforms to what was just
  written, then record the *why* here (extending HISTORY.md too, if there's a longer story worth keeping).

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

What depends on what across the repository - which files change with a keyword, an option, a diagnostic, a std API -
is `DEPENDENTS.md`.

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
3. **Compile-time evaluator** (`compiler/eval.olang`, K1): give it the same semantics - never leave it refusing or diverging
   from the run time. Prove the two agree with a test the evaluator actually runs (an `assert` it can decide, S18c,
   or a global it bakes, K2) beside the run-time test. `interpret` runs every test file and run case the build runs
   (`interp@FILE` in the suite, compiler/tools/evaldiff.olang): it stays green, a difference the interpreter must have
   listed there by name with its reason.
4. **Tests**: corpus tests for what now works (read back after an arena churn where scopes are involved), and
   `checks/cases` programs for what must now fail, each naming the expected diagnostic.
5. **Migrate the corpus and `std`** when the change invalidates code; keep old tests unless the change invalidates them.
6. **Diagnostics**: new errors name the rule and say what to write instead; reword any message the change made stale.
7. **Record it**: the current-state entry below, the full story in `HISTORY.md`, and any question left open in the
   pending-decisions ledger (`.claude/memory/decisions.md`).
8. **Walk `DEPENDENTS.md`** for this kind of change - every place that must change with it (SPEC, scanner, formatter,
   LSP lists, editors/nvim, `help`, READMEs, goldens, seed, fix's table); `make consistency` (in `make verify`) fails
   naming the file for the edges it can check.
9. **`make verify`** passes, then commit.

## Settled decisions

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
  `tools/syntax_migrate.olang` migrates.
- **`fn` is the function keyword (D7, the user's call).** Retired spellings (`func`, `while`, `&&`, `||`, `!`,
  `choice`, `+` on arrays, lowercase primitives) are simply unknown - their diagnostics were removed at the user's
  request.
- **Comments: `#` to the line's end, `## ... ##` a block (L4/L4a, the user's call).**
- **One-line bodies (S1b, the user's decision 2026-10-24).** `if x < 0: return 0`, `for x in xs: total += x`,
  `else: count++`: `:` and one simple statement (assignment, parallel assignment, call, increment, `return`, `break`,
  `continue`, `error`, `unreachable`, `assert`, `spawn`) on the colon's line; a declaration, `if`, loop, `match`,
  `join`, `defer` or block there is an error naming the block form. `else`/`catch` may begin the next line. Not for the
  forever `for` or a `do` loop. **A lambda's body too (D16, the user's decision 2026-10-24):** `xs.Count(fn(x): return
  x > 3)`.
- **The command line is words (B1, the user's call 2026-10-17, reversing one-character flags).** Modes `build compile
  test interpret format explain help doc lsp mcp fix bindgen profile`; options `-output -debug -race -sanitize -target
  -define -update -check -quick -html -library -memory -fuzz -fuzztime -caps -asm -ir -interpret`, each checked against
  the modes it applies to (`tools/cli_words.olang`); old flags are gone.
- **`-quick` (B2g, the user's call 2026-10-24).** `-O2` without link-time optimization, objects apart; an error
  beside `-debug` or `-race`. The default stays `-O3` + LTO (B2c).
- **`explain FILE NAME` (B11b, the user's call 2026-10-24).** Prints one top-level item of FILE as the compiler sees it
  once the program checks: a function's signature with an inferred error set written out and its scope obligations
  (`# scopes: a outlives b`), a generic's instances, a type's constructor, fields and methods, an enum's cases, a
  global's type and baked value. `Type.Method` names a method. `-target`, `-define`, `-update` apply.
- **Effects, needs and "not a value"; `explain -caps` (B11b, B11c, QBP 6, QBP 11, A2.3, B1.2, the user's "build it"
  2026-10-27 and "if it doesn't cost compile time" 2026-10-31; built 2026-10-31).** explain, doc and hover print
  `# effects: ...` under each function (writes, allocation, tasks, C, blocking, recursion, ending the program, ...),
  `# T needs: ...` under a generic and `# not a value: why` where a function cannot become one. `olang explain -caps
  FILE` lists, per module, the capabilities (files, network, processes, environment, threads, C) its code may reach.
  One summary pass (compiler/effects.olang), made only when something asks, so other builds pay nothing.
- **`explain -asm FILE NAME` and `explain -ir FILE NAME` (B11d, QBP 7, the user's "build it" 2026-10-27; built
  2026-11-07).** A function's machine code or optimized LLVM IR as build compiles it, each run of instructions headed
  by its source line with LLVM's optimization remarks beneath. Other builds' IR is unchanged. `-asm`, `-ir`, `-caps`
  exclude one another. compiler/listing.olang; checks scenario `listing`.
- **`olang api OLD NEW PATH` (B21, QBP 15/B1.6, the user's "do it" 2026-10-31; built 2026-10-31).** Compares the
  exported items of two versions (commits or directories), a row each, `breaking` or `ok`; status 0, 1 where something
  breaks, 2 where a side cannot be read. Breaking: a removed name, changed signature or type, a grown error set, an
  added enum case, error word or trait method, a trait no longer met. Effects and doc comments are no interface.
  compiler/api.olang; checks scenario `apicaps`.
- **Doc comments (L4b) and `olang doc` (B14).** Go's rule, no new syntax: the `#` lines directly above a declaration,
  member or global are its documentation (a member or global with none takes its trailing comment); a module's is the
  comment lines its file begins with. `olang doc FILE [NAME]` prints them with explain's signatures; `doc -html DIR
  [FILE...]` writes static HTML. Exported items only.
- **Deprecation is a doc-comment convention, read by tools only (L4b, QCW, the user's "add deprecation only as a
  comment and kind of surrounding tools thing. It should not break the compiler", 2026-11-07; built 2026-11-07).** A
  doc-comment paragraph beginning `Deprecated:` marks its declaration; the compiler gives it no meaning. `olang doc`
  marks it, the language server hovers, tags and hints its uses (a hint, never an error), `olang api` lists it as a
  non-breaking `deprecated` row. Removing between versions stays the main way.
- **`olang lsp` (B15) and `olang mcp` (B16), 2026-10-24 (the user: "we need this, both for MCP and neovim
  integration").** LSP over stdio (diagnostics, hover, definition, symbols, completion, formatting); MCP over stdio
  (`check`, `explain`, `doc`, `format`, `test`). Each analysis runs in a forked process; not incremental per module.
  compiler/session.olang is shared; the Neovim plugin and notes are `editors/`.
- **A file is built and run (B3g):** `olang [options] f.olang args...` builds as `build` does, then runs it (its
  status, `#!/usr/bin/env olang` scripts); `-output PATH` names the output (B3h).
- **`olang format [-check]` (B13)** rewrites files in one gofmt-style layout, no options; compiler/fmt.olang, linked
  into the compiler; only whitespace changes.
- **The bitwise operators bind tighter than the comparisons (E5, mine 2026-10-24).** `x & 1 == 0` is `(x & 1) == 0`:
  `| ^ &` sit between the comparisons and the shifts. `tools/precedence_migrate.olang` parenthesizes old code.
- **`**`, the power (E5a, QCG, the user's "Yes add the operator", 2026-10-31; built 2026-10-31).** `a ** b` calls the
  type's `Pow` (E31), tighter than the prefix operators and to the right (`-x ** 2` is `-(x ** 2)`), `**=` with it,
  lane by lane on arrays. The exponent adapts to `Pow`'s parameter; a type with no `Pow` is an error naming it.
- **Logic is in words: `and`/`or`/`not`/`xor` (E7/E7a, the user's design).** `and`/`or` short-circuit; `not` binds
  looser than comparisons. No compound logic assignments. Comparisons stay symbols `== != < <= > >=` (the user's call
  2026-11-05, QCT, word forms declined).
- **One loop keyword, `for` (S9, S9a, the user's direction).** `for { }`, `for cond { }`, three clauses, `for x in e`,
  `for i, x in e`, `do { } for cond`. `for ... in` walks an array, a type with `RunFrom`, a type's own `Iter()`/`Next()`,
  else `At`+`Len` (S9d), in that order; elements are copies. `range end` / `range s, e` / `range s, e, step` counts
  upward only (S9b, the user's design). `for x in try c { } catch ...` covers the loop's own calls (S9e). A for-in's
  names are new (D3a). No labeled `break`/`continue` (the user's call, 2026-10-08).
- **An expression statement must do something (S3):** a call or an increment. `++`/`--` are statements only (S3a, the
  user's call). A bare `{ }` is a scope (S1a). **A call statement giving a value that does nothing else is an error
  (2026-10-26, the user's yes to docs/survey2.md's nodiscard replacement)**, read off the bodies it reaches; a call
  giving nothing, a fallible call and a generic's body are never judged.
- **Every local is read and every import used (D3b, M5a, 2026-10-26, the user: "extend this to unused variables
  too").** A read is any appearance but as an assignment target (Go's rule); a place never read is written `_`.
  Exempt: parameters, constructor fields, catch names, destructor-typed locals, names in branches the build leaves
  out. Said only of a program with no other error. `tools/unused_migrate.olang` migrated the repository.
- **Assignment (S4, S4a, S4c, S4d).** Left to right: the target's place, then the value; a compound place is evaluated
  once. Assignment to a reference repoints (S4a). Parallel assignment `a, b = b, a` evaluates every value first;
  `a, b := 1, 2` and `x, y I32` declare several names (S4c/D12b, the user's call); `x[i] = v` on a type declaring
  `SetAt` stores through it. An assigned value borrowing storage within the place takes its old value as a copy (S4d).
  A parallel declaration or assignment copies each value as a single one does.
- **Every path of a function with a result must return (D10a)** - structural, loops never count, `for { }` with no
  `break` of its own leaves, a leaving `join` and a `noreturn` call count. `unreachable` is checked, never assumed
  (S16d), and behaves as a failed assert. `os.Exit(code)` for any status (B5b).
- **`unreachable "why"` (S16d, mine 2026-10-24).** An optional message, any text expression, evaluated only where
  reached: `FILE:LINE: unreachable reached: why`. **As a value (S16e, survey2 item 6, the user's yes 2026-10-27; built
  2026-10-31)**: `d := t[k] if k in t else unreachable "checked above"` wherever a value of any type is expected;
  `:=` from it is an error.
- **A test passes by ending, fails by what fails (S15/S16, QU, the user's design 2026-10-17).** A test passes by
  reaching its end or a bare `return` (deferred code runs); it fails by a failed assert or check, `unreachable`, a `!`,
  or an error leaving its body (`FAIL - name: T.W`, then the trace). `done`, `fail` and `abort` are gone.
- **`noreturn` (D8e, QU, the user's design).** `fn Exit(code I32) noreturn`, `fn(I32) noreturn`: the body never
  returns (no `?`); a call leaves for D10a and fits where a value of any type is expected. Not a type: no variable,
  parameter or type argument is `noreturn`, and `:=` from one is an error. Lambdas, constructors, operator methods
  and `main` may not be `noreturn`; `extern fn` may (X1); a trait method is met only by a noreturn method (T31).
- **The error return trace (S18d, decided by the coordinator for the user).** Test and `-d` builds keep each thread's
  last 32 places an error went, cleared where a clause takes it; printed after an error ends a test, escapes `main`,
  or reaches a `!`. Other builds print `(build with -debug to see where it came from)`.
- **`assert cond[, message]` is a statement (S17/S18, the user's call for the message).** Outside `test` a failure
  aborts; in a test it fails that test. Every failed check prints `FILE:LINE:` and what failed (S18a).
- **A top-level `assert cond[, message]` (S17a, docs/survey2.md 2.6, the user's "Yes" 2026-10-26; built 2026-10-27).**
  A declaration decided while compiling and never run: false, aborting or undecidable is a compile error (`this
  top-level assert is false, decided while compiling`), true emits nothing. Checked in the module's context.
- **`Place.Here` (E40, D8a, docs/survey2.md 2.2, the user's "Yes do that" 2026-10-26; built 2026-10-27).** The
  prelude's `Place(File String&, Line I64, Column I64)`, `$p` `FILE:LINE:COLUMN`; `Place.Here` is the place it is
  written, and in a parameter's default the place of the call leaving the argument off. No keyword. Any other member
  through `Place` is an error. D3a reserves prelude names, so the compiler's own `Place` types became `Lvalue`.
- **`become f(x)` (S21, docs/survey2.md 2.3, the user's "Build it now" 2026-10-26; built 2026-10-27).** A guaranteed
  tail call (LLVM `musttail`; a frame replaced in the evaluator). Only a call of a function or method declared with
  `fn`, in one (never main, export fn, lambda, generator, test, constructor or destructor), with one signature and
  error set; nothing passed through memory; not in deferred code, a message, a task clause or a join; no argument is
  storage of a closing scope; no destructor-bearing value held. Its errors are the function's own, so no `try`.
- **`defer` is block-scoped (S19, the user's decision).** Last registered first, on every way out but the
  process-ending ones; deferred code runs before a join's wait and before the scope closes; it may not leave.
- **`errdefer` (S19e, the user's decision 2026-10-18; built 2026-10-25).** `errdefer STATEMENT` / `errdefer { }`:
  deferred code run only when an error leaves the block outward; one list with `defer`, last registered first. A join
  block's errdefer runs after its wait when its tasks fail. None pending around a `yield` (S20).
- **`match` (S12-S13f).** Several values per case, guards (`case P if c`), nested patterns, literals in payload
  positions, `case _` (alone, last); exhaustiveness (S13a, Maranget). `match T` dispatches on a type variable (G15).
  **`case _` is the one catch-all, `case P: v` the value form (S12, S12b, S13f; the user's QBQ "case _ is the best"
  and QBR "Ye agree", 2026-10-27; built 2026-10-31)**: `nomatch` and `=>` are gone; a value match gives each clause's
  value on its `:`'s line (a clause may instead leave by one statement); a statement match's clause is a block or
  `case P: stmt`. A guard's test narrows in its clause (S13e, QBP 1, the user's yes). `tools/match_migrate.olang`
  migrated the repository.
- **Array patterns (S13h, QBP 10, the user's "Do it" and the rest spelled `...`, 2026-10-31; built 2026-10-31).**
  `case Array<String&>["test", file, ...words]`: a literal compares an element, a name binds one, `...name` binds the
  rest as a slice, a bare `...` skips it, no `...` is the exact length; items after the rest count from the end. The
  type is written as the literal making the subject (QBU). Arrays, text and At+Len types.
- **Struct patterns by field name; payload fields by name too (S13i, S13b, the user's decision 2026-11-07: "structs
  by name, arrays by position, and enums by both"; built 2026-11-07).** `case Point(x = 0, y)`: a struct's
  parentheses list FIELDS, never constructor parameters, and nothing runs; `name = p` matches a field, a bare `name`
  binds it, unmentioned fields are ignored, only readable fields (M6a); no item by position. An enum case's payload by
  position, then by name (`Shape.Rect(w, h = 0)`). A struct is one constructor for exhaustiveness (S13a). A struct
  matched by a constructor's value (`case Point(1, 2)`) is gone.
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
  the literal's. The prelude and std collections declare one. **`$` renders the literal making it (E11a)** and writes
  declared type names as source writes them outside their module. No trait requires FromIter. A primitive, reference
  or struct with no FromIter in front is an error naming `Array<T>[...]`. `tools/literal_migrate.olang` migrated the
  repository.
- **Error words, enum cases and constructor fields follow the listing rule (T17/T19/C2, QY):** commas on a line, line
  breaks between lines; a named set's members are on its line (T19a).
- **Keywords as names (L9/L9a):** any keyword names a method after a receiver or `.`; statement-like and non-value
  keywords may name fields. `_` discards and is never a name.
- **Numeric literals (L10-L12b).** `_` only between digits; a decimal above `I64`'s max is `U64`, beyond 128 bits an
  error; a hex/binary pattern adapting to an unsigned type is its bits (L10a); a float literal beyond its target's
  range is an error (L12b). Escapes include `\0` and `\r`; a literal never crosses its line (L13).
- **Text literals by number, and raw text (L13-L15, L14a, the user's decision 2026-10-24: "add all if they are
  standard").** `\x41` (a byte), `\u{1F600}` (a code point, UTF-8). `"""` is the one raw form: no escapes, one line or
  several; across lines the opening `"""` ends its line, the closing one stands alone and its indentation is removed
  from every line (Swift's rules).
- **Text joins by adjacency; `$x` renders any value (E11a/E11b, the user's design).** A piece is a literal or a `$`
  rendering, so a missing comma never joins silently. Values render as source writes them; floats shortest
  round-trip; a type's `Str()` overrides (E11c, the user's call) and is called exactly once per rendering. A join's
  operands are evaluated before any piece renders.
- **More syntax rules worth knowing.** `catch` may begin a following line (R9b); a join continues onto a new line only
  inside parentheses (E11b); a shift of a literal by a value takes its target's type (E8b) and a literal shift is
  computed exactly (E4a); `x := 1 + 2` is an `I64`. A one-line declaration of several names shares one type (D12b).
- **Removed spellings, for anyone tempted to bring them back:** struct literals `T{...}` and field-list structs (T13);
  `T[]`/`T[N]`/`T[expr]` arrays and 2-D arrays (`Array<T>`); `len(a)` (`a.Len()`); scope names `&s` and scope
  declarations; UFCS method calls (M19); `same(a, b)` and the `atomicLoad`-style builtins; `compif` (B9); `while`
  (S9); `a is b` identity, `x is E.Case` and `x == null`; the helpers `Any`/`All` (`Some`/`Every`); a `size()` builtin;
  an `Iterable` interface (T35b: `xs.Iter()`); labeled break; interface switch dispatch (dropped by the user, "it gains
  very little and causes a lot of problems"); Str purity (E11c); `done`, `fail`, `abort` (QU); `own` and `take`
  (`docs/memory.md` round 3); `Array<T, N>`, constant type parameters `<N I64>` and `x as Array<T, N>&` views (QP1-QP4);
  `checked`, `CheckError` and the `Checked...` forms (`try a.Get(i)`, `x.Narrow<T>()`, `std/arith`); contract
  guarantees, named results and `fits`; `error IoError { ... }` declarations (`type IoError error { ... }`, T19);
  `nomatch` and `=>` (QBQ/QBR); `Clone` (E31d: `Copy()`).

### Types

- **Numeric primitives `I8 I16 I32 I64 U8 U16 U32 U64 F16 BF16 F32 F64`, and `Bool` (T4/T5, the user's call).**
  One table (`PrimInfo`) answers every question about a primitive. F8 (`F8E4M3`, `F8E5M2`, saturating, IEEE equality
  - the user's calls) and complex `C16 C32 C64` (the user's names) are prelude structs.
- **Integers of every width, `I1`-`I128` and `U1`-`U128` (T4a, docs/ideas.md #5, the user's decision 2026-10-18; built
  2026-10-26).** Ordinary members: wrapping at the width, the T6b lattice, literals adapting (up to 128 bits, E4a),
  `T.Max`/`Min`, `std/arith`, `Narrow`, `$`, `Hash`, `Format`, `T.Parse`, E37's bit operations, computed exactly at
  compile time. Storage is the next of 1, 2, 4, 8, 16 bytes. A declared type may not be named `I2` (it is one now).
- **A literal's own type: an integer is `I64`, a float `F64` (T6a, the user's calls, 2026-10-08/10).** A literal adapts
  to a typed target (T6); an expression of literals only adapts as one literal, computed exactly (E4a).
- **Numbers widen implicitly toward their base, never narrow (T6b, the user's design).** Wider within a signedness,
  unsigned into strictly wider signed, F16/BF16 -> F32 -> F64; a declared type into its base. Narrowing is written
  (`I32(x)`), unchecked; `try x.Narrow<I32>()` checks it (E26b) - never a per-operation check (the user: "It's not even
  a question").
- **Integer arithmetic wraps (E6c, the user's call, re-confirmed 2026-10-09).** Division by zero and MIN / -1 are
  undefined (E6a); `std/arith` checks: `try arith.Add(a, b)`, `try arith.Checked(a) * b` (E15a).
- **Value or reference is decided by the `&` marker alone (T11, T25a); references by default declined (QCS, the user
  2026-11-03: "don't do the object thing ... references are always shown with ampersand").** `&` is scope-tagged heap
  indirection, not an address-of: no pointer type, no unary `&`, no reference to a reference, no primitive
  references. Value<->reference conversion is assignability at the outermost level only (E12). Write-through
  assignment was rejected: `x = y` must imply `x == y`.
- **`&` on a parameter means it may write (QCC, 2026-10-31) - REVERSED by the user 2026-11-01 (QCK: "Yes, pause it and
  go back to mut").** Today's rule stands: `p mut T&` may write the caller's, `p T&` is a read-only shared view, `p T`
  a value (a copy by meaning); globals immutable unless `mut`.
- **A guarantee is declared by holding a value (QCE, the user's decision 2026-10-31; built 2026-11-01).** An array of a
  run-time length may be a field, element, payload or type argument by value (T7a relaxed): the container's own, a
  store copying into it; `Map<String, V>` holds its own key text, `Map<String&, V>` shares. D9a/D9c went: a by-value
  array or any size is copied at the call where something could tell (D9h, an optimization, no meaning: views handed
  back uncopied, element reads in place, D9i moves a value at its last use). A copy is made as `MakeKind.Copy`.
- **Permission is part of a reference's type (T25b/T25c, the user's design; kept 2026-10-31: "knowing whether or not a
  function you pass things into mutates what you passed is valuable", and "globals shouldn't be mut unless you say
  so").** `mut T&` writable, `T&` read-only, at every level, shallow. Locals and parameters are always assignable
  (`mut` before a value type is an error), a field is assignable through a writable instance (C3). Writable converts to
  read-only only at the top. A copy taken from a place reached read-only is read-only (QC).
- **References are never null unless written `?&` (T2c, S8e, E35, the user's decision 2026-10-24).** `Node&` never is
  null, `Node?&` may be; `T&` flows into `T?&`, `T?&` into `T&` only where a test narrows it (locals and parameters,
  S8e), or `x!`, which ends the program with "null reached". A never-null reference has no zero value (D13c). **An
  array may be null where written `?&` (QCI 4, the user's "an array reference that isn't pointing at a valid array
  should be null", 2026-11-01; built 2026-11-02)**: null distinct from empty (length -1), the zero of `Array<T>?&`;
  `null` given a never-null array is an error naming `?&`. Nothing is uninitialized: a declaration with no value takes
  its type's zero value (D13c, the user's design); a type whose constructor has effects has none.
- **Arrays: one type, `Array<T>`, a length never written (T7-T7d, QP1-QP4, the user's design 2026-10-01 and
  2026-10-17).** Storage is fixed, laid out in place, wherever its length is known where it is made (T7c); inferred,
  never written. Arrays may be passed by value (D9a): a function is compiled once per argument length (G29) only where
  its body decides on the length. A run-time array stored into fixed storage is an error naming a slice (T7d). Storage
  over 64KB is never on the stack. No 2-D arrays (the user's call). `x.Len()` is an `I64` (E23/T10).
- **Indexing is unchecked, slicing checked once per slice (E16, E16a-E16e).** `a[lo:hi]` is a borrow tagged with the
  base's scope and permission; `try a.Get(i)`, `try a.Set(i, v)`, `try a.SliceOf(lo, hi)` fail with
  `ArrayError.OutOfRange`. An out-of-range index, a wrong `extern` prototype and a data race are the three unchecked
  holes, stated.
- **Structures of arrays: `Columns<T>` and `ColumnVec<T>` (T7e, QCS 3 and QCU, the user's decisions 2026-11-06/07: "two
  column types", no computed types; built 2026-11-07).** `Columns<T>` is laid out as one `Array<F>` per field of the
  record `T` (`c.x` is a column, lane operators apply); `ColumnVec<T>` grows like a Vec, row operations moving every
  column. T must be a record (constructor only puns its fields). A column view goes stale on growth as a Vec's does;
  `c[i]` reads/writes a row. Conversions `ToArray ToVec ToColumnVec ToColumns`. Mostly prelude code over reflection.
- **Lane operators (E39, docs/ideas.md #4, the user's decision 2026-10-18; built 2026-10-26).** An array's operators
  work lane by lane (`a * b + c`, `x * 2.0`, `-a`, `and`/`or`/`not` on Bool lanes); a whole expression is one loop;
  `Sum`, `Min`/`Max`, `LanesEqual`/`LanesLess`, `mask.Select(a, b)`, `Some()`/`Every()` take one with no array made.
  Lengths checked while compiling or once per operation. `x op= v` is in place. Not for text; `a < b` on arrays is an
  error naming `LanesLess`. A checker elaboration, level with the hand loop and C.
- **Equality (E10, E10a, E10b, the user's decision 2026-10-24).** `==` compares what is stored, never following a
  reference: values structurally, a reference by identity - unless its type declares `Eq`, which `==` calls at every
  depth. The prelude declares `Eq`/`Hash` by contents on arrays, `String`, `List`, `Map`, `Vec`. A type declaring `Eq`
  must declare `Hash`.
- **Structs are built only by their constructor (T13, C2d, the user's call).** No struct literals. A constructor body's
  top-level locals are the fields (C2a); a bare name is a pun of a parameter; `return` is rejected. Defaults are
  compile-time expressions (D8a). `destruct { }` runs once per value where its holder lets go (O15); an empty one is
  an error (C7a); its type is declared `unique` (T13b).
- **`immut` types (T13a, the user's decisions 2026-11-03 "immut DECIDED", "unique vs immut settled"; built
  2026-11-03).** `type Config immut struct(...)`: nothing of a value of it changes after its constructor (writing it
  or lending it writably is an error); `mut T&` of one is an error; a holder need not be immut; no Copy. **String is
  immut (the user's decision 2026-11-03)**: `type String immut extends Array<Char>`; text being written is an
  `Array<Char>` or a StringBuilder, made a String by `String(chars)`; a type declared over an immut type is immut.
  `tools/textbuild_migrate.olang` migrated the repository.
- **`unique` types (T13b, the user's decisions 2026-11-03 "unique DECIDED", "Copy and unique DECIDED", "Collections
  DECIDED", "unique vs immut settled"; built 2026-11-03).** `type File unique struct(fd I32) { fd }`: a value exists
  in one place. A fresh value (constructor or call result) lands by value where put; any other copy is a reference
  (`w := f` is a `File&`). A slot laid out for the value given an existing one is an error naming `File&`. A by-value
  parameter hands its value on once at its last mention (a move). A unique type declares no Copy; a holder of a unique
  part is unique unless it declares a Copy; unique and immut are never one type's. Generics copying a unique T are
  refused at the program's call (G18a). `tools/unique_migrate.olang` declared destructor types unique.
- **Destructors run where the holder lets go - Rust's drop (O15, O16, C9, C9b, C11, T13b rule 10, the user's decision
  2026-11-03 "unique DECIDED"; built 2026-11-03).** A value with a destructor to run is held by value in a variable,
  parameter, result, field or payload, and its destructors run once where that holder lets go (block exit, callee's
  end unless handed on, a store over a place after the new value is made); parts last first. `x.Destroy()` ends one
  now. A call's value no place takes is held where the call lands (O16). A global and a generator's parameter hold one
  by reference (C11); none is held across a `yield` or a `become`. Built as deferred code with a hidden flag.
- **Collections hold values with destructors by value (C11 relaxed, O15, M19d, the user's "Collections DECIDED"
  2026-11-03; built 2026-11-07).** `Vec<File>`, `Map<String, File>`, `Deque<File>` are unique as their elements are
  and end them (a removal giving nothing ends what it removes, one that gives hands it out; the holder letting go ends
  the live elements last first). `vacate` as a statement ends the value, `occupy` stores into room; a generic struct
  of the prelude or std may declare a **conditional destructor** existing only in instances holding such values. C11
  is judged per instance: `List<File>` and a run-time `Array<T>(n)` of them are refused.
- **Packed structs (T13c, X11a, X18, the user's QCX 2, 2026-11-07; built 2026-11-07).** `type Header packed struct(
  version U4, ihl U4, length U16) { version, ihl, length }`: no padding, fields from the lowest bit up, size the bits
  rounded up to bytes, alignment 1. Field types: integers of any width, Bool, floats, payload-free enums, nested
  packed structs, fixed arrays; references, run-time arrays, function values and ordinary structs are T13c's error. No
  reference names a field. `f.BitOffset`/`f.Bits` in reflection; `build -library` writes packed C structs; C imports
  translate bitfield records.
- **Holders ended before what they hold (O15, QCZ, the user's decision 2026-11-07: "let the compiler order them";
  built 2026-11-07).** A block's by-value holders end last declared first, except that one holding a reference to
  another is ended before it; two that may hold each other (a cycle) is a compile-time error naming both. "Holds" is a
  flow-insensitive points-to over the body, never reading callees.
- **Declared types are nominal (T29).** `type Meters I32`, `type Name Array<T>`; `extends` inherits the base's methods
  and operators (T29f); `Name(x)` converts and names the argument's storage (T29a); a declared primitive may have a
  constructor, which a literal runs while compiling (T29d). Over a struct, enum or generic instance it is an error.
  `Char` extends `U8`, `String` extends `Array<Char>` (T29h/T29c); text written in the program is a `String`.
- **Enums carry payloads and may be recursive through `&` (T17, T17a, T17c, T17d).** A payload lives where its value
  does; an enum reference's zero is null. A case may carry one type written whole, `Round Circle` (the coordinator's
  decision 2026-10-24). A local holding an enum case whose payload must be where a longer scope's references are has
  its references placed there (O28, T17c).
- **Enum raw values (T17e, the user's decision 2026-10-24).** `type Op enum String { Plus = "+" }`, `type Status enum
  U8 { Ok, Busy = 9 }`: a table of constants beside the cases, never their representation. `op.Value()` is supplied;
  `try Op.From(v)` fails with `CaseError.NoCase`, only where no case carries a payload.
- **Type-level builders (D19, D19a, T30b, QBT, the user's decision 2026-10-27: "I want it with a)"; built
  2026-11-07).** `fn Color.FromHex(t String&) Color ? BadHex` is called `Color.FromHex(t)`, through an import, an
  instance (`List<I64>.Of(a)`) or a type variable (`T.Parse(t)`); its owner a type of its module or a
  trait-constrained variable; one result, a value of the owner; never inherited through `extends`. **D19a**: a
  top-level function returning a type its module declares with no parameter naming it is an error naming `fn T.Name`.
  **T30b**: a trait may require a builder. `T.Functions` walks them. The prelude: `String.FromC(p, max)` (X15),
  `F64.FromBits(u)` (E33), `T.Parse(t, base)`. `tools/builder_migrate.olang` migrated the repository.
- **Methods are declared with a receiver clause and called only as methods (M19, the user's call).** A method may not
  share a field's name. Built-in types get methods only from the prelude (M19d). Overloading by receiver only (M21).
- **A number written as a literal is a receiver like any other value (E13c, 2026-10-18, the user: "2.0.Sqrt() should
  be valid code. Don't make an exception for floats like that").** `2.0.Sqrt()`, `255.Format(16)` take the literal's
  own type (T6a); another type is a conversion (`F32(2).Sqrt()`).
- **`Copy()` makes a new value from an existing one (E31d, the user's decisions 2026-11-03 "Copy DECIDED", "Copy and
  unique DECIDED", "Collections DECIDED"; built 2026-11-03).** Every type has one supplied (deep through values, shared
  at references and function values); `x.Copy()` gives it. A struct or enum may declare its own, `fn (x T&) Copy() T`,
  called at every copy of a value; it may only build (allocation, no other effect). `Clone` is gone. No copy running a
  declared Copy is left out. `tools/clone_migrate.olang` rewrites `.Clone()`.
- **Operators are methods named for them (E31, the user's design).** `Plus Minus Mul Div Rem MatMul Neg Less BitAnd
  ... Inc Dec At SetAt Slice Call`, lowercase being module-private (M6b); `> <= >=` derive from `Less`. Any operator's
  method but `Len`/`Eq`/`Str` may declare errors (E31a). `x[i, j]` calls `At(i, j)`. **`commutes` (E31c, the user's
  decision 2026-10-25)** after an operator's result lets `2.0 * v` call `v.Mul(2.0)`. A store through `x[i]` uses
  `SetAt` (E31b); a `mut` method on `x[i]` is made in place through `RefMut` where the arguments are plain values
  (two-phase otherwise). No user-declared operator symbols; `==` and `$` overridable only by `Eq`/`Str`.
- **Several results, no tuples (D8c/D8d, the user's call).** `return a, b`, `q, r := f()`, `f(g())`; `Pair<A, B>` in
  `std/pair` (the user's call). **Results and error sets are written bare** (the user's call 2026-10-24): `fn
  divmod(a I64, b I64) I64, I64 ? A, B`. **Whole-item grouping (L18c, the user's call)**: a list item holding a
  top-level comma is parenthesized whole, `Map<String&, (fn(x I64) I64, I64 ? A, B)>`. Parentheses group nothing
  else. `tools/results_migrate.olang` migrates.
- **Defaults and `default` (D8a/D8b/E14).** Trailing defaults, `default` in an argument slot. A default is built per
  call in its declaration's context.
- **Tests name their targets (B7a, B3a, B14, B15, 2026-10-26).** `test Twice "doubles" { }`, `test Map.Get "..."`: a
  function, type or `Type.Method` of the test's own file; an unknown target or a duplicate is an error. `olang doc`
  lists tests as examples. `olang test FILE WORD...` runs the tests a word names; words naming none fail the file
  with status 3 (the coordinator's decision 2026-10-26).
- **Fuzzing and property tests (B19, B19a, docs/survey2.md section 5, 2026-10-26).** `olang test -fuzz NAME FILE
  [-fuzztime SECONDS]` runs one test per input with libFuzzer. `std/fuzz` (`fuzz.Check` over bytes, corpus in
  `testdata/fuzz/`) and `std/prop` (`prop.Check` makes parameters by reflection, shrinks failures, saves them).
  Profiling is written up in docs/profiling.md.
- **`olang profile FILE [ARGS]` (B20, QBL, the user's decision 2026-10-26; built 2026-10-27).** A built-in sampling
  profiler: builds as `build` does with frame pointers and line tables, a per-thread CPU-time sampler in the runtime
  (`std/runtime/prof.ll`), llvm-symbolizer for names; prints self/total by function, hot lines and callers, and writes
  an SVG flame graph. Options -output, -quick, -define, -update. compiler/profile.olang, docs/profiling.md.
- **Arguments by name (E14b, QBG, 2026-10-26 - reverses the 2026-09 rejection).** A defaulted parameter only, after
  every positional argument, in any order, each once (`connect(h, retries = 5)`); evaluated in written order.
- **Variadic parameters (D8g, QCF, the user's "yes, add variadic args", 2026-10-31; built 2026-10-31).** `fn sum(xs
  ...I64)`: any number of arguments, held as a fixed array in the caller's frame, or `...a` passes an array on; inside
  a read-only `Array<T>&`. Last but defaulted parameters; not constructors, payloads or externs.
  `tools/variadic_migrate.olang`.
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
- **`any Trait&` (T32-T34, D17f, 2026-10-24, the user's design).** Two words, the instance and a static table per
  (type, trait). A struct or enum variable is borrowed, a temporary built where the any lands, a number/Bool/Char/array
  copied. Calls dispatch through the table; `mut` only through `mut any`; `==` is identity. A closed trait's any is
  matched by type cases `case Button b`; an open trait's never (the user). A trait method's contract is checked before
  dispatch. Five soundness review rounds (2026-10-24/25) are in HISTORY.md.
- **No `volatile` (X3b)** - a foreign call is an opaque barrier, atomics cover threads, MMIO is inexpressible.
- **TBAA (T36).** Every numeric primitive, the array descriptor and a reference to a struct or enum have element and
  field tags; the runtime's headers have their own; aggregates and function values are untagged.
- **Parameters (D9, D9b).** `&` says whose instance, `mut` whether it can be written; an immutable lvalue never binds
  a `mut &` parameter. A generic's by-value parameter bound to a run-time array is copied exactly when its body writes
  it (D9b). Arrays are passed by value as instances (D9a, G29).
- **Assignability (E12, E12c).** Value into reference borrows an lvalue (with a lifetime check) or builds a temporary
  in the target's scope; reference into value copies out; a reference to fixed storage is lent where a run-time one is
  wanted with no copy.
- **Function types are reference-only (T21, QCI 3, the user's "g Handler should not be possible because a function can
  never be a value" and "only function declarations don't have &", 2026-11-01; built 2026-11-02).** A place holding a
  function value writes the marker on the `fn`: `fn&(e Event)` never null, `fn?&(e Event)` may be (`?&`'s rules); a
  bare `fn(...)` on a place is an error naming the `&`. **Declared function types (T21b)**: `type Handler fn(e Event)`
  (no marker in the declaration), held as `Handler&`/`Handler?&`; nominal; no type parameters yet. A C function pointer
  is `fn?&`. `tools/fnref_migrate.olang` migrated the repository.
- **Function types (T22, T22a).** Errors compared in order, `mut` and permissions on T22's terms; a type's `Call` fits a
  function type (E31). No function type says where references live (QCB). **A function value carries its relations
  (T22a, QCR (1), the user's "build them all" 2026-11-03; built 2026-11-07)**: a function or lambda whose inferred
  obligations are more than its type says is a value wherever the inference follows it whole (a local, conditional,
  `match`, conversion, call result), judged as the direct call; at a boundary (argument, store, capture, task, `any`,
  `yield`, return no caller follows) only what the written type says may come, else T22a's error. A result holding
  references reads as borrowed from the reference parameters (open point 5, built 2026-11-02).
- **Static literals (T25d).** A literal known while compiling reaching a read-only reference is the constant data
  itself; an immutable global no writable reference reaches is `constant`, and importers see its value (K2).
- **A number type's limits through its name (E36, the user's decision 2026-10-24).** `I64.Max`, `U8.Min`, `T.Max`, and
  a float's `Max`, `Min`, `Inf`, `NaN`, `Epsilon`, `SmallestNormal` - constants of the type, never literals; a declared
  type has them only where it extends its base and declares no constructor.
- **Bit operations are supplied methods of every integer type (E37, the user's decision 2026-10-24).**
  `LeadingZeros TrailingZeros PopCount`, `RotateLeft(n) RotateRight(n)`, `ByteSwap`; inherited through `extends`.
- **Small type rules:** a type cannot embed itself by value (T16); a self-holding array type is an error (T29); an
  inherited array method is never overridden (T29e); `x.Bits()` and `F64.FromBits(u)` move a float's IEEE pattern
  (E33); an array of constant length 0 names one static storage; a NaN renders `nan`.
- **Visibility details (M6a, M12, M4).** A member or error word is public by its own first letter; enum cases are
  alias-qualified across modules; an alias-less import takes the file's base name; capitalized aliases re-export,
  through chains of any depth; a cycle in public reachability, or one file reached two ways, is an error.

### Generics

- **Generic enums (G6b, the user's decision 2026-10-18: "generic enums go in for sure"; built 2026-10-25).** `type
  Tree<T> enum { Leaf(v T)  Node(l Tree<T>&, r Tree<T>&) }` is instantiated as a generic struct is. A case is written
  with its arguments (`Tree<I64>.Leaf(3)`) or bare (`Tree.Leaf(3)`, the instance inferred); `x := Opt.None` is an
  error naming the fix. Patterns name a case bare against the subject's instance. `$` writes `Opt.Some(4)`. std has no
  `Option`/`Result` (the decision).
- **Explicit type arguments (G12, E3, the user's calls 2026-10-24 and 2026-10-25).** `big<I64>` names a generic
  function's instance, as a value or at a call; a method takes them at a call too (`x.Narrow<I32>()`). After a name, a
  `<` on one line touching the name, with `(` touching its `>`, is type arguments (C#'s rule); spaced, it compares. A
  generic is no value unless named so; one taking an array by value is never a value. A type name read as a value is
  an error.
- **Type parameter lists (QW, G3, G8b, the user's decision 2026-10-17).** A function's type variables are a list after
  its name, constraints in it: `fn max<T>(a T, b T) T`, `fn area<T Shape>(x T)`; a method gets its type's parameters
  from its receiver's type arguments, bare, plus a list for its own; a constructor's own variables are `struct<T>(...)`
  (G10d). Calls infer their arguments (G4); a function type is never generic of its own (G3a).
- **Monomorphized; the instantiation's name is its identity, spelled injectively (G16a).** Instantiations are defined by
  the root object only (B3d). Rules about contents are re-checked per instantiation (G18); errors carry where the
  instantiation was asked for (G16b); G17 bounds depth.
- **A generic's needs are its requirement, said at the call (G18a, QBP 13/B1.4 option d, the user's "do D"
  2026-10-31; built 2026-10-31).** What a body asks of a type variable's binding (a method, operator, index, slice,
  walk, membership, field) is its need; no constraint is required, and a call whose type lacks one is an error at the
  program's own call (`Max needs Less ('<'), and Point has none`), with a note where the body asks. Judged per instance.
- **Inference (G9a-G9d).** Literals adapt after other arguments bind; text binds `String`; `null` takes no part; a
  value of a destructor type binds the reference; reference arguments of differing permission meet read-only.
- **Constructors infer type arguments (G10c)** and a plain type's constructor may introduce variables its fields do
  not name (G10d).
- **References as type arguments (G11), bare marker only.** `<T>&` on a type variable (G11a).
- **Constraints (G19)** checked where a variable is bound; written types' constraints checked after all signatures.
- **Instances per array length (G29-G31; constant parameters removed 2026-10-24, QP2, the user's call: "This still
  doesn't give more information than inferring a known size at compile time").** A by-value array parameter binds its
  length per call; each instance checks and decides asserts on lengths (S18c) - made only where the body decides
  something on the length. A run-time-length argument is the one instance for those; G17 bounds a growing length.
- **Generics composition (G8a, G15).** A type variable may be a type argument (`Vec<T>`); a still-generic receiver
  matches any application. `match T` is exhaustiveness-checked and compiles only the chosen arm.
- **A literal default for a type-variable parameter is fitted per call (G18).**
- **Error-set parameters (G1a, QAH, the user's decision 2026-10-18; built 2026-10-25).** A list may end in `? E`
  (`type Iterator<T ? E> trait { mut Next() T ? E, Exhausted }`, `fn apply<T, U ? E>(x T, f fn(x T) U ? E) U ? E`).
  `E` stands only where an error set is written and is spliced in; a call binds it to the union of what the matched
  function values and iterators fail with, the empty set where nothing fallible binds it (then no `try`). Satisfaction
  is "held by" (T31). Not a stored error (T20).
- **Generators (D18-D18d, S20, QAG revised, the user's decision 2026-10-18; built 2026-10-25).** A `fn` whose result
  is `Iterator<T ? E>` and whose body holds a `yield` is a generator - no keyword. A call runs none of the body and
  gives the prelude's `Generator<T ? E>`; its end (a bare `return`) or an error ends the walk, later `Next` failing with
  `Exhausted`. Built as a lambda coroutine. **Borrowed elements (D18c, QBB, 2026-10-26; inferred since 2026-11-02)**:
  `fn words(t String&) Iterator<String&>` yields views, read-only, never null (`ViewGenerator`). A for-in's walk made
  and finished in one place is elided into the caller (D18e). Not allowed: `yield` in a lambda, deferred code, a join
  block, or with deferred code pending around it.
- **Compile-time reflection (G32-G38, G13, docs/ideas.md #2, the user's decisions 2026-10-18; built 2026-10-25).** A
  type's structure read through its name while compiling: `T.Name`, `T.Kind` (`TypeKind`), `T.Base`, `T.Element`,
  `T.Length`, `T.Target`, `T.Nullable`, `T.Size`, `T.Align`, and the lists `T.Fields`, `T.Cases`, `T.Params`,
  `T.Results`, `T.Errors`. A list is no value: a `for` over it is unrolled, `.Len()` and a constant index are
  constants. Elements are descriptors (`f.Name`, `f.Type`, `f.Offset`, `f.Of(v)`, `c(args)`). Conditions over
  reflected constants decide `if`s, asserts and `match` per instance (G35); `match T` takes trait and generic cases
  (G36); `T(arg(p) for p in T.Params)` builds through the constructor (G37). A struct's private fields are in
  `T.Fields` only in its module. `json.Encode(v)`/`json.Decode<T>(text)` take any value.
- **Typed attributes and function reflection (G39-G41, R8, QBN, QBO, the user's decisions 2026-10-26; built
  2026-10-27).** `@Type(args)` / `@Type` before a type, function, enum case, constructor field or parameter: a value of
  a type the program declares, built while compiling; the compiler gives none a meaning. Read by `try x.Attr<A>()`
  and `x.HasAttr<A>()`. `alias.Functions` and `T.Methods` give `FuncInfo` descriptors; `f(args)` calls one. std:
  `json.Naming`, `@json.Key`, `@json.Skip`, std/csv records as structs, std/flags `p.Read<T>(args)`.
- **Function facts (G42, QBP 9, B1.1, the user's "yes build with item 6" 2026-10-27; built 2026-10-31).**
  `mix.Allocates`, `Blocks`, `WritesGlobals`, `CallsC`, `Spawns`, `Recursive`, `Terminates` through a function's name or
  a descriptor: a Bool constant, true where the function or anything it may call may; so `assert not mix.Allocates`
  (S17a) pins one. Read off the effect summaries; a fact that changes the code it is read from is an error. **The
  sharper rule (item 27, the user's "do the sharper rule" 2026-11-03; built 2026-11-07):** a C call is "anything" only
  in a program that hands an export fn to C, is built `-library`, or links C of its own, and then not for libc's I/O,
  string, memory and time functions.

### Errors

- **Error sets and `?` (R1-R8).** `fn f(params) Ret ? ErrA, ErrB`: result first, error set after `?` (the user's call).
  `error T.WORD` raises; a bare unhandled fallible call is a compile error. Codes are `(type ordinal << 16) | word
  ordinal` from the function's own list, so propagation re-encodes.
- **Errors declared where raised; `?` always written; no flags (R3b, R1d, R23, R23a, T19; the user's decisions
  2026-10-31, QBZ; built 2026-10-31).** `error NotFound` with nothing of that name declared declares an error of its
  module (one value: `catch NotFound`, `? NotFound`, `$e`); capitalized exported, lower case private. Named sets list
  them (`type LookupError error NotFound, Ambiguous`). Every error name is CamelCase (`tools/errorcase_rename.olang`). A
  function that can fail writes `?` (R1d, `tools/question_migrate.olang`). A raised name one edit from another error
  of the module is an error with did-you-mean. A `Bool` among several results (R23) and a `Bool` result beside a `mut
  T&` parameter (R23a) are errors naming `? E`.
- **`?` alone infers the set (R1a, the user's call 2026-10-17: "Do 2", Zig's); every error has a type (R3, R22).** A
  bare `?` is what the body can fail with - a least fixed point over calls, ordered canonically; it may come out
  empty. `? E` is a promise the body is held to. A function type and a trait method write their set (R1b); a named
  function fits a superset list. The default error and bare `error` are gone (the user: "error should always require
  an actual error"). **Words in a set (R1c, 2026-10-17, the coordinator's decision):** `? ListError.EMPTY` names one
  word, and `catch` is judged word by word (R14).
- **`try` handles what fails as written, and nothing else is checked (R8, E15a, E24, the user's design; `checked`
  removed 2026-10-25, the user: "one error system: try").** A `try` takes the whole expression after it, up to its end
  or the first `catch` (E24, the user's call 2026-10-25); it covers every fallible call and operator in it and never
  turns a check on; one covering nothing is an error (not in a generic's body). To cover less, parenthesize. What
  `checked` checked is now a call that fails: `try a.Get(i)`, `try a.SliceOf(lo, hi)`, `try x.Narrow<I32>()`, `as`
  (`CaseError.WrongCase`), and `std/arith` (`try arith.Add(a, b)`, `Checked<T>`). Plain `/ %`, indexing and
  conversions stay unchecked. `for x in try c` and `try join` stay; no `try { block }`. `tools/try_migrate.olang`,
  `tools/checked_migrate.olang`, `tools/as_migrate.olang`.
- **`!` ends the program on what fails as written (E35, the user's decision QV).** `f(x)!`, `(f(x) + g(y))!` - `try`'s
  reach, no checks; a failure fails the running test, else prints `FILE:LINE: io.Error.W` and aborts; needs no `?`.
  While compiling it is K1's abort class. `spawn f(x)!` ends the program from the task's thread.
- **Operators may fail (E31, E31a, the user's calls).** A plain operator method (all but `Len`, `Eq`, `Str`) may
  declare errors, making the operator fallible as written (`try a - b`, `try x[i]`). The checked forms went with
  `checked`.
- **The prelude's errors of the language's own operations (R20, 2026-10-25):** `ArrayError.OutOfRange`,
  `NumberError.Overflow`/`Invalid`, `CaseError.WrongCase`, `ArgumentError.Invalid` (a false contract condition, D17);
  `Exhausted` is the loop protocol's. Nothing else is built in (QO3 withdrawn by the user).
- **std fails with its own errors, never ends the program on a caller's mistake (R22, QO4, the user: "No std function
  may ever exit").** `ListError`/`VecError`, `MapError.Missing`, `TextError` (`Format`, `ParseInt` take a `Radix` -
  `TextError.BadBase`), `ArrayError.NotFound`, `ChanError.CLOSED`, `StatsError`, `RandError`, `JsonError.UNEVEN`,
  `NumberError.Negative`. Language guarantees still abort.
- **Catch clauses (R9a/R9b, R11, the user's calls).** Any number, in order; an item-less `catch` takes the rest; in
  value position each clause leaves or gives its own `default`; errors no clause names propagate. `try f() default d`
  is gone.
- **Error types are declared as types; named sets; a clause names what it took (T19, T19a, R11b, R3a, 2026-10-25, the
  user's decisions QAM and the clause-only names of the same day).** `type IoError error { Full, Denied }` (at least
  one word); `type LoadError error os.Error, ParseError { Timeout }` is a **named set** - members (flattened in order)
  plus words of its own; it is the same set as its members written out. **`catch os.Error e { }`, `catch A, B e`,
  `catch e`** name the error the clause took: `$e`, `e == Word`/`Type`/`Set`, narrowing as S8d, `match e`, `error e`
  (R3a, held to the function's set). A spawned call's clause names no error. `tools/errortype_migrate.olang`.
- **Errors as values (T20, R3a, R11b, 2026-10-26, the user's option (b)); kept: QCY "keep errors as built then",
  2026-11-07.** An error type or named set is a value's type everywhere but a function's result: parameters, fields,
  locals, globals, elements, type arguments. Values: words written, `null` (no error, the zero value), a catch name.
  `==`/`!=`, narrowing (S8d, S8e), `match` with `case null`, `$e`, a supplied Hash, `error e` raising a held value;
  raising null stops the program. No arithmetic, ordering or number conversion. A value of a wider set fits a
  narrower one only after narrowing. Represented as the I32 code under its set's canonical order.
- **Errors carry data (T19b, R3b, T20, D17, S13b; docs/errdata.md, the user's decisions of 2026-11-07 "Yes, sure. Let
  errors hold values." and the three after; built 2026-11-07).** A word may carry plain data, `type ParseError error {
  Bad(line I64, col I64), Eof }`, raised `error ParseError.Bad(l, c)`, read where the error is named
  (`catch ParseError.Bad e { e.line }`), matched as an enum payload, rendered by `$e`, compared and hashed by word and
  payload. **An error raised by name carries data too** (`error NoKey(key)`), field types settled by the module's
  first raise. **Methods on error types** (`fn (e ParseError) Where() String`). **`ArgumentError.Invalid(what
  String)`** carries the failed condition. The payload never enters the error union: raising pushes a copy on a
  per-thread stack, a clause copies it into its name; programs without payloads pay nothing. std errors carry paths,
  positions and keys.
- **Errors are errors (the user's rule).** Nothing returns a value beside a flag: iterators fail with `Exhausted`
  (`Next() T ? Exhausted`), `Map.Get`, `Find`, `Pop` fail with their errors.
- **`main`**: no parameters or result, any error set or none (QU); an escaping error leaves main's blocks as any
  function's, then prints `unhandled error: T.W` (and its trace, S18d) and exits 1. `os.Args()`/`os.Env()` give the
  command line (B4a). The entry is the root module's plain `main`.
- **Where errors may be raised (R3, R10, R14).** `error` is valid in an ordinary function and a constructor, never in
  a `test` or `destruct`; the `try ... catch { }` statement discards the value. A run-time array length out of range
  aborts (D14b), out of memory aborts (D14c). `tools/errors_migrate.olang`, `tools/donefail_migrate.olang`.

### Memory and scopes (§8)

- **Memory lives in scopes (O1, O2).** Each block is an arena, reclaimed in one step at its close; globals live in the
  program's scope (O1b). Allocas are in the entry block (O2c). The arena aligns by size, 64 at 64 bytes (O8a). The
  chunk pool is per-thread size classes bounded by RAM/8 with an LRU (O8b).
- **Scopes inferred, none written (QCB, O28, the user's decision 2026-10-30: "Yes, do this scoping rework"; built
  2026-11-02, round 4 of docs/rework.md).** Every scope marker is gone (`&x`, `&return`, scope arguments, `outlives`);
  the compiler places each value in the shortest-lived scope every use allows (region inference over the whole
  program), a value kept longer built directly where it is kept (QCR (1) reversed the no-extension rule), never a
  hidden copy. **No manual scopes at all (the user, 2026-10-30: "make manual scopes impossible")**: nothing in the
  grammar writes one. A block stays a scope (the user, 2026-10-31): what it built that nothing outside keeps is freed
  at its close. Block folding was measured and not built. `tools/scopes_migrate.olang`; explain/doc/hover print the
  obligations as `# scopes: a outlives b`.
- **No scope written (O28, QCB, 2026-11-02; replacing the user's 2026-10-05 scope names).** A reference is a bare `&`.
  Every reference parameter has an implicit scope (O4b), a hidden parameter the compiler binds at each call; a result
  lands where the call's result is put (O18a) or, handed back from what an argument refers to, lives where that does
  (O13).
- **A reference never narrows (O25, the user's decision).** A local's type says where it lives (O25a); `:=` takes its
  initializer's scope; exactness is required only where something can be stored through (O25g). Copies of
  reference-holding values keep their references where the source's are (O25h).
- **A reference local typed per assignment (O25i, NLL as versions; docs/sec8.md round 1, built 2026-11-07).** A
  reference local, parameter or function-valued local gets a version at its declaration and every whole assignment,
  holding the value's exact scope; each read is judged by the versions reaching it (open there, else lifted, else
  ReadAfterScope; differing scopes are O12's). A loop body's block is new every turn. NLL DECIDED 2026-11-03 (the
  user: "Yes, there's no point in omitting this"). tests/nll.olang.
- **Storage kept for a view (O27 as placement, the user's QCR (1a) 2026-11-03; docs/sec8.md round 2, built
  2026-11-07).** A view of storage (slice, borrow of a part, what a callee hands back of an argument, closure) kept
  where that storage does not live has the storage built where the view is kept, as item 17's local. Still refused,
  with errors saying which: a by-value parameter's own storage, a match binding's or capture's copy, a `Next()` result
  scope, a derived or unknown scope, and storage holding a destructor value still to run. `-memory` lists each
  placement (B18); the language server shows it as a hint (O27).
- **Obligations (O10b/O10c).** Inferred from the body, held at every call to the callee's whole body; temporaries built
  where the obligation says (O18b/O18c). A `:=` from a call lands by obligations only where something is kept.
- **A returned local lives where the result goes (O26a).** A value or reference local the function returns, or that
  flows into what it returns, lives in the result scope (Go's escape analysis, static), including through a returned
  lambda's captures. A constructor field given a conditional or a match is the instance's slot (C2d, E28).
- **A kept local is built where it is kept (O28, O17, D9i; item 17, the user's decision 2026-11-03: "creating it at
  the scope of the thing we're storing it in"; built 2026-11-07).** A value local kept by reference past its block or
  turn, or copied whole at its last mention into longer-lived storage, has its storage placed where it is kept, a new
  value each time its declaration runs. Only a by-value parameter's storage stays C2d's error. tests/kept.olang.
- **Lending (O17, O17a, O17b).** A value whose references live elsewhere than its storage is lent only to callees that
  keep nothing in it, read off their bodies; a handle (a struct of one reference) is lent as its reference.
- **Derived and unknown scopes (O12, O23, O23a).** A field holding a view of what a constructor's reference parameter
  refers to has a binding of its own, read at a derived scope resolved per call; a scope not known here is read but
  never built into. A callee that may build into a derived scope is passed the program's scope there (C1).
- **Constructors (C2d, C2g).** A bare field lives with the instance; an argument binds the instance only where the
  body can make it hold it; a constructor's top level allocates into the instance scope. A field given a lambda or an
  adapter lives where what it captured does.
- **Scopes belong to one thread (P2, decision 48).** A task's scope arguments are private stand-ins folded at the join;
  a closure that may build into a captured scope asks for its thread's part of it (`__olang_capture_scope`).
- **Letting go (O8d, round 3 of `docs/memory.md`, 2026-10-18; the user's QAB: "the user should not have to deal with
  it").** Storage a place lets go of while it was its only holder may be reclaimed then rather than at the scope's
  close - the compiler's optimization, unobservable but in memory, never running a destructor early (O15). `own`,
  `take`, loans and borrowed copies are removed. The prelude says what it lets go of (`p.vacate()`); early freeing is
  the port's analysis (compiler/free.olang, round 6), keeping wherever a fact is missing (function values, externs, a
  module compiled on its own, tasks, destructors); `-memory` (B18) lists what keeps and why. **`x.Destroy()` (C9b, the
  user's QAD)** runs the destructor of the instance a local names now and frees it, only where the analysis proves the
  local the only way left to reach it. **Round 8 (2026-11-02):** owners held in place (structs of plain data and
  run-time arrays, a Vec or Map by value) are places with a region of their own; a collection's growth releases the
  array it replaced where no view of it is in use. Gate: the dead-region evaluator, `-sanitize`, `fuzz free`.
- **Recorded limits:** long-lived mutated structures holding values a task can reach still only grow (ledger QF); a
  value with destructors is freed early where `Destroy()` or a by-value holder ends it (unique Part C, built
  2026-11-07), but not one taken into a `:=` local (write `r Res = m.Take(k)!`); a `List<String&>` has one scope for
  chunks and referents (G11); a few over-rejections are left for the port's section 8.
- **The unique hand-on is a move (T13b, O8d, D9i, 2026-11-07).** A unique value handed on out of a by-value parameter
  at its last mention is moved, never copied; the callee's obligations make callers build the argument where it is
  stored. A lambda keeps its own copy; a named function moving a unique value into what outlives the call is no
  function value (T22a). Early freeing reads the move.
- **More scope rules (O2d, O13a, O13c, O14b/O14c, O16, O18a, O20, O26).** Each return in a loop is judged again by
  later assignments; a call's result carries its callee's result bindings; a by-value parameter's references returned
  are an obligation; destructors register once per constructor call and run at the instance scope's close in reverse
  order; a by-value parameter's own storage is never returned as borrowed (O14); a reference field's scope is its
  container's; a slice or view of a temporary borrows it in the block it is written in (E16a).
- **A match binding lives in its clause's block (S13b) and takes the matched place's permission.** A conditional or
  match of references lives where its values share a scope, else "not known here" (E28, O12).

### Concurrency

- **`join { }` with `spawn` calls inside (P1-P1b).** Binding is lexical, one level; the join waits on every way out; a
  task's arguments must outlive the join block (P2). P3/P5 (no shared writes) were withdrawn - a spawning program owns
  its races, which `-race` (ThreadSanitizer, P7) detects - Go's position: no static check without an ownership
  discipline.
- **`spawn x = f()` binds a result (P1g)**; parallel map is `spawn out[i] = f(i)`.
- **A spawned call may fail (P4-P4d, decision 50, the user approved).** `spawn try f()`, clauses run on the task's
  thread; `try join { } catch ...` fails with the earliest-spawned failure; a failing task's target is unwritten.
- **Memory model (P8-P8c):** three happens-before edges (globals, spawn, join); a data race is undefined.
- **Atomics are methods on integer places (P9, E10c, the user: "I don't like built-ins very much"):** `AtomicLoad`,
  `AtomicStore`, `AtomicAdd`, `AtomicSwap`, `AtomicCompareSwap`, sequentially consistent.
- **Runtime:** 1:1 threads, cached (at most 64 idle); no fixed pool and no M:N (P1e/P1f). Cancellation and timeout are
  `std/cancel` (the user's call: "both"); channels are `std/chan`. `spawn` is for parallelism, not I/O concurrency.
- **Task details.** A thread that cannot start aborts (P1c); a failed assert on a task thread aborts (P6); in a test
  build a failed check unwinds open scopes and joins tasks before its `longjmp` (P1d); a task's chunk pool goes back
  when it parks (P2a). `os.RunOnStack(bytes, f)` is the call `f()` on a bigger stack.
- **Scope parts in detail (decision 48).** Every scope header has an owner thread, parts and a parent;
  `__olang_capture_scope` gives the scope on its owner's thread, else that thread's part (folded at the close,
  destructors first).

### Modules and the build

- **A module is a file (M1/M22/M23, the user's design 2026-10-06).** Imports name a file without `.olang`: `std/x`,
  `host/owner/repo[@ref]/path`, or relative to the importing file. Identity is the path. Capitalized names are
  exported, members and words too (M6/M6a); a protocol method follows the same privacy (M6b, the user's rule). An
  import's alias is reserved in its module (M20). The prelude (`std/prelude`) gives built-in types their methods and
  types by bare name (M19d). No package-private visibility for now (the user's call).
- **Remote packages** are fetched with git into a cache keyed by commit and pinned by `olang.lock` (M23b, the user's
  call); `-update` updates (M23c). Versions DECIDED 2026-11-07 (the user: "Yeah, go with the cargo model"): after
  "done", `olang get pkg` takes the newest same-major version and records it in olang.lock; `-update` moves all;
  `pkg@v1.2` pins.
- **Separate compilation (B1-B8).** `compile` one module, `build` build and link, `test` each file's tests in a process
  of its own (B3a), `interpret` through the evaluator (B3e). Imports are resolved from source. Objects are named by a
  hash of everything compiled against. Globals initialize imports first, then in dependency order (B5a). No interface
  file exists because scope obligations are derived from bodies.
- **Optimization (B2c-B2e):** `-O3` and full LTO by default (a ThinLTO link with a cache for a program of 8 MB of IR or
  more); `-debug` is `-O0` with DWARF; `-race` ThreadSanitizer; `-sanitize` the scope sanitizer (B2f).
- **Targets (B12, the user's call):** native CPU by default, `-target NAME` to cross-compile; target constants
  `TargetOs TargetArch TargetCpu TargetVectorBits TargetHasFma`. No fast-math or contraction (the user's call).
- **Platforms (B12a, B12d, 2026-10-25).** LLVM 18, 19 and 20 build the suite unchanged. The clang is `OLANG_CLANG`,
  else a release's own, else the newest on PATH. Another architecture is built, linked and tested through an emulator
  (`make cross`; aarch64 needs clang 19+). **`make release`** packs the compiler, std, SPEC.md, editors, tools and
  clang with LLVM's libraries. R9 names another module's error by its alias.
- **Conditional compilation is a top-level `if` (B9-B10c, the user's design).** `-define Name=value` build constants;
  an immutable top-level global is a default `-define` replaces (B10c); a local `if` the build decides is conditional
  compilation too (S8b); a constant condition not depending on the build is a dead-branch error (S8a).
- **Diagnostics are one row each (B11/B11a, the user's design).** `path:line:col: error[RULE]: message`, the source
  line and a caret, `note:` rows; one error per cause; `olang explain RULE` prints the spec rule. **Did you mean
  (2026-10-26, the user's request):** every name that names nothing ends with the nearest allowed name (`msgs.Nearest`).
  **Typed holes (E41, QBP 3, the user's "yes build it", 2026-10-27; built 2026-10-31)**: `_` where a value is wanted
  is an error naming the type wanted and the names in scope that fit.
- **Build details.** Objects for a different mode are different artifacts (`.main.o`, `.test.o`, `.race.o`,
  `.debug.o`, `.san.o`, a `-define` hash, B4/B10b); the target is in the object hash (B12b); symbols are mangled from
  module identity (B3b). `-define` values are typed as the literal would be (B10); the token evaluator (B9a) decides
  only what it decides exactly and defers the rest to the compile-time evaluator (B9c). A build is the same byte for
  byte whatever process made it.
- **Declared module identity was deferred until packaging, and is now the import path (M22).** Individual function or
  type imports are not planned: the unit of import is the module.

### Compile-time evaluation

- **Anything computable at compile time may be (K1/K1a, the user's request); no function colouring.** The evaluator
  (`compiler/eval.olang`) interprets the checked program with the run time's semantics and refuses only what it must
  (effects skipping would show, externs but libm, undefined behaviour, a step and memory budget). Whether a function is
  evaluable is a property of the function (K1a); it must handle everything it can (the user's rule).
- **`comptime e` and `comptime for` (K3, K3a, survey2 item 8, the user's decision 2026-10-27: "comptime is a good word.
  Its good for speed guarantees in certain loops too"; built 2026-10-31).** A keyword at the use site only: `comptime e`
  takes the whole expression after it, is computed while compiling and is constant data; what the evaluator cannot
  compute is an error at it. `comptime for x in e` (a range or an array of integers up to 64 bits, Bool or Char) is
  unrolled, each copy's `x` a constant, so it decides `if`s, asserts and lengths (G35, T7c); at most 4096 copies.
- **Constant contexts:** immutable globals are baked as data, references and arrays included (K2, K2b); an assert it
  can decide is checked while compiling (S18c); a condition the build decides (B9c, S8b); fixed locals (S8c).
- **Decided asserts (S18c, 2026-10-27, mine).** A true one loses its run-time check; a false (or aborting) one is a
  compile error only where every run of its body reaches it; in a branch the build does not decide, an arm, a clause,
  deferred code or after something that may leave, it stays a run-time check. The message is rendered as the run time
  would. One an instance decides is said at the program's outermost call of the instance's chain, with a note.
- **Tests the evaluator runs** sit beside run-time tests for every language change (the checklist above).
- **Refusals and agreements.** Refused: mutable-global reads, global writes, externs (but known libm, X8), process
  endings, undefined behaviour, destructor-bearing values outside a global's own frame (K2c), anything past the step and
  256MB budgets; tasks run in sequence at the join (allowed). Every disagreement with the run time found is a bug fixed
  in the evaluator.
- **`interpret` runs programs as built, and `test -interpret` their tests (B3e, M8; compared in the suite
  2026-11-07).** Placed by the scope pass, scopes reclaimed as they close, destructors run where holders let go,
  libraries dlopened; tasks run one after another at their join. In the suite every test file and the checks' run cases
  (`interp@FILE`) are compared with the built runs (compiler/tools/evaldiff.olang); a difference not in its `Expected`
  list or a test not in its `Skipped` list fails the suite. Listed limits: std/chan's waits for a task, std/net's
  getaddrinfo, cases measuring their own process's memory, an export fn handed to C.
- **`embed PATH` (E38, the user's decision 2026-10-18; built 2026-10-25).** A file's bytes read while compiling: a
  read-only `Array<U8>&` of constant data; text is `String(embed "f")`. PATH is a literal or an expression reading no
  local, resolved like a relative import, kept inside std or a remote repository. A changed file rebuilds its module.
  Every file is an LLVM constant, whatever its size.

### std

- **Text is plain `String` with methods, no wrapper type (`std/prelude/text.olang`).** A literal, a slice and every
  rendering already are one. `Eq`, `Find` (fails on a miss), `Split`, `Trim`, `Replace`, `ParseInt(base)`,
  `ParseFloat`, `PadStart`, `Lines`, `<` by bytes. A String never changes (T13a): text being written is an
  `Array<Char>` or a StringBuilder.
- **Math is the numbers' methods (M19d, 2026-10-18, the user's decision: "Yes let's do this. I want an integer power as
  well", "Also abs for integers"; std/math removed).** Every C math function is a method of every float, written once as
  a default over `Float` (`x.Sqrt()`, `y.Atan2(x)`, `x.Pow(y)`), X8's libm calls so the evaluator computes them.
  `Abs`, `Min`, `Max`, `Clamp` over `Number`. Integers: `x.Pow(n U32)` (wrapping), `Sqrt()` (the user's name; signed
  fails with `NumberError.Negative`). Constants `Pi`, `Euler`, `Inf`, `NaN` are the prelude's. **`x.Mod(n)`,
  `x.DivFloor(n)`, `x.DivCeil(n)` (QBP 2, the user's yes, 2026-10-27)** on every integer; `%` stays truncated.
- **The prelude's collections are Vec, Map and StringBuilder; List is `std/list` (M19d, QZ2, the user's decision
  2026-10-17, built 2026-10-26).** The prelude holds the built-in types' methods, the protocol traits and errors,
  `Vec<T>`, `Map<K, V>` (`Get` fails on a miss, `Take`, `Update`, walks by insertion of slot) and `StringBuilder`. Every
  other container is std: `list.List<T>` (chunked, a handle), `pair.Pair` (the user's call: "Pair goes in Std not
  prelude"), set, deque, heap. Iterators and arrays have `Some Every Count Fold Map Filter ToVec` (`Some`/`Every` the
  user's call). `tools/list_vec.olang` migrates.
- **Vec, Map, Set, Deque, Heap and StringBuilder are values (QCE, the user's "Handles DECIDED 2026-11-01"; built
  2026-11-01).** Each holds its storage by value: a copy is a collection of its own, shallow at every `&`; sharing is
  written `&`. List stays a handle. In place: `v.Ref(i)`, `v.RefMut(i)`, `try m.Ref(k)`; a store or `mut` call through
  `x[i]` is made in place through `RefMut` (E31b). `Vec<String>.Join` beside the `&` forms. `tools/handles_migrate.olang`
  is not in `olang fix` (not idempotent).
- **`Vec<T>` is the default growable array (M19d, round 1 of `docs/memory.md`, 2026-10-17; the user's QAB).** Growth
  doubles (8 first) via the prelude-only `a.grown(n)` and retires the old buffer (it stays until the scope closes, so
  a stale view reads old elements, never freed memory). `View()`/`ViewMut()` give the elements as an array. `for x in
  v` walks by `At` and `Len` (S9d). **M19g**: using a view or Ref after the same Vec may have grown is a compile-time
  error where the compiler sees the same Vec on both sides. Array and Vec stay two types (QCV, the user's "Yeah,
  okay, keep them" 2026-11-06).
- **`Columns<T>`, a structure of arrays (QCS 3, the user's decision 2026-11-06 "Do the columns solution").** Built
  2026-11-07; see the Types entry.
- **Printing (M19f, 2026-10-17, the user's decision):** one pathway, `std/io`: `io.Print`, `io.Println(t = "")`,
  `io.PrintErr`, `io.PrintErrln` fail with `io.Error` and are written with `try`; no std function ends the program on
  its own. `io.Show<T>(v T, at Place = Place.Here) T` (QBP 4) writes `FILE:LINE:COLUMN: $v` to the standard error and
  gives `v` back. `io.Writer` buffers (errors at `Flush`); `io.Lines` reads lines.
- **Libraries:** `std/os` (files, Exec without a shell, Start/Process, RunOnStack, OnCrash, MkTemp, RemoveAll),
  `std/json` (immutable recursive enum tree, exact numbers), `std/http` (over curl), `std/csv` (strict), `std/stats`,
  `std/rand`, `std/time`, `std/filepath`, `std/cancel`, `std/chan`, `std/ffi` (libffi).
- **std breadth (docs/survey.md items 7-8, the user: "Yes all of that", 2026-10-24; names mine, the user's naming
  rule).** `std/sync` (`Mutex<T>` reached only in `m.With(fn(v mut T&) { })`, `RWLock`, `Once`), `std/time`
  (`Duration`, `Sleep`, RFC 3339 `Date`), `std/net` (blocking TCP and UDP, IPv4/IPv6, destructors close descriptors),
  `std/set`, `std/deque`, `std/heap`, prelude iterator adapters (`Take Skip Enumerate Zip Chain Sum Min Max MinBy
  MaxBy`), `std/utf8`, `std/base64`, `std/hex`, `std/sha256`, `std/crc32`, `std/flags`, `std/regex` (RE2's syntax,
  linear time).
- **`std/bitset` and `std/order` (survey2 items 3-4, the user 2026-10-26).** `bitset.BitSet<T>` holds an enum's cases
  in one `U64` (`x in s`, `Add`/`Remove`, `Len`, `| & - ^`, `for c in s`, `$` as its literal). `order.ByFields<T>(a,
  b)` is the `less` an array's or Vec's `Sort` takes: a struct by its visible fields in order, an enum by case then
  fields.
- **The second survey's walks (M19d, docs/survey2.md 1.5, 2026-10-26; round 3 QBP 5, the user: "build them any way you
  want", built 2026-10-31).** Iterator defaults `TakeWhile SkipWhile StepBy FlatMap Partition Scan GroupBy ChunkBy
  Dedup Unzip Product Last Nth`; `Reversed()` on At+Len types, arrays and text; arrays' `Windows(size)`, `LowerBound`,
  `BinarySearch`, `Cycle`. Each fails with what its iterator and callbacks fail with and has B7a examples.
- **`time.Virtual` and `chan.Select` (survey2 items 10 and 12, the user's decisions 2026-10-27; built 2026-10-31).**
  `time.Virtual(fn() { ... })` runs its body on a virtual clock (test builds only; `Sleep` moves it on at once).
  `chan.Ready.Select(a, b[, c, d])` takes the first ready of two to four cases (receive, `SendOf(c, v)`, a timer) by
  polling. Language rules with it: **G9e** (a parameter left off binds its variable to its default's type) and
  **S13g** (a case carrying a value of an enum of no cases needs no clause).
- **`a.Chunks(size)` (M19d, P8b, 2026-10-17).** Every array cut into consecutive writable slices of at most `size` (a
  checked `ChunkSize`), held in an array living where the receiver does, so `join { for part in a.Chunks(4) { spawn
  work(part) } }` cannot race. Arrays only; a Vec uses `v.ViewMut().Chunks(n)`.
- **`extern fn` and C interop (X1-X16; v2 the user's design 2026-10-24).** Across the boundary: Bool, numeric
  primitives, arrays of them, **extern types** (`extern type Db`, held as `Db&`/`Db?&`, X10), plain-data structs by
  reference and by value (compiler/cabi.olang, System V and AAPCS64, X11). `link "name"` only on an extern block or a C
  import (X9). **Callbacks are `export fn`s only** (X13). `build -library` (X14) makes `libNAME.so` and `NAME.h`. `t.ToC()`
  and `String.FromC(p, max)` (X15). `olang bindgen HEADER.h` (X16). No extern variables; the X1a hole (a wrong
  prototype) stands. C math functions with exact prototypes are evaluated while compiling (X8).
- **std API details.** `Vec`/`List`: `Push PushAll Pop First Last Clear Truncate Insert RemoveAt SwapRemove IndexOf
  Remove Reverse Sort Join ToArray`, `v[i]` unchecked, `try v.Get(i)` checked. `Map`: `Put Get Has Remove Update Keys
  Values Clear`, a key needs `Hash` and `==`. Text: `Split` borrows the receiver, `ParseInt(0)` reads olang literal
  syntax, `x.Fixed(n)`, `n.Format(base)`. `io.Writer` never fails on Write - `Flush` fails with the first refusal.
  `Array.Sort` is a stable merge.
- **Names in std are mine unless marked**; the user's: `Map` (not Dict), `Mul`, `extends`.

### Codegen and runtime

- **The runtime is `std/runtime/*.ll`, compiled once per configuration and linked once (B3, X7).** Inline bodies go to
  every module `available_externally`.
- **Representation choices**: a function value is a code/environment pair crossing calls as two words; aggregates over
  128 bytes go through memory; one `ret` per function; enum payloads are whole words; integer `$` without snprintf.
- **Cold paths, inferred (survey2 item 9, the user's decision 2026-10-27, "ye do the cold paths work the way you
  want"; built 2026-10-31).** No syntax. What ends the program or a test calls `cold noreturn` runtime functions; a
  call's error edge carries `!prof` weights (LLVM's "unlikely").
- **No per-operation run-time checks (the user's rule).** Checks are per construction (slice bounds, array length) or
  opt-in by a named call that fails (`try a.Get(i)`, `try x.Narrow<I32>()`, `std/arith`).
- **Benchmarks against C are in `bench/`** (`bench/run.olang`, not in verify): plain loops and allocation at or beyond C.
- **Fuzzers:** `fuzz/` (differential: baked, decided, run - `make fuzz`) and the scope fuzzer (`make scopefuzz`).
- **Runtime facts.** Runtime thread-locals are `initialexec`; every function carries the target's CPU and features and
  `null_pointer_is_valid`; LLVM 18's BF16/F16 bugs are worked around (T4, E33, B2c, B12c). The arena under `-sanitize`
  poisons and protects closed chunks.
- **Optimizations from the survey (docs/optsurvey.md; built 2026-10-31; none changes meaning).** The arena's bump path
  inlined (1); a body calling `grown` is cold so `Push` inlines (3); generator `.walk` forms always inline (4); integer
  `Sqrt` without division (12); every function `nounwind`, baked mutable globals (15); text locals copied from literals
  on the stack (9); `@__olang_empty_array` (14); `!range` on enum tags (13); `Take`/`Skip` folded by counted loops
  (8); filtered comprehensions without a copy (7); float `Pow` for small exponents (16, QBV, the user). Not built: 10
  (enum layout), 6 (constant calls in bodies), 11 (Filter/Map fusion); 2 and 5 waited for the scoping rework.
- **Testing.** `make verify` runs the corpus (`tests/shared.olang`, `tests/worker.olang`, `tests/runner.olang`), std's
  tests, `checks/` (must-fail cases and whole-build scenarios) and the port's diffs; `make race`, `make scopesan`,
  `make fuzz`, `make scopefuzz` stand apart. Old tests are kept (the user's rule). **The suite runs side by side
  (2026-10-24)**: every test file a make target (`test@FILE`); `make quick` is the edit-test loop; `make verify` (clean,
  `boot`, `suite`) stays the gate.

### The C compiler and the port

- **The C compiler, stage 0, is removed (2026-10-23; the user's decision: remove `bootstrap/` once the port passes
  everything).** It was `bootstrap/*.c` (the user's call, 2026-10-10), built to `build/out`; its last commit is tagged
  `stage0-final` (also a branch), and `git checkout stage0-final -- bootstrap` brings it back. What replaced it as the
  oracle is `compiler/goldens/` (what it said, captured once) and, for building from nothing, the seed. The compiler is
  `build/olang`, `OLANG ?= build/olang`. The generated seed (`seed/`, LLVM IR the olang compiler writes of itself for baseline
  x86-64, `make seed`) rebuilds the compiler from nothing in one run, `make bootstrap`, with clang alone (the user,
  2026-10-18; built 2026-10-22, compiler/DESIGN.md section 5). The refactor was modest: no splitting files for size (the user).
  A construct the checker does not check yet stops a build, as one lowering or emission does not handle does ("it does
  not check ... yet", 2026-10-26: a checker gap used to be left out of the program silently - a lost write).
- **The port is a redesign (the user's rule):** a hand-written scanner, recursive descent with Pratt expressions, a
  demand-driven checker over an AST of enums, §8 as its own pass, MIR, one evaluator for comptime and `interpret`
  (`compiler/DESIGN.md`). Acceptance is the test suite plus per-stage diffs against stage 0 (tokdiff, astdiff,
  namesdiff, layoutdiff, diaggold) and stage 1 rebuilding itself. Merged: M1 scanner, M2 diagnostics, M3 parser, M4
  loading and names, M5a types and the typed contract, M7's MIR contract, M10's driver (`compiler/build.olang`,
  `target.olang`, `olang.olang` - the word command line over the whole pipeline, the runtime filled in by
  `runtime.olang`; `make drvdiff`; lowering by the scope pass's plans, its errors reported, the port builds itself at
  `-debug`, one object per module (stage 1 == stage 2 == stage 3, 1.6 GB; a clean self-build 46 s, an edit
  recompiling only its module's object) and passes compiler/'s and std's tests, HISTORY.md "Port M10: the pipeline
  behind the driver", "Port M6 round 5" and "Port M10: per-module objects under the scope pass's placement"); the compiler under test is `OLANG ?= build/olang`. In progress: M5b/M5c, `compiler/check.olang` (the checker
  elaborating the resolved AST into typed core; HISTORY.md "Port M5b/M5c"); M7, `compiler/lower.olang` (the typed core
  lowered to MIR with the scope pass's placement - the stand-in, everything in the program's scope, where a body has no
  plan - helpers, adapters and initializations made as MIR functions; `make
  lowerdump` verifies every function of the corpus, std, compiler and the checks' run cases - all clean but what check
  leaves wrong; a try's leftovers leave the body (R13) but for a loop's own Exhausted try, which passes them to the try around it, a T29d literal's error edge is never taken, no releases or
  holds since own is being removed; HISTORY.md "Port M7: lowering"); M8, evaluation in the pipeline (`compiler/interp.olang`
  over `eval.olang`: the build's conditions and asserts decided by evaluation, fixed locals included (S8c), `olang
  interpret` running main placed by the scope pass, each scope reclaimed and its destructors run as it closes, immutable globals baked into emitted data by the driver too (K2, K2c), what two baked globals reach written once per module (K2b), a local condition decided reading no build constant an error (S8a), a top-level condition that does not decide an error (B9c), T29d's literals and D13c's zero values decided, a global that aborts an error (K2), a stale Vec view stopping evaluation (M19g), tasks run in sequence at the join under interpret too (B3e, decided: interp's tasks.olang pins it), array lengths computed by calls (QP1), the
  error trace (S18d); `make evaldiff`; HISTORY.md "Port M8: evaluation in the pipeline"). M6, `compiler/scope.olang` (section 8 over the typed core, filling each body's
  plan, which lowering reads; scopediff measured it against stage 0's goldens (deleted 2026-11-02) - round 7: every program stage 0
  accepts is scope clean (307 of 307), 275 of 280 refused cases give stage 0's first error, 1 still gets none (s5mapgetreturn, 0 since 2026-10-23: it runs; kept on
  purpose), call results and constructors' fields carry instance records (O13c, O23a); the port built `-debug
  -sanitize` runs the compiler's, std's and the corpus's tests with no use after a scope closed; HISTORY.md "Port M6"). M9, `compiler/emit.olang` (MIR written as LLVM IR, one object per module - each module's, the root's
  instances', the root's with main or the harness - its text depending only on what it holds, so an edit recompiles
  only what changed (at -O3 the instances in the root's, as stage 0's); the error trace S18d; TBAA, DWARF and the runtime's
  declarations read from its text (round 4); aggregates over 128 bytes through memory, -race and -sanitize, DWARF for
  aggregates and arrays (round 5); every module's bodies but the root's emitted, so programs built in one directory
  share its object, objects over 2 MB cut into parts compiled side by side (-debug and ThinLTO builds), single-use
  stack slots folded, the test harness as tables (round 6: the port-run verify 40.7 -> 28.4 min); instances and helpers
  whose code is the same written once, a generic struct's instances named by layout so they meet, the ThinLTO import
  limit 70, compiles started heaviest first, MIR verified only in test and -debug builds (round 7, compile speed: the
  -O3 self-build 238 -> 176 s of CPU, `OLANG_TIMES` reports the phases); a module whose inputs did not change neither
  lowered nor emitted again, its IR reused from `build/rec` (B3i, `OLANG_CHECKREUSE` compares with a fresh emission), a
  test named by its name and the instances and a test build's tests in parts of their own, what clang says of the target
  kept (B12b), MIR verified only in test builds (round 8: a leaf edit of the compiler 5.0 -> 3.5 s and 1.16 GB -> 614 MB,
  a -debug leaf edit 5.1 -> 2.4 s, an edit to a test of tests/shared.olang 10.5 -> 4.1 s); a failed check's `FILE:LINE:` text in a `.loc` object of its
  own per home, compiled without LTO (B3l), the root's instances grouped by the first module reaching them with
  same-code functions merged across groups by tail-calling wrappers, parts of 1 MB (-O3) and 512 KB (-quick, -debug),
  the views pass skipped where no body takes a Vec's view (round 9: a line added in a shared.olang test 14.7 -> 4.0 s,
  an edit making a new instance 89.8 -> 29.9 s of CPU, a -quick mid-module edit 15.6 -> 2.7 s); `make emitdiff`; HISTORY.md
  "Port M9"). M19g is `compiler/views.olang`, a pass of its own after check
  (summaries over the call graph's components, then a dataflow walk of each body; every M19g case as stage 0 gives
  it - HISTORY.md "Port M5b/M5c", fourth round).
  M12, the suite through stage 1 (`build/stage1`, the port built by stage 0, as `$OLANG`): the test files pass;
  checks/checks.olang is the open part - after the fourth round 19 of its 1,069 cases and 4 of its 56 scenarios, all the
  evaluator's (HISTORY.md "Port M12", four rounds, the third with what replacing the stage-0 comparisons by stored
  outputs takes; the fourth reads stage 0's flow - a local named right after a written "try", a later module's
  function - as stage 0 does, so nothing it refuses is accepted (both reverted once stage 0 went); the fifth, parity before bootstrap/ goes: of the
  repository's 1,422 files the port builds every one stage 0 builds and refuses every one it refuses - a later module's
  callee read by its body where a local's landing is decided (O18c), interpret running the deferred code of the blocks a
  stop leaves and aborting on a failed check as stage 0 does (B3e), a dropped branch's syntax error hiding nothing (B4,
  D10a)). The scenarios that grepped stage 0's IR state the same facts in either compiler's spelling, as alternatives
  of one expression (`irHas`, `gsym` - decided by me, never loosened); the port now orders globals (B5a), bakes them
  (K2), enforces M6/M6a/M6b across modules, and calls X8's exact math functions as intrinsics. **The stage-0
  comparisons read stored goldens** (compiler/goldens/, 2026-10-22, HISTORY.md "Port M12: the stage-0 comparisons
  stored"): drvdiff, tokdiff, astdiff, modgraph, emitdiff and evaldiff hold the port to what stage 0 gave, captured once
  by a make target each (drvgold, tokgold, astgold, modgold, rungold; captured from the port since stage 0 went) - tokens
  and trees as a hash per file, a file edited since reported as stale until captured again - and a checks run
  case is held to its stored output too. **Stage 0 was removed in one commit (2026-10-23, HISTORY.md "Stage 0
  removed")**: compiler/msgs.olang is the diagnostics table's source, and `make verify` runs everything with the port. `make bootstrap` compares
  the second and third builds, so a seed older than the code generator still bootstraps. With the port built by itself
  (2026-10-23) every test file passes and checks/checks.olang fails only known cases (25, 20 the evaluator's) and the 6 known
  scenarios of stage 1's third round; its
  crash on every condition the build decides was check.olang's own out-of-range index (`c.fr()` with no frame, E16e),
  which the two compilers' arenas laid out differently - not a miscompile (HISTORY.md, "Port M12: the self-built
  compiler's crash").
- **Numeric traits: `Float`, `Integer`, `Number` (T35c, T31, 2026-10-17, the user's decision).** (Closed traits since
  2026-10-24, T31a - the entry "Traits: extends, closed, intersections" below; the private-method sealing is gone.)
  Sealed prelude traits
  (`std/prelude/number.olang`, one private method each) satisfied by the four floats, the eight integers, and all twelve;
  `Bool` none. **A declared type never satisfies one, `extends` included (mine)**: T31 now says a private method is
  supplied only for a type its own module declares (or a built-in one), so `Char` and `type Dist extends F64` inherit
  the method and satisfy nothing - that is what lets a body pick by `match T` over the built-ins, which would have no
  case for them. Stage 0 and the port both enforce it; the error is `G19, T31` "... is sealed". Used by the numbers'
  methods (`<T Float>`, `<T Number>`, `<T Integer>`, M19d), std/stats (`<T Number>`).
- **A literal reaching a constrained variable takes a type its constraint allows (G9a, G19, T35c, 2026-10-18, the
  user: "math.Sqrt(4) should not be an error").** A variable only numeric literals reach is bound to the widest of their
  types unless that fails its constraint; then to the first of `F64, I64, U64, F32, I32, U32, F16, BF16, I16, U16, I8,
  U8` (my order: widest first, a float before an integer of its width) that meets it and that every literal adapts to
  (T6) - `root(4)` with `fn root<T Float>(x T) T` is `root` at `F64`; none fitting, G19's error stays (`whole(2.5)`). A typed argument binds its
  own type: `root(n)` with `n I64` stays an error (no implicit integer-to-float). Both compilers; the evaluator
  sees the bound type.
- **Traits: extends, closed, intersections (T30a, T31a, G19, T35c, 2026-10-24, the user's decisions).** `type Dwelling
  trait extends Shape, House { ... }` has its methods and every extended trait's, so satisfying it is satisfying each.
  `type Float trait for F16, BF16, F32, F64 { }` is **closed**: met by the very types it lists (a declared type over
  one, or extending one, is another type), each of which must have the trait's methods (checked at the declaration),
  and by nothing else; a closed trait listed takes its types in (`type Number trait for Integer, Float { }`), an open
  one is an error there. `<T Shape House>` is an intersection, met by a type satisfying both. The prelude's numeric
  traits are closed now, their private-method sealing removed; a `match T` over a closed trait's types needs no
  `case _` (G15 already checks per instance). Decided (mine): the keywords go after `trait`, `extends` before `for`;
  an intersection is held as a tuple of traits, each checked; a method a binding lacks from an extended trait is
  named with that trait (`Rooms (House's)`); no inline type lists (additive later, decided).
- **Contracts (D17-D17g; the user's design 2026-10-24, revised by the user 2026-10-25; details mine).** One bracketed
  block right after the parameter list: `fn pick(x I32, y I32) [y > x] I32 ? ArgumentError { }`, `fn between(lo I64,
  hi I64, x I64) [hi >= lo, x >= lo and x <= hi] Bool`,
  `type Percent struct(v I64) [v >= 0 and v <= 100] { v }`. A condition is any `Bool` expression over the parameters and
  what a body reads at its top level - calls, fallible calls, lambdas included. **Checked on entry in every build**, in
  order: a false one fails the call with the prelude's `ArgumentError.Invalid`, carrying the function and the condition
  as its payload (`ArgumentError.Invalid("pick: y > x")` in `$e`, `!`'s message and `main`'s, in every build - the
  thread-local slot of 2026-10-25 went with errors carrying data, 2026-11-07), the trace naming it too; an error from a call inside a condition leaves as itself. So
  `ArgumentError` is in the function's set: a bare `?` infers it, a function with no `?` has it, a written set must list
  it (an error naming it otherwise); every call needs `try`/`catch`/`!`. Decided while compiling where the evaluator can:
  at a call whose arguments are all values it computes a false condition is an error at the call - unless a `catch`
  there takes its `ArgumentError`, when it fails at run time as written (a test of the failure path; 2026-10-25, the
  lang25 review, reversing "whatever handles it"); where the evaluator runs a call (a baked global, a decided assert) the conditions are checked as at run time.
  Scope relations are no condition: they are inferred obligations (O10b; `outlives` items removed 2026-11-02, QCB). A
  function with value conditions is a value, checked on entry through it. A trait method's contract is checked before a call through an
  `any` dispatches, then the implementation checks its own. **Removed 2026-10-25**: the position after the signature,
  guarantees, named results, `return x` entry values, `for`/`if`/`fits` items, `checked f(x)`. D17g stays: a
  conversion of a value the evaluator computes that does not fit (`U8(300)`) is a compile error naming
  `x.Narrow<T>()`. Decided (mine): a requirement body per condition, its error set inferred; a trait's conditions held
  caller-side before dispatch; the compile-time decision reports the first false condition per call; a false
  requirement's trace line is the condition's (`FILE:LINE: f: cond`), `!`'s own line `ArgumentError.Invalid`.
  `tools/contracts_migrate.olang` moves old blocks and lists the dropped items. Found on the way (2026-10-24): the
  port's resolver accepted two functions of one name in a module (D2) - an error now.
- **std names never repeat their module's (the user's naming rule, 2026-10-24: "we don't integrate the knowledge that
  modules have namespaces"; refined: "chan.Chan can stay no?").** `io.IoError` is `io.Error`, and likewise `os.Error`,
  `json.Error`, `csv.Error`, `stats.Error`, `rand.Error`, `http.Error`, `chan.Error`, `ffi.Error` and
  `filepath.Error` (was `PathError`); `net`, `base64`, `hex`, `deque`, `heap`, `flags`, `time`, `utf8` already were. A module named for its main
  type keeps that type's name (`chan.Chan`, `json.Json`, `set.Set`, `rand.Rand`, as Go's `list.List`); a module with
  several error types names the others by subject (`http.HeaderError`, `regex.SyntaxError`). The
  prelude is the exception (its names are bare everywhere: `ListError`, `MapError`, `TextError`, `ArgumentError`,
  `CaseError`) and must never declare a plain `Error` - a rule in std/README.md. An error escaping `main` now prints
  its type qualified as source writes it outside the module (`unhandled error: io.Error.Failed`, B5; see the next entry). `tools/stutter_rename.olang`
  renames the old names (idempotent; a qualified use anywhere, the bare name only in the module's own std file) and
  `olang fix` runs it. Migrated: std, compiler, tests, checks, fuzz, bench, docs, SPEC; goldens recaptured (diag.txt
  by `make diaggold`, tokens/ast/layout by their targets).
- **`olang fix FILE|DIR...` (B17, B1, 2026-10-24, the user: "runs every idempotent migration tool in order; no version
  marker").** A mode of the driver (`compiler/fix.olang`) that runs the migration tools of `tools/` over the files in
  the order the changes were made, so a file from any earlier time reads in today's language in one command; `-check`
  lists what would change and writes nothing (the files are put back as they were), the status 1 where any would, 2 where
  a file cannot be read or a tool built or run. **Decisions (mine).** (1) The tools are *built into the cache* (`fix/KEY` in
  `OLANG_CACHE`, KEY the compiler's and the tools' paths - 2026-10-27: one shared `fix/` let a checkout run tools another
  compiler built from other sources) by the running compiler on first use - and again when the compiler that built a
  tool changed or its sources (tools/, compiler/, std/) are newer - rather than
  linked in: they are standalone programs with their own `main`, tests and the module `srcmask` they share, and several
  call the compiler themselves; a program is built into a temporary directory and renamed into place, so runs
  sharing the cache never run one half written (bulk review 8); `olang format` is a linked module only because the formatter is a library of the compiler
  too. The tools sit beside the compiler's `std/` (`../tools`, `OLANG_TOOLS` names another place). (2) **Two phases:** the
  tools that read the text alone first, in the order of introduction, then those driven by the compiler's diagnostics
  (`perm_mut`, `int_literal_i64`, `errors_migrate`, `null_migrate`) - an old file does not parse, so the compiler has
  nothing to say about it until the text tools have run. (3) **Not every tool is idempotent, which the decision assumed:**
  `io_print`/`io_try`/`io_fix` (they strip a `try ... catch` and the `!` forms from code of today) and `precedence_migrate`
  (it reads every `a & b == c` as written for the old precedence - nine comparisons of tests/shared.olang) are left out
  of the table and said so in tools/README.md and SPEC B17; every other text tool was run over the whole repository (the driven
  ones over a sample) and changed nothing but the files written in the old form on purpose. (4) **Found on the way:** `errors_migrate` ran the
  compiler as `olang -t FILE` - a flag B1 removed - and so did nothing since; it runs `olang test`. `bare_typevars` found
  std's type names from where its binary sits; it takes `--std DIR` now (the cache is not the repository). A tool's output is shown
  (to the standard error) when it left something for a person (its `by hand:` lines, a `for a person:` block) or failed,
  and then fix says to look at them and ends with status 1, `-check` or not (2026-10-25; the test of "more than one line"
  had read `Lines().Len()`, which an iterator has none of, and so never showed anything). A check
  scenario (`fix`) fixes an old program (type variables, an error set with `+`, `io.IoError`) and runs it.
- **Error names print qualified (B5, S16, S18d, E35, 2026-10-24, the coordinator's follow-up to the naming pass).** With
  every module's error named `Error`, a bare name said nothing: wherever the compiler or runtime prints an error's name -
  `unhandled error:` from `main`, a failed test's `FAIL - NAME: T.W`, the error trace, `!`'s FILE:LINE message, built
  or interpreted - it is written as source writes it outside its module, the module's alias (its identity's base name)
  before it: `io.Error.Failed`, `http.HeaderError.Missing`. **Decided (mine):** the prelude's types stay bare
  (`ListError.EMPTY`), and so do the root program's own (`Bad.Word` for a `Bad` in the file being run - from outside it
  would be `main.Bad`, which no program writes for its own); the rule is one function, `lower.ErrQualifier`, used by `!`'s
  names, `main`'s message (emit) and the interpreter. Before, `!` qualified relative to the module the code is in (a
  bang inside std/io said `Error.X`). The error a catch clause names renders the same way (`$e`, R11b); the rule is
  `load.ErrQualifier` (moved from lower, 2026-10-25).
- **C headers and C files are imported as modules (X17-X22, X9, X3a, QBE, 2026-10-26, the user's design; details
  mine).** `import z "zlib.h" link "z"` gives a module of what clang reads in the header and everything it includes,
  translated while compiling (bindgen's path) and kept in `OLANG_CACHE/cimport` under a key of the import, clang, the
  compiler and the flags, made again when a file it read changes; a header beside the importer is that file, any other
  the system's; libc's headers need no `link`. `import fast "fast.c"` compiles the file's own C as IR with the program's
  target attributes, so the LTO link inlines C into olang and olang into C (measured: no call left); a header's static
  inline functions are reached through wrappers compiled the same way; `interpret` compiles it into a shared library and
  dlopens it. `extern link "golib" { fn ... type Handle }` declares a header-less library in one place, `extern { }`
  what is already linked (the runtime's `__olang_` functions); the standalone `link` declaration is gone
  (tools/link_migrate.olang, in `olang fix`). Variadic C calls pass C's default promotions, the format unchecked (X1a's
  hole, stated); olang functions are never variadic. **Translation (mine):** numbers' typedefs are the numbers; a plain
  record a plain struct, any other complete one opaque words of its exact size and alignment (unions, bitfields); a
  transparent union parameter its first member; integer macros constants (I32 where they fit), float and text macros
  too, an expression macro a generic function over its arguments; everything left out is listed with why, and naming one
  says it (X19's `the C import has no olang form of 'stdin': a variable`); C's reserved names (`__x`, `_X`) are left out.
  **Pointers (X22, mine):** `void *` is the prelude's `CVoid?&`, taking any array, a plain struct in place, an extern
  handle or null; a struct pointer also takes an array of numbers (C's cast of a buffer - socket addresses, timespecs)
  or a pointer C gave. **One C import per library:** a `.c` import exposes everything its file includes, and two
  headers declaring one C struct give two olang types (`sysstat.timespec`, `ctime.timespec`). **Migration:** std and
  compiler/ import the system headers they call - 166 hand `extern fn` gone; chan/sync hold `pthread_mutex_t` and its
  kin at their exact size (X3a's upper-bound reservation is only for types no header declares). The wrapper tag comes
  from the import alone, so the compiler's build of itself stays a fixed point; the seed was regenerated. **Left:** a C
  extern variable (`stdin`, `errno`) and a cast macro (`SIG_IGN`) have no form (signal is hand-declared in session);
  named constants do not adapt like literals (`I16(cpoll.POLLIN)`); a struct by value under interpret is refused; a large
  header costs its check on every build (openssl/ssl.h: 940 KB of declarations, 3 s per build after a 6 s first
  translation; the prelude's math.h and string.h add ~0.05 s to a hello world).
- **std/linalg is gone (2026-10-26, the user: "No linalg in stdlib ... Tensors are part of oann and they declare
  everything themselves").** oann owns its tensors and kernels; std has no matrix type. The last linalg (Matrix views,
  Goto GEMM, batched products, epilogues, convolutions) is in git history, and the kernel-tuning work in progress is on
  branch `backup/wt-tensor`. Its tests and benchmarks went with it; the checks that tested the compiler through it
  (O8b's flat products, O26a across modules) were rewritten over a small local matrix.
- **Definite initialisation; arrays written once with no clear (D13d, D13e, D14d, E27, T7c, 2026-10-26, the user's
  QBA and QBJ; details mine).** Zero values stay (D13c). A local or constructor field declared with no value whose type
  has no zero value (a never-null reference, a constructor with an effect) must be assigned on every path before any
  read - judged structurally as D10a judges leaving (compiler/definit.olang): an `if` without `else` meets its failing
  condition, a loop never assigns (it may run no times), a try's clauses run from where it began, a capture is read where
  the lambda is made, deferred code where it is registered, a field at the constructor's end, a spawn target and a
  compound or element store assign nothing. The error names the read and, in a note, the path (no else, a loop, a branch,
  an arm, a clause, the declaration); for a constructor whose zero only the evaluator can refuse it stays D13c's error
  with a note at the read. Wherever every path assigns first, nothing at all is written for the declaration (a run-time
  array value and an owner keep their zero, which allocates nothing) - a Vec local assigned in branches makes no zero
  Vec. **Globals (D13e):** a global declared with no value is assigned by `NAME = expr` inside a top-level `if` below it
  (`Backend String` / `if TargetOs == "linux" { Backend = "epoll" } else { Backend = "kqueue" }`); the chosen branch's
  value is its initializer (B5a order, K2 baked), nothing written first; twice in one build, a missing branch for a type
  with no zero value (judged as written, nested ifs too), a condition reading the global, any other top-level assignment
  - each a compile error. **Arrays:** a comprehension never clears its storage; with no `if` over a range or an array
  of known length it allocates exactly its length and writes each element once, a known count giving a fixed length
  (T7c, no longer "not yet implemented"); `Array<T>(n)` declared and filled by the very next `for i in range n` (or
  `range 0, n`, same `n`) storing `a[i]` once at the body's top level, mentioning `a` nowhere else, never assigning `i`,
  with no break/continue/return, is not cleared (D14d) - every other shape keeps the clear. MIR: `Assign(L, Use(None))`
  marks a local set with nothing written. Measured: 1,000 `Array<F32>(262144)` filled by a loop on recycled memory 0.073
  -> 0.049 s; the same as a comprehension 0.90 -> 0.25 s; bench instruction counts unchanged elsewhere. Found on the
  way: the pre-scan did not take an `if` after a line ending in a bare `&` for a statement start, so a top-level `if`
  after `X Node&` (or `X Node?&`) was never decided (pre-existing).
- **The formal specification (`SPEC.md`) and the spec-first process.** `SPEC.md` is the normative, current-state-only
  reference manual for the language (rules numbered `<prefix><n>`, e.g. `T24`, `O13`; EBNF grammar) - no narrative, no
  history, and no mention of CLAUDE.md, Claude, or the design process anywhere in it. A language change is made
  spec-first: write or revise the relevant rule(s) in `SPEC.md`, then implement so the code conforms to what was just
  written, then record the *why* here (extending HISTORY.md too, if there's a longer story worth keeping).

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
3. **Compile-time evaluator** (`compiler/eval.olang`, K1): give it the same semantics - never leave it refusing or diverging
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
  closing bracket on its line. `+` is gone from error sets and catch items (`? io.Error, ParseError`, `catch A, B.X`). A
  function type's or a lambda's error set is one item or parenthesized (`fn(I64) ? (A, B)`) - always, so a `,` after
  it separates the list it stands in (mine). A parenthesized expression and a comprehension are one item, not lists:
  line breaks inside separate nothing (mine). `x, y I64` (D12b) is unchanged. `tools/syntax_migrate.olang` migrates.
- **`fn` is the function keyword (D7, the user's call).** Retired spellings (`func`, `while`, `&&`, `||`, `!`,
  `choice`, `+` on arrays, lowercase primitives) are simply unknown - their diagnostics were removed at the user's
  request.
- **Comments: `#` to the line's end, `## ... ##` a block (L4/L4a, the user's call).**
- **One-line bodies (S1b, the user's decision 2026-10-24).** `if x < 0: return 0`, `for x in xs: total += x`,
  `else: count++`: `:` and one simple statement on the colon's line - an assignment, a call or increment, `return`,
  `break`, `continue`, `error`, `unreachable`, `assert` or `spawn` (the last two mine). It is the block holding that
  statement; a declaration, an `if`, a loop, a `match`, a `join`, a `defer` or a block is an error naming the block
  form. The statement ends at its line's end or at an `else`/`catch` on its line; `else` may begin the next line, as
  `catch` does. Not for the forever `for` or a `do` loop. `:` inside brackets stays a slice's. The formatter keeps
  either form and spaces `: ` (and no longer writes `f() !`). **A lambda's body too (D16, the user's decision
  2026-10-24):** `xs.Count(fn(x): return x > 3)` - its statement also ends where the bracket around the lambda closes or
  at a `,` of its list, so a lambda that is a list item returns one value (L18c wraps one returning several, mine).
- **The command line is words (B1, the user's call 2026-10-17, reversing one-character flags).** Modes `build
  compile test interpret format explain help doc lsp mcp fix bindgen profile`; options `-output -debug -race -sanitize -target -define -update
  -check -quick -html -library -memory -fuzz -fuzztime`,
  each checked against the modes it applies to (one table, also `help`'s); old flags simply gone (`tools/cli_words.olang`).
- **`-quick` (B2g, the user's call 2026-10-24).** For build, compile, test and running a file: `-O2` without
  link-time optimization, objects apart (`.quick`); an error beside `-debug` or `-race`, which set their own levels.
  The default stays `-O3` + LTO (B2c).
- **`explain FILE NAME` (B11b, the user's call 2026-10-24).** Beside `explain RULE`: one top-level item of FILE as the
  compiler sees it, once the program checks - a function's whole signature, an inferred error set written out (marked
  `# its error set inferred`), its scope obligations as `[a outlives b]` lines (`return` the result scope), a generic's
  instances each with their own; a type's constructor, fields, own methods and the parameterless traits it meets; an
  enum's cases, an error type's words, a trait's methods; a global's type and its baked value (`$` of it, through the
  evaluator), else `# set at startup`. `Type.Method` names a method. `-target`, `-define` and `-update` apply.
  compiler/explain.olang.
- **Doc comments (L4b) and `olang doc` (B14).** Go's rule, no new syntax: the `#` lines directly above a declaration,
  member or global are its documentation (a member or global with none takes its line's trailing comment; an aligned
  continuation of a trailing comment is no doc comment; a block comment never is); a module's is the comment lines its
  file begins with. Read from the text by the declaration's span (`compiler/doc.olang`) - scanner and parser unchanged.
  `olang doc FILE [NAME]` prints them with explain's signatures; `doc -html DIR [FILE...]` writes static HTML (all of
  std when no file is named). Exported items only in a listing (mine).
- **`olang lsp` (B15) and `olang mcp` (B16), 2026-10-24 (the user: "we need this, both for MCP and neovim
  integration").** LSP over stdio - diagnostics, hover, definition, symbols, completion, formatting; MCP over stdio -
  `check`, `explain`, `doc`, `format`, `test`. Each analysis runs in a forked process (mine): a compiler crash never
  ends the server and an analysis's memory goes with its process (the compiler reclaims nothing before a scope closes);
  the language server forks a worker once the open files have settled for 40 ms, checks the changed files and the open
  files importing them, publishes the checker's diagnostics before section 8's, then answers requests from that
  analysis. Not incremental per module - the checker is whole-program; measured 70-100 ms from an edit to diagnostics
  on a small program, 0.7-1.4 s on one of the compiler's modules. `compiler/session.olang` holds what both share; the
  Neovim plugin and editor notes are `editors/`.
- **A file is built and run (B3g):** `olang [options] f.olang args...` builds as `build` does, then runs in the
  compiler's place (its status, `#!/usr/bin/env olang` scripts); `-output PATH` names build's/compile's output (B3h).
- **`olang format [-check]` (B13)** rewrites files in one gofmt-style layout, no options; an olang program
  (`compiler/fmt.olang`, on the port's scanner and parser) linked into the compiler since stage 0 went - no cache;
  only whitespace changes. A method's receiver keeps its space before its own type list too (`fn (p T&) Read<Q>(`,
  2026-10-27: it was written `fn(p`, std/list's seven such methods included).
- **The bitwise operators bind tighter than the comparisons (E5, mine 2026-10-24, found by the std breadth batch).**
  `x & 1 == 0` is `(x & 1) == 0` - Go's and Rust's order, C's mistake not copied: `| ^ &` sit between the comparisons and
  the shifts. `tools/precedence_migrate.olang` parenthesizes every comparison under `& | ^` at the old precedence (none
  in the repository - `&`/`|` never took Bools, so no valid code mixed them) and `--verify` shows each file reads alike.
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
  operands (S3a, the user's call). A bare `{ }` is a scope (S1a). **A call statement giving a value that does nothing
  else is an error (2026-10-26, the user's yes to docs/survey2.md's nodiscard replacement)** - read off the bodies it
  reaches (`settleIdle`, a least fixed point): a store to a global or through a reference, an extern but C's math, a
  function value or an `any`, storage made, a destructor value, spawn/join, assert or an end count as doing something.
  Mine: a call giving nothing, a fallible call and a generic's body are never judged.
- **Every local is read and every import used (D3b, M5a, 2026-10-26, the user: "extend this to unused variables
  too").** A read is any appearance but as what an assignment, compound assignment or increment changes (Go's rule); a
  name holding a place only (a loop's, a binding's, one of several results) is written `_` (`for _ in range n` now
  allowed). Exempt: parameters, constructor fields, catch names, destructor-typed locals, a name in a branch the build
  leaves out (by text). Decided (mine): D3b is said only of a program with no other error (one mistake, one error - an
  unread local is most often what the mistake left out); an import nothing is reached through is said at once, never of
  a C import or a re-exporting alias. `tools/unused_migrate.olang` (driven; `--bare` for must-fail files) migrated the
  repository and is `olang fix`'s last tool.
- **Assignment (S4, S4a, S4c, S4d).** Left to right: the target's place, then the value; a compound place is evaluated
  once. Assignment to a reference repoints, in every position (S4a). Parallel assignment `a, b = b, a` evaluates every
  value first; `a, b := 1, 2` and `x, y I32` declare several names (S4c/D12b, the user's call). An assigned value
  borrowing storage within the place takes its old value as a copy, decided by types (S4d) - in stage 0 too since
  2026-10-18 (it had asked the callee's body, `calleeMayKeepArg`).
- **Every path of a function with a result must return (D10a)** - structural, loops never count, `for { }` with no
  `break` of its own leaves, a leaving `join` counts, a `noreturn` call counts. `unreachable` is checked, never assumed
  (S16d), and behaves as a failed assert. `os.Exit(code)` for any status (B5b), process-wide, tests included.
- **`unreachable "why"` (S16d, mine 2026-10-24).** An optional message, any text expression, evaluated only where the
  statement is reached: `FILE:LINE: unreachable reached: why` (a plain one says `unreachable reached`; the old
  wording "reached unreachable code" changed with it, everywhere). Not a statement that leaves its function (no
  `return`, error or loop jump inside the message's lambdas), as an assert's message.
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
- **A top-level `assert cond[, message]` (S17a, docs/survey2.md 2.6, the user's "Yes" 2026-10-26; built 2026-10-27).** A
  declaration (at a module's top level or in a branch of a top-level `if` the build takes) decided while compiling and
  never run: true emits nothing; false, aborting, a stale view or **undecidable** (a mutable global, an extern, an
  error nothing handles, a budget) is a compile error - `this top-level assert is false, decided while compiling[:
  MSG]`, `... cannot be: WHY - assert it in a function or a test`. Decided (mine): condition and message checked as a
  global's initializer is, in the module's context (globals, build constants, functions, lambdas - `ast.Decl.Assert`,
  `check.topAssert`, `interp.decideTopAsserts`), every module's in every build reaching it; the false/aborts wordings
  are S18c's.
- **`Place.Here` (E40, D8a, docs/survey2.md 2.2, the user's "Yes do that" 2026-10-26; built 2026-10-27).** The prelude's
  `Place(File String&, Line I64, Column I64)` (std/prelude/place.olang), `$p` `FILE:LINE:COLUMN`; `Place.Here` is the
  place it is written, and in a parameter's default the place of the call leaving the argument off (`fn log(m String&,
  at Place = Place.Here)`) - no keyword, a compiler fact read through the type's name (the user's three-way rule,
  PRINCIPLES.md). Decided (mine): File as diagnostics write it; the call's place is its called name (a method's after
  the `.`), the outermost call's where a default's own call leaves one off; a generic's body gives one place for every
  instance; any other member through `Place` is an error naming `Place.Here`. Built as the constructor called on
  constant arguments (`check.placeHere`, `callDefault` setting the call's place), so the evaluator, `interpret`, named
  arguments and `default` need nothing new. **Found on the way**: D3a reserves prelude names, so the compiler's own
  `typed.Place` and `mir.Place` became `Lvalue` (free.olang's `Place` fields `PlaceId`).
- **`become f(x)` (S21, docs/survey2.md 2.3, the user's "Build it now" 2026-10-26; built 2026-10-27).** A guaranteed
  tail call, `become` a keyword: every scope closed, then the call made in the function's place - LLVM's `musttail` in
  a build (every mode: -debug, -race, -sanitize, test), a frame replaced in the evaluator (`Machine.tail`: the callee's
  frame pushed, moved into the caller's slot, the caller's storage closed), so ten million steps of mutual recursion
  run in one frame, built and interpreted. Its errors are the function's own, so no `try`. Decided (mine): only a call
  of a function or method declared with `fn` (no function value, constructor, extern, export fn, any, scope argument),
  only in one (never main, an export fn, a lambda, a generator, a test, a constructor or destructor); one signature -
  parameters (types, permissions, scopes, T22), result - and, once sets are final, one error set in one order (R6's
  codes); nothing passed through memory (over 128 bytes); not in deferred code, a message, a task clause or a join, nor
  with deferred code pending; section 8: no argument is storage of a closing scope - the callee's scope variables bind
  only the function's own and the program's, a temporary for it built in the result scope; no destructor-bearing value
  held (a local whose type may hold one, `any` included) or built in a block (the scope pass's `dtorBlock`). typed:
  `Return` of a `Call` with `Tail`; MIR: `Term.Tail` after `leave(0)`, its arguments held in frame temporaries.
- **`defer` is block-scoped (S19, the user's decision).** Last registered first, on every way out but the
  process-ending ones; deferred code runs before a join's wait and before the scope closes; it may not leave.
- **`errdefer` (S19e, the user's decision 2026-10-18; built 2026-10-25).** `errdefer STATEMENT` / `errdefer { }`: deferred
  code of its block run only when an error leaves the block outward - out of the function, to a clause outside it, a
  join's tasks failing; never on its end, `return`, `break`, `continue`, an error a clause inside takes, or what S19c
  lists. One list with `defer`, last registered first. **Decided (mine)**: a join block's errdefer code runs after its
  wait when its tasks fail - after its defers, the one place the order bends, since the failure is known only then (a
  failure of its own statements runs both before the wait, in order); one may not be pending around a `yield` (S20's
  rule over the one list - relaxable with defer's); no interpret cleanup (a stop is no error). Built in lowering: the
  block's kind (`typed.BlockKind.ErrDefer`), `lowering.runDefers` taking it only where `erroring` (raise, a clause) or
  after a failed wait - nothing new in the evaluator or emit.
- **`match` (S12-S13f).** Several values per case, guards (`case P if c`), nested patterns, literals in payload
  positions, `case _` (alone, last); `match` as a value with `case P => v` (S12b); exhaustiveness over the patterns
  (S13a, Maranget). Binding alternatives bind the same names and types. `match T` dispatches on a type variable (G15).
- **Expressions read as words (E28-E30, E32, the user's designs).** `a if c else b`; `x in c`/`x not in c` call
  `Has`/`Contains`; comparison chains for `< <= > >=` only, each operand once; `x as E.Case` gives the payload
  (fails as written with `CaseError.WRONG_CASE`, so `try e as C` or `(e as C)!`). `is` tests for null and nothing else: `x is null`, `x is not
  null` (E10c, the user's decision 2026-10-24); `x == null`, `a is b` and `x is E.Case` are errors naming the form.
- **Case tests and narrowing (E32, S8d, the user's decision 2026-10-24: "I want == always. It generalizes better into
  the payload case").** `e == Shape.Circle` tests the case, `e == Shape.Circle(3.0)` compares its payload too, `_`
  matches any part, nested cases test through references (a null holds no case). After `if e == C { }` - and in the else
  of `if e != C`, and after an `if e != C { leave }` - a local or parameter is narrowed to C, so `e.r` reads the payload
  field (mine: only locals and parameters, never fields - a field may change under a call); a field read where nothing
  narrows is S8d's error. **One narrowing walk (2026-10-26, the user's "Do narrowing")**: case tests, null tests and
  error-value tests narrow in the same places - `and`/`or`/`not`, a conditional, after an assert, in a loop on the test,
  after a loop with no break (check's `pushFacts`); a narrowing holds until a statement assigns the local (mine; it had
  needed nothing to assign it in the whole block), assigning a case value narrows nothing, and a whole-payload narrowing
  reads as the enum where the enum is wanted (an argument of its type, a case test's or a match's subject).
- **Comprehensions `T[e for x in c if p]` (E27, the user's design)** - element type required, brackets; reserved up
  front from a known length, else 100 and doubling (the user's numbers).
- **Error words, enum cases and constructor fields follow the listing rule (T17/T19/C2, QY):** commas on a line, line
  breaks between lines; a named set's members are on its line (T19a).
- **Keywords as names (L9/L9a):** any keyword names a method after a receiver or `.`; statement-like and non-value
  keywords may name fields (typed, never punned). `_` discards and is never a name.
- **Numeric literals (L10-L12b).** `_` only between digits (L10b); a decimal above `I64`'s max is `U64`, one past 64
  bits adapts only to a type wide enough for it, beyond 128 an error (L10); a hex/binary pattern adapting to an unsigned type is its bits (L10a); a float literal beyond
  its target's range is an error (L12b). Escapes include `\0` and `\r`; a literal never crosses its line (L13).
- **Text literals by number, and raw text (L13-L15, L14a, the user's decision 2026-10-24: "add all if they are
  standard").** `\x41` (a byte, two hex digits), `\u{1F600}` (a code point, 1-6 hex digits, written as UTF-8; a
  surrogate or above 10FFFF an error; in a character literal only below 0x80). `"""` is the one raw form: no escapes,
  one line or several; across lines the opening `"""` ends its line, the closing one stands alone and its indentation
  is removed from every line (a line indented less, or text after the opening, is an error - mine: Swift's rules); a
  blank line is empty. One token, a `STR_LIT` otherwise; decoded once (`scan.LiteralBytes`) for the checker, build
  conditions and import paths; the formatter keeps a raw token as written.
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
  `while` (S9); `a is b` identity, `x is E.Case` and `x == null` (2026-10-24: `==` tests cases, `is` only null); the
  helpers `Any`/`All` (2026-10-24, `Some`/`Every`); a `size()` builtin (2026-09-30, serialization is future work); an `Iterable` interface (T35b:
  `xs.Iter()`); labeled break (2026-10-08); interface switch dispatch (dropped by the user, "it gains very little and
  causes a lot of problems"); Str purity (E11c, decision 49); `done`, `fail`, `abort` (2026-10-17, QU: a test ends by
  returning, a program by `os.Exit`); `own` and `take` (2026-10-18, `docs/memory.md` round 3: freeing early is the
  compiler's); `Array<T, N>`, constant type parameters `<N I64>` and `x as Array<T, N>&` views (2026-10-24, QP1-QP4: a
  length is inferred where an array is made, a view is a slice); `checked`, `CheckError` and the `Checked...` forms
  (2026-10-25: `try a.Get(i)`, `x.Narrow<T>()`, `std/arith`); contract guarantees, named results and `fits` (2026-10-25); `error IoError { ... }` declarations (2026-10-25, `type
  IoError error { ... }`, T19).

### Types

- **Numeric primitives `I8 I16 I32 I64 U8 U16 U32 U64 F16 BF16 F32 F64`, and `Bool` (T4/T5, the user's call).** Byte,
  Int32 and the rest are gone. One table (`PrimInfo`) answers every question about a primitive. F8 (`F8E4M3`,
  `F8E5M2`, saturating, IEEE equality - the user's calls) and complex `C16 C32 C64` (the user's names) are prelude
  structs.
- **Integers of every width, `I1`-`I128` and `U1`-`U128` (T4a, docs/ideas.md #5, the user's decision 2026-10-18; built
  2026-10-26).** The eight are ordinary members: wrapping at the width, the T6b lattice, literals adapting, `T.Max`/`Min`,
  `std/arith` and `Narrow`, `$`, a supplied `Hash`, `Format`, the new `t.ParseAs<T>()`, E37's bit operations and the
  `Integer` trait all hold at every width, computed exactly at compile time and under `interpret` (the evaluator's
  two-word arithmetic). Storage is the next of 1, 2, 4, 8, 16 bytes (LLVM's `iN`, C's `_BitInt`). Decided (mine):
  a literal holds up to 128 bits (2026-10-26: `x U128 = 340282366920938463463374607431768211455`, `x I128 = 1 << 100`;
  E4a's exact computation runs from I128's least to U128's greatest, and a value past 64 bits has no type of its own,
  so `x := 1 << 100` is an error naming the type); atomics take the 8/16/32/64-bit widths, `ByteSwap` whole bytes, and only the eight cross the C
  boundary (X2); `Integer` lists every width, sixteen to a line; `Sqrt`, `PadStart` and `PadEnd`
  are `Integer` defaults for the other widths (U8 gets the pads too; a Char reaches none), `T.Min`/`T.Max` deciding
  conditions per instance (G35). A declared type may not be named `I2` (it is one now): the cinterop fixture's struct was renamed.
  The second bulk review (2026-10-26, HISTORY.md "Bulk review 2, fixed"): the evaluator computes I33-I63 at their own
  widths (its I64 fast path took them for I64s), std/arith and `Pow` read the width from `T.Max`/`T.Min` (no case list),
  a literal shift amount is checked against the width (E8a), an array of 128-bit elements is 16-aligned (O8a), and
  `ParseAs` reads a prefixed literal of up to 128 bits (L10a); `tests/intsweep.olang` holds every width class to the
  run time.
- **A literal's own type: an integer is `I64`, a float `F64` (T6a, the user's calls, 2026-10-08/10).** A literal
  adapts to a typed target (T6); an expression of literals only adapts as one literal, computed exactly (E4a); a
  literal another operand cannot hold meets it at its own type (E6d).
- **Numbers widen implicitly toward their base, never narrow (T6b, the user's design).** Lattice: wider within a
  signedness, unsigned into strictly wider signed, F16/BF16 -> F32 -> F64; a declared type into its base. Narrowing is
  written (`I32(x)`), unchecked; `try x.Narrow<I32>()` checks it (E26b) - never a per-operation check (the user: "It's not even a
  question").
- **Integer arithmetic wraps (E6c, the user's call, re-confirmed 2026-10-09 knowing its `nsw` cost).** Division by
  zero and MIN / -1 are undefined (E6a); `std/arith` checks: `try arith.Add(a, b)`, `try arith.Checked(a) * b` (E15a).
- **Value or reference is decided by the `&` marker alone (T11, T25a).** `&` is scope-tagged heap indirection, not an
  address-of: no pointer type, no unary `&`, no reference to a reference. Reference-shape is part of type identity;
  value<->reference conversion is assignability at the outermost level only (E12): an lvalue into a reference borrows
  (E12c), a temporary is built in the target's scope. No primitive references (the user's call: assignment to a
  reference repoints, and a number has no field to write through). Write-through assignment was rejected: `x = y` must
  imply `x == y`.
- **Permission is part of a reference's type (T25b/T25c, the user's design; kept 2026-10-31, the user reversing the day
  before's removal: "knowing whether or not a function you pass things into mutates what you passed is valuable", and
  "globals shouldn't be mut unless you say so").** `mut T&` writable, `T&` read-only, at
  every level, shallow. `mut` speaks only about what a reference reaches: locals and parameters are always assignable
  (`mut` before a local's or parameter's value type is an error, D11a/D9), a field is assignable through a writable
  instance (no per-field immutability, C3), a global keeps `mut` as its binding. Writable converts to read-only only
  at the top. A copy of a value holding `mut` references taken from a place reached read-only is read-only itself (QC,
  the user's decision); a function made a value may not need a writable copy.
- **References are never null unless written `?&` (T2c, S8e, E35, the user's decision 2026-10-24).** `Node&` never
  is null, `Node?&` may be (`mut Node?&`, `List<Node?&>`, `Node?&x`); `T&` flows into `T?&`, `T?&` into `T&` only where
  a test narrows it - locals and parameters only, never fields (S8e, as S8d): in `if p is not null`, the `else` of `if p
  is null`, after an `if p is null { leave }`, after an assert, in the right of `and`/`or`, in a loop on `p is not null`,
  after a `for p is null` loop with no break, after assigning a never-null value - or `x!`, which ends the program with
  "null reached". Nothing is read through a `T?&` before that; `x is null` on a never-null reference is an error. A
  reference never null has no zero value (D13c). **An array is never null (mine)**: its zero value is the empty array,
  which stands for its absence, so `Array<T>?&`/`String?&` are errors, `null` for an array names its empty one and `x
  is null` on one names `x.Len() == 0` - where absent and empty must differ, a flag says so (the port's AST:
  `Catch.Braced`, `Func.Bodied`). A null read traps (T2b); nothing is uninitialized: a declaration with no value takes
  its type's zero value, made by the constructor from its parameters' defaults (D13c, the user's design); a type whose
  constructor has effects has none. `tools/null_migrate.olang` migrates code from the compiler's own diagnostics.
- **Arrays: one type, `Array<T>`, a length never written (T7-T7d, QP1-QP4, the user's design 2026-10-01 and 2026-10-17;
  `Array<T, N>` and constant parameters removed 2026-10-24).** `Array<T>(n[, fill])` makes one, literals `I32[1, 2]`;
  storage is **fixed** - laid out in place, `Len()` a constant - wherever its length is known where it is made (T7c: a
  literal, text, `Array<T>(n)` with `n` the evaluator can compute, a slice with known bounds, `lo + k` included),
  inferred, never written. A local is fixed when its value's length is known and nothing assigns it as a whole later (a
  pre-scan of the body); an inline field when its declaration gives it a length (`m := Array<F32>(16)`); an immutable
  global from its initializer; an array of arrays held by value takes its elements' length from its fill or literal. A
  value array elsewhere inside a value is `&` (T7a), a payload's included (in place only through a struct). Arrays may
  be **passed by value** (D9a): a function is compiled once per argument length (an instance, G29), in which `a.Len()`
  is a constant and an `if`, conditional or `match` on it is decided per instance (G30); a run-time-length argument is
  an error naming `&` or a slice. A by-value aggregate parameter holds at most 128 bytes (D9c), a bare type variable
  aside. A run-time array stored into fixed field or element storage is an error naming a slice of its length (`s.m =
  v[0:16]`, T7d) - no store is checked. Storage over 64KB is never on the stack. No 2-D arrays (the user's call) -
  arrays of arrays. `x.Len()` is an `I64` (E23/T10, the user's design; `len` is gone). Not yet built: inferred result
  lengths (D8f), constructors by value (`tools/arrays_migrate.olang` migrates
  code; `docs/arrays.md` section 7).
- **Indexing is unchecked, slicing checked once per slice (E16, E16a-E16e)** - a bad slice is a value that stays wrong
  wherever it travels, a bad index one access; an index check cost ~50% on a data-dependent gather, so it went.
  `a[lo:hi]` is a borrow tagged with the base's scope and permission (an immutable global's array slices read-only,
  2026-10-26); `try a.Get(i)`, `try a.Set(i, v)` and `try a.SliceOf(lo, hi)` fail with `ArrayError.OUT_OF_RANGE` instead (E16c/E16d); an out-of-range index, a
  wrong `extern` prototype and a data race are the three unchecked holes, stated (E16e, X1a, P8b).
- **Lane operators (E39, docs/ideas.md #4, the user's decision 2026-10-18; built 2026-10-26).** An array's operators
  work lane by lane (`a * b + c`, `x * 2.0`, `-a`, `and`/`or`/`not` on `Bool` lanes), each lane as the operation on two
  values (T6b, E6c, E31 - C64 and a user's types too); a whole expression is one loop, and `a.Sum()`, `Min()`/`Max()`
  (`ArrayError.EMPTY` on an empty array, NaN propagating), `LanesEqual`/`LanesLess` (`Array<Bool>`), `mask.Select(a,
  b)`, `mask.Some()`/`Every()` take one with no array made. Lengths: a compile-time error where known, else one check per
  operation aborting with "lane lengths differ" (no checked form, mine). Fixed operands give a fixed result; run-time
  ones a new array where it lands, made with no fill. `x op= v` is in place: each lane computed and stored before the
  next is read, so an operand overlapping `x` reads what earlier lanes stored, as the hand loop does (mine, 2026-10-26:
  what the fused loop guarantees, no run-time overlap check); through `x[i]` (E31b) an inline array is read, stored
  into and written back, the operand's lanes evaluated first, and lanes calling an operator method there are an error.
  Not for text, a non-extending declared
  array type, or elements holding references (in place too); `a < b` on arrays is an error naming `LanesLess`. Built as a checker
  elaboration (`laneNode`s materialized by whoever reads them), not prelude methods, so a user's own map-shaped
  functions do not fuse (mine). std/stats' Sum/Min/Max went to it. Measured level with the hand loop and C at -O3.
- **Equality (E10, E10a, E10b, the user's decision 2026-10-24).** `==` compares what is stored, never following a
  reference: values structurally, a reference by identity - unless its type declares `Eq`, which `==` calls at every
  depth (the user's call). The prelude declares `Eq` (and `Hash`) by contents on every array, `String`, `List`, `Map`
  and `Vec`, so those compare by what they hold however held. A reference compared with a value of its referent's type
  compares the value it names (mine: a value has no storage to be the same as). The compiler supplies `Hash` for plain
  data; a type declaring `Eq` must declare `Hash`; hashing follows equality. Identity of two arrays or Lists is no longer
  written (a capability removed with `a is b`).
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
- **Enums carry payloads and may be recursive through `&` (T17, T17a, T17c, T17d).** A payload lives where its value
  does; an enum reference's zero is null; a null matches no case pattern. A case may carry one type written whole,
  `Round Circle` (the coordinator's decision 2026-10-24): `Shape.Round(c)` builds it, a narrowed value is that type
  (`e.r`, `e.Area()`), `case Shape.Round(c)` and `e as Shape.Round` give it; so `{ North South }` on one line is one case
  carrying a `South`.
- **Enum raw values (T17e, the user's decision 2026-10-24).** `type Op enum String { Plus = "+" }`, `type Status enum
  U8 { Ok, Busy = 9 }`: a table of constants beside the cases, never their representation (a value still holds its
  case; `$op` is `Op.Plus`). Text defaults to the case's name, an integer to 0 or one more than the case before; values
  are literals (an integer literal-only expression, a character literal; mine: no names, so the table needs nothing
  resolved), fit the type and are distinct. `op.Value()` is supplied (a case-by-case test, the constant itself where
  the case is written); `try Op.From(v)` through the type's name fails with the prelude's `CaseError.NO_CASE`, a call of
  the prelude's generic `caseIndex` (std/prelude/enums.olang), so `try`, R8 and the evaluator need nothing new. Mine:
  `Value()` with parentheses as every supplied method; the raw type is `String` or an integer type (a declared one
  over an integer, `Char` included); `From` only where no case carries a payload, and then no case is named `From`; an
  anonymous enum has none.
- **Methods are declared with a receiver clause and called only as methods (M19, the user's call).** A method may not
  share a field's name. Built-in types get methods only from the prelude (M19d). Overloading by receiver only (M21); a
  method written for one instance of a generic (`Box<String&>`) is no other instance's.
- **A number written as a literal is a receiver like any other value (E13c, 2026-10-18, the user: "2.0.Sqrt() should
  be valid code. Don't make an exception for floats like that" - reversing their 2026-10-17 refusal).** `2.0.Sqrt()`,
  `7.Hash()`, `255.Format(16)`, `(1 + 2).Hash()` take the literal's own type (T6a: `I64`, `F64`, `U64` above `I64`'s
  largest), since a call is no place a literal adapts; another type is a conversion (`F32(2).Sqrt()`). `-2.0.Sqrt()` is
  `-(2.0.Sqrt())`. L12's lexing is unchanged.
- **Operators are methods named for them (E31, the user's design).** `Plus Minus Mul Div Rem MatMul Neg Less BitAnd
  ... Inc Dec At SetAt Slice Call`, a lowercase spelling being module-private (M6b); `> <= >=` derive from `Less`. A
  method is the operator only in the operator's shape - another shape is an ordinary method. Any operator's
  method but `Len`/`Eq`/`Str` may declare errors, making the operator fallible as written (E31a); there are no checked
  forms. `x[i, j]` calls `At(i, j)`. **`commutes` (E31c, the
  user's decision 2026-10-25)** after a `Plus Mul BitAnd BitOr BitXor`'s result lets `2.0 * v` call `v.Mul(2.0)` when the
  left type has none, operands still evaluated left first; the parameter's type must differ from the receiver's, and a
  clash with the other type's operator is an error at the commuting (the later) declaration. A store through `x[i]`
  reads, writes and writes back by `SetAt` (E31b); a `mut` method on `x[i]` is an error unless the element is a handle,
  and so is a compound store there through an operator method, which would run between the read and the write-back
  (2026-10-26: it was dropped unseen). No user-declared
  operator symbols; `==` and `$` overridable only by `Eq`/`Str`. A handle field of `x[i]`, or a handle a call gives
  (`ll[0][0]`), is lent as its reference where its call landed (O17b/O18c); a field of a try-default (R9a) and a
  conditional or match choosing a place (E28) are values, never lent writably or assigned. Any value with no storage
  of its own whose references live elsewhere, lent to a reference parameter, is a split value (O17): bound where its
  references are, refused where the callee keeps something in it - capturing the parameter in a lambda that can
  outlive the call counts; a slice of a `try` value is a temporary's (E16a).
- **Several results, no tuples (D8c/D8d, the user's call).** `return a, b`, `q, r := f()`, `f(g())` when g's call is
  the only argument; `Pair<A, B>` in `std/pair` for two things kept together (the user's call; in the prelude until 2026-10-17).
  **Results and error sets are written bare** (the user's call 2026-10-24): `fn divmod(a I64, b I64) I64, I64 ? A, B`,
  in a declaration, a function type and a lambda alike. **Whole-item grouping (L18c, the user's call)**: an item of a
  list - parameters, arguments, results, type arguments and parameters, array elements, indexes - holding a top-level
  comma of its own is parenthesized whole, `Map<String&, (fn(x I64) I64, I64 ? A, B)>`, `apply(f (fn(x I64) I64,
  I64), n I64)`; so a lambda or function type in such a list has one result and one error item unless wrapped. One
  exception (mine): a function type with no error set as a result before its own signature's `?` is wrapped, `fn f()
  (fn() I64) ? E`. Parentheses group nothing else: `(I64)` or a wrapped type that needs none is an error. `$` and
  every diagnostic spell types this way (the checker had written error sets with ` + `). `tools/results_migrate.olang`
  migrates, re-runnable (oann).
- **Defaults and `default` (D8a/D8b/E14).** Trailing defaults, `default` in an argument slot. A default is built per
  call in its declaration's context.
- **Tests name their targets (B7a, B3a, B14, B15, 2026-10-26).** `test Twice "doubles" { }`, `test Box "..."`,
  `test Map.Get "..."`: a function, a type or `Type.Method` of the test's own file (the method's declaration there; it
  may be private); an unknown target (the nearest suggested), another file's, and one target with one description twice
  are errors. Reported `ok - Twice: doubles` / `FAIL - Twice: ...`; `olang doc` lists them under the target as
  examples with their bodies (collapsible in HTML), a hover shows the first and `+N more tests`. `olang test FILE
  WORD...` runs the tests a word names - a target, its type (`Map` runs `Map.Get`'s), or text of a description (decided,
  mine: a word that names no file and ends in no `.olang`, matched by the test binary's harness, so nothing rebuilds). Words
  naming none of a file's tests say so, the nearest target or description suggested (`did you mean 'Box'?`), and that
  file's run ends with the status 3 - the coordinator's decision 2026-10-26, from a review; over several files such a
  file fails nothing where another listed file has a test the words name, else the run fails (`no listed file has a
  test named by 'Box'`; the coordinator's decision, built 2026-10-26). A method's type is the receiver its declaration
  writes, so an array's methods and a trait's defaults are targets too (`test Array.Windows`, `test
  Iterator.TakeWhile`; built 2026-10-26).
  std: examples on `String.Trim`, `Map.Get`, `Vec.Push`.
- **Fuzzing and property tests (B19, B19a, docs/survey2.md section 5, 2026-10-26).** `olang test -fuzz NAME FILE
  [-fuzztime SECONDS]` builds the file's tests with libFuzzer (`-fsanitize=fuzzer`, objects apart as `.fuzz`) and runs
  the one test NAME names (B7a's words; none or several an error) per input: the harness is `LLVMFuzzerInitialize`
  (globals once, the corpus directories made, libFuzzer's command line given them) and `LLVMFuzzerTestOneInput` (the
  test behind a recovery point, a failed check printing FAIL and aborting). `std/fuzz`: `fuzz.Check(fn(data
  Array<U8>&) { })` takes the fuzzer's input, or in a plain run the empty input and every file in `testdata/fuzz/SLUG/`
  beside the test's file (Go's layout; failing inputs land there, libFuzzer's working corpus under `build/fuzz/`). It
  composes with `-sanitize`. `std/prop`: `prop.Check(fn(xs Array<I64>&, p Pt) { assert ... }, cases = 100)` makes
  each parameter's value by reflection (numbers, Bool, Char, String, arrays, Vec, structs through their constructors -
  a refused one drops the case - and enums) from bytes (Hypothesis's design: 0 the least value), runs the cases in a
  forked child seeded by the test's name, shrinks a failure's bytes (cuts, a binary search per byte, a borrow between
  bytes), prints `argument N: $value`, saves it beside the file and runs it in the test, which fails as the property
  does; under `-fuzz` the fuzzer's bytes are one case. Decided (mine): two modules, `fuzz` (bytes) and `prop` (values,
  the survey's spelling); the harness names the running test and its file to std through runtime globals
  (`__olang_test_name`, `__olang_test_file`, `__olang_fuzz_input`, `__olang_test_detach`); a property's failure is
  found in a child rather than recovered in-process, since a failed check is a jump out of the test; runs are
  deterministic (no clock seed); a shrunk failure is saved even outside `-fuzz` (Hypothesis's database). Measured: a
  planted 4-byte prefix bug found in under a second (`checks` scenario `testfuzz`, ~10 s with the build); a property
  over `Array<I64>` shrinks to `I64[50]` in ~2 s. Profiling is written up in docs/profiling.md (perf, a flame graph,
  callgrind - which build keeps what).
- **`olang profile FILE [ARGS]` (B20, QBL, the user's decision 2026-10-26; built 2026-10-27, details mine).** A sampling
  profiler built in: the program built as `build` builds it (`-O3`, LTO; `-quick` asks less) with frame pointers on every
  path (shrink-wrapping off), line tables (`LineTablesOnly`) naming each function as source writes it outside its module
  (`io.Println`, `Vec<I64>.Push`, `check.Checker.Expr`, the root's and the prelude's bare - emit's `ProfName`; `startup`
  the entry, `task` a spawn's trampoline: every function the compiler writes gets a subprogram, since code inlined into
  one without loses its lines) and the runtime's sampler (`std/runtime/prof.ll`, hooked into runtime.ll by `; @prof`
  lines a compiler without it reads as comments) - objects `.prof`, nothing of it in any other build (their IR is the
  same as before; checked on nbody and regex). Each runtime thread has a `CLOCK_THREAD_CPUTIME_ID` timer signalling
  itself each ms; the handler walks frame pointers (bounded by the thread's first frame and its stack pointer, 128 deep)
  into a reserved buffer, no allocation, no lock; a sample weighs 1 + the timer's overrun (a 250 Hz kernel: one each 4 ms
  weighing 4 - their sum is the CPU time, 8.575 s against 8.579 s measured). Written at exit, os.Exit, an error leaving
  main, a failed check and SIGINT/SIGTERM/SIGHUP left to end the program (never on a crash, never by a forked child) to
  `build/profile/NAME.samples` with /proc/self/maps. The driver forks and execs the program (its stdin, output and
  status the program's; SIGINT ignored while it waits), names addresses with llvm-symbolizer (beside the real clang, else
  `llvm-symbolizer-20..18` on PATH; `make release` ships it) through inlined frames, and prints self/total by function,
  the hot lines and the five hottest functions' callers, then writes a self-contained HTML flame graph (SVG, a click
  zooms; `-output` names it). Options: -output, -quick, -define, -update. `interpret` is not profiled; allocation
  profiling per site is future work. Measured: sampling costs ~0-2.5%; the build's frame pointers nothing on loops,
  ~20% on binarytrees. compiler/profile.olang, docs/profiling.md.
- **Arguments by name (E14b, QBG, 2026-10-26 - reverses the 2026-09 rejection).** A defaulted parameter only, after
  every argument by position, in any order, each once (`connect(h, retries = 5)`); naming a required parameter, a name
  given twice or also by position, an unknown name (the nearest defaulted one suggested) and a name through a function
  value are errors. Functions, methods, constructors, generics, an `any`'s trait methods. Decided (mine): evaluated in
  the order written - reordered arguments but literals held in hidden locals (`inWrittenOrder`); a defaulted
  parameter's name is part of the API, a required one's stays the declaration's; `olang explain`/`doc` show defaults.
- **Lambdas (D16, the user's design).** `fn(x) { return ... }`, `return` always written; captures copied (plain values
  read-only, references still naming their instance, value arrays borrowed); types from the expected function type
  (D16a) or the body (D16b). A function value is `{code, environment}`, nullable, identity by both words (T21).
  `(args)` after any postfix expression calls (E13b). `spawn fn() { }` runs a lambda as a task (D16e).
- **No shadowing (D3a, the user's call)**, types included: no local or parameter named like a global, a function, a
  build constant or a type; a type and a function or global of one module may not share a name (D2).
- **`:=` declares any settled expression's type (D15, the user's call).** `null` and a call giving nothing are errors.
- **Traits are constraints; `any Trait&` is the run-time form (T30-T35, G19, the user's calls 2026-10-08 and
  2026-10-24).** `trait` declares method signatures, satisfied implicitly (Go-style: a declared `implements` would point
  dependencies the wrong way and could never make a built-in type conform); a private method name seals a trait; a bare
  trait written as a type is an error naming `any R&`. Defaults are methods on a constrained type variable, overridable
  (M19e). The 2026-10-08 interfaces were removed (bugs clustered in tables and boxing).
- **`any Trait&` (T32-T34, D17f, 2026-10-24, the user's design; HISTORY.md "Run-time trait values").** Two words, the
  instance and a static table per (type, trait) - its type's identity, `$`'s renderings, a function per slot (the
  trait's and extended traits' methods, defaults the receiver binds alone), and nothing else. A struct or
  enum variable is borrowed, a temporary built where the any lands, a number/Bool/Char/array copied (the user); placement
  is the scope pass's (`AnyMake` read as a conversion), never emit's. A method saying more than the trait's signature
  (scopes, obligations) cannot be in a table (an error at the conversion). Calls dispatch through the table, `mut` only
  through `mut any`, defaults reaching overrides, a default instantiated for a type only where some call through an any
  reaches it (so `any Iterator<String>&` exists), an argument left off taking the trait's default; `for x in it` walks an
  `any Iterator<T>&`; the any satisfies its
  trait for generic code; no task calls through one. `==` is identity, `$` renders the instance, no `Hash`. A closed
  trait's any is matched by type cases `case Button b`, `case Box<I64> b` (complete or `nomatch`) and `w as Button` (failing with
  `CaseError.WRONG_CASE` as written); an open trait's never (the user). A trait's methods take contracts (D17f), checked before every call through an
  any; the implementation's own on its entry, after dispatch. Tables are `linkonce_odr`, named by
  type and trait; the evaluator calls through them (K2 bakes through anys). An array copied in (a slice, `Lab(s)` too)
  has its elements' references judged where the any lands; `$` counts an any as a reference (8 deep); an array of
  anys is written `any W&[a, b]`, as `$` renders it (the review of 2026-10-24, HISTORY.md "`any Trait&`: the soundness
  review, fixed"). **The second review's round (2026-10-25, HISTORY.md "`any Trait&`: the second review, fixed"):** an
  array is copied into the box unless the scope pass finds it new storage built where the box is (`Scoper.anyItemNew`,
  recorded per site in `typed.Plan.AnyNew`, which lowering follows - one decision, so a conditional, a match or a catch
  default of existing text is copied); a table's slot functions are defined in the root's object with the instances
  (B3d), since which defaults some call reaches is a whole-program fact and a reused module object (B3i) kept a stale
  `unreachable`; `any R<T>&` is substituted, unified and counted for G4; an adapter keeping a copy of its receiver
  (`Take`, `Zip` ...) through an any is an error at the call (a limit: an any has no copy); M21 keeps every instance's
  method (an exact receiver first, two that apply alike an error); E30 types a chain's literal beside each comparison.
  **The third review's round (2026-10-25, HISTORY.md "`any Trait&`: the third review, fixed"):** a call given a scope
  argument (E25) is existing storage where that says, judged wherever it is put (it was taken for a temporary where it
  stood - use-after-frees through fields, lists, returns, anys); the box's "new storage" answer is one pure function,
  `typed.AnyItemNew`, which the scope pass, lowering and the compile-time evaluator all ask; a returned local that a kept
  borrow also names is copied at its return, so the caller's value is its own;
  M21's per-instance methods reach Eq/Hash; a type over an array of arrays is T7a's error.
  **The fourth review's round (2026-10-25, HISTORY.md "`any Trait&`: the fourth review, fixed"):** a scoped call's array
  is existing storage where the argument says whatever it holds (text and numbers too: copied where it is returned or
  boxed, a local declared from one not moved); a returned array local is uncopied only where a whitelist proves nothing
  else names it (`Plan.RetSole` - read, indexed, measured, sliced into what dies first, lent to calls keeping nothing),
  else copied - so the evaluator, which always copies, agrees; AnyNoCopy looks inside function types; `spawn x = f&t()`
  is a call; E25's "builds no result a scope argument could place" and "no local or parameter here" are given. Bench and
  the compiler itself: identical IR, so no copy was added there.
  **The fifth review's round (2026-10-25, HISTORY.md "`any Trait&`: the fifth review, fixed"):** a spawn target holding an
  array by value is stored as the assignment it is judged as (T11b in place, else a copy made on the task's thread where
  the assignment copies - `Task.Copies`); `canKeep` keeps unless proved otherwise (no result in any position borrowed
  from the argument, no parameter sharing its scope, the settled body storing nothing into it); a conversion of a place
  to a type over a declared array type (`Lab`, `Path` over `String`) names its storage (the place path takes the
  underlying kind); one return-copy decision with a plan and without; a local a scoped call declares lives where the
  argument says; `interpret` runs the scope pass and refuses what a build refuses (B3e).
- **No `volatile` (X3b)** - a foreign call is an opaque barrier, atomics cover threads, MMIO is inexpressible.
- **TBAA (T36).** Every numeric primitive, the array descriptor and a reference to a struct or an enum have element and
  field tags (references since 2026-10-18, so a handle's reference hoists out of a loop); the runtime's scope and chunk
  headers have their own (a loop body's empty scope folds away); aggregates and function values are untagged.
- **Parameters (D9, D9b).** `&` says whose instance, `mut` whether it can be written; an immutable lvalue never binds
  a `mut &` parameter. A generic's by-value parameter bound to a run-time-length array is copied exactly when its body
  writes it (D9b, `paramWritten`), else is the caller's array. Arrays are passed by value as instances (D9a, G29).
- **Assignability (E12, E12c).** Value into reference borrows an lvalue (with a lifetime check) or builds a temporary
  in the target's scope; reference into value copies out; a reference to fixed storage is lent where a run-time one is
  wanted with no copy. All four
  combinations read the same for structs and arrays.
- **Function types (T22, T22a).** Errors compared in order, `mut` and permissions on T22's terms (read-only for
  writable parameters, writable for read-only results is safe); a function with scope obligations or a `Call` that
  keeps its argument cannot become a value; a type's `Call` fits a function type (E31), its errors the type's in order
  (2026-10-25: never compared, so a `Call` with a contract read its error code as a result). A
  function value returned from a parameter is an obligation (O14a). Where its references live is part of a function
  type (T22, 2026-10-18): a parameter sharing another's scope (`b N&a`) or a borrowed result (`T&p`) makes a function a
  value only of a type saying the same, so `fn link(a mut N&, b N&a)` is no `fn(a mut N&, b N&)` (it was accepted, and
  crashed: the call passed other hidden scope arguments and established nothing link requires).
- **Static literals (T25d).** A literal known while compiling reaching a read-only reference is the constant data
  itself; an immutable global no writable reference reaches is `constant`, and importers see its value (K2).
- **A number type's limits through its name (E36, the user's decision 2026-10-24).** `I64.Max`, `U8.Min`, `T.Max`
  in a generic, and a float's `Max` (largest finite), `Min`, `Inf`, `NaN`, `Epsilon`, `SmallestNormal` - constants of
  the type, never literals (they do not adapt); a declared type has them only where it extends its base and declares no
  constructor (mine: a constructor decides its values). `MaxFinite` was named in the brief and folded into `Max` (mine:
  one way to write it, Rust's meaning). The `T.` namespace reflection will read through.
- **Bit operations are supplied methods of every integer type (E37, the user's decision 2026-10-24).**
  `LeadingZeros TrailingZeros PopCount` (an `I64` count; a zero's is its width), `RotateLeft(n) RotateRight(n)` (any
  integer count, modulo the width, negative the other way - mine), `ByteSwap`; LLVM's intrinsics, the evaluator
  computing them bit by bit. Inherited through `extends`, never redeclared, as E33's.
- **Small type rules:** a type cannot embed itself by value (T16); a self-holding array type is an error (T29); an
  inherited array method is never overridden (T29e); `x.Bits()` and `u.F64FromBits()` etc. move a float's IEEE pattern
  (E33); an `Array<T, 0>` has storage of its own (E10); a NaN renders `nan`.
- **Visibility details (M6a, M12, M4).** A member or error word is public by its own first letter; enum cases are
  alias-qualified across modules (`Lib.Dir.North`); an alias-less import takes the file's base name, so a file's
  capitalization is part of its interface; capitalized aliases re-export, through chains of any depth; a cycle in
  public reachability, or one file reached two ways, is an error.

### Generics

- **Generic enums (G6b, the user's decision 2026-10-18: "generic enums go in for sure"; built 2026-10-25).** `type
  Tree<T> enum { Leaf(v T)  Node(l Tree<T>&, r Tree<T>&) }` is instantiated as a generic struct is - payloads, layout,
  `==`, Hash, `$` and section 8 (T17c) per instance, which the type machinery already did once G6 stopped refusing it.
  A case is written with its arguments (`Tree<I64>.Leaf(3)`, `lib.Opt<I64>.None`) or bare (`Tree.Leaf(3)`): then the
  instance is the type it lands in, else inferred from its arguments as G10c does (`check.genericCase`); `x :=
  Opt.None` is an error naming the fix. Patterns, case tests and `as` name a case bare against the subject's instance
  (`namesEnumOf`), a case of another instance is S13's error. **Decided (mine)**: `$` writes the case without the
  arguments (`Opt.Some(4)`), as it is written; a raw-value enum may be generic (nothing forbids it, nothing needs a
  rule); std gets no `Option`/`Result` (the decision); reflection's `T.Cases` reads an instance's cases. **Found on the way
  (pre-existing)**: `if t == Shape.Rect(_, _)` - a `_` in a local if's case test - was B10's "unknown name '_'"
  (names.name).
- **Explicit type arguments (G12, E3, the user's calls 2026-10-24 and 2026-10-25).** `big<I64>` names a generic
  function's instance, as a value or at a call (`big<I64>(1, 2)`, `lib.Pick<I64>`), its arguments fitted as written
  ones are (count, bounds, T7c lengths); a method takes them at a call too (`x.Narrow<I32>()`, `xs.Map<U>(f)`), naming
  its own variables - those its list introduces that its receiver does not name (mine). After any name, a `<` reading
  as type arguments on one line, touching the name, with `(` touching its `>`, is type arguments (C#'s rule); spaced, it
  compares, so `k < m > (0)` is a chain (2026-10-25, the lang25 review), and `x.f <T> ()` is an error naming the form. A variable no parameter
  names is no error at the declaration; a call writes it (G4, relaxed 2026-10-25). `U(x)` in an instance is the bound
  type's conversion or constructor (G8b, mine). A generic still is no value unless named so; one taking
  an array by value makes an instance per length (G29) and is never a value - the error says to pass a lambda. A
  type name read as a value (`I64 > 3`) is an error (it silently compiled to `false`).
- **Type parameter lists (QW, G3, G8b, the user's decision 2026-10-17, reversing G8b's `<T>` introductions and
  G3's no-list rule).** A function's type variables are a list after its name, constraints in it: `fn
  max<T>(a T, b T) T`, `fn area<T Shape>(x T)`; a constraint is a trait (G6, G19); a method gets its type's
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
- **Instances per array length (G29-G31; constant parameters G20-G28 removed 2026-10-24, QP2, the user's call: "This
  still doesn't give more information than inferring a known size at compile time").** A by-value array parameter
  (at any level under a reference too) binds its length per call; each instance checks, decides asserts on lengths
  (S18c, with G16b's note naming the lengths); D9c's cap, reported once by the first instance over it (whose body is
  then not checked), stops a growing length long before G17's bound. A length `Array<T>(n)` gives is folded exactly as
  the program computes (in its operands' types, wrapping), else evaluated, else run-time - never an error.
- **Generics composition (G8a, G15).** A type variable may be a type argument (`Vec<T>`); a still-generic receiver
  matches any application; an application with unknown arguments is a pattern, never laid out. `match T` is
  exhaustiveness-checked and compiles only the chosen arm; inside it the variable is the concrete type.
- **A literal default for a type-variable parameter is fitted per call (G18).**
- **Error-set parameters (G1a, QAH, the user's decision 2026-10-18; built 2026-10-25).** A type's, trait's, function's
  or method's list may end in `? E` (`type Iterator<T ? E> trait { mut Next() T ? E, Exhausted }`, `fn apply<T, U ?
  E>(x T, f fn(x T) U ? E) U ? E`, `fn (a Array<T>&) Some<? E>(...)`); a receiver introduces one written as its type's
  error-set argument (`fn (t mut TakeIter<I, T ? E>&) Next() T ? E, Exhausted`). `E` stands only where an error set is
  written - signatures, function types, trait methods, a type's error-set argument (`Iterator<I64 ? io.Error>`, a
  named set too), catch items - and is spliced in where it stands; written as a type it is an error, and so is a type
  variable written as a set. A call binds `E` to the **union** of what the function values and iterators matched against
  it fail with (beyond the other items of its set; mine: a union never conflicts), to the empty set where nothing
  fallible binds it - then the instance cannot fail and is called without `try`; a type's argument left out is the
  empty set (`Iterator<I64>`). A lambda given for a parameter naming `E` infers its set from its body and is then
  given the parameter's set (mine). Satisfaction is "held by" (T31 as written, which the code had as equality): a Next
  failing with only `Exhausted` meets `Iterator<T ? Bad>`. `catch E` takes what the instance binds `E` to. Explicit type
  arguments may give the set after `?` (`apply<I64, I64 ? Bad>`); left out, a call infers it and a value takes the empty
  set (mine). std: `Iterator<T ? E>`; its helpers, adapters (`TakeIter<I, T ? E>` ...), an array's
  `Some/Every/FindIndex/Count/Map/Filter/Fold/Sort`, List/Vec `Sort` and ListIter's overrides
  fail with what their callbacks and iterators fail with. Not a stored error: no value holds one
  (T20). Representation: `types.Kind.ErrSet` (a canonical, merged entry list) for an argument or binding, the variable
  itself an entry of an error list until substituted. Not for a G10d constructor's own list (mine: no use yet). Found
  on the way: section 8's alias analysis did not look inside `for x in try p` (a try statement), so a helper walking its
  receiver under `try` was refused by O17 (`scope.aliasExpr`).
- **Generators (D18-D18d, S20, QAG revised, the user's decision 2026-10-18; built 2026-10-25).** A `fn` whose result
  is written `Iterator<T ? E>` and whose body holds a `yield` of its own is a generator - no keyword, `yield` the one
  new word. A call runs none of the body and gives the prelude's `Generator<T ? E>` (a struct holding `next (fn() T ? E,
  Exhausted)`; its `Next` calls `next`), so `for`, the iterator helpers, constraints and `any Iterator<T>&` take it as
  any iterator; it is nameable (a field holds a `Generator<I64>`) and a copy is the same walk, as a List's. Its errors
  are `E` and `Exhausted`, written in its result (a `?` on the signature is an error naming that); its end, a bare
  `return` (`return v` an error) and an error leaving it end the walk, every later `Next` failing with `Exhausted`.
  **How it is built (mine): its body is a lambda's** - check makes the generator's own body `return Generator(next)`,
  `next` a lambda of the body capturing the parameters, which become its own writable locals set once at its start
  (a value array given is copied where the generator lives) - so captures (D16c), placement and every scope rule apply
  with nothing new; a `yield` is checked and judged by section 8 as that lambda's `return` (a typed `Suspend`). The
  lambda's MIR is a coroutine (`mir.Fn.Gen`, `Term.Suspend` holding the open scopes): emit writes an LLVM coroutine
  (`llvm.coro.*`, its frame from the arena where the generator lands, its promise the result slot plus the scopes the
  Next call passed, a `.drop` registered there destroying a walk stopped part way - closing the scopes it holds - and a
  wrapper that is the function value's code); eval keeps the suspended frame's words and scopes and restores them.
  **Decided (mine)**: the value yielded is built in each `Next` call's result scope - so `for w in words(t)` reclaims
  each value per turn - which no local outlives: `&return` is an error in such a generator, O26a moves nothing there, a
  yielded local holding the generator's own storage is O26 worded for yield (write `$x`/`x.Clone()`), and a yielded
  borrow of a parameter's referent is T22a's (the walk's Next is a function value; the error names `Iterator<T&p>`).
  **Borrowed elements (D18c, QBB, the user's decisions 2026-10-26; built 2026-10-26)**: `fn words(t String&)
  Iterator<String&t>` yields views of what `t` refers to, `Iterator<T&return>` views of storage its walk keeps where the
  generator lives (`x T&return` locals, what they hold, a temporary yielded) - read-only, never null, `p` a reference
  parameter. The call gives the prelude's `ViewGenerator<T ? E>`, whose `Next() T&g` is borrowed from the receiver, so
  any consumer reads an element where the generator value lives (G11's container); a for-in's own walk of a direct
  `&t` call reads it where the argument for `t` lives (`Scoper.walkElem`), so `for w in words(t) { kept.Push(w) }`
  keeps them as long as `t`'s text. Built (mine) on the lambda: `Body.GenElem` names the capture the elements live
  with and a yield is judged as a result borrowed from it (built there if new); `&return` is a hidden null capture of
  the generator's result scope (`GenHome`), which every capture is assumed to outlive in that body; such a generator
  is no `any Iterator<T&>&` (T32a). Limit: a generator held in a local of an inner block reads its `&t` elements there.
  **The walk dropped with its loop (D18e, mine)**: a for-in's own walk never lands by obligations - it is made in the
  loop's block whatever it was given (constant text, a global's array) and dropped as that block is left: 552 MB ->
  1.7 MB over 4M walks of a generator over a global array; the evaluator reuses a closed generator's record
  (`interpret` 634 -> 31 MB). A generator held in a local still lands by its obligations (a recorded limit). **Found on
  the way (pre-existing, D16d)**: a closure was held to where it is put only through its innermost capture - a lambda or
  generator over two parameters' referents, returned, read the second after it was freed; its term is now the set of
  its captures' (UNK), and an obligation over a set is one per member. Not allowed:
  `yield` in a lambda, deferred code, a join block, or with deferred code pending around it (a dropped walk would never
  run it - relaxable). Cost (2026-10-26): about 1.7 ns a value summing a range, the resume inlined where the walk is made, with the
  frame's fields in memory per step (the frame comes from the arena and its handle is registered for the drop, so
  CoroElide cannot take it); a filter generator is 1.2x a hand-written iterator struct. A loop scope nothing uses
  gets no header (`idle`, as frame and block scopes), and a scope held at a yield is not used by being held.
  **A walk made and finished in one place (D18e, 2026-10-26)**: a `for` or comprehension over a generator called
  right there calls the generator's `.walk` form - its frame from `llvm.coro.alloc` (so CoroElide can put it in the
  caller's frame and SROA in registers), no drop registered, its Generator's code a `.wnext` testing neither re-entry
  nor its end (nothing else holds it) - and the caller destroys it on every way out of the loop's block, through that
  Next (a promise flag of 2), so the destroy is visible beside the resumes once both are inlined. Decided (mine,
  conservative): the call must be a direct call to a generator function at the for-in's own source, its result scope
  the loop's block, loop or frame, the walk made and closed on every path that closes the scope (a dataflow in emit,
  else the arena path), and never in a test build (a failed check closes scopes from outside, through the
  registration); a generator in a field, a result, an argument or an `any`, and an iterator helper's walk
  (`gen(n).Sum()`), keep D18b's arena path. **A local held so (2026-10-26, bulk review 3, mine)**: `g := gen(x)` whose
  elements are built per turn, walked by one for-in or comprehension later in its block, in no loop or deferred code
  there, and named nowhere else, is that walk's own (check's settleHeldWalks, definit.HeldWalk) - made where it is
  declared, dropped as its block closes (139 MB -> 1.6 MB over 1M calls over a global's array); a local walked in two
  branches, twice, or borrowing elements (D18c) keeps the arena path, a recorded limit. Result: the range generator
  folds to the hand iterator's closed form (0.35 s -> 0.003 s), the filter generator 0.30 -> 0.15 s, below the iterator
  struct's 0.22 s. Limit: a walk made inside a loop whose exit leaves that loop too (a `return`, an error) keeps an
  arena frame - CoroElide does not see a destroy behind the exit's LCSSA phi - still destroyed by the caller.
  **Found on the way (pre-existing)**: D10a counted a `for x in it` over an iterator as a loop that never ends (its
  `break` is in the Next call's `catch Exhausted`, inside an expression), so a function ending in one compiled and
  aborted with "unreachable reached" - `breaks` now looks inside expressions' clauses; since bulk review 3 one walk,
  `typed.BreaksOut`, over every statement, expression and place kind (a do-while's post clause too), read by D10a and
  D13d alike.
- **Compile-time reflection (G32-G38, G13, docs/ideas.md #2, the user's decisions 2026-10-18; built 2026-10-25).** A
  type's structure read through its name, while compiling only: `T.Name`, `T.Kind` (the prelude's `TypeKind`: `Struct
  Enum Integer Float Bool Array Reference Function Error`, a declared type its base's, an error value's type `Error`),
  `T.Base`, `T.Element`, `T.Length`, `T.Target`, `T.Size`, `T.Align`, the lists `T.Fields`, `T.Cases` (a struct's one
  case; an error value's words, each named as `$` writes it, `c()` its value - 2026-10-26, mine), `T.Params` (a
  constructor's or a function type's), `T.Results`, and `T.Errors` where an error set is written. A list is no value: a
  `for` over it is unrolled (the body checked per element, `break` leaving the walk), `.Len()` and a constant index are
  constants, a comprehension makes an array. Its elements are **descriptors** - prelude structs of no fields typed by
  the member
  (`FieldInfo<T, C, I>` ...), so a generic taking one is instantiated per member: `f.Name`, `f.Type`, `f.Offset`,
  `f.Of(v)` (a place; a case's field where `v` is narrowed to it), `c.Name`, `c.Fields`, `v == c`, `c(args)` building
  the case (mine), `p.HasDefault`, `p.Default`. Conditions over reflected constants decide `if`, conditionals, asserts
  and `match` per instance (G35). `match T` takes trait cases and generic cases binding arguments (`case List<E>`), the
  first that holds chosen, an unreachable case an error (G36); `case X&` holds for `mut X&` too (mine). `T(arg(p) for
  p in T.Params)` builds through the constructor, its checks running (G37). A reflected type is a type (`P.Type`,
  `T.Base.Element`), and called converts or constructs (G38). A struct's private fields are in `T.Fields` only in its
  module (M6a); a case's fields everywhere (mine). Mine too: `TypeKind`, not `Kind` (a prelude name is reserved
  everywhere); `T.Name` without the module's alias; a function type's parameters unnamed (names are no part of it).
  `json.Encode(v)` and `json.Decode<T>(text)` take any value (structs as objects, enums externally tagged as serde,
  decoding through constructors). The evaluator sees only unrolled, decided code, so it agrees by construction.
- **Typed attributes and function reflection (G39-G41, R8, QBN, QBO, the user's decisions 2026-10-26; built
  2026-10-27, details mine).** `@Type(args)` / `@Type` (a constructor of no arguments, or an enum's case `@Level.High`)
  before a type, a function or method, an enum's case, a constructor's field or a parameter - on lines above or on its
  line; anywhere else an error. A value of a struct, an enum or a declared number type a program declares (not a
  built-in's, not the prelude's), one per type per declaration, built while compiling (an error otherwise; what it can
  fail with ends it as `!` does); the compiler gives none a meaning. Built as a hidden immutable global beside the item
  (`VarDecl.Hidden`, named `@` and its offset), so names, check, K2 and the evaluator do it all. Read by reflection:
  `try x.Attr<A>()` (fails with the prelude's `AttrError.MISSING`; elaborates to the prelude's `attrGot`/`attrMissing`)
  and `x.HasAttr<A>()` (a Bool decided while compiling, G35) on a type or a field/case/parameter/function descriptor; a
  pun field has its parameter's attributes (written on a pun: an error). `alias.Functions` (an import's plain, non-generic
  functions; another module's exported ones - a module walks its own through an import of itself, `import me "main"`) and
  `T.Methods` give `FuncInfo<F, K>` descriptors (K a hash of module, receiver type and name: stable across compilations)
  with Name, Type, Params, Results, Errors, Attr, HasAttr, and `f(args)` calls it (a method's receiver first). A `try`/`!`
  covering nothing in one copy of an unrolled walk is no error, as in a generic's body (R8). doc/explain/lsp show
  attributes with what they are on. std: `json.Naming` (Exact, Camel, Snake, Kebab - not `Keys`, which `json.Object`'s
  field holds) via `keys = ...` on Encode/Decode/From, `@json.Key`, `@json.Skip`, a type's `@json.Naming.X` winning over
  the call's; std/csv records as structs (`Header`, `RecordOf`, `Encode`, `Decode`, `@csv.Column`, `@csv.Skip`);
  std/flags `p.Read<T>(args)` from a struct's parameters with `@flags.Help`, `@flags.Short`.

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
- **`try` handles what fails as written, and nothing else is checked (R8, E15a, E24, the user's design; `checked`
  removed 2026-10-25, the user: "one error system: try").** A `try` takes the whole expression after it, up to its
  end or the first `catch` (E24, the user's call 2026-10-25; it took a postfix expression): `try a.Get(i) + b.Get(j)`,
  `x := 2 * try f() + 1` multiplying by `f() + 1`; in a list the item's `,` ends it; after its clauses the expression
  goes on (a default is one term); parentheses directly around what it covers are an error; to cover less the `try` is
  parenthesized, `2 * (try f()) + 1`. It covers every fallible call and operator in that - arguments, a chain - and never
  turns a check on; every `try` must cover something no `try` or `!` inside it covers, and one covering nothing is an
  error (not in a generic's body, where instantiations differ). `tools/try_migrate.olang` takes the parentheses off
  (always); a `try` after an operator and followed by one is left alone where every later operator binds tighter (one
  expression either way), else wrapped with `--old` and listed without it; an `as` inside an old try's reach is given
  `!` where it reads a plain chain, else listed - a listing makes `olang fix` end with status 1 (2026-10-25, the review:
  fix must never change what old code computes silently). What `checked` checked is now a
  call that fails: `try a.Get(i)` / `try a.SliceOf(lo, hi)` (`ArrayError.OUT_OF_RANGE`, a List's and a Vec's `Get`
  their own errors), `try x.Narrow<I32>()` (`NumberError.OVERFLOW`/`INVALID`, supplied by the compiler for every number
  type), `as` failing as written (`CaseError.WRONG_CASE`), and arithmetic in `std/arith` (not the prelude): `try
  arith.Add(a, b)`, `Sub Mul Div Rem Neg ShiftLeft ShiftRight Pow`, and `Checked<T>` whose operators are those
  (`try arith.Checked(a) * b + c`), `arith.Error` `OVERFLOW DIVIDE_BY_ZERO INVALID`, each function's set inferred per
  number type (an integer's Add fails with OVERFLOW alone; `Rem` by -1 is 0, never OVERFLOW). Plain `/ %`, indexing and conversions stay unchecked; a
  plain slice still aborts once per slice (E16b). `for x in try c` and `try join` stay. No `try { block }`.
  `tools/checked_migrate.olang` rewrites the mechanical uses and lists the rest; `tools/as_migrate.olang` makes an
  uncovered `as` `(x as C)!`.
- **`!` ends the program on what fails as written (E35, the user's decision QV).** `f(x)!`, `a.F().G()!`,
  `(f(x) + g(y))!` - `try`'s reach, no checks; a failure fails the running test, else prints `FILE:LINE: io.Error.W`
  and aborts; needs no `?` (`fn main() { io.Println("hi")! }`). While compiling it is K1's abort class. `spawn f(x)!`
  ends the program from the task's thread (P4, P6).
- **Operators may fail (E31, E31a, the user's calls).** A plain operator method (all but `Len`, `Eq`, `Str`) may
  declare errors, making the operator fallible as written (`try a - b`, `try x[i]`, `try x[i] = v`). The checked forms
  (`CheckedAt`, `CheckedPlus` ...) went with `checked` (2026-10-25): a method of that name is an ordinary method.
- **The prelude's errors of the language's own operations (R20, 2026-10-25; `CheckError` removed with `checked`):**
  `ArrayError.OUT_OF_RANGE` (`Get`, `SliceOf`), `NumberError.OVERFLOW`/`INVALID` (`Narrow`), `CaseError.WRONG_CASE`
  (`as`), `ArgumentError.INVALID` (a false contract condition, D17);
  `Exhausted` is the loop protocol's. Nothing else is built in (QO3 withdrawn by the user).
- **std fails with its own errors, never ends the program on a caller's mistake (R22, QO4, the user: "No std function
  may ever exit").** `ListError`/`VecError` (`EMPTY NOT_FOUND OUT_OF_RANGE`), `MapError.MISSING`, `TextError`
  (`NOT_FOUND BAD_BASE NOT_FINITE`; `Format`, `ParseInt` and `ParseUint` take a `Radix` - 2 to 36, or 0 - failing with
  `TextError.BAD_BASE`, a literal one decided while compiling, `Radix(10)` written out included), `ArrayError.NOT_FOUND`, `ChanError.CLOSED` on a Send,
  `StatsError`, `RandError`, `JsonError.UNEVEN`, `NumberError.NEGATIVE` (a signed integer's `Sqrt`). Language guarantees still abort.
- **Catch clauses (R9a/R9b, R11, the user's calls).** Any number, in order; an item-less `catch` takes the rest; in
  value position each clause leaves or gives its own `default`; a default belongs to its clause, and errors no clause
  names propagate. `try f() default d` is gone. A reference default lives exactly in the result's scope.
- **Error types are declared as types; named sets; a clause names what it took (T19, T19a, R11b, R3a, 2026-10-25, the
  user's decisions QAM and the clause-only names of the same day).** `type IoError error { FULL, DENIED }` (the
  listing rule; at least one word) replaces `error IoError { }`; `type LoadError error os.Error, ParseError { TIMEOUT }`
  is a **named set** - members (error types, words, sets, flattened in order) and optionally words of its own, its own
  type then the last member of its own set; one grammar `type Name error [Member, ...] [{ WORDS }]`. A set is written
  wherever an error set is (`? LoadError`, `fn(I64) ? LoadError` - so no parentheses in a list -, trait methods,
  `catch LoadError`) and is the same set as its members written out (the same function type); never a code space of its
  own (R6 codes per member type, expanded in `generic.errorList`). A set reaching itself, a word repeating a member's,
  a word declared twice and a member naming nothing are errors (the last two, and `? Pt` with `Pt` a struct, and an
  unknown error type in a function type or a lambda's set, were never reported - fixed). **`catch os.Error e { }`,
  `catch A, B e`, `catch e`** (one bare item naming no type is the name - names.LoneCatchName; a misspelled type is
  caught by the rule that a clause's name must be used) name the error the clause took (an error value, below, never null and never assigned): `$e` (`os.Error.DENIED`, qualified as errors print, B5), `e == Word`/`e == Type`/`e == Set` (each side
  something it can be), narrowing after such tests (as S8d: in a branch, after a leaving `if`; `and`/`or`/`not`
  combine), `match e` (read as the if-chain it is; exhaustive or `nomatch`/`case _`; a value form with `=>`), `error e`
  (R3a, held to the function's set by what narrowing leaves). Representation (mine): the name is a hidden `I32` local holding
  the code recoded to the clause's own set (canonical order), assigned where the clause is entered (lowering's
  `toClause`), so the evaluator and `interpret` need nothing new; `error e` is `typed.Stmt.Reraise`, recoded to the
  body's set. Decided (mine): a spawned call's clause names no error (it is a lambda on the task's thread - an error
  naming it); a value `match e` gives every value with `=>`; a case after the cases cover everything is an error.
  `tools/errortype_migrate.olang` (text, idempotent, last of `olang fix`'s text tools) rewrites old declarations.
- **Errors as values (T20, R3a, R11b, 2026-10-26, the user's option (b)).** An error type or a named set is a value's
  type everywhere but a function's result (alone, among several, or in a function type - T20's error names `?`):
  parameters, fields, locals, globals, elements, type arguments (`List<LoadErr>`, `Map<net.Error, I64>`); no unnamed
  lists there. Values: words written, `null` (no error, the zero value), a catch clause's name (copied where it goes).
  `==`/`!=` with words, types, sets, `null` and other values (each side something the other can be), narrowing (S8d,
  null S8e), `match` with `case null` (an error where the value is known non-null: a catch name, a word, a tested
  value), `$e` qualified as errors print, `null` for none, a supplied Hash, `error e` raising a held value - held to the
  function's set by what narrowing leaves; raising null stops the program as a failed check, `FILE:LINE: raised a null
  error`. No arithmetic, ordering or number conversion. A value of a wider set fits a narrower one only after narrowing.
  Representation (mine): the I32 code under its set's canonical order (module identity, then name), 0 for null - an
  interned `Kind.ErrVal` type over the set's entries; going between sets is `Rvalue.Recode`, which emit, the evaluator
  and `interpret` already had. `e is null` is the null test (E10c), as for references. R11b's "storing refused" rules
  went, and the cases pinning them became run cases. Since bulk review 3 (mine): Hash is by the error held (its type's
  identity and word), so values `==` across sets hash alike; an error type in a rendering's type is qualified as its
  values are (`Vec<lib.Both>[lib.LibErr.B]`); std/json writes a value as `$` does and reads it back by its word.
- **Errors are errors (the user's rule).** Nothing returns a value beside a flag: iterators fail with `Exhausted`
  (`Next() T ? Exhausted`), `Map.Get`, `Find`, `Pop` fail with their errors.
- **`main`**: no parameters or result, any error set or none (QU); an escaping error prints `unhandled error: T.W`
  (and its trace, S18d) and exits 1. `os.Args()`/`os.Env()` give the command line (B4a).
- **Where errors may be raised (R3, R10, R14).** `error` is valid in an ordinary function and a constructor, never in
  a `test` or `destruct` (a test's `try` may let an error out, which fails it, S16); the `try ... catch { }`
  statement discards the value. A constructor field that fails produces no instance. A run-time array length out of range aborts (D14b), out of memory aborts
  (D14c). `tools/errors_migrate.olang` migrates code (Try forms renamed, `try` to `checked`, `try` for what now fails);
  `tools/donefail_migrate.olang` moves code off `done`/`fail`/`abort`.

### Memory and scopes (§8)

- **Memory lives in scopes (O1, O2).** Each block is an arena, reclaimed in one step at its close; nothing is freed
  before (O8c); globals live in the program's scope (O1b). Allocas are in the entry block (O2c). The arena aligns by
  size, 64 at 64 bytes (O8a); aggregates take their own alignment. The chunk pool is per-thread size classes bounded
  by RAM/8 with an LRU, parked workers sharing the rest (O8b).
- **Scopes inferred, none written (QCB, the user's decision 2026-10-30: "Yes, do this scoping rework"; not built
  yet).** Every scope marker goes - `&x`, `&return`, scope arguments `f&x()`, `outlives` - and the compiler places each
  value in the shortest-lived scope every use allows (region inference over the whole program, as obligations already
  are; field and result scopes hidden parameters), a value kept longer built directly where it is kept. One rule keeps
  memory at today's best hand placement: no storage is extended past the loop turn or block that made it - a view of such
  storage kept longer is an error naming `.Clone()`/`$x`, never a hidden copy. A bare `&` (a reference) stays.
  **No manual scopes at all (the user, 2026-10-30: "make manual scopes impossible")**: there is no way to write a
  scope - no marker, scope argument or relation in the grammar; a removed spelling is simply gone (principle 4), so `&x`
  after a type is a syntax error like any unknown form, not a diagnostic about scopes. Markers are optional only inside
  the rework's branch, as its measuring step; master goes from today's markers straight to none. The rules below are
  today's until it lands.
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
  flows into what it returns, lives in the result scope - Go's escape analysis, static. The flow is read as SPEC states
  it, every callee by its checked body and a `try` changing nothing (2026-10-23: the two cautious readings the port
  copied from stage 0 for parity reverted, HISTORY.md "Port: the parity readings reverted"). A constructor field
  given a conditional or a match is the instance's slot, each value judged as stored there alone (C2d, E28); a choice
  of new values and constants passed as an argument is a temporary, built where the parameter's scope is bound - for a
  constructor, with the instance (2026-10-24, uafcc).
- **Lending (O17, O17a, O17b).** A value whose references live elsewhere than its storage is lent only to callees that
  keep nothing in it, read off their bodies; a handle (a struct of one reference) is lent as its reference.
- **Derived and unknown scopes (O12, O23, O23a).** A `&p` field of a parameter reads at a derived scope resolved per
  call; a scope not known here (alternatives from different scopes) is read but never built into.
- **Constructors (C2d, C2g).** A bare field lives with the instance; an argument binds the instance only where the
  body can make it hold it; a constructor's top level allocates into the instance scope. A field given a lambda or an
  adapter is never "a local only ever called" (D16d's frame latitude): the instance is assembled from it, so the
  closure lives where what it captured does (2026-10-24, the unpar review's use-after-free).
- **Scopes belong to one thread (P2, decision 48).** A task's scope arguments are private stand-ins folded at the
  join; a closure that may build into a captured scope asks for its thread's part of it (`__olang_capture_scope`);
  reading closures pay nothing.
- **Letting go (O8d, round 3 of `docs/memory.md`, 2026-10-18; the user's QAB: "the user should not have to deal with
  it").** One rule: everything lives in a scope. Storage a place lets go of while it was its only holder (assigned,
  removed from its collection, a local given something moved out of one leaving its block) may be reclaimed then rather
  than at the scope's close - the compiler's optimization, unobservable but in memory, never running a destructor
  early (O15). A Vec's replaced buffer goes back to the thread's pool (no `mremap` growth). `own`, `take`, loans and
  borrowed copies (O30-O42, T25e, E34, built 2026-10-10 to -11) are removed from the language; the rule numbers are
  retired, and `docs/own.md` is the record. The runtime keeps its region functions, renamed `__olang_region_*` and
  driven from C by a checks scenario, for the port. **Round 4 (2026-10-25)**: the prelude says what it lets go of -
  `p.vacate()`, prelude-only like `retire()`, gives what a place holds and leaves it empty; List's, Vec's and Map's
  removals vacate the positions they empty and every shift moves with it, so no position past a collection's end holds
  a duplicate. Compiled as a plain read, so nothing changes at run time (a removal loop of them is deleted; callgrind
  over Pop/TakeAt/SwapTake/Insert/Truncate/Clear/Remove unchanged). Decided (mine): `Vec.Clear` is `Truncate(0)`;
  `SwapTake` of the last element moves nothing into its own place; `List.Clear`/`Truncate` vacate by counted loops, which
  the optimizer can delete. **Round 6 (2026-10-25): early freeing, in the port** (compiler/free.olang, after the scope
  pass, at the program's root). Candidate places are per type - a reference field, a handle field, an array type's
  elements; a sole one's values are built in regions of their own (a kid of the scope, the word before each object
  naming it) and each let-go releases one. Keep wherever a fact is missing: a function value, an extern, a module
  compiled on its own (B3i: only the root's object makes regions and releases), a task anywhere, a destructor or
  Str/Eq/Hash letting go; a view used after the let-go in the same function keeps too. `-memory` (B18) lists the
  program's places that keep and why. Measured: 2.7's five programs 118 MB-1.49 GB -> under 2.5 MB; a fixed array widened
  to a run-time value is now made where it is kept (it took a copy in the program's scope - 130 MB over 2M calls).
  Gate: the evaluator's dead-region mode (`OLANG_DEADREGIONS=1`) over the suite, the suite under `-sanitize`, and
  `fuzz free` (440 programs, ~4,900 places freed, nothing found; a planted unsound decision found in all 20 tried). **Round 7
  (2026-10-25): `x.Destroy()` (C9b)**, the user's QAD: runs the destructor of the instance a local names now and frees
  it, compiled only where the same analysis proves the local the only way left to reach it (made for it at a site, or
  taken out of a collection holding it alone; never stored, captured, handed to a task or to a call that may keep it;
  no other name used after), and the local is not read after it. std's resource types lose `Close()` (std/net).
  Destructor order is kept (O15): an instance in a region is registered on its owner scope's list - now doubly linked,
  O(1) unlink - and on its region's chain, which a release runs first. Decided (mine): a Destroy()'s target is a place of
  its own (free.olang's destroy targets); a collection whose values have destructors is a candidate that never frees on
  its own let-go but builds its values in regions when a Destroy() takes them out; a value taken out of one is destroyed
  only in root-emitted code (B3i); `defer x.Destroy()` works, and `errdefer x.Destroy()` lets `x` be returned; a return
  or error after it ends its path; a generator's yield is walked as a return's value and ends no path. Measured: 1M
  connections with destructors in a Map 50 MB -> 1.9 MB, 100k std UDP sockets under `ulimit -n 64` 1.7 MB. **Bulk
  review 1 (2026-10-25), fixed by "when in doubt, keep"**: a `yield` is a let-go of any place for what the generator's
  frame holds across it (F1); a value of a place is stored inside another value of it only as itself - same pure path in
  one statement - since a place key names every instance (F2); every fixed point runs to convergence, never cut at a
  round count (F3); a place whose made-for value's building may register a destructor in its region (a constructor's
  O16 temporary, a callee's built result: a may-summary per body) keeps, only `Destroy()` ending such early (F4); an
  extern call lets go of anything where an export fn may, and a program with an export fn frees nothing early (C may
  call it from its own threads, condition 3) (F6). Also: a generator resumed inside its own walk fails a guaranteed check
  (S20, one compare a Next; F5); an embed in std or a remote repository is judged by its real path (E38, F7); std/json
  keeps whole numbers an F64 cannot hold as `Json.Int`/`Json.Uint`, exact through Decode and Encode, U64's whole range
  (F8); a generator's contract is its first Next's, `ArgumentError` written among `Iterator<T ? E>`'s errors (D18, F9);
  `r.Destroy(); continue`/`break` in the loop that declares `r` ends its path (C9b); B18 names a walk's hidden local and
  a place by its own let-go; a captured caught name is one error (R11b) (F10). A built result returning a global's
  storage (bulk review over-rejection 13) stays refused - a built result is writable (T25c), so it would write the
  global - but at the return now (O14), naming the by-value result, not as O10c at a call with no arguments.
- **Recorded limits:** long-lived mutated structures holding values a task can reach still only grow (ledger QF), and
  values with destructors are freed only where a `Destroy()` ends them; a value `List<String&>` has one scope for chunks and referents (G11); a few over-rejections are left for the
  port's §8 pass.
- **More scope rules (O2d, O13a, O13c, O14b/O14c, O16, O18a, O20, O26).** A binding records the depth it was made at;
  each return in a loop is judged again by later assignments in that loop; a call's result carries its callee's result
  bindings; a by-value parameter's references returned are an obligation; destructors register once per constructor
  call and run at the instance scope's close, in reverse construction order; a by-value parameter's own storage is never
  returned as borrowed from it (O14, the frame's copy); a reference field's scope is its
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
  made builds faster, ThinLTO measured no better at this size; the port links a program of 8 MB of IR or more by
  ThinLTO with a cache, importing functions of at most 70 instructions - the compiler's own -O3 build 213 s -> 108 s, an
  edit 43 s; then round 7's 238 -> 176 s of CPU; round 8 measured the link at its floor for -O3 over this much IR -
  the import limit, the opt level, lld and smaller parts each no better without costing the compiler's speed - and a
  development build at -O2 without LTO, 20.8 s clean and 3.8 s for an edit inlined everywhere against 18 s, proposed
  to the user); `-debug` is `-O0` with DWARF; `-race` ThreadSanitizer; `-sanitize`
  the scope sanitizer (B2f: closed chunks poisoned and protected).
- **Targets (B12, the user's call):** native CPU by default, `-target NAME` to cross-compile; target
  constants `TargetOs TargetArch TargetCpu TargetVectorBits TargetHasFma`. No fast-math or contraction (the user's
  call).
- **Platforms (B12a, B12d, 2026-10-25, the platforms batch; details mine).** LLVM 18, 19 and 20 all build the suite
  unchanged - the IR olang writes is one all three read (nothing version-specific had to change). The clang is
  `OLANG_CLANG`, else a release's own (`../llvm/bin/clang` beside the compiler), else the newest of `clang-20`,
  `clang-19`, `clang-18`, `clang` on PATH. **Another architecture is built, linked and tested for** (it was `compile`
  only): `build` links with the cross C library clang finds (`/usr/aarch64-linux-gnu`) or `OLANG_SYSROOT`; `test` and
  running a file run through an emulator (`OLANG_EMULATOR`, else `qemu-ARCH[-static]` with `-L` the sysroot); only
  `interpret` and the analysis tools stay this-machine-only. aarch64 needs clang 19+ (LLVM 18's back end cannot select
  `bfloat`). Measured under qemu-aarch64 with clang 20: the whole corpus (shared.olang's 739 tests and the rest), std's
  and the prelude's tests and every checks case built for aarch64 pass (`make cross`), and the cinterop scenario runs
  `abi.olang` against GCC's aarch64 `abi.c` (AAPCS64, X11). Left out of `make cross`: std/os's two tests of a program
  that cannot start (qemu-user turns posix_spawn's failed exec into a child exiting 127) and std/ffi (no target libffi).
  **`make release`** packs the compiler built for the architecture's baseline, std, SPEC.md, editors, tools and clang
  with LLVM's libraries and their non-glibc dependencies (`llvm/`); `releasetest` unpacks it in a fresh directory and
  builds hello world with only `ld` on PATH. R9 names another module's error by its alias (`io.Error`).
- **Conditional compilation is a top-level `if` (B9-B10c, the user's design).** `-define Name=value` build constants;
  an immutable top-level global is a default `-define` replaces (B10c); a local `if` the build decides is conditional
  compilation too (S8b, the user's call); a constant condition not depending on the build is a dead-branch error
  (S8a).
- **Diagnostics are one row each (B11/B11a, the user's design).** `path:line:col: error[RULE]: message`, the source
  line and a caret, `note:` rows; source order, one error per cause; `olang explain RULE` prints the spec rule. **Did you
  mean (2026-10-26, the user's request):** every name that names nothing - a local, global, function, type, alias,
  field, method, case, error type or word, scope name, import, named argument, test target, option - ends its message
  with the nearest allowed name, ` - did you mean 'x'?`, within about a third of the word (case-insensitive edit
  distance); one helper, `msgs.Nearest` (mine: of two equally near, locals first, then aliases, then the module's and
  the prelude's names).
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
  (`compiler/eval.olang`) interprets the checked program with the run time's semantics and refuses only what it must
  (effects skipping would show, externs but libm, undefined behaviour, a step and memory budget). Whether a function
  is evaluable is a property of the function (K1a); a body that did not check - a global's initializer, a default - is
  no value to anything reading it, so one mistake is one error (2026-10-26). It must handle everything it can (the user's rule).
- **Constant contexts:** immutable globals are baked as data, references and arrays included (K2, K2b); an assert it
  can decide is checked while compiling (S18c); a condition the build decides (B9c, S8b); fixed locals (S8c).
- **Decided asserts (S18c, 2026-10-27, mine; fixing two bugs std2 found).** A true one loses its run-time check
  anywhere; a false (or aborting) one is a compile error only where every run of its body reaches it - in its body's
  statements or a block, loop body or join block among them, with nothing before it that may leave (return, a break or
  continue out, an error raised or passed on by a try whose clauses leave some of it, a clause or arm doing so, a
  yield); in a branch the build does not decide, an arm, a clause, deferred code or after such a statement it stays a
  run-time check (`try f() catch X { return }` then `assert false` in a test was refused). It had been decided wherever
  written. `typed.AlwaysReached`, check recording a try's leftovers (`Try.Left`). The error's message is rendered as the
  run time would: by reflection for the instance (`"field " $f.Name`, `check.reflText`) - a reflection-decided assert
  (G35) used to print its message's source - else by the evaluator, else written out, saying it reads what only the
  running program knows (an assert whose message read a plain local was not decided at all). std/order names the
  field with no order.
- **Tests the evaluator runs** sit beside run-time tests for every language change (the checklist above).
- **Refusals and agreements.** Refused: mutable-global reads, global writes, externs (but known libm, X8), tasks run
  in sequence at the join (allowed), atomics on non-global places (allowed), process endings, undefined behaviour,
  destructor-bearing values outside a global's own frame (K2c), anything past the step and 256MB budgets. Reaching
  `unreachable` where a value is required is an error at the place. Every disagreement with the run time found
  (by reviews and the differential fuzzer) is a bug fixed in the evaluator.
- **`interpret` is stage 1** (no memory reclaimed, no destructors, tasks in sequence); stage 2 is the port's M8, not built in
  C.
- **`embed PATH` (E38, the user's decision 2026-10-18; built 2026-10-25).** A file's bytes read while compiling: a
  read-only `Array<U8>&` of constant data, as a text literal is (T25d, one instance per site); text is `String(embed
  "f")`, a view. A prefix operator over a `unary` (mine). PATH is a literal or an expression reading no local, the
  latter evaluated after a check (`interp.decide`, alone in its round, then read in the next check); resolved as a
  relative import against the source file's directory, kept inside std or a remote repository (`load.Embed`, each file
  read once a compilation). B3i's module key holds each embedded file's hash, so a changed file rebuilds its module.
  **Decided (mine)**: every file is an LLVM constant, whatever its size - `.incbin` above 64KB was dropped, measured: a
  10MB constant compiles in 0.18s at -O3 and 0.32s under -flto (lower+emit 0.8s), and module asm would collide symbols
  across modules under full LTO; explain and doc cut a value over 400 characters, saying its length.

### std

- **Text is plain `String` with methods, no wrapper type (`std/prelude/text.olang`).** A literal, a slice and every
  rendering already are one, so methods reach all of them with nothing converted. `Eq`, `Find` (fails on a miss),
  `Split`, `Trim`, `Replace`, `ParseInt(base)`, `ParseFloat`, `PadStart`, `Lines`, `<` by bytes.
- **Math is the numbers' methods (M19d, 2026-10-18, the user's decision: "Yes let's do this. I want an integer power as
  well", "Also abs for integers"; std/math removed).** Every C math function is a method of every float, written once as
  a default over `Float` (`fn (x T) Sqrt<T Float>() T`, `match T` inside, X8's libm calls, so the evaluator computes
  them while compiling), the first C argument the receiver: `x.Sqrt()`, `y.Atan2(x)`, `a.Hypot(b)`, `x.Fma(a, b)`,
  `x.Pow(y)`, `IsNan`... `Abs`, `Min`, `Max`, `Clamp` over `Number` (IEEE on floats). Integers: `x.Pow(n U32)`
  (wrapping as `*`; `try arith.Pow(x, n)` fails where it does not fit) and
  `Sqrt()` (the user's name, not ISqrt: the floor of the root in the receiver's type, hardware sqrt plus a one-step
  correction, exact for every U64; signed fails with the prelude's `NumberError.NEGATIVE` - mine - unsigned cannot
  fail). Constants `Pi`, `Euler`, `Inf`, `NaN` are the prelude's, read by bare name everywhere and reserved (D3a);
  others are computed in place (`F64(2).Sqrt()`). Decided (mine): integer `Sqrt` is a concrete method per type (the
  two signatures differ); a type that only declares `Less` no longer has Min/Max/Clamp (nothing but std/math's own test
  used it - it declares its own); the methods live in `number.olang` beside the traits (M19: a default lives in its
  trait's module). Not done: a named constant adapting like a literal (`f F32 = Pi` is an error; `F32(Pi)` is written) -
  E4a covers literal-only expressions, not names. `tools/math_methods.olang` migrates (oann later).
- **The prelude's collections are Vec, Map and StringBuilder; List is `std/list` (M19d, QZ2, the user's decision
  2026-10-17, built 2026-10-26).** The prelude holds the built-in types' methods, the protocol traits and errors, `Vec<T>`
  (below), `Map<K, V>` (a handle; `Get` fails on a miss, `Take` is `Get` and `Remove` in one, `Update`, ordered walks by
  insertion of slot) and `StringBuilder` (now over a `Vec<Char>`); `String` and `Array` are built in. Every other
  container is std: `list.List<T>` (`import "std/list"` - chunked, never moves, a handle; `list.Of(a)`, `list.From(it)`,
  `list.Error`, `list.Iter`; `RunFrom` walks), `pair.Pair` (2026-10-17, the user's call: "Pair goes in Std not prelude"),
  set, deque, heap. Iterators (and arrays) have `Some Every` (renamed from `Any All`, the user's call 2026-10-24) `Count
  Fold Map Filter ToVec`, `Map`/`Filter` building a Vec (`a.ToVec()`, `it.ToVec()` replace `ToList`). Decided (mine):
  std/list vacates nothing (vacate stays the prelude's - "no module has a privilege the language does not give"), so a
  List's removals free nothing early; json still encodes and decodes `list.List` (it imports std/list); the type
  `ListIter` is `list.Iter`, `ListError` `list.Error` (the std naming rule). `tools/list_vec.olang` migrates: by
  default (and in `olang fix`) it keeps a List, qualified and imported; `--vec` moves code onto Vec, as the repository
  was (2,302 of 2,484 `List<` in 314 of 349 files - the compiler entirely, std but json and std/list, the corpus, the
  checks but the cases about a List). Found on the way, pre-existing: a Vec of `any` values or of possibly-null
  references could not grow (the prelude's `vacate` on such an element was read as a call through it - T32b, T2c);
  `$` of a `Vec<Char>` aborted (an array of Char renders as text, so Vec's Str found no `[`). Recorded limit: a
  callback handed elements holding references from a Str's receiver (`it.tags.Iter().Some(f)` over a `Vec<String&>`)
  is refused as building where the receiver lives (E11c); ListIter's own Some had let it through; a `for` loop compiles.
  QF: a Map whose Vec values are replaced and removed stays flat (checks' earlyfree `mapvec`, under 8 MB for a million
  replacements) where each Vec is made by a call handed to `Put`; one first named by a local in the Map's scope (`v mut
  Vec<I64>&m = ...`) is kept until that scope closes (131 MB) - a recorded limit of early freeing.
- **`Vec<T>` is the default growable array, and a handle (M19d, round 1 of `docs/memory.md`, 2026-10-17; the user's
  QAB, approved in advance).** Its record (buffer and count) is made where it is constructed; a copy is a second name,
  `Clone()` a Vec of its own; it is a type argument, field, global, capture or task argument like any value. Growth
  doubles (8 first), the new buffer made by the prelude-only `a.grown(n)` - the elements moved in, the room past them
  never filled, so no zero value is needed and a doubling writes each byte once (2026-10-26; it was filled with the
  element being stored first) - and retires the old buffer, which stays where the Vec lives until that scope closes - so a view taken before a growth reads the old
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
  `io.PrintErr`, `io.PrintErrln` fail with `io.Error` and are written with `try`; no std function ends the program on
  its own. The prelude's print words are gone. `io.Writer` buffers (errors at `Flush`); `io.Lines` reads lines.
- **Libraries:** `std/os` (files, Exec without a shell, Start/Process, RunOnStack, OnCrash, MkTemp, RemoveAll),
  `std/json` (immutable recursive enum tree, exact numbers), `std/http` (over curl), `std/csv` (strict), `std/stats`,
  `std/rand`, `std/time`, `std/filepath`, `std/cancel`, `std/chan`, `std/ffi` (libffi).
- **std breadth (docs/survey.md items 7-8, the user: "Yes all of that", 2026-10-24; names mine, the user's naming rule:
  a module's other names drop its prefix - `net.Error`, `regex.SyntaxError`).** `std/sync`: `Mutex<T>` reached only
  in `m.With(fn(v mut T&) { })` - no lock/unlock pair - or `Update(fn(v T) T)` for a number (no primitive references),
  `RWLock<T>` (`Read`/`Write`), `Once`; each a handle over pthread words that start zeroed, `-race` clean. `std/time`:
  `Duration extends I64` (`Millis(5)`, `d.Seconds()`, `$d` as Go's `1h2m3.5s`), `Sleep`, `Date` with RFC 3339
  `Format`/`Parse` (fixed offsets only - no zone database). `std/net`: blocking TCP (`Listen`, `Accept`, `Dial`, `Conn`
  with `Read` failing `CLOSED` at the end of the stream, `Write`, `SetTimeout`) and UDP, IPv4/IPv6 (`ParseIP`, RFC
  5952 text), destructors closing descriptors; names resolved by `Lookup`/`Resolve` over getaddrinfo (X10/X11) - X6's
  `__olang_err` gained socket classes 7-13. `std/set`, `std/deque`, `std/heap` (a `less` function), handles all.
  Prelude iterator adapters `Take Skip Enumerate Zip Chain Sum Min Max MinBy MaxBy` (empty: `Exhausted`); the second
  survey's walks (2026-10-26, below) `TakeWhile SkipWhile StepBy FlatMap Partition Reversed`, an array's `Windows`. `std/utf8`
  (`Rune extends U32`, strict `Decode`, `Runes` walking bad bytes as U+FFFD as Go does), `std/base64`, `std/hex`,
  `std/sha256` (1.1x a plain C SHA-256), `std/crc32`, `std/flags` (handles per flag, `--help` text, `flags.Error`),
  `std/regex` (RE2's syntax, linear time: a lazy forward DFA finds a match's end, a reversed one its start, the Pike
  VM gives groups; level with glibc's regexec on bench/regex). Language gaps found are in HISTORY.md.
- **`std/bitset` and `std/order` (survey2 items 3-4, the user 2026-10-26; details mine).** `bitset.BitSet<T>` holds an enum's cases
  in one `U64` (bit k the k-th case), a plain value; the constructor asserts, decided per instance, that T is an enum of at most 64
  cases with no payload. `x in s`, `Add`/`Remove` (say whether it changed), `Len`, `Has`, `Empty<T>()`, `Full<T>()`, `Of(array)`,
  operators `| & - ^` (union, intersection, difference, exactly-one; no `+`: one spelling), `Complement`, `IsSubset`, `for c in s` in
  case order, `$` as `BitSet{Color.Red}`, `==`/Hash by the bits; `Bits()`/`FromBits` (case-index bits, failing `bitset.Error.OUT_OF_RANGE`
  past the last case), `Flags()`/`FromFlags(w)` (OR of the raw values of an integer-raw enum, T17e). `order.ByFields<T>(a, b)` is the
  `less` an array's or Vec's `Sort` takes (`xs.Sort(order.ByFields<T>)`): a struct by its visible fields in order, an enum by case then
  that case's fields; a field by `<` (numbers, Bool, Char) or its own `Less` (text included), else a struct or enum in turn, anything
  else a compile-time error naming the type.
- **The second survey's walks (M19d, docs/survey2.md 1.5, 2026-10-26).** Iterator defaults beside Take/Skip:
  `TakeWhile`, `SkipWhile` (keep not called again once it has said no), `StepBy(n)` (a `StepSize`, checked as a
  `ChunkSize` is - `StepError.BAD_STEP`), `FlatMap(f)` (f gives any iterator; the inner walk held in a `Vec` of one,
  since a walk may have no zero value, D13c) and `Partition` (two Vecs as two results); `Reversed()` on any `At`+`Len`
  type (a Vec) and on arrays and text (`ReversedIter`, measured level with the index loop: 50 x 10M sum 171 ms against
  185, Horner 847 against 874); an array's `Windows(size)` (read-only views, Chunks' shape), `TakeWhile`/`SkipWhile`
  (views) and `Partition` (two arrays). Each fails with what its iterator and callbacks fail with (`<T ? E>`), is
  evaluated while compiling (a baked global in std/prelude/tests/iterator.olang) and has B7a examples on its iterator
  type. Decided (mine): the struct adapters copy their iterator as the others do; FlatMap a struct, not a generator (a
  generator cannot yield references its inner walks hold); an array method or an Iterator default could not be a B7a
  target (only a named type's method could then), so the examples named the adapter types - they name the methods since
  the checker batch (`Iterator.TakeWhile`, `Array.Reversed`).
- **`a.Chunks(size)` (M19d, P8b, 2026-10-17).** Every array cut into consecutive writable slices of at most `size`,
  held in an array living where the receiver does (Split's shape: an iterator's pieces would live where the iterator
  does, which P2 rejects as a task argument), so `join { for part in a.Chunks(4) { spawn work(part) } }` cannot race.
  `size` is a `ChunkSize` (a Radix-like checked `I64`, `ArrayError.BAD_CHUNK` below one; a literal checked while
  compiling). Arrays only for now; Vec later (another branch is reworking Vec).
- **`extern fn` and C interop (X1-X16; v2 the user's design 2026-10-24, details mine).** Across the boundary: Bool and
  every numeric primitive (F16/BF16 as `_Float16`/`__bf16`, ext attributes per architecture), arrays of them (a
  pointer), **extern types** (`extern type Db`: held as `Db&`/`Db?&`, passed back, compared, null-tested, never read or
  built, C may return them; outside section 8's tracking, as numbers - X10), **plain-data structs** by reference and by
  value, classified by `compiler/cabi.olang` as clang 18 passes them on x86-64 (System V) and AArch64 (AAPCS64), tested
  against clang (X11). `link "name"` (`-lname`, or a path beside the module, X9) - since 2026-10-26 only on an extern block or a C import
  (the C-imports entry below). **Callbacks are `export
  fn`s only** (X13): C is given an export fn by name - a C entry with no closure that sets up olang's per-thread state
  the first time C calls on a thread it made (one load and compare; that state is never released, a recorded limit) -
  context through the user data argument. `build -library` (X14) makes `libNAME.so` (only the export fns visible,
  globals set at load in B5a's order, a fresh scope per call) and `NAME.h` (stdint types, opaque typedefs, plain
  structs, arrays as pointer and `int64_t` length, a fallible entry returning an `int32_t` code - library-wide, `(type
  position from 1 << 16) | word`, `NAME_TYPE_WORD` constants - with its result through a pointer, an array result
  copied into a caller's buffer returning its length); Python reaches it by ctypes. `t.ToC()` and `p.StringFromC(max)`
  over the prelude's `CStr` (X15: not `String.FromC(p, max)` as decided - no type-level functions, E33's precedent).
  `olang bindgen HEADER.h` (X16) writes a header's declarations from clang's tree, macros' values computed by clang;
  `interpret` loads the linked libraries; since 2026-10-26 it passes extern types and plain structs by reference too,
  refusing a struct by value (B3e). Still no extern variables, and
  the X1a hole stands. C math functions with their exact prototypes are known and evaluated while compiling (X8).
- **std API details.** `Vec`, and std/list's `List`: `Push PushAll Pop First Last Clear Truncate Insert RemoveAt
  SwapRemove IndexOf Remove Reverse Sort Join ToArray Clone`, `v[i]` unchecked, `try v.Get(i)` checked (a List's first
  chunk held on its own). `Map`: `Put Get
  Has Remove Update Keys Values Clear Clone`, removed slots reused, a key needs `Hash` and `==`. Text: `Split` borrows
  the receiver, an empty separator splits into characters; `Replace("", x)` inserts at every position; `ParseInt(0)`
  reads olang literal syntax; every base is a `Radix` (`TextError.BAD_BASE`, a literal one decided while compiling);
  `x.Fixed(n)` as `%.*f`, exact; `n.Format(base)`. `io.Writer` never fails on Write - the
  first refusal is remembered and every `Flush` fails with it; `io.Lines` ends a line at `\n` or `\r\n`. `os.Exec`
  captures through memory files; `chan.Send` on a closed channel fails with `ChanError.CLOSED`; `std/csv` is RFC 4180 strict;
  `std/stats` uses the sample variance and numpy's percentiles. `Array.Sort` is a stable O(n log n) merge.
- **Names in std are mine unless marked**; the user's: `Map` (not Dict), `Mul`, `extends`.

### Codegen and runtime

- **The runtime is `std/runtime/*.ll`, compiled once per configuration and linked once (B3, X7).** Inline bodies go to
  every module `available_externally`.
- **Representation choices**: a function value is a code/environment pair crossing calls as two words; aggregates over
  128 bytes go through memory; one `ret` per function; enum payloads are whole words; integer `$` without snprintf.
- **No per-operation run-time checks (the user's rule).** Checks are per construction (slice bounds, array length) or
  opt-in by a named call that fails (`try a.Get(i)`, `try x.Narrow<I32>()`, `std/arith`).
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
  **The suite runs side by side (2026-10-24, mine; HISTORY.md "The edit-test loop")**: every test file is a make target
  of its own (`test@FILE`, `PARALLEL` at a time, the longest first, the gigabyte-sized builds in two lanes), with the
  runner and the diffs beside them (`make suite`); builds sharing a directory claim each object (B3k) and the checks'
  builds share a store of objects (B3j, `OLANG_OBJECTS`). `make quick` is the edit-test loop - the suite on the compiler
  already built, rebuilt once by itself - and leaves out only the clean build, the seed bootstrap and its fixed point.
  `make verify` (clean, `boot`, `suite`) stays the gate; `boot` reuses a bootstrap only of exactly the same inputs (the
  seed, compiler/, std/, the makefile, clang, the CPU, the checkout's path) that passed before (`.bootcache`).

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
  plan, which lowering reads; `make scopediff` measures it against stage 0's goldens - round 7: every program stage 0
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
  `nomatch` (G15 already checks per instance). Decided (mine): the keywords go after `trait`, `extends` before `for`;
  an intersection is held as a tuple of traits, each checked; a method a binding lacks from an extended trait is
  named with that trait (`Rooms (House's)`); no inline type lists (additive later, decided).
- **Contracts (D17-D17g; the user's design 2026-10-24, revised by the user 2026-10-25; details mine).** One bracketed
  block right after the parameter list: `fn pick(x I32, y I32) [y > x] I32 ? ArgumentError { }`, `fn between(lo I64,
  hi I64, x I64) [hi >= lo, x >= lo and x <= hi] Bool`, `fn link(a mut List<Node&>&, b Node&) [b outlives a]`,
  `type Percent struct(v I64) [v >= 0 and v <= 100] { v }`. A condition is any `Bool` expression over the parameters and
  what a body reads at its top level - calls, fallible calls, lambdas included. **Checked on entry in every build**, in
  order: a false one fails the call with the prelude's `ArgumentError.INVALID`, its trace line and `!`'s message naming
  the function and the condition (`pick: y > x`) - in every build, a build keeping no trace keeping that one line (a
  thread-local write where the condition is false, cleared where a clause takes the error; 2026-10-25); an error from a call inside a condition leaves as itself. So
  `ArgumentError` is in the function's set: a bare `?` infers it, a function with no `?` has it, a written set must list
  it (an error naming it otherwise); every call needs `try`/`catch`/`!`. Decided while compiling where the evaluator can:
  at a call whose arguments are all values it computes a false condition is an error at the call - unless a `catch`
  there takes its `ArgumentError`, when it fails at run time as written (a test of the failure path; 2026-10-25, the
  lang25 review, reversing "whatever handles it"); where the evaluator runs a call (a baked global, a decided assert) the conditions are checked as at run time.
  `outlives` chains are compile-time obligations only (O10b), so such a function is no value (T22a); one with value
  conditions is a value, checked on entry through it. A trait method's contract is checked before a call through an
  `any` dispatches, then the implementation checks its own. **Removed 2026-10-25**: the position after the signature,
  guarantees, named results, `return x` entry values, `for`/`if`/`fits` items, `checked f(x)`. D17g stays: a
  conversion of a value the evaluator computes that does not fit (`U8(300)`) is a compile error naming
  `x.Narrow<T>()`. Decided (mine): a requirement body per condition, its error set inferred; a trait's conditions held
  caller-side before dispatch; the compile-time decision reports the first false condition per call; a false
  requirement's trace line is the condition's (`FILE:LINE: f: cond`), `!`'s own line `ArgumentError.INVALID`.
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
  its type qualified as source writes it outside the module (`unhandled error: io.Error.FAILED`, B5; see the next entry). `tools/stutter_rename.olang`
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
  call the compiler themselves; `olang format` is a linked module only because the formatter is a library of the compiler
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
  before it: `io.Error.FAILED`, `http.HeaderError.MISSING`. **Decided (mine):** the prelude's types stay bare
  (`ListError.EMPTY`), and so do the root program's own (`Bad.WORD` for a `Bad` in the file being run - from outside it
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

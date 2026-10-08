# olang design principles

olang is a custom programming language. C-like structure, with quality-of-life improvements over C.
Error handling is modeled on Zig (explicit error sets/unions, no exceptions). Longer-term direction:
Rust-like compile-time memory/security guarantees (underway - see the ownership-scopes entry in
Settled decisions below; scope-containment is checked at compile time, a general borrow checker is
not).

This file is a living design record, kept terse on purpose - it is not a spec (see `spec.md` for the
normative, current-state language reference) and not the full story either (see `HISTORY.md`
for the complete discursive record behind every entry below: why each decision was made, what was
tried and reverted, what bugs were found and fixed along the way). Whenever a design decision is
made, implemented, revised, or reversed: write or extend the full entry in HISTORY.md in the
same session, and keep the short current-state summary below in sync with it - don't let either
drift out of sync with the actual code.

## Claude's memory

What Claude has learned working with the user - their standing rules (`feedback_*`), their direction for the
language (`user_*`), and the project's state and open questions (`project_*`). The files live in `.claude/memory/`
and are imported here, so every session starts with them. Keep them current in the same commit as the work, as
with this file: a new standing rule or correction from the user gets a `feedback_` file and a line in the index,
and every question put to the user goes into the pending-decisions ledger when it is asked.

@.claude/memory/MEMORY.md
@.claude/memory/feedback_errors_are_errors.md
@.claude/memory/feedback_keep_evaluator_current.md
@.claude/memory/feedback_keep_old_tests.md
@.claude/memory/feedback_maintain_claude_md.md
@.claude/memory/feedback_no_askuserquestion_for_design.md
@.claude/memory/feedback_no_claude_attribution.md
@.claude/memory/feedback_no_runtime_checks.md
@.claude/memory/feedback_numbered_questions.md
@.claude/memory/feedback_record_flagged_decisions.md
@.claude/memory/feedback_style_form_conciseness.md
@.claude/memory/feedback_surface_and_fix_bugs.md
@.claude/memory/feedback_usage_and_agents.md
@.claude/memory/user_olang_natural_language.md
@.claude/memory/user_dictation.md
@.claude/memory/project_olang_concurrency_gaps.md
@.claude/memory/project_olang_next_steps.md
@.claude/memory/project_olang_open_language_gaps.md
@.claude/memory/project_olang_pending_decisions.md
@.claude/memory/project_olang_vec_growth_question.md

## Checklist for every language change

Go through this for every change to what olang means - a rule added, revised or removed - before calling it done:

1. **Spec first**: write or revise the rule in `spec.md`, grammar included.
2. **Checker and codegen**: implement it so the code conforms to what was just written.
3. **Compile-time evaluator** (`comptime.c`, K1): give it the same semantics - never leave it refusing or diverging
   from the run time. Prove the two agree with a test the evaluator actually runs (an `assert` it can decide, S18c,
   or a global it bakes, K2) beside the run-time test.
4. **Tests**: corpus tests for what now works (read back after an arena churn where scopes are involved), and
   `checks/cases` programs for what must now fail, each naming the expected diagnostic.
5. **Migrate the corpus and `std`** when the change invalidates code; keep old tests unless the change invalidates them.
6. **Diagnostics**: new errors name the rule and say what to write instead; reword any message the change made stale.
7. **Record it**: the current-state entry below, the full story in `HISTORY.md`, and any question left open in the
   pending-decisions ledger (`.claude/memory/project_olang_pending_decisions.md`).
8. **`make verify`** passes, then commit.

## Settled decisions

- **Value vs. reference semantics (`&`/`&name`).** A struct or fixed/runtime-length array is a value type
  by default - `==`/`!=` do a structural (deep, memberwise/elementwise) comparison. A trailing `&`
  (bare) or `&name` (named) marker on a struct or compile-time-length-array type reference makes that level
  heap-indirect/reference-shaped; `==` on a reference is pointer identity, and `&` is the only way a
  struct can embed itself (breaking an otherwise-infinite-size cycle). **Whether an array is reference-shaped is decided by
  the marker and nothing else, identically for `T[N]` and `T[]`** (T11): a difference in when the length
  becomes known is a difference in *representation*, never in behaviour (so a bare `T[]` does not mean `T[]&` - declined 2026-10-01). The `&` denotes scope-tagged heap indirection and is
  deliberately *not* an address-of or a borrow - there is no pointer type, no unary `&`, and the
  §8.4 check is scope-containment, not a borrow check. The marker's spelling went through four
  iterations (`{}` → `&` → `{}` → `<>` → `&`); the last move exists to free `<>` for generic type
  parameters, and voided `<>`'s own two justifications at once - that it "reads the way a
  type-parameter annotation does in most other languages" (unhelpful once the language has real
  ones) and that `parseTypeRef` is only ever reached from a known-type position, never from
  expression parsing (a premise generics void, since generic calls and literals *are* expressions).
  The one hazard the unbracketed form introduces - a bare `&` ending a line swallowing the next
  line's identifier as a scope name, since `&` triggers no `STMNT_END` - is closed by requiring the
  scope name to begin on the marker's own line. Full history in HISTORY.md.
- **`error` statement.** `error TypeName.word` selects the error part of a function's declared
  return union. The named error type must appear in the enclosing function's signature, and `word`
  must be one of that type's declared members. Only valid inside an ordinary function body - not in
  a `test { }` block or a constructor, neither of which has an error union of its own.
- **Compilation modes, and separate compilation (§10, rules `B1`-`B8`).** The prefix is `B`, not `P`:
  §6.8's concurrency rules had claimed `P1`-`P5` independently, so every number in the range named two
  different rules at once - harmless in prose, where the section disambiguates, but not in code comments,
  where `//P3:` in `main.c` and `//P3:` in `semantic.c` meant opposite things with no section around them.
  **Each module is its own compilation unit**, compiled
  to its own object file and linked. `olang -c file.olang` compiles that one module to `build/<name>.o`
  and stops - `-c` means what it means in every other compiler. `olang -b file.olang` is the build
  driver: it compiles every transitively reachable module (skipping those whose objects are current) and
  links one executable; `main` is required only here. `olang -t f1.olang f2.olang ...` runs each listed
  file's own `test { }` blocks as independent, isolated builds; one broken file doesn't stop the others.
  **A module's imports are resolved from their source** - there is no interface/header/metadata file and
  none is generated, so a prebuilt library is its sources plus its objects. That is not just convenience:
  a function's scope obligations (§8 O10b) are derived from its body, so an interface would be carrying a
  fact only the source is authority for. **Staleness is transitive**: an object depends on the signatures
  it was compiled against, so it rebuilds when its own source *or any source it transitively imports* is
  newer - compared at nanosecond resolution, since a whole-second compare silently skips a rebuild when
  the edit and the previous build land in the same second - **or when the compiler binary itself is newer
  than the object**. Nothing else records which compiler produced an object, so without that last clause a
  rebuilt compiler left every existing object looking current: a changed code generator was simply not
  applied, the stale object was reused, and a fix appeared not to work. That cost real debugging time twice
  here, the second time convincingly disguised as compiler memory corruption - the same program passed or
  failed depending on the length of a test's description string, because the edit forced one file's rebuild
  and not another's. The compiler's own path comes from `/proc/self/exe`, which resolves whatever PATH
  lookup or symlink was used to reach it (argv[0] does not); where that cannot be read the check does not
  fire, which is the behaviour that existed before. A root module's object carries `main` (or the
  test harness) on top of its own code, so it is a *different artifact* from that module's plain object
  and is named `<base>.main.o`/`<base>.test.o`: without that they overwrite each other, and a plain object
  left by `-c` looks current to `-b` while missing `main` entirely - which is why the root used to be
  force-rebuilt every time. Two modules whose base names match are a compile-time error, reported against
  the file rather than left to surface as a duplicate symbol at link time. **A declared module identity
  (`module util`, à la Java packages / Go module paths / Rust crates) was considered and deferred**: it
  decouples identity from file layout, but two files declaring the same name collide exactly as before,
  so it does not solve the problem on its own. What actually makes accidental collision unlikely is
  hierarchy plus an owner (reverse DNS, a repo URL, a registry) or a build-supplied disambiguator (Rust's
  `-C metadata`), and both belong to a package boundary olang does not have yet. Within one program every
  file is yours to rename, so base name plus a hard error is adequate until a third-party library you
  cannot rename exists - at which point identity and packaging should be designed together. **They now have
  been (M22, below)**: identity is the base name for local code and the whole import path for std and remote
  packages. Two things had to change before any of this
  worked: symbols are mangled from the module's **identity** (for a local module the same base name M4
  derives an import alias from), never from its position in the current compilation's module list - an
  index means nothing to a separately-compiled object; and the runtime, which no single module owns, is
  emitted by every object as `linkonce_odr`, leaving the linker to keep one. **Initialization order was wrong until
  2026-09-29 (B5a)**: the module list is in *discovery* order - a module is registered before its imports
  load, which is what lets a cycle close - so it put the root first, and a root's global initializer read
  its imports' globals before they were set (0). The init calls now follow a post-order walk of the import
  graph. A comment had claimed the list was already that order, which is how it survived. **A generic's instantiations
  are defined by the ROOT object only (B3d)** - they used to be emitted into every object too, which made
  an ordinary module's object depend on the program it was built in (see M22). Globals initialize per module, imports before
  importers; within an import cycle the order is unspecified, so an initializer must not read another
  module's global from inside one.
- **`test "description" { }` blocks.** Zig-style, top-level declaration, only usable/run under `-t`.
- **`assert EXPR` is a statement, not a function call** - usable in any function, test, or
  destructor body, not just inside `test { }`. `assert cond` and `assert(cond)` are identical (the
  parens are just an ordinary parenthesized sub-expression). Outside `-t`, a failing assert hard-
  aborts (like C's `assert()`); inside a `test { }` block it's a soft, recoverable failure - that one
  test is marked failed and the rest keep running.
- **Function signature order: return value first, then `?` error set.** `fn f(params) [RetType]
  [? ErrA [+ ErrB ...]] { }` - the return type, when present, is bare (no marker of its own) and
  comes first; the error set, when present, is what the `?` now marks, and comes after. `main`
  follows the same rule (`fn main() ? SomeError { }`, no return type ever). A constructor's
  error-list carries the same `?`, directly after its parameter list
  (`type T struct(params) ? ErrA { }`). It has no `ret-type` slot for the marker to disambiguate
  against - that is why it *could* be bare, and was, until the arbitrariness outweighed the saving:
  one spelling of an error set now holds everywhere in the language. Reversed from
  the original order (`[ErrList] [? RetType]`, error set first, return type marked); user-driven,
  purely a syntax change, no effect on the error-union return ABI below or on any other semantics.
- **Error-union return ABI.** Zig-style, but with *locally*-scoped codes: a fallible function's LLVM
  return is `{ i32 code, T payload }` (bare `i32` with no success type); `code == 0` means success. A
  nonzero code packs `(typeOrdinal << 16) | wordOrdinal`, both ordinals computed purely from *this
  one function's own* declared error-list and *that error type's own* declaration - never a
  whole-program numbering, so an unrelated error type declared elsewhere never shifts another
  function's codes. Propagating an error under a different function's signature is a decode-then-
  re-encode, never a raw passthrough.
- **`try`/`catch`.** A bare, unhandled call to a fallible function is a compile error. `try f(...)`
  is an expression that propagates on error (the enclosing signature must cover everything `f` can
  produce). `try f(...) catch A + B.word { }` is a statement - pure control flow, the caught error is
  never bound to a value. `catch Type` (bare) matches every word of that type; `catch Type.word`
  matches only that word; `+` combines multiple items into one set. Coverage is judged at the
  *callee's declared signature* level, not what it happens to handle internally. Usable inside a
  `test { }` block, or a function declaring no errors at all, as long as everything the tried call
  can produce is fully caught right there.
- **Catch clauses, in statements and in value position (R9a/R9b, R11/R11a).** A `try` takes any number
  of clauses, `catch [items] [block] [default v, ...]`, tried in order; an item-less `catch` takes every
  error left and must be last; a clause everything of which an earlier one already took is an error.
  **In value position** (`x := try f() catch ...`) each clause ends by **provably leaving** - D10a's
  structural rule, plus `break`/`continue`, which leave the expression as surely - or by giving the value
  with **its own `default`**, evaluated after its block and only on that path. Never both (a default after
  a block that always leaves is dead and rejected) and never neither (the value would be undefined - the
  user's question that started this). **Errors no clause names always propagate**, with or without
  defaults, so the only way to swallow everything is to write `catch default ...`. In a statement a clause
  falls through to after the statement and takes no default (nowhere for a value to go).
  **How it got here - three rejected variants, all the user's calls.** R9a first shipped as
  `try f() default d` with no catch. Adding catch to value position then went: default *first*
  ("eats" the error before the catch sees it); default after a catch covering only that catch's errors
  (inconsistent - the bare form swallowed everything, the catch form propagated the rest); "a default
  means nothing escapes" even beside a catch ("this is bad too"). The root cause was that the bare form was
  an implicit catch-everything. The fix is that **a default always belongs to a clause** - so what it
  covers is whatever the clause to its left names - and catch-everything is written. The user chose to
  drop the shorthand: `try f() default d` is a compile error naming `try f() catch default d`.
  Several clauses was the user's suggestion; it is what let each clause carry its own outcome.
  A clause may begin on a following line - no statement starts with `catch`, so line ends in front of one
  are skipped - which is what makes a clause-per-line layout possible at all.
  It works on every `try` operand: a checked index or slice fails only with the bare error, so
  `try a[i] catch default 0` / `catch error default 0` is a bounds-checked index with a fallback.
  **Two grammar decisions** carried over from R9a. Each default is a *unary*, binding as tightly as `try`
  (a primary), so `if try f() catch default 0 == 3` compares the result; a compound default is
  parenthesized. And several defaults (one per result of a multi-result call) are read only where the
  `try` is the **whole** value of a destructuring or a `return` - the parser records that start position -
  because `g(try f() catch default 3, 4)` would otherwise be ambiguous. D8c already made a multi-result call
  illegal as an argument, so that restriction loses nothing.
  **A reference default must live in exactly the result's scope** - the user's framing: it is fine
  whenever the reference could be put in that variable by the normal rules, and since O25 forbids narrowing
  that means *equal*. Then both paths share one scope, no O13b meet is needed, and a target treats the
  `try` exactly as the call alone. `null` always fits; a temporary is built in the result's scope. The
  result type is checked **as seen from the caller** (callee scope variables replaced by the call's
  bindings), which is also what codegen allocates a temporary against - so no codegen special case. The
  first version accepted only `null`; that was over-cautious, since equality is checkable right here.
  Still excluded: a by-value result that *holds* references (its per-variable bindings would all have to
  agree).
  **Codegen** is one slot per `try` that has any default, the success value stored on one path and each
  clause's default on its own, joined after; one dispatch routine (`cgCatchDispatch`) serves a call's error
  code, a bounds check's statically known bare error, and the statement form.
- **(superseded 2026-10-05 by the default error, below) The bare error: bare `error` reused as an error-list item, an `error` statement's own operand,
  and a `catch-item` - no new keyword.** Stands for "this failed, no further detail is tracked" - a
  real member of a function or constructor's own error union that names no declared error type at
  all. `fn f(...) ? MathError + error { }` mixes it with named types via `+`, same as any two named
  types; bare `error` (no `TYPE.word` operand) as a whole statement produces it; `catch error { }`
  matches only it, never a named type sharing the same union, and never takes a further `.word` (it
  has no addressable word of its own). Internally it's an ordinary error type with exactly one
  synthetic word, so ordinal encoding, propagation, and `try`/`catch` coverage need no special-casing
  at all - the entire feature reuses the existing generic machinery unchanged, needing only a handful
  of dispatch points in the parser and `resolveFuncSig`/`buildErrorStmnt`/catch-item resolution to
  recognize the bare keyword. Deliberately narrower than it might look: it is *not* a wildcard that
  catches whatever a callee happens to produce regardless of its declared signature - a callee must
  actually declare `error` for a caller's `catch error` to match anything at all, the same as for any
  named type.
- **`main`'s signature is fixed:** no parameters, no success type, at least one declared error -
  `fn main() ? SomeError [+ ...] { ... }`, no other shape valid. Process exit is exactly two values:
  a normal return is OS exit 0; an error escaping `main` uncaught prints
  `unhandled error: TypeName.Word` to stderr and exits 1. There is no "return a status" convention. The one way
  to another status is `os.Exit(code)` in std (B5b, 2026-10-08), for a self-hosted `-i` passing on a program's status.
- **Every path must return (D10a), and `abort`/`unreachable` (S16c/S16d).** A function declaring a result
  type that falls off the end used to return a **silently zero value** - `0`, an all-zero struct, or a
  **null reference** - with no diagnostic. Found by asking what `unreachable` would be *for*, which turned
  out to be the better question than whether to add `abort`.
  The analysis is deliberately **structural**: no dataflow, no constant folding. `return`, `error`, `done`,
  `fail`, `abort` and `unreachable` leave; an `if` leaves when it has an `else` and both sides leave; a
  `match` when every clause leaves and it is either S13a-exhaustive or has a leaving `nomatch`. **A loop
  never counts**, even one whose body always returns, because `break` makes "the body leaves" and "the loop
  leaves" different questions. So the rule rejects some functions that do always return - which is exactly
  what `unreachable` is for, and the trade is deliberate: a rule a reader can apply by eye, plus one word
  for what it cannot see.
  **Corpus damage: one function**, and it was a false positive worth fixing rather than a real gap - a
  selected `match <T>` arm (G15) collapses to an `if` whose condition is a literal `true`, which always
  runs its block. Reading the condition rather than special-casing type matches also covers a hand-written
  `if true { return 1 }`.
  **`abort` earns its keyword because `assert(false)` already did exactly this and said nothing about
  why.** The user's own argument, and it also corrected mine: I had claimed the OS abort status was
  meaningful "because a program cannot write it", which is false - `assert(false)` writes it. Both `abort`
  and `unreachable` behave in every respect as a failed assert, per-test recoverable while a test runs.
  **`unreachable` is checked, never assumed** - the compiler draws no conclusion from it and emits nothing
  that depends on the claim, so a wrong one is a diagnosed abort rather than undefined behaviour. That is
  the opposite of `std::unreachable` in C++ and of Rust's `unreachable_unchecked`, and it is the only
  consistent choice after a session spent removing UB from indexing, array lengths and division.
  It is also the only one of the four terminating statements a **checker ever requires**, which is a much
  stronger reason for a keyword than "sometimes you want a core dump".
- **`done`/`fail` (S16/S16a/S16b) - they end the innermost thing that can end.** Bare statements, valid in
  any function or test body: the current **test** if one is running, the **process** otherwise. So `done`
  ends a test as passed and otherwise exits 0; `fail` ends a test as failed and otherwise exits 1. Both are
  unconditional, unrelated to the enclosing function's error union, and print nothing.
  **Which applies is decided at run time, not lexically**, which is what makes this one rule rather than
  two - a failed `assert` already worked exactly this way (S18), so a `fail` inside a helper called from a
  test ends *that test*, consistently with an `assert(false)` in the same helper. The spec used to say
  "inside a `test { }` block", which was never what the implementation did; corrected.
  **`crash` was renamed `fail`** on the user's observation that it named the wrong thing: it *sounds* like
  an abort but is an orderly exit the program chose, running the normal exit path and reporting the
  OS-standard failure status. Three uses in the whole corpus. The rename also made a real distinction
  legible - there are two failure terminations, and they should stay different: `fail` is a decision, while
  a **runtime check the language guarantees failing** (a failed assert, an out-of-range slice bound, a
  negative array length) aborts, leaving a core dump and skipping the exit path. C draws the same line.
  **No `abort` statement, deliberately (S16b).** The violent kind is reachable only by a guarantee breaking,
  never by something a program writes, and a keyword for it would differ from `fail` only in whether a core
  file is left behind.
  **Each runtime check now names what failed** (S18a) - "assertion failed", "slice bounds out of range",
  "negative array length" - where all three used to print "assertion failed", including the two that are
  not assertions. The shared message was also one byte short of NUL-terminated, so `fputs` read past it.
  **A known limitation, now understood rather than assumed (S18b): destructors do not run for values still
  live when a test is abandoned.** This was recorded as "a known, deliberate v1 simplification"; it is
  actually a consequence of `longjmp`. LLVM does not model the jump's control flow, so from the harness's
  landing block the only edge in comes from before the `setjmp`, where those scopes are still empty - it
  therefore proves any close emitted there is a no-op and deletes it. Confirmed by building identical IR at
  `-O0` (destructors ran) and `-O3` (elided), and neither a call-site `noinline` nor volatile reads inside
  the close were enough. Fixing it properly means unwinding **before** the jump, which requires the runtime
  to track which scopes are open - a push and pop on every scope open and close, i.e. on exactly the
  per-block path O2 just made hot. Left as a costed decision rather than an unexamined gap.
- **Cross-module visibility, re-export, and multi-hop alias chains.** Anything starting with a
  capital letter is exported - one rule, applied uniformly to types, functions, error types, global
  variables, *and import aliases*. **It reaches inside a declaration too (M6a): a struct member and an
  error word are each public or private by their own first character**, independently of the type
  declaring them, so an exported type can keep some members to itself - `t.Id` crosses the boundary where
  `t.secret` does not, and `catch Lib.Err.Quiet` names a word `catch Lib.Err.quiet` may not. This was
  simply never enforced: an exported type exposed every field and every word it had, so "exported" was
  all-or-nothing at the type. Privacy is about the boundary only - inside the declaring module a private
  member is entirely ordinary, and that module may expose it through a function of its own. A private word
  does not make its type uncatchable either: `catch Lib.Err` with no word matches every word including the
  unnameable ones, so a caller can handle "some `Err`" without being told which exist. **M12 was reversed to let the rule reach choice cases too.** A choice value
  is now alias-qualified like any other cross-module name (`Lib.Dir.North`, to any chain depth), with the
  type and the word each subject to M6/M6a. The old restriction was a leftover rather than a design: the
  parser committed to choice syntax only when the name's *first* identifier was a local type, which predated
  the chain-walking type lookup added later for struct/array literals - and when that lookup landed, the
  choice predicate was explicitly left alone as "never alias-qualified by design", which had become circular.
  The ambiguity it avoided is with an ordinary `localVar.field.sub` member access, and that is the *same*
  ambiguity the local case always had (`Direction.NORTH` versus a variable named `Direction` with a field
  `NORTH`); asking whether everything before the trailing word names a known type answers it identically at
  any depth, and a wrong guess costs nothing since the parser only decides whether to commit and the
  semantic side re-checks. What it cost was real: an exported choice type was inert across a boundary - a
  foreign module could hold one and compare two of them, but could not name a word, so it could not
  construct one or `match` on one. A capitalized import alias is automatically re-exported (no
  separate opt-in): a module reaching through it can chain further (`a.b.Name`, to any depth) via the
  same `alias-chain IDEN` grammar used everywhere a possibly-cross-module name is written (calls,
  type refs, `error`/`catch`, bare variable reads, struct/array literal construction). Since an
  alias-less `import` derives its alias from the file's base name (M4), a **file's own capitalization is
  part of its interface**: `import "Base.olang"` gives an alias importers can re-export,
  `import "base.olang"` gives one they cannot, and an explicit alias overrides either way. A raw import
  cycle (A imports B imports A) is unrestricted; a cycle in the *public-reachability* graph
  specifically (re-exporting your way back to the same module), or reaching the same underlying file
  two different ways from one module, are both compile errors.
- **Array literal syntax, `:=` inference, and the parser.** (Struct literals `Type{...}` existed here
  until 2026-10-01 - see the next entry.) Array literals: `T[v1, ...]` (scalar
  element type stated exactly once, nested `[...]` rows for multi-dimensional, no separate
  size/length-kind prefix - see HISTORY.md for the syntax's full evolution). They are
  general expressions, usable anywhere a value is needed. `x := <literal>` infers `x`'s type entirely
  from a literal initializer (locals, for-loop init vars, globals), **or from a constructor call**
  (`p := Point(1, 2)`) **or from a slice** (`s := a[1:3]`) - the rule is really "the type is written at the
  declaration", which a constructor call satisfies as plainly as a literal and a slice satisfies again (it
  is the base's element type with a runtime length). **Relaxed to any call (the user's call)**: `x := f()`
  is legal, since the callee's declared result is a type the reader can find and the rule was an irritant
  for no safety gain; `null` and non-call expressions are still rejected. A `:=` reference local writes no
  scope tag and takes the call's exact scope (O25a) - copying the result type's tag verbatim at first put
  the *callee's* scope variable on the local, which the no-narrowing check then rejected. The parser is hand-written recursive descent, not table-driven,
  with a cheap top-level name-collection pre-pass (`ScanTopLevelDecls`) run before real parsing so
  `Type[`/choice-value syntax can commit only when the leading name is a genuinely known type.
- **Every struct is built by its constructor; no struct literals and no plain structs (T13, C2d,
  2026-10-01, the user's call).** `Type{...}` and the field-list form `type P struct { x Int32 }` are gone.
  A "plain struct" is `type P struct() { x mut Int32 }` built as `P()` and filled in by its user, or, as
  the corpus migrated, a constructor whose parameters are its fields (`struct(x Int32, y Int32) { x mut ... }`).
  **No automatic constructor for a field-list struct** - the user's call: a plain struct is a special case
  of a constructor struct, so it goes, as `vocab` went once it was clear a vocabulary was an enum with no
  payloads. **This reverses a decision recorded here** that kept literals beside constructors for two
  reasons. "Infallibility visible at the use site" turned out to be already true without them: a fallible
  constructor call must be written with `try`. "A literal bypasses a validating constructor" (rebuilding a
  value already known valid, e.g. deserializing) is genuinely lost; reflection-driven serialization is
  the intended answer when it is built. C6/C6a went with the literal.
  **Defaults became compile-time expressions (D8a/K2a)** - the literal-only rule would otherwise have left
  no way to write `p Point = Point(0, 0)`. Any default the evaluator can compute is accepted, checked after
  the program has checked (a constructor's body may be checked later than the signature naming it), and
  the error names what stops it. `$` renders a struct as `Point(1, -2)` now (my choice; the user approved it 2026-10-01).
  **C2d - the use-after-free this exposed, fixed as the user chose (option B).** A constructor field
  holding a reference with no scope name (`inner P& = P(v, v)`, or a pun of a bare-`&` parameter) was
  built in the constructor's own scope - closed as the constructor returned - or the caller's, while the
  instance went wherever it was assigned. Reproduced on the previous commit: the field read reused memory
  after the arena churned. Literals had hidden it, since a literal built its parts where the finished value
  landed. Option A (every reference field names a scope - O13 applied to constructors) was rejected for
  making nested construction (`Link(1, Link(2, null))`) need scope arguments. **B**: a bare `&` in a
  constructor means the scope the instance lands in, received as a hidden leading `ptr` by every
  constructor - the promotion target when the call is built into a reference, else the caller's own
  scope, exactly where a literal's parts went. Temporaries for such parameters are built there too. The
  checker half: an argument that is EXISTING storage is stored by reference, so the call records its scope
  as a binding of a per-type instance-scope variable (`hereVar`), and declarations, assignments and
  returns check that the instance does not outlive it (exactly, if the argument holds references - O25).
  **That check closed a second hole the literals had too**: `return NB{q}` with `q` a local was accepted
  by the old compiler. A `mut` at a line's end now ends a statement (L18), so `x mut` puns stack one per
  line; and an unknown member no longer crashes the checker's scope walk (recovery operands carry no base).
- **Constructors and destructors - the only two special blocks a struct type can declare.** (This
  originally read "no general user-defined methods, deliberately, to sidestep field/method name
  collisions"; M19 added methods, declared with a receiver clause, and the collision it worried about is
  now a stated rule - a method may not share a name with a field of its type.)
  `type Name struct(params) [? errors] { ctor-body } [destruct { stmts }]`; a field is a bare pun (binds a
  same-named constructor parameter), an explicit var-decl, or `:=` inference. `Type(args)` is an
  ordinary call under the hood, and the only way to build the type (C2d entry above). `destruct { }` has no error union of its own (same rule as `test{}`)
  and reads its own fields bare, with no `self`/`this`.
  **A constructor's body is an ordinary statement block in which a field declaration is one more kind of
  statement** - no comma-separated field list, and no restriction on what else may appear. So a
  constructor **can raise its own declared error directly** (`error T.WORD`, R3, no fallible helper
  needed), guard with `if`/`match`, `assert`, and `try`/`catch` - and one declaring no errors of its own
  may still catch one entirely, exactly as a `test { }` block or a destructor does. **The fields are the
  constructor's own top-level locals**: a field declares a same-named local visible to everything after
  it, so a later field's initializer or a later check can read one already built, and the instance is
  assembled from those bindings' final values when the body completes normally. A field that fails
  (`error`, or an uncaught `try`) produces no instance at all and never evaluates a later field. A bare
  pun declares no local (the same-named parameter already carries the name and the value), which is why a
  non-pun field may not share a name with a parameter. `return` is rejected anywhere in a constructor
  body: the synthetic ctor function does carry a ret-type, so without the rule `return someOtherInstance`
  would type-check and become a second, invisible construction path. This came from the user's own framing
  of what a constructor is - "basically functions whose local variables are exported into the scope they
  are constructed on" - and the migration cost was every existing constructor's trailing commas, nothing
  else.
  **A struct type declaring `destruct { }` is reference-only:** every `type-ref` naming it must carry
  a reference marker, so it is never embedded by value in an aggregate and never passed or
  returned by value.
  **The reason recorded here for years was wrong, and the user caught it.** It said a destructor "needs a
  well-defined instance count" because "no copy is identifiably the owner" - but registration is **per
  constructor call** (below), so exactly-once already holds however many names an instance has, whatever
  C11 says. Verified rather than argued: one constructor call reached through three reference names and
  stored inside another struct runs the destructor exactly once; three calls run it three times. Two corpus
  tests pin that.
  **What C11 actually buys is that §8 can see every name that reaches the resource.** §8 checks
  *references*: a reference carries a scope tag and containment proves it cannot outlive what it names. A
  by-value copy carries **no tag at all** - it is plain data - so copying an instance would move the
  released resource into storage no rule tracks, and reading it after the destructor ran would be
  undetectable. The hazard is use-**after** release, not double release. That is the same class as the
  pre-C11 bug already recorded here ("passing by value released the caller's resource at the callee's
  return"). It cannot be demonstrated in olang, because C11 is what prevents writing it, so it is an
  argument rather than a measurement - stated as such.
  **This is also what makes the Vec rule coherent rather than ad hoc.** A `Vec` needs no destructor (the
  arena reclaims its buffer) but still must not be copied: a value copy duplicates the `{len, ptr}`
  descriptor, so two Vecs share one buffer and append over each other - **measured, `w mut V = v` then
  `w.data[0] = 99` changes `v.data[0]`**. That is the same defect for the same reason - storage reachable
  through a name §8 cannot see - so "a struct owning a D14a run-time-sized field is reference-only"
  composes from the corrected principle instead of being a second rule.
  The marker is still written at every use (see below). The marker is still written at every use: declaring a
  destructor makes the type reference-*only*, it does not make the marker implicit, so reading a
  `type-ref` never requires knowing whether the named type declares a destructor.
  **Registration happens at construction, once per constructor call** - never per storage location, and
  never for storage no constructor produced an instance in. A destructor therefore runs exactly once,
  when the scope its instance was allocated into closes: there is no plain-local, function-return-
  governed case, no `return x` skip, no per-element or per-slot destructor walk, and a zero-filled
  aggregate destructs nothing. This closed three real bugs at once (passing by value released the
  caller's resource at the callee's return and destructed it again later; a destructor-bearing field of
  a plain struct never destructed while the constructor's own parameter copy destructed early; a plain
  local array of destructor-bearing values registered nothing whatsoever) - one root cause, all three
  now inexpressible. **A gap this exposed, since closed:** T24 used to put the reference marker
  strictly *after* the array suffixes, so an array *of* references was not expressible at all, for any
  type. A marker may now be written on either side, and the two positions are different types:
  `Point&[3]` is an array of 3 separately-allocated references (elements have identity), `Point[3]&` is
  one reference to an array of 3 inline values, `Point&[3]&` is both. With no array suffix the two
  coincide and a single marker reads as the element one - and writing *both* there (`Point&s&a`) is a
  compile-time error, not a double reference: it is one position written twice, with one of the two scope
  tags necessarily discarded, which is a discarded safety claim. **A type carries exactly one reference
  level per array level, plus one for the element type; there is no reference-to-a-reference** (`Point&&`
  cannot even lex - `&&` is the logical-AND token). **Marker positions pair with levels inside-out.** A type with
  `k` array suffixes has `k+1` marker positions (after the element name, then after each suffix) and `k+1`
  levels (the element, then the innermost array level out to the outermost), and the i-th position binds to
  the i-th level counting from the inside. That is exactly what keeps both spellings the language already
  had: the head marker always marks the element (`Point&[3]`), and the *last* position - after every suffix -
  always marks the whole type (`Point[3]&`, `int32[][]&`). Since suffixes are written outermost-first while
  levels are marked inside-out, a suffix's marker pairs with a suffix in reverse: in `int32[]&[]` the marker
  after the first `[]` marks the inner rows, so that type is a 2-D array whose rows are references, while
  `int32[][]&` is one reference to the whole 2-D array. The grammar previously had exactly two slots however
  many suffixes there were, so no interior level could be marked at all - and nothing that parsed before
  changed meaning. Only the **outermost** level may carry a scope *name* - the last marker position, or the
  head marker when there are no suffixes:
  every other marker is nested inside a larger value, and a nested reference always inherits its container's
  scope, so such a tag could never be honoured and is rejected rather than silently ignored. An array literal
  may state a marked element type, including an element type that is itself an array (`Handle&[a, b, c]`,
  `int32[3]&[r0, r1]`) - the trailing marker there is what tells a literal from a type, since
  `int32[3][r0, r1]` would otherwise read as the type `int32[3][2]` followed by an index.
  **Reference-shapedness IS part of a type's identity (T25a).** `Point` and `Point&` are different types -
  one an aggregate, the other a pointer to one - as are `Cell[2]` and `Cell&[2]`, `int32[2][3]` and
  `int32[2]&[3]`. Converting between a value and a reference to it is an **assignability** rule (E12), not a
  claim that they were the same type: a value into a reference is **promotion** (allocate in the target's
  scope, point at it), a reference into a value is a **copy out** (load the aggregate - D9a's own advice for
  a callee wanting its own copy of an array parameter), and both exist only at the **outermost** level,
  because that is the only place codegen has either step. Identity and assignability used to be fused -
  `TypeIsSame` ignored the marker - and the leniency recursed into element types, where no conversion exists
  at all: `Cell&[2]` (two pointers) type-checked against `Cell[2]` (two inline `Cell`s) and the pointers
  were read straight back as field data, silently, since lengths and element names agreed. Found by asking
  whether a call result's declared array sizes are actually checked - they are, at every dimension; the
  shape was not. This briefly needed an exception for runtime-length arrays, which T11
  then made unnecessary: once `T[]` follows the marker like every other array, `byte[]` and `byte[]&` are
  different types too and nothing is carved out.
- **Parameter mutability and reference arguments: `&` says whose instance, `mut` says whether it can be
  written.** Two independent axes, so whether a call writes to the caller's value is readable from the
  signature alone with no reasoning about scopes or durability: `p Point` / `p mut Point` are copies (the
  caller is unaffected either way, `mut` only makes the callee's own copy writable), while `p Point&` is
  the caller's own instance read-only and `p mut Point&` is it writable. D9 always specified the `mut`
  half; it was simply never enforced (parameters were forced mutable when entering the body scope), the
  same class of bug as C3's unenforced field mutability. **E12a used to be a prohibition and is now a
  guarantee.** It rejected passing an lvalue to a `&` parameter, because promotion copied and `&` would
  otherwise have meant "your instance" at some call sites and "a copy of it" at others. Once E12c made
  promotion of an lvalue a *borrow*, that hazard stopped existing: `&` always names what the caller passed,
  so the rule that protected the property became the thing standing in its way - every array you wanted to
  pass anywhere had to be declared `&` at its declaration, `io.olang`'s own buffer included. An lvalue
  argument now borrows, with the same lifetime check every other borrow gets; a temporary still has no
  storage to borrow and is allocated in the parameter's scope.
  **Removing it exposed a hole it had been masking, which is now closed:** since a `mut &` parameter writes
  through to whatever the caller passed, binding an **immutable** lvalue to one launders that immutability
  away. This was never checked - not for borrowed values, and not for already-reference arguments either -
  so an immutable `p P&` parameter passed straight into a `mut P&` one let the callee write it, while
  writing `p.val = 9` in the passing function was correctly rejected. D9's two axes are only independent if
  both are enforced at the boundary; now they are. Two rules that existed only to work around E12a went with
  it: the "already a reference has two forms" test (`structMAlloc` or, under T11, `arrMalloc`) that decided
  which arguments E12a would spare, and the `&` markers `io.olang` and the test corpus had to write on
  buffers whose only sin was being passable.
  **D9a settles the whole question: an array parameter must carry `&`, and a by-value one is a compile-time
  error.** Passing an array by value copies it silently, in time proportional to its length, at every call -
  and a `mut` one is then written where the caller can never see it - the hazard the marker exists to
  prevent, arising here from its *absence*. So no ordinary call ever copies an array; a callee wanting its own copy
  declares a local and assigns, where the copy is written down. `extern-param`s are exempt because X3
  marshals them to a raw pointer and no copy exists to prevent. Explicit rather than implicit because
  a generic parameter (`v <T>`) can be instantiated with an array *or* a struct - both work today - so an
  implicit rule would make one function's calling convention depend on its type argument, invisibly.
  **E12 gained the matching widening**: a `T[N]&` argument reaching a `T[]&` parameter keeps its pointer
  and materialises the length it already knows statically. No allocation, no copy, so one `byte[]&`
  parameter accepts `byte[4]`, `byte[24]` and `byte[n]` alike. Distinct from the by-VALUE `T[N]` -> `T[]`
  promotion beside it, which does allocate and copy - conflating the two emitted invalid IR, GEP-ing a
  bare `ptr` as though it were an `[N x T]` aggregate.
  **T11 is gone, and with it the last place storage leaked into semantics.** Whether an array is
  reference-shaped is decided by its marker and nothing else, identically for `T[N]` and `T[]`: both
  unmarked forms are values (`==` element-wise, assignment copies the elements into storage of the target's
  own), both marked forms are references (`==` identity, assignment repoints). When a length becomes known
  is a difference in *representation* - `T[N]` inline, `T[]` a length paired with its own storage, since a
  runtime length cannot be embedded - and a representation difference is not a behaviour difference. What
  the old rule cost was visible in three places at once: `&` meant "make this a reference" on one array and
  merely "tag a scope" on another; `byte[]` and `byte[]&` had to be excepted from T25a's type identity; and
  the implementation had gone incoherent without anyone noticing - assignment to an unmarked `T[]` *aliased*
  while `==` on it compared *contents*, so `b = a` gave two names for one buffer that then compared equal
  for the wrong reason, and `==` on a marked `T[]&` compared contents where E10 promised identity. The
  **Taking a reference to an lvalue borrows it (E12c), for every type.** The reference names the very
  instance the value is - `&` means "this instance" regardless of what is behind it - and for an array that
  is also what keeps a copy proportional to its length from being inferred from a marker rather than written
  down. That makes the
  reference a lifetime claim, and the claim is checked: the borrowed storage's scope must outlive the
  target's. Handing scope-local storage to a longer-lived reference is a compile-time error, and *that* is
  the defect in such a program - not the absence of a copy, which was the wrong instinct an earlier revision
  acted on (it silently copied, making the unsafe program compile). Only a temporary, having no storage to
  borrow, is allocated in the target's scope; that is construction, not copying. The storage scope is
  derived structurally: `own` for a local or parameter, the enclosing reference's scope for a field or
  element reached through one, unbounded for a global. So of the four value/reference combinations,
  value-into-reference borrows, reference-into-reference repoints (S4a), and the two that land in a value
  target copy - value-into-value because that is what a value type means, reference-into-value because that
  is D9a's own written-down way to take a copy. **All four read identically for a struct and for an array**,
  which is the property that makes them predictable; a struct's value-into-reference used to copy while an
  array's borrowed, and that copy hid exactly the same lifetime bug for structs that it hid for arrays. Assignment to a runtime-length **value** reuses the buffer it already holds when
  the incoming length matches, allocating only to change length; that needs to know the destination is live
  rather than freshly declared, so `cgStoreInto` carries a `dstHoldsLiveValue` flag set at assignments and
  nowhere else. Reuse removes an allocation and never changes a meaning, so it is unobservable from the
  language by construction. The
  blast radius was one line of source in each of two files: an unmarked runtime-length local passed to a
  `T[]&` parameter became a value being promoted, which E12a rejected at the time. Both lines went back to
  unmarked when E12a was removed - the borrow is what they always wanted.
  **A known gap that closed itself:** D13 still rejects a no-initializer array var-decl whose type contains
  a reference at any level including its own outermost one, so `a mut byte[64]&` is not declarable. That
  used to mean a fixed-size scratch buffer could not be passed anywhere - E12a rejected the unmarked form
  and D13 rejected the marked one - so `io.olang`'s test declared its buffer run-time-sized for a length it
  knew statically. Borrowing removed the pincer from the other side: `buf mut byte[24]`, plain and
  unmarked, is now both declarable and passable, which is what that test writes. What is left of D13's
  over-reach is narrow enough that nothing currently wants it.
- **Array literals, runtime-length arrays, and var-decl forms.** An array literal (`T[v1, ...]`) is always a
  compile-time-length array sized by its own item count; flowing into a runtime-length (`T[]`) target implicitly
  promotes (a fresh copy); flowing into a compile-time-length target of a *different* length is a compile error, not
  silently truncated/padded. "Runtime-length" means sized once at construction, then fixed - there is no
  growable `Vec`. A local/global var-decl has exactly three no-overlap forms: `x T[] = <initializer>`
  (length inferred from the initializer *into the type* - the declared variable is a `T[N]`, keeping the
  declared element type and any `&`/`&name` marker, so it interchanges with any other `T[N]`; an
  initializer that is itself runtime-length carries no length to adopt and leaves the declaration
  runtime-length); `x T[N]` with no initializer (zero-filled, real BSS for a
  global); and `x T[expr]` with a non-constant `expr` and no initializer (a
  runtime-sized, zero-filled array, arena-allocated into `own` or a named scope like any other
  reference). Pairing `T[N]` with an initializing *literal* is a compile error (its size is already the literal's own
  item count); pairing it with a single **element** value is a fill (D13b). Leaving any declaration with no
  initializer is now legal and means its zero value (D13), except a declared-size local array, which is
  uninitialized (D13a). See the `null` entry above for what replaced D13's old prohibition, and for the one
  thing that prohibition was right about: an uninitialized array of references holds garbage, not null.
  A **jagged** (independently-sized-per-row) array is still not constructible - `x mut T[N][]` mixes length
  kinds, which the rectangular-array rule rejects on its own terms rather than as a zero-fill question.
  **`int32[k]` in an expression is rejected (E20a)**, because it is a one-element literal *holding* `k`
  while the same characters in a declaration are an array *of* `k` elements. It bit twice in real work - a
  benchmark that corrupted the heap, and a test that failed for a reason unrelated to its feature - and no
  corpus code used the shape on purpose. Only the colliding shape is rejected: integer element type, one
  non-literal integer item. The one-element array holding `k` is the fill, `a mut int32[1] = k`, which
  already existed and says what it means (now `a int32[1] = k`, D11a). Letting `T[expr]` allocate in expression position was the
  alternative, and it is a language change (it steals the one-element literal's meaning) rather than a
  diagnostic, so it was not taken unasked.
- **A runtime array length is checked (D14b).** `T[expr]` with a negative `expr` aborts, the same hard abort
  an out-of-range slice bound gives; `0` is a real length producing a genuinely empty array; a negative
  *constant* was already a compile-time error, so only the runtime path was open. This was an omission
  rather than a decision, and an unsafe one: a negative length multiplies out to a negative byte count,
  which `__olang_new_chunk`'s **unsigned** comparison reads as an enormous free capacity - so it mallocs a
  handful of bytes, records the huge capacity, and every later allocation from that scope bumps past the
  end of the chunk. It surfaced as `malloc(): corrupted top size` two allocations later, nowhere near the
  cause. Found by asking a survey question - where does the language abort, and does it ever abort where it
  could return an error - which turned up two places that did neither: this, and division by zero, which is
  still undefined behaviour and still unmentioned in the spec.
  The check costs one compare **per allocation**, never per access, which is the same reason a slice's
  bounds are checked (E16b) while an index's are not (E16). That is the line the language draws: a check
  whose cost is per-construction stays, a check whose cost is per-operation goes, and `try` converts either
  into an error where a caller wants to handle it.
- **Run-time-sized constructor fields (`data T[expr]&s`).** The `T[expr]` form is valid in two
  positions, not one: a local var-decl, and a constructor field (D14a). Both need a definite point at
  which to allocate, and a constructor call is one; a plain (T13) struct's literal performs no
  allocation step, so it stays rejected there. **This is what lets a struct own a buffer at all** -
  before it, `T[expr]` was var-decl-only and no expression produced a runtime-sized array as a value, so
  no struct could hold one (no Vec, no buffer, no hash table). Exposed by writing the first `Vec<T>`
  while implementing generics, but not a generics problem. The field's **scope tag is required**: an
  untagged one allocates into the constructor's own scope, which closes before the constructed value
  reaches its caller - the same hazard O13 rejects for a bare `&` return type, and now rejected the same
  way. The field is **uninitialized** unless filled (D13b), exactly as the local `T[expr]` form is, since a
  field is a local of the constructor (C2a). That failure was silent and vicious rather than merely leaky: the freed chunk was immediately
  reused for the constructed struct itself, so a later write through the field landed on the struct's
  own length word.
- **`extern fn` - external (C-ABI) function declarations.** `extern fn NAME(params) [ret-type]`
  (no error-list, no body - `STMNT_END` where a block would begin) declares a function defined
  outside this compilation, resolved by the platform's linker; `NAME` is also the exact linker symbol
  requested (implementation-defined if it doesn't resolve). A deliberately restricted type choiceulary
  - each parameter, and the (optional) return type, must be one of the five numeric primitives, or
  (parameters only, never a return type - see below) an array, compile-time-length or runtime-length, of one of those five
  - guarantees an unambiguous, register-passed ABI with no struct-classification question to ever
  answer. An array-typed parameter marshals to a raw pointer to its first element only, as a purely
  invisible codegen detail of the call itself (T3-style runtime-length-array `{ len, ptr }` reduced to just
  the pointer half, a compile-time-length array's own embedded address used directly) - this pointer is never a
  real, nameable type or value anywhere else in the language, for application code or stdlib authors
  alike; if the external function also needs the array's length, the declaration states it as a
  separate integer parameter, and the caller supplies it explicitly via `len(arr)` - no automatic
  pairing. A return type can never be an array, unlike a parameter: the marshalling has no sound
  reverse direction (a raw pointer an external function returns carries no length anywhere alongside
  it, so there's no way to rebuild a real `{ len, ptr }` value from it without either fabricating a
  length or introducing a real pointer type - both rejected outright). An external function is never
  fallible in olang's own sense - no error-list, never valid as the operand of `try`/`try-catch` - any
  real error handling for what it might signal has to be a hand-written wrapper in ordinary olang on
  top of the raw call (most naturally using the bare-error feature above, sidestepping `errno`
  entirely, which - being a glibc macro expanding to a thread-local accessor function call, not a
  plain linkable symbol - was deliberately never supported; extern *variables* aren't supported at
  all yet, only functions, precisely because the concrete need driving this - raw POSIX I/O syscalls
  with plain integer file-descriptor "handles" - has no need for one). This is the enabling primitive
  for I/O (and any other C-library interop): I/O itself is not a compiler builtin and is meant to be
  ordinary olang code written on top of `extern fn`, the same way `Vec`/`Set`/etc. (see the deferred
  entry just below) are meant to be ordinary olang code on top of the language's existing features -
  deliberately not a `@cImport`-style C-header-parsing mechanism (Zig's approach), judged wildly
  disproportionate to the actual need (a handful of hand-written declarations, not a C compiler
  frontend embedded in this one).
  **`extern fn` is one of the places memory safety rests on something unchecked (X1a) - the others being
  an out-of-range array index (E16e) and a null dereference (T2b) - and the spec now says so.** A declaration states a prototype and the compiler takes it at its word - it verifies nothing about
  what actually links, its real signature, or what it does with the pointer X3 marshals an array to. A
  wrong prototype is undefined behaviour, and a wrong *size* for a foreign type reached through the
  `byte[N]` idiom (`pthread_mutex_t` as `byte[40]`) is silent corruption rather than a diagnosed error.
  Unavoidable rather than an omission, since the other side is compiled by a toolchain olang cannot see
  into; every other guarantee is stated as holding for programs that do not declare an incorrect
  prototype.
- **Generics (`<T>`) - type parameters on functions and struct types, monomorphized.** Spec'd in §12
  (G1-G17). A **function** is generic exactly when a type variable appears in its signature - there is
  no declaration list, the set *is* whatever appears (`fn max(a<T>, b<T>) <T>`), and its type
  arguments are **never written**: they are inferred by matching the actual argument types against the
  declared parameter types, which is total because every variable must appear in at least one parameter
  (G4). A **struct type** does declare a list, after the name (`type Vec<T> struct(...)`), and for a
  reason that isn't arbitrary: a type's arguments can't be inferred, so they're written positionally,
  and only a declared list makes "positional" mean anything. That asymmetry tracks inferability exactly -
  which is also why a *constructor call* may omit them (G10c, 2026-10-07): there they can be inferred.
  **`match <T>`** dispatches on a type parameter, resolved at instantiation - no runtime comparison or
  branch, only the selected arm's code; inside that arm the variable *is* the concrete type (so each arm
  is checked only for its own instantiation), and unlike a value `match` it is exhaustiveness-checked,
  since falling through silently would compile a generic that does nothing for some instantiations.
  **A function TYPE is never generic in its own right (G3a)**: a `<T>` in a callback parameter's type
  (`less fn(a <T>, b <T>) bool`) names the *enclosing* declaration's variable and introduces nothing, since
  there is no higher-rank polymorphism. G3's "generic exactly when a type variable appears in its signature"
  is a rule about a *declaration*, and `resolveFuncSig` applied it to function types too - so a call *through*
  such a parameter looked like a call to a generic needing its own inference, and a generic could accept a
  callback but never call it. That is the shape of every sort, find and map, so the whole family was
  unwritable; found by asking what a stdlib would need. Inference itself needed no change - `TypeUnify`
  already walked a function type's parameters, so `T` is inferable even when it appears *only* there.
  **Monomorphization**: one ordinary function or type per distinct argument set, after which every other
  rule applies unchanged - destructors, scope containment and structural `==` all needed no
  generic-aware version. Type identity falls out for free, since an instantiation's name carries its
  arguments and struct identity is owner+name. A generic type's **constructor and destructor are
  monomorphized with it** (G10b), each built from the generic's own field list and `destruct` block
  against that instantiation's substituted types; the generic's own constructor is never a call target
  and is never emitted. A constructor-declaring generic type is constructed as `Vec<int32>(own, 4)`
  (G10a) and by no other spelling, since C8 still rejects the `Type{...}` literal for it. Two
  implementation constraints worth keeping: a type argument may carry no reference marker (the §8.4
  checker can't trace a tag through an instantiation), and instantiations live in their own stable lists
  rather than in `mod->vars`/`mod->types`, which store by value and would invalidate every live pointer
  on growth. **An instantiation copies the generic's var wholesale, body syntax included, so that syntax
  must exist before any instantiation is created** - it is recorded in the signature pass, which runs for
  every module before any body is checked. Recording it while bodies were being checked was too late twice
  over: for a generic used before its own declaration in the same file, and for one in an imported module
  whose bodies are checked after the caller's. Either way the copy got an empty body and codegen emitted a
  function returning a **zero value, silently**, with no diagnostic anywhere - so every generic a library
  exported was broken. Found by asking where a library's instantiations get emitted, which they do
  correctly: into the *consumer's* object as `linkonce_odr`, never the library's. **The combination of "generic type" + "constructor" was initially unreachable in three
  independent ways** (no call syntax; the generic's synthetic constructor var lacked the `typeParams`
  marker that makes codegen skip a generic, so merely *declaring* one crashed the compiler; and an
  instantiation reused the generic's already-built body) - invisible because generic types and
  constructors were each tested separately, and surfaced only by typing in the spec's own `Vec<T>`
  example and running it.
- **Generics COMPOSE (G8a): a type variable may be a type argument.** Before this, generics worked for
  leaf types (`Chan<int32>`) and for functions over a bare `<T>`, but **`Vec<T>` could not be written at
  all** - the type-args resolver only ever looked a name up as a declared type. That blocked every shape a
  container library is made of: `fn Push(v mut Vec<T>&, x <T>)`, `type Stack<T> struct(items Vec<T>&)`,
  and any generic type's methods. Found while trying to write an `Atomic<T>` wrapper over the P9 builtins.
  **Three separate things were broken, and only the first was obvious.** (1) **Resolution**: a bare `IDEN`
  in a `type-args` list is now resolved against the type parameters in scope - a generic type's own
  declared list, or, for a function, every `<T>` written anywhere in its signature. **Whole-signature rather
  than left-to-right, and that is forced rather than chosen**: a method's receiver is written before its
  name (M19), so a method over a generic type writes `Atomic<T>` *before* anything that could introduce
  `T`, with no earlier position available - left-to-right would make a generic type's methods unwritable,
  not merely awkward. It would also disagree with G3, which already takes the type-variable set
  to be whatever appears anywhere in the signature. A bare name there **resolves** and
  never **introduces**, so a misspelled type stays "unknown type" instead of silently making the
  declaration generic; a variable appearing only inside type-args is written `<T>` there.
  **Superseded by G8b (the user's call): a type variable is `<T>` EVERYWHERE, type arguments included -
  `Cell<<T>>`, `Pair<<K>, <V>>`** - and a bare name is always a declared type. The old middle ground (bare
  `T` resolves, only-in-type-args needs `<T>` written `Cell< <T> >`) made one variable two spellings, and
  the space was lexical noise. `<<` opening a type-argument list and `>>` closing one after a variable are
  split into angle brackets only while a type-argument list is being parsed, and `<<` is joined back if
  that parse fails, so `x << 3 >> 1` never changes meaning. A bare variable is diagnosed as such rather
  than as an unknown type. Migration was eleven lines. It also removed the receiver wart - `fn (l
  List<<T>>&) Len()` introduces `T` by writing it, with no special receiver rule.
  (2) **Substitution**, which was the real bug and was invisible until resolution worked. `Box<T>` already
  became an instantiation named `Box$T`, and `TypeUnify` already bound `T=int32` through the *fields* - but
  substituting rewrote the field types and left the **name** derived from the old arguments, so `Box$T`
  never became `Box$int32` and every use failed its fit check. An instantiation now records what generic it
  came from and with which arguments (`genericOrigin`/`typeArgs`), and substitution re-applies the generic
  rather than walking its fields.
  (3) **Method lookup**, which matched receivers by exact name, so a method over `Cell<T>` was invisible to
  a `Cell<int32>`. A still-generic receiver now matches any application of the same generic - checked only
  after an exact match fails, so a method written for one specific instantiation still wins and M21's
  overloading by receiver keeps working.
  **An application whose arguments are not all known is a pattern, not a type**: no layout, no constructor,
  nothing emitted - the same treatment G16 gives a generic function's body. Missing that filter crashed
  codegen on the first field whose type was still a variable, which is how it was found.
  **A numeric literal did not adapt during inference** - `Pick(int64Var, 7)` failed to unify `T`, a
  limitation that predated G8a. **Fixed (G9a)**: a literal whose parameter is a bare type variable binds
  nothing while another argument can, and then adapts at the fit check like any literal; a variable reached
  only by literals takes the widest of their types, by the binary operator's rank. It is T6 applied one
  step earlier, and it was needed before `List<int64>` could take `Push(7)`.
- **An instantiation's NAME is its identity (G16a), and it was under-specified.** Found by asking whether
  two modules instantiating one generic over one type clash. They do not - instantiations are
  `linkonce_odr` and the linker keeps one, which is correct and measured (the corpus emits four copies of
  several instantiations and links cleanly). But the *name* collapsed two genuinely different arguments
  into one: a **struct contributed only its bare name**, so two modules each declaring a `Point` - different
  types by owner+name - shared one instantiation; and **every array contributed the literal `"arr"`**, so
  `Box<int32[2]>` and `Box<int64[4]>` were the same instantiation.
  **Three correct programs were rejected**, each with a diagnostic pointing somewhere else: two array
  instantiations in one module; two modules' same-named differently-shaped `Point` (reported as "unknown
  struct member" on a member that plainly exists); and two modules' *identically* shaped `Point`.
  **Nothing miscompiled**, in every case found: the reuse always failed a later fit check, because that
  check compares by owner+name and the reused instantiation genuinely is the wrong type. So it was a
  diagnostic bug rather than a soundness one - though that is an observation about the cases tried, not a
  proof.
  The fix is one function: a declared type argument is owner-qualified, and an array argument carries its
  element, its length and its reference-shapedness - which is exactly what T25a already says makes two
  array types distinct. Existing objects are rebuilt automatically, since B3 already invalidates an object
  when the compiler binary is newer than it.
- **Rules about what a type CONTAINS are re-checked per instantiation (G18).** A generic cannot answer such
  a question about itself - a type variable contains no reference, no destructor-bearing struct and no
  interface - so a `<T>[n]&s` field satisfied D13 at declaration for every `T` and nothing re-asked once
  `T` became a struct holding a `Box&`. The result was zero-filled storage full of null references in a
  language with no null, and a segfault on the first read through one. Found by enumerating every path to a
  zero-valued reference and checking them one at a time: eight ordinary ones were all correctly rejected,
  and the generic was the ninth. Monomorphization is a *path* like any other, and the lesson is the same
  one `TypeValueChildren` encodes - a containment rule applied in one place gets missed everywhere it is
  not applied.
- **Default parameter values and the `default` argument keyword.** (Defaults are compile-time-computable
  expressions since 2026-10-01 - see the C2d entry; the literal-only rule below is the earlier one.) Spec'd as D8a/D8b and
  E14/E14a. A parameter may declare a default; defaults must be **trailing**, so omitting arguments from
  the end is unambiguous. A call may then omit any number of trailing arguments, or write the keyword
  `default` in an argument slot to reach a later parameter without restating the values before it
  (`connect(h, default, default, 9)`). The same rules apply to a constructor's parameter list with no
  constructor-specific handling anywhere, which matters because a type declares exactly **one**
  constructor - defaults are how that one constructor covers several call shapes, the job overloading
  would otherwise do. A default must be a **literal expression** (E4: token, struct, or array literal),
  never a call: it is evaluated on behalf of callers the declaration cannot see, so it must have a value
  and no other behaviour - no allocation, no scope to name, nothing that can fail. That restriction is
  also what lets a single checked operand, built once in the declaring module's own context, serve every
  call site. **Named arguments were considered and rejected**, and `default` is what replaced them: they
  would make every parameter name of every exported function part of its API permanently (renaming one
  becomes a breaking change), where parameter names are currently internal. The readability they buy is
  better served here by distinct types, which the compiler verifies, than by argument names, which it
  cannot. `default` buys the half that is about *capability* - reaching a later parameter - while leaving
  names internal, and it is reversible in a way shipping named arguments would not be.
- **A closing `}` terminates the statement before it (L20), so any block may be written on one line.**
  `fn g(a int32) int32 { return a }`, `type Point struct(x int32) { x }`, `if n > 3 { n = 3 }`, a
  one-line `test`/`match`/`for`/`do` body - all of it. There is no `;` in olang and a newline synthesizes
  the `STMNT_END` (L18), so before this a block always needed a line break before its `}`; the one-line
  forms simply didn't parse. Safe because nothing but the block's own end can follow a statement inside a
  block, so the peeked `}` can never absorb a token a longer parse would have wanted - and it is never
  consumed, since the enclosing block parser still needs it. Go's own rule is the same. This subsumes the
  ad-hoc `}` lookahead the constructor body briefly needed for `{ x }`.
- **An expression is a statement only if evaluating it can do something (S3).** A call (ordinary,
  constructor, or `try`-wrapped) or one of the four `++`/`--` forms - nothing else. `n`, `x == y` and
  `a + 1` standing alone are compile-time errors, not accepted no-ops: they compute a value and discard
  it, which is dead code by construction and, far more often, a typo for the assignment or declaration
  that was meant. Previously `expr-stmnt` accepted *any* expression, so all three compiled silently. The
  rule holds identically in a function body, a `test { }`, a `destruct { }`, and a `ctor-body`, and it
  gives a bare name exactly one meaning in the whole language: a constructor's bare-pun field (C4), which
  is a field declaration, not a statement, and is a syntax error anywhere else. No existing test relied on
  the old permissiveness.
- **Assignment to a reference overwrites the pointer, in every position (S4a).** `a = b` repoints a local;
  `p.x = q.x` repoints a reference *field* inside whatever instance holds it (visible to everyone holding
  that instance); `p = q` on a reference *parameter* repoints this function's own copy - a cursor local to
  the call, not visible to the caller. One rule, no positional exception, and the third case is useful in
  its own right rather than a defect: a reference parameter doubles as a mutable cursor with no separate
  local. **Write-through was considered and rejected**: `x = y` must imply `x == y`, and E10 compares
  references by *identity*, so copying contents would leave two things equal-by-value but unequal. Making
  `==` structural to repair that would cost O(n) on arrays and destroy C11's reason for existing - a
  destructor-declaring type is reference-only precisely so "which instance owns this" has an answer.
- **Slicing (`a[lo:hi]`, E16a/E16b) - a borrow with the pointer and length adjusted.** Either bound may be
  omitted (`a[:n]`, `a[n:]`, `a[:]`), defaulting to `0` and `len(a)`. The result is a `T[]&` - a
  runtime-length **reference** - tagged to the scope `a`'s own storage belongs to, so slicing a local gives
  an `own`-scoped reference and slicing a `&s` array gives an `&s` one, and a slice goes anywhere the array
  itself could and nowhere it could not. No copy and no allocation: one GEP and two `insertvalue`s. It is
  admitted by `:=` (D15, its type is written right there) and not an lvalue (not assignable), but it does carry the base's **mutability** - without that, slicing would
  launder an immutable array into a `mut T[]&` parameter, two characters to defeat D9, and it did until
  `OperandIsMutableLvalue` learned about slices.
  **A slice's bounds are checked (E16b); an array index is not (E16).** The asymmetry is the point rather
  than an inconsistency. A bad index is one wrong access at the point it is written; a bad slice
  manufactures a *value* that stays wrong for as long as it lives - returned, stored in a field, passed on,
  read any number of times - so the failure surfaces arbitrarily far from the mistake. And the slice check
  is cheap exactly where a per-index check is not: its cost is paid per slice expression, never per element
  access.
  **`try a[i]` (E16d) is the opt-IN to a bounds check**, where `try a[lo:hi]` (E16c) is a slice's opt-*out*
  of its abort. In both, `try` means the same thing - "give me the failure as an error I handle" - and an
  index written without it is unchecked and costs nothing. The safe-and-fast idiom this points at is to
  check once at the boundary and index freely inside: `row := try a[off:off+n]` pays one bounds check for
  the whole loop, where a per-element check pays one each.
  **Indexing was checked for one round of the memory-safety work and then measured.** Against C on
  identical work, `clang -O3` both sides: the check cost ~50% on a data-dependent gather, where nothing
  about the index is provable, and *nothing at all* on a counted loop, where LLVM hoists it out. So it was
  buying safety in one shape and was already free in the other - and since it was removed, olang and C are
  at parity on the gather (0.50s vs 0.51s over 160M accesses, interleaved medians). `try a[i]` (E16d) went with it and then came
  back inverted, as the opt-in above. The original argument for adding it stands and is simply no longer being
  acted on - `a[100000] = 7` really does corrupt whatever is there - which is why **an out-of-range index
  is now one of exactly two unchecked memory-safety holes in the language**, beside `extern` (X1a), and is
  stated as such in the spec rather than left implied.
  **Where the index and the length are both compile-time known there is nothing to defer** - an
  out-of-range constant is an error where it is written rather than undefined behaviour when it is reached,
  which covers most indexing into fixed-size arrays and costs nothing at run time either way.
  **`try a[lo:hi]` (E16c) opts into an error instead of the abort** - the ordinary try expression on the
  ordinary terms, propagating the **bare error** (out of range is one fact with no further detail worth
  tracking, so no new error type is needed and `? error`/`catch error { }` already compose). The two forms
  divide the two cases: bounds the program itself produced (`a[:]`, a checked loop index) cannot fail, cost
  nothing, and put no error on the signature; bounds from a parsed length or a protocol field are written
  with `try` and handled by the caller. **Making every slice fallible was rejected** - it would put `try` on
  slices that provably cannot fail and make "this function can fail" depend on whether it slices, cascading
  through every caller. `try` on a slice is expression-only: the `try ... catch { }` *statement* discards
  the value it guarded, which for a call is the point (C7) but for a slice leaves only the bounds check
  behind, so the slice would have to be written again to be used.
  Slicing is what `io.olang` was waiting on: `Write` now re-slices the unwritten tail and retries instead of
  reporting `PARTIAL` and giving up, and `Read` exists at all - it returns `buf[:n]`, a borrow of the front
  of the caller's own buffer, so the length rides with the value instead of being a count the caller must
  remember to respect. Both were impossible to write before. `Read` also needed `buf` and the return type to
  share a scope variable (`fn Read(fd int32, buf mut byte[]&s) byte[]&s`), which is exactly what O3's
  scope variables are for: the returned slice points into the caller's buffer, so its lifetime is that
  buffer's, and saying so is what makes returning it legal at all under O13.
  **`\0` became a valid escape** alongside `\n`/`\t`/`\\`/`\'`/`\"` - every C interop path needs a NUL
  terminator and no other syntax produces a zero byte.
- **Concurrency: `spawn <call>` statements inside a `join { }` block (P1/P1a/P1b/P2/P4).** `spawn f(a)`
  starts one task and returns immediately; `join { }` is an ordinary block whose end waits for every spawn
  written inside it. **Each task is a call, not a body**, because there are no closures - an argument list
  is the only way to state what a task is handed. **The join is a block, not the function**: joining at the
  function's exit lets the spawner read a task's results *before* the join, which is the very race the
  design exists to prevent - a test caught exactly that on the first attempt.
  **The block used to be both halves at once** (`spawn { f() g() }`, every statement a task, the block's
  end the join), and splitting them is what made the feature usable. One block doing two jobs meant a spawn
  block could hold **no ordinary code at all**, no result could be read between two spawns, there was no
  way to say "join here", and - the one that decided it - **a loop could not start a task per iteration**,
  because a block's statements are fixed at compile time. `join { for i ... { spawn f(ts[i]) } }` is now
  genuinely parallel fan-out, which the old form could not express in any spelling. What the split does not
  change is the join's position: it is still a block.
  **`{{` is fine.** The alternative considered was putting `join` in a function's signature position
  (`fn f() Type join { }`), rejected because it does not compose - `if cond join { }` would need the same
  treatment everywhere a block appears, which is the ugly version. A body that is entirely one join block
  reads fine indented.
  **Binding is lexical and one level deep (P1a).** A join takes exactly the spawns written in its own
  block - through nested ordinary blocks (an `if`, a loop), never through a function call. A callee that
  spawns needs its own join, which has finished before it returns. Three programs are rejected: a join with
  no spawn of its own (including one whose only spawn belongs to a nested join), a spawn with no enclosing
  join **in the same function**, and an argument declared in a block that closes before the join does.
  **The `spawns` signature effect buys no expressibility, which is why it is deferred rather than missing.**
  Propagating a callee's spawns to a caller's join would need "this function spawns" in its signature, since
  a caller checks a callee by its signature alone. But every shape it would enable already reduces: a helper
  that fans out on its caller's behalf joins its own fan-out and is itself `spawn`ed, and the caller's join
  then waits for everything transitively while the caller's own work still overlaps - same parallelism, same
  join point, verified by a corpus test. What the effect saves is **one parked thread per helper call**, and
  nothing else. The one case that does not reduce is a helper that must both start tasks outliving its
  return *and* hand back a value now, since `spawn` discards a result - narrow, and answerable with an
  out-parameter. Against that saving: it is viral (every transitive caller carries the marker), and it makes
  P2's argument-lifetime check non-local - a helper's spawn arguments would have to outlive a join block in
  a caller it cannot see, which is an obligation on the signature rather than a fact about one body, i.e. a
  second obligation system beside O10b's. Purely additive if usage ever argues for it.
  **The join is on every path OUT of the block (P1b)**, not just its last statement: `return`, `break`,
  `continue` and a propagated error all wait first, because the block's arena (O2) is reclaimed on the way
  out and a task may still hold storage from it. That is a genuine hole the block form never had - the old
  spawn block had no exits - and it needed a second list in codegen, kept in lockstep with the open block
  scopes, so both unwinders (`cgCloseOwnScope` for returns/errors, `cgUnwindToLoop` for break/continue) see
  which of the scopes they are closing is a join. `done`/`fail`/`abort`/`unreachable` are exceptions and
  are correctly not joins: each ends the process, so no frame is left to outlive.
  **A join block is an ordinary block, so it is an ordinary scope (O2)** - and that fell out with no
  concurrency rule of its own. A task allocating into its caller's `own` allocates into the *join block's*
  arena, so its values and destructors live until the block closes and no further. This changed one corpus
  test's expected answer (handles made on tasks now destruct at the join block's close rather than at the
  function's return), which is the correct reading rather than a regression: a task whose result must
  outlive the block names a scope, exactly as any other call does.
  **The lifetime half needed almost no new rule**, which was the bet: a task's arguments are ordinary E12c
  borrows of the spawner's storage, and the spawner cannot leave the join block until every task finishes.
  §8's containment check applies unchanged. The one thing the block form got for free and the split does
  not is that an argument must outlive the **join block** - an argument declared in a block nested inside
  the join does not, and is rejected (P2).
  **P3 and P5 are both withdrawn: `spawn` checks nothing about what tasks reach.** P3 forbade handing one
  variable to two tasks in one block when either could write it, and was stated as the data-race rule. It never was one.
  It compared the **roots written in the block**, and equal roots is a *sufficient* condition for two tasks
  reaching the same storage, never a necessary one. **A global needs no argument**, so a task's use of one
  was never visible in the block; and **two arguments can be one instance**, since `b mut T& = a` gives two
  names for one allocation (S4a). Closing either means deciding whether two references alias, which is what
  an ownership-and-borrow discipline exists to make decidable - and this language deliberately has none.
  **What settled it was inconsistency, not incompleteness.** It rejected *one spelling* of a race and
  admitted every other: `f(a)` twice was an error, `b = a` then `f(a)`, `f(b)` was not, two tasks writing
  one global was not. The same program three times. A rule that stops the naive spelling, cannot stop the
  others, and forbids a correct bounded channel on the way, is a style rule carrying the force of an error.
  `shared` went first and for the same reason - it waived P3 for a whole type on a promise nothing checked -
  and once P3 was admittedly not a guarantee, an exemption from it meant nothing.
  **A borrow checker would not be the fix, it would be a different language.** Rust needs ownership because
  it must free at exactly the right moment, and uniqueness is what makes that decidable; olang frees when a
  scope closes, so the question never arises. Several references to one instance are already ordinary and a
  struct can already embed itself through `&`. Adding aliasing-XOR-mutation would buy nothing for memory
  management and cost the doubly-linked list, the graph, and the parent pointer.
  **So a program that spawns owns its own data races**, beside `extern fn` (X1a) and out-of-range
  indexing (E16e). What remains is structural rather than checked, and is the part worth having: every task
  is joined before its join block is left, by whichever path leaves it, and a task's arguments cannot
  outlive that block (P1b/P2). The concurrency story is one sentence again.
  **`chan.olang` is a bounded blocking channel written as ordinary olang**, with no compiler help at all:
  a ring buffer in a D14a run-time-sized field, and pthread mutex/condvar reached through
  `extern fn`. Since X2's extern choiceulary is numeric primitives and arrays of them, a `pthread_mutex_t`
  is a `byte[40]` and a `pthread_cond_t` a `byte[48]`, which X3 marshals to exactly the pointer pthread
  wants. Those sizes are glibc/x86-64 and a wrong one is silent corruption - the honest cost of having no
  way to name a foreign struct, and the strongest argument yet for extern gaining one.
  A spawned function **may not declare errors** (P4): an error raised on another thread has nowhere to
  propagate, since the join carries no value and the spawner has left the call site. Runtime-wise a task is
  an OS thread (`pthread_create`/`pthread_join`, 1:1 rather than M:N) driven by a per-task trampoline that
  unpacks an env struct. That env, the task node and the merge records are all bump-allocated **from the
  join block's own arena**, not `alloca`'d: a spawn inside a loop runs any number of times, so an `alloca`
  in the spawner's frame grew the stack per iteration. The arena is valid for every task's whole life
  precisely because of the join. The chunk free-list became `thread_local`, which is correct rather than merely faster: a
  scope belongs to one thread, and so do the chunks it takes and returns.
  **A task handed a scope by name gets a private arena standing in for it, folded back at the join (P2).**
  P2 used to claim "allocation is per-thread, so tasks never contend for one arena", and that was simply
  false whenever a task's parameter carried a `&s` tag: the scope pointer is a hidden argument, so two tasks
  bumped one cursor with no synchronisation, were handed the same chunk, and prepended two chunks onto one
  list head. Reproduced as a **glibc-level heap corruption assert in four runs out of five**, not a lost
  update. The fix is a runtime one and costs no expressibility: each task allocates into its own empty
  scope, and after every join the spawner splices those chunks and dtor nodes into the parent. **The merge
  copies nothing** - it relinks two list heads, which is not an optimization but a correctness requirement,
  since the whole point of a task allocating into the spawner's scope is that the spawner holds references
  to what it built. This was cheap only because the allocator was already a chunk *list* with a recorded
  tail: `__olang_scope_close` performs the identical splice onto the free pool, so merging is that same
  six-instruction operation with a different destination. Measured: **indistinguishable** (40,000 tasks,
  medians 1.86s vs 1.88s), and ~46 bytes per task, because the sub-scope's chunk is recycled with the
  parent's rather than dropped. Emitted only for a callee that names a scope variable - a bare `&`
  parameter names none (O4a) - so 12 of the corpus's 20 tasks, including every pre-existing one and all of
  `chan.olang`, emit nothing at all.
  **A failing `assert` on a task thread aborts (P6)**, because `@__olang_jmp_target` is `thread_local` now.
  It was a plain global, so a task's failed assert `longjmp`ed onto the *spawner's* stack while the spawner
  was still parked in `pthread_join` on that very stack - two threads on one stack, which happened to look
  like it worked. There is nowhere on a task thread to recover to, for exactly the reason P4 gives for
  errors. The hard-abort path also moved from `printf` to `stderr`, since stdout is block-buffered whenever
  it is not a terminal and `abort()` was discarding the message precisely when output was being captured.
  **A task's chunk pool is handed back when its thread exits (P2a).** The pool is `thread_local`, so a
  task's chunks used to be lost with the thread that held them - a leak proportional to the number of tasks
  that allocate rather than to what they allocate. **132MB over 32,000 tasks, against 3.2MB after**, and
  marginally faster rather than slower. Nothing reachable is released: every chunk on the pool belongs to a
  scope that has already closed, and a scope the task was *handed* is spliced into its parent at the join
  instead of being reclaimed on the task's own thread.
- **Methods (M19) - declared with a receiver clause, called only as methods, and available on built-in
  types.** `fn (p Point&) Norm() int32` declares a method; `p.Norm()` calls it, and **nothing else does** -
  `Norm(p)` is a compile-time error, as is taking a method as a function value. Methods live in a namespace
  of their own keyed by receiver type, so a method and a plain function may share a name. The receiver is
  spliced in as **parameter 0 of the signature**, which keeps what made the old form cheap: D9's `mut`/`&`
  axes, E12's conversions and §8's containment all apply with no special case, and whether `x.f()` writes
  through to `x` is still read off the signature. **"The type's own module" is still the coherence rule** for
  a declared type (and for an interface receiver, M19a); a method may not share a name with a field of its
  type.
  **This replaced UFCS - "a function in the type's module whose first parameter takes that type is a
  method, callable both ways" - and the reason was built-in types.** Under that rule a method on `int32` or
  `byte[]` was impossible to even state: every `fn helper(n int32)` anywhere would have become one, and
  they would all have collided. A receiver clause says it on purpose. Once it did, the both-ways calling
  convention had nothing left to justify it, and the user's decision was "methods are to be called as
  methods". That in turn **settled the built-in collision question**: with no plain-call spelling to fall
  back on, two modules claiming `int32.Twice` could not be disambiguated anywhere, so a
  *(built-in type, method name)* pair was declared **at most once in the whole program**. **M19c replaced
  that with import-scoped visibility** (see M22): a built-in's method is visible where its module is
  imported directly, and two visible claims are an error at the *call*. **No module is privileged** - the
  standard library is held to the same rule, which is what keeps built-in methods ordinary olang rather than
  a stdlib intrinsic.
  **An array receiver is keyed by its element type alone**: `(a int32[]&)` serves `int32[3]`, `int32[n]` and
  a slice, since the length kind and the marker are E12's business at the call. A type-variable element
  (`<T>[]&`) is a method of every array; a specific element type is a different receiver and wins where both
  apply - G8a's precedence, reused. A generic method over a still-generic declared type (`(c Cell<T>&)`)
  resolves `T` over the whole signature, receiver included, exactly as G8a already required.
  **Corpus migration was 29 declarations and 7 call sites**: only functions actually *called* as methods, or
  needed to satisfy an interface or to render through `Str`, became methods; the other ~70 old-rule
  "methods" were only ever called plainly and stayed plain functions, which is itself the argument that
  inferring method-ness from a parameter's type was guessing.
  **Two pre-existing bugs surfaced while migrating, both silent.** A `return` checked only four of the
  type-fit outcomes and dropped the rest, so `fn f() byte { return 300 }` compiled and **returned 44**,
  and a returned value that did not satisfy the interface in the return type reached codegen and crashed
  the compiler. It now reports every outcome as every other fit site does. And **`null` could not be
  assigned to an interface at all** - T2a lists interfaces as nullable, but the fit check asked whether
  `null`'s type satisfied the interface before asking whether it was `null`. Both are fixed; neither is
  coverable by a corpus test beyond the null case, since the first is a compile error now.
  **T29 is the prerequisite, and was a real gap**: `type Meters int32` used to be a *transparent alias* - it
  had a name but no identity, so `int32` and `Meters` were the same type and there was nothing to attach a
  method to. A declared type is now nominal even over a primitive, which is also what makes `type Meters` /
  `type Feet` worth writing at all. `Meters(x)` converts in as `int32(x)` converts out, and where the
  representation is shared the conversion emits nothing. Confined to the vanilla branch of `TypeIsSame`:
  struct/choice/error already compared by owner+name, and applying it to func/array/typevar wrongly broke
  generic callbacks. The corpus had zero non-struct named types, so the change cost nothing to adopt.
  **The receiver is the whole chain before the method name**, not one identifier: `a.b.f()` calls `f` on
  `a.b`, and `a.b.c.f()` on `a.b.c`, to any depth. The chain is *probed* over types first, building and reporting
  nothing - a chain that doesn't resolve simply isn't a method call, and the ordinary call path keeps
  ownership of the real diagnostic, so a mistyped cross-module call doesn't get a bogus "unknown struct
  member" from the method path on its way past.
  **M20 is what makes that unambiguous: an import's alias name is reserved in the module that wrote the
  import** - no type, function, global, local or parameter there may reuse it. A cross-module call
  (`lib.f()`) and a method call (`m.Add(n)`) go through the same `alias-chain IDEN` grammar, so the left of
  a dot has to mean exactly one thing; with the reservation, a leading name that resolves to a value in
  scope can never also be an alias, and the two readings are mutually exclusive by construction. **The hole
  it closes predated methods and was silent**: an alias and a same-named declaration simply coexisted with
  no diagnostic and the declaration won, so a module importing `matrix.olang` while declaring its own
  `matrix` had `matrix.New` quietly resolve to the local one - the collision the user had flagged as "always
  really ugly", surfacing as a wrong answer rather than as ugliness. The reservation is per-module (an
  unrelated module may declare that name; two modules may alias the same import differently) and is one
  predicate checked at four sites - `collectType`/`collectVar`, `resolveParamList`, and `scopeDeclare`,
  which gained a module parameter for it. Nothing in the corpus had to be renamed.
- **Interfaces (T30-T35, E12d, M19a/M19b) - Go-style: structural, implicitly satisfied, dynamically
  dispatched.** `type Writer interface { Write(d byte[]&) int32 ... }` declares method signatures and
  nothing else. A type satisfies it when it has matching **methods** (M19) - no declaration
  of intent on either side, no `implements`, and an interface never names its implementations. That is
  M19's method lookup reused wholesale, which is why it was cheap: an interface is satisfied by the methods
  a type already has, and M19's coherence rule (only the declaring module may give a type methods) becomes
  the coherence rule for satisfaction too. **Called `interface` because Go's word fits** - `trait` and
  `protocol` both signal *declared* conformance, which is the opposite of this.
  **Implicit rather than declared (`implements`) was re-examined and kept, and the deciding reason is a
  module one.** M19 lets only a type's own module write its methods, so a declaration of intent would have
  to live there too - naming only interfaces that module already imports, which points the dependency
  from implementation to interface. A consumer could then never fit a foreign type to an interface of its
  own without a wrapper, and a built-in type, which has no module, could not be declared to satisfy
  anything. Rust escapes that with `impl` in either crate plus the orphan rule, a much larger system.
  What declared conformance *would* buy is real and was recorded rather than dismissed: an error reported
  at the type rather than at a distant conversion (answerable later by an optional assertion, purely
  additive - a `test` block converting the value does it today); interface changes breaking at the
  implementers' declarations; and a **closed set of (type, interface) pairs**, which is the one that
  costs something. Interface-to-interface conversion and type switches need the target's table picked at
  run time, and with implicit satisfaction the target may live in a module the type's module never saw -
  so those features will need either per-type method metadata at run time (Go's answer) or a table built
  over the whole program at link time, which fits olang better since `-b` links everything under LTO
  already. That is a decision for when the feature is built, not a reason to change models now.
  **An interface value is the pair (concrete type, instance)** - two words, like a runtime-length array's
  `{ len, ptr }`, because the value genuinely is two things. The instance half is an ordinary **E12c
  borrow** (E12d), so an interface names the very instance and never owns or copies one, and the lifetime
  check that applies to every other reference applies here with no new rule. That makes an interface
  **reference-only (T32)**, the way a destructor-bearing struct is (C11), but from the other direction: a
  destructor-bearing struct must be a reference because it needs a well-defined instance count, an
  interface because it has no instance of its own for a by-value form to denote. The marker is still
  written at every use, and carries the scope tag.
  **`mut` on a method signature is the receiver half of D9's two axes**, and it has to be on the interface
  because the concrete receiver is invisible at a dispatch site - without it, whether `w.M()` may write to
  what `w` names would depend on a type the call cannot see. A `mut` method is satisfied only by a
  `mut T&` receiver and requires a mutable receiver at the call, which is the same immutability-laundering
  check every `mut &` argument already gets.
  **P3/P4 needed nothing.** The receiver is parameter 0 of an ordinary call, so a `mut` method's receiver
  is a `mut &` argument and spawn's exclusivity rule applies to it unchanged; the task env already carries
  a function *pointer*, so a dispatch-table entry slots straight in.
  **A private method name seals an interface, for free.** M6 says a private name belongs to its declaring
  module, so only a type in *that* module can supply it - no importer can implement such an interface,
  though anyone may hold and pass a value of it. Go's own idiom, falling out of a rule already written.
  Deliberately **not** done yet: type assertions/switches (the table's address already identifies the
  concrete type, so there is somewhere to hang them), interface-to-interface conversion (the concrete type
  isn't known until run time, so the target's table can't be picked at the conversion), and generic
  interfaces or generic method signatures (T35 - a dispatch points at one compiled function, a generic
  names a family).
  **Two things had to be built underneath, both found by writing the obvious first test.**
  **M21, method overloading by receiver:** a module may declare several methods sharing a name as long as
  each has a *different* receiver type. Without it `Area` on `Square` and on `Tri` clash, so two types
  in one file could not both implement one interface - the very first thing anyone writes. It needs no
  overload resolution, because a method is only ever reached through its receiver (M19). Method symbols
  carry their receiver type (a built-in's spelled by shape), uniformly rather than only when a sibling
  exists, so a symbol never depends on what else a module declares. **M19b, a postfix method call:** `items[i].Area()` did not parse at all - the call form is built
  around an `alias-chain IDEN`, which reaches only identifiers - so a method on an indexed or returned
  value was inexpressible, and "several types in one collection, each dispatched to its own method" is the
  entire point of interfaces. A `.` member followed by an argument list is now a method call on whatever is
  to its left, sharing one resolver with the name-chain form.
  **Two implementation notes worth keeping.** A by-value receiver reaches the table through a generated
  **thunk** that loads the aggregate first, since the dispatch always hands over a pointer; T31 admits both
  receiver shapes on the grounds that the latitude E12 gives every other argument should not stop at this
  one, and the thunk is what that costs. And the error lists must match **in order**, not merely as sets,
  because the error-union ABI numbers a function's words by their position in its own declared list -
  identical lists are what let a dispatch reach the real function with no re-encoding. A fallible dispatch
  also exposed a latent duplication: `cgTryCatch` had its own copy of `cgFuncCall`'s target-and-argument
  lowering, knew nothing about dispatch, and crashed the compiler on `try w.M()`; the two now share one.
- **Every alloca belongs in the entry block (O2c) - and this was a live bug at `-O3`, not a debug-mode
  one.** A local or temporary declared inside a loop was alloca'd *where it was written*, so the stack grew
  by a slot per iteration and overflowed at around a million. **O2 records this exact trap** - "an alloca
  inside a loop grows the stack by a header per iteration and segfaults at a few million" - and hoisted
  **scope headers** for it; ordinary locals and temporaries were never given the same treatment.
  **Why it stayed invisible, stated precisely.** A non-entry alloca is promoted to a register *when LLVM
  can*, and it cannot when the local's address escapes into a call it is unable to inline - which an
  ordinary cross-module call is, since without LTO there is nothing to inline. So the single-module version
  of a program is fine and the two-module version is not. Measured at `-O3` in an ordinary `-b` build: a
  loop declaring a local and passing it to a function in another module runs at 1,000 and 100,000
  iterations and **segfaults at 1,000,000**, which is where 8MB of stack over ~8 bytes per iteration says
  it should.
  **The fix is what a C frontend does, verified rather than assumed**: clang hoists a fixed-size local to
  the entry block regardless of where the source declares it - checked directly on a C loop declaring a
  struct. The other sanctioned approach, `llvm.stacksave`/`llvm.stackrestore` around the loop body, is what
  clang uses for **VLAs**, the allocas it cannot hoist. That does not apply here: olang emits **no
  variable-length allocas at all**, because a runtime-sized array goes to the arena rather than the stack.
  So all thirty sites now write to a per-function entry stream spliced ahead of the body.
  **The first fix covered one emitter of four, and the rest were found by checking rather than reasoning.**
  Hoisting inside `cgFunction` left `main`, the test harness's `main`, the per-module globals initializer
  and the `linkonce_odr` deep-equality helper untouched - and the harness is where it mattered most, since
  every test body is emitted into that one function, so a corpus test's own loop overflowed the stack. One
  of the four was subtler than "a site that was missed": the body buffers **nest**, because a deep-equality
  helper can be reached while another body is mid-emission, and the first version restored the alloca
  stream to *none* rather than to the enclosing one - so every alloca after the first choice comparison in
  a function stopped being hoisted. The emitters are a list nobody can be sure they have finished, so the
  rule is now **checked mechanically**: `make checkir` reads the emitted IR and fails on an alloca in any
  block after the entry block, and `make verify` runs it. That is the same move `TypeValueChildren` makes
  for containment rules - a rule applied by hand in each place gets missed in the place nobody thought of.
  **Found by `-debug` on its first serious use**, which is the argument for having the mode: at `-O0`
  nothing is promoted, so the bug is unconditional instead of depending on whether a callee inlined.
  Two things pointed the wrong way first. It reproduced through `done` inside a `join` and looked like a
  concurrency bug in the P1d unwind path - it is not, the same loop crashes with an ordinary block end -
  and that framing was plausible only because `-O3` folds a task's loop away entirely, so the task finishes
  before the crash can happen. What settled it was reading the fault instead of theorising: a plain
  prologue spill to just below `rsp`, the guard page, with every frame on the path under 200 bytes.
- **Full optimization by default; `-debug` is the one exception (B2c).** Everything the compiler emits is
  built at `-O3`, in every mode, because the language's own line is that you get what the machine can do
  unless you asked otherwise. `-debug` is the single mode that turns that off, and it is a modifier like
  `-race`, valid anywhere in the arguments and composing with it (`-debug -race` is `-O0 -g
  -fsanitize=thread`). The compile and link steps share one `modeFlags()` so they can never disagree -
  linking `-O3` objects with `-O0` ones is not an error, merely silently not what was asked for.
  **A debug object is a distinct artifact** (`.debug.o`), for the fourth time the same reason applies: a
  `-debug` build that reused optimized objects would produce exactly what was not asked for, with no
  diagnostic. That is B4's rule, now hit by `.main.o`/`.test.o`, `.tmod.o`, `.race.o` and `.debug.o`.
  **It now carries DWARF (B2e)**: `break scale`, `break file.olang:12`, `next`, `info args`, `info locals`
  and a source-level backtrace all work in gdb, verified end to end. Until this the `-g` was inert - the
  compiler emitted no debug metadata at all. **How it was built, and the three things that had to be got
  right.** Locations are attached after the fact: `cgStatement` writes a `; dbgloc N` comment and, when a
  body is flushed, every instruction line gets the location of the marker above it - so none of the
  hundreds of emitter sites changed, and a body with no subprogram (a helper, the globals initializer) is
  left alone. (1) **The prologue must stay unlocated except for calls**, as clang does: LLVM puts
  `prologue_end` on the first located instruction, so locating the parameter stores made gdb stop before
  them and show garbage arguments. (2) **No `linkageName`**: with a C compile unit gdb took it as the
  function's name, so `break scale` found nothing. (3) **`-race`'s attribute rewrite** had to learn to put
  `#0` before `!dbg`. Primitive and reference locals and parameters are described; by-value aggregates are
  not yet, and a test build's tests share one scope (all in the harness's `main`, named `olang.tests`).
- **Link-time optimization, on by default (B2d) - and it made builds FASTER rather than costing something.**
  Each module compiles to bitcode and the whole program is optimized once at the link, so a cross-module
  call inlines exactly as a same-module one does. That follows straight from B2c's line: whole-program
  inlining is backend optimization, and the rule is that you get it unless you asked otherwise.
  **What it buys, measured**: a hot loop calling a small function in another module runs **0.834s -> 0.145s,
  5.75x** (interleaved medians, through the compiler itself). The mechanism is not the call overhead - it
  is that a call LLVM cannot see through **stops the loop vectorizing at all**, the same effect E26a's
  removed conversion check had; the vector instruction count goes 10 -> 58 and the callee disappears from
  the binary entirely. Where the loop is memory-bound, or where a serial dependency already hides the call
  latency, the same program measures **identical** - so the win is real and is not universal.
  **What it costs: nothing, and that was the surprise.** A clean `-b` of the corpus went **0.50s -> 0.386s**
  and a `-c` of its largest module **0.36s -> 0.23s**, because `-c -flto` only writes bitcode and the
  optimizer runs once over the merged program instead of once per module. Two things make that cheaper
  here: the runtime is emitted `linkonce_odr` into **every** object (16 functions x 4 objects in the corpus,
  48 copies optimized and thrown away), and four full `-O3` clang invocations become four cheap ones plus
  one.
  **ThinLTO was measured and not chosen.** On the benchmark it is **indistinguishable** from full LTO
  (0.146s both, interleaved - a first, non-interleaved comparison had shown it 14% ahead, which was drift),
  and at this scale it *builds slower*, 2.8s against 2.5s, because its parallel machinery has a fixed cost
  and there is nothing here to parallelize. It is the right answer for a large codebase with incremental
  rebuilds, which is the thing to revisit if olang programs ever get big.
  **`-race` deliberately stays out**, for the reason it is already at `-O1`: a report has to name the
  function the race is in, and cross-module inlining moves code between functions. `-debug` turns it off
  with everything else.
  **`-c` now writes bitcode rather than a native object**, which is what `-c -flto` writes in any compiler.
  Nothing had to change for the switchover, because B7 already rebuilds an object when the compiler binary
  is newer than it - verified directly: fresh ELF objects plus a newer compiler produced bitcode and a
  working program, where without B7 the format change would have been a silent mismatch.
- **Concurrency: the open gaps, in the order they should be done.** Recorded rather than fixed; each was
  measured or reproduced, and the evidence is in HISTORY.md.
  **1. DONE (P1c) - `pthread_create`'s result was discarded.** The id slot is pre-zeroed, so a failed
  creation left 0 and the task silently never ran. **The real failure mode was worse than the predicted
  one**: `pthread_join(0, ...)` does not crash, it returns `ESRCH`, so the join completed normally and the
  program **exited 0 having skipped an arbitrary amount of its work**. Silent wrong answers, not a
  segfault.
  Reproduced by capping address space (`ulimit -v 2000000`) rather than thread count - each thread stack
  reserves 8MB of virtual address space, so `pthread_create` starts failing after a couple of hundred live
  tasks, where an earlier attempt with `ulimit -u` never fired because finished threads release their
  kernel slot. Before: a program asserting that all 2,000 of its tasks ran printed `assertion failed`;
  without that assert of its own it exited 0. After: `could not start task`. It aborts rather than
  degrading to an inline call - degradation looks graceful and is not, since two tasks talking through a
  channel deadlock the moment one runs to completion before the other starts. One compare per spawn,
  against ~51us to create the thread, so it is on the right side of the per-construction line D14b draws.
  Not coverable by a corpus test: it needs resource exhaustion to fire.
  **2. DONE (P1d, and S18b with it) - a task outlived a test abandoned by a failing `assert`.** The two
  were one piece of work because they masked each other: the `longjmp` ran no join, and it also elided the
  scope closes, so the abandoned arena was never recycled and the still-running task wrote to memory
  nobody reused. Fixing S18b alone would have handed those chunks to the next test and turned a leak into
  a use-after-free.
  **The fix is to unwind before the jump, not at the landing point.** The runtime keeps a thread-local
  chain of the scopes currently open - nodes alloca'd beside the scope headers they describe, linked
  across frames - and a `longjmp` walks it down to a mark taken before the `setjmp`, joining each `join`
  block's tasks and then closing each scope. Emitting the closes at the recovery point cannot work, and
  that is not a matter of effort: LLVM does not model longjmp's edge, so on the only path it can see into
  that block the scopes are provably still zeroed and it deletes the closes. Correct reasoning about a CFG
  that lies.
  **It reaches through frames**, so a handle in a callee's own scope and one in a block nested inside that
  callee are both destructed. Two corpus tests pin it, written with `done` rather than a failing assert -
  `done` ends a test as *passed* through the same longjmp path, which is what lets a regression test for
  early exit be a green test. Both fail without the fix.
  **Cost, and why it is confined.** The chain is two stores per block entry and one per exit, but the real
  cost is that putting a scope pointer in a global makes it *escape*, so LLVM can no longer delete arena
  work it had proven dead: **2.4x on an allocation-heavy loop**, measured, and measured again with the
  allocation genuinely escaping so it was not a dead-code artifact. So it is emitted **only for test
  builds** - outside `-t` a failed check aborts the process, no longjmp exists, and there is nothing to
  unwind. A module built for a test is a distinct artifact (`.tmod.o`), the same reasoning B4 gives for
  `.main.o`/`.test.o`. Production builds measure identical to before.
  **A pre-existing inefficiency this uncovered:** the runtime's `thread_local` globals were emitted with
  LLVM's default general-dynamic TLS model, which lowers *every* access to a `call __tls_get_addr@PLT` -
  including `@__olang_chunk_pool`, in the middle of the allocator's hot loop. They are
  `thread_local(initialexec)` now, a direct `%fs`-relative load, which costs nothing since these are only
  ever linked into an executable. That removed all 14 PLT calls from the benchmark function and speeds up
  every allocating program, not just test builds.
  **3. DONE (P1e) - a `spawn` created a thread and the join destroyed it**, ~51us and ~8.4KB each, with a
  finished task's stack held until the join, so a `join` block's peak was set by how many spawns ran
  through it in total rather than by how many were live at once. Measured linear beforehand:
  25k/50k/100k spawns at 212MB/422MB/842MB.
  **Threads are CACHED, not pooled and not scheduled.** A finished worker parks on a free list and the
  next `spawn` takes it, so a thread is created once per *peak concurrency*. Measured on 100,000 spawns:
  **5.4-6.0s and 843MB before, 1.13-1.20s and 6MB after** - about 5x faster and 140x less memory.
  **Nothing is pre-created** - workers appear on demand and the count tracks live tasks, not total spawns.
  Measured by polling the live thread count (all figures include the main thread): 40 sequential joins of
  one task each need **2**; eight genuinely concurrent long tasks need **9**; **100,000** tiny tasks in one
  join block need **10**, because they finish faster than the spawner hands out work.
  **At most 64 idle workers are kept (P1f)**, which is the answer to "should it come back down when the
  load does". Without it the high-water mark was held for the life of the process: a burst of 300 tasks
  followed by a long single-threaded tail sat at **246 threads and 64MB** forever. With it the same
  program decays to **65 threads and 9MB** - 7x less resident memory in the quiet phase. Most of that is
  the **chunk pools**, not the stacks, which is why a retiring worker drains its pool; that is the one
  place P2a's drain is still needed now that a parked worker normally keeps its pool for the next task.
  **The cap is on the cache, never on concurrency**, and that is what makes it safe: `__olang_worker_get`
  still creates a thread unconditionally when none is parked, so a live task is never refused one and 1:1
  is untouched. A fixed-size *pool* bounds how many tasks may run and deadlocks on a nested `join` or on
  `chan.olang`'s mutex; a bound on *idle* threads is something nothing can ever wait on.
  **64 is deliberately generous.** A tighter cap thrashes - destroying a worker only to recreate it costs
  the ~51us the cache exists to save - and an ordinary parallel workload never reaches it, the 100,000-task
  fan-out settling at 9. The bookkeeping costs about **8%** on that fan-out (1.17s to 1.27s median), which
  is one counter under a lock already being taken, and buys the bound above.
  An idle-timeout reaper was rejected: it needs a timer thread and a decay policy, which is the first real
  piece of the scheduler this design does not build, for what one counter solves.
  This keeps 1:1 semantics exactly, which is what makes it correct and not merely fast: every task still
  owns a thread, so one that blocks on a nested `join` or on `chan.olang`'s mutex starves nobody. A
  **fixed-size pool would deadlock** on precisely those two constructs, which is the hazard Go's M:N
  scheduler exists to remove and which 1:1 simply does not have. `chan.olang`'s producer/consumer is the
  standing proof: it needs two tasks live at once and passes.
  **The one thing that had to be got right was WHEN a worker is returned**, and getting it wrong first is
  what showed why. Returning it at the `join` - which is where `pthread_join` used to sit, so it looked
  like the natural place - frees nothing until the block ends, so a fan-out reuses **nothing**: 100,000
  spawns built 100,000 workers that then sat parked and alive where plain threads had already exited.
  That measured **225s**, a 44x regression on the very workload the change exists for. A worker is
  returned the moment its task's call returns, which means the completion flag has to live in the **task
  node** rather than in the worker - by the time a `join` looks, the worker belongs to someone else.
  `pthread_join` is gone as the completion signal, since a cached worker never exits.
  **P2a inverted and got simpler**: a worker does not exit, so its chunk pool persists and the next task
  on it reuses the chunks. The leak P2a existed to fix is gone by construction, and what is retained is
  bounded by worker count rather than task count.
  **One collision worth remembering**: the runtime now declares `pthread_mutex_lock` and friends, and
  `chan.olang` declares some of the same symbols as `extern fn`. LLVM rejects a duplicate `declare`
  even when the signatures agree, so the runtime's declaration stands for both and `emitExternDecls`
  skips those names. `pthread_mutex_init`/`pthread_cond_init` are deliberately **not** declared by the
  runtime at all - `chan.olang` declares them with an `i64` attr where the runtime would want a `ptr`,
  and that really would disagree - so a worker's mutex and condvar are zeroed instead, which is their
  initialized state (glibc's `PTHREAD_MUTEX_INITIALIZER` is all-zero). The same glibc dependency
  `chan.olang` already carries.
  **M:N is deliberately NOT the plan, and the deciding question is what `spawn` is for.** Go needs it
  because goroutines are its only concurrency primitive and carry I/O concurrency - thousands of *blocked*
  tasks on a few threads - which is what growable, moving stacks buy. olang has no async I/O (`io.olang`
  is blocking `read`/`write` through `extern`), so `spawn` is for **parallelism**: splitting CPU work
  across cores, where you want roughly core-many tasks and 51us of setup is noise. The per-spawn cost only
  bites when tasks vastly outnumber cores, which is the shape M:N serves and the language has no use for
  yet. Against that, a scheduler with moving stacks would be the largest piece of hidden machinery in the
  language - Go's runtime is over a megabyte, where olang's is a bump allocator and a chunk pool.
  Revisit only if olang grows async I/O, which would need an event loop before it needed a scheduler.
  **4. DONE (P1g) - `spawn TARGET = CALL` binds what the task returns.** Before it, the only route was a
  `mut &` out-parameter, which **infects the callee's signature**: a function naturally written as
  `fn square(n int32) int32` had to be rewritten to take a slot it does not otherwise want, purely so it
  could be spawned.
  **What it really buys is parallel map**, and that falls out rather than being designed in:
  `join { for i ... { spawn out[i] = f(i) } }` needs no lock, no helper and no new type, because each task
  writes a slot nobody else touches and the join supplies the happens-before (P8). The target's address is
  taken **at the spawn**, not when the task runs, which is what makes `out[i]` mean slot `i`.
  **The store happens on the task's thread the instant its call returns**, which decides the two
  restrictions: the target's type must be *exactly* the return type, since there is no caller frame left to
  run a conversion in; and the target must outlive the join block, on precisely the terms P2 already states
  for an argument. Plain `=` only - a compound assignment would read the target on the task's thread, which
  is a race written by accident.
  **Futures were considered and rejected.** A `Task<T>` handle is the obvious alternative, and the extra
  expressiveness it buys - passing a handle around - has nowhere to go, because P1a already makes binding
  lexical and one level deep, so a handle escaping its join block would be meaningless and §8 would have to
  stop it doing the one thing handles are for. It would also need a new generic runtime type and rules for
  reading it before completion that the type system cannot really enforce.
  **It does not subsume a channel, and should not.** `spawn x = f()` is a *future*: one slot, one writer,
  no lock needed. A channel is a *queue*: many writers, blocking, a lock inside. Putting a mutex behind the
  target would give "last writer wins under a lock", which is neither. The aggregating case is already
  writable as ordinary olang (`chan.olang` is exactly that); what it is missing is gap 6 and a way to
  enforce lock discipline, neither of which this touches.
  **5. DONE (P8/P8a/P8b/P8c) - the memory model is written down.** It was never absent from the
  implementation, only from the spec: what a task observes of another's writes was whatever LLVM and
  pthreads happened to give. Stating it turned out to be description rather than design, because the
  edges were already there and only needed naming - and naming them is what makes every other guarantee
  in §6.8 mean something, since "the spawner sees the task's results after the join" is a memory-model
  claim and nothing had said so.
  **Three edges and nothing else.** A global initializer happens-before every task; everything before a
  `spawn` happens-before the spawned call (which is what makes its arguments readable at all); and
  everything a task does happens-before the end of its `join` block, by **every** exit from it (P1b), which
  is what makes its results readable. Transitive, so a task in a later join block sees what one in an
  earlier block wrote, through the spawner and with no direct ordering between the two tasks.
  **The edges moved without the guarantee changing**, which is worth knowing: they used to be carried by
  `pthread_create`/`pthread_join`, and P1e replaced both. They are now the worker's own mutex at handoff
  and the task lock at completion - still real release/acquire pairs, verified against the emitted code
  rather than assumed.
  **P8a states what is NOT ordered**, including one thing that is tempting and wrong: two tasks on the same
  cached worker really are ordered by that worker's handoff, and a program may not rely on it, because
  which worker runs which task is unspecified. **P8b** makes a data race undefined behaviour with no
  exception for any type or size - olang has no atomics, so no access is atomic, not even a `byte` - which
  is the same position X1a takes on a wrong `extern` prototype and E16e on an out-of-range index.
  **P8c** is why this composes rather than sitting beside anything: a program adds ordering by calling
  pthread through `extern fn`, and those are the same primitives the implementation uses, which is also
  exactly what lets P7's detector tell a synchronised program from a racy one.
  Three corpus tests pin the edges - the spawn edge, the join edge, and the composition across two join
  blocks. They pass trivially on a correct implementation; they exist so that breaking an edge fails here
  rather than as a wrong answer somewhere unrelated.
  **6. DONE (X3a) - and the recorded framing was wrong about which problem mattered.** It said the fix was
  "`extern` gaining a way to name a foreign type's size". The size turned out to be the *least* important
  of three, and the only one that needed no mechanism at all.
  **`N` is an upper bound, not a size.** Nothing embeds the blob by value - pthread only ever receives a
  pointer (X3) - so over-reserving is free and only under-reserving corrupts. That is what makes one
  constant right on every target at once, which matters because the true size is a property of the
  *architecture* rather than of C: glibc's own headers on this machine define **three** values for
  `pthread_mutex_t` (40, 32, 24) by arch, and other platforms differ again. `chan.olang` reserves 64.
  **Alignment was the real hazard, and the fix needed no language feature: the ELEMENT TYPE supplies it.**
  An array is aligned as its element is, and olang lays aggregates out by the same natural-alignment rule
  as the platform's C compiler (`TypeGetAlign`, which exists because getting it wrong was once a
  heap-corruption bug). So `int64[8]` is 8-aligned as a local, inline in a struct, or in the arena, while
  `byte[64]` has alignment **1**. Measured in C: a `char[16]` after a single `char` sits at **offset 1
  with struct alignment 1**, where a `long[2]` sits at **offset 8 with alignment 8**.
  `chan.olang` used `byte[64]` and was correct only by accident - `&s` made those fields arena allocations
  and the arena rounds to 8. It now reserves `int64[8]`, which is the same 64 bytes and is aligned
  wherever it is put, so the guarantee no longer depends on how the field happens to be stored. The extern
  declarations take `int64[]` to match; X3 marshals either to the same bare pointer.
  **An `align` keyword was therefore not built.** It would have been a real feature - syntax, struct
  layout, alloca and arena propagation - to express something the type system already says. The one thing
  the element-type route cannot reach is an alignment larger than a primitive's, currently 8, which no
  foreign type in view needs; that limit is stated in X3a rather than left implied.
  **Opacity cost nothing: drop `mut`.** Writing is the only operation that can corrupt a live mutex, and a
  field declared without `mut` rejects it - verified, `variable is immutable`, even inside the declaring
  module. It does not restrict pthread at all, because an `extern-param` carries no mutability (X2) and X3
  hands over a bare pointer; both channel tests still pass. It is sound because `mut` is a front-end check
  only - the emitted IR contains zero `readonly`/`invariant`, so nothing tells LLVM the bytes are stable
  while a foreign call writes them. Reading stays legal and is merely meaningless.
  **Querying clang was designed and rejected.** Compiling a probe (`char p[sizeof(pthread_mutex_t)]`) and
  scraping the array length out of `-S -emit-llvm` is genuinely cheap - a dozen lines, no execution, so it
  cross-compiles - and the "that is Zig's `@cImport`" objection was overstated: reading two integers is not
  translating declarations. But it buys only the number, which is the part that did not need solving, and
  it would make the compiler able to fail because a C **header** is missing, which nothing in it can do
  today. Held in reserve for the day a foreign struct's *fields* are needed, which is real translation and
  which neither approach helps with.
  **7. ATOMICS DONE (P9/P9a); cancellation and timeout still open.** Five builtins - `atomicLoad`,
  `atomicStore`, `atomicAdd`, `atomicSwap`, `atomicCas` - named and resolved exactly as `len` is, each
  lowering to **one** LLVM atomic instruction.
  **Explicit operations, not an `atomic` type qualifier.** A qualifier looks tidier and is a trap: with
  one, `x = x + 1` reads as ordinary code while being an atomic load, an add and an atomic store - three
  operations, not one, and a lost update. Naming each operation puts the cost and the atomicity at the use
  site, which is what the rest of the language does.
  **Sequentially consistent, with no ordering argument.** Go made the same call for `sync/atomic` and it
  has held up; a weaker ordering is among the easiest things in systems programming to get subtly wrong,
  and admitting one later is purely additive. On x86 the difference is confined to stores anyway.
  **`atomicCas` returns what it FOUND**, not a bool: for a strong compare-exchange those are the same
  fact, since it writes exactly when it found `expected`. That is what lets it report both outcomes
  through the single return value the language has - and is why it needed no multiple-return feature.
  **Targets are integer lvalues only** (`byte`/`int32`/`int64`): atomicity is a property of one machine
  word, so there is nothing it could mean for an aggregate, a reference or a float. Alignment comes free
  from the layout work just done - `TypeGetAlign` already gives every integer its natural alignment, which
  is exactly what an atomic instruction requires.
  **S3 had to learn about them.** Four of the five write their target, which is S3's own criterion for an
  expression that may stand as a statement; `atomicLoad` only reads, so it stays rejected and really is a
  discarded value.
  **The P7 invariant was re-checked rather than assumed**, since this is the first synchronisation olang
  can express without calling pthread. Two structurally identical programs, two tasks each incrementing a
  shared counter 20,000 times: the plain version is reported, the atomic version is **silent**. So TSan
  follows LLVM atomics as edges and the "TSan sees 100% of the happens-before edges" invariant survives.
  **P9a states the one sharp edge**: a plain access racing an atomic access to the same location is still
  a race. There is no type marking a location as atomically-accessed, so keeping every access atomic is
  the program's job, and `-race` is what checks it.
  **7b. DONE (2026-10-07, the user's call: "both") - cancellation and timeout, as a library.** `std/cancel`'s
  `Token`: `Cancel()`, `Cancelled()`, `cancel.After(ms)` for one that fires at a deadline, `Reason()` raising
  `Stopped.CANCELLED`/`TIMED_OUT`. A task checks it where stopping is safe; `chan.SendUntil`/`RecvUntil` take one
  and give up when it fires (`pthread_cond_timedwait`, waking at the deadline and every 10ms to notice a Cancel -
  a token does not know who waits on it). No forced kill (a thread killed part way leaves locks and structures
  broken) and no `join` timeout (a task would outlive its block, P1b). **P9 relaxed**: `atomicLoad` takes any
  integer lvalue, not only a writable one - the token's readers hold it read-only (T25b). **Found on the way,
  pre-existing**: the evaluator read the checker's placeholder for a failed expression as a literal, so a bad
  condition got a second, false S8a "dead branch" error.
- **Data races are detected dynamically (`-race`, P7), not checked statically - and that is Go's answer
  too.** The static route was closed deliberately (P3 withdrawn, no borrow checker), which left the
  language with no race story at all. `olang -t -race f.olang` (or `-b`, or `-c`) now builds everything
  under LLVM's ThreadSanitizer: a race is reported against the **olang** function it happened in, and the
  process exits nonzero. Across the whole corpus, all 259 tests pass under it and the **only** race
  reported is `shared.Tally.readOut` - the one deliberately-racy test, which exists to show the language
  permits a race now that P3 is gone. `chan.olang`'s mutex-synchronised producer/consumer reports
  **nothing**, so correct synchronisation is not flagged; and the arena, the scope merge, the chunk pool
  and the join walk are all clean, which is independent confirmation of P2/P2a by a tool that knows
  nothing about them.
  This is exactly Go's position - a racy program is undefined, and a dynamic detector ships for testing
  rather than a compile-time rule - reached for the same underlying reason: neither language can check
  statically without an ownership discipline. It is a **detector, not a proof**: it sees the interleavings
  a run actually took, and nothing about code that did not execute.
  **The mechanism is three things, and the first is the one that is easy to get wrong.** (1) TSan's pass
  instruments a function only if it carries the `sanitize_thread` attribute, which a C frontend adds and
  which nothing adds for a `.ll` - so `-fsanitize=thread` on olang IR alone detects **nothing at all**,
  silently. Verified: the first attempt reported zero races on a program with an obvious one. The
  attribute is added by rewriting the finished IR text rather than by threading a flag through all sixteen
  `define` sites, several of which sit inside multi-function runtime string literals - which also
  guarantees the runtime itself is instrumented, and that is precisely where a concurrency bug would hide.
  (2) `-race` is a **whole-build** mode, because the runtime is emitted `linkonce_odr` into every object
  and mixing an instrumented object with a clean one lets the linker keep either. (3) An instrumented
  object is a **different artifact**, named `<base>[.main|.test].race.o`, for exactly the reason B4 gives
  for `.main.o`/`.test.o` - without it a `-race` build reuses a clean object and the detector never sees
  that code, which is the same staleness trap that cost real debugging time twice before.
  Compiled at `-O1` rather than `-O3` under `-race`: at `-O3` the small accessors inline enough that a
  report regularly names the caller instead of the function at fault.
  **`make race` runs the suite under it and is deliberately not part of `make verify`**, since a correct
  run reports that one intentional race and exits nonzero. More than one report means something regressed.
  **Why it works with no `Mutex` type in the language, and the invariant that keeps it working.** TSan does
  not understand mutexes as a language concept - it **intercepts the C symbols**, shipping its own
  `pthread_mutex_lock`/`unlock`/`create`/`join` that do the vector-clock bookkeeping and forward to the
  real ones. A call reaching them through `extern fn` is the same symbol at the same boundary as one
  from C, so `chan.olang`'s hand-rolled locking is fully visible. Demonstrated rather than assumed: two
  structurally identical programs, one guarding a shared counter with a pthread mutex and one not, produce
  silence and a report respectively - so TSan is *following* the lock, not skipping that code.
  The reason the picture is **complete** is the invariant worth protecting: every ordering olang can
  currently express goes through the C library, from exactly two sources - `pthread_create`/`pthread_join`
  emitted by codegen for `spawn`/`join`, and whatever a program calls via `extern fn`. There is no third
  way: no atomics, no `volatile`, no inline asm, nothing lock-free. So TSan sees **100%** of the
  happens-before edges in any olang program, despite the language having no mutex type and no written
  memory model (gap 5). That came free only because there was no synchronisation of our own to hide.
  **The arena is the same story from the other side.** A recycled chunk is the classic false-positive
  source for a custom allocator, since TSan resets shadow state on `malloc`/`free` and the chunk pool
  recycles without either. It is sound here because of P2a: `@__olang_chunk_pool` is `thread_local`, so a
  chunk returns to the pool of the thread that used it, and the one cross-thread path - a task's sub-arena
  spliced into its parent - is ordered by the `pthread_join` that precedes it. Making that pool global
  would need `__tsan_acquire`/`__tsan_release` on it, exactly as a new synchronisation primitive would.
- **No `volatile`, and the reason is four separate reasons (X3b).** Raised as a candidate feature and
  rejected; `volatile` means "this access has a side effect the compiler cannot see", and there are exactly
  three ways such a thing could enter olang.
  **An address the program names - blocked, and this is the one that is really about pointers.** The
  qualifier earns its keep for memory-mapped I/O, where *reading* a hardware register is itself the effect.
  That needs a way to write `0x40021000`, and olang has none: no pointer type, no address-of, no
  integer-to-pointer conversion. `&` is scope-tagged heap indirection wearing the same character, not an
  address. So the use `volatile` exists for is **inexpressible**, not merely unimplemented.
  **A foreign agent writing storage olang handed over - already covered, and now stated (X3b).** This is
  the shape that *does* hand out a raw address: X3 marshals an array to a bare pointer and pthread writes
  through it. It needs no qualifier because a foreign call is **opaque** - verified rather than recalled,
  the emitted IR contains **zero** `readonly`, `noalias`, `writeonly`, `memory(...)` or `invariant`
  attributes anywhere, so LLVM must assume any external call reads and writes everything reachable from its
  arguments. The call *is* the barrier. X3a already leaned on this silently (it is what makes a
  `mut`-less `pthread_mutex_t` blob safe while the foreign side scribbles on it) and P8c's ordering rests
  on it too, so it is written down as a rule now instead of being an unstated implementation fact.
  **Another thread - atomics' job, and `volatile` is the wrong tool for it in C.** The most common reason
  anyone reaches for it, and in C/C++ it buys neither atomicity nor ordering. P9's builtins are the answer.
  Adding the keyword beside them would be an attractive nuisance, and would contradict P8b outright: a data
  race is undefined with no exception for any type or size, and `volatile` does not make one defined. Java's
  `volatile` genuinely *is* acquire/release, which is why this confusion is so durable - and Java has no raw
  pointers, so "no pointers" is not what rules this one out.
  **The fourth case is not a language question at all: `setjmp`.** olang really does longjmp (S18/P1d), and
  a local written between a `setjmp` and the jump is precisely C's `volatile` requirement. But that code is
  the compiler's, not a program's - and it is safe structurally rather than by luck. Two things were checked
  rather than assumed: `returns_twice` does **not** stop LLVM promoting an alloca across a `setjmp`
  (identical optimized output with and without it, on a minimal probe), and the harness's counters really
  are promoted - at `-O3` no `alloca i32` survives in `main` and the counts live in phi nodes. It is correct
  because **nothing writes them between a setjmp and its longjmp**: both increments are on the landing
  paths. That invariant is now a comment where it can be broken. It is **not** coverable by a corpus test,
  for the same reason P1c is not: showing the counters survive needs tests that *fail* interleaved with
  ones that leave early, and every corpus test passes. Checked by hand instead - a file mixing `done`,
  failing asserts and ordinary passes reports `5 passed, 2 failed` correctly.
  **What would change the answer** is olang targeting MMIO - and even then the P9 argument applies verbatim:
  `volatileLoad`/`volatileStore` builtins beat a qualifier, because with a qualifier `x = x + 1` reads as
  ordinary code while being three separate accesses.
- **TBAA metadata (T36) - olang loops that store through a reference did not vectorize AT ALL, and now
  match C.** Found by asking what a `Vec` costs against a raw array, which is a question about Vec and
  turned out not to be.
  **The measurement chain, because three hypotheses were wrong before the right one.** A 160M-element store
  loop: olang **0.039s against C's 0.015s**, and `objdump` said why - **0 vector instructions against C's
  47**. Not the O2 per-block scope (deleted it from the IR by hand: still 0). Not a missing `inbounds` or
  `nsw` (added both by hand: still 0). Not TBAA in C either - C keeps vectorizing under
  `-fno-strict-aliasing`, so that was not what was carrying it there. LLVM's own remark named it:
  *"could not determine number of loop iterations"*, and the optimized IR showed the buffer pointer being
  **reloaded every iteration**, because a `store i32` might have overwritten the `{ i64, ptr }` descriptor
  it came from. A loop whose address is recomputed from memory each iteration cannot vectorize.
  **Two hand-written `!tbaa` tags proved it before anything was built**: 0 -> 23 vector instructions and
  0.039s -> 0.014s, against C's 0.015s.
  **T36 is the language fact that makes it legal**, and olang satisfies it more strictly than C does: no
  unions, no casts, no reinterpretation - a numeric conversion produces a value, a choice reaches its
  payload only through the case its tag selects, and `&` is typed. So an access of one type never overlaps
  an access of another.
  **Deliberately narrow.** Only the six primitives and the runtime-length array descriptor are tagged;
  aggregates and references stay untagged, which means "may alias anything" and is always the safe answer.
  **There are TWO families per type, split by the LAST step of the access path** - an array ELEMENT reached
  by indexing, or a FIELD (a struct member, a local, a global). That split is sound because no storage is
  reachable both ways: olang cannot build an `int32[]` view over a `Point[]`, so a field is never nameable
  as an element of the same storage, and `pts[i].x` is a field access from every path that can reach it.
  **Consistency is the obligation** the split creates - every access to one location must use the same
  family, so an array literal's element stores are element-tagged exactly as a later indexed read is.
  **The choice payload needed an argument rather than an exclusion, and the first version of this entry got
  that wrong.** A payload's *fields* are primitives, so they do get tagged - two cases can put an `int32`
  and an `int64` in the same bytes with different tags. It is safe because **changing which case is live is
  always a whole-value store of the choice, and an aggregate store carries no tag**: it aliases everything,
  so no tagged read can be hoisted across it. Three corpus tests pin that rather than trusting it, and they
  agree at `-O0` and `-O3`, which is the comparison that would expose an aliasing miscompile.
  **The arena needed no special case**: a recycled chunk holding a different type later is malloc/free's own
  situation, and `__olang_scope_close` sits between the two lives as an opaque call. `llvm.memcpy` and every
  foreign call are untagged, so X3b is untouched.
  **Measured, end to end.** A plain store loop **0.039s -> 0.015s** with 23 vector instructions where there
  were none, matching C's 0.015s. The element/field split is what fixes the append path the whole question
  started from: `v.n` no longer shares a node with an `int32` element, so the count stays in a register
  instead of round-tripping, and `Push` goes **0.068s -> 0.013s (5.2x)** with 38 vector instructions,
  against C's 0.011s.
  One condition had to be corrected on the way: a runtime-length array is `{ i64, ptr }` **whatever marker
  it carries** (T11), so keying the descriptor tag off the marker tagged nothing that mattered and left the
  win at zero.
- **A rejected member access carries the member's real type on (M6a diagnostics).** A private member
  reported the privacy error and then recovered the expression as `int32`, so every later check failed
  again for a reason that was not the problem - `v.data[0]` across a module boundary said "this struct
  member is private" and then "operand is not an array", which points at a non-problem. The member exists
  and its type is known; only its visibility is wrong, so the type is kept and the one real error stands
  alone. `UNKNOWN_STRUCT_MEMBER` still recovers as `int32`, correctly - there is no type to carry there.
- **Two use-after-frees found by writing the first realistic `Vec`, both in code the design record already
  claimed was safe (O2d, D13a).**
  **O2d - a call inside a block allocated into that block, not into the scope its argument named.** Where an
  argument determines a callee's scope variable (O17), the binding refers to wherever *that argument's
  referent* lives; codegen passed `ctx->blockDepth`, the innermost open block. So `c = c.regrow(4)` written
  inside an `if`, with `c` declared outside it, built the result in the `if`'s own arena and handed the
  caller a reference into a chunk reclaimed at the closing brace. Verified by churning the arena and reading
  the value back. This is precisely the trap O2 records as *avoided* for a bare `&` ("must resolve to the
  depth its type was declared at, never to the innermost open block") arriving through the **named scope
  variable** path instead, which nobody had re-asked. Fixed by recording the depth on the binding where it
  is made (`scopeBinding.boundDepth`) rather than recovering it at the call - the information was there and
  was being thrown away. It blocks `Vec` outright, since growth is by nature `if full { grow }` inside a loop.
  **D13a - a reference to a declared-size array was left uninitialized, giving a wild pointer.** D13a leaves
  a declared-size array alone because zeroing one costs time proportional to its length. A `T[N]&` is **one
  pointer**, so that reason does not apply, but the test was `bType == ARRAY && !arrMalloc` and never looked
  at the reference marker. The result was a pointer that `== null` reported as **non-null** and that faulted
  on the first write - worse than a null, because T2a's whole point is that zero bits are null and a null
  dereference traps deterministically. One `&&` in `cgVarDecl`; the rule now says so too.
  **Three corpus tests pin them**, and the corpus segfaults without the fixes. Both were found by writing an
  ordinary program rather than by review, which is the argument for writing the stdlib: these are shapes no
  existing test had, because no existing test grows a buffer.
- **`$x` renders EVERY value as text, and text is joined by adjacency, not `+` (E11a/E11b, E6b withdrawn,
  2026-09-30).** The user's design (**its "nothing overrides it" half is reversed by E11c, 2026-10-08**): `+` on arrays is gone; `"n is " $n "!"` joins pieces written side by
  side, and a piece is only ever a string literal or a `$` rendering - so `f("a" b)` is a syntax error, and
  C's missing-comma hazard cannot become a silent join (the user's point: `$` is always needed to make a
  value text). A `concat(...)` builtin was proposed and rejected as unnecessary. Adjacent literals fold into
  one literal in the parser (raw text joined between one pair of quotes), so a literal-only join costs
  nothing. A join or rendering is a `byte[]` **value** built in the current block, or in the target's scope
  when it lands in a reference ("if assigned to a ref type" - the user, correcting my "promote"); `:=`
  accepts it. **`$` renders every value, and nothing overrides it** - the user's rule, "we have no operator
  overloading at all": a `Str` method is now an ordinary method `$` never consults. The value is written as
  it would be in source: `Point{1, -2}`, `int32[1, 2, 3]` (element type first, the user's call; nested
  unmarked arrays are bare rows, `int32[[1, 2], [3, 4]]`), `Shape.Rect(3, 4)`, nested text quoted and
  escaped as a literal would write it (the user's call), references followed 8 deep then `...`, `null`. A function renders as its signature,
  `name(params) results ? errors` when named directly and `fn(...)` for a function value (its name is not
  known statically; a run-time pointer->name table was offered and declined); a call's several results as
  `(1, "x")` (the user's call - the one place D8c results are taken whole); an interface as its name and its methods' signatures, per the
  user's "an interface has name and methods". Codegen is one measure-then-write contract (snprintf's)
  through a `linkonce_odr` helper per type, so a join of N pieces allocates once. `$` on a byte array COPIES -
  as a value it may not alias the operand. Earlier history of the entry follows.
- **No user-declared operators (2026-09-30).** Proposed as method-shaped declarations
  (`fn (a Vec2) +(b Vec2) Vec2`) and dropped by the user once the problems were laid out: hidden cost at the
  use site (the deciding one - the same argument as P9's named atomics), a reference result needing a
  target-scope rule, arena garbage from chained or looped operators, no way to be fallible, only one `*` per
  receiver type (M21), and indexing's get/set/place split.
- **(superseded in part) `$x` renders a value as text, `+` concatenates arrays (E11a/E6b).** The question that produced these
  was how `println` gets built, and the answer turned out to be that it does not need building: a
  compile-time rendering operator plus concatenation covers it, with no variadics, no tuples, and no
  interface over primitives.
  **Why every other route was blocked.** A Go-style `Println(items ...Formatter)` needs `int32` to satisfy
  an interface, and M19 says only a type's *declaring* module may give it methods - a built-in is declared
  in no module, so no primitive can satisfy anything. Verified. A `choice` of printable things does work
  today (it was written and it printed `42 hello true`), at the cost of `Println(Printable.I(42))` at every
  call site. Variadic generics are disproportionate, and a format-string builtin contradicts "io is
  ordinary olang on top of `extern fn`".
  **`$` sidesteps all of it because the type is known where the operator is written**, so the compiler
  picks the rendering per operand with nothing dispatched at run time.
  **The spelling went through three forms and the last one is the cheapest.** First `"x is {x}"` holes in
  the literal - measured as **18 corpus literals containing `{`**, one of which (`"Wrapper{42}"`) would
  change **silently**. Then `$` holes in the literal: **zero** corpus strings contain `$`, and `$` has no
  meaning anywhere in the grammar. Then - the user's own move - **not in the string at all**, but a prefix
  operator plus `+`. That is strictly better: the tokenizer stays untouched, no `\$` escape is needed,
  the greedy-identifier problem never arises, and `$x` works anywhere an expression does rather than only
  inside a literal.
  **`byte` renders as a CHARACTER, reversed from the first decision.** Decimal was specced first; the
  reversal is right because `byte` *is* this language's character type (a `CHAR_LIT` has type `byte`), so
  rendering one as a character is what makes `$b` and `$bytes` agree - one byte is one character exactly as
  N bytes are N characters. The numeric rendering is `$int32(b)`, one visible token.
  **A declared type renders through its own `Str(buf mut byte[]&) int32` method**, found by M19's own lookup
  exactly as interface satisfaction finds a method - which works precisely because the blocker was only
  ever about *built-in* types. It carries **snprintf's contract**: it returns the length the rendering
  needs, so the lowering allocates an estimate (256) and retries once at exactly the reported size. No
  default rendering exists for a type that has not said what its rendering is; `$` on anything else is a
  compile-time error.
  **The `+` chain is flattened, and that is a correctness requirement rather than an optimization.**
  Lowered pairwise, `a + b + c + d` allocates three times and re-copies the growing prefix each time -
  quadratic in the chain length on the commonest shape there is. Measured: **3 allocations for a
  2-operand chain and 3 for a 6-operand chain**, so the concatenation itself is one allocation whatever the
  length.
  **Two implementation notes.** The primitives render through `snprintf` in the runtime rather than
  hand-written IR - its contract *is* the one E11a states, and `%.17g` is what makes a float read back as
  the same value. And `$` collided with the tokenizer's own meta-character for character classes (`$a`,
  `$d`, `$l`); a **lone** `$` is unambiguous, since every class carries a selector after it, so that is the
  one clause that had to change.
  **Both are TEMPORARIES, and getting that wrong first blocked the entire point of the feature.** They
  were specced as allocating in the block the expression sits in, which meant a result could never outlive
  that block - so `fn greet(n byte[]&s) byte[]&s { return "Hello, " + n + "!" }` was rejected, and every
  string-building function with it. They have no storage of their own to borrow, which is exactly E12c's
  definition of a temporary, so they are built in the **target's** scope as a struct literal already is.
  Two places had to agree: codegen consults the target-scope override, and the §8 fit check stops treating
  them as values that already live somewhere.
  **That fix uncovered a compiler SEGFAULT that had nothing to do with it.** Passing a *temporary* to a
  `T[]&s` parameter crashed the compiler outright - verified with and without the change, so it predated
  both. `cgResolveParamScopeOverride` gates on `typeIsRefShaped`, which answers a different question
  (which types a marker can *make* a reference) and therefore excludes a run-time-length array. T11 says
  such an array is pointer-backed whatever marker it carries, so its `&s` is a real scope tag naming the
  **callee's** variable - and with no override it was looked up in the *caller's* frame and mangled as a
  global with a NULL owner. Only a literal ever reached it: an lvalue argument borrows and takes a
  different path, which is why nothing in the corpus had hit it in all this time.
  **A gap this made newly visible: there was no string equality.** E10 compares a reference by identity, and
  every rendering `$` produces is a `byte[]&`, so comparing text meant writing the loop. Closed by
  `string.olang`'s `a.Eq(b)` - see the next entry.
- **`string.olang` - text is plain `byte[]`, and its operations are built-in methods.** `Eq`, `Compare`,
  `StartsWith`, `EndsWith`, `Find`, `FindByte`, `Contains`, `Trim` and `ParseInt`, all declared on
  `byte[]&`. **No `String` type**, which was the one design question: a literal, a slice and every `$x`
  rendering already *are* `byte[]`, so methods on the built-in reach all of them with nothing converted,
  where a named `String` would need `String(x)` at every boundary and buy only a distinction between text
  and raw bytes that nothing yet needs. `type String byte[]` stays possible for a program that wants it.
  `==` stays identity (E10); **`a.Eq(b)` is how text compares** (superseded by E10a, 2026-10-08: `==` calls `Eq`), which is the operator-overloading question
  answered without overloading. Importing the module is all it takes - the alias is never written, since a
  method is reached through its receiver - and the module holds no privileges: M19c's import-scoped
  visibility binds it exactly as it binds any module. It lives at `std/string` since M22.
  `Trim` returns a **borrow** of the receiver (`fn (t byte[]&s) Trim() byte[]&s`), so trimming costs no
  copy; the receiver's scope tag is what makes returning it legal. `ParseInt` accumulates **negatively**,
  since the negative range is the larger, so `-9223372036854775808` parses without overflowing on the way
  in, and it reports `EMPTY`/`INVALID`/`OVERFLOW` rather than one bare error, because a caller parsing input
  wants to say which. It accepts no surrounding space - `t.Trim().ParseInt()` is the composition.
  **`Split` (2026-10-06)** needed no `List` after all: it counts the pieces first and returns an exact
  `Array<String&>&t` of slices borrowing the receiver - no text copied, the array living where the text does
  (O25: a value holding references sits in exactly their scope). Adjacent separators give empty pieces, the
  empty text one empty piece, and an empty separator splits into single bytes (Go's behaviour - my call, flagged).
  **Two lexer defects found writing it.** `\r` was not an escape at all, which no text library can do
  without. And **`\0` in a STRING literal decoded to the character `'0'`**: the escape was accepted by the
  tokenizer and decoded by the character-literal path, but the string-literal decoder in codegen had no case
  for it and fell through to the raw character - so `"path\0"`, the very use `\0` was added for, produced
  `path0`. io.olang happened never to use it (its test builds the NUL with an array literal), which is why
  nothing noticed. The spec's escape list had also never been updated for `\0`. All three fixed, and a
  corpus test pins the decoded bytes.

- **The arena aligns by size, so a large array is SIMD-ready (O8a).** It used to round only the *size* to
  8, so a returned pointer was 8-aligned at best - `float64[n]` could never be handed to a vector load, and
  X3a's ceiling of 8 was the largest alignment the language could express at all. Now an allocation gets 8
  below 32 bytes, 32 from 32 up, and 64 at 64 and above.
  **Two things had to change together**, and only the second is obvious. The chunk comes from
  `aligned_alloc(64, ...)` rather than `malloc` (which guarantees only 16) and its header is padded from 24
  to 64 bytes, so the data area inherits the chunk's own alignment; then each allocation rounds the bump
  cursor up by its own alignment. Fixing only the per-allocation half would have aligned everything to a
  base that was itself 8-aligned, which is no alignment at all.
  **Measured: no cost.** 20M allocations in an unfoldable loop, 0.020s before and after - the two selects
  sit in the shadow of the load-store dependency the bump already has. Padding is 40 bytes per chunk, under
  1% of a 4096-byte one.
  **Verified by driving the emitted allocator from C**, since olang cannot observe an address: 8/32/64/8192
  byte requests come back 8/32/64/64-aligned, and small allocations interleaved between them do not break
  the next large one. Not coverable by a corpus test, for the same reason P1c is not.
  **One limit worth stating rather than discovering**: this is the *arena* path (`T[expr]`, references). A
  declared-size local (`T[N]`) is a stack alloca, aligned by LLVM from its element type, so `float64[8]` on
  the stack is still 8-aligned. That is the remaining half if stack SIMD matters.
  **Two incidental bugs fixed on the way**, both collisions in the emitted IR. Declaring `extern func
  snprintf` stopped compiling the moment E11a's renderings started using it, because LLVM rejects a
  duplicate `declare` even when the signatures agree - the runtime's owned-symbol list now covers it. And
  **two modules declaring the same extern produced a duplicate `declare` too**, so a program that declared
  `write` alongside `io.olang` simply failed to build, with the error pointing at the IR rather than at
  anything the program did. Extern declarations are emitted once per module set now.
- **The bridge between built-in types and the object model (T29a/T29b) - it already existed for primitives
  and stopped at arrays.** `type Meters int32` has been nominal, with methods and a `Meters(x)` way in,
  since T29. `type String byte[]` parsed and was a *transparent alias*: a name with no identity, so nothing
  could attach to it. That one gap is what made every container question in this session hard - a plain
  array could not implement an interface, so an accessor interface bifurcated instead of unifying.
  **The exclusion was collateral, not a decision.** The record said nominality was confined to the vanilla
  branch because "func/array/typevar have their own rules that an owner check would wrongly override" - one
  sentence covering three cases. Enabling it for arrays alone and running everything: **the whole corpus
  passed**. Arrays were never the problem; the generic-callback breakage that motivated the sentence was
  about function types.
  **Three pieces had to land together, and the middle one is why nominality alone would have been worse
  than nothing.** Nominality makes `type String byte[]` a distinct type - and with no way to *construct*
  one it would have been unusable, strictly worse than the alias it replaced. So `Name(x)` now converts for
  any declared type sharing a representation, admitted whenever the argument would **fit** the underlying
  type rather than only when it is identical (a compile-time-length literal reaching a run-time-length
  named type is E12's ordinary promotion). It emits nothing but that widening.
  **Getting values in and out is deliberately asymmetric, and the rule is T6 one level out.** A **literal**
  adapts (`s mut String& = "hello"`) because it is written at the point of use and has no type worth
  defending. A **value** does not - it keeps its own type and `String(v)` is how it changes. And a named
  type **flows freely into its underlying one**: a `String` goes wherever a `byte[]` is wanted, with
  nothing written, because that direction discards a claim rather than making one. Go's rule (assignable
  when either side is unnamed) was rejected for being symmetric - it would let a bare `int32` satisfy a
  `Meters` parameter, which is the exact accident T29 exists to prevent.
  **What it buys, and it is the answer to the whole `Array<T>` question**: a declared array type keeps
  `[]`, `len`, slicing, `+`, `$` and X3's marshalling, because it *is* an array - verified, all of them.
  So arrays join the object model without being relocated into it: no operator overloading, no wrapper
  struct, no second array type at the FFI boundary, and `T[]` unchanged underneath.
  **Two things found by building it.** A declaration of a named array type must **not** adopt its
  initializer's length the way `T[]` does (D15) - doing so kept the name while changing the shape beneath
  it, so a method declared over `String&` stopped matching its own receiver. And a declared type over a
  run-time-length array could not satisfy an interface - an interface value holds a pointer to its
  instance, and such an array is a `{len, ptr}` pair rather than something at an address. That was
  producing invalid IR, then briefly a diagnostic, and is now **lifted (T29b)**, for built-in arrays too
  once M19 let them have methods: a *marked* array's pair is boxed into the interface's scope (16 bytes, per
  conversion - its slot is not where the instance lives, and a parameter's slot dies with the call), an
  *unmarked* lvalue is borrowed through its slot like any value, and dispatch goes through the by-value thunk
  that already existed. A `T[N]` reaching a `T[]&` receiver gets a thunk that builds the pair from the
  length its table knows, which is E12's call-site widening at the dispatch boundary.
  **Boxing broke T33's identity and that had to be answered, not ignored**: two conversions of one array
  reference box it twice, so comparing instance pointers would call them different. Each dispatch table now
  carries **one trailing entry** after its methods - null for pointer identity, or a comparison for a boxed
  pair - and `==` on interfaces goes through one `linkonce_odr` helper that consults it only when the tables
  agree and the pointers do not (a null table has no entry to read, hence a helper with branches rather than
  inline code, as T17a's choice equality is). Identity for an array is **same storage, same length**, so
  `a[:2]` and `a[:3]` are different instances of one buffer. The trailing slot shifts no method's index.
- **`Vec` is abandoned; the growable type is `List<T>`, chunked and append-only.** A contiguous growable
  array was the assumed goal for a long time. Working out what it would actually cost killed it, and the
  deciding question was what olang is *for*: an inference engine and big-data work allocate **once, at a
  size known at load time, and never resize** - weights, activation buffers, a KV cache preallocated to its
  maximum, columns, batches. `T[expr]` already is that, and D14a lets a struct own one. The thing that was
  missing was never the thing that mattered.
  **What `Vec` is actually for is incremental construction when the final size is unknown** - parsing,
  accumulating - and for that, contiguity buys nothing until the end.
  **So: `List<T>` is chunked, append-only, with `ToArray()` copying to contiguous when you want it.**
  Non-contiguous costs **1.7x on indexing**, measured (335M accesses, power-of-two chunks, shift and mask,
  0.045s flat against 0.080s chunked) - but **append-only never pays it**, because you append and then
  flatten once, and never index the chunks at all. Indexing can be added later if something needs it;
  starting with it makes every user pay for a capability most will not use.
  **Chunked, not hash-like.** For a sequence the keys are `0..n-1` - dense and ordered - so a shift and a
  mask is a perfect hash with no collisions, probing or load factor. A hash structure pays for a problem a
  sequence does not have; it earns its place for sparse or non-integer keys, which is a dictionary.
  **Written - see the `list.olang` entry below.** **`ToArray()` copying is the only way to get contiguity, and that is the point**: the copy is visible at
  the use site, and a `List` never exposes anything that can move. So there is no invalidation rule, no
  `&expr`, and no borrow tracking - all of which were designed and are now unnecessary.
  **`Buffer` was designed and rejected on measurements.** Virtual reservation gives a buffer that never
  moves (so a borrow stays valid *and* current), and creation is cheap - 0.5us regardless of size. But a
  touched mapping of >=1MB costs ~320KB resident to transparent huge pages: **20,000 small buffers is
  6.3GB against ~1.3MB via malloc**. And the version that avoids reserving up front does not work at all:
  `mremap` in place fails with ENOMEM on every attempt, and `MAP_FIXED_NOREPLACE` says why - EEXIST, the
  adjacent page is already mapped, because Linux packs mmap regions with no gaps.
  **One thing worth keeping from the dead end.** The arena never reuses storage within a live scope -
  `__olang_scope_alloc` only bumps, and chunks return to the pool only at close - so a borrow taken before
  a growth stays **memory-safe**, pointing at live untouched memory. Verified: 8 growths and 1,600
  intervening allocations, and the original borrow still read its original contents. Safety was never the
  problem; *staleness* was, and a `List` that never hands out its chunks has neither.
- **`list.olang` - `List<T>` written, and six compiler defects it found on the way.** A chain of chunks,
  each double the last (8, 16, 32 ...), so `Push` never moves anything already stored and `ToArray` copies
  once into a contiguous array in the **caller's** scope (`fn (l List<T>&) ToArray() <T>[]&out`), independent
  of the list thereafter. Everything the list allocates lives in the scope it was constructed in, so it
  needs no destructor. `l.Push(7)` on a `List<int64>` works because of G9a. Deliberately no indexing and no
  iteration yet: append-then-flatten is the use it exists for, and both are additive (both since added: iteration
  S9c, indexing 2026-10-08, below).
  It first needed `fn (l List< <T> >&) Len()`, which G8b replaced with `List<<T>>`.
  **What writing it found - every one a pre-existing defect, none List-specific:**
  (1) **A `for` loop could not walk a linked structure**: the post clause was an `expr`, so `c = c.next`
  did not parse. It is a *simple statement* now (S9) - an assignment or an S3 expression - which also closes
  (2) **an S3 hole**: `for ..., i + 1 { }` compiled, discarding the value and never advancing.
  (3) **A self-referential struct saw only the fields declared before its self-reference** - `a.next.v`
  worked, `a.next.next` was "unknown struct member" - because the field held a snapshot of the type taken
  mid-resolution. `refreshStructSnapshots` points such fields at the finished declaration once types are
  resolved (and per instantiation). That made the type a genuine cycle, so **every walker that recursed
  through fields had to learn to stop**: `TypeValueChildren` stops at a reference (a referent's fields are
  not part of the value), and the generic walkers (`TypeIsGeneric`, `TypeCollectVars`, `TypeUnify`,
  `TypeSubstitute`) read a declared struct's type *arguments* rather than its fields, which is where its type
  variables actually are.
  (4) **A generic type could not name itself** (`next Node<T>&`): its parameters were set only after its
  fields resolved, and once allowed, an instantiation recursed forever because it was registered only after
  its fields were substituted.
  (5) **Signature type variables were in scope in the signature only**, not in the body - fixed, and now
  written `listChunk<<T>>` there like everywhere else (G8b).
  (6) **A local sharing a scope variable's name miscompiled silently**: codegen keyed both by bare name, so
  `return out` beside a `&out` tag returned the hidden scope pointer as the array. Scope names are not
  values (O3), and now have their own namespace in codegen too.

- **O25: a reference never narrows - its scope tag is EXACT.** The user's decision, closing a real
  use-after-free found while writing `List`. O10 had let a reference flow into any shorter-tagged target,
  which is sound for reading and not for writing: anything written through a reference is allocated "into
  the target's scope" (E12c) and stored where the referent lives. `a mut N& = p; a.next = N(5)` put the node
  in the function's own arena and hung it off the caller's list. A second path to the same bug turned up
  while testing: a *field read* passed as an argument bound the callee's scope variable to the field's bare
  tag rather than its container's, so `growLink(a.next)` inside an `if` allocated into the `if`'s arena.
  Both reproduced on the previous compiler (fail after churning the arena) and pass now.
  **The rule has one piece that makes it usable and one deliberate exception.** Usable: a bare `&` local
  takes its **initializer's exact scope** (O25a) instead of its block's - otherwise a cursor declared in an
  inner block (`for c mut N& = a, ...`) could never walk an outer structure, since a block scope has no
  name to write. Exception, and the user's own: storing into a slot that *outlives* the value's use keeps the
  ordinary "must outlive" rule - **except where the value's referent can itself hold references**, where
  exactness is required (O25c/d/f). That exception to the exception is forced, not chosen: store a longer-
  lived `p` into `x.inner`, and a later write through `x.inner` allocates into x's scope and stores into p's
  referent, which outlives it - the same bug through a field. Writing through a reference to plain data
  allocates and stores no reference, so there nothing can be misplaced and "outlives" is still sound.
  `TypeHoldsReferences` decides it from the referent's own fields, elements and payloads.
  **A scope this function cannot name** - a bare `&` parameter's (O4a) or a global's - can be adopted by a
  local for reading, and the local then inherits O24's restriction (nothing allocated into it or stored
  through it). Passing one as the argument that determines a callee's scope variable is rejected where the
  referent holds references (O25e), since the callee may allocate there. Arguments determining one variable
  must now agree on depth too, which they silently did not.
  **What it removed:** O5's blanket "no own-scoped value into a nested slot", which was standing in for the
  missing exactness and over-rejected `a.next = b` for two locals of one block - legal now. **Corpus damage:
  one test**, `obligationRelate`, which demonstrated an obligation by writing `q mut Point&s = seed` with
  `seed` tagged `&t` - exactly the construct removed; it now shows the obligation through a return, where
  "outlives" still holds because `Point` holds no reference. Local mutability is not enforced (D11), which
  is why the rule had to be about every local reference rather than `mut` ones.

- **O10e: scope variables are ordered shortest-lived first, and a body may only require a later one to
  outlive an earlier one.** The user's answer to "obligations are inferred from the body and invisible in
  the signature, so callers hit confusing errors". Their first proposal was a *total* order (every later
  scope outlives every earlier one); it was refined, with agreement, to a **direction**: the order says which
  way any relation may run, and callers are held only to the relations the body actually needs. The total
  form over-constrains unrelated scopes - our own `ToArray() <T>[]&out` would have forced `out` to outlive
  the list, rejecting an outer list flattened in an inner block.
  **Receivers work with it**, which is why shortest-first rather than longest-first: a method storing its
  argument into its receiver needs the argument to outlive the receiver, and the receiver is always first.
  **One refinement found by running the corpus**: a scope that appears only in the return type (or is
  O3a-declared) orders *before* every parameter's. A result lives no longer than what it is built from, so
  it is the natural shortest - counted last instead, `fn f(seed Point&t) Point&s { return seed }`, the most
  ordinary shape there is, broke.
  **What it costs**: a function storing an earlier parameter into a later one must put the container first,
  as a receiver would be - one corpus function (`stash3`) reordered, and the error names the fix. **What it
  buys**: every obligation now runs in the direction the signature shows, so "pass each scope no shorter
  than the ones before it" is always enough, readable without the body. Explicit relation syntax stays
  unneeded; O25 had already turned every relation between reference-holding values into an equality,
  visible as a shared scope name.

- **`mut` on a local is a compile-time error (D11a).** Locals were always mutable - D11 said so, and `mut` on
  one was accepted and ignored - while parameters, globals and fields do enforce `mut`. So the keyword on a
  local stated nothing, and its absence read as immutability that did not exist: `b int32 = 3` then `b = 4`
  compiled. The options were to enforce it (immutable-by-default locals, as parameters are) or to forbid
  it; the user chose forbidding: locals are mutable, and the one keyword that could suggest otherwise is
  gone from them. `mut` remains where it decides something - a global, a parameter (D9), a field (C3), a
  receiver, an interface method. Migration was mechanical and driven by the compiler's own diagnostics:
  692 local declarations and `for` variables across seven files, plus the examples in comments, the spec
  and the diagnostics. Examples elsewhere in this record that predate it still show `mut` on locals.
  **Old syntax found in the spec on the way:** two code examples still declared `s scope` constructor
  parameters with comma-separated fields, and E25 still showed two scope arguments and `&own` - all three
  long removed from the language (O3, O3b), and missed in the earlier residue sweep, which covered the
  compiler and corpus but not the spec. Fixed; and E25's scope argument now binds the callee's **first
  scope variable in O10e's order**, which is where the code now binds it too - declaration order put a
  parameter-determined variable first whenever a function also had a return-only one.

- **The function keyword is `fn` (D7).** The user's call, for brevity; `func` is a compile-time error with a
  diagnostic naming the replacement (it still lexes as its own token precisely so it can say so). Function
  *types* follow (`less fn(a <T>, b <T>) bool`), as does `extern fn`. Grammar nonterminal names in the
  spec (`func-decl`, `func-sig`) are names, not the keyword, and were left alone.

- **Multiple return values, no tuple type (D8c/S4b).** `fn divmod(a int32, b int32) (int32, int32)`,
  `return a / b, a % b`, received as `q, r := divmod(7, 2)` or `a, b = ...` into existing places, `_`
  discarding one, `q, r := try f()`, and `spawn q, r = f()`. The user chose this over first-class tuples and
  over named results: it covers the real uses (a value plus a count, a flag, a remainder) with the least new
  machinery and keeps "if you store it, it is a declared type". A call returning several values is **never
  one value** - not an initializer or operand - only destructured, passed on whole by `return` or as all of a
  call's arguments (D8d, 2026-10-07), spawned into targets, or discarded as a statement.
  **Cheap because it reuses the struct machinery twice over.** The result type is an anonymous struct with
  fields `0`, `1`, ... and an `isTuple` flag, so layout, the error-union ABI (`{ i32, { T1, T2 } }`),
  generic substitution, interface signature matching and codegen of a struct return all applied unchanged.
  And destructuring **lowers** to a hidden local holding the result plus one ordinary declaration or
  assignment per target reading its field, so every per-value rule - fit, O25's exact scope, the scope
  bindings the call made - applies per element with no new code. `buildAssignStmnt` was split so its checks
  run on already-built operands, and a block can now receive several statements from one.
  **Two things it needed that were not there.** Anonymous struct identity: `TypeIsSame` compared two
  anonymous structs by owner and name, both empty, so *any* two were "the same type" - harmless while they
  only ever stood for choice payloads, wrong the moment `(int32, int32)` could meet `(int64, bool)`. Tuples
  now compare element-wise. And `_` had to become a non-name - declaring one is an error - so a discard can
  never be read back.
  **Alongside, the user's other two decisions: `fn` replaced `func` (which is now a compile error with a
  diagnostic naming the fix), and `:=` accepts any call** (D15), which destructuring leaned on.

- **(superseded 2026-10-06: modules are files, below) Modules are files or packages, imported locally, from `std/`, or from a remote repository (M22/M23,
  M19c, B3d).** A package is a directory: every `.olang` file directly in it is one module, sharing one
  namespace and one set of imports, with no order among the files. An import is one of four forms told
  apart by shape - `x.olang`, `./dir`/`../dir`, `std/name`, and `host/owner/repo[@ref][/sub]` (a host has
  a dot). **Relative imports resolve against the importing module, not the working directory**, which the
  old M3 said: a package found in the cache or in `std/` must mean its own neighbours. Nothing in the corpus
  depended on the difference, since every file sat in one directory.
  **A remote package is fetched once with git and kept** (`OLANG_CACHE`, default `~/.cache/olang`, one
  directory per `host/owner/repo[@ref]`), and never re-fetched implicitly - a build does not change because
  the remote did, and a second build needs no network. `@ref` is a branch or tag and a separate fetch.
  **No lock file and no registry yet**: pinning is `@ref`, and an unpinned import is whatever was cached
  first. That is the gap to close when there are real dependencies to version.
  **Identity is the base name for local code and the whole import path for std and remote packages**, so
  `std/list` and a local `list.olang` are two modules (`std_list`, `list`) that never collide; a relative
  import *inside* a std/remote package is qualified by the importer's path, so two `@ref`s of one repository
  each get their own copy of what they import relatively - which the first version got wrong, and the
  must-fail check caught as a symbol collision. This is what the deferred "declared module identity" question
  above was waiting for: hierarchy plus an owner, supplied by the import path rather than by a declaration.
  **Built-in methods became import-scoped (M19c)**, which was the question that started this: program-wide
  uniqueness meant two unrelated libraries each adding `int32.Clamp` could never be used in one program.
  Now a built-in's method is visible in its declaring module and in modules importing that one *directly*,
  and two visible claims are an error at the call rather than at the declaration. The visibility module
  must be the same in both passes, because codegen re-resolves methods (itab building, `$` rendering): it is
  the function's own module, and for an instantiation the generic's.
  **Individual function/type imports were not added and are not planned**: the unit of import is the
  module. `std/int/sort` could only ever be a package directory of its own.
  **One latent bug this exposed, fixed (B3d)**: every object defined every generic instantiation of the
  program it was built in, so an ordinary module's object depended on the program. The first time a
  non-root module (`std/string`) was shared by two programs, one reused the other's object and failed to
  link against a module it never imported. Only the root object defines instantiations now - its staleness
  already covers the whole program - as `weak_odr` rather than `linkonce_odr`, because a non-LTO build
  (`-race`) discards a `linkonce_odr` function its own object never calls.
  The stdlib moved: `io`, `chan`, `string`, `list` are `std/<name>/<name>.olang`. `geom/` is the corpus's
  two-file package, and the `checks/` package (originally `modcheck.sh`) covers what a `test` block cannot: programs
  that must fail (hidden and ambiguous built-in methods, alias clashes, bad import forms, failed fetches)
  and a remote fetch from a local git repository into a scratch cache, including `@ref` and a second,
  offline build.

- **Modules are files; directories only group them (M1/M22/M22a/M23, 2026-10-06, the user's design).**
  Reverses the package model below. A module is one `.olang` file; a directory is part of a path and never a
  module, so files in one directory share nothing - no namespace, no imports - and a file using a neighbour
  imports it like anything else (the user disliked both "a directory is a module" and its implicit shared
  imports). An import names a **file without its extension** (`.olang` in an import is an error, the user's
  call): `std/map`, `host/owner/repo[@ref]/path`, or a path **relative to the importing file's own directory**
  (`geom/rect`, `../shared`) - so `std/os` imports `"io"` and reaches `std/io` (the user: "intra-directory
  imports can still be relative"); inside std or a remote repository a relative import stays inside it.
  **Identity is the path** (`std/map`, `geom/rect`, a root's path from the working directory), so two
  `util.olang` in different directories no longer collide. **No package-private visibility for now** (the
  user's call; Go's "lowercase means this directory" is the fit if std ever needs shared internals). A
  facade file re-exporting capitalized aliases needs nothing new and is not shipped. The prelude is every file
  of `std/prelude`, each its own module, privileged as a set for built-in methods and bare-name types; per-file
  method coherence moved `String.Hash` into `text.olang`. std flattened (`std/io.olang`); `geom/` became two
  modules importing each other; `checks/` cases for an extension, a relative path leaving std, and a remote
  path naming no file. **Found on the way (pre-existing)**: written text did not adapt to a `String` value
  across `==` (`u == "cm"` was "both operands must have the same type", and so was every top-level condition
  comparing a text global) - T29c now reaches binary operators.
- **Conditional compilation is a top-level `if`; `-D` defines build constants (B9/B9a/B10/B10a/B10b).**
  The user's design: plain `if`/`else`, which at the top level can only mean "these declarations or
  those" since nothing runs there, so `compif`/`compelse` are gone (now ordinary identifiers); a local
  `if` always checks both branches and is merely folded. `-D Name=value` defines an immutable global
  visible in every module, typed as that literal would be (`true`/`false` bool, number shapes by T6a or
  float, anything else or quoted text a `byte[N]`). Built in: `TargetOs`, `TargetArch` (host, lowercase
  text), `DebugBuild`, `RaceBuild`, `TestBuild` - names chosen while building, pending the user's review.
  **A condition uses literals, build constants and immutable globals built from them (B9a)**, evaluated on
  tokens before anything is resolved, because the pre-scan must know which types and imports exist before
  parsing. The globals part was the user's follow-up: a condition finds `Name [type] = expr` / `Name :=
  expr` at the module's top level, outside every conditional and in any file of a package, and evaluates
  its initializer the same way - so a mutable global, one computed by a call, or a cycle is rejected. A
  call stays out until the compile-time evaluator exists, and even then the phase question (which
  declarations exist while a condition is still being decided) has to be answered first. Text compares by
  content in a condition - there is no array identity yet at that point.
  **An untaken branch is not even parsed**, only brace-matched. The first version parsed every branch to
  report syntax errors everywhere; `make run` (a `-b` build) then failed, because parsing depends on known
  type names (`T{...}` is a literal only when `T` is a type) and a branch's types exist only where it is
  taken. So a branch is text until chosen, as in C.
  **B10b, the same staleness trap for the fifth time**: an object built under one `-D` value would look
  current under another and be reused with the wrong branch compiled in. A build with any `-D` names its
  objects with a hash of them (`.d<hash>`); a check flips a value and asserts the other branch runs. The
  build constants live in a synthetic module (`olang_build`), first in the list so it initializes first,
  always rebuilt since it has no source to be stale against.
  **Global initializers got their own pass** (between signatures and bodies, imports first), fixing a
  pre-existing bug found by the B9a package test: `Units byte[] = "cm"` as a global never adopted the
  literal's length (D15 was applied only to locals), stayed runtime-length, and its initializer allocated
  from a scope no global has - invalid IR. And a `:=` or `T[]` global read from another module whose bodies
  were checked first saw its type unfinished, since initializers used to be built with their own module's
  bodies.
  **Three bugs found on the way**, two pre-existing: B5a's init order (a root's initializers ran before
  its imports'), a file ending in a statement with no newline after it not parsing, and a crash when a
  module redeclared a `-D` name (the error path returned before registering the var later passes need).
  **Found 2026-10-08 auditing the records: a text build constant was never text.** It kept the raw literal's type -
  built before the prelude loads, so a fixed array of `U8`, not `Char` - and so `Mode == "fast"` or passing `Mode`
  to a `String&` failed with "both operands must have the same type" everywhere but the token evaluator, which is
  why the existing checks passed. It is now a `String` (T29c), retyped once the prelude exists (B10).

- **Compile-time evaluation (K1/K2) - no function colouring, guaranteed only where a value is needed.**
  The user's request: "anything that can be computed at compile time is". The design agreed: no
  `constexpr`/`comptime` marker on functions (C++'s split into two function kinds is the thing to avoid);
  any function is evaluable on a given call when what that call does is evaluable; the places that need a
  compile-time value ask for one, and everywhere else LLVM's folding already does the rest. The evaluator
  (`comptime.c`) interprets the checked program - the same operands and statements codegen lowers - with
  integer widths wrapping as generated code does, references as real aliases (so `mut &` writes land in
  the caller's value and `==` on references is identity), and `try` clauses handling errors as at run
  time. What it refuses is listed in K1: mutable-global reads and any global write (skipping the
  computation at run time would skip the write), externs, dispatch, tasks, atomics, process endings, a
  failing assert, everything the spec leaves undefined (refused rather than given a value the program
  never had), and a step budget.
  **First constant context: immutable global initializers (K2).** Attempted for every such global once
  the program has checked cleanly; one that evaluates to plain data is written out as the global's data
  and nothing runs at startup, and one that cannot is set at startup exactly as before - so success is
  unobservable except as speed and as availability in later constant contexts. A run-time-length array's
  buffer has no constant form yet (it would need a second global) and stays at startup.
  **Two evaluator bugs found by reading it before it ever ran**, both now pinned by corpus globals whose
  baked values are asserted: a reference parameter was bound to the caller's own variable node, so a
  repoint in the callee would have moved the caller's variable (S4a says it is the callee's cursor); and an
  error raised inside an argument's own `try` could have been caught by the enclosing call's clauses,
  where at run time it leaves the enclosing function.
  **K1a, the user's "metadata" idea**: whether a function can ever be evaluated is decided statically -
  the first excluded operation in its body, in anything it calls, or in the initializer of an immutable
  global it reads - and a call to such a function is rejected up front with that operation and its
  location as the reason. That made evaluability a property of the function instead of the arguments a
  call happened to pass (a function that only writes in an error branch used to evaluate for some inputs),
  which is the predictability the user was after. Computed each build, never a file (B2a). A function whose
  body had errors is never evaluated (`bodyHadErrors`).
  **Integrated with conditional compilation (B9c)**: a top-level condition the token evaluator cannot
  decide - a call, a computed global, another module's name - is deferred; the program is checked without
  those branches (diagnostics held back by a bufferable error stream), each deferred condition is checked
  as a bool expression in its module and evaluated, and the program is checked again with the decisions,
  repeating while a chosen branch holds further such conditions. A condition using a name that exists only
  inside a branch being decided is rejected, since it would be deciding on its own outcome. Cost measured:
  0.45s on a 5.1s test build of the largest corpus file with a two-deep chain, nothing without one. One
  wrinkle recorded: text compared by content on the token path but by E10 on this one - gone since E10a (`==` on a
  `String` calls its `Eq`) and B10's text constants being `String`s (2026-10-08).
  **Next**: constant contexts inside bodies (a local `T[expr]` becoming compile-time-length) need callee
  bodies on demand, since bodies are checked module by module.
- **No shadowing (D3a).** The user's call: "I don't want any shadowing, modules/directories take care of the
  too-many-names problem". A local or parameter may not reuse a global's, a function's or a build
  constant's name. D3 used to allow a local to shadow a global. Corpus cost: zero apart from one test of
  mine that shadowed `TargetArch` on purpose. It also makes S8b's parse-time reading of a condition exact:
  a name that is not a local of the function is a global.
- **An assert the compiler can evaluate is checked while compiling (S18c).** The user chose this over
  exempting `if ... { fail }` checks from S8a, noting an assert aborts rather than fails but that in tests
  the two are the same. False is a compile error at the assert; true emits no run-time check - about 480 of
  the largest test file's ~1,680 asserts, and its test build went from 5.6s to 4.0s. It is judged wherever
  the assert is written, reached or not, so the corpus's nine `assert false` "never reached" markers became
  `unreachable`, which is what S16d exists for. Test asserts are judged only in a test build - otherwise a
  test's `assert TestBuild` failed `make run`, a build in which tests never run.
  **It exposed a real evaluator soundness hole**: destructors were not modelled, so a call building a
  destructor-bearing value (whose destructor writes a global) was judged pure - an assert on it was proven
  and dropped, the call never ran, and neither did the destructor; K2 would have baked such a global the
  same way. Building a value whose type declares a destructor is now outside K1, statically and
  dynamically, with a regression test that a global so initialized still runs its destructor at startup.
- **Locals provably holding one value count (S8c).** The user: "even variables that can be proven to have a
  certain value can be comp-timed". A local is fixed when it is a plain scalar declared with an initializer
  and nothing in its function writes it afterwards (assignment, `++`/`--`, atomics, spawn targets) - the
  complete list for a scalar, since there are no primitive references, which is why aggregates and
  references are left out for now: their contents can change through borrows and aliases. Every undecided
  local condition is now queued (no longer only those naming no local); the checker records the condition
  as built in its own function, and the evaluator asks a fixer for any local it reads, which finds the
  declaration and scans the body for writes. Two corpus tests had genuinely fixed conditions and were given
  runtime values; two check programs moved to `assert`. **Found on the way, pre-existing**: an `else` whose
  branch did not parse was silently dropped by the runtime-if parser, leaving the stray `else` to fail
  later with an error past the real one - now the whole `if` fails to parse.
- **Any compile-time-computable local condition that depends on the build decides the `if` (S8b extended).**
  The user: "a local if on a comptime-computable expression, no matter how complicated the expression, is a
  valid way to produce platform specific code". Local conditions the token evaluator cannot decide (calls,
  computed globals) go through B9c's machinery: on the first attempt such an `if` is parsed normally when
  its branches parse, or skipped with its function marked incomplete when they do not; its condition is
  then checked in module context (it names no local - the parser checks every identifier against the
  function's declared names, which D3a makes exact) and evaluated. The evaluator reports whether a build
  constant was read (`usedBuild`, memoized per global). Outcomes: a value (conditional compilation), dead
  (S8a, now also covering calls), or runtime (not evaluable - an ordinary if, never an error). Another
  attempt runs only when something was decided or skipped, so a program whose call-conditions are all
  runtime pays nothing. A function whose body still has a skipped branch is never evaluated
  (`CT_WHY_INCOMPLETE`), which defers a condition calling it to the next attempt. Consequence flagged to
  the user: `if pure(3) != 6 { fail }` is now dead code - self-checks use `assert`; four check programs
  were migrated. Two bugs of mine on the way: the evaluator stops at its first unreadable name, so a
  local later in the condition went unseen (now every identifier is scanned); and diagnostics from
  checking a condition in module context leaked (the decision step is now muted).
- **A local if the build decides is conditional compilation too (S8b)** - reversing "local ifs always check
  both branches" on the user's question "why are we not using the same condition checking logic for
  constants locally?". The reason given for checking both was that a condition turning out constant by
  accident would silently stop checking a branch; S8a removed that possibility (a constant local condition
  not depending on a build constant is already an error), so every constant condition left is deliberate
  configuration, and treating it like the top level's is simply consistent. Only the chosen branch is
  parsed and checked; it becomes an `if true` block (which D10a and codegen already treat as always
  running), or nothing. **The one real problem is shadowing**: the decision is made in the parser, a local
  may shadow a global or build constant, and the parser has no scopes - so it collects every parameter and
  local name declared so far in the current top-level item (never pruned: over-approximation only turns a
  decision into a runtime if) and the evaluator refuses to read those names as globals. An `else if` that
  is decided after a runtime `if` folds into that if's `else` block, so the checker never sees the new node
  there. Conditions that call functions stay runtime locally.
- **Dead branches are errors (S8a)** (originally recorded with "local ifs always check both branches",
  since reversed by S8b above). The user asked whether local
  ifs should skip unparsed branches like top-level ones, and suggested that a condition fixed without a
  build constant means dead code. Kept: both branches of a local `if` are always checked (the top level
  skips only because it cannot parse a branch whose types do not exist; locally, platform code lives in
  top-level conditional declarations). Added: a local `if` whose condition is built only from literals,
  operators, build constants and constant immutable globals, and depends on no build constant, is a
  compile error - one branch is dead code, far more often a mistake than an intention, the same spirit as
  S3. A build-dependent one is configuration. Calls are not followed (a callee may be unchecked at that
  point). Consequence the user was asked to confirm: `Verbose := false; if Verbose` in source is an error -
  configuration knobs belong in `-D`.

- **One loop keyword, `for ... in`, and logic in words (S9/S9a/S10, E7a, 2026-09-30).** The user's
  direction: olang should read more like natural language. `for { }` (forever), `for cond { }` (while),
  the three-clause form, and `for x in e` / `for i, x in e`; `do { } for cond` replaced `do { } while`, and
  `while` is gone (diagnosed, and read as `for` so one mistake is one error). `for ... in` walks an array
  (borrowed, each element COPIED into `x`), an **iterator** (a `Next()` returning `(T, bool)` - since 2026-10-08 `T ? Exhausted`), or an
  **iterable** (an `Iter()` returning one) - the "built-in interface with compiler support" the user asked
  for, recognized by method shape since interfaces cannot be generic (T35). It is lowered in the checker to
  code the program could have written (a borrowed array plus a counter, or a hidden iterator and a
  `Next`/break), inside an `if true` block for scope, so borrowing, containment, mutability and S11a
  unwinding all apply with nothing loop-specific. `&&`/`||`/`!`/`^^` became `and`/`or`/`not`/`xor`;
  `&&=`/`||=`/`^^=` were dropped - the logic words have no compound assignment (the user's call). **`and`/`or` now short-circuit** (the
  user's call) - E7 used to say both operands always run, which the compile-time evaluator never did, so the
  two disagreed on whether a right side ran; `xor` cannot, its result needing both. **`not` binds looser than comparisons**, Python's rule, because
  `not a == b` must mean what the sentence says - the one precedence decision taken without asking, flagged.
  **Ranges (S9b), the user's design**: `for i in range end`, `range start, end`, `range start, end, step` - a
  keyword taking one to three comma-separated expressions, no parentheses (the user's call). One argument is
  the end; with more, the order is start, end, step (corrected by the user - their first description put
  end first, and I built that). Start defaults to 0 and step to 1. **It only counts upward** (the user's correction, after a first
  version walked downward when start was above end and reversed for a negative step): start below end and a
  positive step, or it runs no times; a literal step <= 0 is an error. Lowered like for-in - a count worked
  out once and a counted
  loop - so comptime evaluation works through it (a global `rangeSum(10)` is baked).
- **An array reference takes the length of what it points to, every time it is assigned (D15a).** A
  `T[]&` holds `{len, ptr}`, so its length is run-time data refreshed by each assignment. A declaration from
  a literal used to also bake that length into the TYPE (`x byte[]& = "q"` was a `byte[1]&`), after which no
  reassignment to other-length text could compile. Now only a value declaration adopts it into the type.
  **Then the size left reference types altogether (T11a, the user's call: "make the size in the type
  irrelevant, heck make it an error even").** `int32[3]&` in a parameter, result, field type or element
  type is an error naming `int32[]&`; in an allocating declaration the size is an allocation count, constant
  or not (`buf byte[64]& = 0`), and the type is `T[]&`. `T[N]&` - a bare pointer with the length in the
  type - no longer exists as a type. T8a restarts below each reference level (an array of references to
  differently sized arrays is several arrays, not a jagged one), and a reference level may hold fixed rows
  (`int32[][3]&`), the one way left to refer to a rectangular block. Corpus: ~30 type spellings changed.
  **A codegen gap it exposed:** promoting a fixed literal into a run-time-length reference built the
  literal (and so any reference elements) in the CALLEE's scope before copying - `Handle&[...]` returned as
  `Handle&[]&s` had its handles destructed at the return. Only the `T[N]&` path had set the target scope,
  because only that path had ever carried reference elements; now both do.
- **Generic interfaces (T35a) and the built-in `Iterator<T>` (T35b), 2026-09-30.** The key observation: T35's
  objection ("a dispatch entry must be one function, a generic names a family") is about a method that is
  generic in its OWN right, not about an interface parameterized at the type level - every instantiation
  of `Source<T>` has concrete methods, so it is an ordinary interface and satisfaction, tables, dispatch
  and identity needed no change. Three things did: the interface's own variables must not trip the
  method-is-generic and G4 checks; the generic walkers (substitute/unify/collect) treat a declared
  interface like a declared struct (through typeArgs); and a generic TYPE's method satisfies through the
  instantiation its concrete receiver determines, instantiated at the satisfaction check. `Iterator<T>`
  lives in the synthetic build module beside the -D constants, found by name when a module has no such
  type, and may not be redeclared. `for ... in` now requires real satisfaction of it - which closed the
  shape check's hole (a `Next` without a `mut` receiver was accepted). The `Iter()` rule was dropped (the
  user: "leave iterable for now"); a collection hands out an iterator from an ordinary method called
  explicitly. Not built: inferring `T` from a CONCRETE argument against `Source<<T>>` (needs unifying
  through the concrete type's methods) - explained to the user, pending.
- **Capitalized primitives; a prelude; no user methods on built-in types (M19d), 2026-09-30.** The user's
  object-style move: `Bool`, `Byte`, `Int32`, `Int64`, `Float32`, `Float64` (lowercase names are simply
  unknown now). Built-in types' methods are declared by the **prelude** - the ordinary olang package
  `std/prelude`, loaded before every program's modules - and by nothing else, which answers "who may
  declare methods on a primitive" with "no one but the language" and replaces M19c's import-scoped claims
  and their ambiguity rule. Its exported types (`Iterator`, `ParseError`) resolve by bare name in every
  module through one lookup (`typeNamed`) and cannot be redeclared. `std/string` became
  `std/prelude/text.olang`; `Iterator` moved from a synthesized type into `std/prelude/iterator.olang`. A
  program wanting its own methods over a built-in declares a type over it (T29). At the user's request,
  **every diagnostic for a retired spelling was removed** (func, while, choice, &&, ||, !, ^^, compound logic,
  `+` on arrays): the old forms are now just unknown. **`Array<T>` was designed and withdrawn (2026-10-01, the user's call)**:
  arrays stay `T[]`/`T[N]`, because a constructor-only `Array<T>(n)` loses inline storage (struct fields, C
  layouts, constant tables) and a length-free `Array<T>` makes assignment into fixed storage a run-time check.
- **The whole test suite is olang (2026-09-30, the user's call).** `modcheck.sh` - the must-fail programs and
  whole-build scenarios a `test` block cannot express - became the `checks/` package: `checks/cases/*.olang`
  are ordinary programs whose first line says what they must do (`# check: fail <text>` / `build` / `run`,
  optional `# flags:`), and `checks/checks.olang` runs them and drives the multi-step scenarios (remote
  fetch into a cache, `-D` rebuild staleness, grepping the emitted IR) with files from `checks/fixtures`. It
  runs as part of `make test`, on top of a new `std/os` package (`Run`, `ReadFile`, `Quote`) written over
  `extern fn`. Adding a check is adding a file. Writing it found a real use-after-free (next entry).
- **A returned join was built in the dying scope (E11b fix).** `return $a $b` built its text in the function's
  own block scope, closed at the return: stores and declarations routed text through the target scope, the
  call/return boundary never did. Pre-existing (reproduced at the session's first commit); invisible because
  every test read the result before anything reused the chunk. Pinned by a test that allocates in between.
- **No `size()` builtin, and serialization is deferred (2026-09-30).** A `size(x)` giving a value's flattened
  byte length was designed in detail (padding between fields, none trailing, one level of indirection, an
  enum's active case) and then withdrawn by the user, who reframed the question as "how do I write a data
  object to a file or the network". Answer: a memory dump is the wrong base (padding, byte order, and
  references that mean nothing to the reader), so it is two other problems. **Serialization** - an encoder
  walking a value field by field, JSON as one encoder and a compact binary one beside it, in std - needs a
  **compile-time reflection** facility (iterate a type's fields, in the spirit of `match <T>`); both are
  recorded as future work, not next. **An `is` test for enum cases** (`shape is Shape.Circle`, true for any
  payload) was proposed 2026-10-07 and deferred by the user to the same facility - its only gain over `==` is
  asking which case a payload enum holds without writing the payload. (Built the same day after all, as E32, at the
  user's request, and kept for enums when interfaces were removed.) **Exact layout** (drivers, wire headers, C structs) wants a
  declared-layout type whose size is a compile-time constant, not a measurement of arbitrary values;
  deferred until something needs it (MMIO itself is still inexpressible, X3b).

- **`Array<T>` is the array type; storage comes from `Array<T>(n)` (T7/T7a/T8, E13a, D14, C2e, O1b,
  2026-10-01, the user's design).** `T[]`, `T[N]` and `T[expr]` are gone as types and declarations, and so are
  multi-dimensional arrays (user: "make 2D arrays not a thing"). `Array<T>` is a value, `Array<T>&` a
  reference (T11 unchanged: the marker alone decides), and the length is never in the type.
  `Array<T>(n)` / `Array<T>(n, v)` zero-fills or fills and is an ordinary expression, built where it lands like
  any temporary (E12c) - so `return Array<Int32>(n)` is writable for the first time. Literals stay
  `Int32[1, 2, 3]`; `:=` from one declares an `Array<T>`, and D12a's length adoption went (it made a later
  assignment of another length abort). An array of arrays is `Array<Array<T>&>`.
  **The in-struct problem, the user's way: compile-time evaluation (C2e).** A field written
  `m Array<Float32> = Array<Float32>(16)` (or `:=`) whose size the evaluator can compute - a literal, a constant,
  arithmetic, a call - is stored inline: the struct stays plain data and matches a C layout (`chan.olang`'s
  mutex blob). Layout must be settled before bodies are checked while the size may need checked bodies, so a
  field with an undecided size is held in the arena for one attempt, its size computed after checking, and the
  program checked again - B9c's loop, extended (and fixed: it returned without re-checking whenever the program
  also had runtime `if` conditions, which the prelude does). Decisions are keyed by file, line and field name;
  token ids are not stable across attempts. An inline field is fixed storage: a copy into it is length-checked
  once per copy (compile error when both lengths are known), the per-construction line D14b already draws.
  **T7a, found by probing value semantics**: an array held by value inside a struct or another array is
  shared, not copied, when the container is copied (verified: `v W = w; v.a[0] = 9` changed `w`). The record
  had a rule for exactly this ("a struct owning a run-time-sized field is reference-only", the Vec rule) that
  was never enforced. Chosen instead: such an array must be written `Array<T>&`, which says it is shared;
  inline fields are the exception. **O1b**: globals now have the program's own never-closed scope - a global
  holding a reference used to emit invalid IR (`ptr (null)`), pre-existing and now unavoidable since every
  array lives in an arena. **C2d extended**: a constructor assembles its instance with `%here` as the target,
  or a value array field was copied into the closing constructor scope. Not yet: baking arrays and references
  into global data (K2 now skips array globals - one check assertion dropped until then), `String`.
- **`String` is the text type (T29c, 2026-10-01).** `type String Array<Byte>` in the prelude, with the text
  methods (`Eq`, `Trim`, `ParseInt`, ...) on `String&`. Text written in the program - a literal, `$x`, a
  join - is a `String` wherever one is wanted (a `:=`, a receiver, a `String` target), extending T29a's
  "a literal adapts" to the other two temporaries that are text by construction; other bytes become text
  only by `String(bytes)`, which copies nothing. So I/O buffers stay `Array<Byte>` and text APIs say `String`.
  `==` stays identity on `String&` and content comparison is `.Eq` (superseded by E10a, 2026-10-08: `==` calls
  `String.Eq`, and identity is `same(a, b)`). No encoding check. Two general fixes it needed: a **slice keeps its base's declared type** (a
  slice of a `String` is text, of a `Nums` a `Nums`), and **a named array flows into its underlying type
  across E12's conversions** - a `String` value reaches an `Array<Byte>&` parameter by the same borrow an
  unnamed one would (it required an identical representation before). `:=` also reads a conversion's type
  (`b := String(raw)`).
- **Globals holding arrays and references are baked too (K2b, 2026-10-01)** - the plan's last phase,
  "comptime constructors like crazy". An array's elements and a reference's referent each become a private
  global beside the baked one, keyed by evaluator node, so two references to one node stay one instance and
  a cycle (`a.next = a`) is written as itself. Such a value is kept on `bakeVal`, apart from `constVal`: only
  plain data is offered back to later evaluations, since a reference there would be shared between them.
- **Empty destructors are an error; destructor-bearing globals are baked (C7a, K2c, 2026-10-01).** The user
  asked whether an empty `destruct { }` makes a type reference-only (it does, C11), then asked not to register
  empty ones, then - the decision - made `destruct { }` a compile error: a destructor releases something, and
  reference-only is not what it is for. (The interim "never registered" handling was removed with it.) A
  destructor still blocks evaluation - skipping its construction would skip its effect
  (the S18c bug) - except directly in a global's own initializer, whose frame allocates into the program
  scope that never closes (O1b): such an instance never destructs at run time either. Narrowed deliberately to
  that frame: a constructor's field lands in its instance's scope, but a call inside that field's
  initializer allocates into the constructor's own, which closes, and telling the two apart was not worth it
  now. Also found: a constructor's own closing assembly of its instance counted as building another one, so
  no destructor-bearing constructor was ever evaluable - exempted. The user asked why the program cannot
  simply be simulated: it can for checks (an assert's call still runs), and for replacements it would mean
  simulating startup and baking the final state of the globals destructors write - recorded, not built.
- **`len(a)` is gone; `a.Len()` returns `Int64` (E23/T10, 2026-10-01, the user's design).** Asked first for a
  `len` that adapts like a literal (narrowing to `Int32` where wanted); worked out the run-time overflow
  question (check, wrap, or require the conversion), then the user stopped it: `len` should not be a builtin
  at all but a method on arrays, and it returns a plain `Int64` - "we don't have any implicit integer
  conversions", which is exactly T6 (only a literal adapts). The compiler supplies `Len()` for every array
  type, declared ones like `String` included, since the length lives in the representation. `len` is now just
  an unknown name. Corpus: about 120 uses rewritten; positions and lengths in std became `Int64` (`Find`,
  `FindByte`, `List.Len`, list and channel counters), the for-in index is `Int64`, and code that wants an
  `Int32` writes `Int32(a.Len())`. **Found on the way:** a dotted method call could only start from a local -
  `TargetOs.Len()` and `sh.Units.Len()` were "unknown namespace" - so methods on globals and on another module's
  exported globals were never callable that way; `len(...)` had hidden it. Fixed, M20 keeping the readings apart.
- **Iterables (S9c, 2026-10-01, the user's call), and `List` iteration.** `for x in e` walks `e.Iter()` when
  `e` has an `Iter()` and no `Next()` - the deferred for-in-only rule; no nameable `Iterable` interface yet (it
  would need covariant-return satisfaction and a scope for a boxed iterator). The user asked why `List` should
  not just be its own iterator: a position stored in the collection breaks nested loops, repeated loops,
  read-only iteration and two tasks reading one list. `List.Iter()` returns a `ListIter` holding two numbers
  (chunk, index), not a reference to the current chunk: **checker limit found** - a method writing a reference
  field through a receiver whose scope it cannot name (O24), or walking a cursor reached two hops through one,
  is rejected even when the stored reference already lives in the right scope, because the checker cannot
  show two paths through one unnamed scope are equal; and naming the receiver's scope would stop the method
  satisfying an interface (dispatch has no scope to pass). Recorded, not fixed. **Bugs fixed:** no generic
  iterator could be walked by for-in (its element type was read off the generic `Next()`), and a declaration
  of a generic type with no initializer could not end at a line break (L20a now accepts a closing `>`).
- **Scope-checker study (2026-10-01).** Five realistic programs (BST, graph, parser/AST, LRU cache, generic hash
  map) written naturally to measure the "refs holding refs" worry. Three bugs fixed: a reference field's
  scope is its container's in the fit check (O20, through whole chains); an absent instance-scope binding is
  no constraint when branches merge; and a pre-existing **use-after-free** - a new reference assigned into an
  element of a run-time-length array reached through a reference was built in the writer's own scope. Cost
  of such code: name the region on mutating receivers, on helpers taking part of the structure, and on
  values built for installing. Open friction: nested builders need explicit scope arguments (O18), G11 blocks
  generic containers of references (no generic `String`-keyed map), O24 fires on storing `null`. Details in
  HISTORY.md.
- **Every reference parameter carries its scope (O4b); the scope order (O10e) is gone (2026-10-01, the
  user's call after the scope study).** A parameter written with a bare `&` gets an anonymous scope variable
  (`&p`), passed as a hidden argument and bound by the argument like any named one. So a function may allocate
  into a reference parameter and store through it; O4a and O24 are gone, and with them every receiver
  annotation the study needed (`fn (t mut Tree&) Insert` now builds nodes in the tree's scope). Relations
  between parameters are obligations checked at each call, in either direction now that O10e's
  "shortest-lived first" order is removed - repointing one parameter at another's referent is an equality
  obligation. Interfaces stay two words: every interface method signature gets a leading receiver scope,
  bound from the interface value's tag (the instance's exact scope, O25); a by-value receiver's thunk drops
  it. A written scope argument (`f&s()`) binds the first variable no parameter names. **C2d widened**:
  constructor arguments from several of the caller's scopes are each held against where the instance lands
  (per-argument exactness), so `Slot(key, val, m.first)` with the key and the map in different scopes works.
  **A soundness bug found and fixed, pre-existing**: obligations were checked at calls without block depths
  (O2a), so an argument from an inner block passed for one that must outlive an outer one was accepted.
- **References as generic type arguments (G11, 2026-10-01).** `List<String&>` is legal: a bare marker, its
  references living in the container's scope. A named scope in a type argument stays an error. What it took,
  all latent behind the old prohibition: binding a bare `<T>` kept stripping the argument's marker
  (TypeUnify); an instantiation's name ignored a declared type argument's marker, so `List<String>` and
  `List<String&>` were one type (G16a); a parameter that became a reference by substitution got no implicit
  scope (assigned again per instantiation); and, pre-existing and order-dependent, resolving a struct type
  lazily from inside another left scope declaration switched off, so `List`'s own `&s` fields were rejected
  when `listChunk` happened to be resolved from inside one of them.
- **A scope only the result names follows the result (O18a, 2026-10-01).** Item 2 of the scope study: a
  call's undetermined, unsupplied scope variable is "landing" - rebound (landCall) to wherever its result
  lands: a declaration's written scope, an assignment target's exact scope, the return type's scope, another
  call's parameter binding (recursively, through `landsWith` when that is still landing too), or a
  constructor's instance. Obligations touching a landing variable are discharged when the statement ends.
  Codegen reads the landed binding; one never landed falls back to the scope being built into (a constructor
  field's instance) or the caller's own block - never shorter than what the checker assumed. The study's
  parser compiles exactly as first written, no `&t` arguments.
- **No scope names (O3/O4a/O13/O14/O25a/O26, E25, C2c/C2d, 2026-10-05, the user's design; BUILT).** A scope is
  never named. A marker is bare, `&x` ("lives where the variable `x` lives"), or `&return` (the result scope).
  Each reference parameter - of a function, constructor or enum payload - has an implicit scope (O4b). A result is
  **built** (`T&`, or by value holding references: in the **result scope**, which lands where the call's result is
  put - O18a - or where `f&x()` says) or **borrowed** (`T&p`: in `p`'s scope; it may still be newly created).
  **A local's type says where it lives (O25a)**: `x T&` is its block, `x T&y` where `y` is, `x T&return` the result
  scope, and an initializer living elsewhere is an error - only `x := e` takes `e`'s scope (for a value holding
  references too: a "value home"). So `x Node& = first(l)` is an error and `x Node&l = first(l)` the fix. The
  user's rule for when scopes must match exactly: **exact, unless what is stored holds no references and sits in a
  field or array element, where it need only outlive the container.**
  **Constructor fields (C2d, option A, the user's choice):** a bare field - a pun included - lives with the
  instance, so building through `l.next` builds in `l`'s scope, which is always reachable at run time. `f T&p = p`
  keeps the argument's own scope (cursors, views); a function given such a container may read, walk and repoint
  through the field but not build through it (no temporary into or through it, no local or `mut`/borrowed-result
  argument from it), since its real scope is a per-instance fact with no run-time representation.
  Removed: scope declaration by appearance, O3a/O3b, O13/O14's dangling errors, supplied constructor scopes, enum
  scope names, and the short-lived automatic "returned local lives in the result scope" rule (replaced by
  `&return`, the user's call). Kept, flagged to come back to: O10b's inferred obligations, with a failing call's
  error naming the callee statement that required it.
- **Constructors for declared primitive types (T29d, 2026-10-05, the user's design); no primitive references.**
  `type Percent Int32(v mut Int32) [? errors] { ... }`: one parameter of the underlying primitive - the value -
  which the body may check or change; its final value is the result, and `return` is rejected. `Percent(x)`
  calls it in place of the plain conversion, so a bare literal does not adapt to such a type either
  (`Percent(150)` is written - the user's call, after briefly allowing it: on a constant the check is free;
  **reversed 2026-10-08 by the user's later call: a literal runs the constructor, while compiling - T29d below**), while
  **arithmetic keeps working and does not run it** - the user's call: a
  constructor checks how a value enters, not what arithmetic makes of it (running it after every operator would
  be a hidden call, and a fallible one would make `a + b` need `try`). **Primitive references (`Int32&`) and with
  them destructors on primitives (a file-descriptor `Fd`) were designed and dropped by the user**: assignment to a
  reference repoints (S4a), and a number has no field to write through, so `n = 5` on an `Int32&` would either
  repoint (useless) or need to differ from every other reference.
- **`std/map` - `Map<K, V>` (2026-10-05).** A key is any type with `Hash() Int64` and `Eq(other) Bool` methods; the
  prelude (`std/prelude/hash.olang`) gives them to Int32, Int64, Byte and String (FNV-1a over text, a golden-ratio
  multiply and fold for integers - relying on integer arithmetic wrapping, now stated as E6c). Chained buckets, power-of-two count, doubled at three-quarters full by re-linking slots; everything
  lives where the Map does (bare fields, C2d). `Put`, `Get` (fails with the default error on a miss - 2026-10-07, the user's call; it returned `(V, Bool)`
  first), `Has`, `Remove`, `Len`, and `for e in m`
  giving `e.Key`/`e.Value` through a two-number `MapIter`, as `ListIter` does - an iterator holding the map as a
  `&p` field cannot walk its slots itself, so the map answers `entryAt`. Writing it found two inference gaps (G9a
  for text, G9b for already-bound variables) and a pre-existing use-after-free (O17: a borrowed value argument did
  not determine its parameter's scope, so `l.Push(i)` in a loop built into the loop's arena). Named `Map`
  rather than `Dict` - the user's call, after hearing which languages use which.
- **Integer arithmetic wraps (E6c, 2026-10-05, the user's call).** `+ - *`, unary `-`, `++`/`--` and `<<` reduce
  modulo 2^w - two's complement for Int32/Int64, unsigned for Byte - never undefined, checked or trapped, and the
  compile-time evaluator wraps identically. It was already what codegen did (no `nsw`/`nuw`) but no rule said so,
  and the prelude's hashes rely on it. Division by zero and MIN / -1 stay undefined (E6a).
- **The default error and BuiltinError (R15-R20, 2026-10-05, the user's design).** The bare error became **the
  default error**, with no name: `?` **alone** declares it, meaning "this can fail, without saying how". A function
  naming its errors (`? MathError`) fails with exactly those - `catch MathError` is complete, and a plain `error`
  there is a compile-time error. A bare-`?` function **generalizes**: whatever a `try` in it lets through leaves
  as its own default error (the user's confirmation of the open case). Only an untyped `catch` catches the default
  error; `? error` and `catch error` are gone. A first version put the default error in EVERY error set - the
  user corrected it ("it is the presence of error"), and the 51 `catch { unreachable }` it forced were removed.
  **BuiltinError** (prelude, `std/prelude/builtin.olang`): `OUT_OF_BOUNDS`, `DIVIDE_BY_ZERO`, `OVERFLOW`,
  `INVALID` - what the language's own checks report, only under `try`, and an ordinary error type otherwise (named
  in a signature or caught). A check names exactly the words it can produce, so `catch BuiltinError.OUT_OF_BOUNDS`
  completes a checked index. Checked indexing and slicing moved to it from the bare error.
  **`try (expression)` (E15a)** checks every operation inside that can fail - integer overflow, a zero divisor,
  MIN / -1, a shift amount outside the width, a conversion out of range or of a NaN, a float result turning
  infinite or NaN, a negative array length, an index or slice - each with its word; not through a call or a nested
  try. Without `try` everything behaves as before (the user's call: "do them all as we are today and add try catch
  for optional checking"). `try` binds tightly, so the computation is parenthesized. The compile-time evaluator
  runs the same checks (exact results at twice the width), so a checked computation bakes into a global or decides
  an assert exactly as it runs.
- **The evaluator models slices, text and enum payloads (K1, 2026-10-05).** The three gaps K1 listed as "not yet
  modelled" are closed, at the user's request. A slice is a view sharing its base's element nodes (a write through
  either is seen by both); `$x` and joins render with the generated code's own rules (codegen exports its type
  spellers so both spell types identically); an enum payload is built, compared by tag then payload, and bound by a
  `match`. Proven by globals baked from all three and compared with the same computation done at run time.
  **Function values and interfaces followed (K1)**: a function value holds the function it names, an interface
  value its instance, so `==` is identity and `$` renders them; calling through either is still excluded. **K2d**:
  a payload enum bakes as data - the live case's fields written as the bytes they occupy in the `[K x i8]` buffer,
  keeping the global's LLVM type canonical; a payload holding an address still falls back to startup. Found on
  the way: T29c's `:=`-from-text-is-a-`String` held only for locals (a global stayed `Array<Byte>`); the four
  `:=` sites now share one function.
- **Lambdas (D16, T22/T22a, 2026-10-06, the user's design).** `fn(x) { return x > 3 }` written where it is used.
  Talked through at length: the point is quick one-off callbacks with context (sort keys, predicates), which
  today needed a struct, a method and an interface. **Captures are copied** (the user chose this over Go/JS
  sharing): plain values frozen and read-only, references still naming their instance (so writing through a
  `mut` one is the explicit way to change outer state), value arrays not capturable (D9a) - so a lambda is a
  plain function of its arguments and captures, and stateful closures stay structs with methods. Returning and
  storing are allowed, scope-checked as a value holding references. **`return` is always written** (the user
  rejected an implicit single-expression value). Types, result and errors come from the expected function type
  (D16a: argument, written declaration type, assignment, return), else from the signature and body (D16b: first
  `return`'s value type; errors in order of appearance). **Stage 1 built**: no captures yet - a lambda is
  checked as a hidden function (`lambda$N`) where its expected type is known (a placeholder until then, with a
  per-statement safety net), and emitted `internal` with the function it is written in (`lambdaHost`), so it
  works inside generic instantiations, tests, constructors and global initializers. The evaluator now calls
  through function values (decided when it runs, K1a). **Found on the way, all pre-existing**: a function with
  scope obligations could be passed as a value and its obligation was never checked - a use-after-free,
  reproduced (T22a now rejects it); a fallible function was accepted for an infallible function type and its
  result misread (T22: function types now compare errors in order, and `mut`); unification never walked a
  callback's result, so `f fn(x <T>) <U>` could never infer `U`; and a global `:=` from a call returning an
  array crashed the compiler when set at startup (it kept the callee's result scope).
  **Stage 2 built: captures (D16c/D16d).** A function value is now reference-shaped (T21): a pointer to a
  closure object whose first word is code taking the object first; a named function used as a value is a shared
  static object plus an adapter (`@f.fv`/`@f.fvt`, linkonce_odr, so one function is one value across modules).
  A capture is found by a lookup that crosses the lambda's scope boundary (`scopeFindUse`); inside, it is a
  parameter-like copy - a reference gets an implicit scope (O4b) bound from what it captured, carried in the
  closure. Where a lambda lives is decided once (D16d): capturing no reference it is a temporary built where it
  lands; capturing references it lives where they do, so the existing reference rules decide returning and
  storing, and nothing new had to be proved. Function values need only outlive their target (nothing is written
  through one, so O25's exactness does not apply), and they are nullable. The evaluator carries captures in the
  value and gives each creation its own identity, as the run time does. Friction: a value `String` local cannot
  be captured (D9a) - `name String& = "bob"` can.
  **Stage 3 built: what lambdas are for.** Prelude `std/prelude/array.olang` gives every array `Any`, `All`,
  `FindIndex`, `Count`, `Map`, `Filter`, `Fold` and `Sort` (stable, allocating nothing - Go's insertion blocks
  merged by rotation, because a scratch array of references-holding-references cannot be in the right scope);
  `List` gets `Any`/`All`/`Count`/`Fold`/`Map`/`Filter`. `spawn fn() { ... }` (D16e) runs a lambda's body as a task,
  its closure held in the join block's scope, each spawn copying its captures - and P2 now covers the function
  value a task calls through, which a closure made inside the join's loop failed (it lived in the iteration's
  arena). `:=` accepts an element read (`t := a[i]`, D15 - my extension; the user: fine), which generic code needs to
  hold an element whatever it is. **Found on the way, pre-existing**: a generic callback whose parameters became
  references on instantiation (`f fn(x <T>)` with `T = String&`) was called without the hidden scope arguments
  the function it reached expected - garbage arguments, reproduced on the pre-lambda compiler with a named
  function (`len 94685499777152`); substitution now gives such a type its scopes.
- **A declared array type inherits the array methods (T29e, 2026-10-07, the user's call).** `String` (and any
  `type Nums Array<Int32>`) has every built-in array method beside its own - method lookup falls back to the
  array the type is declared over, and the receiver check accepts it. The user's rule: an inherited method is
  **never overridden** - a declared array type declaring a method of an inherited name is a compile-time error,
  not a preference. No prelude name clashed (`String.Find` vs the arrays' `FindIndex`).
- **Arrays are held by reference except where they are made (T7b, 2026-10-07, the user's rule).** An array is a
  value only where its storage is created - a value declaration, a global, an inline field, a function's result -
  and everywhere else is held through a reference, a value array handed to such a place being borrowed. It
  unifies D9a (parameters), T7a (fields, elements) and enum payloads, which already said so, with two changes:
  **a lambda borrows a captured value array** (read-only, sees later writes, lives no longer than it - the user's
  choice over copying, since a silent copy is what D9a exists to prevent; this also makes `name := "bob"`
  capturable), and **a destructured array result is taken, not copied** - it was copied element by element out
  of the hidden results local, measured in the IR. `b Array<T> = a` still copies: `b` is new storage.
- **Permission is part of a reference's type (T25b/T25c, 2026-10-07, the user's design).** `mut T&` is a writable
  reference, `T&` read-only, `mut` written before the type at every level (`Array<mut String&>`,
  `List<mut Node&>`, a result `mut Node&p`). At the top of a declaration `mut` is both the binding's and the
  reference's (`v mut Point&` is a writable global reference); locals take no `mut` (D11a kept, the user's call:
  "locals are mutable by default") - a typed local is writable unless its initializer is read-only, and `:=`
  copies the permission. Writable converts to read-only at the outermost level only; read-only never converts to
  writable - which makes "passing immut to mut" an error everywhere (the user's requirement), including through
  a borrowed result: **the pre-existing hole that started this** - `x := G.Trim(); x[0] = 'z'` changed an
  immutable global G, and `same(p P&) P&p` did the same for any struct (and the evaluator disagreed with the run
  time about it) - is closed. Shallow, as in C, so generic containers need nothing special (the user confirmed: "keep shallow"). My calls, flagged:
  a **built** result is writable (new storage only the caller holds; a borrowed `T&p` result is read-only unless
  `mut`), an array literal's elements adapt to the target's permission when all may be written, and interface
  values carry it (a `mut` method needs a `mut` receiver). How it got here: inference per variable was tried
  first and kept needing special cases (an array may be filled while its elements are read-only - `Split`,
  `ToArray`), which is why C, C++ and Rust put this in types; the user chose types. The user had also rejected
  `mut` on locals when I misread an earlier message - reverted before anything landed. Migration: ~60 corpus
  sites, nearly all constructor parameters stored into `mut` fields (now `mut` themselves) and arrays whose
  elements are written through (`Array<mut T&>`); std needed `Map`'s buckets `mut`, `ToArray`/`Split` results.
- **Static literals (T25d, 2026-10-07, the user's request).** A literal known while compiling - text, or an array
  of constants - reaching a read-only reference (a parameter without `mut`, a read-only field or element) is the
  constant data itself, `{ n, ptr @.str.N }`, with no arena allocation per evaluation; a writable target (a local,
  a `mut` parameter) still gets a copy. Plain data owned by an immutable global is `internal constant`. This was
  the user's original goal ("bss when immutable, arena when not"); it needed T25b first, because without
  read-only references something could have written the shared constant. The read-only data lives in `.rodata`,
  not BSS (BSS is zero-initialised only).
- **No tuple type: `Pair` in the prelude, and several results pass on as arguments (D8d, G10c, 2026-10-07, the
  user's call).** Closes the tuple question. The user asked whether read-only arrays settled it (they do not -
  an array has one element type) and when anonymous structs would be wanted; the answer was that every real use
  is either several results (D8c already) or two things kept together, and a named `Pair<A, B>` with `First`
  and `Second` covers the second with no new type-system feature. `std/prelude/pair.olang`; `Hash`/`Eq` exist
  for any instantiation whose parts have them, so a `Pair` is a `Map` key. **G10c** made it usable:
  a generic constructor's type arguments are inferred from its arguments (`Pair(1, s)`), by G9's own path, then
  the call retargets the instantiation's constructor; a type parameter no constructor parameter mentions keeps
  the written form, with a message saying so. **D8d, the user's request**: `f(g())` passes g's results as f's
  arguments when g's call is f's only argument (Go's rule; mixing with other arguments stays an error naming
  the fix). Lowered as one member read per result on the same call operand, which codegen and the evaluator
  evaluate once, at the first read; for O18a the parts land as their call does. Several `try` defaults stay
  out (R9a's comma ambiguity). **Found on the way, pre-existing**: checking a generic function's instantiation
  kept a pointer into the `instantiations` list, which reallocates when the body instantiates something
  else - the bindings were then read from freed memory, a compiler crash (or garbage errors) for a `Map` whose
  key type was a user struct. Four corpus types named `Pair` were renamed.
- **A function value returns from a parameter with no borrowed form (O14a, 2026-10-07, the user's call).** `fn
  id(f fn() Int32) fn() Int32 { return f }` was rejected by O14 with advice that could not be followed (a function
  type has nowhere to write `&f`). The hazard is real but only for closures: a named function's value is static,
  while a lambda's closure lives in a block (D16d). Since nothing is written through a function value, outliving
  suffices, so the return records an obligation (parameter outlives result scope) that each call discharges when
  the result lands - the existing O10b/O18a machinery, no syntax. A function with it is not usable as a value
  itself (T22a). **E13b followed (the user's request)**: `(args)` after any postfix expression calls the function
  value it gives - `id(dbl)(3)`, `fs[i](x)`, `adder(3)(4)` - lowered as an ordinary call whose target is a
  synthetic var of the callee's type, with the callee expression on the operand (`callee`) for codegen and the
  evaluator to compute; `try` before a chain covers its last call. A `(` on a new line stays a new statement.
- **Inference through satisfaction (G9c, 2026-10-07).** A concrete argument reaching a generic-interface parameter
  (`total(it mut Iterator<<T>>&)` given a `ListIter<Int32>`) binds `T` through the methods that satisfy it - before,
  an interface value had to be made first. Binding only; satisfaction is still the conversion's check. **The evaluator
  now calls through interfaces (K1)** - the method the instance's concrete type supplies, found when the call is
  reached, as for a function value; dispatch had been refused alongside `extern` with no reason of its own. The
  user's standing rule: the evaluator handles everything it can. **Found on the way, pre-existing**: a prelude
  generic type with written arguments did not parse as an expression outside the prelude (`Pair<Int32, Int64>(1,
  2)` - the parser's type-name predicate never looked at the prelude); L20a's `>`/`&`/`mut` statement ends fired
  mid-line, so `s Array<Int32>(4)` became a declaration plus a stray `(4)` reported as "expected 'test'"; and a
  top-level item that failed to parse was skipped only to the end of its first line, so every later line of a
  broken function or test was re-reported as a bad declaration (5 errors for one typo). A failed item is now
  skipped whole, and one failing at its first token says "expected 'declaration'".
- **Arrays hand out iterators; no `Iterable` interface (T35b, 2026-10-07, the user's call).** `a.Iter()` gives an
  `ArrayIter<T>` (prelude), so generic code takes `Iterator<<T>>&` and every collection - array, `String`, `List`,
  `Map` - is passed as `xs.Iter()`, with G9c inferring `T`. A nameable `Iterable` would need a method returning a
  concrete iterator to satisfy one returning an interface, boxing the iterator per call; with G9c it buys nothing.
  `for x in a` still walks an array directly.
- **Comprehensions (E27, 2026-10-07, the user's design).** `Int32[x * 2 for x in a if x > 3]` - brackets (the
  user's call, over a Scala-style `for ... yield`: they bound the expression and say "array"), the element type
  **required, to match array literals** (the user's call; inferring it is recorded as a future relaxation), `if` for
  the filter. Sources are whatever `for ... in` walks; storage is reserved up front from an array's length or a
  range's count, else starts at room for **100 and doubles** (the user's numbers). The result is an `Array<T>`
  temporary built where it lands. Lowered in the checker by S9a's own for-in lowering with "[if c] push(e)" as the
  body, carried on an `OPERATION_COMPREHENSION` operand whose statements codegen and the evaluator run - so
  globals bake (K2) and asserts decide (S18c) through it. Elements that are or hold references are not admitted
  yet (their scope would have to be the array's). Deferred: several `for` clauses, a lazy form. **Found on the way,
  pre-existing**: `return Array<T>(n)` through a reference result built the array in the dying function scope -
  a use-after-free, the E11b bug again for a different temporary; every fresh temporary now goes through one
  predicate (`cgIsFreshTemp`). And a syntax error at an expression's first token was recorded one position short,
  so it lost to an earlier alternative's failure and the message pointed at the wrong token.
- **Conditional expressions, membership, comparison chains (E28/E29/E30, 2026-10-07, the user's designs).**
  `a if c else b` - Python's form, kept despite the comprehension filter (the user's call): a comprehension's
  source and filter are `binary` rather than `expr`, so a conditional there is parenthesized, and the element takes
  one freely. Both values one type, a literal adapting; each fits the target on its own. **`x in c` / `x not in c`**
  call `c.Has(x)`, or `c.Contains(x)` when `x` has the collection's own type (the user's generalization: a
  substring is a sub-collection) - the operator picks, since olang has no overloading by argument type; the
  prelude gives arrays both (by `Eq`), and `String.Contains` became the inherited array one. `x` is evaluated first
  through a hidden local (the user asked for proper order). **The for-in clash** (`for x in m {`) is settled by
  D3/D3a, the user's acceptance after rejecting parentheses, `has` and `for if`: a for-in's names are new, so an
  existing `x` is a compile error whose message gives `for { if x not in m { break } }`, never silently membership.
  **Chains only for `<` `<=` `>` `>=`** (the user's call): `a == b == c` keeps meaning `(a == b) == c`; each operand
  evaluated once (an operand's value cached on it for the next comparison). An operand may now carry statements
  run in the enclosing block (`OPERATION_SEQ`), which the hidden local uses. `repeat` was proposed and dropped
  (the user: every loop is a `for`).
- **Parallel assignment and multi-name declarations (S4c/D12b, 2026-10-07, the user's call).** `a, b = b, a`,
  `x, y = y, x + y`, `arr[i], arr[j] = arr[j], arr[i]`: every value evaluated before any target is written (each
  held in a hidden local unless a literal), so a swap needs no temporary. `a, b := 1, 2` declares in order. Still
  no tuple: the list exists only in the statement, as `return a, b` does. The user added several names with one
  type - `x, y Int32`, `X, Y mut Int32 = 0, 0` (globals), and constructor fields `x, y mut` / `p, q Int32 = ...` /
  `r, s := ...` - parsed into one ordinary declaration per name, so each initializer sees the names before it, as
  in C. (A `:=` list in a constructor body declares fields; elsewhere it is a destructuring.)
- **"No value" is an error, not a flag (2026-10-07, the user's call).** `Map.Get` fails with the default error on
  a miss instead of returning `(V, Bool)`: `try m.Get(k) catch default 0` is the fallback, a bare call does not
  compile, so a miss can never be read as a zero value. A proposed `m.Get(k) else 0` shorthand was dropped - the
  user: it swallows one result of two while reading as though it applies to both. Iterators kept `Next() (T, Bool)`
  "since running out is not a failure" - my framing, never the user's, and reversed 2026-10-08 (S9a, below).
- **Error words are separated like enum cases; a separating comma is an error (T17/T19/C2, 2026-10-07, the user's
  call).** `error E {` then one word per line (or `error E { X }` for one), exactly as enum cases; and a comma between
  entries - an error type's words, an enum's cases, a constructor's fields - is a compile-time error saying entries
  go one per line, reported and read past so it stays one error. Several names sharing a declaration (`x, y mut`,
  D12b) are not entries and keep their commas. 13 files migrated by script.
- **`#` is a line comment, `##` a block comment (L4/L4a, 2026-10-07, the user's call).** `## ... ##` runs to the next
  `##`, no nesting, a line break for L18 only where it spans one, unclosed is an error. Every comment had been
  written `##` by convention (a single `#` already began a line comment), so 2,046 comments were rewritten to `#`
  by a script that skips string and character literals, and the `# check:` / `# flags:` headers with them. The user
  chose `##` over the unused `###`, which would have needed no migration.
- **Pending, deferred by the user (2026-10-07): default methods** (constraints and operators since built - G19, E31). Recorded,
  not decided - all since settled: default methods as M19e (2026-10-08), then reworked onto traits (T30). *Default methods*: chosen to be reachable only through the interface (an interface value or a
  constrained `<T>`), never as a concrete type's own methods - which M19a's interface-receiver methods already are.
  On top of that the user wants `default` to mark an *optional* interface member a type may supply itself (an
  override, e.g. an O(1) `List.Count`) or leave to the default body; open are the rule for a same-named method with
  another signature (error recommended), and whether the body sits inside the interface (recommended). *Constraints*
  (`<T Shape>`): worth it mostly for errors at the call and visible requirements, since a generic body is already
  checked per instantiation; recommended as interfaces doubling as constraints rather than a new keyword (`group` is
  wrong by group theory). *Operator overloading* - **decided later the same day, not built**: operators are methods named by their
  symbol, `fn (a Vec2) +(b Vec2) Vec2`, reached only through the operator. Declarable: `+ - * / %`, unary `-`, `<`
  (`> <= >=` derived from it) and `@` (a new operator with no built-in meaning - matrix multiplication, say). Not
  declarable: `==`/`!=` (structural / identity stay the language's) and `$` (E11a stands: nothing overrides it). No built-in on the left
  (`2.0 * v`); several right-hand types go through one generic method with a constraint and `match <T>`, so
  constraints come first. Any value result, built results following the ordinary scope rules. *Constraints* were
  decided too (interfaces doubling as constraints, `<T Iterator<Int32>>`) - **built as G19** (next entry).
- **Constraints: interfaces double as constraints on type variables (G19, 2026-10-07, the user's call).**
  `fn area(x <T Shape>)`, `fn drain(it mut <I Iterator<<E>>>) <E>`, `type Map<K Hashable<<K>>, V>`. Checked where the
  variable is bound - inference at a call, written type arguments, a constructor's inferred ones - with the error
  there, naming the missing method; a variable named only in a constraint is inferred through it (G9c) and counts for
  G4. One construct for both of Rust's uses: as a constraint, code compiled per type with direct calls; as a
  reference type, a value dispatched at run time (the user: "why would we ever want Iterator without generics" -
  answered: mixing types at run time). Satisfaction is looser than for an interface value in one respect: a parameter
  may differ in reference-shape, since a constrained call is a direct call where E12 borrows (`Pair`'s `Eq(q Pair&)`
  meets `Eq(o <T>)`); a value's table needs exact signatures. The prelude gained `Equatable<T>` and `Hashable<T>`, and
  `Has`/`Contains` and `Map`'s key are constrained by them - so `Has` on an array of a type without `Eq` fails at the
  call, not inside the prelude, which is the case that started the discussion. No evaluator change: constraints are
  resolved before anything runs.
- **Operators call methods named for them (E31, 2026-10-07, the user's design).** `a + b` calls `Plus` - and `Minus`,
  `Mul`, `Div`, `Rem`, `MatMul` (`@`, no built-in meaning), `Neg` (unary `-`), `Less` (`<`, with `> <= >=` derived and
  chaining), and for indexing `At` (`x[i]`), `SetAt` (`x[i] = v`, `x[i] op= v`) and `Slice` (`x[lo:hi]`, an absent end
  meaning `Len()`). A lowercase first letter (`plus`) is the module's private operator; declaring both spellings is
  an error. Ordinary methods otherwise, callable by name. Not declarable: `==`/`!=`, `$`. This replaced, the same
  day, a first version where the method was named by the symbol itself (`fn (a V) +(b V) V`): the user noticed
  those were private across modules (the hidden name was not capitalized) and that the compiler already talks to
  types through named methods (`Next`, `Iter`, `Has`, `Contains`), so names make visibility M6's rule and the design
  one mechanism. `Mul` rather than `Times` (the user). Built on: no built-in type on the left; several right-hand
  types through one generic method with a constraint (G19); works in generic code, interface values, compile-time
  evaluation. Found on the way: a slice of a reference field took the slot's empty scope tag as this function's, so
  `return g.cells[lo:hi]` was rejected - O20's container walk now applies to slices too.
- **Interface methods reach every satisfying type (M19e, 2026-10-07, the user's call).** A method declared on an
  interface (M19a) is callable on any value whose type satisfies it, implicitly, when the type has no method of
  its own by that name - so `Iterator<T>` in the prelude declares `Any`/`All`/`Count`/`Fold` once and
  `l.Iter().Count(f)`, `a.Iter().Any(f)`, `m.Iter().Fold(...)` all work, with `List`'s own copies removed (`Map` and
  `Filter` stay on `List`: they build a `List`, which the prelude cannot name). Interfaces searched: the calling
  module's, its imports', the prelude's; two that both offer the name is an error at the call. This revised the
  user's earlier (a) ("defaults only through the interface"); declared conformance (`satisfies`), naming the
  interface at the call (`x.Iterator.Count()`) and `:` as the module separator were weighed - the user found them
  confusing for now and deferred `:` and the naming as open questions. Called this way the method runs through the
  interface's dispatch table; compiling it per concrete type is possible later.
- **`List` is part of the prelude (2026-10-07, the user's call).** `std/list` moved to `std/prelude/list.olang`, so
  `List<T>` is named bare everywhere and `Iterator<T>` gained `Map` and `Filter` (they build a `List`); `List` keeps
  `Push`, `Len`, `Iter`, `ToArray` and `Has` (for `x in l`). Prelude files name each other's types, so every prelude
  file's type names are now scanned before any is parsed. The `twolists` check (a std module beside a same-named
  local file) uses `std/map` instead.
- **Loops over iterators run at hand-loop speed (2026-10-07; the user: "a loop has to be fast always").** Two
  changes. (1) An interface's method called on a concrete value (M19e) is instantiated for that value's type - its
  receiver *is* the concrete type in the copy, so `Next()` inside is a direct call; the interface-value path stays
  for values mixed at run time. (2) The real blocker, found by reading the optimized IR: a function returning an
  aggregate (several results, an error union, a struct) emitted a `ret` at each return, so once inlined the result
  was an aggregate `phi`, and the loop's exit test extracted its `Bool` from that - which LLVM cannot thread, so the
  loop never vectorized (C, returning through memory, did). Every return now stores to one slot and branches to a
  single `ret.common` exit, as clang does; SROA then splits the slot into scalar phis. Measured on 20M elements x 20:
  `a.Iter().Count(f)` 0.29s -> 0.08s, through an `Iterator<Int32>&` value 0.20s -> 0.07s, the hand loop 0.08s.
  Binary size was already minimal: LTO drops every prelude function a program does not reach (an empty program is
  15.8 KB, one using `List` and text 16.5 KB), so "import only what is used" needed nothing for the output.
- **Defaults override through interface values too (M19e, 2026-10-07, the user's call).** A method declared on an
  interface is its default; a type's own method of that name and signature overrides it on a direct call (as
  before) and now also through an interface value: each dispatch table carries the interface's defaults after its
  identity entry, filled with the type's override or the default compiled for it, and a default called on an
  interface value dispatches through that entry. A default generic in its own types (`Fold`'s `U`) cannot be one
  table entry and stays static. The user asked whether interfaces therefore need whole-program builds: no - a table
  belongs to one (type, interface) pair and is emitted where the conversion is written; only a switch-dispatch
  speedup would need the whole program.
- **Bitwise operators and increments overloadable too (E31, 2026-10-07, the user's call).** `BitAnd`, `BitOr`, `BitXor`,
  `ShiftLeft`, `ShiftRight`, `BitNot` (and their `op=`); `x++`/`x--` call `Inc`/`Dec`, or are derived as `x = x + 1`
  through `Plus` when the type declares no `Inc`; and **increments are statements only (S3a, the user: "we are not
  supposed to be able to use ++ and -- in expressions")** - never an operand, argument or initializer, for any type,
  so prefix and postfix mean the same. Nothing in the corpus or std used one inside an expression (the user: derived, but overridable "if the type doesn't play nice
  with ones"). Not overloadable, confirmed by the user: `==`/`!=`, `$`, `and`/`or`/`not`, `=`, `.`, `try`, `match`.
  `for ... in` over a type with `At`/`Len`, and a callable struct (`f(x)`), are open for discussion. (`==`/`!=` and
  `$` became overridable after all, 2026-10-08 - E10a/E11c below.)
- **`Call`, and fallible indexing (E31, 2026-10-07, the user's call).** `f(x)` on a value whose type declares `Call`
  calls it - a counter `next()`, a layer `layer(x)` - and such a value is accepted where a function value is
  expected when `Call` matches the function type exactly, through a small adapter object holding the instance (the
  instance itself, so state changes are visible); generic callbacks infer their variables from `Call`'s signature.
  The user saw where it fits after I first argued it was only notation (a lambda can forward to a stateful struct,
  but `next()` is the honest spelling for a callable thing). `At`, `SetAt`, `Slice` and `Call` may declare errors
  (`try x[i]`, `try x[lo:hi]`, `try f(x)`); a fallible `SetAt` is called by name, since `x[i] = v` has no `try`.
  **(Superseded the same day by E31a, below: only `Call` may fail; the others have Try forms.)**
  **Found on the way, pre-existing**: `try f() catch default Int32[9]` crashed the compiler for any fallible
  function returning an array - the slot's type still named the callee's result scope; it is now built where the
  call's result lands.
- **Enum payloads are whole words; switch dispatch measured and deferred (T17, 2026-10-07).** The user asked
  whether switch dispatch for interface values was worth it (and rightly objected to a design needing a separate
  mode or recompiling everything - it would be generated in the root object, as instantiations are). Measured on
  100M calls over a mixed collection: olang's interface tables already match C's tables (0.17s vs 0.16s
  predictable, 0.46s vs 0.49s random), and C's switch beats tables 3x / 1.35x - but olang's enum `match`, the
  switch it would generate, was *slower* than its tables (0.27s / 0.51s): the payload was `[K x i8]`, copied a byte
  at a time, which also kept the small function taking it from being inlined. Holding it as `[K/8 x i64]` took the
  enum match to 0.06s / 0.39s against C's 0.05s / 0.36s. Rounding the payload to whole words also fixed a
  pre-existing **heap corruption**: a payload smaller than a word was sized at 12 bytes where LLVM strides 16, so an
  array of such enums was allocated short (the old compiler aborts on the corpus test). Switch dispatch for interfaces
  was then measured at 3/8/16/32 types (it wins only with very few types, or a predictable order; from about eight
  in random order tables are level or ahead), a cutoff version (at most 4 types) begun - and **dropped by the user**:
  "it gains very little and causes a lot of problems". Interface calls stay table calls; a closed set of types
  written as an enum is the static, fast choice.
- **Indexable types walk like arrays; `Len` is a protocol method (S9d, E31, 2026-10-07, the user's calls).**
  `for x in c` over a type with `At` and `Len` is a counted loop (`Len()` read every iteration, elements copied,
  the collection borrowed) - unless the type has its own `Next` or `Iter`, which win: the user caught that `List`,
  with `Len` and an `At` it might gain, is walked far better by its iterator. The prelude's `Indexable<T>` (At + Len)
  derives `Iter()` as its default, giving the iterator helpers to any indexable type. `Len` joins `Has`, `At` and
  the rest: on arrays it is compiler-supplied (a load of the length word), on user types an ordinary method the
  compiler recognises (slicing's default end, the loop), shaped `Len() Int64`, lowercase `len` module-private.
  Iterators stay - they walk what has no positions (List, Map, trees) and what has no length (files, generators).
- **Checked forms, `try` on stores, and `for x in try c` (E31a/R21/S9e, 2026-10-07, the user's calls).** The user
  asked whether every `At` would end up fallible; it need not - indexing is unchecked by default (E16) - but a type
  then had to choose between fast `c[i]` and checked `try c[i]`, where an array has both. So an operation that can
  fail has a **checked form named with `Try`** (`TryAt`, `TrySetAt`, `TrySlice`, `TryDiv`, `TryPlus`, ... - the name
  `TryAt` over `CheckedAt` was the user's), declaring its errors, which `try` calls; the plain forms may no longer fail
  (only `Call` may, standing for a function). `TryAt`/`TrySlice`/`TrySetAt` are **derived** from the plain form and
  `Len` when not declared (an `OPERATION_BOUNDS` check failing with `OUT_OF_BOUNDS`), so `try c[i]` on a user type
  checks exactly as on an array. `try` reaches through operator calls as through built-in operations, collecting a
  Try form's errors into the try's set (several fallible ones in one expression work: each dispatches to the root's
  clauses, in codegen and the evaluator). **R21**: `try x[i] = v`, `try x[i] += v`, `try x++` check the statement - the
  user's "SetAt, Slice, any that can reasonably fail" needed somewhere to write `try` on a store; it is an
  `OPERATION_SEQ` root whose clauses are a statement's (falling through to `cgEndLbl`). **S9e**: the user's real
  problem was not how `try` binds ("I don't mind writing several trys") but that a loop calls methods by itself with
  nowhere to write `try`; `for x in try c { } catch E { }` covers the loop's own calls (source, `Iter`, `Next`,
  `TryAt`), an error ending the loop. `Next` may now fail (an I/O iterator), satisfying by shape rather than
  `Iterator<T>`. Lowered with each fallible call tried by the loop's clauses plus an appended `break`, inside a
  one-shot loop, so leaving unwinds scopes the ordinary way; `break`/`continue` written directly in such a clause is
  an error. Rejected along the way: a wide `try` (Swift's), or a separate `checked` keyword - both answered a binding
  question the user did not have. **Found on the way, pre-existing**: any unknown character in a function body hung
  the parser (the `}` left after a skipped item was never consumed at the top level); `x[i] = v` on a type with
  `SetAt` and no `At` crashed the compiler; the evaluator did not let a tried index's own clauses take a check failing
  inside its index (`try a[b[i]]`), disagreeing with the run time; and a slice with its end left out evaluated its
  base twice.
- **`try (x in c)` and `try T[e for x in c]` (E29/S9e, 2026-10-07, the user's call: "build both").** The user asked
  where else `try` had nowhere to go; the two answers were membership, whose `Has`/`Contains` may now fail (no
  `TryHas` - a question that can fail always can, as `Call`), and comprehensions, which make a loop's implicit calls
  but have no body to hang clauses on. `try` before the comprehension checks it as E15a checks any expression -
  arithmetic in the element included, which the user should know (`catch TxErr + BuiltinError`). The array element
  reads the lowering makes are `noCheck`. Codegen needed a real fix: an error from inside the comprehension's loop
  jumped to the try's clause without closing the loop's block scopes, so a clause now closes the scopes opened since
  its try was emitted (recorded per operand: `cgSlots`/`cgDepth`) and runs at the try's depth. **Found on the way**:
  a clause naming an error type its call cannot produce crashed codegen (`errorTypeOrdinal`) - reachable since E31a,
  whenever one try covers a Try form and a built-in check.
- **`is` and `as`; type cases; interface widening (E32/E32a/S13c, 2026-10-07, the user's calls).** `x is T`,
  `x as T`, and `match s { case c Circle& { } ... }` on an interface value; extended to enums at the user's request
  (`x is Shape.Circle`, `x as Shape.Rect` giving the payload - one field, or several as several results). `as` that
  does not hold aborts like a slice, or under `try` fails with `INVALID`; `as T&` is the very instance, `as T` a copy.
  The user preferred `as` to a `Cast` call once the collisions were laid out: `Circle(s)` is a constructor call, a
  marker would have to sit in front of a call (`Circle&(s)`, which is the scope-argument syntax), and it would be the
  only conversion that can fail. **Mechanism (my call)**: every dispatch table now starts with a type-identity word
  (`@olang.typeid.T`, `linkonce_odr`), the interface value pointing just past it; the program's root object (main or
  tests - never a `-c` object, whose view of the program is partial) defines one lookup per interface converted to,
  over every concrete type the checker saw become an interface value (`SemanticConvSources`) - no run-time hashing,
  no allocation, and no extra rebuilding, since the root is rebuilt anyway (B3d). The pairs' defaults (M19e) are
  compiled as sources and targets are first seen, codegen being unable to instantiate. Widening (an interface value
  to an interface its own covers) is implicit and uses the same lookup. **Found on the way**: a widening that the
  checker had accepted was silently stored as the wider interface's pair, so the narrower one dispatched through the
  wrong table slots - the store path (`cgValueForTarget`) had no case for it.
  **Pending (the user)**: a general talk about casting and unifying the conversion syntax.
- **`==` calls a declared `Eq`, `$` a declared `Str`; identity is `same(a, b)` (E10/E10a/E11c, 2026-10-08, the
  user's call: "yes do the overrides").** Reverses "`==`/`!=` and `$` are not declarable". The question came from the
  casting talk: `Eq` was an ordinary method only `in`, `Has` and `Map` called, so a type's `==` and its membership
  could disagree. Now a type declaring `Eq` (one parameter of its own type, `T` or `T&`, a `Bool`, nothing `mut`) is
  compared by it **at every depth** - as itself, as a field, an element, an enum payload, behind a reference - and
  `match`, `x in c` and `Map` keys all go through `==`. A reference to such a type compares its referents (a null equals
  only a null; `Eq` never sees one); a reference to a type with no `Eq` is still identity. **`same(a, b)`** is identity
  whatever `Eq` says (my spelling, flagged), a builtin like `atomicLoad`. `String` declares `Eq`, so `s == "cm"`
  compares text. The prelude's `Equatable` and the primitives' `Eq` methods went; `Hashable` keeps only `Hash`.
  **`Str`** (no parameters, a `String`, always capitalized - a rendering belongs to the type, not to one module's
  view of it) takes over `$` for its type wherever the value sits, and **must be K1a-evaluable**: `$` calls it as often
  as building the text needs (measure, write, or never when the text is computed while compiling), which is only
  unobservable if it has no effect - the same argument that settled zero values. A mis-shaped `Eq`/`Str` is an error at
  its declaration and is then ignored by `==`/`$`, so it is one error rather than two.
  **E10b - the compiler supplies `Hash`** for a struct, enum or array value whose type declares neither `Hash` nor
  `Eq` and whose parts all hash (combined in order, an enum's case first; arrays through the prelude's
  `HashElements`), so any plain struct or enum is a `Map` key with nothing written. A type declaring `Eq` must declare
  `Hash` (only it can know what agrees); a float has none (`-0.0 == 0.0`, NaN); a reference part hashes only where
  `==` compares what it names, since an address is not a value and the evaluator could not reproduce it. **`Hash`
  never sees a null** - a null reference hashes to 0, as `Eq` never sees one (my call, flagged). Supplied `Hash`
  meets constraints and direct calls; an interface value still needs a declared one (a table needs a function).
- **Errors are errors: `Next()` fails with `Exhausted`, and nothing returns a value beside a `Bool` (S9a/T35b,
  2026-10-08, the user: "make sure you use errors and don't do the bool, value pattern. Errors are errors").**
  `Iterator<T>` is `mut Next() <T> ? Exhausted`, with `error Exhausted { END }` in the prelude (name mine; kept by the user).
  `for ... in` and comprehensions take `Exhausted` themselves - the loop's own first clause, ending in `break` - so a
  plain loop needs no `try`, and under `in try` it is never a clause's to name; code calling `Next()` directly writes
  `v := try it.Next() catch Exhausted { break }`. An iterator that can also fail for real declares both
  (`? TxErr + Exhausted`). The private helpers that answered "is there one" with a flag went too (`List.elementAt`,
  `Map.entryAt`), and with them every `none <T>` placeholder value - which also takes the zero-value requirement off
  iteration (the survey's one generic-code limit). **The one mechanism it needed**: a comprehension under `try`
  calls `Next` inside the try's expression, so that call takes `Exhausted` with its own clause and hands any other
  error to the enclosing `try` - codegen and the evaluator both run a call's own clauses first, then its `checkRoot`'s;
  a path past both that cannot happen is `unreachable`, not a propagation (which in a function declaring no errors was
  invalid IR). Speed unchanged: an iterator helper, the same through an interface value, and a hand loop all 0.07s
  on 20M x 20.
- **Numbers flow toward their base (T6b, 2026-10-08, stage 2 of the casting plan; the user: "only the lossless
  derivations are allowed", "Int64 is the base of Int32", "this flow can be implicit (should be)", and that an
  operator "makes sense if it produces an Int64").** Two families, `Byte` -> `Int32` -> `Int64` and `Float32` ->
  `Float64`; a value flows implicitly toward the base, and a declared type flows into its base and on. This
  reverses T6's "no implicit conversion between numeric types". Nothing flows narrower, across families, or into a
  declared type (its constructor, T29/T29d). Two numbers in an operator **meet** when one flows into the other's
  type, at the other's: `Int32 + Int64` is `Int64`, `Meters + Int32` is `Int32`, `Meters < Feet` and `Int32 < Float64`
  are errors. Implemented as one rule in the fit check (`NumericFlows`) that rewrites the operand **in place** into
  the widening conversion, so every fit site - initializer, assignment, argument, return, compound assignment - gets
  it with no site of its own, plus the same in `OperandBinary`; codegen already lowered the conversions
  (zext for `Byte`). **Generic inference followed (my extension; confirmed by the user)**: a variable a number bound through a
  bare `<T>` widens to a later, wider argument of its family (`max(i32, i64)` is `max` at `Int64`, either order),
  never one a receiver fixed (G9b). New messages name T6b and say to write `T(x)`. **The corpus's now-redundant
  widening conversions are gone** (the user: "fix the corpus widening") - 32 in `shared.olang` and std, found by a
  temporary report in the fit check and the operator meeting, and proven to change nothing: the emitted IR is
  identical to before. Kept where the conversion is the point (tests of conversion itself, of `extends`, of implicit
  against explicit), where it stops an operator method calling itself (`OpMoney.plus`), or where dropping one of two
  would change an operation's width. **Found on the way, pre-existing**: a widened `try (...)` value lost its checks -
  `return try (a + b) catch default 0` into an `I32` emitted a failing check as `unreachable`, since the widening moved
  the try to a new node and its checks named the old one; they are pointed at the new one now. And **narrowing stays
  unchecked** (the user: "1 for sure.
  It's not even a question"): `Int32(i64)` wraps, a float out of range stays undefined (E26a), and `try Int32(x)` is
  the opt-in check (R20) - the standing rule that a per-operation run-time check never belongs in the language.
- **`extends`; text is a `String` by type (T29f/T29c, 2026-10-08, stage 3 of the casting plan, the user: "use
  extend to get methods, otherwise you have to declare them all yourself", keyword `extends`).** `type Meters extends
  Int32`, `type String extends Array<Byte>`: the declared type inherits its base's methods (T29e's array methods, the
  prelude's number methods - an `ExId extends Int64` has `Hash`) and its built-in operators, which give the declared
  type. Without it the type inherits nothing it does not declare: it still reads as its base (T6b flow - comparisons,
  and beside a base value or literal it *is* the base, `p + 1` an `Int32`), but `+ - * / % & | ^ << >>`, unary `-`/`~`
  and `++`/`--` on one or two of it are an error naming `extends` or the operator method. T29e was unconditional and
  is now gated on the keyword. **My calls, flagged**: an inherited array method whose declared result is its
  receiver's own type gives the declared type (`String.Filter` is a `String`), but a number's methods keep their
  results (`Int64.Hash` would otherwise make a hash a `Meters`); an array's own operations (index, slice, `Len`,
  for-in, `$`) belong to it with or without `extends`, being what the value is. `extends` on a struct/enum/interface/
  function type is an error. Text: a variable only text reaches binds `String` (G9a said so; the code bound
  `Array<Byte>`, so `id("hi").Trim()` failed). Corpus: eight types gained `extends`. **Found on the way, from stage
  1**: `s.Trim() == "abc"` on a local `String` was rejected - the Eq rewrite held the borrowed result in a hidden
  local declared by hand, whose scope did not match it (O25); a held reference is now declared exactly as `:=`
  would. **Part 3, a literal runs the constructor (T29d, the user: "a literal initializing a declared type calls its
  ctor implicitly")**: `p Percent = 150` is `Percent(150)`, run while compiling once the program has checked
  (before globals bake and asserts decide, which may read the literal) - the literal then stands for the result
  (`PctLit Pct = 180` is `global i32 100`), so nothing runs at run time. A constructor that fails on the literal, or
  cannot be evaluated (an effect), is a compile error at the literal - my wording of "failure = compile error, no
  try". Arithmetic's literals still adapt without running it (`p + 1` on an extending `Percent`).
- **A constructor makes its type's zero value (D13c, 2026-10-08, stage 4 of the casting plan; the user: "I like the
  zeroes constructor idea", then on effects "that resolves it", "use declared parameters yes", "not having a zero
  value means you have to initialize manually, no uninitialized values should exist").** A declaration with no
  initializer, a constructor field with none, and `Array<T>(n)` with no fill take the constructor called on each
  parameter's default, else that parameter's zero (nested constructors recursively; `OPERATION_ZERO` - zero bits -
  for the rest). Evaluated while compiling once the program has checked: fails or cannot be evaluated (an effect -
  the user's counter/global/file-handle worry) -> no zero value, and the declaration is an error naming why;
  evaluates -> pure, so the run count is unobservable: all zero bits (`CtIsZero`) leaves today's memset/BSS with
  nothing run (the corpus's every case), otherwise the call stays (constant-folded, or one call per declaration
  with its own storage where the value holds references). **My call, flagged**: `Array<T>(n)` of a type whose zero
  value holds references is an error rather than a per-element constructor loop - the fill copies one value, so the
  elements would share it. Also flagged: a generic placeholder (`x <T>` with no value) of such a type errors inside
  the generic, not at the instantiation. Nothing in the language leaves storage uninitialized any more (D15b's
  `noZeroFill` was already never set).
- **The numeric primitives are `I8 I16 I32 I64`, `U8 U16 U32 U64`, `F16 BF16 F32 F64` (T4/T5/T6b, 2026-10-08, the
  user's call).** Renamed from `Byte`/`Int32`/`Int64`/`Float32`/`Float64` (U8 replaces Byte); `Bool` kept. Everything
  older in this record uses the old names. The user's reasons: brevity, and a family that scales (they also chose
  F16 and BF16 "for neural nets"; F8 goes in the prelude as `F8E4M3`/`F8E5M2` storage types; complex numbers in the
  prelude by component width - `Complex32` is two F32s; no Unicode `Char` - an 8-bit `Char` is next, and Utf8/Utf32
  types later). **T6b became a lattice**: wider within a signedness, unsigned into a strictly wider signed (`U8 + I32`
  is still `I32`), F16 and BF16 into F32 into F64 but not into each other; `U8 + I8` is an error, not `I16` (my call,
  then the user's: "OK" - the meeting rule unchanged). **One table** (`PrimInfo`: name, bits, kind, LLVM type) now answers every
  question about a primitive, replacing the scattered `Byte`-means-unsigned special cases in all three passes;
  unsigned semantics (udiv/urem/ult/lshr/zext/uitofp/fptoui) follow the kind. F16/BF16 are LLVM `half`/`bfloat`;
  their constants (`0xH`/`0xR`) and the evaluator's rounding share one nearest-even routine (`MinifloatFrom`), and
  `try` conversion checks compare integers in i128 so every signedness/width pair is exact. A literal above `I64`'s
  maximum cannot be written (`U64(0) - 1`). Max (`max(i32, i64)` at `I64`) was confirmed by the user, and `Exhausted`
  kept. The user's untracked work was not migrated.
- **`Char` and text as `Char`s (T29h, 2026-10-08, the user: "the case for a char type is proper printing amongst
  other Char stuff. I think we put Char in the prelude too and String holds Chars not U8s", 8-bit, option 1).**
  `type Char extends U8` in the prelude, with ASCII `IsDigit/IsLower/IsUpper/IsLetter/IsSpace/ToUpper/ToLower`;
  `'a'` is a `Char`; `String extends Array<Char>`; `$` renders a `Char` as a character and a `U8` as a number (an
  `Array<U8>` as `U8[104, 105]`). The bridge to bytes is one rule (my design; the user: OK): an array of a declared number
  with no constructor flows into an array of its base - view or copy, same bits, nothing to bypass - so text reaches
  `Array<U8>` I/O untouched, and `String(bytes)` (any same-representation array, a fixed `U8[...]` literal
  included) still copies nothing. Corpus: seven tests that held text in `U8`/`Array<U8>` became `Char`/`String`.
  Unicode stays a library (Utf8/Utf32 types later, the user's plan).
- **Complex numbers in the prelude (2026-10-08, the user's call: "Do complex in the prelude", "C32 is two F32, C16 is
  two F16", then "maybe do just C16 C32 C64").** `C16/C32/C64` named by part width, as the F types are, plain structs with E31 operator methods, generated from one
  template since there are no type aliases; `==` and `$` are the struct defaults. First built
  spelled out (Complex16/32/64), my reading of an earlier message; the short names are the user's.
- **8-bit floats in the prelude: `F8E4M3`, `F8E5M2` (2026-10-08, the user: "do F8s in the prelude as you proposed").**
  Not primitives: LLVM has no 8-bit float and two formats compete, so both are structs holding `Bits` (a mutable
  `U8`, so raw bits can be set), built from an `F64` (`F8E4M3(x)`, nearest-even) and read with `F64()`, rendering
  as their value through `Str`. Encoding is arithmetic in olang (no bit reinterpretation exists), checked against the
  OCP bit patterns. Both formats **saturate** (the user: "do what the industry does" - the hardware's satfinite
  conversion, which FP8 training uses; framework casts default to NaN/inf instead); `==` compares values as IEEE does (the user:
  "compare by value, follow the standard") - NaN equals nothing, -0 equals 0.
- **Lock file (M23b, 2026-10-08, the user: "do lock files"; my design from the earlier proposal).** `olang.lock` beside
  the root module, `HOST/OWNER/REPO[@REF] COMMIT` per line, sorted. Locked: that commit, fetched by hash (a shallow
  fetch, else a full clone and checkout) when not cached, verified with `rev-parse`. Unlocked: the ref's head is
  cloned, its commit read and written in. The cache is now keyed by commit, so two projects locking different commits
  of one repository share nothing that could conflict. Updating one repository is deleting its line. The
  remote check now moves the branch under a locked build, clears the cache and refetches the locked commit, and
  updates by deleting a line - shown by remote.olang's assert, which compile-time evaluation then proves false.
  **`-update` (M23c, the user: "yes add the update flag")** is a modifier like `-race`: every remote repository the
  build reaches is resolved as if unlocked - once per compilation, however many of its modules are imported - and its
  line rewritten, reporting `updated KEY to NEW (was OLD)` or `KEY is already at C`; a line that does not change is
  not rewritten. **My calls, flagged**: it updates everything the build reaches (one repository alone is still
  deleting its line), and lines for repositories the build does not reach are kept rather than pruned, since several
  programs in one directory share one lock file. The lock's header comment and the locked-fetch failure now name it.
- **Default methods settled (M19e, 2026-10-08, the user: "do a)", "outside", "make it an error").** One kind: every
  method declared with an interface receiver is a default any satisfying type may override (no fixed helpers, no
  `default` keyword); bodies stay outside the interface. A same-named method with another signature, and an override
  of a default generic in its own types (Fold's U, which has no table slot), are errors at the type's method, checked
  against the interfaces the type's module sees (`checkDefaultClashes`) - the first had crashed LLVM with a duplicate
  symbol. **Two pre-existing bugs found**: an override of a GENERIC interface's default never ran through an
  interface value (the default was looked up by its instantiated, decorated name `Plain$I32`, and the dispatch was
  matched by var pointer, which two instantiations of one default never share); and a struct temporary converted to
  an interface value was pointed at in the converting function's stack frame - `IndexIter<I32>(IxHundreds())`
  returned from a method read freed stack (the S9d test, once its Iter had the right signature). Fixed: copied into the
  target's scope, as a scalar temporary already was.
- **Interfaces removed; traits are constraints only (T30-T35, G19, M19e, 2026-10-08, the user: "rename interfaces traits
  and make them only work as constraints. remove interfaces completely. make it clean").** Supersedes every interface
  entry above (T30-T35 as written there, E12d, T33, M19a, E32/E32a and S13c on interfaces, interface `$`/`==`/`same`).
  The user's reason: run-time interface values were where the bugs clustered (tables, default slots, boxing, scopes,
  type ids); generics with constraints cover algorithms, enums cover a closed set of types (and checked faster than
  tables), function values cover single-method callbacks. What is lost, stated to the user: an open set of types
  mixed at run time (a struct of function values is the replacement; a generated `Trait.From(x)` could come later).
  `trait` replaces `interface`; a trait written anywhere but a constraint is an error (`TRAIT_NOT_A_TYPE`).
  **Defaults** are declared on a constrained type variable - `fn (it mut <I Iterator<<T>>>&) Count(...)` - in the
  trait's module, and a call on a satisfying value is an ordinary generic call; the type's own method wins, from
  generic code too, and a same-named method with another signature is an error. The "generic default cannot be
  overridden" error of earlier today went with the tables it existed for. Needed on the way: `<T>&` on a type variable
  (G11a, an aggregate required where bound) with its implicit parameter scope (O4b) and its own permission (T25b);
  constraint-bound variables bound before lambdas are typed. **Removed**: dispatch tables, thunks, type ids,
  conversion lookups, interface boxing/widening/identity/rendering, interface `is`/`as` and type cases (enum ones
  kept), the evaluator's dispatch, the strict-vs-loose satisfaction split, trait methods' receiver scope.
  **Found on the way, pre-existing**: a `match` binding of a reference out of an enum payload carried the case
  signature's scope variable and crashed codegen (now read-only-scoped, as a borrowed field is); a `<T>&` field's
  `&of` was lost on substitution. Corpus: the interface section rewritten as traits + an enum for mixed collections;
  Base/runner's sealed trait; seven interface-value tests removed. Iterator defaults measured at hand-loop speed.
- **Every flag is one character (B1, 2026-10-08, the user: "I want the flags to be one character -b -c -r -u etc not
  entire words").** `-race` is `-r`, `-debug` is `-d`, `-update` is `-u`; `-b`, `-c`, `-t` and `-D` were already one.
  `-d` and `-D` differ only in case - debug, and a define taking `Name=value` - kept so since the user's list follows
  first letters. An argument beginning with `-` that is no flag is an error naming every flag, so an old long spelling
  is reported rather than read as a file name (the user removed retired-spelling diagnostics before, and this is not
  one: it names no old spelling). Entries above that predate this still write the long forms.
- **`-i` interprets a program (B3e, 2026-10-08, the user: "Do -i for the interpreter"; stage 1, the user's choice of
  "commit as stage 1").** No interpreter existed; the compile-time evaluator is one, so `-i` analyzes the program as
  `-b` does and runs `main` through it with K1's refused effects performed (`ctRun`): globals initialized imports
  first and written in place, an `extern` called in the compiler's own process through **libffi** (found with
  `dlsym`, libm opened on first need; an array argument is a buffer filled from the caller's own elements and read
  back after, so `read` works - fitting it to the by-value parameter copied it and lost the bytes, found by
  `os.ReadFile`), `done`/`fail` exit 0/1, guaranteed checks abort with the runtime's own messages, atomics are plain,
  no step budget, recursion to 100,000 on a 1GB-reserved thread. What the built program leaves undefined stops with
  `olang -i: FILE:LINE: why`, status 1 - a bounds and null checker for free. The compiler now links `-lffi -ldl`.
  **Not yet, flagged and measured**: tasks and destructors stop with a message (a destructor's instance has to be
  closed with the scope it lands in, which is codegen's whole landing logic again - so `runner.olang` stops at
  `shared.olang`'s `KtFromDropped`, whose initializer's callee destructs at its return); and the evaluator never
  frees - a value is a 496-byte heap object embedding its `struct type`, about 15 per simple loop iteration, so 100k
  iterations take 1.5s and 630MB (1M took 71s and 8.3GB before three redundant copies were removed). Reclaiming is
  either a per-statement temporary arena with every retaining site copying out (sites enumerated) or a redesign with
  compact values and scope-mirroring freeing, which would also give destructors - left for the user to choose.
  Checked by a fixture program built and interpreted with identical output, status and unhandled-error report, plus
  an undefined index, a task and `unreachable`.
- **Diagnostics read as what to write (2026-10-08, the user: "make the errors on the untracked program make sense to
  me").** Errors print in source order (by file, then line - each error and its notes one record, written at the end,
  at exit or on a crash), not in the order passes find them. An unknown type or name is named and gets the nearest
  real one (`Int32` -> `I32` by letter and width, else edit distance over types, the prelude and globals), and the
  stand-in type it recovers with fits anything, so one misspelling is one error. Parser hints replace "unexpected X
  expected Y" where the intent is clear: `name T(args)` shows both spellings with `=` and `:=`, built from the line
  itself; `?error` says `?` alone is the default error. A missing `main` is not reported when a syntax error may
  have hidden it. Not a language change - no rule moved.
- **No labeled `break`/`continue` (2026-10-08, the user's call).** Proposed for the self-hosted compiler's nested
  loops, spelled by the loop's variable (`break line`); declined - the user does not like them, and some loops have
  no variable to name. `break`/`continue` act on the innermost loop only (S11); leaving an outer loop is a flag or a
  function with `return`.
- **A float literal's own type is `F64` (T6a, 2026-10-08, the user: "do the float default to F64").** It was `F32`,
  so `x := 0.1` held the float nearest 0.1 (0.10000000149011612 once widened), a generic reached only by `0.1` was
  instantiated at `F32`, and `0.1 + 0.2` summed in single precision; C, Go and Rust all default to 64-bit. A literal
  written against a typed float still adapts (T6) - `f F32 = 0.1`, an `F16` parameter - so the change is one line in
  the checker; G9a, `-D` float constants (B10), `:=`, the evaluator and `$` all read the literal's type and follow.
  **What changes meaning**: an expression built from literals is not a literal (E4) and never adapted, so
  `f F32 = 0.5 * 2.0` is now an error (an `F64` does not flow into an `F32`, T6b) - as `b U8 = 1 + 2` already was -
  with a new message saying to write `F32(...)`; and `g < 1.0 / 3.0` with `g` an `F32` now compares two `F64`s, as C
  does. Nothing in the corpus or std relied on either. **Found on the way**: the token evaluator (B9a) always computed
  floats as doubles, so a condition on `X := 0.1` (`X * 3.0 == 0.3`) was decided false where the run time said true -
  untyped float globals now agree; a narrow-typed one (`X F32 = 0.1`) still reads as its value (B9a), as an `I32`
  that would wrap does. The spec's G9a example (`Pick(1, 2.5)` at `F64`) had been wrong until now. Flagged, not
  changed: `$` renders an `F64` with 17 digits (`0.10000000000000001`); a float literal beyond a narrower target's
  range becomes infinity (`f F32 = 1e39`).
- **The command line, the environment and the file system, in `std/os` (B4a/B3f/X6/X7, 2026-10-08, self-hosting prep
  items 1-2, the user's design constraints: `main` unchanged, no pointer returns).** The generated `main` saves
  `argc`/`argv` before any global initializes; the runtime's own functions (`__olang_arg_count`, `__olang_arg`,
  `__olang_env`, `__olang_err`, `__olang_stat`, `__olang_dir`, `__olang_realpath`) copy into a caller's buffer and
  return lengths, for what C would hand back as a pointer, a struct or errno - anything numeric std calls directly.
  `os.Args()`, `os.Env(name)` (default error when unset, as Map.Get), `ReadFile`/`WriteFile`, `Create`/`Open`/`Close`
  (an `I32` fd for io), `Stat` (`FileInfo`: `Kind`, `Size`, `ModTime` in ns), `Exists`, `IsDir`, `MkDir`, `MkDirAll`,
  `Remove`, `Rename`, `ReadLink`, `RealPath`, `Cwd`, `ReadDir` (sorted); `OsError` grew `EXISTS`, `DENIED`, `NOT_DIR`,
  `IS_DIR`, `NOT_EMPTY`. **My calls, flagged**: `stat` as three numbers in an `I64` buffer, offsets and constants from
  the compiler's own C headers (sound while target = host); errno classified by one table shared with `-i`; the
  API names. **`-i`** passes everything after the file to the program, flags included, with the file as its name, and
  implements the runtime's functions itself. Not built: an exit status beyond 0/1 (B5), `uname`, output capture.
  **Found on the way, pre-existing**: `extern fn exit` failed to compile (the runtime's hand-kept owned-symbol list
  lacked `exit`/`abort`/`setjmp`/`longjmp`; it now reads the runtime's own text - X7), and `n := a.Len()` was rejected
  by D15 (the built-in `Len()` and value-giving atomics are calls too now).
- **`os.Exit(code)` (B5b, 2026-10-08, the user: "do the os.Exit thing").** Ends the process with any status, through
  the exit path `done`/`fail` take - asked for because a self-hosted `-i` must pass on a program's status (134 after
  an abort), and `extern fn exit` already reached it in any program since X7. **`done`/`fail` stay** (the user asked
  whether they should): they end the innermost thing that can end, so code calling them stays testable, where
  `os.Exit` always ends the process and a test calling it ends the whole run (Go's `os.Exit` in a test does the same).
  An ordinary call, so D10a does not count it as leaving.
- **`List` indexes and holds its place; `StringBuilder` (E31/S9d/B3/T36, 2026-10-08, self-hosting prep item 4, the
  user's decision).** `l[i]` (`At`, a copy) and `l[i] = v` (`SetAt`), unchecked as an array index is, with `try l[i]`
  checked through the derived `TryAt`; and `PushAll(a)`. The chunks still double (8, 16, 32 ...) but are kept in an
  array of their own, so a position's chunk is arithmetic - `highBit(i + 8) - 3`, six compares in olang, since there is
  no leading-zeros operation - and `l[i]` costs the same whatever the length (4.6ns per element walking in order, a
  random gather 2.3-2.7x an array's). **The user's caution, "so we don't end up not using iterators for loops", holds by
  S9d's order**: `List` keeps its own `Iter`, which wins over `At`/`Len` - for `for ... in`, comprehensions, the
  iterator helpers and generic code that knows it only as `Indexable`, pinned by a corpus test and by a check that the
  generated IR calls `ListIter.Next` and never `At`. **`ListIter` holds the chunk it is in** instead of asking for
  (chunk, index) and walking from the head each step - O(n log n) a walk; 10M elements x10 went 1.62s to 0.124s,
  against 0.087s over an array. Its stated reason (an interface call had no receiver scope) went with T30 and
  O4b; `MapIter` had the same shape and now holds its next slot. `l[i].x = v` is an error (a copy), now worded as such
  (`WRITE_INTO_CALL_VALUE`). **`StringBuilder`** (name mine, flagged): `Push(t String&)`, `PushChar(c Char)`, `Len()`,
  `ToString()` - a `List<Char>` by value, flattened by one copy; values go in as `b.Push($n)`. 10M characters in
  5-character pieces: 18ms to append and 15ms to flatten, against 9ms copying them into a preallocated, already-touched
  `Array<Char>` - most of the gap is fresh pages (the chunks and the flattened copy).
  **Found on the way, pre-existing**: editing a prelude file rebuilt nothing that used it - the root's object holds the
  prelude's instantiations (B3d) and kept the old `List` (every module now counts as importing the prelude, B3);
  `++`/`--` emitted untagged loads and stores, so `l.count++` aliased every element store (T36); and `n := a.Len()` was
  refused by D15's "a call" test.
- **The formal specification (`spec.md`) and the spec-first process.** `spec.md` is the normative,
  current-state-only reference manual for the language (rules numbered `<prefix><n>`, e.g. `T24`,
  `O13`; EBNF grammar) - no narrative, no history, and no mention of CLAUDE.md, Claude, or the design
  process anywhere in it. A language change is made spec-first: write or revise the relevant rule(s)
  in `spec.md`, then implement so the code conforms to what was just written, then record the *why*
  here (extending HISTORY.md too, if there's a longer story worth keeping).

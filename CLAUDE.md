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

## Settled decisions

- **Value vs. reference semantics (`<>`/`<name>`).** A struct or fixed/dynamic array is a value type
  by default - `==`/`!=` do a structural (deep, memberwise/elementwise) comparison. A trailing `<>`
  (bare) or `<name>` (named) marker on a struct or fixed-array type reference makes that level
  heap-indirect/reference-shaped; `==` on a reference is pointer identity, and `<>` is the only way a
  struct can embed itself (breaking an otherwise-infinite-size cycle). A dynamic array (`T[]`) is
  always reference-shaped, marker or not. The marker's spelling went through three iterations
  (`{}` → `&` → `{}` → `<>`) before settling on `<>`/`<name>` for good; full history in
  HISTORY.md.
- **`error` statement.** `error TypeName.word` selects the error part of a function's declared
  return union. The named error type must appear in the enclosing function's signature, and `word`
  must be one of that type's declared members. Only valid inside an ordinary function body - not in
  a `test { }` block or a constructor, neither of which has an error union of its own.
- **Compilation modes.** `olang -c file.olang` compiles one program (`main` required, everything
  pulled in transitively). `olang -t file1.olang file2.olang ...` runs every listed file's own
  `test { }` blocks as independent, isolated compiles; `main` is not required, and one broken file
  doesn't stop the others from being checked/run.
- **`test "description" { }` blocks.** Zig-style, top-level declaration, only usable/run under `-t`.
- **`assert EXPR` is a statement, not a function call** - usable in any function, test, or
  destructor body, not just inside `test { }`. `assert cond` and `assert(cond)` are identical (the
  parens are just an ordinary parenthesized sub-expression). Outside `-t`, a failing assert hard-
  aborts (like C's `assert()`); inside a `test { }` block it's a soft, recoverable failure - that one
  test is marked failed and the rest keep running.
- **Function signature order: return value first, then `?` error set.** `func f(params) [RetType]
  [? ErrA [+ ErrB ...]] { }` - the return type, when present, is bare (no marker of its own) and
  comes first; the error set, when present, is what the `?` now marks, and comes after. `main`
  follows the same rule (`func main() ? SomeError { }`, no return type ever). A constructor's own
  error-list is unaffected - still bare, no `?`, directly after its parameter list - since a
  constructor never had a `ret-type` slot to disambiguate against in the first place. Reversed from
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
- **The generic error: bare `error` reused as an error-list item, an `error` statement's own operand,
  and a `catch-item` - no new keyword.** Stands for "this failed, no further detail is tracked" - a
  real member of a function or constructor's own error union that names no declared error type at
  all. `func f(...) ? MathError + error { }` mixes it with named types via `+`, same as any two named
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
  `func main() ? SomeError [+ ...] { ... }`, no other shape valid. Process exit is exactly two values:
  a normal return is OS exit 0; an error escaping `main` uncaught prints
  `unhandled error: TypeName.Word` to stderr and exits 1. There is no "return a status" convention.
- **`done`/`crash`.** Bare statements (no operand), valid in any function or test body: `done` is an
  immediate OS-standard-success process exit, `crash` an immediate OS-standard-failure one. Both are
  unconditional termination, unrelated to the enclosing function's own declared error union, and
  print nothing.
- **Cross-module visibility, re-export, and multi-hop alias chains.** Anything starting with a
  capital letter is exported - one rule, applied uniformly to types, functions, error types, global
  variables, *and import aliases*. A capitalized import alias is automatically re-exported (no
  separate opt-in): a module reaching through it can chain further (`a.b.Name`, to any depth) via the
  same `alias-chain IDEN` grammar used everywhere a possibly-cross-module name is written (calls,
  type refs, `error`/`catch`, bare variable reads, struct/array literal construction). A raw import
  cycle (A imports B imports A) is unrestricted; a cycle in the *public-reachability* graph
  specifically (re-exporting your way back to the same module), or reaching the same underlying file
  two different ways from one module, are both compile errors.
- **Struct/array literal syntax, `:=` inference, and the parser.** Struct literals:
  `Type{v1, v2, ...}` (positional, field-declaration order). Array literals: `T[v1, ...]` (scalar
  element type stated exactly once, nested `[...]` rows for multi-dimensional, no separate
  size/dynamic-ness prefix - see HISTORY.md for the syntax's full evolution). Both are
  general expressions, usable anywhere a value is needed. `x := <literal>` infers `x`'s type entirely
  from a literal initializer (locals, for-loop init vars, globals); a non-literal initializer
  (`x := f()`) is a compile error. The parser is hand-written recursive descent, not table-driven,
  with a cheap top-level name-collection pre-pass (`ScanTopLevelDecls`) run before real parsing so
  `Type{`/`Type[`/vocab-value syntax can commit only when the leading name is a genuinely known type.
- **Vocab values: `Type.WORD`.** Constructs/reads a vocab value - the type's declared ordinal, never
  treated as numeric (no arithmetic, ordering, or conversion to/from any integer type); only `==`/
  `!=` and `match`/`case` (structural) apply. Never alias-qualified - always resolved against the
  referencing module's own declared vocab types only.
- **Ownership scopes: `scope`, `own`, `<>`/`<name>`, and the static scope-containment checker.**
  Every `<>`-heap-indirect value belongs to a nested, FILO-closing `scope` (a chunked bump allocator;
  closing one is O(1), plus O(destructor-bearing instances it holds) to run their destructors).
  `scope` is a restricted builtin type usable only as a function parameter's declared type. `own`
  evaluates to the enclosing function/test's own private scope; a bare `<>` marker means "my own
  scope" (implicitly `own`), a named `<name>` marker tags a value to an explicitly-passed `scope`
  parameter (or, for a constructor field, any of that constructor's own parameters), letting it
  escape into the caller's scope. A function's return type can never be a bare (untagged) `<>`
  reference, directly or nested inside a plain returned struct/array (covering structs, fixed
  arrays, and dynamic arrays alike) - the function's own scope closes before a caller could ever see
  a value allocated into it. `<>`/`<name>` apply uniformly to fixed-size arrays too (the
  first-written array-suffix dimension is outermost); a dynamic array is always reference-shaped,
  marker or not. A bare `<>` field/element nested inside a larger value always inherits its immediate
  container's own scope, never an independent tag - enforced at every relevant codegen site
  (aggregate-literal building, assignment through a chain of bare fields or array indices).

  A **static, compile-time scope-containment checker** (not a general borrow checker) additionally
  proves, wherever it can trace a scope tag back to one of the current function's own declared scope
  parameters: a value may flow into a same-tagged target; a named-scope value may narrow into a bare
  `<>` (own) target (own is always the shortest-lived scope reachable from inside a function);
  anything else (a bare/own value into a named target, or two different named scopes) is rejected.
  Tracing composes through a call's own argument-to-parameter binding (including a callee's own
  parameter type naming one of *that callee's own* scope parameters, resolved through the call's own
  binding before comparing - never the caller's), one or more hops through a var-decl or
  straight-line reassignment, member-access chains through constructor-declared fields (bare-pun
  fields included, disambiguated across same-typed sibling fields by which constructor parameter each
  value flowed through), and merged `if`/`match`/loop branches (agreeing branches keep the agreed
  tag; disagreeing branches are marked definitely ambiguous, never silently guessed). **A scope tag
  the checker can't trace back to one of the current function's own parameters - including one read
  back through an array index, which composes no tracing at all - is a compile-time error**, exactly
  as an actually-proven-unsafe flow is: unverifiable now means reject, never optimistically allow.
  This makes the checker sound (nothing it accepts can be disproven safe) though still incomplete
  (some genuinely-safe programs it can't yet trace are rejected too) - the correct tradeoff for a
  checker whose entire point is a compile-time safety proof, not a best-effort hint.
- **Constructors and destructors - the only two special blocks a struct type can declare** (no
  general user-defined methods, deliberately, to sidestep field/method name collisions).
  `type Name struct(params) [errors] { fields } [destruct { stmts }]`; a field is a bare pun (binds a
  same-named constructor parameter), an explicit var-decl, or `:=` inference. `Type(args)` is an
  ordinary call under the hood - once a type declares a constructor, the old positional `Type{...}`
  literal is rejected for it. `destruct { }` has no error union of its own (same rule as `test{}`)
  and reads its own fields bare, with no `self`/`this`. A **plain (non-`<>`) local**'s destructor
  runs right before its enclosing function/test returns, LIFO across nested locals - except
  `return x` (a bare variable read and nothing else) skips destructing `x` itself, since the value is
  handed to the caller intact. A **`<>`-heap-indirect instance**'s destructor instead runs when its
  *owning scope* closes, LIFO, regardless of which function allocated it. Destructors are registered
  per element for a fixed array of destructor-bearing struct values (both the array-to-`<>`-reference
  and fixed-literal-to-dynamic-`T[]` promotion paths), and for every slot of a genuinely runtime-sized
  (`T[expr]`) array up front at allocation time (every slot destructs, assigned-to or not, since a
  slot's zero-filled default is a well-defined value).
- **Array literals, dynamic arrays, and var-decl forms.** An array literal (`T[v1, ...]`) is always a
  fixed-size array sized by its own item count; flowing into a dynamic (`T[]`) target implicitly
  promotes (a fresh copy); flowing into a fixed target of a *different* size is a compile error, not
  silently truncated/padded. "Dynamic" means sized once at construction, then fixed - there is no
  growable `Vec`. A local/global var-decl has exactly three no-overlap forms: `x T[] = <literal>`
  (size inferred from the literal); `x T[N]` with no initializer (zero-filled, real BSS for a
  global); and, *local-only*, `x T[expr]` with a non-constant `expr` and no initializer (a
  runtime-sized, zero-filled array, arena-allocated into `own` or a named scope like any other
  reference). Pairing `T[N]` with an initializing literal, or leaving a dynamic `T[]`/scalar with no
  initializer at all, is a compile error. **None of these three forms can produce a reference with no
  real construction behind it:** a no-initializer array var-decl (`T[N]` or `T[expr]`) is rejected if
  its declared type contains a reference (`<>`/`<name>`, or a dynamic array, always reference-shaped
  per T11) anywhere within it, at any depth - not just at its own outermost level - since none of
  those have a valid zero value (there is no null literal in this language, so a zero-filled reference
  would be an invisible dangling pointer, and a zero-filled dynamic array would be a phantom "empty"
  array that never went through real allocation). This closes off what looked like a fourth,
  accidental way to construct a **jagged** (independently-sized-per-row) array - `x mut T[N][]`
  (fixed row count, dynamic per-row) with no initializer, then assigning each row separately - which
  doesn't actually exist as a legitimate construction path: it was a zero-fill bug, not a feature.
  There is currently no legitimate way to construct a jagged array at all.
- **Deferred: generics, user-defined methods, and a real growable `Vec`.** A separate, much larger
  future direction, not started - nothing about the current language design is shaped around it;
  revisit once a concrete need for a resizable collection or generic user code actually arises. Such
  a collection, once built, belongs in a standard library on top of the language, not as more special
  cases inside the compiler.
- **The formal specification (`spec.md`) and the spec-first process.** `spec.md` is the normative,
  current-state-only reference manual for the language (rules numbered `<prefix><n>`, e.g. `T24`,
  `O13`; EBNF grammar) - no narrative, no history, and no mention of CLAUDE.md, Claude, or the design
  process anywhere in it. A language change is made spec-first: write or revise the relevant rule(s)
  in `spec.md`, then implement so the code conforms to what was just written, then record the *why*
  here (extending HISTORY.md too, if there's a longer story worth keeping).

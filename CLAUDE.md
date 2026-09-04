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

- **Value vs. reference semantics (`&`/`&name`).** A struct or fixed/runtime-length array is a value type
  by default - `==`/`!=` do a structural (deep, memberwise/elementwise) comparison. A trailing `&`
  (bare) or `&name` (named) marker on a struct or compile-time-length-array type reference makes that level
  heap-indirect/reference-shaped; `==` on a reference is pointer identity, and `&` is the only way a
  struct can embed itself (breaking an otherwise-infinite-size cycle). A runtime-length array (`T[]`) is
  always reference-shaped, marker or not. The `&` denotes scope-tagged heap indirection and is
  deliberately *not* an address-of or a borrow - there is no pointer type, no unary `&`, and the
  §8.4 check is scope-containment, not a borrow check. The marker's spelling went through four
  iterations (`{}` → `&` → `{}` → `&` → `&`); the last move exists to free `&` for generic type
  parameters, and voided `&`'s own two justifications at once - that it "reads the way a
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
  follows the same rule (`func main() ? SomeError { }`, no return type ever). A constructor's
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
- **The bare error: bare `error` reused as an error-list item, an `error` statement's own operand,
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
  size/length-kind prefix - see HISTORY.md for the syntax's full evolution). Both are
  general expressions, usable anywhere a value is needed. `x := <literal>` infers `x`'s type entirely
  from a literal initializer (locals, for-loop init vars, globals), **or from a constructor call**
  (`p := Point(1, 2)`) - the rule is really "the type is written at the declaration", which a
  constructor call satisfies as plainly as a literal; an ordinary call (`x := f()`) is still a compile
  error. The parser is hand-written recursive descent, not table-driven,
  with a cheap top-level name-collection pre-pass (`ScanTopLevelDecls`) run before real parsing so
  `Type{`/`Type[`/vocab-value syntax can commit only when the leading name is a genuinely known type.
  **The literal form is deliberately kept alongside constructors, not folded into them, and a
  constructor-declaring type is buildable BOTH ways.** Dropping `Type{...}` so that all struct
  construction went through `Type(...)` (with a derived, all-bare-puns constructor for plain structs)
  was worked out in full and rejected: two forms make infallibility visible *at the use site*, where one
  form would make "can this construction fail?" depend on the declaration. `Type{...}` is plain data
  assembled; `Type(...)` is constructed - possibly validating, allocating, or taking ownership. This is
  also what would let a constructor raise its own error later without making every struct in the
  language fallible. The old rule that declaring a constructor *rejected* the literal for that type is
  therefore gone (C6): the literal assembles the fields directly, supplying every one of them, including
  any the constructor would have computed - so a literal *bypasses* whatever the constructor establishes,
  validation included. That is deliberate and follows from a type declaring **exactly one** constructor:
  with no overloading and no second named constructor, a validating constructor would otherwise be the
  only construction path its type has, leaving no way to rebuild an instance from values already known
  to be valid (deserialization, reconstruction after taking a value apart) - the need other languages
  meet with an explicit unchecked constructor. The literal is that path, and it announces itself at the
  point of use, so the bypass is never silent. **One narrow exception (C6a):** a literal is rejected for a
  type any of whose fields carries an explicit `&name` scope tag - a marker, or the mandatory tag of a
  D14a run-time-sized field - because such a tag names one of the *constructor's own parameters* and a
  literal supplies field values, not constructor arguments. A bare `&` field is unaffected (it names the
  container's own scope). Destructors need no special case here: registration rides on the value-to-
  reference promotion every C11 reference-only type must go through, so a literal-built instance
  registers exactly as a constructed one does.
- **Vocab values: `Type.WORD`.** Constructs/reads a vocab value - the type's declared ordinal, never
  treated as numeric (no arithmetic, ordering, or conversion to/from any integer type); only `==`/
  `!=` and `match`/`case` (structural) apply. Never alias-qualified - always resolved against the
  referencing module's own declared vocab types only.
- **Numeric conversion: a literal implicitly widens, a non-literal value needs `TypeName(x)`.** A
  numeric literal (a token literal, or one negated by a single leading unary `-`, which now folds the
  sign into the literal itself) implicitly widens into whatever numeric type it's used against,
  wherever exact type-matching would otherwise be required - an assignability context (a var-decl,
  assignment, argument, return) or a same-type-requiring binary operator (arithmetic, comparison, and
  bitwise alike, not just `+ - * / %`). Widening is always the safe direction only:
  `byte`/`int32` → `int64`, any integer type → `float32`/`float64`, `float32` → `float64` - never the
  reverse. Everything else - a non-literal value crossing numeric types at all, or any narrowing -
  needs an explicit `TypeName(x)` conversion (`int64(x)`, `byte(x)`, `float32(x)`, ...): a real
  runtime instruction, never fallible, silently wrapping on narrowing overflow (unchecked, like array
  indexing). `int64`/`float64` were previously *completely unreachable* - no literal syntax produced
  either, and nothing implicitly widened into them - this closes that gap along with adding the
  explicit mechanism.
- **Ownership scopes: `scope`, `own`, `&`/`&name`, and the static scope-containment checker.**
  Every `&`-heap-indirect value belongs to a nested, FILO-closing `scope` (a chunked bump allocator;
  closing one is genuinely O(1) - the scope records its tail chunk so the whole list splices onto a
  global free-list with no walk - plus O(destructor-bearing instances it holds) to run their
  destructors). Every allocation is rounded up to 8 bytes so the next one starts aligned, and destructor
  list nodes are bump-allocated from the scope's own arena rather than individually malloc'd/freed.
  `scope` is a restricted builtin type usable only as a function parameter's declared type. `own`
  evaluates to the enclosing function/test's own private scope; a bare `&` marker means "my own
  scope" (implicitly `own`), a named `&name` marker tags a value to an explicitly-passed `scope`
  parameter (or, for a constructor field, any of that constructor's own parameters), letting it
  escape into the caller's scope. A function's return type can never be a bare (untagged) `&`
  reference, directly or nested inside a plain returned struct/array (covering structs, compile-time-length
  arrays, and runtime-length arrays alike) - the function's own scope closes before a caller could ever see
  a value allocated into it. `&`/`&name` apply uniformly to compile-time-length arrays too (the
  first-written array-suffix dimension is outermost); a runtime-length array is always reference-shaped,
  marker or not. A bare `&` field/element nested inside a larger value always inherits its immediate
  container's own scope, never an independent tag - enforced at every relevant codegen site
  (aggregate-literal building, assignment through a chain of bare fields or array indices).

  A **static, compile-time scope-containment checker** (not a general borrow checker) additionally
  proves, wherever it can trace a scope tag back to one of the current function's own declared scope
  parameters: a value may flow into a same-tagged target; a named-scope value may narrow into a bare
  `&` (own) target (own is always the shortest-lived scope reachable from inside a function);
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
  and reads its own fields bare, with no `self`/`this`.
  **A struct type declaring `destruct { }` is reference-only:** every `type-ref` naming it must carry
  a reference marker, so it is never embedded by value in an aggregate and never passed or
  returned by value. A destructor asserts an instance owns something releasable exactly once, which
  needs a well-defined instance count; a value type is compared structurally and copied freely, so no
  copy is identifiably the owner. Identity is what `&` already means here (`==` on a reference is
  pointer identity, on a value structural), so a type needing identity must be one - the rule is those
  two settled facts composed, not a new axiom. The marker is still written at every use: declaring a
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
  coincide and a single marker reads as the element one. An array literal may state a marked element type
  (`Handle&[a, b, c]`). An element-position marker may not carry a scope *name*: a nested reference
  always inherits its container's scope, so such a tag could never be honoured and is rejected rather
  than silently ignored.
- **Parameter mutability and reference arguments: `&` says whose instance, `mut` says whether it can be
  written.** Two independent axes, so whether a call writes to the caller's value is readable from the
  signature alone with no reasoning about scopes or durability: `p Point` / `p mut Point` are copies (the
  caller is unaffected either way, `mut` only makes the callee's own copy writable), while `p Point&` is
  the caller's own instance read-only and `p mut Point&` is it writable. D9 always specified the `mut`
  half; it was simply never enforced (parameters were forced mutable when entering the body scope), the
  same class of bug as C3's unenforced field mutability. The `&` half needs one new restriction (E12a):
  **a value may not be promoted into a `&` parameter when the argument is an lvalue** - otherwise `&`
  would mean "your instance" at some call sites and "a copy of it" at others, and a `mut` reference
  parameter could write to a copy the caller never sees. Deliberately narrow: a freshly built temporary
  (a literal, or a constructor call's own result) has no caller-side instance to preserve and still
  promotes, and promotion at a var-decl or a return is untouched - there is no caller-side instance
  there either, that *is* how a reference gets created.
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
  reference). Pairing `T[N]` with an initializing literal, or leaving a runtime-length `T[]`/scalar with no
  initializer at all, is a compile error. **None of these three forms can produce a reference with no
  real construction behind it:** a no-initializer array var-decl (`T[N]` or `T[expr]`) is rejected if
  its declared type contains a reference (`&`/`&name`, or a runtime-length array, always reference-shaped
  per T11) anywhere within it, at any depth - not just at its own outermost level - since none of
  those have a valid zero value (there is no null literal in this language, so a zero-filled reference
  would be an invisible dangling pointer, and a zero-filled runtime-length array would be a phantom "empty"
  array that never went through real allocation). This closes off what looked like a fourth,
  accidental way to construct a **jagged** (independently-sized-per-row) array - `x mut T[N][]`
  (compile-time-length row count, runtime-length per-row) with no initializer, then assigning each row separately - which
  doesn't actually exist as a legitimate construction path: it was a zero-fill bug, not a feature.
  There is currently no legitimate way to construct a jagged array at all.
- **Run-time-sized constructor fields (`data T[expr]&s`).** The `T[expr]` form is valid in two
  positions, not one: a local var-decl, and a constructor field (D14a). Both need a definite point at
  which to allocate, and a constructor call is one; a plain (T13) struct's literal performs no
  allocation step, so it stays rejected there. **This is what lets a struct own a buffer at all** -
  before it, `T[expr]` was var-decl-only and no expression produced a runtime-sized array as a value, so
  no struct could hold one (no Vec, no buffer, no hash table). Exposed by writing the first `Vec<T>`
  while implementing generics, but not a generics problem. The field's **scope tag is required**: an
  untagged one allocates into the constructor's own scope, which closes before the constructed value
  reaches its caller - the same hazard O13 rejects for a bare `&` return type, and now rejected the same
  way. That failure was silent and vicious rather than merely leaky: the freed chunk was immediately
  reused for the constructed struct itself, so a later write through the field landed on the struct's
  own length word.
- **`extern func` - external (C-ABI) function declarations.** `extern func NAME(params) [ret-type]`
  (no error-list, no body - `STMNT_END` where a block would begin) declares a function defined
  outside this compilation, resolved by the platform's linker; `NAME` is also the exact linker symbol
  requested (implementation-defined if it doesn't resolve). A deliberately restricted type vocabulary
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
  ordinary olang code written on top of `extern func`, the same way `Vec`/`Set`/etc. (see the deferred
  entry just below) are meant to be ordinary olang code on top of the language's existing features -
  deliberately not a `@cImport`-style C-header-parsing mechanism (Zig's approach), judged wildly
  disproportionate to the actual need (a handful of hand-written declarations, not a C compiler
  frontend embedded in this one).
- **Generics (`<T>`) - type parameters on functions and struct types, monomorphized.** Spec'd in §12
  (G1-G17). A **function** is generic exactly when a type variable appears in its signature - there is
  no declaration list, the set *is* whatever appears (`func max(a<T>, b<T>) <T>`), and its type
  arguments are **never written**: they are inferred by matching the actual argument types against the
  declared parameter types, which is total because every variable must appear in at least one parameter
  (G4). A **struct type** does declare a list, after the name (`type Vec<T> struct(...)`), and for a
  reason that isn't arbitrary: a type's arguments can't be inferred, so they're written positionally,
  and only a declared list makes "positional" mean anything. That asymmetry tracks inferability exactly.
  **`match <T>`** dispatches on a type parameter, resolved at instantiation - no runtime comparison or
  branch, only the selected arm's code; inside that arm the variable *is* the concrete type (so each arm
  is checked only for its own instantiation), and unlike a value `match` it is exhaustiveness-checked,
  since falling through silently would compile a generic that does nothing for some instantiations.
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
  on growth. **The combination of "generic type" + "constructor" was initially unreachable in three
  independent ways** (no call syntax; the generic's synthetic constructor var lacked the `typeParams`
  marker that makes codegen skip a generic, so merely *declaring* one crashed the compiler; and an
  instantiation reused the generic's already-built body) - invisible because generic types and
  constructors were each tested separately, and surfaced only by typing in the spec's own `Vec<T>`
  example and running it.
- **Deferred: user-defined methods, and a real growable `Vec`.** Generics exist now (above), so a
  resizable collection is finally expressible; it belongs in a standard library on top of the language,
  not as more special cases inside the compiler.
- **The formal specification (`spec.md`) and the spec-first process.** `spec.md` is the normative,
  current-state-only reference manual for the language (rules numbered `<prefix><n>`, e.g. `T24`,
  `O13`; EBNF grammar) - no narrative, no history, and no mention of CLAUDE.md, Claude, or the design
  process anywhere in it. A language change is made spec-first: write or revise the relevant rule(s)
  in `spec.md`, then implement so the code conforms to what was just written, then record the *why*
  here (extending HISTORY.md too, if there's a longer story worth keeping).

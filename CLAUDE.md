# olang design principles

olang is a custom programming language. C-like structure, with quality-of-life improvements over C.
Error handling is modeled on Zig (explicit error sets/unions, no exceptions). Longer-term direction:
Rust-like compile-time memory/security guarantees (not started yet - see Open questions).

This file is a living design record, not a spec. Whenever a design decision is made, implemented,
revised, or reversed, update the relevant section below in the same session - don't let it drift out
of sync with the actual code.

## Settled decisions

- **Value vs. reference semantics.** A struct or fixed/dynamic array is a value type by default -
  `==`/`!=` do a structural (deep, memberwise/elementwise) comparison, not pointer identity. A
  trailing `{}` on a type reference (e.g. `MyStruct{}`) makes that level heap-indirect - a reference,
  the same way an object reference works in Java. `==` on a `{}` reference is pointer identity on
  purpose, and `{}` is also what breaks recursive-embedding cycles (a struct can only embed itself
  through a `{}` indirection).
- **`error` statement.** Selects the error part of a function's declared return union, e.g.
  `error MyError.NotFound`. Grammar: `error TypeName.word`. The named error type must appear in the
  enclosing function's signature (`MyError + MyError2 ? T`), and `word` must be one of that error
  type's declared members. Only valid inside a function body (not in `test { }` blocks, which have no
  error union to select from).
- **Compilation modes.** `olang -c file.olang` compiles one program: `main` is required and everything
  is pulled in transitively from `file.olang`. `olang -t file1.olang file2.olang ...` runs every
  file's `test { }` blocks as independent, isolated OS processes; `main` is not required, and one
  broken file doesn't stop the others from being checked/run.
- **`test "description" { }` blocks.** Zig-style. Only usable in `-t` mode.
- **`assert EXPR` is a statement, not a function call - usable in any function body, not just inside
  `test { }`.** Takes its operand directly the same way `return EXPR` does (`TOK_ASSERT`, own grammar rule
  `SNTX_STMNT_ASSERT`/`STATEMENT_ASSERT`), not a call to a builtin var - so `assert(cond)` and
  `assert cond` both work, and mean exactly the same thing: `(cond)` is just an ordinary parenthesized
  sub-expression, which `EXPR` already handles on its own, so no special-casing was needed to keep every
  existing `assert(...)` call site parsing unchanged. This replaced an earlier design where `assert` was a
  compiler-intrinsic *function* (`registerBuiltins`, `struct var.isBuiltin`) called like any other - both
  are now gone, and codegen's assert-failure branch/label logic moved as-is from `cgFuncCall`'s builtin
  branch into its own `cgAssert(ctx, statement*)`, driven by `cgStatement`'s normal statement dispatch
  instead of a special-cased call target. Usable in *any* function, not just `test { }` (confirmed
  directly: `assert` inside `main` in a `-c`-compiled program works, and a *failing* one there hard-aborts
  via `abort()`/SIGABRT - much like C's own `assert()` - rather than being caught). The soft, recoverable
  failure behavior (mark this one test failed, print, keep running the rest) is specific to the `-t` test
  harness, which sets a longjmp target (`@__olang_jmp_target`) before each test; `__olang_assert_fail`
  (unchanged by this - still the same runtime function) checks that target and only takes the soft path
  when it's actually set (never true outside the test harness) - see `emitRuntimeDecls`/`cgTestHarnessMain`
  in codegen.c.
- **Error-union return ABI.** Zig-style, but with *locally*-scoped codes instead of one whole-program
  numbering, specifically so a compiled module's codes never shift because of an unrelated error type
  declared elsewhere (a real gap in naive Zig-style `anyerror` schemes, which are only stable within one
  whole-program compile). A fallible function's LLVM return is `{ i32 code, T payload }` (bare `i32` if
  it has no success type); `code == 0` means success and `payload` is valid. A nonzero code packs
  `(typeOrdinal << 16) | wordOrdinal`: `typeOrdinal` is the 1-based position of the error type within
  *this one function's own* declared `ErrA + ErrB + ...` list, `wordOrdinal` is the 0-based position of
  the word within *that error type's own* declaration - both fixed the moment that one signature/type is
  written, computable from a single local declaration, never a function of anything else in the program.
  Propagating/re-raising an error under a *different* function's signature is a decode-then-re-encode,
  not a raw passthrough, since the same error type can sit at a different ordinal in each signature.
- **`try`/`catch` call sites.** Forced handling: a bare call to a fallible function is a compile error.
  `try f(...)` is a general *expression* (usable anywhere a value is needed, e.g.
  `x mut int32 = try f(...)`) that propagates on error - it requires the enclosing function's own
  signature to declare every error `f` can produce. `try f(...) catch A + B.word { ... }` is a
  *statement*: pure control flow, the caught error is never bound to a value (no `|err|`-style capture -
  error words carry no data anyway, so there'd be nothing extra to expose). `catch MyError` (bare, no
  `.word`) matches any word of that type; `catch MyError.NotFound` matches only that one word; multiple
  matches combine with `+`, the same operator a function signature already uses to combine several whole
  error types into one declared set (`ErrA + ErrB ? T`) - a catch clause is doing exactly that same thing
  (matching against a combined set of error types/words), so it uses the same operator. **`||` was tried
  first and deliberately dropped**: it reads as a boolean-OR condition, which is misleading here - a catch
  clause never actually evaluates or produces a new boolean/set value the way `||` implies, it's declaring
  set membership, and `+` already means exactly that everywhere else error types are combined. `parseCatchErrList`
  in syntax.c only ever accepts `TOK_ADD` now; `||` (`TOK_OR`) remains the ordinary boolean-OR expression
  operator everywhere else in the language, unaffected - this restriction is purely about the catch-list
  grammar. An error not matched by any clause propagates using the same superset rule
  as bare `try` - except only for the part that actually escapes: an error type every one of whose words
  is caught (via a bare whole-type match, or by individually catching every one of its declared words)
  never needs to appear in the enclosing signature at all. This has a real, non-obvious consequence:
  **`try`/`catch` is usable inside a `test { }` block** (which has no error union of its own) as long as
  everything the tried call can produce is fully caught right there - `checkTrySuperset`/
  `StatementCatchCoversType` in semantic.c only require an enclosing function when something can actually
  escape uncaught. One sharp edge: coverage is signature-level, not "what a callee happens to handle
  internally" - if `g()` declares `MyError` and internally catches only `MyError.A`, callers of `g()`
  still have to treat *all* of `MyError` as possible (only `catch MyError`, not enumerating the remaining
  individual words, reliably covers it), since a signature can only declare whole error types via `+`,
  never a narrowed subset of one type's words.
- **`main`'s signature is fixed: no parameters, no success type, at least one declared error** - e.g.
  `func main() MyError { ... }`. There is no other valid shape (no `? bool`/`? int32` "return a status"
  convention anymore). Process exit code is exactly two values: success (implicit/bare `return`) is OS
  exit 0; any error that escapes uncaught to `main` prints `unhandled error: TypeName.Word` to stderr and
  exits 1. This is deliberately coarse - packing the specific error into the exit code itself isn't worth
  it (only 8 bits, low values already have shell/signal conventions, easy silent collisions for anything
  with more than a couple of error types) - the point of an exit code is a crude machine-readable
  done/failed signal for scripts/CI, and the specific error belongs on stderr where it's actually
  readable.
- **`done`/`crash` replace `exit <expr>`.** Both are bare statements (no operand) usable in any function,
  not just `main`: `done` = OS-standard success (exit 0), `crash` = OS-standard failure (exit 1). Like the
  old `exit`, both are a plain, immediate OS process exit - deliberately unrelated to the enclosing
  function's declared error union, same as Zig's `std.process.exit()`/Rust's `std::process::exit()` (both
  plain stdlib functions outside their error-handling machinery, not language keywords - olang's choice
  to make this a statement is a deliberate divergence, not an accident). Terminating the whole process is
  a different operation from returning an error to one caller, so tying the two together would only be
  confusing. Neither prints anything - `crash` is the "no diagnostics, exit now" escape hatch, distinct
  from an uncaught error reaching `main` (which does print, per the entry above).
- **Cross-module visibility: anything starting with a capital letter is exported.** One rule
  (`isPublic` in semantic.c), applied uniformly to types (already existed), functions, and error types.
  A lowercase name is only visible within its own declaring module. This also unblocked something that
  turned out not to exist yet: **cross-module function calls and cross-module error types in a
  signature/`catch` clause had no grammar support at all** before this - `import` only ever let a file
  reference another module's *type* declarations (`alias.TypeName`), never call its functions or use its
  errors. Fixed by reusing `SNTX_NAME` (`alias.Name`) in the call-target and error-list grammar, and by
  extending `SNTX_CATCH_ERR` to carry up to 3 identifiers (`alias.MyError.word`). Also fixed a real,
  previously-latent bug this surfaced: `struct var` had no owning-module reference at all (unlike
  `struct type`, which already had `owner`), so a cross-module call mangled its target under the
  *caller's* module by construction - added `struct var.owner`, set at collection time, and codegen now
  mangles a call target under the callee's own module.
  **Deliberately not done, to keep this change bounded** (all fall under the same "capital letter =
  exported" rule once implemented, so this is scope, not a rule change): bare cross-module *variable*
  reads with no call (`x = alias.SomeGlobal`) - genuinely riskier, since a bare `TOK_IDEN` primary can't
  gain a namespace without colliding with ordinary struct member access (`localVar.field`) at the grammar
  level, so it needs real semantic-level disambiguation, not just a grammar tweak; the `error` statement
  raising a *foreign* module's error type directly (`error alias.MyError.word`) - today you can declare a
  foreign error in your own signature and `try`/`catch` it, but not originate one yourself; and a module
  transitively re-exporting its own imports (so importing A also reaches through A's import of B). None
  of these came up while building the test suite that motivated this change, so none were forced - but
  they're the same "capital letter = exported" rule, just not yet wired into their own grammar slot.
- **Struct/array literal syntax + `:=` type inference.** Struct literals are `Type{v1, v2, ...}`
  (positional, in member-declaration order); array literals are `T[N][v1, ...]` (fixed) / `T[][v1, ...]`
  (dynamic/malloc'd) - two different delimiters now, not one shared one (see the parser-rewrite entry
  below for why `{...}` finally became safe to use for structs). Both are general expressions usable
  anywhere a value is needed, not just on the right of a var-decl; the type is always restated on the
  literal itself (`x mut int32[] = int32[][5, 6, 7]`, not `x mut int32[] = [5, 6, 7]`), chosen so a
  literal is self-describing and var-decl grammar needs no changes at all. `x := <literal>` infers `x`'s
  type entirely from an initializing literal (locals, for-loop init vars, and globals, via the existing
  two-phase resolve/check split); a non-literal initializer (`x := f()`) is a compile error
  (`TYPE_CANNOT_BE_INFERRED`), since only a literal is guaranteed to syntactically carry a full concrete
  type. `:=` is its own token (`TOK_ASS_INFER`), not reused `=`, because reusing `=` made `SNTX_VAR_DECL`
  and `SNTX_STMNT_ASSIGN` (e.g. `result = 100`) genuinely ambiguous with no way to prefer one over the
  other without a distinguishing token.
  **Struct literals moved from `[...]` to `{...}`** once the parser rewrite (below) made that safe: type
  names are now known to the parser (via `ScanTopLevelDecls`/`TypeNameLookup`), so `Type{` only ever
  commits to struct-literal parsing when `Type` is an actual declared type - an ordinary variable
  followed by `{` (`if x { y }`) is never affected, since a variable is never mistaken for a type. This
  also incidentally **closes the old "a literal needs at least two values" gap for structs**: `Wrapper{42}`
  (a genuine single-field struct literal) parses correctly now, and so does `Point{}` (a clean
  `WRONG_ARG_COUNT` semantic error instead of a confusing parse failure) - both were structurally
  impossible under the old bracket-only design. **Array literals deliberately kept `[...]` and their
  existing single-value gap unchanged** (`int32[1][5]` still misparses as indexing, `int32[][]` still
  doesn't work) - arrays were explicitly left alone, not swept into the same fix, so this asymmetry
  between struct and array literals is intentional, not an oversight.
  **Still out of scope:** `Type{}[...]` (heap-indirect struct construction - the first real `malloc` for a
  struct) is deliberately not implemented, since it needs the ownership/lifetime model from the
  ownership-scopes entry below to mean anything.
- **The parser is hand-written recursive descent, not a table-driven PEG engine.** Full rewrite: `syntax.c`
  used to store the grammar as data (strings like `"SNTX_NAME SNTX_ARR_SFX* TOK_SQUARE_O ..."`, interpreted
  by a generic matcher at parse time); it's now one function per grammar rule (`parseIf`, `parseVarDecl`,
  `parseExprPrimary`, ...), calling each other directly. Every real production compiler looked at as
  precedent (Clang, rustc, Go, Swift, and specifically Zig, which this project already takes style cues
  from) is hand-written recursive descent, not table-driven or generator-based, for exactly the reasons
  that motivated this: a generic engine has no way to embed a *semantic predicate* ("is this identifier a
  known type") without becoming stateful and losing its clean separation from semantic analysis, and it
  can only backtrack the way its own matching algorithm happens to allow - which is precisely what forced
  the earlier `{...}`→`[...]` delimiter change for literals (see git history) rather than fixing the real
  problem. A hand-written parser has neither limitation: a predicate is just a function call, and
  backtracking is exactly whatever `TokenSetCursor` save/restore the code chooses to do.
  **The tree shape (`struct syntax`/`struct syntaxPart`) is unchanged** - every hand-written `parseX`
  function builds the exact same node shape the old table engine would have for that rule (including two
  "invisible" wrapper nodes, `SNTX_TOP_DECL` and `SNTX_STMNT`, which exist only because the old engine gave
  *every* rule its own wrapper, even a pure alternation - semantic.c's whole tree-walking API
  (`partSntx`/`firstPartOfType`/`firstTokOfType`/...) needed zero changes as a result, and every existing
  test kept passing without touching semantic.c's structure. The one real simplification: the old
  11-rule precedence chain (`SNTX_EXPR_MUL` through `SNTX_EXPR_OR`, one grammar rule per precedence level)
  is gone, replaced by one `SNTX_EXPR_BINARY` node type built by standard precedence-climbing
  (`parseBinaryExpr`) - same precedence, same left-associativity, same output shape `buildBinChain` in
  semantic.c already expected (it was always generic over "however many same-precedence pairs are in this
  node," so it needed no changes either), just far less grammar to maintain.
  **Type-name awareness (what makes `Type{...}` safe) needs type names known *before* parsing, not after.**
  Previously, `ParseSyntax` parsed a whole file with zero awareness of declared names - all name
  collection happened in a separate, later semantic pass over the finished tree. Now each module does a
  cheap pre-pass first (`ScanTopLevelDecls` in syntax.c: brace-depth-tracked, skips function bodies
  entirely, just grabs top-level `type`/`error` names and `import` alias/path pairs) *before* its real
  parse runs, and `semaLoadModule` in semantic.c was restructured to do this scan - and recursively ensure
  every imported module has *also* been scanned - before calling the real parser, so `alias.Type{...}`
  resolves correctly too. Cyclic imports (runner.olang ↔ worker.olang) still work: each module scans its
  own names before recursing into its imports, so by the time a cyclic partner's scan reaches back to a
  module already being loaded, that module's own names are already populated.
  **Dead code removed as part of this:** `TokenTypeFromStr`/`tokenTypeStrCmp` in token.c (an ~80-line
  if-chain that existed only to parse the old grammar table's rule-definition strings back into token
  types - a hand-written parser's rules are just C code referencing token types directly, so this whole
  string round-trip is gone). `TokenStrFromType` (the reverse direction, enum → readable name) stays -
  still needed for "expected X" error messages, same as before.
  **Two pre-existing, unrelated gaps found while stress-testing this - both since resolved (see their own
  entries below):** vocab types had never had any way to construct/reference a value at all, and calling
  through a function-*valued* parameter/variable segfaulted at runtime. Neither was caused by the parser
  rewrite (confirmed: the first was never exercised by any test in the project's history, and the second
  is a codegen bug in a code path the rewrite never touched) - both were just newly discovered by it.
- **Vocab values: `Type.WORD`, communicating a fixed set and a selection from it - deliberately not a
  C-enum-style number.** Vocab types were declarable from the start but had no way to construct or read a
  value at all until now - completely inert, the same gap struct literals had before they existed.
  `Direction.NORTH` is parsed the same type-name-aware way struct literals are (see the parser-rewrite
  entry above): the parser commits to a vocab-value read only when the identifier before the dot is a
  *local* (never alias-qualified) known type, so it's never confused with a real cross-module reference
  like `sh.SomeType{...}` or an ordinary `localVar.field` member access. Semantically a vocab value is just
  its declared ordinal (`OperandVocabLiteral`, the same representation an error word already used), but
  deliberately not treated as a number anywhere: `TypeIsNumeric`/`TypeIsInt` (which gate every
  arithmetic/ordering/bitwise operator) don't include `BASETYPE_VOCAB`, so `<`, `+`, `&`, etc. are already
  rejected with the ordinary "operand must be a number" error, no vocab-specific restriction needed.
  Equality/inequality (`==`/`!=`, unrestricted by type) and `match`/`case` (structural `cgDeepEq`,
  type-agnostic) already worked generically for any type, so those needed no new code at all - constructing
  the value was the entire gap. This is a deliberate, narrower design than a C enum: a vocab type
  communicates a set and a selection from it for comparison and branching, not an underlying orderable/
  arithmetic number.
- **Fixed: calling through a function-valued parameter/variable segfaulted.** A bare read of a *global
  function* (`double` used as a value, as opposed to calling it directly) was being treated like reading
  any other global: load a value from its mangled address. That's correct for an actual global variable
  (a real storage slot), but a function symbol *is* its own address already (an LLVM `define`, not a
  `global`) - there's no separate slot to load through, so the generated code was reading the function's
  own machine code as if it were a stored pointer, corrupting the very first call through it. Reading a
  *local* variable or parameter that merely holds a function pointer (e.g. a callee's own parameter `f` in
  `func apply(f func(n int32) ? int32) ...)`) was never affected - that genuinely is a real storage slot.
  Fixed in `cgValue` (codegen.c): a bare read of a function that doesn't resolve to a local now returns
  its mangled address directly instead of loading through it.
- **Ownership scopes (design settled, implementation partial) - `scope` type + `{}`/`{name}` tagging.**
  Direction, chosen after a long design discussion: olang moves away from "no free/GC, deliberate leak
  forever" toward compiler-enforced (not runtime-checked, not manually-managed) memory *and* resource
  release, modeled on RAII rather than a tracing GC or Rust's full borrow checker. The core idea: every
  `{}`-heap-indirect value belongs to a *scope* - a nested, strictly FILO-closing region (implemented as a
  growable, chunked bump allocator: cheap to open, and since nothing inside it is ever freed
  individually, closing it is an O(1) bulk operation, not a general malloc/free). A bare `{}` (unchanged
  syntax) means "this value's own private scope, closed when its own call returns"; `{name}` (new) tags a
  value to an explicitly-passed `scope`-typed parameter instead, so it can escape into the *caller's*
  scope rather than dying with the callee. Critically, a callee's own private allocations and whatever it
  writes into a passed-in scope are never the same physical arena - each scope is its own independent
  chunk-list, so a callee popping its own scope at return can never interfere with something it wrote into
  a scope it was handed, regardless of allocation order. `scope` is a new, restricted builtin type
  (lowercase, like `int32`/`bool`) that mirrors how error types are restricted: it may only ever be a
  function parameter's type (`s scope`) - never a struct field, a return type on its own, an ordinary
  variable's type, or constructible via any literal - so nothing can "instantiate" one out of thin air,
  the same way you can't hold an `error`-typed value in a plain variable. `resolveScopeTag`/
  `isScopeTypeRef` in semantic.c implement this via their own dedicated resolution path, never through
  the general `resolveTypeExpr`/`resolveTypeRef` used for ordinary types (exactly like
  `resolveErrorTypeName` is separate from those too) - so `scope` structurally cannot leak into a
  position it shouldn't. A named tag currently resolves only against the current function's own parameter
  list (earlier params for another param's type, the full list for the return type or a local var-decl's
  type) - not against struct fields.
  **`own` - the root-scope answer.** A new keyword, usable as an ordinary expression anywhere a
  `scope`-typed value is expected, evaluating to "the enclosing function's own private scope" - the same
  scope bare `{}` already implicitly means, just now nameable so it can be *passed* (e.g.
  `makeNode(5, own)`), not just used locally. Deliberately not `self`/`this`: those read as "the current
  object instance" in every language that has them, and olang has no objects/methods - `own` reads as
  what it actually is. `main` and every `test { }` block need no special-casing to get a first scope:
  they already have their own implicit private one like any function does, and can now hand it to a
  callee via `own`, exactly like any other function would. This stays safe for free, not because of new
  checking: `own` is just another *source* of a `scope`-typed value alongside a declared parameter, and
  every existing restriction (`scope` can't be a return type, a struct field, or an ordinary variable's
  type) applies to it identically - `return own` and `x mut scope = own` are rejected the same way
  `return s`/`x mut scope = s` already are, so there's no new way for a scope to escape its origin.
  `OperandOwn` in semantic.c requires `ctx->hasOwnScope` (true inside a function body or a `test { }`
  block, false for a global initializer, which has no enclosing scope at all).
  **What's implemented:** the grammar (`{}` optionally carries a `TOK_IDEN`), `scope` as a parameter-only
  type, `own` as a primary expression, and resolving `{name}` tags in parameter types, return types, and
  local var-decl types, with the resolved parameter recorded on `struct type.scopeParam` in semantic.h.
  **A real, pre-existing bug this surfaced and fixed, unrelated to the scope design itself:** a plain
  struct literal (structMAlloc false) is allowed by the type checker to fit a `{}`-heap-indirect target
  (structMAlloc true) - `TypeIsSame` deliberately ignores structMAlloc for structs - but codegen was never
  actually promoting that case to a heap allocation at any of the three places it can happen (a var-decl,
  a call argument, a return value): it just aliased the literal's own about-to-be-gone stack storage,
  producing a dangling pointer the instant that stack frame was gone. Silent and easy to miss in a
  same-function, never-crosses-a-return test; a hard "value doesn't match function result type" LLVM
  verifier error for the return case, and a real segfault for the call-argument case, once actually
  exercised. Fixed in `cgStoreInto`/`cgBoundaryValue` (codegen.c): both now malloc-and-copy when the
  target wants heap-indirect and the source is a plain value, using the *target's* declared type rather
  than the source operand's own type to decide.
  **The real arena/chunk-pool allocator is now implemented** (`emitScopeRuntime` in codegen.c, hand-emitted
  LLVM IR alongside `__olang_assert_fail` and the other runtime support - no separate C runtime file).
  `%olang.chunk = { ptr next, i64 used, i64 cap }` with `cap` bytes of data immediately following the
  header; `%olang.scope = { ptr head }`, lazily null until first use. `__olang_scope_alloc` bumps a
  cursor in the current chunk, or grabs one more (from a single global free-list, `@__olang_chunk_pool`,
  before ever calling `malloc`) and links it on when the current one doesn't have room - nothing is ever
  freed individually, matching the design. `__olang_scope_close` splices a scope's *entire* chunk list
  onto the free pool in one O(1) op (after an O(chunks-in-this-scope) walk to find its own tail) - the
  next scope anywhere in the program that needs a chunk can reuse it without touching the OS. Every real
  function and every `test { }` block gets its own private `%olang.scope` alloca at entry (cheap even
  when unused - lazy, and `-O3` cleans up the rest); `own` now evaluates to that alloca instead of a
  placeholder; `cgStoreInto`/`cgBoundaryValue`'s malloc-promotion branches now call
  `__olang_scope_alloc(cgResolveScope(...), size)` instead of bare `malloc`; `cgCloseOwnScope` is called
  right before every real `ret` a function can hit (explicit `return`, `error`, the try/catch error-
  propagation path, and the implicit fell-off-the-end case) - stress-tested with thousands of allocations
  across many scope open/close cycles, including allocations larger than one default (4096-byte) chunk.
  **New restriction this required, not just an implementation detail: a function's return type can never
  be a bare `{}` (untagged) heap-indirect struct** (`BARE_SCOPE_RETURN_TYPE`, checked once in
  `resolveFuncSig`, which covers every return statement in that function for free). Before the real
  allocator existed this was harmless (plain `malloc`, nothing ever got reclaimed); the moment "own"'s
  scope actually closes at return, a value tagged to it would already be dangling before the caller ever
  saw it - the function's own private scope closes at the exact point it returns. Return something tagged
  to an explicitly-*passed* scope instead (`{s}`, e.g. `func f(s scope) ? Node{s}`), same as escaping to a
  caller always required. This does **not** catch a bare `{}` field nested inside a plain (non-heap-
  indirect) struct that then gets returned - that's the same still-open scope-generics gap below, not
  attempted here.
  **A second, separate, more severe pre-existing bug found and fixed while stress-testing this:**
  `TypeGetSize`'s fixed-array case (`getArraySize` in semantic.c) computed only *one element's* size,
  completely ignoring the array's length - so any struct or array containing a fixed-size array field was
  under-sized at every point `TypeGetSize` drives a `malloc`/`__olang_scope_alloc` call, a real heap
  buffer overflow. Invisible before this session (nothing sized a struct's malloc off `TypeGetSize` at all
  until the boundary-crossing fix earlier in this file's history, and that fix's own test structs happened
  to have no array fields); caught here because a stress test finally used a struct with one. Fixed to
  multiply by the element count.
  **What's deliberately still not implemented, and why each is its own next step:**
  (1) **No scope-generic struct types** - a struct field like `next Node{s}` needs the *type itself* to be
  generic over which scope its self-referential fields belong to (`type Node<s scope> struct {...}`,
  roughly), which needs a real generics mechanism olang doesn't have in any form yet. Struct fields
  currently only accept a bare `{}` (private-scope); an explicit `{name}` on a struct field correctly
  fails with `UNKNOWN_SCOPE`, and a plain struct wrapping a bare-`{}` field that then escapes via return
  is the one dangling-pointer shape the allocator can't yet catch (see above) - both are the same
  underlying gap. (2) **Known, deliberate v1 simplifications, not bugs:** a failed test's scope never
  closes (the assert-failure longjmp bypasses normal control flow entirely) - its chunks just aren't
  returned to the pool for reuse, nothing unsafe about it, just slightly less reuse on a failing run; and
  `__olang_new_chunk` only checks the free pool's *head* chunk for a fit before falling back to `malloc` -
  a deliberate O(1) tradeoff, since the pool is expected to be mostly-uniform default-sized chunks.
  **Not resolved by any of this:** whether `{}`/no-`{}` has the right direction at all (see the next
  entry) - this whole design was built on top of the *current* "plain = value, `{}` = heap-indirect"
  convention rather than settling that question.
- **Constructors and destructors - the only two special blocks a struct type can declare.** General
  `Type.funcName` OOP-style methods (callable as `instance.funcName(...)`) were discussed and deliberately
  dropped in favor of just these two, specifically to sidestep the field/method name-collision question a
  general mechanism would have raised (a method sharing a struct's own field name would be ambiguous at
  `instance.name` - not an issue when there are only ever two, compiler-recognized special blocks, never a
  user-nameable one). Grammar: `type Name struct(params) ErrA + ErrB? { fields } destruct { stmts }?` -
  both the error list and the `destruct` block are optional; `struct(` (an open-paren immediately after
  `struct`) is what commits `parseTypeDecl` to this whole shape instead of a plain `struct { ... }` body,
  so the two forms never collide.
  **Fields.** Each entry in `{ fields }` is one of three shapes, chosen per-field: a bare pun (`n` alone -
  binds directly to a same-named constructor parameter, type inferred from it, no separate declaration);
  an ordinary explicit var-decl (`v mut int32 = n * 2`, `path FileHandle` - same grammar a local var-decl
  already uses, `mut` included, never silently inferring a type the way the pun case does); or `:=`
  inference (`computed := n + 1`, type read off the required-to-be-literal rhs, same rule `:=` already
  has for locals/globals). A field with an explicit type but no `=` at all (`path FileHandle` alone) has
  no value to come from and is a compile error (`CTOR_FIELD_NOT_INITIALIZED`) - so is a bare name that
  doesn't match any constructor parameter. This was a deliberate walk-back from an earlier draft where
  every field's type was always inferred: fields follow the *same* explicit-unless-`:=` convention as
  every other declaration in the language, no special-cased inference path of its own.
  **`Type(args)` needs no dedicated call path at all.** A constructor is represented as an ordinary
  synthetic `BASETYPE_FUNC` var (`struct type.ctorFunc`, params = the constructor's own declared parameters,
  errors = its declared error union, retType = the struct's own plain value type) registered in the
  module's var list under an internal name (`TypeName$ctor` - `$` is never producible by the tokenizer's
  identifier rule, so this can never collide with, or be typed as, a real user name, the same trick
  codegen's own `@m0_name` mangled symbols already rely on). `resolveCallTarget` falls back to this
  synthetic var when a bare/aliased name isn't a variable but does name a type with a constructor - from
  that point on, argument checking, `UNHANDLED_FALLIBLE_CALL`/`try`/`catch` coverage, and codegen's actual
  call are *all* the exact same generic machinery every other function call already goes through, with
  zero constructor-specific code in any of them. **Once a type declares a constructor, the old positional
  `Type{...}` literal is rejected for it** (`TYPE_REQUIRES_CONSTRUCTOR_CALL`) - otherwise the constructor's
  own logic (validation, fallible field initializers) could be silently bypassed, making declaring one
  pointless. A constructor's *body* is itself just one synthesized statement - `return
  Type{field1Value, field2Value, ...}` (built in pass 3, once the constructor's own parameters are pushed
  into scope) - reusing `cgFunction`/`cgRet`/`OperandStructLiteral`'s existing aggregate-literal codegen
  wholesale; there is no constructor-specific codegen at all beyond this.
  **`destruct { }` has no error union of its own - a destructor can never propagate a failure to anyone.**
  Same rule a `test { }` block already has (`ctx.func` stays `NULL` while checking the body), so the exact
  same "every fallible call must be fully caught right here or it's a compile error" enforcement
  (`checkTrySuperset`/`buildTryCatchStmnt`) applies with no new logic. This isn't a narrower version of the
  general rule, it's a real necessity: a destructor is never called by user code, it's injected by the
  compiler at a `ret` or a scope-close, so there's no meaningful "caller" to hand a failure to, and a single
  scope-close can fire many queued destructors in one batch - same reasoning C++'s implicitly-`noexcept`
  destructors and Rust's `Drop::drop` (which returns nothing at all) both landed on. Bare field names inside
  `destruct { }` (e.g. `closeHandle(handle)`) read as that field directly - no `self`/`this` prefix, on
  purpose, consistent with `own` never being called `self` either (see above) - implemented by recognizing,
  in `buildPrimary`'s bare-identifier case, an identifier that isn't a real local but does name a field of
  `ctx.destructSelfVar`'s type, and building `OperandMember` on it instead of failing with `UNKNOWN_VAR`.
  **Two different destructor trigger points, matching the two places a struct value can actually live:**
  (1) A **plain (non-`{}`) local** has its destructor called right before every real `ret` a function/test
  can hit - `cgRunLocalDestructors`, walking the codegen scope chain innermost-first (LIFO, mirroring a
  stack unwind) and invoked from the exact same injection points `cgCloseOwnScope` already uses (explicit
  return, the try/catch error-propagation path, and the implicit fell-off-the-end case). (2) A
  **`{}`-heap-indirect instance** instead gets its destructor called when its *owning scope* closes, not
  when the local holding it goes out of scope (it may well outlive that) - registered with that scope at
  the exact point it's heap-allocated (`__olang_scope_register_dtor`, called from both malloc-promotion
  sites in codegen.c right after the `__olang_scope_alloc` call) and walked LIFO, then freed, in
  `__olang_scope_close`, before that scope's chunks are spliced back to the free pool. `%olang.scope`
  grew a second field for this (`{ ptr chunkHead, ptr dtorListHead }`) - a small, separate
  `@malloc`/`@free`'d linked list, deliberately *not* carved out of the scope's own bump arena, to keep it
  independent of the arena's own alloc/close bookkeeping. **Real, deliberate cost this adds:** closing a
  scope is no longer strictly O(1) once it holds destructor-bearing instances - it becomes
  O(destructor-bearing objects in that scope) to walk and call them. A scope holding only plain data (the
  common case, e.g. the existing `sumManyPoints` stress test) is completely unaffected, zero added
  bookkeeping - only types that actually declare `destruct { }` register anything at all.
  **A real bug found and fixed while building this:** a destructor's own `.self` parameter necessarily has
  the same type as the instance it's running on (`hasDestruct` true, same `destructFunc`) - without an
  explicit guard, generating that destructor's own body would see `.self` as "a local needing its own
  destructor call" and recurse into calling itself on itself. Fixed by having `cgRunLocalDestructors` skip
  any local whose type's own `destructFunc` is the function currently being generated
  (`l->type.destructFunc == ctx->curFunc`) - the only local that can ever be true for is a destructor's own
  self-parameter, so this adds no false skips anywhere else.
  **Known limitation, not attempted here:** no move semantics - a destructor-bearing local that is itself
  the value being returned out of its own function still gets destructed before the caller ever sees it
  (`cgRunLocalDestructors` runs before the return value is handed back), which is a real footgun for that
  specific shape. Not a concern for the motivating file-handle case (used locally, never returned by value),
  and not addressed here since move semantics were never part of the discussion that led to this feature.

## Open questions (settle before implementing further - don't silently "fix" these)

- **What `{}` even means is disputed - current implementation may have it backwards.** As implemented
  and described under "Value vs. reference semantics" above, plain `Type` is embedded/by-value and
  `Type{}` is heap-indirect/by-reference. The user's original mental model was closer to the opposite:
  `{}` meaning "laid out in memory" (contiguous/embedded) and no `{}` meaning "floating" (a reference) -
  roughly inverted from what's built. Not resolved either way yet - explicitly parked, not to be
  silently changed in either direction. Revisit once the ownership/lifetime model above is designed,
  since "what does `{}` mean" and "who owns/frees a `{}` allocation" are really the same question.
  `{}` now has a *third* overloaded meaning too (struct-literal value syntax, `Point{1, 2}`, unrelated to
  either the heap-indirection marker or a block) - worth keeping in mind if this ever gets resolved, since
  there'll be three uses of the same two characters to make sense of, not two.
- **Struct/array literal syntax: array literal syntax is settled; struct literals moved to `{...}`.** The
  user explicitly confirmed array literals ("fine like they are") and gave the struct-literal delimiter
  change as a direct instruction - both are implemented as described in the "Settled decisions" entry
  above, and that instruction reads as continued buy-in on the literal-expression mechanism itself, not
  renewed doubt about it. What's still genuinely open is narrower than before: not "should literals like
  this exist," but "is `{...}` this pinned as *the* answer for structs" - still worth checking before
  building further features on top of it as permanent without confirming.

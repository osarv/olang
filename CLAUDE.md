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
  through a `{}` indirection). **Briefly spelled `&`/`&name` instead, then reverted back to
  `{}`/`{name}`** - see the dedicated "reference syntax: `{}` vs `&`" entry near the end of this
  section for the full round trip and why `{}` was kept.
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
  individually, closing it is an O(1) bulk operation, not a general malloc/free). A bare `{}` means "this
  value's own private scope, closed when its own call returns"; `{name}` tags a
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
  type) - not against struct fields, except for a constructor's own parameter list (see the
  scope-generic-struct-fields entry near the end of this section).
  **`own` - the root-scope answer.** A new keyword, usable as an ordinary expression anywhere a
  `scope`-typed value is expected, evaluating to "the enclosing function's own private scope" - the same
  scope bare `{}` already implicitly means, just now nameable so it can be *passed* (e.g.
  `makeNode(5, own)`), not just used locally. Deliberately not `self`/`this`: those read as "the current
  object instance" in every language that has them, and olang has no general OOP methods (see the
  constructors/destructors entry below) - `own` reads as what it actually is. `main` and every
  `test { }` block need no special-casing to get a first scope: they already have their own implicit
  private one like any function does, and can now hand it to a callee via `own`, exactly like any other
  function would. This stays safe for free, not because of new checking: `own` is just another *source*
  of a `scope`-typed value alongside a declared parameter, and every existing restriction (`scope` can't
  be a return type, a struct field, or an ordinary variable's type) applies to it identically - `return
  own` and `x mut scope = own` are rejected the same way `return s`/`x mut scope = s` already are, so
  there's no new way for a scope to escape its origin. `OperandOwn` in semantic.c requires
  `ctx->hasOwnScope` (true inside a function body or a `test { }` block, false for a global initializer,
  which has no enclosing scope at all).
  **What's implemented:** the grammar (`{}` optionally carrying a `TOK_IDEN`), `scope` as a
  parameter-only type, `own` as a primary expression, and resolving `{name}` tags in parameter types,
  return types, and local var-decl types, with the resolved parameter recorded on
  `struct type.scopeParam` in semantic.h.
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
  header; `%olang.scope = { ptr chunkHead, ptr dtorListHead }` (the second field added later - see the
  constructors/destructors entry below), lazily null until first use. `__olang_scope_alloc` bumps a
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
  (1) **No scope-generic struct types for *plain* structs specifically** - narrower than originally
  written here. A struct field like `next Node{s}` needing the *type itself* to be generic over which
  scope its self-referential fields belong to turns out **not to need a new generics mechanism at all for
  a constructor-bearing type** - see the "constructors already give struct fields a real, type-level
  scope" entry below, a real discovery, not something designed in from the start. What's still open is
  narrower: a **plain** `type X struct { ... }` (no `struct(params)`) has no parameter list at all to
  resolve a field's `{name}` tag against, so it's still limited to a bare `{}` (private-scope); an
  explicit `{name}` there still correctly fails with `UNKNOWN_SCOPE`. **A plain struct wrapping a
  bare-`{}` field that then escapes via *return* is now rejected at compile time** instead of silently
  dangling - see `NESTED_BARE_SCOPE_RETURN_TYPE` near the end of this section. (2) **Known, deliberate v1
  simplifications, not bugs:** a failed test's scope never
  closes (the assert-failure longjmp bypasses normal control flow entirely) - its chunks just aren't
  returned to the pool for reuse, nothing unsafe about it, just slightly less reuse on a failing run; and
  `__olang_new_chunk` only checks the free pool's *head* chunk for a fit before falling back to `malloc` -
  a deliberate O(1) tradeoff, since the pool is expected to be mostly-uniform default-sized chunks.
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
- **A bare `{}` struct field assigned through a scope-tagged base now inherits that base's own scope,
  instead of always defaulting to whatever function happens to be executing.** Narrow fix, not the general
  one (see the scope-generic-struct-types gap above, which this doesn't close): a struct field can't carry
  its own `{name}` tag, so a bare `{}` field's promoted literal used to always resolve via
  `cgResolveScope(ctx, NULL)` - "this function's own private scope" - regardless of which scope the
  *containing instance* actually lives in. For a self-referential struct (a linked-list node, say) written
  from a different function than the one that allocated the container, that's a real dangling pointer the
  instant the writing function returns. Fixed only for the direct, one-hop case: in `cgAssign`, when the
  assignment target is `base.field` and `base`'s own type is itself `{}`-heap-indirect, the field's
  malloc-promotion now resolves its scope from `base`'s own declared scope tag (`cgResolveScope(ctx,
  base->type.scopeParam)`) instead of the function's own - so `base` must be tagged to a real, named,
  passed-in scope (`Type{s}`) for this to help; a bare-`{}` base has no portable scope identity of its own
  to hand down (asking "whatever function is executing" the *same* question just gives the same wrong
  answer one level removed). **Multi-hop chains (`a.b.c.field = ...`) turn out to already work, confirmed
  by test - not a separate gap**: the fix reads `scopeParam` off whatever type the immediate base operand
  already has, regardless of how deep an expression produced it, so any chain where every intermediate
  field carries a real `{name}` tag resolves correctly with no further changes. The part that's still
  unhandled is narrower than "multi-hop" suggested: a chain where an *intermediate* field is itself a bare
  `{}` (no name to read `scopeParam` off at all) - which is really the same still-open scope-generic-struct-
  fields gap, not a distinct bug, and needs that fix (making bare `{}` a real type-level default) rather
  than anything specific to this one. A plain (embedded, non-`{}`) base remains genuinely unhandled here
  too, for the same reason. New
  `cgStoreInto`/`cgRegisterDtorIfNeeded` parameter: an optional `scopeOverride`, NULL at every other call
  site (var-decls, params, returns, aggregate-literal fields), all of which already resolve correctly off
  their own declared type.
  **A separate, more severe bug found and fixed while building and testing this:** `getStructSize` computed
  a struct's heap-allocation byte count as a naive sum of its fields' own sizes, with no alignment/padding
  at all - correct only when every field happens to share the same size/alignment (every existing struct
  before this, e.g. `Point { x int32, y int32 }`). The moment a struct mixes field sizes (e.g. `{ tag
  int32, inner Point{} }` - a 4-byte field followed by an 8-byte-aligned pointer field), LLVM's own default
  (unpacked) struct layout inserts real padding that `getStructSize` never accounted for - `TypeGetSize`
  under-counted by exactly the padding, so every `@malloc`/`__olang_scope_alloc` call sized by it allocated
  too few bytes, and the subsequent full-struct `store` silently overran the buffer into adjacent memory.
  Invisible until now because no existing struct mixed field sizes while also being heap-promoted; surfaced
  immediately by the test built for the fix above (`{ i32, ptr }` - the smallest struct shape that
  triggers x86_64 SysV padding). Fixed with a real `TypeGetAlign` (matching LLVM's own natural-alignment
  rule per base type) and a proper `getStructSize` that pads each field up to its own alignment and rounds
  the final size up to the whole struct's own alignment - the standard C-ABI layout algorithm, matching
  exactly what LLVM's own non-packed `{ ... }` aggregates already do, so the two now agree.
- **Constructors already give struct fields a real, type-level scope - no generics syntax needed.** A real
  discovery, not something designed in on purpose: a constructor field's type is resolved via
  `resolveTypeExpr(mod, typeExprNode, &ctorParams)` (`resolveStructCtorInto` in semantic.c) - the exact
  same call already used to let a later *parameter* reference an earlier one (`func f(s scope, p
  Point{s})`). Since a field's type resolution goes through that same path, a field can *already* carry a
  real `{name}` tag naming one of the constructor's own scope parameters (`type Box struct(s scope, inner
  Point{s}) { inner }`) - a genuine, per-instance, type-level scope identity, not the value-level
  per-assignment-site inference the earlier `cgAssign` fix uses. This resolves the concern that motivated
  reaching for real generics: the value being stored is checked against the *field's own declared type*
  (`Point{s}`) at construction time, the same as any ordinary parameter - consistent for every instance of
  that type, not inferred fresh at each write. **Only works for constructor-bearing types** (a plain
  struct has no parameter list to resolve `{name}` against at all - see the narrowed gap above).
  **A real, general bug found and fixed while confirming this actually works end-to-end:** any parameter
  whose type names an *earlier parameter of the same signature* as its scope tag - not specific to
  constructors, structs, or even fields; the parameter case above is a plain example of the exact same
  thing - crashed at every call site that needed to malloc-promote a plain literal into it
  (`func f(s scope, p Point{s})`, called as `f(own, Point{1,2})`). The tag's name (`s`) only has meaning
  *inside the callee's own body*; at the call site, `cgBoundaryValue`'s malloc-promotion branch tried to
  resolve it via the normal local-variable lookup path, found nothing in the *caller's* own scope chain,
  and fell through to `cgLookupVarAddr`'s "must be a global" fallback, which crashed on a param's `owner`
  being `NULL` (correctly - params never have one). Fixed with `cgResolveParamScopeOverride` in codegen.c:
  when a parameter's own scope tag names another parameter of the *same* call, evaluate the *caller's own
  argument expression* for that parameter index directly, instead of trying to look the name up as a
  local. New optional `scopeOverride` parameter threaded through `cgBoundaryValue`, used at both of
  `cgFuncCall`'s and `cgTryCatch`'s own argument-building loops; `cgRet`'s own call (return-value
  promotion, which always happens *inside* the callee's own body, where the referenced parameter genuinely
  is a real local) is unaffected and passes `NULL`.
- **Reference syntax: `{}` vs `&` - tried `&`, reverted back to `{}`.** Briefly moved the heap-indirection
  marker from a trailing `{}`/`{name}` to `&`/`&name` (own grammar/semantic changes, all three `.olang`
  test files migrated) specifically to stop sharing a delimiter with struct-literal value syntax
  (`Point{1, 2}`). A long follow-up design discussion then worked through what a static scope-safety
  checker would actually need, and landed on a real conclusion along the way: **a plain/embedded value
  never independently needs its own scope tag at all** - it has no separate allocation to tag, its
  "scope" is trivially wherever its container already lives. So "is this a reference" and "which scope"
  were never actually separable into two orthogonal markers (an idea seriously explored mid-discussion,
  under a proposed `Type{scope}&` split) - they always travel together as one fact, meaning one marker
  carrying both (bare = own scope, named = an explicit other one) is the *minimal* correct design, not an
  arbitrary choice between two equally-valid options. With the design settled as "one marker, both jobs,"
  the remaining question was purely spelling, and `{}`/`{name}` was chosen over `&`/`&name` - reverted in
  `parseTypeRef` (syntax.c, back to `TOK_CURLY_O`/`TOK_IDEN?`/`TOK_CURLY_C`) and
  `resolveTypeRefBase`/`isScopeTypeRef` (semantic.c, back to `TOK_CURLY_O` checks), and all three
  `.olang` test files migrated back. This knowingly re-accepts `{}` sharing a delimiter with struct-literal
  syntax (`Point{1, 2}`) and an unrelated code block, three meanings on two characters, the exact overload
  the `&` move existed to avoid - a deliberate tradeoff for the preferred spelling, not an oversight.
  **Other conclusions from the same discussion, worth keeping even though none required a code change:**
  scope identity has to be tied to the *type* to be checkable at all (a variable's scope is only ever a
  consequence of its declared type; a per-literal/per-construction-site scope, which is what the
  `cgAssign`/`cgResolveParamScopeOverride` patches above actually implement, can't be checked across a
  function boundary, which is exactly why those are narrow runtime-correctness patches and not a
  foundation a real checker could be built on). A struct field's own storage never outlives its
  containing struct, but what it *references* may - the reference and the pointee have independent
  lifetimes on purpose. Only structs and arrays are referenceable - primitives are always by value, no
  `int32{s}`, unchanged from what's already true. Reference-vs-value is decided *solely* by presence of
  the marker, never as a free calling-convention/ABI choice: a plain (non-`{}`) parameter must behave as
  an exclusive copy, so the compiler can only implement it via a hidden pointer in the specific case where
  it can prove the callee never mutates it (mutation through a hidden pointer would leak back to the
  caller, breaking value semantics) - otherwise it must actually copy. None of this list is implemented
  as a checker yet; it's the groundwork such a checker would need to be built on.
- **A plain struct wrapping a bare `{}` field is now rejected at the signature level if it's ever
  returned by value.** The transitive counterpart to `BARE_SCOPE_RETURN_TYPE`: that check only ever
  looked at the return type *itself* (`? Point{}` directly), not whether a *plain* return type (`?
  Wrapper`, no `{}` at all) embeds a bare `{}` field somewhere inside its own fields - a real dangling
  shape whenever the function is the one allocating that field into its own (about-to-close) `own` scope
  before handing the wrapping value back. New `structContainsBareScopeField` (semantic.c) walks a
  struct's fields recursively through plain/embedded members only - never infinite, since a plain struct
  can't recursively embed itself, that's exactly what `{}` exists to break - and deliberately does *not*
  chase into a field that already carries an explicit `{name}` tag, since that field's lifetime is
  already an independently-checked fact tied to its own name, unrelated to whichever function happens to
  be returning it. Checked once in `resolveFuncSig`, same scope as `BARE_SCOPE_RETURN_TYPE` itself
  (signature-level only, covers every return statement in the function for free). **Deliberately
  conservative, not a targeted fix for exactly the unsound case:** this also rejects some sound code - a
  function that only ever passes an already-correctly-scoped value straight through (never allocating
  into the bare field itself) would actually be fine at runtime, but nothing short of real dataflow/
  escape analysis (the eventual static checker, not attempted here) can tell that case apart from the
  unsound one using the signature alone. Consistent with the broader conclusion from the scope-checker
  discussion: anything crossing a function boundary needs a type-level, named scope to be checkable at
  all, so requiring an explicit `{name}` on any field that's going to be involved in a value crossing a
  boundary is the correct (if occasionally stricter-than-necessary) rule until real escape analysis
  exists to relax it.
- **`{}`/`{name}` now apply to arrays too - reusing `structMAlloc`/`scopeParam` generically rather than
  building a parallel mechanism.** Only the fixed-size case is wired up so far (see "deliberately not
  attempted" below for what isn't). `[N]` vs `[]` answers "is the size known at compile time"; `{}`/
  `{name}` (unchanged from structs) answers "is this embedded or a reference, and if so which scope" -
  the same two orthogonal questions as a struct, with one extra axis (size) that only matters for arrays.
  `int32[3]{}` is a bare pointer to `[3 x i32]`, heap-allocated via the same scope-arena machinery a
  struct reference already uses (`__olang_scope_alloc`, malloc-promotion, `cgResolveParamScopeOverride`
  for a parameter whose scope tag names an earlier parameter) - none of that machinery needed to change,
  just to stop assuming `BASETYPE_STRUCT` was the only thing that could ever be `structMAlloc`.
  **Array-suffix wrapping order flipped: the first-written dimension is now the outer one.**
  `int32[2][3]` is "an array of 2, each element an `int32[3]`" - previously (never actually exercised by
  any test until this) it wrapped the opposite way. `applyArraySuffixes` (semantic.c) now walks its
  suffixes right-to-left when wrapping so the first-parsed one ends up outermost, matching how the
  dimensions read left-to-right. No grammar change was needed for any of this - `parseTypeRef`'s rule was
  already `NAME ARR_SFX* (CURLY_O IDEN? CURLY_C)?`, array suffixes already coming before the marker.
  **The marker's *application point* moved, though - to after array-suffix wrapping, not just to arrays
  existing.** `resolveTypeRefBase` used to read and apply the marker itself, forcing `bType` to
  `BASETYPE_STRUCT` unconditionally; now it only decides (via a flat `hasTokOfType` check, independent of
  array suffixes) whether to eagerly resolve the named type - still necessary to skip for a
  self-referential struct, directly or through an array of itself. The marker's actual effect
  (`structMAlloc`/`scopeParam`) moved into a new `applyRefMarker`, called *after* `applyArraySuffixes`, so
  it governs the reference as a whole ("a reference to a `[3]Point`") rather than silently attaching to
  the element type underneath an array suffix the way it would have before (a real, if never-yet-
  triggered, bug in the old ordering). `applyRefMarker` also now rejects `{}` on a primitive type
  (`INVALID_REFERENCE_TARGET`) - previously silently ignored for a vanilla type like `int32{}`, since
  `resolveTypeRefBase`'s vanilla-type branch never looked at the marker at all.
  **`len(arr)` - unlike C, an olang array always carries its own length.** A compiler builtin
  (`OPERATION_LEN`/`OperandLen` in semantic.c, intercepted by name in the "NAME(args)" call-building path
  before ordinary var/constructor lookup - not a real function, since no signature can be generic over
  "any array type" without a generics mechanism this language doesn't have), not a lexer keyword, so it's
  only ever special-cased in call position. Returns `int32`, not `int64`, even though the runtime slice's
  own length field is `i64` - deliberately, since there's currently no way to *write* an `int64` literal
  at all (bare integer literals are always `int32`, no widening path), which would make an
  `int64`-returning `len()` awkward to use anywhere near the rest of the language for no real benefit (an
  array length never needs `int64`'s extra range in practice); the dynamic case truncates in `cgLen`. A
  compile-time-known dimension (embedded, or a fixed-size `{}` reference) costs nothing at runtime - the
  constant is substituted directly; only a genuinely dynamic (`T[]`) array reads it from the runtime
  slice. Always evaluates its argument (for any side effects a non-trivial expression producing the array
  might have) even when the resulting value goes unused because the dimension turned out to be constant.
  **Two real bugs found and fixed while building this, same class as two earlier ones this session:**
  (1) `getArraySize` returned `PTR_SIZE` (8) for a dynamic array's own value size - but a dynamic array
  VALUE is the full `{ i64 len, ptr data }` slice, 16 bytes, not just the pointer. Any struct embedding a
  dynamic-array field that then got heap-promoted would have under-allocated by 8 bytes and corrupted
  adjacent memory - invisible until now because nothing exercised a struct with a dynamic-array field
  being heap-promoted before. Fixed to return 16. (2) `cgIndexAddr`'s embedded/fixed-array branch computed
  its GEP pointee type via `llvmType(base->type, ...)` - correct when arrays could never be `structMAlloc`,
  but once they can, that call now returns `"ptr"` instead of the real `[N x ElemT]` aggregate shape GEP
  actually needs, producing invalid IR for any fixed-size array reference. Fixed by GEP-ing off a copy of
  the type with `structMAlloc` forced false (mirroring how `structAggSpelling` already spells a struct's
  aggregate layout "regardless of structMAlloc") - the pointer value itself was already correct either way
  (`cgValue`'s by-ref convention hands back the embedded array's own address when embedded, and
  `typeIsByRef` is now false for a `structMAlloc` array, so `cgValue` there instead loads and hands back
  the already-heap-allocated pointer directly - same GEP shape needed in both cases, only the pointee-type
  string was wrong).
  **Deliberately not attempted here, and why each is its own next step:** (1) **A genuinely dynamic
  (`T[]{}`) array reference isn't scope-tracked yet** - `cgAggregateLiteral`'s dynamic-array branch still
  always calls a bare `@malloc`, unscoped, regardless of what `{}`/`{name}` the target type carries;
  marking a dynamic array `{}` currently type-checks but has no effect. This needs threading a scope
  context into literal construction itself (the allocation happens *inside* building the literal, not as
  a promotion step afterward the way a struct or fixed array's malloc-promotion works), a different
  mechanism from anything built so far, not attempted here to avoid rushing a leak or corruption bug into
  exactly the kind of code this session has spent so much effort hardening. (2) **Embedded (`T[]`, no
  `{}`) size inference from an assigning literal isn't implemented** - `x mut int32[] = int32[3][1,2,3]`
  inferring a fixed size of 3 for `x`'s own type. Bare `T[]` still means exactly what it meant before this
  session's changes (dynamic, unscoped, raw `@malloc`) - not reinterpreted, to avoid a breaking change
  layered on top of everything else here at once. (3) **Jagged (independently-sized-per-row) 2D arrays
  aren't supported** - the single trailing `{}`/`{name}` marker applies once, to the whole type, so there's
  no way to mark an *inner* array level as independently referenced; only fully-rectangular multi-
  dimensional arrays (every level either fully fixed or, at most, the outermost level dynamic) are
  expressible with what exists today. (4) **The one-hop `cgAssign` field-scope override doesn't extend to
  array elements** - `arr[i] = ...` where `arr`'s own element type is a bare `{}` field-like reference
  still resolves via `ctx->ownScopeSlot`, the same gap struct fields had before their own one-hop fix;
  same underlying cause, not extended to `OPERATION_INDEX` here. (5) **Arrays of destructor-bearing struct
  elements don't register per-element destructors** - `cgRegisterDtorIfNeeded` only ever fires at a
  struct's own heap-promotion site, never walked across an array's elements.

- **A bare `{}` field's scope is now a real, comprehensively-applied rule: "same as whatever contains it" -
  not just the narrow one-hop `cgAssign` value-level patch from before.** The old patch only handled
  `base.field = literal` where `base` was itself a plain local var with a `{}`-heap-indirect type - it left
  two real gaps: a struct/array *literal*'s own nested bare-`{}` fields, built inside `cgAggregateLiteral`,
  always defaulted to `ctx->ownScopeSlot` (whatever function is generating code right now) regardless of
  what scope the *whole* literal was itself about to be promoted into; and `cgAssign`'s own resolution only
  ever looked at the *immediate* base of an assignment target, so a two-or-more-hop chain of bare fields
  (`outer.mid.leaf = ...` where `mid` is itself bare) silently fell back to the same wrong default. Both are
  fixed now, still without any form of generics: this remains a *type-level rule/axiom* the compiler applies
  uniformly at every relevant codegen site, not a concrete per-field scope value stored anywhere (a bare
  field's `scopeParam` is still just `NULL` - "defer to my container," never a real `struct var*`).
  **Two complementary mechanisms, matching the two different situations a bare field's scope needs to be
  decided in:**
  (1) **`ctx->targetScopeOverride` + `cgValueForTarget`** - for a literal being promoted as a whole into a
  known target scope (a var-decl, a `for`-loop init, a call argument, a return value, or one field/element
  of an *enclosing* literal). `cgValueForTarget(ctx, op, dstT, scopeOverride)` resolves dstT's own scope
  *before* building `op`'s value (not after, the way a bare `cgValue()`+`cgStoreInto` pair used to), and
  sets it as an ambient override on `ctx` for the duration of that one recursive `cgValue()` call.
  `cgAggregateLiteral`'s own struct-field and array-element loops now consult this ambient override for any
  field/element whose own type is bare `{}` (an explicitly-`{name}`-tagged field ignores it and resolves its
  own named tag as before) - and since the override stays set for the *entire* nested build (only saved/
  restored once, at the outermost `cgValueForTarget`/`cgBoundaryValue` call), it naturally reaches arbitrary
  nesting depth (a literal inside a literal inside a literal) with no extra plumbing. `cgBoundaryValue`
  (call arguments, return values) got the identical reordering internally, so its 3 call sites needed no
  changes; `cgVarDecl`, the `for`-loop init, and `cgAssign` were updated to call `cgValueForTarget` instead
  of a bare `cgValue()`. (The one call site deliberately left alone: `cgInitGlobalsFunc`'s global-initializer
  store - a global has no `own`/enclosing-scope concept at all, out of scope for this fix.)
  (2) **`cgResolveEffectiveScope`** - for resolving what scope an *already-existing* value's bare-`{}` field
  lives in, at an assignment site (`cgAssign`'s own `scopeOverride` computation) - not something being built
  right now, so mechanism (1) doesn't apply. Recursive: a value's own `type.scopeParam` (an explicit
  `{name}`) is the base case; a bare `{}` value that's itself reached through a member access has no scope
  of its own, so it inherits its own base's, walking up an arbitrary chain of bare-`{}` member accesses
  until it either hits an explicitly-scoped ancestor or bottoms out at a plain var (a var, unlike a field,
  really can be its own root - `ctx->ownScopeSlot` is the correct answer there, same as it always was).
  This replaces `cgAssign`'s old one-hop-only check outright (which is now provably a special case of the
  general recursive walk, not a separate rule).
  **New shared helper, not new behavior:** `typeIsRefShaped(struct type t)` (struct, or fixed-size array -
  the same "can this be marked `{}`/`{name}`" predicate that was duplicated inline in three places already)
  factored out and reused by `cgResolveParamScopeOverride`, `cgAssign`, and `cgResolveEffectiveScope`.
  **Deliberately not extended here, both already-documented gaps from the arrays work:** array-*index*
  targets (`arr[i] = ...`) still aren't covered by either mechanism - `cgResolveEffectiveScope` only walks
  `OPERATION_MEMBER` chains, not `OPERATION_INDEX`; and a bare-`{}` field reached only through a chain that
  passes through a bare-`{}` *parameter* (as opposed to a locally-constructed value or an explicitly-`{name}`
  -tagged one) still can't be resolved soundly by either mechanism - a bare `{}` parameter's true origin
  scope genuinely isn't recoverable from its type alone without the static checker described next.

- **The static scope-containment checker - a first, deliberately bounded version.** Before this, a `{}`/
  `{name}` reference's scope tag was checked for absolutely nothing beyond parsing: `TypeIsSame` ignores
  `structMAlloc`/`scopeParam` entirely for structs and arrays (by design - see the report), so
  `q mut Point{d} = p` compiled with zero complaint even when `p` was tagged `{s}` and `s`/`d` had no
  known relationship - all of the feature's actual safety came from *runtime* behavior (deferred
  allocation into whatever scope value a call happened to resolve), never from a compile-time proof. This
  adds that proof, for the cases it's actually provable in.
  **The rule, from the "own is always younger than any scope received as a parameter" ordering fact
  established earlier** (a function's own private scope closes the instant *it* returns, strictly before
  any scope its caller passed in could close - true by construction, no annotation needed): a value tagged
  `srcScope` may flow into a slot tagged `dstScope` exactly when `srcScope == dstScope` (including bare
  `{}` into bare `{}}` - trivially the same scope), or when `srcScope` is any named parameter and `dstScope`
  is bare `{}` (narrowing a longer-lived reference into "at least as long as my own scope" is always safe -
  the covariant, safe direction, mirroring how `&'long T` coerces to `&'short T` in Rust). Both directions
  of the opposite case are rejected: a bare `{}` (own) value flowing into a *named* slot is unsafe (own is
  the youngest possible scope, so this is the dangerous widening direction), and two *different* named
  scopes of the same function have no provable relationship at all - olang has no lifetime-bound syntax
  (no Rust-style `'a: 'b`), so this is conservatively rejected too, even though some such pairs might be
  fine at any given call site.
  **Implementation: `scopeCanFlowInto(func, srcScope, dstScope)` (semantic.c)**, wired into
  `OperandFitsType` - the one shared type-compatibility gate already used at every relevant site (var-decl,
  assignment, return, call arguments, struct/array-literal field values), so no new call sites were needed,
  only threading a `func` parameter (the function currently being checked, for identifying which scope tags
  are *its own* parameters) through it and its two collaborators, `OperandFuncCall`/`OperandStructLiteral`/
  `OperandArrayLiteral`. The check only fires when *both* sides are already `{}`-heap-indirect (an existing
  reference being passed/reassigned) - a fresh literal about to be promoted (`typeNeedsMallocPromotion`'s
  own condition, mirrored here) always starts life directly in the target's own scope, so there's nothing
  to check there. `OperandFitsType` now returns a 3-way `enum typeFit` (`TYPE_FIT_OK`/`_MISMATCH`/
  `_SCOPE_MISMATCH`) instead of a bool, so callers report the new, specific `SCOPE_MAY_NOT_OUTLIVE_TARGET`
  message instead of the far less helpful generic `VALUE_TYPE_MISMATCH` when that's what actually failed.
  **Deliberately bounded to one function's own frame - the real scope of this first version, chosen after
  discovering the alternative breaks working code.** `varIsOwnParam(scopeVar, func)` checks `scopeVar`
  against `func->type.vars` by identity (the same pattern `cgResolveParamScopeOverride` already uses) -
  `scopeCanFlowInto` treats a scope tag that *isn't* one of `func`'s own declared parameters as
  unverifiable-so-allowed, not as a violation. This matters concretely: a struct field's own `{name}` tag
  (e.g. `ScopedBox`'s constructor field `inner Point{s}`) resolves against the *type's own declaration-site*
  parameter list, not the checking function's - reading `b.inner` back out gets a `scopeParam` that's a
  *different* `var*` than anything in the current function's frame, even when, at the actual call site, the
  two positions were bound to literally the same scope. Naively comparing by raw identity across this
  boundary rejected `fillBoxViaCtor`'s already-working, already-tested `return b.inner` - correctly proving
  the naive version unsound-in-the-wrong-direction (a false rejection), not just imprecise. Making this
  provable in general needs tracing a scope tag's *effective* identity back through constructor calls and
  member chains to whatever the current function's frame actually knows about (a small substitution/
  monomorphization system, not just a lookup) - real, additional work, deliberately not attempted in this
  pass. The honest scope of what's checked today: two named scopes (or a named-into-bare-own) *within the
  same function's own parameter list*. Anything crossing a struct's own field-declared scope tag, or a
  chain through more than one function's frame, is exactly as unchecked as it was before this feature
  existed - not a new gap, the *same* gap, just not yet closed.

## Open questions (settle before implementing further - don't silently "fix" these)

- **Struct/array literal syntax: array literal syntax is settled; struct literals moved to `{...}`.** The
  user explicitly confirmed array literals ("fine like they are") and gave the struct-literal delimiter
  change as a direct instruction - both are implemented as described in the "Settled decisions" entry
  above, and that instruction reads as continued buy-in on the literal-expression mechanism itself, not
  renewed doubt about it. What's still genuinely open is narrower than before: not "should literals like
  this exist," but "is `{...}` this pinned as *the* answer for structs" - still worth checking before
  building further features on top of it as permanent without confirming.

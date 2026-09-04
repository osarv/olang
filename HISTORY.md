# olang Design History

The full, chronological, discursive record behind every entry in CLAUDE.md's "Settled
decisions" section: why each decision was made, what was tried and reverted, what bugs were
found and fixed along the way. CLAUDE.md itself states only the current, terse settled fact
for each topic and points here for the complete story; this file is not auto-loaded into
context, and is meant to be read on demand (e.g. when the "why" actually matters for a new
decision, or during another implementation-vs-spec isomorphism pass).

Entries below are in the same chronological order they were originally written in, unedited
from their original form.

## Settled decisions

- **Value vs. reference semantics.** A struct or fixed/runtime-length array is a value type by default -
  `==`/`!=` do a structural (deep, memberwise/elementwise) comparison, not pointer identity. A
  trailing `<>` on a type reference (e.g. `MyStruct<>`) makes that level heap-indirect - a reference,
  the same way an object reference works in Java. `==` on a `<>` reference is pointer identity on
  purpose, and `<>` is also what breaks recursive-embedding cycles (a struct can only embed itself
  through a `<>` indirection). **Spelling history: `{}`/`{name}`, briefly `&`/`&name`, back to
  `{}`/`{name}`, now settled on `<>`/`<name>`** - see the dedicated "reference syntax" entry near the
  end of this section for the full history and why `<>` was the final choice.
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
  **Deliberately not done at the time, to keep this change bounded** (all fall under the same "capital
  letter = exported" rule once implemented, so this was scope, not a rule change): bare cross-module
  *variable* reads with no call (`x = alias.SomeGlobal`), the `error` statement raising a *foreign*
  module's error type directly (`error alias.MyError.word`), and a module transitively re-exporting its
  own imports (so importing A also reaches through A's import of B). None of these came up while building
  the test suite that motivated this change, so none were forced. **All three are now closed - see the
  entries below**, the third (transitive re-export) via its own dedicated entry near the end of this
  section once the design question it raised (automatic, no per-import opt-in, vs. an explicit re-export
  marker) was actually settled - decided in favor of the former, matching this language's existing "no
  separate privacy mechanism beyond capitalization" philosophy.
  **Closed: bare cross-module variable reads.** `buildPostfix`'s new `tryBuildCrossModuleVarRead` looks one
  postfix part ahead of a bare identifier primary: if it isn't shadowed by a real local, does name a known
  import alias, and the very next postfix part is specifically a member access, it resolves straight to a
  cross-module `OperandReadVar` (public-only, mirroring `resolveCallTarget`'s own cross-module lookup)
  instead of falling through to ordinary struct member access - which is exactly the collision the grammar
  itself can't disambiguate on its own (see the report on why this was deferred). Anything else (no import
  alias by that name, or a local shadowing it, or an index/inc-dec instead of a member following) falls
  through to the unchanged ordinary path, so `localVar.field` is never affected. Works as both an rvalue
  and an assignment target with no special-casing in `buildAssignStmnt`, and through further chained member
  access/indexing (`alias.SomeStruct.field = ...`), since the rest of `buildPostfix`'s own postfix loop
  runs unchanged once the cross-module read is spliced in as the starting operand. Confirmed with
  `worker.olang`'s new public `AskCount` global, read and written directly from `runner.olang` as
  `wk.AskCount`, both bare and through a further arithmetic expression.
  **Closed: originating a foreign module's error type directly.** `error alias.MyError.word`'s grammar
  (`parseStmntError`) extended from a fixed 2-identifier shape to optionally accept a leading alias (2 or 3
  identifiers, unambiguous by count alone - unlike a catch clause's own 2-identifier case, an `error`
  statement always ends in exactly `TYPE.word`, never a bare type). `buildErrorStmnt` mirrors
  `resolveErrorTypeName`'s own cross-module lookup (target module, public-only) inline, since the two don't
  share a node shape to call one from the other. Confirmed with `runner.olang` originating
  `worker.olang`'s own `WorkerError.BAD_INPUT` via a new `alwaysWorkerBadInput` function, caught back in a
  permanent test.
- **Struct/array literal syntax + `:=` type inference.** Struct literals are `Type{v1, v2, ...}`
  (positional, in member-declaration order); array literals are `T[v1, ...]` (see the dedicated array-
  literal-syntax entry near the end of this section for the full design and history - the size/length-kind
  ness prefix shown in older text throughout this file, `T[N][v1, ...]`/`T[][v1, ...]`, was replaced).
  Both are general expressions usable anywhere a value is needed, not just on the right of a var-decl; a
  struct literal's type is always restated on the literal itself (`x mut Point = Point{5, 6}`, not `x mut
  Point = {5, 6}`), chosen so a literal is self-describing and var-decl grammar needs no changes at all.
  `x := <literal>` infers `x`'s type entirely from an initializing literal (locals, for-loop init vars,
  and globals, via the existing two-phase resolve/check split); a non-literal initializer (`x := f()`) is
  a compile error (`TYPE_CANNOT_BE_INFERRED`), since only a literal is guaranteed to syntactically carry a
  full concrete type. `:=` is its own token (`TOK_ASS_INFER`), not reused `=`, because reusing `=` made
  `SNTX_VAR_DECL` and `SNTX_STMNT_ASSIGN` (e.g. `result = 100`) genuinely ambiguous with no way to prefer
  one over the other without a distinguishing token.
  **Struct literals moved from `[...]` to `{...}`** once the parser rewrite (below) made that safe: type
  names are now known to the parser (via `ScanTopLevelDecls`/`TypeNameLookup`), so `Type{` only ever
  commits to struct-literal parsing when `Type` is an actual declared type - an ordinary variable
  followed by `{` (`if x { y }`) is never affected, since a variable is never mistaken for a type. This
  also incidentally **closes the old "a literal needs at least two values" gap for structs**: `Wrapper{42}`
  (a genuine single-field struct literal) parses correctly now, and so does `Point{}` (a clean
  `WRONG_ARG_COUNT` semantic error instead of a confusing parse failure) - both were structurally
  impossible under the old bracket-only design. **Array literals kept their existing single-value gap for
  a long time after this** (`int32[1][5]` misparsed as indexing) **- since resolved, not by the same
  type-name-awareness mechanism, but as a side effect of dropping the size/length-kind prefix entirely -
  see the array-literal-syntax entry.**
  **Still out of scope:** `Type<>[...]` (heap-indirect struct construction - the first real `malloc` for a
  struct at the point a *reference* is directly constructed, as opposed to a plain value that then gets
  promoted) is deliberately not implemented, since it needs the ownership/lifetime model from the
  ownership-scopes entry below to mean anything.
  **`{...}` as the struct-literal delimiter is confirmed permanent, not just "current."** This was an open
  question for a while, given `{}`'s own rocky history on the *scope-marker* side (started `{}`/`{name}`,
  briefly `&`/`&name`, back to `{}`, finally settled on `<>`/`<name>` - see the reference-syntax entry near
  the end of this section) - worth asking explicitly whether struct literals would follow the marker down
  the same path once the marker vacated `{}`. Confirmed directly: they won't. `{...}` for struct literals
  stays as-is; revisit only if a concrete, motivating problem actually comes up, the same way the marker's
  own moves were each driven by a real issue, not the possibility of one.
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
- **Ownership scopes (design settled, implementation partial) - `scope` type + `<>`/`<name>` tagging.**
  Direction, chosen after a long design discussion: olang moves away from "no free/GC, deliberate leak
  forever" toward compiler-enforced (not runtime-checked, not manually-managed) memory *and* resource
  release, modeled on RAII rather than a tracing GC or Rust's full borrow checker. The core idea: every
  `<>`-heap-indirect value belongs to a *scope* - a nested, strictly FILO-closing region (implemented as a
  growable, chunked bump allocator: cheap to open, and since nothing inside it is ever freed
  individually, closing it is an O(1) bulk operation, not a general malloc/free). A bare `<>` means "this
  value's own private scope, closed when its own call returns"; `<name>` tags a
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
  scope bare `<>` already implicitly means, just now nameable so it can be *passed* (e.g.
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
  **What's implemented:** the grammar (`<>` optionally carrying a `TOK_IDEN`), `scope` as a
  parameter-only type, `own` as a primary expression, and resolving `<name>` tags in parameter types,
  return types, and local var-decl types, with the resolved parameter recorded on
  `struct type.scopeParam` in semantic.h.
  **A real, pre-existing bug this surfaced and fixed, unrelated to the scope design itself:** a plain
  struct literal (structMAlloc false) is allowed by the type checker to fit a `<>`-heap-indirect target
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
  be a bare `<>` (untagged) heap-indirect struct** (`BARE_SCOPE_RETURN_TYPE`, checked once in
  `resolveFuncSig`, which covers every return statement in that function for free). Before the real
  allocator existed this was harmless (plain `malloc`, nothing ever got reclaimed); the moment "own"'s
  scope actually closes at return, a value tagged to it would already be dangling before the caller ever
  saw it - the function's own private scope closes at the exact point it returns. Return something tagged
  to an explicitly-*passed* scope instead (`<s>`, e.g. `func f(s scope) ? Node<s>`), same as escaping to a
  caller always required. This does **not** catch a bare `<>` field nested inside a plain (non-heap-
  indirect) struct that then gets returned - that's the same still-open scope-generics gap below, not
  attempted here.
  **A second, separate, more severe pre-existing bug found and fixed while stress-testing this:**
  `TypeGetSize`'s compile-time-length-array case (`getArraySize` in semantic.c) computed only *one element's* size,
  completely ignoring the array's length - so any struct or array containing a compile-time-length array field was
  under-sized at every point `TypeGetSize` drives a `malloc`/`__olang_scope_alloc` call, a real heap
  buffer overflow. Invisible before this session (nothing sized a struct's malloc off `TypeGetSize` at all
  until the boundary-crossing fix earlier in this file's history, and that fix's own test structs happened
  to have no array fields); caught here because a stress test finally used a struct with one. Fixed to
  multiply by the element count.
  **What's deliberately still not implemented, and why each is its own next step:**
  (1) **No scope-generic struct types for *plain* structs specifically** - narrower than originally
  written here. A struct field like `next Node<s>` needing the *type itself* to be generic over which
  scope its self-referential fields belong to turns out **not to need a new generics mechanism at all for
  a constructor-bearing type** - see the "constructors already give struct fields a real, type-level
  scope" entry below, a real discovery, not something designed in from the start. A **plain**
  `type X struct { ... }` (no `struct(params)`) has no parameter list at all to resolve a field's `<name>`
  tag against, so it's still limited to a bare `<>` (private-scope); an explicit `<name>` there still
  correctly fails with `UNKNOWN_SCOPE`. **This is deliberately staying this way, not a queued next step -
  confirmed on reflection, not just left alone by default:** nothing forces a type to stay plain
  (`hasCtor` only ever restricts the reverse direction - once a type has a constructor, the positional
  literal is rejected - never the other way), so any plain struct that wants a `<name>`-tagged field can
  already get one by adding a `struct(params)` constructor with every field as a bare pun - identical
  fields, `Node(s, val, next)` instead of `Node{val, next}`, and the exact same parameter-list resolution
  a constructor-bearing type already has. A second, parallel mechanism that let plain structs resolve
  `<name>` tags too would duplicate a capability that already exists at a near-zero switching cost, for no
  new expressiveness - exactly the kind of premature abstraction this file's own principles warn against.
  **A plain struct wrapping a bare-`<>` field that then escapes via *return* is now rejected at compile
  time** instead of silently dangling - see `NESTED_BARE_SCOPE_RETURN_TYPE` near the end of this section.
  (2) **Known, deliberate v1
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
  (1) A **plain (non-`<>`) local** has its destructor called right before every real `ret` a function/test
  can hit - `cgRunLocalDestructors`, walking the codegen scope chain innermost-first (LIFO, mirroring a
  stack unwind) and invoked from the exact same injection points `cgCloseOwnScope` already uses (explicit
  return, the try/catch error-propagation path, and the implicit fell-off-the-end case). (2) A
  **`<>`-heap-indirect instance** instead gets its destructor called when its *owning scope* closes, not
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
  **Known limitation at the time, since closed - see the "return x" skips its own destructor entry
  further below:** no move semantics - a destructor-bearing local that is itself the value being returned
  out of its own function used to still get destructed before the caller ever saw it.
- **A bare `<>` struct field assigned through a scope-tagged base now inherits that base's own scope,
  instead of always defaulting to whatever function happens to be executing.** Narrow fix, not the general
  one (see the scope-generic-struct-types gap above, which this doesn't close): a struct field can't carry
  its own `<name>` tag, so a bare `<>` field's promoted literal used to always resolve via
  `cgResolveScope(ctx, NULL)` - "this function's own private scope" - regardless of which scope the
  *containing instance* actually lives in. For a self-referential struct (a linked-list node, say) written
  from a different function than the one that allocated the container, that's a real dangling pointer the
  instant the writing function returns. Fixed only for the direct, one-hop case: in `cgAssign`, when the
  assignment target is `base.field` and `base`'s own type is itself `<>`-heap-indirect, the field's
  malloc-promotion now resolves its scope from `base`'s own declared scope tag (`cgResolveScope(ctx,
  base->type.scopeParam)`) instead of the function's own - so `base` must be tagged to a real, named,
  passed-in scope (`Type<s>`) for this to help; a bare-`<>` base has no portable scope identity of its own
  to hand down (asking "whatever function is executing" the *same* question just gives the same wrong
  answer one level removed). **Multi-hop chains (`a.b.c.field = ...`) turn out to already work, confirmed
  by test - not a separate gap**: the fix reads `scopeParam` off whatever type the immediate base operand
  already has, regardless of how deep an expression produced it, so any chain where every intermediate
  field carries a real `<name>` tag resolves correctly with no further changes. The part that's still
  unhandled is narrower than "multi-hop" suggested: a chain where an *intermediate* field is itself a bare
  `<>` (no name to read `scopeParam` off at all) - which is really the same still-open scope-generic-struct-
  fields gap, not a distinct bug, and needs that fix (making bare `<>` a real type-level default) rather
  than anything specific to this one. A plain (embedded, non-`<>`) base remains genuinely unhandled here
  too, for the same reason. New
  `cgStoreInto`/`cgRegisterDtorIfNeeded` parameter: an optional `scopeOverride`, NULL at every other call
  site (var-decls, params, returns, aggregate-literal fields), all of which already resolve correctly off
  their own declared type.
  **A separate, more severe bug found and fixed while building and testing this:** `getStructSize` computed
  a struct's heap-allocation byte count as a naive sum of its fields' own sizes, with no alignment/padding
  at all - correct only when every field happens to share the same size/alignment (every existing struct
  before this, e.g. `Point { x int32, y int32 }`). The moment a struct mixes field sizes (e.g. `{ tag
  int32, inner Point<> }` - a 4-byte field followed by an 8-byte-aligned pointer field), LLVM's own default
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
  Point<s>)`). Since a field's type resolution goes through that same path, a field can *already* carry a
  real `<name>` tag naming one of the constructor's own scope parameters (`type Box struct(s scope, inner
  Point<s>) { inner }`) - a genuine, per-instance, type-level scope identity, not the value-level
  per-assignment-site inference the earlier `cgAssign` fix uses. This resolves the concern that motivated
  reaching for real generics: the value being stored is checked against the *field's own declared type*
  (`Point<s>`) at construction time, the same as any ordinary parameter - consistent for every instance of
  that type, not inferred fresh at each write. **Only works for constructor-bearing types** (a plain
  struct has no parameter list to resolve `<name>` against at all - see the narrowed gap above).
  **A real, general bug found and fixed while confirming this actually works end-to-end:** any parameter
  whose type names an *earlier parameter of the same signature* as its scope tag - not specific to
  constructors, structs, or even fields; the parameter case above is a plain example of the exact same
  thing - crashed at every call site that needed to malloc-promote a plain literal into it
  (`func f(s scope, p Point<s>)`, called as `f(own, Point{1,2})`). The tag's name (`s`) only has meaning
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
- **Reference syntax: `{}` vs `&` vs `<>` - a three-stage spelling history, settled on `<>`.** Started as
  `{}`/`{name}`. Briefly moved the heap-indirection marker to `&`/`&name` (own grammar/semantic changes,
  all three `.olang` test files migrated) specifically to stop sharing a delimiter with struct-literal
  value syntax (`Point{1, 2}`). A long follow-up design discussion then worked through what a static
  scope-safety checker would actually need, and landed on a real conclusion along the way: **a
  plain/embedded value never independently needs its own scope tag at all** - it has no separate
  allocation to tag, its "scope" is trivially wherever its container already lives. So "is this a
  reference" and "which scope" were never actually separable into two orthogonal markers (an idea
  seriously explored mid-discussion, under a proposed `Type{scope}&` split) - they always travel together
  as one fact, meaning one marker carrying both (bare = own scope, named = an explicit other one) is the
  *minimal* correct design, not an arbitrary choice between two equally-valid options. With the design
  settled as "one marker, both jobs," the remaining question was purely spelling, and `{}`/`{name}` was
  chosen back over `&`/`&name` at that point - reverted in `parseTypeRef` (syntax.c) and
  `resolveTypeRefBase`/`isScopeTypeRef` (semantic.c), and all three `.olang` test files migrated back. That
  knowingly re-accepted `{}` sharing a delimiter with struct-literal syntax (`Point{1, 2}`) and an
  unrelated code block, three meanings on two characters, the exact overload the `&` move had existed to
  avoid - accepted at the time as a deliberate tradeoff for the preferred spelling.
  **Moved a third time, from `{}`/`{name}` to `<>`/`<name>`, once the array work (see below) made the
  three-way overload's cost concrete rather than abstract.** The double duty `{}` was still doing - "this
  is type-level metadata about where a value lives" (`Point<s>`) vs. "this is a value's own data"
  (`Point{1, 2}`) - meant a reader had to parse *content*, not just *punctuation*, to tell the two apart at
  a glance, since both look identical in shape. `<>` gives the marker its own visual lane and reads the
  way a type-parameter/generic annotation does in most other languages (C++/Java/Rust/TypeScript) - a
  reasonable intuition for what a scope tag actually is. Unlike C++'s notorious `<`/`>` template-parsing
  ambiguity, this carries no real parsing risk for olang: `parseTypeRef` (syntax.c) is only ever invoked
  from a position the parser already knows is a type expression (a var-decl's type, a signature, a field
  declaration), never from general expression parsing, so `<`/`>` here never needs to be disambiguated
  from the comparison operators the way a bare expression statement would in C++. Mechanically just a
  token swap (`TOK_LST`/`TOK_IDEN?`/`TOK_GRT` in `parseTypeRef`, same in `resolveTypeRefBase`/
  `applyRefMarker`/`isScopeTypeRef`), plus every `.olang` test file and every error message mentioning the
  marker updated to match. This is the third round on this specific spelling; unlike the `&` experiment
  (which was chasing a real unresolved design question), this last move was a pure notation-clarity call
  with no new design question behind it, and is meant to be the final one.
  **Other conclusions from the same discussion, worth keeping even though none required a code change:**
  scope identity has to be tied to the *type* to be checkable at all (a variable's scope is only ever a
  consequence of its declared type; a per-literal/per-construction-site scope, which is what the
  `cgAssign`/`cgResolveParamScopeOverride` patches above actually implement, can't be checked across a
  function boundary, which is exactly why those are narrow runtime-correctness patches and not a
  foundation a real checker could be built on). A struct field's own storage never outlives its
  containing struct, but what it *references* may - the reference and the pointee have independent
  lifetimes on purpose. Only structs and arrays are referenceable - primitives are always by value, no
  `int32<s>`, unchanged from what's already true. Reference-vs-value is decided *solely* by presence of
  the marker, never as a free calling-convention/ABI choice: a plain (non-`<>`) parameter must behave as
  an exclusive copy, so the compiler can only implement it via a hidden pointer in the specific case where
  it can prove the callee never mutates it (mutation through a hidden pointer would leak back to the
  caller, breaking value semantics) - otherwise it must actually copy. None of this list is implemented
  as a checker yet; it's the groundwork such a checker would need to be built on.
- **A plain struct wrapping a bare `<>` field is now rejected at the signature level if it's ever
  returned by value.** The transitive counterpart to `BARE_SCOPE_RETURN_TYPE`: that check only ever
  looked at the return type *itself* (`? Point<>` directly), not whether a *plain* return type (`?
  Wrapper`, no `<>` at all) embeds a bare `<>` field somewhere inside its own fields - a real dangling
  shape whenever the function is the one allocating that field into its own (about-to-close) `own` scope
  before handing the wrapping value back. New `structContainsBareScopeField` (semantic.c) walks a
  struct's fields recursively through plain/embedded members only - never infinite, since a plain struct
  can't recursively embed itself, that's exactly what `<>` exists to break - and deliberately does *not*
  chase into a field that already carries an explicit `<name>` tag, since that field's lifetime is
  already an independently-checked fact tied to its own name, unrelated to whichever function happens to
  be returning it. Checked once in `resolveFuncSig`, same scope as `BARE_SCOPE_RETURN_TYPE` itself
  (signature-level only, covers every return statement in the function for free). **Deliberately
  conservative, not a targeted fix for exactly the unsound case:** this also rejects some sound code - a
  function that only ever passes an already-correctly-scoped value straight through (never allocating
  into the bare field itself) would actually be fine at runtime, but nothing short of real dataflow/
  escape analysis (the eventual static checker, not attempted here) can tell that case apart from the
  unsound one using the signature alone. Consistent with the broader conclusion from the scope-checker
  discussion: anything crossing a function boundary needs a type-level, named scope to be checkable at
  all, so requiring an explicit `<name>` on any field that's going to be involved in a value crossing a
  boundary is the correct (if occasionally stricter-than-necessary) rule until real escape analysis
  exists to relax it.
- **`<>`/`<name>` now apply to arrays too - reusing `structMAlloc`/`scopeParam` generically rather than
  building a parallel mechanism.** Only the compile-time-length case is wired up so far (see "deliberately not
  attempted" below for what isn't). `[N]` vs `[]` answers "is the size known at compile time"; `<>`/
  `<name>` (unchanged from structs) answers "is this embedded or a reference, and if so which scope" -
  the same two orthogonal questions as a struct, with one extra axis (size) that only matters for arrays.
  `int32[3]<>` is a bare pointer to `[3 x i32]`, heap-allocated via the same scope-arena machinery a
  struct reference already uses (`__olang_scope_alloc`, malloc-promotion, `cgResolveParamScopeOverride`
  for a parameter whose scope tag names an earlier parameter) - none of that machinery needed to change,
  just to stop assuming `BASETYPE_STRUCT` was the only thing that could ever be `structMAlloc`.
  **Array-suffix wrapping order flipped: the first-written dimension is now the outer one.**
  `int32[2][3]` is "an array of 2, each element an `int32[3]`" - previously (never actually exercised by
  any test until this) it wrapped the opposite way. `applyArraySuffixes` (semantic.c) now walks its
  suffixes right-to-left when wrapping so the first-parsed one ends up outermost, matching how the
  dimensions read left-to-right. No grammar change was needed for any of this - `parseTypeRef`'s rule was
  already `NAME ARR_SFX* (TOK_LST IDEN? TOK_GRT)?`, array suffixes already coming before the marker.
  **The marker's *application point* moved, though - to after array-suffix wrapping, not just to arrays
  existing.** `resolveTypeRefBase` used to read and apply the marker itself, forcing `bType` to
  `BASETYPE_STRUCT` unconditionally; now it only decides (via a flat `hasTokOfType` check, independent of
  array suffixes) whether to eagerly resolve the named type - still necessary to skip for a
  self-referential struct, directly or through an array of itself. The marker's actual effect
  (`structMAlloc`/`scopeParam`) moved into a new `applyRefMarker`, called *after* `applyArraySuffixes`, so
  it governs the reference as a whole ("a reference to a `[3]Point`") rather than silently attaching to
  the element type underneath an array suffix the way it would have before (a real, if never-yet-
  triggered, bug in the old ordering). `applyRefMarker` also now rejects `<>` on a primitive type
  (`INVALID_REFERENCE_TARGET`) - previously silently ignored for a vanilla type like `int32<>`, since
  `resolveTypeRefBase`'s vanilla-type branch never looked at the marker at all.
  **`len(arr)` - unlike C, an olang array always carries its own length.** A compiler builtin
  (`OPERATION_LEN`/`OperandLen` in semantic.c, intercepted by name in the "NAME(args)" call-building path
  before ordinary var/constructor lookup - not a real function, since no signature can be generic over
  "any array type" without a generics mechanism this language doesn't have), not a lexer keyword, so it's
  only ever special-cased in call position. Returns `int32`, not `int64`, even though the runtime slice's
  own length field is `i64` - deliberately, since there's currently no way to *write* an `int64` literal
  at all (bare integer literals are always `int32`, no widening path), which would make an
  `int64`-returning `len()` awkward to use anywhere near the rest of the language for no real benefit (an
  array length never needs `int64`'s extra range in practice); the runtime-length case truncates in `cgLen`. A
  compile-time-known dimension (embedded, or a compile-time-length `<>` reference) costs nothing at runtime - the
  constant is substituted directly; only a genuinely runtime-length (`T[]`) array reads it from the runtime
  slice. Always evaluates its argument (for any side effects a non-trivial expression producing the array
  might have) even when the resulting value goes unused because the dimension turned out to be constant.
  **Two real bugs found and fixed while building this, same class as two earlier ones this session:**
  (1) `getArraySize` returned `PTR_SIZE` (8) for a runtime-length array's own value size - but a runtime-length array
  VALUE is the full `{ i64 len, ptr data }` slice, 16 bytes, not just the pointer. Any struct embedding a
  runtime-length-array field that then got heap-promoted would have under-allocated by 8 bytes and corrupted
  adjacent memory - invisible until now because nothing exercised a struct with a runtime-length-array field
  being heap-promoted before. Fixed to return 16. (2) `cgIndexAddr`'s embedded/compile-time-length-array branch computed
  its GEP pointee type via `llvmType(base->type, ...)` - correct when arrays could never be `structMAlloc`,
  but once they can, that call now returns `"ptr"` instead of the real `[N x ElemT]` aggregate shape GEP
  actually needs, producing invalid IR for any compile-time-length array reference. Fixed by GEP-ing off a copy of
  the type with `structMAlloc` forced false (mirroring how `structAggSpelling` already spells a struct's
  aggregate layout "regardless of structMAlloc") - the pointer value itself was already correct either way
  (`cgValue`'s by-ref convention hands back the embedded array's own address when embedded, and
  `typeIsByRef` is now false for a `structMAlloc` array, so `cgValue` there instead loads and hands back
  the already-heap-allocated pointer directly - same GEP shape needed in both cases, only the pointee-type
  string was wrong).
  **Deliberately not attempted here, and why each is its own next step:** (1) **A genuinely runtime-length
  (`T[]<>`) array reference isn't scope-tracked yet** - `cgPromoteFixedToRuntimeLength` (the sole place a
  runtime-length array's backing store is ever built - see the array-literal-syntax entry below, which made
  `cgAggregateLiteral`'s own runtime-length-array branch dead code and removed it entirely) still always calls a
  bare `@malloc`, unscoped, regardless of what `<>`/`<name>` the target type carries; marking a runtime-length
  array `<>` currently type-checks but has no effect. **Closed in the runtime-length-arrays-as-arena-values entry
  further below**, once the var-decl work made this the natural next step rather than a standalone fix.
  (2) **Embedded (`T[]`, no
  `<>`) size inference from an assigning literal isn't implemented** - `x mut int32[] = int32[3][1,2,3]`
  inferring a fixed size of 3 for `x`'s own type. Bare `T[]` still means exactly what it meant before this
  session's changes (runtime-length, unscoped, raw `@malloc`) - not reinterpreted, to avoid a breaking change
  layered on top of everything else here at once. (3) **Jagged (independently-sized-per-row) 2D arrays
  aren't supported** - the single trailing `<>`/`<name>` marker applies once, to the whole type, so there's
  no way to mark an *inner* array level as independently referenced; only fully-rectangular multi-
  dimensional arrays (every level either fully compile-time-length or, at most, the outermost level runtime-length) are
  expressible with what exists today. (4) **The one-hop `cgAssign` field-scope override doesn't extend to
  array elements** - `arr[i] = ...` where `arr`'s own element type is a bare `<>` field-like reference
  still resolves via `ctx->ownScopeSlot`, the same gap struct fields had before their own one-hop fix;
  same underlying cause, not extended to `OPERATION_INDEX` here. **Closed in the array-index-scope-
  override entry further below** - though on closer inspection while closing it, this exact gap turns out
  to describe a shape gap (3) above already makes unconstructible: the one marker per type-ref applies to
  the whole array, never independently to `arrElem`, so an array's own element type can never itself be
  `structMAlloc` through any type-ref a user can currently write - see that entry for the honest scope of
  what the fix actually covers today. (5) **Arrays of destructor-bearing struct
  elements don't register per-element destructors** - `cgRegisterDtorIfNeeded` only ever fires at a
  struct's own heap-promotion site, never walked across an array's elements. **Closed in the per-element-
  destructor entry further below** - unlike gap (4), this one was genuinely reachable and real.

- **A bare `<>` field's scope is now a real, comprehensively-applied rule: "same as whatever contains it" -
  not just the narrow one-hop `cgAssign` value-level patch from before.** The old patch only handled
  `base.field = literal` where `base` was itself a plain local var with a `<>`-heap-indirect type - it left
  two real gaps: a struct/array *literal*'s own nested bare-`<>` fields, built inside `cgAggregateLiteral`,
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
  field/element whose own type is bare `<>` (an explicitly-`<name>`-tagged field ignores it and resolves its
  own named tag as before) - and since the override stays set for the *entire* nested build (only saved/
  restored once, at the outermost `cgValueForTarget`/`cgBoundaryValue` call), it naturally reaches arbitrary
  nesting depth (a literal inside a literal inside a literal) with no extra plumbing. `cgBoundaryValue`
  (call arguments, return values) got the identical reordering internally, so its 3 call sites needed no
  changes; `cgVarDecl`, the `for`-loop init, and `cgAssign` were updated to call `cgValueForTarget` instead
  of a bare `cgValue()`. (The one call site deliberately left alone: `cgInitGlobalsFunc`'s global-initializer
  store - a global has no `own`/enclosing-scope concept at all, out of scope for this fix.)
  (2) **`cgResolveEffectiveScope`** - for resolving what scope an *already-existing* value's bare-`<>` field
  lives in, at an assignment site (`cgAssign`'s own `scopeOverride` computation) - not something being built
  right now, so mechanism (1) doesn't apply. Recursive: a value's own `type.scopeParam` (an explicit
  `<name>`) is the base case; a bare `<>` value that's itself reached through a member access has no scope
  of its own, so it inherits its own base's, walking up an arbitrary chain of bare-`<>` member accesses
  until it either hits an explicitly-scoped ancestor or bottoms out at a plain var (a var, unlike a field,
  really can be its own root - `ctx->ownScopeSlot` is the correct answer there, same as it always was).
  This replaces `cgAssign`'s old one-hop-only check outright (which is now provably a special case of the
  general recursive walk, not a separate rule).
  **New shared helper, not new behavior:** `typeIsRefShaped(struct type t)` (struct, or compile-time-length array -
  the same "can this be marked `<>`/`<name>`" predicate that was duplicated inline in three places already)
  factored out and reused by `cgResolveParamScopeOverride`, `cgAssign`, and `cgResolveEffectiveScope`.
  **Deliberately not extended here, one already-documented gap from the arrays work (the other, array-
  *index* targets, is closed further below):** a bare-`<>` field reached only through a chain that
  passes through a bare-`<>` *parameter* (as opposed to a locally-constructed value or an explicitly-`<name>`
  -tagged one) still can't be resolved soundly by either mechanism - a bare `<>` parameter's true origin
  scope genuinely isn't recoverable from its type alone without the static checker described next.

- **The static scope-containment checker - a first, deliberately bounded version.** Before this, a `<>`/
  `<name>` reference's scope tag was checked for absolutely nothing beyond parsing: `TypeIsSame` ignores
  `structMAlloc`/`scopeParam` entirely for structs and arrays (by design - see the report), so
  `q mut Point<d> = p` compiled with zero complaint even when `p` was tagged `<s>` and `s`/`d` had no
  known relationship - all of the feature's actual safety came from *runtime* behavior (deferred
  allocation into whatever scope value a call happened to resolve), never from a compile-time proof. This
  adds that proof, for the cases it's actually provable in.
  **The rule, from the "own is always younger than any scope received as a parameter" ordering fact
  established earlier** (a function's own private scope closes the instant *it* returns, strictly before
  any scope its caller passed in could close - true by construction, no annotation needed): a value tagged
  `srcScope` may flow into a slot tagged `dstScope` exactly when `srcScope == dstScope` (including bare
  `<>` into bare `<>` - trivially the same scope), or when `srcScope` is any named parameter and `dstScope`
  is bare `<>` (narrowing a longer-lived reference into "at least as long as my own scope" is always safe -
  the covariant, safe direction, mirroring how `&'long T` coerces to `&'short T` in Rust). Both directions
  of the opposite case are rejected: a bare `<>` (own) value flowing into a *named* slot is unsafe (own is
  the youngest possible scope, so this is the dangerous widening direction), and two *different* named
  scopes of the same function have no provable relationship at all - olang has no lifetime-bound syntax
  (no Rust-style `'a: 'b`), so this is conservatively rejected too, even though some such pairs might be
  fine at any given call site.
  **Implementation: `scopeCanFlowInto(func, srcScope, dstScope)` (semantic.c)**, wired into
  `OperandFitsType` - the one shared type-compatibility gate already used at every relevant site (var-decl,
  assignment, return, call arguments, struct/array-literal field values), so no new call sites were needed,
  only threading a `func` parameter (the function currently being checked, for identifying which scope tags
  are *its own* parameters) through it and its two collaborators, `OperandFuncCall`/`OperandStructLiteral`/
  `OperandArrayLiteral`. The check only fires when *both* sides are already `<>`-heap-indirect (an existing
  reference being passed/reassigned) - a fresh literal about to be promoted (`typeNeedsMallocPromotion`'s
  own condition, mirrored here) always starts life directly in the target's own scope, so there's nothing
  to check there. `OperandFitsType` now returns a 3-way `enum typeFit` (`TYPE_FIT_OK`/`_MISMATCH`/
  `_SCOPE_MISMATCH`) instead of a bool, so callers report the new, specific `SCOPE_MAY_NOT_OUTLIVE_TARGET`
  message instead of the far less helpful generic `VALUE_TYPE_MISMATCH` when that's what actually failed.
  **Deliberately bounded to one function's own frame - the real scope of this first version, chosen after
  discovering the alternative breaks working code.** `varIsOwnParam(scopeVar, func)` checks `scopeVar`
  against `func->type.vars` by identity (the same pattern `cgResolveParamScopeOverride` already uses) -
  `scopeCanFlowInto` treats a scope tag that *isn't* one of `func`'s own declared parameters as
  unverifiable-so-allowed, not as a violation. This matters concretely: a struct field's own `<name>` tag
  (e.g. `ScopedBox`'s constructor field `inner Point<s>`) resolves against the *type's own declaration-site*
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

- **The static scope-containment checker, extended past one function's own frame - a bounded scope-
  substitution mechanism, not a real generics/monomorphization system.** Closes the gap the previous entry
  left open: a scope tag belonging to *another* frame (a constructor's own scope parameter, read back
  through a field access; an ordinary function's own scope parameter, referenced in *its own* return type)
  was previously only ever "foreign, unverifiable, allow" - which isn't just imprecise, it's a real
  soundness hole. `ScopedBox(b, Point{1, 2})` inside a function with two unrelated scope parameters `a`/`b`,
  followed by `return box.inner` declared `? Point<a>`, compiled with zero complaint even though `box`'s own
  `s` is `b`, not `a` - confirmed by test before this fix, and correctly rejected after it.
  **Mechanism: every operand (and, propagated, every var) may carry a small `scopeBindings` map** (`struct
  scopeBinding { typeParam; boundTo; }`, semantic.h) - "at this call, the callee's own scope parameter
  `typeParam` was concretely bound to `boundTo`". Built in `OperandFuncCall` for *any* call (ordinary
  function or constructor - both are just a `BASETYPE_FUNC` var, no special-casing needed) by walking the
  callee's own scope-typed params against the actual arguments: a `scope`-typed argument can only ever be
  `own` (bound to `NULL`) or a direct read of one of the *caller's* own scope parameters (nothing else can
  produce a `scope` value at all) - so a binding is always exactly one hop, never itself needs further
  resolution through another map. `OperandMember` uses the same map to resolve a field's own scope tag (only
  possible for a constructor-bearing type) through the base's map, recording the result under the same key
  so a later check on *that* member operand can look it up too. `buildVarDeclStmnt`/`buildForStmnt` copy an
  initializer's map onto the newly-declared var, and `OperandReadVar` copies a var's own map onto every
  fresh read of it - together, this is the "one hop through a var-decl" the plan called for.
  `resolveEffectiveScopeVar(op, scopeVar)` does the actual lookup (falls through to `scopeVar` unchanged
  when nothing matches - the safe, conservative default); `OperandFitsType`'s existing scope-check branch
  calls it once, on the source side, before handing off to `scopeCanFlowInto` - no new call sites needed,
  same as every other extension to this one shared gate.
  **A real, previously-latent bug found and fixed while building this, not really about scope tags at all:
  a function's own parameters exist as two distinct `struct var` instances that were never the same
  pointer** - the type-level original (`func->type.vars`, built once during signature resolution) and a
  fresh copy pushed into the local scope chain for body-checking (`semaCheckBodies`, since a parameter is
  also an ordinary local as far as `lookupVar`/`scopeFindLocal` are concerned). A type-level scope tag (a
  var-decl's declared type, a return type) always resolves against the former; a *value-level read* (`own`,
  or a bare identifier like an argument expression) always resolves against the latter. `varIsOwnParam`
  comparing these by raw identity - which is exactly what capturing an argument's `readVar` into a
  `scopeBinding` does - silently treated a function's own parameter as "not mine" the moment it was read as
  a value rather than named in a type. This was *already true* before this session's own #1 (the original
  checker only ever compared two type-level tags against each other, so the mismatch never surfaced) -
  invisible until `scopeBindings` became the first mechanism to compare a value-level read against a
  type-level list directly. Fixed with `canonicalVar` (semantic.c): `semaCheckBodies`'s three parameter-copy
  sites (the ordinary-function case, and the constructor/destructor `.self`-style cases) now set the copy's
  own `.origin` to the type-level original it was copied from (the same field ordinary locals already carry
  via `VarAllocSetOrigin`, just previously never populated for a parameter copy specifically -
  `VarAllocSetOrigin` itself also now zero-initializes before setting it, since the copy's own
  post-`*local = *param` overwrite would otherwise leave `scopeBindings` and every other list field as raw,
  un-`ListInit`'d garbage memory - a real, if previously harmless, footgun this surfaced too); `varIsOwnParam`
  and `scopeCanFlowInto`'s own direct comparison both canonicalize through `.origin` before comparing.
  **Still deliberately bounded, same honest framing as before:** exactly one hop through a var-decl, from a
  call's own binding map onto the var it initializes, onto a later member access or return check on that
  var. A second hop (reassigning through another variable, or a field of a field) is not attempted - the
  same conservative "foreign, unverifiable, allow" default applies beyond this point, not a new gap, just
  not yet closed further. **Both closed in the two entries below.**

- **Array literal syntax: dropped the redundant size/length-kind prefix - `T[N][v1, ...]`/`T[][v1, ...]`
  became `T[v1, ...]`.** User-driven: the array's own *variable* (or param/return/field type) already
  states whether it's compile-time-length or runtime-length (`int32[3]` vs `int32[]`), so restating that on the literal
  itself was pure redundancy - `a mut int32[] = int32[1, 2, 3, 6]` is now the whole story, matching the
  same "don't repeat what the target already says" instinct that was never true for `:=` (which has
  nothing to infer from *except* the literal, so it still can't apply here - see below).
  **The literal is still fully self-describing, just about less: always a compile-time-length array, sized by
  however many values are given, at every level** - `int32[1, 2, 3]` is intrinsically `int32[3]`, always,
  regardless of context. What became context-dependent is only what happens when that self-described
  value is *checked against* a target that wants something else:
  (1) **A fixed literal flowing into a runtime-length (`T[]`) target** is now an implicit promotion - malloc a
  fresh buffer and copy the fixed value's own elements into it (`cgPromoteFixedToRuntimeLength` in
  codegen.c, invoked from both `cgStoreInto` and `cgBoundaryValue`, keyed on a new `typeNeedsRuntimeLengthPromotion`
  predicate - the array-*sizing* counterpart to `typeNeedsMallocPromotion`'s array-*referencing* case,
  an orthogonal axis, not the same mechanism). Gated on `op->isLiteral` in `OperandFitsType` (semantic.c),
  same restriction the existing int-to-float widening already uses: an arbitrary *existing* compile-time-length-array
  value flowing into a runtime-length slot is a different, broader question, not attempted here.
  (2) **A fixed literal whose own inferred size doesn't match a fixed target's declared size** is
  `WRONG_ARG_COUNT` (a new `TYPE_FIT_ARRAY_SIZE_MISMATCH` case in `enum typeFit`), checked against
  whatever it's flowing into, rather than (as before) checked against a size the literal itself restated.
  Not gated on `op->isLiteral` - this reuses the same underlying fact for *any* compile-time-length-array size mismatch,
  literal or not (see the real bug this surfaced, below).
  Consequently, **`cgAggregateLiteral`'s old runtime-length-array-building branch is now dead code and was
  removed**: an `isLiteral` array operand is *never* `arrMalloc` any more (runtime-length is only ever reached via
  the promotion path above), so the function only ever needs to build a struct or a compile-time-length array.
  **A real, pre-existing bug found and fixed alongside this, unrelated to arrays specifically:**
  `TypeIsSame`'s `BASETYPE_ARRAY` case never compared the two sides' actual fixed sizes at all (only
  `arrMalloc`-ness and the element type) - so e.g. `x mut int32[5] = <some int32[3] value>` type-checked
  with zero complaint, then read 5 elements' worth out of a 3-element backing store the moment
  `cgStoreInto`'s by-ref load/store pair ran (a real buffer over-read). Invisible before now because
  nothing ever needed the target's *declared* size to differ from a literal's *own restated* size, since
  every literal always restated one; surfaced immediately once literals stopped restating their own size
  and the "does the target's declared size match" question became load-bearing for the first time. Fixed
  by comparing `arrLen`'s actual value whenever both sides are fixed - which is also exactly what makes
  `WRONG_ARG_COUNT` (1 above) reachable at all, since `OperandFitsType`'s first check
  (`TypeIsSame(target, op->type)`) now correctly falls through to it instead of silently reporting "same
  type" for a real size mismatch.
  **A second, separate, pre-existing bug found and fixed while testing this:** the *existing* int-literal-
  widens-to-float path in `OperandFitsType` only ever updated the operand's *type* (`op->type = target`),
  never its *value* - `cgFloatConst` (codegen.c) reads `op->floatLiteralVal` once `op->type` says float,
  which was left at its zero-initialized default, so e.g. `x mut float32 = 5` silently produced `0.0`.
  Invisible before now because nothing in the existing test suite passed a bare int literal where a float
  was expected; surfaced immediately by a mixed int/float array literal (`float32[1, 2.5]`) built while
  testing this feature. Fixed by also setting `op->floatLiteralVal = (double)op->intLiteralVal` at the
  same point.
  **Nesting (2D+): the scalar element type is stated exactly once, at the very front - a nested row
  restates nothing.** `int32[[1, 2, 3], [4, 5, 6]]`, not `int32[int32[1,2,3], int32[4,5,6]]`: user-
  specified directly. New grammar, syntax-only (never reachable from general expression parsing, so it
  can't collide with anything): `SNTX_ARR_LIT_ARGS` (an item list where each item is either a plain `EXPR`
  or a nested `SNTX_ARR_LIT_NESTED` bracket group with no leading name) and `parseArrLiteralNestedGroup`/
  `parseArrLiteralArgs` (syntax.c), recursively parsed the same way at every depth. Checked the same way
  recursively in semantic.c (`buildArrLiteralLevel`): a leaf item is always checked against the one
  explicit scalar type (authoritative at *every* depth, so e.g. an int literal correctly still widens to
  float32 several levels down); a nested item has no restated type of its own, so the *first* row's own
  recursively-determined type becomes what every sibling row at that level must fit - a differently-sized
  or differently-shaped sibling row surfaces as an ordinary type-fit error (now correctly catchable at
  all, per the `TypeIsSame` fix above), not a separate "shape" check.
  **A real parsing consequence, not just a simplification: array literals now need type-name-awareness,
  the same mechanism struct literals already use, and this time it's load-bearing, not just tidiness.**
  Under the old `T[N][v1,...]`/`T[][v1,...]` shape, `NAME ARR_SFX*` was *greedy* (`parseArrSfx` matches
  any `[EXPR?]`), so a plain index expression like `a[0]` (exactly one bracket group) always failed to
  match the *required trailing* value-list bracket and correctly fell back to ordinary indexing - array
  literals never needed to know `NAME` was a real type, because they structurally needed *at least two*
  bracket groups to succeed at all. The new `NAME [ ARGS ]` shape needs only *one* bracket group -
  structurally identical to indexing - so without knowing `NAME` is a type, `a[0]` would now try (and
  often accidentally succeed) as an attempted array literal. Fixed the same way struct literals already
  solve this (`nameIsKnownType`, committing hard once matched - see the parser-rewrite entry): array
  literals now only ever attempt to parse when the leading name is a known type *or* a recognized
  primitive name (`nameIsPrimitiveTypeName`, syntax.c) - a **new** gate primitives specifically needed
  that struct literals never did, since `declaredTypeNames`/`isKnownType` only ever tracked user
  `type`/`error` declarations, never the fixed built-in primitive set (`bool`/`int32`/`int64`/`byte`/
  `float32`/`float64`) that array literals - unlike struct literals - also have to recognize
  (`int32[1,2,3]` needs this exactly as much as `Point{1,2}` needs `nameIsKnownType`).
  **This also incidentally closes the old "single-value/empty array literal" gap** (`int32[1][5]`
  misparsing as indexing, `int32[][]` not working) documented in the struct/array literal syntax entry
  above - not via the same type-name-awareness fix that closed the equivalent struct-literal gap, but as a
  side effect of the suffix loop (the actual source of that ambiguity) no longer existing at all.

- **Runtime-length arrays: no growable/resizable `Vec` - a runtime length only ever means "sized once, at
  construction, then fixed" - and three, no-overlap var-decl forms for how a var's initial content is
  determined.** A real design fork was considered and explicitly deferred: generics, methods, and a
  resizable `Vec`-like type are a *much* larger, separate direction (see the dedicated "generics/methods/
  stdlib" entry below) - what's built here stays deliberately close to C's own alloca/BSS story, just
  routed through the existing scope-arena machinery instead of the real machine stack (see below for why).
  The three forms, chosen so each is unambiguous about *why* the size is or isn't restated, and a variable
  declaration always has exactly one way to spell each:
  (1) **`x T[] = <array literal>`** - bare `T[]`, size *inferred* from the literal's own value count (the
  existing promotion-inference mechanism - see the array-literal-syntax entry above). This is now the
  *only* legal shape for `T[]` with an initializer; a bare `T[]` with no initializer at all is a compile
  error (`VAR_DECL_MISSING_INITIALIZER`) - there is no other way to know its size.
  (2) **`x T[N]` (N a compile-time constant), no initializer** - zero-filled, real BSS behavior for a
  global (nothing new needed: `emitGlobalDecls` already emits every global as `global T zeroinitializer`
  unconditionally; leaving `initExpr`/the var-decl's own rhs `NULL` *is* the entire mechanism). Pairing
  `T[N]` with an initializing literal is now **also** a compile error (`REDUNDANT_ARRAY_SIZE`) - the
  literal's own value count already fully determines the size, so restating it on both sides was always
  redundant, never just harmless, and is now rejected rather than silently accepted whenever the two
  happen to agree.
  (3) **`x T[expr]` (expr *not* a compile-time constant), no initializer** - a runtime-sized array, "like
  C's alloca" in spirit (uninitialized-by-default semantics) but zero-filled and arena-allocated rather
  than a real stack `alloca`. `T[N]` vs `T[expr]` is decided purely by whether `tryEvalConstIntExpr`
  (semantic.c) can fold the size expression - a bare integer literal (optionally negated) takes the
  constant path, anything else (a variable read, a parameter, an arithmetic expression) takes this one.
  **Deliberately kept as pure var-decl-level syntactic sugar, never a general type-system extension**: the
  resulting declared type is exactly the same shape a bare `T[]` already has (`arrMalloc=true, arrLen=NULL`)
  - `struct type.arrLen` stays exactly what it's always been, a compile-time constant or nothing, so no
  other consumer of `struct type` (`TypeGetSize`, `TypeIsSame`, `len()`, ...) needed to change at all. The
  runtime size itself is carried on the *operand*, not the type: a new `OPERATION_SIZED_ARRAY_ALLOC`
  (mirroring how `OPERATION_LEN` is a compiler builtin, not a real function - no signature can be generic
  over "any array type" without a generics mechanism this language doesn't have) whose `args[0]` is the
  checked-integer size expression.
  **Stack vs. arena, resolved by asking what a runtime-sized array actually needs, not by default:** a
  real LLVM `alloca`/VLA was the first instinct, then dropped in favor of routing through the *existing*
  scope-arena machinery (`__olang_scope_alloc`) instead - own by default, or the declared type's own
  `<name>` tag, exactly the same convention a struct/compile-time-length-array reference already uses. The reasoning:
  a stack-overflow argument against a runtime size doesn't actually hold up on its own - a large
  *compile-time-constant* compile-time-length array already has the identical risk today with no guard, so runtime
  sizing isn't a new risk category, just a new way to reach an old one. The real, narrower distinction is
  that a runtime-sized array can *never* be embedded (no compile-time offset is possible for a
  runtime-known length), so - unlike a plain/embedded local, which deliberately keeps a real, near-free
  stack slot for performance and to preserve value semantics (see the reference-syntax entry's own "when
  do we still need the stack" list) - there is no "cheap embedded slot" benefit a runtime-sized array
  could ever have claimed in the first place. Routing it through the arena instead sidesteps the
  stack-overflow surface entirely (the arena grows via `__olang_new_chunk`'s existing pool-then-`malloc`
  fallback, never a compile-time-length stack region) while giving it the exact same FILO/scope-tied lifetime
  semantics `<>`/`<name>` already provide everywhere else - not a special case, just the ordinary
  mechanism applied to a shape that happens to need pointer indirection unconditionally.
  **This is also what closes the "genuinely runtime-length array reference isn't scope-tracked yet" gap noted in
  the `<>`/`<name>`-on-arrays entry above** - not a separate fix, the natural consequence of building this
  at all: `cgPromoteFixedToRuntimeLength` (the sole remaining place a runtime-length array's backing store is ever
  built, once the array-literal-syntax entry above made `cgAggregateLiteral`'s own runtime-length-array branch
  dead code) now takes an explicit `scopeVal` parameter and allocates via `__olang_scope_alloc` instead of
  a bare `@malloc`, resolved the same way every other reference allocation already is
  (`cgResolveScope(ctx, dstT.scopeParam)` at both of its call sites, `cgStoreInto`/`cgBoundaryValue`) - so
  a compile-time-length-literal-promoted-to-runtime-length value is now scope-tracked exactly as soundly as a fresh
  `OPERATION_SIZED_ARRAY_ALLOC` one is, through the same underlying mechanism. **Every runtime-length array is
  now implicitly reference-shaped for scope-checking purposes, even with no explicit `<>` at all** -
  because there is no "embedded" shape possible for a runtime-known length in the first place. This
  required widening `OperandFitsType`'s scope-check gate: previously scope-checking only fired when
  *both* sides were `structMAlloc` (an explicit `<>`/`<name>`), which is the right gate for structs/fixed
  arrays (where embedding is a real, valid alternative) but wrong for a runtime-length array, where a bare `T[]`
  with no marker at all still needs exactly the same "does this scope provably outlive the target"
  check - `needsScopeCheck` now also covers any `arrMalloc` array regardless of `structMAlloc`.
  **Zero-fill mechanism, new and shared by both no-initializer local forms:** `cgVarDecl` now branches on
  `s->op == NULL` (no rhs to evaluate at all, not even a constant) and stores `cgZeroValue(s->var.type)`
  directly - already correctly `"zeroinitializer"` for a plain embedded compile-time-length array, no changes needed
  there. The runtime-sized form additionally needs an *explicit* zero-fill at the point of allocation
  (`cgSizedArrayAlloc`, via `llvm.memset.p0.i64`, newly declared alongside the other runtime decls) since,
  unlike a fresh `@malloc`, arena memory is recycled from the chunk pool and is **not** guaranteed to
  already be zero - the one place this feature's zero-fill guarantee needed real codegen, not just an
  omitted store.
  **A real, previously-latent lexer/ASI bug found and fixed while testing this, not really about arrays at
  all:** a statement ending in a bare `<name>`/`<>` scope marker, with nothing after it on the same line,
  never got an implicit end-of-statement inserted - `stmntEndTriggerType` (token.c) never included
  `TOK_GRT`, so the tokenizer doesn't synthesize a `TOK_STMNT_END` after one, and the parser read straight
  into the next line as a continuation of the same statement. Invisible before now because every existing
  use of the marker was always followed by more tokens on the same line (`= expr` on a var-decl, or `{`
  opening a function body on a return type) - a bare no-initializer var-decl ending in the marker itself
  (`result mut int32[n]<s>`, nothing else on the line) is the first shape that ever put a trailing `>` at
  the true end of a statement. Not fixed by adding `TOK_GRT` to `stmntEndTriggerType` (that would also
  wrongly terminate a genuine multi-line comparison expression deliberately left continuing on the next
  line, e.g. `x mut bool = a >\n    b` - `>` is a legitimate binary operator there, and the tokenizer has
  no way to tell the two apart from the token alone). Fixed instead at the same place `TOK_CURLY_C` is
  already special-cased, `acceptStmntEnd` (syntax.c): a statement whose very last consumed token is
  `TOK_GRT` can *only* be a marker's own closing `>`, never a genuine trailing comparison operator - a
  binary `>` can never be the last token of an already-fully-parsed statement (a complete expression always
  ends in an operand, never a dangling operator), so accepting `TOK_GRT` there is unambiguous by
  construction, not a heuristic.
  **Permanent tests added to shared.olang**: a no-init `T[N]` global (`zeroGlobal`) and local zero-fill
  test, a no-init `T[expr]` (own-scope-default) local test, and `makeSizedArrayRef`/its own crossing-a-
  function-boundary-via-a-named-scope test, alongside `makeFixedArrayRef`/`makeFixed2DRef`. The three
  compile-error cases (`VAR_DECL_MISSING_INITIALIZER` for a bare `T[]`/scalar with no initializer,
  `REDUNDANT_ARRAY_SIZE` for `T[N] = <literal>`, and a mismatched-named-scope `SCOPE_MAY_NOT_OUTLIVE_TARGET`
  rejection for a runtime-sized array) were confirmed ad hoc rather than added to the suite, matching how
  every other compile-error case in this file is handled - the test harness has no way to assert "this
  file fails to compile" from within a `.olang` file, only to run one that already compiles.

- **Deferred: generics, methods, and a real growable `Vec` - a separate, much larger future direction,
  not started.** Surfaced directly by the runtime-length-arrays design discussion above: once a user wants
  `insert()`/`add()`/arbitrary methods on a "some kind of set dtype" the user might define, or an `alloc()`/
  `calloc()`-style API generic over an "any" element type, that's a different, much bigger question than
  "how big is this array's backing store" - a real generics mechanism (something no part of the type
  system today provides - `len()`, `TypeIsSame`, every array/struct operation is written against concrete,
  fully-resolved types) and a decision about whether/how olang gets user-callable methods at all (general
  `Type.funcName` OOP-style methods were already considered and explicitly dropped once, in favor of just
  constructors/destructors - see that entry above - specifically to sidestep the field/method name-collision
  question; reopening methods for a stdlib collection type would have to either accept that same collision
  risk for stdlib types specifically, or find a different mechanism, e.g. free functions namespaced by
  type). The user's own framing: runtime-length arrays as built here should stay "static but unknown at compile
  time," C-alloca-flavored, not the start of a `Vec`; a real resizable/growable collection - and whatever
  generics mechanism it would need to be written once, generically, rather than special-cased per element
  type - belongs in a *standard library* built on top of the language once it exists, not as more special
  cases inside the compiler itself. Nothing about the language design should be shaped around this yet;
  revisit once a concrete need for a resizable collection or generic user code actually arises.

- **`cgResolveEffectiveScope`/`cgAssign`'s bare-`<>` scope-override mechanism now also walks
  `OPERATION_INDEX`, not just `OPERATION_MEMBER` - closing the array-index half of a gap this file had
  documented in two places, though it turns out to have no live test coverage today.** Mechanically a
  direct mirror of the existing member-access handling: `cgResolveEffectiveScope` now recurses through
  `base->opType == OPERATION_MEMBER || base->opType == OPERATION_INDEX` alike (`a[i].b[j]` resolves the
  same way `a.b.c` already did), and `cgAssign`'s own scope-override computation now considers an
  `OPERATION_INDEX` target exactly the same way it already considered an `OPERATION_MEMBER` one - same
  `typeIsRefShaped(base->type) && base->type.structMAlloc` gate, same fallback to `ctx->ownScopeSlot` for
  an unhandled plain base.
  **The honest finding while closing this: the motivating shape doesn't actually exist in olang today.**
  For `arr[i] = ...`'s target type (the array's own `arrElem`) to need this override at all, `arrElem`
  itself would have to be `structMAlloc` - but `applyRefMarker` only ever sets `structMAlloc`/`scopeParam`
  on the *outermost* type a type-ref produces, strictly *after* `applyArraySuffixes` has already finished
  building `arrElem` from the unmarked base (see the `<>`/`<name>`-on-arrays entry above, gap (3): "the
  single trailing marker applies once, to the whole type"). There is no grammar position to write a
  per-element marker distinct from the whole-array one - `Point<>[3]` doesn't parse (the marker must
  follow every array suffix, not precede one), and `Point[3]<s>` marks the array as a single whole
  reference, leaving `arrElem` (plain `Point`) untouched. Confirmed by hand: `type W struct { p
  Point<>[3] }` fails to parse (`unexpected token '[' expected '}'`) for exactly this reason. So today,
  an `OPERATION_INDEX` target's own type is never `structMAlloc`, and the new branch this adds is
  currently unreachable dead code from any real olang program - no regression test could be written for
  it, unlike its `OPERATION_MEMBER` sibling (which the array-index-scope-override entry's own
  `ChainOuter`/`ChainMid` test does exercise, since a *struct field*, unlike an array element, gets its
  own independent type-ref and so its own independent marker). Kept anyway rather than reverted: it's a
  direct, cheap, zero-new-abstraction completion of an already-general mechanism (both call sites already
  existed, already took `struct type t`/`struct operand* base` generically), and it will start being live,
  correct code the moment any future work makes an array's own `arrElem` independently markable - without
  needing this fix revisited when that day comes. `make verify` (62 tests, `-c` production build/run
  included) still passes with this change, confirming it's inert on every currently-expressible program,
  not that it does anything a test observed.

- **Arrays of destructor-bearing struct elements now register a destructor per element, not zero.**
  `cgRegisterDtorIfNeeded(ctx, t, scopeVal, heapPtr)` used to check `t.hasDestruct` directly - correct when
  `t` is a struct, but silently wrong when `t` is an array (`hasDestruct` is a struct-only field, always
  false on an array type's own value), so heap-promoting a compile-time-length array of `destruct{}`-declaring struct
  values registered nothing at all - a real resource leak (e.g. a `FileHandle[3]` never closing any of its
  three handles), not just a missed optimization. Fixed by making the function dispatch on `t.bType`: a
  struct registers itself as before; a compile-time-length array (`!arrMalloc` - the only shape that ever reaches this
  function, since `typeNeedsMallocPromotion`/`cgPromoteFixedToRuntimeLength`'s own source is always fixed)
  walks its `count` elements via a compile-time-unrolled loop (`count` is always a literal here, from
  `arrLen`), GEP-ing each element's own address the same "`getelementptr elemTy, ptr base, i64 i`" way
  `cgPromoteFixedToRuntimeLength`'s own element-copy loop already does, and recurses `cgRegisterDtorIfNeeded`
  on each - which, for free, also handles a nested compile-time-length array of structs (`Handle[2][3]`), since a nested
  array's own element type is just handed back to the same function one level down. A new `typeMayHaveDestruct`
  (pure lookup, no codegen) skips emitting the loop entirely when neither the element type nor anything
  nested inside it could possibly need it.
  **Both promotion paths needed the identical fix, since both build a fresh heap buffer via the same
  per-element GEP shape:** the compile-time-length-array-to-`<>`-reference path (`cgStoreInto`/`cgBoundaryValue`'s
  `typeNeedsMallocPromotion` branch, already calling `cgRegisterDtorIfNeeded` on the whole promoted type -
  no call-site change needed there, since `t` could already correctly be an array once the function itself
  learned to handle one) and the compile-time-length-literal-to-runtime-length-`T[]` path (`cgPromoteFixedToRuntimeLength`, which
  registered nothing at all before this - a second, separate instance of the same underlying gap, found
  while testing the first fix, not something the original request called out specifically). Fixed with one
  additional call, `cgRegisterDtorIfNeeded(ctx, srcT, scopeVal, bytes)`, right after that function's own
  element-copy loop, reusing the exact same recursive walk - no new mechanism needed for the second path
  either.
  **Deliberately not attempted here at the time:** a genuinely runtime-length (`T[expr]`) array of
  destructor-bearing elements - `OPERATION_SIZED_ARRAY_ALLOC`'s own zero-fill (`cgSizedArrayAlloc`) never
  allocates actual struct instances via a literal at all (it always zero-fills, never copies from a source
  array), so there's nothing to register a destructor *for* at allocation time there; and the walk is still
  always a compile-time-unrolled C loop, never an LLVM runtime loop, since both call sites are only ever
  reached for a fixed (`!arrMalloc`, compile-time-constant-length) source array - a hypothetical future
  runtime-counted source would need a real runtime loop, not this one. **This was a real, confirmed bug,
  not just an unimplemented feature - closed in its own entry near the end of this section.**

- **"return x" now skips x's own destructor - closes the move-semantics gap the constructors/destructors
  entry above flagged as a known limitation.** Before this, `cgRunLocalDestructors` ran unconditionally
  over every currently-live plain (non-`<>`) local before a `ret`, with no exception for a local that was
  itself the value being handed back. That's not a memory-corruption bug (the returned value is already a
  separately-loaded LLVM SSA snapshot by the time the destructor call's own, independent load happens, and
  a destructor's `.self` parameter is by-value - any mutation it makes is local to its own frame and can't
  reach either the caller's copy or the original stack slot) - it's a *resource* bug: the destructor still
  performs whatever real external side effect it's coded to do (closing a file descriptor, say), so the
  caller receives a byte-identical copy of a struct whose backing resource has already been released out
  from under it. Silent and easy to miss, since the returned *values* look completely fine.
  **Deliberately narrow, not real move semantics - a plain "skip this one local" check, not dataflow
  tracking.** `cgRunLocalDestructors` gained a `skipLocal` parameter (a `struct cgLocal*`, `NULL` at every
  call site except `cgRet`'s own value-return path); `cgSkipLocalForReturn(ctx, op)` resolves it by
  checking whether `op` (the return statement's own operand) is a bare `OPERATION_READ_VAR`, and if so
  looking that variable up by name via the existing `cgFindLocal` (matching this file's own established
  "codegen looks locals up by name, never by `struct var*` identity" convention - see the parameter-
  identity-duality bug found earlier this session). Only a bare `return x` is recognized: `return x.field`,
  `return arr[i]`, or any other expression that merely reads *through* a local still destructs every local
  it reads from exactly as before, since none of those hand a local's own value out whole - a real,
  intentionally-drawn boundary, not an oversight. This also correctly extends to a *parameter* being
  returned bare (`func identity(h Handle) ? Handle { return h }`), with no special-casing needed: a
  function's own parameters are declared as ordinary `cgLocal`s at function entry (see `cgFunction`), so
  `cgFindLocal` already finds them the same way it finds any other local.
  **Confirmed correct, not just "doesn't crash," via the external side effect itself**: a new pair of tests
  observe `resourcesClosed` (the existing `Handle` destructor's own side-effect counter) directly - one
  proving the returned local's destructor no longer fires inside the function that returns it, the other
  proving the skip is scoped to exactly the one local named by `return` and not a blanket "no destructors
  fire on any return" - a second, non-returned local declared in the same function still gets destructed
  normally, before that function even returns.

- **The static scope checker traces a scope tag through "a field of a field," not just one constructor's
  own field - closing that half of the checker's own documented "second hop" gap.** Both gaps left open by
  the one-hop version are decidable, ordinary static-analysis problems, not anything fundamentally
  unprovable - this one is a pure substitution problem, the same technique generics/monomorphization use
  everywhere: compose bindings across however many levels of nesting, rather than stopping after one.
  Concretely, `o.mid.leaf` (where `mid`'s own type `Mid<s>` is itself constructor-bearing, with its own
  internal `leaf Point<s>` using a completely different "s" - Mid's own, not Outer's) used to resolve only
  `mid`'s own field tag through `o`'s binding map, never composing *Mid's own internal* ctor-param
  substitution on top of that - so `o.mid.leaf` was silently "foreign, unverifiable, allow" against any
  return type, confirmed compiling with zero complaint even when `o`'s own scope was provably wrong.
  **Mechanism: a constructor field's own initializer already builds a real `scopeBindings` map via the
  exact same `OperandFuncCall` logic any other call already gets** (e.g. `mid Mid<s> = Mid(s, Point{x, y})`
  is just a call to Mid's own ctor, checked once, when Outer's own type is checked) - it just wasn't kept
  anywhere past that one check. Now persisted onto the field's own `struct var.scopeBindings` (the same
  field a var-decl's own initializer already populates - reused, not duplicated) in `semaCheckBodies`'s
  ctor-body-check, once, at the type's own declaration - not recomputed per call site. `OperandMember` then
  composes this persisted map through the base's own binding (one more `resolveEffectiveScopeVar` hop) when
  building a member operand's own map, so a *further* member access on that operand can resolve through it
  too - the recursion happens across successive `OperandMember` calls, not within any one of them.
  **A real, latent identity-mismatch bug found and fixed while building this, same root cause as the
  parameter-copy duality bug from the one-hop checker's own extension:** a constructor field's persisted
  map can carry a `boundTo` that's a scope-chain *copy* (from inside the checking type's own ctor body,
  where a parameter is read as a value), while `base`'s own map always stores the type-level *original*
  (`OperandFuncCall`'s `param` is always read straight off `func->type.vars`) - comparing the two by raw
  identity in `resolveEffectiveScopeVar`'s lookup silently failed to match, so the composed substitution
  never actually looked anything up. Fixed two ways, both defensible on their own: `OperandFuncCall` now
  stores `canonicalVar(arg->readVar)` instead of the raw pointer (so anything persisted past one check is
  already portable), and `resolveEffectiveScopeVar`'s own lookup now canonicalizes both sides before
  comparing regardless (defense in depth, matching the codebase's established `canonicalVar` convention for
  this exact class of mismatch). **Confirmed both directions with ad hoc, uncommitted programs during
  development** (not testable as a permanent `.olang` test - a rejected program can't run as a `test{}`
  block): the correctly-scoped version compiles clean, and swapping in a second, unrelated scope parameter
  at `Outer`'s own construction site is correctly rejected - both confirmed with the checker's `SCOPE_MAY_
  NOT_OUTLIVE_TARGET` message firing (or not) exactly where expected; the permanent test in shared.olang
  only exercises the accepting path, matching every other checker test in this file.

- **The static scope checker now tracks reassignment through a plain `x = y`, and merges disagreeing
  branches into an honest "ambiguous" state instead of either half of the wrong answer - closing the other
  half of the "second hop" gap.** Before this, a var's own `scopeBindings` were set exactly once, at its
  own declaration, and never revisited - a later `box = other` left `box`'s tracked binding frozen at
  whatever it was originally, so a program that reassigned a `<>`-heap-indirect var to point at a
  *different*, unrelated scope's instance and then read through it compiled with zero complaint, exactly
  as unsound as the un-tracked case the checker exists to catch. Confirmed by test before the fix (compiled
  clean) and after (correctly rejected).
  **Two genuinely different problems, not one:** straight-line reassignment is a simple in-place update -
  `buildAssignStmnt` now re-binds a bare assignment target's own `scopeBindings` to the rhs's, the identical
  propagation `buildVarDeclStmnt` already does at declaration time (only ever for a plain, non-compound
  `x = y` with a bare local-read target - `x.field = y`/`x[i] = y` don't have a *var* to re-bind, and no
  compound `+=`-style operator ever applies to a scope-relevant struct/array type anyway). Branching is not
  a simple update: two branches can each reassign the same var to a *different* value, and naively applying
  whichever branch happened to be checked last (this checker walks both branches of an `if` unconditionally,
  in source order, regardless of which would actually run) would silently pick one branch's answer at
  random from the *other* branch's perspective - a real, concrete false-rejection risk (rejecting sound
  code, the same class of mistake the `varIsOwnParam` identity-duality bug already proved is worse than an
  honest "unknown"), not just an imprecision.
  **Mechanism: snapshot before each alternative, restore to the same starting point before checking the
  next, then fold every outcome into one result** (`snapshotScopeBindings`/`applyScopeBindingsSnapshot`/
  `foldScopeBindingsBranch`, semantic.c) - a var whose bindings agree across every branch keeps that agreed
  value; a var where any branch disagrees is marked unresolvable going forward. `buildIfStmnt` folds two
  outcomes (the `else` branch, or the baseline itself standing in for "no else, nothing happened" when
  absent); an `else if` chain composes for free, since the recursive `buildIfStmnt` call already leaves the
  vars in *its own* merged state by the time it returns, so the outer level only needs one more fold against
  that already-merged outcome. `buildMatchStmnt` does the N-way version of the identical fold across every
  case plus an implicit/explicit "nothing matched" possibility (this checker doesn't attempt exhaustiveness
  analysis, so "no case matched" is always folded in as a live alternative even when `nomatch` is absent and
  the match happens to be exhaustive in practice). `buildForStmnt`/`buildDoStmnt` get the deliberately
  blunter treatment loops need in a checker with no fixpoint iteration: the body is only ever walked once,
  so rather than trust that one walk to represent every iteration, *any* reassignment observed during it
  marks that var unresolvable outright, regardless of what it specifically changed to - safe, never unsound,
  just more conservative than a real per-iteration analysis would need to be.
  **A real design bug found and fixed while building this, not about the mechanism's correctness but about
  what "unresolvable" actually has to mean:** the first version reset a disagreeing var's bindings to plain
  empty - indistinguishable from "never tracked in the first place," which `resolveEffectiveScopeVar` falls
  through unchanged, landing right back in `scopeCanFlowInto`'s existing "foreign, unverifiable, allow"
  default. That's correct for a var this mechanism genuinely never touched, but wrong for one it *did*
  trace and found to be actively ambiguous - "allow" there silently undoes the whole point of tracking
  reassignment at all, confirmed concretely: a disagreeing-branches program compiled clean even with this
  fix's first draft in place. Fixed with `SCOPE_AMBIGUOUS`, a dedicated sentinel `struct var*` that's never
  equal to any real function's own parameter - `foldScopeBindingsBranch` marks every key either branch ever
  tracked for a disagreeing var as bound to this sentinel (not emptied), and `scopeCanFlowInto` rejects
  outright the moment it sees it, before falling into the ordinary foreign-scope leniency. Monotonic by
  construction: once a key is marked ambiguous, a later fold that touches it again rebuilds from the
  already-ambiguous entry first, so it can never be "un-marked" by a later branch that happens to coincide
  with some earlier, already-superseded value.
  **Confirmed with both directions of every branch shape** (all ad hoc during development except the two
  accepting cases kept as permanent tests, same convention as every other checker test in this file):
  straight-line reassignment to the same vs. a different scope; two `if` branches that agree vs. disagree;
  an `if` with no `else` at all reassigning in the one branch that exists; a `match` where every case (plus
  `nomatch`) agrees vs. where exactly one disagrees; and a `do` loop that reassigns internally (killed,
  deliberately, even though the reassignment happens to be the same scope every iteration here - the
  documented, accepted cost of not attempting per-iteration fixpoint analysis) vs. one that never reassigns
  the var at all (left untouched, confirming the loop-body tracking doesn't over-trigger on unrelated code).

- **A bare-pun constructor field ("`{ wrapped }`" alone, forwarding a same-named constructor parameter
  directly, rather than constructing a fresh value the way an explicit initializer does) now traces
  through the static scope checker too - found while confirming the field-of-a-field fix genuinely
  generalizes to 3+ levels, not a depth limit specifically but a real, separate gap in its own right.**
  The field-of-a-field fix persists a field's own `scopeBindings` from *its own initializer expression*,
  checked once at the field's own declaration - but a bare-pun field has no initializer expression at all;
  its value *is* one of the constructor's own parameters, unchanged. A parameter, unlike a local var-decl,
  never gets its own `scopeBindings` populated (there's no single, fixed initializer to derive it from - a
  parameter's value varies by call site, the same reason a scope-typed parameter's own binding is never
  persisted onto the parameter itself either, only onto each individual *call*). So a bare-pun field's
  persisted map was always empty, `resolveEffectiveScopeVar` fell through to the raw, foreign, type-level
  var, and the existing "foreign, unverifiable, allow" default silently accepted an actually-wrong scope -
  confirmed by test before the fix (compiled clean) and after (correctly rejected).
  **Fixed with the same idea scope-typed parameters already use - per-call, not per-declaration - extended
  to non-scope parameters:** `OperandFuncCall` now also merges a non-scope-typed argument's own
  `scopeBindings` into the call's own map (so whatever a fresh nested call like `WrappedPoint(a, ...)`
  already knows survives the *outer* call's own boundary, e.g. `PunnedBox(a, WrappedPoint(a, ...))`), and
  `OperandMember` now also carries a base's own map forward onto a further member access, skipping any key
  already set by the field's own more specific info (a bare-pun field has no persisted map of its own to
  compose through, so without this the merged info from `OperandFuncCall` would have nowhere to flow to).
  Safe unconditionally - every type's own ctor scope params are their own distinct `struct var*`, never
  shared across types, so an unrelated carried-forward key can never collide with, or be mistaken for,
  anything a later lookup actually asks for by a different key.
  **One real, narrow precision cost found and accepted, not fixed - a genuine key-space limitation, not an
  oversight:** when a constructor has *two or more* bare-pun parameters that happen to share the exact
  same underlying constructor-bearing type (e.g. two `Leaf3<...>`-typed fields, each tagged to a
  *different* scope), `OperandFuncCall`'s merge sees the same inner key (`Leaf3`'s own ctor scope param)
  from two different arguments and can't tell them apart - `struct scopeBinding` is a flat `{typeParam,
  boundTo}` pair with no notion of *which field's own chain* it came through. Rather than silently keep
  whichever argument happened to merge first (which could resolve one field's own member access using an
  *unrelated* field's own binding - a real false accept), a genuine conflict is marked `SCOPE_AMBIGUOUS`
  (the same sentinel the reassignment-tracking entry above introduced) and rejected - confirmed by test:
  the field that's actually sound in this shape (`t.a.val`, genuinely tagged to `a2`) is now also rejected
  alongside the field that's actually unsound (`t.b.val` against `Point<a2>`, genuinely tagged to `b2`) -
  a real false rejection, not just a hypothetical one. This is strictly better than what existed before
  (both were silently, wrongly *accepted*), and disambiguating the two would need extending `struct
  scopeBinding`'s own key space to carry *which parameter/field path* a binding came through, not just
  *which inner ctor param* - a real design question (how should that path be represented and compared?),
  not a straightforward implementation gap, so deliberately left as a known, narrow, safe-but-imprecise
  edge case rather than attempted here. **Closed in the "viaParam"/"punParam" entry near the end of this
  section, once a concrete answer to that design question was chosen.**

- **Closed the multi-bare-pun-same-type precision gap: `struct scopeBinding` grew a "which path did this
  flow through" key, `viaParam`, and a bare-pun field grew its own pointer back to the constructor
  parameter it puns, `struct var.punParam` - together enough to disambiguate two sibling bare-pun fields
  of the identical constructor-bearing type without ever risking a false accept.** The design question
  the entry above left open was "how should the path be represented and compared" - answered with the
  simplest thing that actually works: not a general path/chain type, just one extra `struct var*` recording
  *which of the current call's own parameters* an entry flowed through, re-tagged (overwritten, not
  composed) at every call boundary it crosses. A binding only ever needs to answer "does this belong to the
  field I'm about to access right now," one hop at a time - the same "always a single, already-final hop"
  property `scopeBinding.boundTo` itself already relies on (see its own comment) - so a flat tag is enough;
  nothing about this needed a real path/chain representation after all.
  **Mechanism, two small additions wired into the existing machinery, no new one:** `OperandFuncCall`'s
  existing "merge a non-scope argument's own map into the call's own map" step (the bare-pun fix above) now
  tags every entry it merges with `viaParam = canonicalVar(param)` - *this* call's own parameter, always
  overwriting whatever `viaParam` the entry carried coming in, never composing a longer path. Two different
  arguments that happen to produce the same inner `typeParam` key (the actual collision) now end up as two
  *separate* entries distinguished by `viaParam`, instead of one contested entry - no ambiguity to detect
  at merge time in the common case at all. `resolveStructCtorInto` records, on a bare-pun field's own
  declared `var` (`struct var.punParam`), exactly which constructor parameter it puns - already resolved
  there via `VarGetList(&ctorParams, fieldName)`, just not persisted anywhere before this. `OperandMember`'s
  own bare-pun carry-forward step (the same one from the entry above) now filters base's own entries before
  copying them onto the field being accessed: an entry is only carried forward if it's unambiguous
  regardless of path (`viaParam == NULL` - a call's own scope-typed parameter bindings, universal to the
  whole instance, unaffected by any of this) or if it specifically flowed through *this* field's own
  `punParam`. Copied entries have `viaParam` reset to `NULL` - from the accessed field's own operand's
  perspective the path question is now fully answered, so a *further* member access on it needs no more
  disambiguation, keeping this to one hop per level exactly like the rest of the checker.
  **A real, if narrow, soundness gap found and fixed while extending this to the checker's existing
  reassignment/branch-merge tracking, not just the straight-line call/member-access path this was designed
  for:** `scopeBindingsEqual` and `foldScopeBindingsBranch` (the `if`/`match`/loop merge machinery two
  entries up) used to compare and key entries by `(typeParam, boundTo)` alone. Once a var's own tracked map
  can legitimately hold two entries for the same `typeParam` distinguished only by `viaParam` (exactly the
  shape this fix introduces), two branches that reassign such a var by *swapping which parameter each value
  flows through* (e.g. `box = Dual(x, own, ...)` in one branch vs. `box = Dual(own, x, ...)` in the other -
  same *set* of boundTo values either way, `{x, own}`, just attached to different `viaParam`s) could compare
  as "equal" under the old, `viaParam`-blind comparison, silently accepting a merge that's actually
  ambiguous - a false accept, and a strictly worse class of bug than the false rejection this whole fix
  exists to remove. Fixed by folding `viaParam` into both the equality check and the ambiguous-key
  construction, the same composite key `OperandFuncCall`'s own merge loop already uses.
  **Confirmed both directions with a permanent test** (`DualWrapped`/`dualWrappedFieldChecked` in
  shared.olang, the first of this fix's two confirmations that's actually *acceptable* as a permanent
  test - `t.a.val` used to be a false rejection, now compiles and returns the right value) **and one ad hoc
  rejection** (the genuinely-unsound sibling access, `d.right.inner` checked against the *other* field's
  scope, still correctly rejected with `SCOPE_MAY_NOT_OUTLIVE_TARGET` - confirming the fix adds precision
  without weakening the existing safety net at all). `make verify` passes with both changes in place.
  **Left deliberately bounded at the time to one call boundary:** `viaParam` was a single flat tag,
  re-tagged (not composed) at each call boundary, so a path deeper than one call's own parameter list could
  still collapse two genuinely different origins into the same post-flattening key - handled *safely* (the
  conflict-detection in both merge loops falls back to `SCOPE_AMBIGUOUS` rather than silently picking one),
  not precisely. **Generalized to arbitrary depth in the next entry below**, once asked directly whether
  the one-hop bound could be lifted.

- **`viaParam` generalized from a single flat tag into `viaPath`, a real stack - closing the "three-or-more
  levels of nested bare-pun forwarding" bound the entry above left open, not just documented it more
  precisely.** The design question was genuinely simple once posed directly: a scalar tag, *overwritten* at
  each call boundary, necessarily forgets everything more than one hop back; the fix is to *compose*
  instead of overwrite - `struct scopeBinding.viaParam` (a single `struct var*`) became `viaPath` (`struct
  list` of `struct var*`, nearest-first) - and thread push/pop through the exact two places that used to
  read/write the scalar, no new mechanism, no general path/chain type invented for this.
  **Two small, symmetric helpers, `viaPathPush`/`viaPathPopFront`/`viaPathsEqual` (semantic.c):**
  `OperandFuncCall`'s bare-pun merge step now *pushes* the current call's own parameter onto whatever path
  an incoming entry already carried (instead of overwriting), so a chain of nested bare-pun forwarding
  threads its full history through, one push per call boundary crossed. `OperandMember`'s bare-pun
  carry-forward step now checks the *top* of an entry's path against `memberVar->punParam` (instead of
  comparing the whole scalar) and, on a match, *pops* that one frame before copying the entry forward -
  any remaining frames stay intact for a further member access on the SAME operand to pop in turn. An empty
  path still means "unambiguous regardless of path," exactly as bare `NULL` did before - the base case is
  unchanged, only the "one hop then done" limitation is gone. `resolveEffectiveScopeVar`'s own generic,
  path-agnostic lookup (used by every call site that doesn't know which path it wants) needed no logic
  change at all, only a comment update - it was already correctly ignoring path information and falling
  back to `SCOPE_AMBIGUOUS` on genuine disagreement, which remains exactly the right behavior with `viaPath`
  in place of `viaParam`.
  **A real soundness gap found and fixed while updating the checker's existing reassignment/branch-merge
  machinery to match:** `scopeBindingsEqual`/`foldScopeBindingsBranch` had already been keyed on
  `(typeParam, viaParam)` by the entry above (for exactly this reason), so simply swapping in `viaPathsEqual`
  in place of a scalar comparison was the direct, mechanical continuation of that same fix, not a new one -
  called out here only because skipping it would have silently reintroduced the identical false-accept risk
  (two branches disagreeing on which path a value flows through comparing as "equal") one level deeper.
  **A second, unrelated, pre-existing bug found and fixed while building the permanent 3-level test for
  this:** `resolveTypeRefBase`'s eager-resolution guard (`if (!willBeRef) resolveTypeDecl(found)`) skipped
  resolving a type for *every* `<>`/`<name>`-marked reference, not just a genuinely self-referential one -
  a much blunter check than what it was actually protecting against (forcing resolution back into a type
  still mid-resolving itself, which would either recurse or wrongly report `STRUCT_NOT_YET_DEFINED` for a
  perfectly legitimate `<>`-broken cycle like `next Node<>`). Since `struct type` is copied *by value* at
  `return *found`, not accessed through a pointer afterward, a `<>`-marked reference that happened to be
  the *first* thing anywhere to mention its target type permanently baked in a still-placeholder snapshot
  (empty `.vars`) into that one field's own type - never refreshed even after something else later forced
  the canonical entry to resolve for real. Invisible in every prior test, since every existing `<>`
  reference to a given type happened to be preceded, somewhere in resolution order, by at least one other,
  non-`<>` reference to the same type; surfaced immediately by a cross-module `<name>`-tagged field
  (`box DualWrapped<hs>` inside `Holder`, referencing a type with no earlier non-`<>` reference anywhere) -
  `h.box.left.inner` failed with "unknown struct member" because `h.box`'s own snapshot of `DualWrapped`'s
  type still had zero fields. Fixed by gating on `found->resolving` (the exact fact the old check was
  approximating) instead of "does this reference carry a marker at all" - `resolveTypeDecl` already has
  its own precise re-entrancy guard keyed on that same flag, so this loses none of the self-reference
  safety while eagerly resolving everything else, matching how a plain (non-`<>`) embedded reference has
  always behaved.
  **Confirmed with a real 3-level permanent test** (`Holder`/`holderFieldChecked` in shared.olang, chaining
  `h.box.left.inner` through Holder's own "box", DualWrapped's own "left", and WrappedPoint's own "inner" -
  three separate bare-pun hops, three separate pushes/pops, resolving to a single verified scope, not
  `SCOPE_AMBIGUOUS`) and one ad hoc rejection (`h.box.right.inner` checked against the *other* field's
  scope, still correctly rejected with `SCOPE_MAY_NOT_OUTLIVE_TARGET`, confirming the generalization adds
  precision without weakening the existing safety net). `make verify` passes with all of this in place.
  **What was left at the time, closed by the entry below, not by a code change:** two entries with the
  exact same *fully-popped* remaining path colliding if two independently-nested chains happen to converge
  on it (e.g. two siblings at DIFFERENT levels that both happen to bottom out through the same sequence of
  same-typed bare-pun fields).

- **The "deep corner" above turns out not to be a reachable gap at all - proven by induction, not patched.**
  Asked directly whether it could be closed; working through it precisely showed there was nothing left to
  fix. The argument: two entries can only ever be *compared* against each other (by `viaPathsEqual`) at one
  of two points - `OperandFuncCall`'s merge loop (comparing entries newly pushed from argument `i` against
  whatever's already in the call's own map from arguments `0..i-1`) or `OperandMember`'s carry-forward loop
  (comparing entries popped from the *same* base operand's map against each other). In the first case, a
  constructor's own parameter names are always unique within one signature (`VAR_NAME_IN_USE` rejects a
  duplicate), so entries contributed by two *different* arguments are always pushed with two *different*
  top-of-path frames - they can never collide at the point of merge, only entries *within one argument's
  own already-merged map* can, and that case is exactly what the existing conflict-check already catches.
  In the second case, only entries whose *top* frame already matches the field's own `punParam` are popped
  at all (everything else is filtered out first) - so two entries reaching the popped comparison already
  agree on their top frame, meaning if their full paths were ever going to collide, they'd have already
  been equal (as full paths) in the base operand's own map *before* popping - which the same induction
  (applied one level up, to whatever produced *that* map) already forbids, unless they'd already been
  consolidated into one `SCOPE_AMBIGUOUS` entry. By induction from the innermost (leaf) construction
  outward, this holds at every level: an operand's own `scopeBindings` map can never carry two distinct
  entries with the same `(typeParam, viaPath)` pair and *different* `boundTo` without one of the two
  existing conflict-checks having already caught and flagged it. The existing checks aren't dead code -
  they're the base case the induction relies on - just never reachable with a *silently wrong* outcome:
  every path through the mechanism either lands on a unique key or on one already marked ambiguous at its
  true point of origin.
  **Confirmed empirically, not just on paper**, with `SiblingPair`/`siblingPairOneChecked`/
  `siblingPairTwoLeafChecked` in shared.olang: `one` reaches `WrappedPoint`'s own internal `s` with a
  one-frame path (`[one]`); `two.leaf` reaches the exact same `typeParam` (the same `WrappedPoint` type,
  reused) with a two-frame path (`[two, leaf]`) - genuinely different depths, genuinely the same innermost
  key, and both resolve independently to their own correct, different scopes (`a` and `b`) with no
  ambiguity and no cross-talk between them, exactly as the induction predicts. A mismatched check
  (`p.two.leaf.inner` against the *wrong* scope) is still correctly rejected, confirming the checker is
  actually live here, not vacuously permissive. No code changed for this entry - only the proof and its
  confirming test.

- **A real, confirmed resource leak fixed: a genuinely runtime-sized (`T[expr]`) array of destructor-
  bearing elements never ran any of its elements' destructors, even after being filled in.** Not just an
  unimplemented feature - stress-tested directly (a destructor-bearing type with a side-effect counter,
  filled via a loop after `arr mut H[n]<>`) and confirmed the counter never moved. `cgSizedArrayAlloc` only
  ever zero-filled the buffer and returned; nothing registered anything with the owning scope's destructor
  list, unlike a compile-time-length array literal (which walks its own compile-time-known elements at allocation
  time - see the per-element-destructor entry above). The gap: a runtime-sized array's own elements aren't
  known at allocation time at all - they're filled in later, by ordinary, separate `arr[i] = ...` statements
  - so there was no single point that could walk "the elements" the way a compile-time-length array's own literal could.
  **Fixed by registering all `n` slots up front, at allocation time, unconditionally - not deferred until
  or gated on each slot actually being individually assigned.** This was a real design fork, surfaced and
  decided rather than picked silently: should a scope-close destruct only the slots a caller explicitly
  assigned (needing new runtime "was this slot initialized" tracking), or every slot regardless (meaning
  `destruct{}` has to treat a zero-filled/never-assigned value as well-defined)? Went with the latter -
  simpler, and consistent with zero-fill already being this array form's own accepted, documented default
  state everywhere else. Each destructor call reads whatever's actually at that slot's memory when the
  scope eventually closes, so a slot that was later assigned a real value destructs that value correctly,
  and a slot nobody got around to assigning destructs the zero-filled value the initial memset produced.
  **Mechanism: a new `cgRegisterDtorLoop` (codegen.c), the runtime-counted counterpart to
  `cgRegisterDtorIfNeeded`'s own compile-time-length-array branch.** A `T[expr]` array's own count is only known at
  runtime, so it can't be compile-time-unrolled the way a compile-time-length array's compile-time-constant length is -
  this emits a genuine LLVM loop instead (an `alloca`'d `i64` counter with real `br`/label blocks, using
  `ctx->lblCtr`/`cgLabel`/`cgBr` the same way `cgFor`'s own loop already does, rather than a hand-written
  runtime-string function like `emitScopeRuntime`'s other primitives - only one call site needs this, so a
  dedicated shared runtime helper wasn't worth it), calling `cgRegisterDtorIfNeeded` once per element
  *inside* the loop body - which still handles a nested compile-time-length-array element type recursively for free,
  exactly as it already does for a compile-time-length array's own compile-time-unrolled loop. No new registration
  primitive needed on the runtime side at all - `__olang_scope_register_dtor` already handles "one instance,
  one destructor function," called `n` times in a row from inside the new loop.
  **Confirmed both directions**: a permanent test (`useSizedHandleArray` in shared.olang) fills every slot
  via a loop and checks the destructor count matches; ad hoc (not permanent, nothing further to assert
  against) confirmed a slot left entirely unassigned still destructs its zero-filled value, and that `n=0`
  neither crashes nor over-counts.

- **A second, unrelated, small gap closed alongside the above: an existing (non-literal) compile-time-length-array value
  can now flow into a runtime-length (`T[]`) target too, not just a fresh literal.** `OperandFitsType`'s runtime-length-
  promotion branch was gated on `op->isLiteral` - the same gate the int-literal-to-float widening rule
  uses, but for a genuinely different reason there: widening an int *literal* is pure reinterpretation (no
  fixed representation to convert from yet), while a non-literal int already has a concrete representation
  and would need an actual runtime conversion instruction - a real, still-unimplemented mechanism gap. No
  such split exists for arrays: `cgPromoteFixedToRuntimeLength` only ever needs a source *address* to copy
  from, and `cgValue`'s by-ref convention already hands one back for any embedded array regardless of
  whether it came from a fresh literal or an existing variable - confirmed by checking codegen before
  touching anything, not assumed. So this needed no codegen changes at all, only relaxing the semantic.c
  check (dropping `op->isLiteral` from this one branch, leaving the unrelated int-to-float gate untouched).
  Confirmed with a permanent test - a plain local variable, not a literal, copied into a runtime-length target and
  then mutated afterward, proving the promotion is a real independent copy rather than an alias of the
  source's own storage.

- **Transitive import re-export, closing the last of the three deliberately-deferred cross-module gaps
  above - "capital letter = exported" extended to import aliases themselves, plus unnamed imports and a
  real alias-chain grammar to reach through them.** The design, worked out directly rather than guessed at:
  privacy of an import is decided by the SAME rule as everything else in this language - a capitalized
  alias is public (re-exported: a third module importing *this* one can reach through it too), a lowercase
  one is private (exactly today's behavior, unchanged). `import "Math.olang"` (no alias at all) derives its
  alias from the file's own base name (`deriveImportAlias`, syntax.c - strips any directory and the
  `.olang` extension), so its capitalization follows straight from the file's own name; `import m
  "Math.olang"` still works exactly as before, explicit and unaffected. An invalid derived alias (a
  filename that isn't a legal identifier shape - a hyphen, a leading digit) is a real, anchored compile
  error (`INVALID_IMPLICIT_IMPORT_ALIAS`, checked once in `semaLoadModule` via the new `isValidAliasShape`),
  not a silent fallback.
  **Chosen over the alternative (a module must explicitly opt in to re-exporting each of its own imports)
  because this language has no OTHER privacy mechanism anywhere beyond the one blanket capitalization rule
  - adding a second, separate opt-in mechanism just for re-export would be a new kind of thing, not an
  application of the existing one.**
  **Mechanism: `parseName`'s own grammar generalized from "IDEN (DOT IDEN)?" (capped at 2 identifiers) to
  "IDEN (DOT IDEN)*" (unbounded)** - safe to do broadly because type refs and call targets (`parseTypeRef`/
  `resolveCallTarget`) are both parsed from positions the parser already knows are unambiguous, with no
  interaction with the parser's own separate type-name-awareness mechanism (`nameIsKnownType`, used only to
  disambiguate a struct/array *literal*'s `Type{`/`Type[` from an ordinary expression - see the "deliberately
  not extended" note below). Three call sites needed to walk the resulting arbitrary-length chain, given a
  shared `resolveAliasChain(mod, idens, trailingCount)` (semantic.c): the first hop is always allowed (a
  module's own direct imports are always visible to it, regardless of alias case - that's not new, that's
  the status quo); every hop after that requires the alias being followed to be PUBLIC in the module
  declaring it, since it's being reached transitively, not directly. `resolveTypeRefBase`, `resolveCallTarget`,
  and `resolveErrorTypeName` (function-signature error lists) all now call this with `trailingCount=1` for a
  plain name, replacing their own old "1 identifier or exactly 2" branching outright - for exactly 2
  identifiers this reduces to precisely the old single-hop behavior, so nothing regressed.
  **Two shapes needed their own, slightly different resolvers, since their trailing shape isn't always a
  fixed count:** the `error` statement (`error alias...TYPE.word`) always ends in exactly `TYPE.word`
  (parseStmntError's own grammar guarantees it), so it's `resolveAliasChain(mod, idens, 2)` - no
  disambiguation needed, every identifier before the last two is unambiguously an alias hop. A catch clause
  is genuinely ambiguous, though - it accepts *either* a whole `TYPE` or a `TYPE.word`, so a chain of any
  length has to decide, at the point it stops consuming hops, whether 1 or 2 trailing identifiers remain.
  `resolveCatchAliasChain` generalizes the *original* 2-identifier disambiguation (an import alias and an
  error type live in different namespaces, so whichever interpretation is *possible* is the intended one)
  uniformly to every step: greedily treat an identifier as a further alias hop whenever `findImport`
  recognizes it as one, all the way down to exactly 1 or 2 remaining, which are then the type or type+word
  to resolve wherever the walk stopped. Confirmed this doesn't change the original 3-identifier
  `alias.Type.word` case's own meaning (still resolves as 1 hop + `TYPE.word`, not 2 hops + a bare type) for
  any name that doesn't happen to *also* collide with a real import alias in the target module - the same
  category of theoretical ambiguity the *original* single-hop version already had, not a new one, and the
  existing "catching a specific word by its full alias.Type.word name" test still passes unchanged.
  **The bare cross-module variable read (`tryBuildCrossModuleVarRead`, from the entry above) needed its own
  greedy walk too, since it operates over `SNTX_EXPR_POSTFIX` parts, not a `SNTX_NAME` node** - consumes
  further `.further` postfix parts one at a time as long as each names a real (public, past the first hop)
  import in the module reached so far, stopping at the first one that doesn't (or isn't a plain member
  access at all), which becomes the real variable name. **A real, found-by-testing off-by-one bug in this
  walk's first draft:** the loop checked `partAt(s, i+1)` instead of `partAt(s, i)` for whether the *next*
  part was a further alias hop - meaning it was always looking one postfix part too far ahead, so a genuine
  2-hop chain (`wk.Base.BaseCount`) silently fell through as if `wk` alone had no re-export target,
  producing "unknown variable"/"unknown struct member" cascade errors instead of resolving. A single-hop
  read (`wk.AskCount`) and a 2-hop *call* (`wk.Base.Bump()`, going through the unaffected `SNTX_NAME`-based
  path) both happened to still work, which is what made this specifically a var-read-chain bug and not a
  broader regression - caught by testing the 2-hop var-read case directly, not by inspection.
  **A second, separate thing the same test session surfaced: a downstream `ErrorBugFound()` crash (not just
  a reported error) that turned out to be a consequence of the off-by-one above, not an independent bug** -
  gone once the off-by-one was fixed, confirmed by re-running the exact program that had triggered it.
  **Cycle and duplicate-reachability detection, the "reimporting the same file already imported (through a
  chain, or in general) is an error" rule, asked for directly alongside the design's core shape:**
  `computePublicClosure(mod)` (semantic.c) computes, once per module and memoized, the full set of modules
  reachable from it via zero or more PUBLIC import hops (including itself) - a genuine cycle in this graph
  (a module publicly re-exporting something that eventually publicly re-exports it back) is caught via a
  `computingPublicClosure` re-entrancy flag on `struct semaModule`, the same idiom `resolveTypeDecl`'s own
  `resolving` flag already uses elsewhere in this file, reporting `CYCLIC_IMPORT_REEXPORT` at the offending
  import rather than recursing forever. `checkDuplicateImportReachability`, run once after the *entire*
  program has finished loading (not inline during `semaLoadModule`'s own recursion, which can leave a
  cyclically-imported module's own import list still incomplete mid-load), checks - for every module - that
  its own direct imports' combined public closures never overlap: if the same underlying file is reachable
  through two of one module's own *different* direct imports (whether that's the literal same file imported
  twice under different aliases, or one direct import and a re-export reached through *another* direct
  import), that's `DUPLICATE_IMPORT_REACHABILITY`. Deliberately does NOT flag the pre-existing, ordinary
  "two unrelated modules both import the same third file directly" diamond (worker.olang and runner.olang
  both importing shared.olang, say) - that's each module's OWN single direct import, never two paths from
  the SAME module, and stays completely unaffected; confirmed by `make verify` continuing to pass unchanged.
  **Was deliberately not extended at the time - closed in the entry below** once asked directly whether
  this specific boundary could be lifted too: a struct/array literal's own type name, and a vocab value,
  used to only support at most one alias hop, needing the *parser's* own type-name-awareness
  (`nameIsKnownType`/`isKnownTypeForParsing`, a `TypeNameLookup` callback with a flat single-alias
  interface) to disambiguate `Type{`/`Type[` from an ordinary expression *while parsing*, before real
  semantic analysis with its alias-chain-walking machinery even runs.
  **Confirmed with real, permanent project files, not just ad hoc ones:** a new `Base.olang` (a var, a
  function, a constructor-bearing type, a plain type, an error type) imported unnamed by `worker.olang`
  (`import "Base.olang"`, capitalized alias `Base` - automatically re-exported), reached from `runner.olang`
  two hops away (`wk.Base.*`) through every mechanism - a bare variable read and write, a function call, a
  constructor call, and both a `catch` and an `error alias.alias.Type.word` statement against its own error
  type. The negative cases (a file imported twice directly, a diamond through re-export, a genuine re-export
  cycle) aren't permanent tests, same convention as every other compile-*rejection* case in this file (a
  rejected program can't run as a `test{}` block) - confirmed ad hoc instead, each producing exactly the
  expected error and no crash.

- **The struct/array-literal-through-a-chain boundary closed: `TypeNameLookup`'s interface changed from one
  flat alias string to a `struct list` of them, and the two places that build/consume it generalized to
  match.** `parseName`'s own grammar was already unbounded (see the entry above); the remaining gap was
  purely that `nameIsKnownType`/`firstIdenIsLocalKnownType` (syntax.c, called *during parsing* to decide
  whether `Type{`/`Type[` commits to literal syntax) and `isKnownTypeForParsing` (semantic.c, the actual
  answer) both still assumed at most one alias hop. `nameIsKnownType` now reads `name->parts.len` generically
  (`2N-1` for `N` identifiers - see `parseName`'s own grammar comment) and splits it into "every identifier
  but the last is an alias hop, the last is the type name" for any `N`, rather than hardcoding indices 0 and
  2; `isKnownTypeForParsing` walks that chain hop by hop via `findImport`, the same shape
  `resolveAliasChain`'s own first-hop-then-however-many-more walk already uses, just without the
  public/cycle enforcement (irrelevant here - this is only ever a "should I commit to literal syntax" guess,
  re-checked for real, privacy included, immediately afterward by `resolveLiteralBaseType` once semantic
  analysis actually runs). `firstIdenIsLocalKnownType` (vocab values) needed no logic change at all, since a
  vocab value is never alias-qualified in the first place by design - only its one call into the now-
  list-shaped callback needed updating, passing an empty chain.
  **A real gap in the semantic-side companion function found and fixed alongside this, not just the
  parser's own detection:** `resolveLiteralBaseType` (semantic.c, what actually resolves a literal's base
  type once the parser has already committed) had the *exact same* one-or-two-identifier assumption
  `resolveTypeRefBase`/`resolveErrorTypeName` already had before *their* entries above - it was never
  reachable with more than 2 identifiers before this fix (the parser's own old callback would never commit
  to literal parsing for a longer chain in the first place), so the gap was latent, not yet a live bug,
  until the parser-side fix made it reachable for the first time. Fixed the identical way, with
  `resolveAliasChain(mod, idens, 1)`.
  **A second, separate, genuinely surprising thing found while building the permanent test for this - not a
  bug in the mechanism itself, but a real demonstration of the "narrow, accepted edge" the earlier entry's
  own comment already flagged, now concrete rather than theoretical:** the test suite intermittently failed
  to resolve `wk.Base.BasePoint{...}` (a literal reached through worker.olang's own re-export of
  `Base.olang`) depending on *which file* `-t` happened to use as its compile root - each listed file is its
  own independent, isolated compile (see the report on `-t` semantics), and worker.olang's own `imports`
  list has to be fully built, "Base" included, before runner.olang's own parse can recognize the chain at
  all. When runner.olang is root, worker.olang's own `semaLoadModule` call (recursed into while resolving
  runner's own "wk" import) always fully completes - "Base" included - before returning, so this was
  never visible from that direction. When worker.olang is root instead, its own import list was being
  processed in SOURCE order - `sh`, then `rn` (runner.olang, recursing right back into worker.olang itself,
  a genuine raw cycle), then `Base` - so runner.olang's own parse (triggered while still resolving worker's
  own "rn" entry) ran *before* worker's own "Base" entry had been added at all, at which point `findImport`
  correctly, honestly returned "not found" for it - exactly the accepted fallback the report already
  described, just now demonstrated for real rather than assumed. **Fixed the practical way, not by chasing
  the underlying ordering fragility itself:** reordered worker.olang's own imports so `Base.olang` is
  declared *before* `rn` - since "rn" is what recurses back into the raw cycle, declaring anything else
  first guarantees it's fully registered before that recursion's own parse can possibly need it. Confirmed
  directly: reverting the order reproduces the failure, `make verify`/`-t` with every file taking a turn as
  root all pass with it in place. A real, if narrow, lesson for anyone writing a re-exporting module with a
  raw import cycle in its own graph: declare re-exported imports before the cyclic one.
- **A formal, modular language specification now exists, in `spec/` (10 files, `spec/README.md` plus one
  file per major topic in dependency order: lexical structure, types, declarations, modules, expressions,
  statements, error handling, ownership/scopes, constructors/destructors, compilation model).** Distinct in
  purpose from this file: CLAUDE.md is a historical, discursive design record (why a decision was made, what
  was tried and reverted, what bugs were found along the way); `spec/` is normative and current-state-only -
  no narrative, no history, just the precise rules as they exist right now, numbered per file
  (`<file-prefix><n>`, e.g. `T24`, `O13`) so other rules can cite one exactly without the whole document
  needing to be one interconnected whole - each file stands mostly alone, citing another file's rule by
  number only where a real dependency exists (mirroring this file's own "don't make everything
  interconnected" instruction, applied to a document meant to be checked mechanically rather than read as
  a narrative). Written in EBNF-flavored notation for every grammar-shaped rule, cross-checked once for
  internal correctness (found and fixed 15 real errors: wrong section cross-references, an ambiguous/
  undefined `type-ref`/`alias-chain` grammar produced a dangling leading dot for the zero-hop case across
  three files, a shift-operator operand-type rule that didn't match `binOpRules[]`, vague/unstated indexing
  bounds-check behavior, `catch`'s whole-type-vs-word disambiguation algorithm never actually stated, and
  more - see the spec's own git history for the full list), then cross-checked against the actual
  implementation (source of this file's own `BARE_SCOPE_RETURN_TYPE` entry - the spec's own T24/T11/O13
  correctly described the *intended* uniform struct/array treatment; the implementation was what had fallen
  behind). **Standing process change, going forward: a language change starts with a `spec/` update (adding
  or revising the relevant numbered rule(s)) before any implementation work begins**, with this file's own
  entry (recording the *why*, same as every entry above it) still written once the change lands - the two
  documents serve different readers and neither replaces the other.
- **`BARE_SCOPE_RETURN_TYPE`/`NESTED_BARE_SCOPE_RETURN_TYPE` now cover arrays, not just structs - a real,
  previously-undiscovered memory-safety hole found while cross-checking the implementation against the new
  formal `spec/` directory (see this file's own entry on it) for isomorphism.** Both checks
  (`resolveFuncSig` in semantic.c) were
  written back when only a struct could be `structMAlloc` at all, and were never revisited once fixed
  arrays and runtime-length arrays independently gained the exact same `<>`/`<name>` reference machinery (see the
  `<>`/`<name>`-on-arrays entry above) - so a bare (own-scoped) compile-time-length-array return type, a bare-`<>` array
  field nested inside a plain returned struct/array, and - most severe - a genuinely **unmarked** runtime-length
  array return type (T11 of the new spec: a runtime-length array is always reference-shaped, marker or not, so an
  unmarked `T[]` return is exactly as own-scoped as an explicitly `<>`-marked struct) all compiled and ran
  with zero complaint, each one a real dangling-pointer return the instant the allocating function's own
  scope closed. Confirmed concretely, not just by code inspection: three ad hoc test programs (a direct
  bare `int32[3]<>` return, a direct bare `int32[]` return, and a `Wrapper{ data int32[3]<> }` returned
  plain) each compiled clean and ran to completion before the fix, and are each correctly rejected after it.
  **Fixed by finally generalizing both checks the way `typeIsRefShaped` (the struct-or-compile-time-length-array "can
  this carry a marker" predicate, already used elsewhere in the ownership system) was always meant to be
  reused**: a new `typeIsBareRefShaped` (semantic.c) folds in the runtime-length-array special case
  (`arrMalloc && !scopeParam` - no `structMAlloc` check needed, since T11 makes marker-presence irrelevant
  for a runtime-length array) alongside `typeIsRefShaped`'s existing struct-or-compile-time-length-array case, and is what
  `resolveFuncSig`'s direct-return check now calls instead of its old inline `BASETYPE_STRUCT`-only
  condition. `structContainsBareScopeField` was similarly generalized to recurse through a plain (embedded)
  array's own element type, not just a plain struct's own fields, and to treat any field/element found via
  `typeIsBareRefShaped` (struct, compile-time-length array, or runtime-length array alike) as a hit - while still correctly
  refusing to chase into anything already reference-shaped-with-a-name, or into a runtime-length array's own
  (nonexistent) "elements", exactly as before. This is a straightforward extension of an existing,
  already-uniform design principle (`typeIsRefShaped`/`cgRegisterDtorIfNeeded`/`needsScopeCheck` all already
  treat structs and compile-time-length arrays alike; this is the last piece of the ownership-checking machinery that
  hadn't caught up) - not a new rule or a design question, so it needed no discussion, matching the
  standing "fix bugs found along the way" directive. `make verify` (72 tests total across both `-t` files,
  plus the `-c` production build/run) passes with no regressions; the three confirmed-bad shapes are
  documented, not re-added as passing tests (a rejected program can't run as a `test{}` block, the same
  convention every other compile-error case in this file already follows), in a new comment in shared.olang
  next to the existing `BARE_SCOPE_RETURN_TYPE`/transitive-case documentation.
- **The specification moved from `spec/` (a directory of 11 files) to a single `spec.md` at the repository
  root.** User-requested consolidation, purely a packaging change - no rule was added, removed, or
  renumbered; every `<prefix><n>` citation (`T24`, `O13`, etc.) still means exactly what it meant before,
  and every one of the 172 rules present beforehand is still present. Every inter-file markdown link (e.g.
  `[04-modules.md](04-modules.md)`) was mechanically rewritten to an in-file section reference (`§4`, or
  `§4.4` where a specific subsection was already being cited) - the "Standing process change" and every
  other still-current instruction referring to `spec/` in the two entries above should now be read as
  referring to `spec.md`.
- **`spec.md` itself no longer says anything about CLAUDE.md, Claude, or the design process - it is a pure
  language reference manual, nothing else.** User-requested: the file's own former "Relationship to
  CLAUDE.md" and "Process for language changes" front-matter sections (self-referential process/meta
  content, not language rules) are removed from `spec.md` outright, not just reworded - that framing now
  lives only here, in CLAUDE.md (this entry, and the "Standing process change" note above), which is the
  correct place for it. The rule content and numbering (§1-§10, all 172 rules) is completely unaffected;
  only the "Structure" section's closing sentence and the "Status" section were trimmed of their own
  CLAUDE.md/commit-history references. The process itself (spec first, then implementation, then a
  CLAUDE.md entry) is unchanged - only where it's documented moved.
- **Fixed: passing a directory (or any non-regular file) to `-c`/`-t` silently compiled as an empty
  module instead of reporting an error - in `-t` mode this actually "succeeded" with `0 passed, 0
  failed` and exit 0.** A CLI robustness bug, not a language design decision, closed the same session
  the `spec.md`/CLAUDE.md split happened in. Root cause: `readChars` (token.c) only ever checked
  `fopen`'s own return value; on Linux, `fopen(path, "r")` succeeds for a directory just like it does
  for a regular file, and the subsequent `fgetc` loop immediately returns `EOF` - indistinguishable
  from a genuinely empty file - because `fgetc` never separates "clean end of stream" from "a real
  read error" without an explicit `ferror(fp)` check, which the code never made. Confirmed directly:
  `fopen()`/`fgetc()` on a directory returns `-1` with `ferror(fp)` true and `errno == EISDIR`, not
  `feof(fp)` true - the exact condition the old code silently treated the same as end-of-file.
  **Fixed with two independent checks, addressing two different failure classes:** (1) a `stat()` call
  before `fopen`, rejecting anything that isn't `S_ISREG` (a directory, device file, FIFO, etc.) with
  a new, specific `NOT_A_REGULAR_FILE`/`ErrMsgNotARegularFile` message - deliberately only fires when
  `stat()` itself *succeeds* (the path exists but isn't a plain file); a `stat()` failure (e.g.
  `ENOENT` - the path doesn't exist at all) falls through unchanged to `fopen`'s own existing
  `ErrMsgUnableToOpenFile` check, which reports the more accurate "unable to open file" message -
  getting this ordering backwards was a real mistake caught immediately by testing the nonexistent-
  file case *after* making the change (it briefly reported "not a regular file" for a file that
  simply doesn't exist, which is misleading), fixed by gating the `S_ISREG` check on `stat()`'s own
  return value rather than treating any `stat()` outcome as "not a regular file." (2) an `ferror(fp)`
  check right after the read loop, as a defensive fallback for a genuine I/O error occurring mid-read
  after `fopen` already succeeded (rare - e.g. a disk error - but the `stat()` check alone can't catch
  a failure that only manifests during the read itself), reusing the existing `ErrMsgUnableToOpenFile`
  message since "open" is close enough for a rare, hard-to-reach case that doesn't warrant its own
  message. Confirmed by hand for all four cases: a directory and a nonexistent file now report their
  own distinct, correct messages under both `-c` and `-t`; a permission-denied file and a normal file
  are both unaffected (still "unable to open file" and success, respectively) - `make verify` (72
  tests, `-c` build/run) passes with no regressions.
- **Function signature order reversed: the return value now comes first, with the error set (if any)
  marked by a trailing `?` instead of a leading one - `func f(params) [RetType] [? ErrA + ErrB] { }`,
  was `func f(params) [ErrA + ErrB] [? RetType] { }`.** User-driven ("I want to reverse the error code
  return value order in the syntax. functions should take first return value then if there is an
  error set ? errorset1 + errorset2 etc"), a pure surface-syntax change with zero effect on the
  error-union return ABI (still `{ i32 code, T payload }`, still locally-scoped ordinals - see that
  entry above) or any other semantics; only where the `?` marker sits, and which side of it the
  return type vs. the error set live on, changed.
  **Process note, an honest deviation from this project's own "spec first" rule:** this one was
  implemented before `spec.md` was updated to match, not after - the user's request read as a direct,
  unambiguous fix-this-now instruction (much like the earlier file-validation fix in the same
  session), and the grammar/parser work started immediately rather than pausing to write the spec
  rule first. `spec.md` (D8, T21, P4) was brought in sync with the implementation directly afterward,
  in the same session, before this entry was written - so nothing is left out of sync going forward -
  but the *order* of spec-then-code that this file's own standing process calls for wasn't followed
  this time. Worth naming plainly rather than quietly implying the usual order happened, since the
  whole point of writing it down is to keep this file an accurate record, not a flattering one.
  **Grammar mechanics (D8):** `ret-type` itself lost its own `"?"` prefix entirely - it's now a bare
  `type-expr`, full stop. The `"?"` moved to prefix `error-list` instead, but only at the `func-sig`
  level (`[ ret-type ] [ "?" error-list ]`) - the shared `error-list` production itself (`alias-chain
  IDEN { "+" alias-chain IDEN }`) is completely unchanged, still marker-free, since a constructor's
  own error-list (C1, T15) reuses that exact same production *without* the `?` wrapper a function
  signature now adds around it. This is why the implementation keeps two separate parse functions
  rather than one: `parseErrorList` (bare, shared body via the new `addErrorListTail` helper - used
  by a constructor's `struct(params) ErrA + ErrB { }`) and `parseFuncErrorList` (requires a leading
  `?` first, then delegates to the same shared body - used by an ordinary function/func-type
  signature only). No ambiguity between "is this the ret-type or the error-list" was introduced by
  moving the marker: a `type-expr` can never itself start with `?` (`?` isn't part of any type-expr's
  own grammar - not `struct`, `vocab`, `func`, or a `NAME`), so `parseRetType` (now completely bare,
  no marker, no cursor-reset bookkeeping needed since `parseTypeExpr` already backtracks cleanly on
  its own) can always be tried first and will simply fail-and-backtrack cleanly at a bare `?`, leaving
  it for `parseFuncErrorList` to consume next - exactly mirroring how the *old* grammar disambiguated
  the reverse order (a bare identifier could never be mistaken for `?`, so error-list-then-ret-type
  needed no lookahead either).
  **One real, if narrow, follow-on fix this required, not just a straight rename:**
  `resolveFuncSig`'s two `BARE_SCOPE_RETURN_TYPE`/`NESTED_BARE_SCOPE_RETURN_TYPE` diagnostics used to
  point their error location at `firstTokOfType(retTypeNode, TOK_QSNTMRK)` - the ret-type node's own
  `?` token, back when that token lived inside the ret-type node itself. Now that ret-type is bare
  (nothing but a wrapped type-expr, no token of its own at all as a direct child), that call would
  have called `ErrorBugFound()` (a hard crash) the instant either diagnostic fired, since
  `firstTokOfType` only scans a node's *direct* children and never finds `TOK_QSNTMRK` there anymore.
  Fixed with a new, small, purely additive helper, `firstTokAnywhere` (semantic.c, right next to
  `firstTokOfType`) - recurses into nested syntax nodes rather than requiring a specific token type
  among direct children, returning whatever token starts the subtree; both diagnostics now call it on
  `retTypeNode` directly, pointing at wherever the offending return type itself actually starts
  (previously "wherever the `?` was", now "wherever the type-expr itself is" - arguably a more
  accurate error location than before, not just a workaround).
  **Every example `.olang` file needed its own function signatures rewritten to match - 60 of them
  across `Base.olang`, `runner.olang`, `shared.olang`, and `worker.olang`, plus two inline `func(...)`
  function-*type* occurrences (a parameter and a local variable each declared `func(n int32) ? int32`,
  neither ever declaring any errors, so both simply lost their now-meaningless `?`).** Done mechanically
  for the 58 single-line, non-nested `func Name(...) SEGMENT {` signatures via a small one-off Python
  script (not committed anywhere permanent - scratch tooling, this file is the only record of it): find
  each `func Name(` line's own matching close-paren by simple depth-counting, split whatever sits
  between that close-paren and the line's own trailing `{` on `?` (there is at most one, and under the
  *old* grammar it unambiguously separated "error part" from "return part" - the exact fact that makes
  this transform safe to do mechanically at all), then reassemble in the new order. The two nested
  `func(n int32) ? int32` occurrences (inside `applyToFive`'s own parameter type, and a local variable
  of the same function type) were excluded from the automated pass and fixed by hand first, since a
  naive first-`)`-found approach would have matched the *inner* function-type's own closing paren
  instead of `applyToFive`'s outer one. Every proposed change was reviewed against a dry-run diff
  before being applied for real, and confirmed correct by eye against every one of the 59 resulting
  lines before `make verify` was run. Two small documentation-comment examples in `shared.olang`
  (illustrating the three rejected `BARE_SCOPE_RETURN_TYPE`/`NESTED_BARE_SCOPE_RETURN_TYPE` shapes,
  since a rejected program can't exist as a real, permanent `test{}` block) were updated by hand
  alongside the real code, for the same reason a stale code comment would be - they're meant to be
  copy-pasteable examples of what the language actually rejects, and would otherwise silently show
  invalid syntax forever. One comment (`shared.olang`'s own constructor-grammar summary, "`struct(
  params) errorList? { fields } destruct?`") was deliberately left alone on inspection: its `?` there
  is EBNF-style "optional" shorthand (matching the immediately adjacent `destruct?`), not the
  language's own `?` token, so it was never affected by this change in the first place.
  **The `INVALID_MAIN_SIGNATURE` compile-error message and the gitignored `usertest.olang` scratch
  file (see its own entry above) both still showed the *old* order and needed their own fixes** -
  found by directly testing `main`'s own now-updated example against the freshly rebuilt compiler,
  the same "run it and see" verification this whole change was checked with throughout, not a
  code-review catch. `make verify` (72 tests across the four suite files, plus the `-c` production
  build/run of `runner.olang`) passes with no regressions after every fix above.
- **Fixed: a fatal/syntax error message printed one extra, empty line after itself** - user-reported
  via `build/out -c sdfsfsfsf` (a nonexistent file), which showed a blank line between "fatal error:
  unable to open file ..." and "compilation failed with 1 error". A double-newline bug, not specific
  to that one call site: `ErrMsgFatal` (errmsg.c) already terminates its own output with `puts(...)`,
  which appends exactly one trailing newline on top of whatever was already written by the preceding
  `fputs(errMsg, stdout)` - so any caller that builds its own message buffer with a manually-appended
  `"\n"` at the end (rather than trusting `ErrMsgFatal`/`syntaxErrorHeader` to supply the line's own
  newline, which every other, simpler caller already does correctly) produces two newlines in a row:
  one from the message's own content, one from the printing function's own `puts`.
  **Three call sites had this bug, not just the one reported - found by grepping errmsg.c for every
  remaining `strcat(buf, "...\n")` once the first instance was understood as a class of bug, not a
  one-off, per this project's own "fix bugs found along the way, don't just patch the one reported"
  convention:** `ErrMsgUnableToOpenFile` (the one actually reported), `ErrMsgNotARegularFile` (this
  session's own earlier file-validation fix - inherited the bug at birth by copying
  `ErrMsgUnableToOpenFile`'s existing shape without noticing the pre-existing flaw in what was being
  copied), and `ErrMsgUnexpectedToken` (a genuinely pre-existing bug, present before this session,
  surfaced by testing a syntax error like `func f( { }` directly - confirmed showing the identical
  blank-line artifact before the fix). All three fixed the same way: drop the buffer's own trailing
  `"\n"`, letting the already-correct `puts(COLOR_RESET)` (via `ErrMsgFatal`) or
  `puts(COLOR_RESET)` (via `syntaxErrorHeader`) supply the line's one and only newline, exactly as
  every other caller of those two functions (e.g. `NO_FILE_SPECIFIED`, `ErrMsgFile`'s own callers)
  already did correctly, without ever adding their own. Confirmed by hand for all three: `-c` on a
  nonexistent file, `-c` on a directory, and a deliberately malformed `.olang` file all now print
  cleanly, no blank line, immediately followed by the "compilation failed" summary. Left alone,
  deliberately: `printErrorLine`'s own trailing `puts("\n" COLOR_RESET)` (a genuine, intentional
  blank spacer line printed *after* a source-code error snippet, visually separating one error's
  full display from the next) - a different mechanism serving a different, load-bearing purpose, not
  an instance of this bug. `make verify` (84 tests, `-c` build/run) passes with no regressions.
- **Fixed: a no-initializer array var-decl could zero-fill a reference nested anywhere inside its
  declared type, producing an invisible dangling reference or a phantom, never-actually-allocated
  runtime-length array - user-caught, not self-discovered.** The user pushed back directly on a jagged-array
  claim from earlier in this same session ("that variable declaration really shouldn't work... it
  does not declare references at any level") - correctly: `x mut int32[2][]` (a compile-time-length-2 outer
  array whose element type is itself a runtime-length `int32[]`) with *no initializer at all* used to compile
  and zero-fill to two independent, working-looking-but-never-constructed empty runtime-length arrays,
  purely because the existing no-initializer check (`buildVarDeclStmnt`/`semaCheckBodies` in
  semantic.c) only ever inspected the declared type's own *outermost* shape (`bType != ARRAY ||
  arrMalloc`) - never anything nested inside it. Investigated (not just patched) by first confirming
  the user's own counter-proposal for the correct syntax (`T<>[N]`) doesn't even parse - the marker
  can only ever trail every array suffix (T24), never precede one - and that the "working" syntax
  (`T[N]<>`) means something different (one heap block of N *embedded* Ts, not N independent
  references), before tracing the actual root cause to the zero-fill mechanism itself.
  **Broader than the one case reported, found while scoping the fix, not narrowed to just it:**
  the identical bug also let a *whole* reference-shaped declared type zero-fill to a **null**
  reference with no construction at all (`x mut Point[3]<>`, no initializer) - arguably worse than
  the runtime-length-array case, since this language has no `null` literal or null-checkable state anywhere
  (spec L9/T2), so a null reference produced this way is an invisible, uncatchable dangling pointer
  the instant anything reads through it, structurally unrelated to the whole ownership/scope-safety
  model the rest of the language is built on. A third variant - a runtime-sized (`T[expr]`) array
  whose *element* type (not the array itself) contains a reference, e.g. `type Wrapper
  struct(s scope, inner Point<s>) { inner }` then `x mut Wrapper[n]` - was also confirmed broken the
  same way, via `cgSizedArrayAlloc`'s own `llvm.memset` zero-fill, a different codegen mechanism than
  the "T[N]" case's `zeroinitializer` but the identical underlying defect.
  **Spec-first this time, unlike the signature-reorder entry above:** D13 (`spec.md`) was rewritten
  first to state the real rule precisely - a compile-time-constant outermost size is necessary but
  not sufficient for zero-fill; the declared type must additionally contain no reference (a
  `<>`/`<name>`-marked struct/compile-time-length array, or, unconditionally, a runtime-length array) anywhere within it,
  at any depth, or an initializer is required regardless of outermost size - before any code changed.
  **Implementation: one new recursive predicate, `typeContainsReference` (semantic.c, placed beside
  the structurally similar `structContainsBareScopeField`)**, walking a type through plain/embedded
  array elements and struct fields exactly the way that function does, but checking for *any*
  reference (bare or named alike - unlike `structContainsBareScopeField`, which only cares about an
  unnamed `<>` specifically, since a named reference's own lifetime is independently checked
  elsewhere; here, neither kind has a real allocation yet, so both are equally illegitimate to
  zero-fill) rather than one narrow shape. Wired into three call sites: `buildVarDeclStmnt`'s two
  no-initializer branches (the `T[N]` case, checking the whole declared type; the `T[expr]` case,
  checking specifically the *element* type, since the outer array itself *is* legitimately
  constructed via `__olang_scope_alloc` - it's only what fills each of its slots that's in question)
  and `semaCheckBodies`'s global no-initializer path (`T[expr]` globals were already rejected
  outright before this, for an unrelated reason - no `own` scope exists at global-init time - so only
  the `T[N]` global case needed the new check). A new, specific message,
  `ZERO_FILL_CONTAINS_REFERENCE`, replaces the generic `VAR_DECL_MISSING_INITIALIZER` exactly when
  the declared type *does* have a compile-time-constant outermost size but fails for this new,
  different reason - keeping `VAR_DECL_MISSING_INITIALIZER` itself accurate (unchanged) for the two
  cases it already correctly covered (not an array at all; an array with no compile-time-constant
  size at all).
  **Confirmed by hand for all three previously-broken shapes (all three now rejected, with the new
  message) and every previously-legitimate zero-fill shape (all still accepted and correct):** a
  compile-time-length array of primitives, a compile-time-length array of plain (no-reference) structs, a 2D compile-time-length array, and a
  compile-time-length global, all with no initializer, plus the two existing permanent tests for `T[N]`/
  `T[expr]` zero-fill - none of these were affected, confirming the new check is precisely scoped to
  types that actually contain a reference, not overly broad. The three now-rejected shapes are
  documented in shared.olang (next to the existing `T[N]`/`T[expr]` zero-fill tests), the same
  established convention as every other compile-error case in this file - a rejected program can't
  run as a permanent `test{}` block. **This also corrects this file's own record from earlier in the
  same session:** the "jagged arrays already work via `T[N][]` + per-row assignment, no Vec needed"
  claim (added to CLAUDE.md's array bullet in response to the user's original "is this supposed to
  work?" question) was itself describing this exact bug, not a real capability - CLAUDE.md's bullet
  is corrected in the same commit as this fix; there is currently no legitimate way to construct a
  jagged array in this language at all. `make verify` (84 tests, `-c` build/run) passes with no
  regressions.
- **Fixed a real soundness hole in the static scope-containment checker: an untraceable scope tag was
  "unverifiable, so allow," not "unverifiable, so reject" - user-caught, in direct response to being
  told this was the checker's own existing, deliberate design.** The user's reaction, verbatim: "we
  are not supposed to have possible dangling pointers. this is not good." Correct, and a fair
  challenge to a design this file had already recorded as settled (O11's own "not a complete
  dangling-reference guarantee" caveat) - the honest answer wasn't "that's a known, accepted
  limitation," it was "that caveat describes a real hole, and it should be closed."
  **Investigated, not just flipped, before committing to anything - this one genuinely needed research
  before a spec rule could even be written correctly, unlike the earlier signature-reorder entry's own
  admitted process shortcut.** `scopeCanFlowInto` (semantic.c) had exactly two lines doing this:
  `if (srcScope && !varIsOwnParam(srcScope, func)) return true;` and the same for `dstScope` - a scope
  tag that isn't literally one of the checking function's own declared parameters was let through
  unconditionally, no matter what it actually was. First step: flip both to `return false` as a pure
  experiment (clearly marked as such in the diff, not left in) and run the full suite to find out
  empirically what actually depends on the lenient default, rather than reasoning it out from memory
  alone (this session's own track record on that front - the alias-chain-depth question, the
  "jagged arrays work" claim - made "just think about it hard" clearly not trustworthy enough on its
  own for something this central).
  **Exactly two currently-passing tests broke, both the same root cause, both genuinely sound
  programs that were only failing because of a missing substitution, not because they relied on the
  hole:** `fillBoxedPoint(s scope, b BoxedPoint<s>, ...)` and `setChainLeaf(s scope, co
  ChainOuter<s>, ...)`, both called with `own` for their own `s` and an `own`-scoped argument for the
  second parameter. The type-fit check for argument `b`/`co` compares the *raw* callee-declared
  parameter type (`BoxedPoint<s>`/`ChainOuter<s>`) against the argument - but that `s` names the
  *callee's own* parameter (D9: a `<name>` can only ever name an earlier parameter of the *same*
  signature), never anything in the calling function's own frame, so `varIsOwnParam(s, callerFunc)`
  was always false regardless of whether the call was actually sound. `OperandFuncCall` builds
  exactly the map needed to resolve this (`scopeBindings`, recording what was concretely passed for
  each of the callee's own scope parameters) - but only *after* the type-fit-checking loop that
  needed it, and never applied it to the target side at all, only ever to the source side via
  `resolveEffectiveScopeVar` elsewhere. **Fixed by reordering the two loops** (the scope-binding
  collection loop now runs first) **and resolving a parameter's own declared `scopeParam` through
  the call's own just-built binding, on a local copy of its type, before checking fit** - one new
  four-line block, no new mechanism, reusing `resolveEffectiveScopeVar` exactly as the source side
  already does. This is the actual fix that makes the stricter default safe to ship, not an
  exception carved out around it: without it, every call passing a named-scope reference into a
  callee's own `<name>`-tagged parameter would have started failing, which would have made the
  ownership feature nearly unusable the moment it got strict.
  **Confirmed the flip actually catches something real, not just "rejects everything unprovable
  including safe things" - a genuine counterexample, not a hypothetical one:** a compile-time-length array of
  `Wrapper` values (`type Wrapper struct(s scope, inner Point<s>) { inner }`), two instances tagged
  to two different scope parameters `a`/`b` of the same function, read back out via `arr[1].inner`.
  `OPERATION_INDEX` (unlike `OPERATION_MEMBER`) composes no `scopeBindings` at all, so the resulting
  reference reaches the type-fit check with its raw, unresolved `s` - genuinely untraceable, since
  nothing in this checker's design tracks *which* array element a read came from. Confirmed by
  temporarily reverting *only* the flip (keeping the `OperandFuncCall` fix) and rebuilding: the exact
  same program compiled and ran to completion with zero complaint, regardless of which scope `s` was
  actually supposed to mean - the checker provided no guarantee whatsoever for this shape before,
  proof rather than assertion that this was a real, exploitable hole, not a theoretical one. The
  array-index case is now correctly rejected, documented in shared.olang (a rejected program can't be
  a permanent `test{}` block, same convention as every other compile-error case in this file) right
  next to the two now-passing-for-the-right-reason tests that prove the fix doesn't overcorrect.
  **Spec updated to match (O11, O12, spec.md): "unverifiable" is now defined as a compile-time error,
  the same as a proven-unsafe flow, not a lenient default - with an explicit note that extending what
  this checker's tracing can follow can only ever accept more genuinely-safe programs, never make an
  already-rejected one newly unsafe (the correct direction for a checker that's sound but
  incomplete, as opposed to complete but unsound, which is what this was before).** Every stale
  "unverifiable, allow" comment found by grepping the file for the phrase (six sites, semantic.c) was
  rewritten to describe the current behavior, not just the two lines that actually changed -
  including `SCOPE_AMBIGUOUS`'s own comment, which used to cite the old lenient default as the
  reason its own stricter handling mattered, and needed to be reframed around a distinction (traced-
  and-disagreed vs. never-traced-at-all) that's still worth preserving even though both now produce
  the same outcome. CLAUDE.md's own "Ownership scopes" bullet corrected the same way. `make verify`
  (84 tests, `-c` build/run) passes with no regressions - every previously-sound program still
  compiles, and the one deliberately-constructed unsound one, plus its "was this actually a hole"
  counterfactual check, both confirm the fix does what it's supposed to and nothing more.
  **What's still true, unchanged by this fix, and worth stating plainly:** this checker remains
  incomplete by construction - it proves the shapes it can trace and rejects everything else,
  including some genuinely safe programs it simply cannot see far enough to prove (array indexing
  being the most concrete current example). That incompleteness is no longer paired with unsoundness,
  which is the actual property this language's own stated goal ("compile-time-proven memory safety")
  requires - a checker that occasionally says "no" to a safe program is a usability cost; a checker
  that occasionally says "yes" to an unsafe one is a broken promise.
- **The bare error: bare `error`, reused (not a new keyword), standing for "this failed, no
  further detail is tracked" - reachable as an error-list item, an `error` statement's own bare
  operand, and a `catch-item`.** Arrived at through a long design conversation, not requested in this
  final shape from the start - worth recording the path, since several earlier ideas were seriously
  considered and rejected for concrete reasons, not just style preference.
  **What was considered and rejected first, and why:** (1) a single, ordinary, user-declared error
  type reused across many functions (`error Fail { yes }`, declared once, imported everywhere) - this
  actually already solves the *boilerplate* problem with zero new language surface, and remains the
  right answer whenever a real, named, single-word error type is wanted; it just doesn't solve the
  narrower thing the user asked for next. (2) A genuinely *anonymous inline* error-set declaration
  (`func f() ? error { err }`, mirroring how struct/vocab bodies can be anonymous type-expr shapes,
  T2/T3) - rejected on inspection: error type identity is by declared name (T27), so two functions
  each writing their own anonymous shape would get two distinct, non-interoperable types, unable to
  propagate to each other under either signature - the opposite of reusable, and actively worse than
  useless (an anonymous struct/vocab shape is merely inert; an anonymous error type would be a trap).
  (3) A brand-new keyword (`fail`, seriously drafted at one point, including a naming rationale
  deliberately avoiding Zig's own `anyerror` - that type has real, whole-program-unique identity
  under the hood, which is a different, stronger guarantee than "carries zero information," so
  reusing its name would have set the wrong expectation). (4) A "true wildcard" catch - matching
  *anything* a called function could produce regardless of what it actually declared - an imprecise
  early description of the feature that the user's own later clarification ("it is supposed to simply
  catch and send 'the error union is in the error state'... func () ? key_word would simply say
  'there can be an error'") correctly narrowed: the marker is a real, declared member of a function's
  own error union, used and caught with the *same* mechanics as any named type - never an
  ambient wildcard that bypasses declaring anything at all.
  **The keyword question resolved itself once the right question was asked: "what if we reuse
  `error`?"** Reusing the existing keyword bare - already reserved (L7), already meaning "this is
  about a function's own declared error union" in the two places it already appears - turned out
  strictly better than introducing a new word: zero grammar-vocabulary growth, no possible collision
  with a real declared type's name (a keyword can never be a valid IDEN), and it sidesteps a real
  worry about a bare `fail` statement reading like `done`/`crash` (unconditional process exit,
  explicitly unrelated to the enclosing error union) when it would in fact be the opposite -
  still bound to the enclosing function's own declared errors, same as `error TypeName.word` always
  has been.
  **Representation: the bare error is one program-wide singleton `struct type`
  (`bareErrorType`, semantic.c), built as an ordinary `BASETYPE_ERROR` value with exactly one
  synthetic word, not a new kind of thing the rest of the compiler has to learn about.** This was the
  key design choice that made the whole feature small: `errorTypeOrdinal`/`errorCode`
  (codegen.c), `cgPropagateError`'s ordinal remap, `checkTrySuperset`, and `StatementCatchCoversType`
  are all *already* written generically over "any declared error type in `t.errors`," compared via
  `TypeIsSame` (owner+name identity) - since every reference to the bare error is the exact same
  shared struct, `TypeIsSame` already treats every use of it as the same type, program-wide, with
  zero code changes to any of those functions. The only genuinely new logic is recognizing the bare
  keyword at the three places a real name would otherwise be resolved: `resolveFuncSig` and
  `resolveStructCtorInto`'s own separate, independently-duplicated error-list loops (an ordinary
  function's signature and a constructor's own share the same grammar, D8, but were already resolved
  by two distinct pieces of code before this - both needed the identical fix), `buildErrorStmnt`'s new
  bare-form branch, and `buildTryCatchStmnt`'s catch-item loop - each now walks `allSyntaxParts` instead of
  `allPartsOfType(..., SNTX_NAME)`/`allPartsOfType(..., SNTX_CATCH_ERR)`, since an error-list or
  catch-list can now genuinely mix ordinary named items with the new `SNTX_BARE_ERROR` node, and
  dispatches per-item on which shape it actually is. A new accessor, `SemanticGenericErrorType()`
  (semantic.h), exposes the singleton to codegen.c for exactly one purpose: printing a clean
  `unhandled error: error` instead of the technically-correct-but-redundant `unhandled error:
  error.error` that falls out of treating it as "a type with one word" everywhere else.
  **Two real, confirmed bugs found and fixed while building this - both in code this feature never
  intended to touch, surfaced only by exercising a syntax position nothing had ever put the `error`
  keyword in before:**
  (1) **The tokenizer's automatic-statement-termination trigger set (`stmntEndTriggerType`, token.c)
  didn't include `TOK_ERROR`**, so a bare `error` statement with nothing else on its line never got an
  implicit `STMNT_END` synthesized after it - the exact same class of bug a prior session found and
  fixed for a trailing `<>`/`<name>` marker. Fixed by adding `TOK_ERROR` alongside `TOK_RET`/
  `TOK_DONE`/`TOK_CRASH`, which it now behaves identically to: the trigger only ever fires when the
  token is immediately followed by a newline, so `error TypeName.word` (more tokens on the same line)
  is completely unaffected.
  (2) **A real, previously-latent bug in `ScanTopLevelDecls`'s own name-collection pre-pass, far more
  serious than the first - found only because a permanent test in shared.olang happened to put the
  bare marker at the end of a function's own error-list, immediately before that function's opening
  `{`.** `ScanTopLevelDecls` walks the whole token stream once, tracking `{`/`}` depth to skip
  function bodies, and - on seeing `TOK_TYPE` *or* `TOK_ERROR` - unconditionally consumed the next
  token looking for an `IDEN` to register as a declared type name (correct for `TOK_TYPE`, which is
  never used any other way, and previously correct for `TOK_ERROR` too, since a real `error-decl` was
  the *only* thing `error` could ever start). Once the bare error could appear immediately before a
  function's own `{` (`func f() ? RangeError + error { ... }`), that unconditional "consume whatever
  comes next" swallowed the function's own opening brace - not an `IDEN`, so silently discarded as "no
  type here" - which meant that `{` never reached the depth-tracking check at the top of the loop at
  all, permanently desyncing `depth` by one for the rest of the file. Every top-level declaration after
  that point was misjudged as being one brace level off from where it actually was, cascading into
  wildly unrelated, seemingly-random parse errors dozens of lines later in completely untouched,
  previously-passing code (`unexpected token ',' expected ']'` inside an existing array literal,
  `'own' is only valid inside a function` inside an existing, working test block) - a genuinely
  confusing failure mode to debug from the symptom alone, only resolved by bisecting the actual
  change down to the exact insertion point and re-deriving what `ScanTopLevelDecls` does with each
  token type from scratch. Fixed by only *actually* consuming the peeked token when it turns out to
  be a real `IDEN`; otherwise the cursor is restored (`TokenGetCursor`/`TokenSetCursor`, the same
  save/restore pattern every other speculative parse in this codebase already uses) so the main loop
  sees the token fresh, exactly as it would for any token this narrow scan doesn't care about.
  **Confirmed extensively, not just the shapes originally discussed:** mixing a named type with the
  marker in one signature (`? RangeError + error`) and in one `catch` clause (`catch error +
  RangeError`); the bare statement form, including its own destructor/scope-close codegen path
  (unchanged, since `cgError` was already fully generic); propagation across a function boundary with
  differently-ordered signatures on each side (the existing ordinal-remap machinery, untouched);
  propagation *across a module boundary*, confirmed working with zero special-casing needed (the
  singleton has no owning module at all, so cross-module visibility checks - which only ever apply to
  named, module-owned types - never even run against it); usable inside a `test { }` block with full
  local coverage, the same as any named type (R13); a constructor declaring it
  (`struct(params) error { ... }`, bare, no `?` - constructors never had one to begin with, see the
  earlier signature-reorder entry); selectivity - `catch error` proven, by construction rather than by
  testing a wrong answer, to never also match a named type sharing the same union (a wrapper function
  that fully handles the named type itself, leaving only the bare error able to escape, confirms
  `catch error` alone is sufficient to cover what's left - which it provably would not be if it
  matched the named type too). `make verify` (87 tests, `-c` build/run) passes with no regressions;
  spec.md gained a new §7.6 (R15-R19) plus updates to D8, L18, and T21's own prose, all written before
  any implementation code changed, this time genuinely spec-first from the start - the exploratory
  "flip a check and see what breaks" methodology from the scope-checker entry above was appropriate
  there because the correct *behavior* was itself in question; here, the design conversation had
  already settled the behavior precisely enough to write the rules first.
- **Numeric conversion: a literal implicitly widens (byte/int32 → int64, any integer → float32/
  float64, float32 → float64); a non-literal value needs an explicit `TypeName(x)` conversion.**
  Closes what was flagged, earlier in this same session, as "the one real gap worth doing before
  generics" - and turned out to be a bigger gap than that framing suggested.
  **Investigated before designing anything, and found something worse than "conversions are
  undecided": `int64` and `float64` were *completely unreachable* - not just inconvenient to use.**
  `x mut int64 = 5` and `x mut float64 = 5.0` both failed outright, confirmed directly. There was no
  literal syntax that could ever produce an `int64` (L10 already said so), no widening path into it,
  and no explicit conversion of any kind - `addLong(a int64, b int64) int64` (shared.olang) had been
  declared since early in this project's history and never once called anywhere in the test suite,
  because there was no way to construct an argument for it. `float64` was subtly worse: spec L12
  already *claimed* "a FLOAT_LIT denotes float32 unless context requires float64" - describing exactly
  the context-dependent typing that would make it reachable - but the implementation never built that
  half of it, a real spec/implementation mismatch found only by testing the claim directly rather than
  trusting the prose. Also found and fixed in passing, while re-reading T5 to get the numeric type set
  exactly right before designing anything: it claimed "these six are the numeric types" while listing
  five (`byte`, `int32`, `int64`, `float32`, `float64` - `bool` is explicitly excluded the very next
  sentence) - a small, pre-existing off-by-one, fixed on sight.
  **Design, agreed with the user before writing anything:** (1) extend the *existing* literal-widening
  mechanism (previously: an int literal widens to match a float target, T6's one documented exception)
  to also cover `int64` and `float64`, rather than inventing a second mechanism - literal widening is
  pure reinterpretation, no runtime instruction, so this was always going to be small. (2) a new,
  explicit `TypeName(x)` conversion builtin for everything literal-widening can't cover: a non-literal
  value crossing numeric types in either direction, and narrowing specifically. Deliberately explicit-
  only for the non-literal/narrowing case, matching this language's existing "no implicit conversion"
  stance (T6) rather than relaxing it - and deliberately unchecked on narrowing overflow (silently
  wraps, e.g. `byte(300) == 44`), the same trust this language already extends at every other point a
  value can lose information without a runtime check (E16's own unchecked array indexing).
  `TypeName(x)` reuses the existing `Type(args)` call shape rather than inventing cast syntax or an
  `@`-prefixed builtin (Zig's own convention) - primitive type names were never callable before this
  (only constructor-bearing structs are), so there was nothing to collide with, and it matches this
  language's one existing builtin precedent (`len(arr)`: a plain name, intercepted in call position,
  never shadowable - E23) rather than adding a second, differently-shaped kind of builtin.
  **User-requested cleanup alongside the extension, not just the extension itself:** the *existing*
  int-literal-to-float widening check in `OperandFitsType` was three near-duplicated `if` blocks
  waiting to happen (one per numeric-widening case) before this session even started adding new ones -
  the user asked directly for it to be rebuilt properly rather than extended as-is, calling their own
  original version "very ugly." Replaced with one small predicate, `numericLiteralCanWiden(from, to)`
  (semantic.c) - encodes exactly the three allowed widening pairs in one place - plus one unified call
  site that reinterprets the value (a pure retag for byte/int32→int64 and float32→float64, both of
  which are already stored at full 64-bit width regardless of their "logical" type; an actual
  int-to-double conversion only for the one case that was already there, int→float) instead of three
  separate copy-pasted branches.
  **Two real, additional gaps found and fixed while testing the extension, both judged in-scope and
  fixed rather than just flagged, though each expands what was literally asked for by a little:**
  (1) **A negative numeric literal (`-5`) never widened at all, even for the one case that already
  existed (int→float), because a unary-minus node was never itself `isLiteral` regardless of what it
  wrapped** - `x mut float32 = -5` failed before this session touched anything. Fixed by folding the
  sign into the literal's own value at the point `OperandUnary` builds the negation, when the operand
  being negated is already a numeric literal - matching the same "literal, optionally negated by one
  leading unary `-`" shape T8 already recognized for a compile-time-constant array size, just not
  extended to ordinary numeric literals until now. **Side effect, deliberately not suppressed and
  called out plainly rather than left implicit:** since `isLiteral` is the same flag D15's `:=`
  inference already checks, `x := -5` is now also valid (previously rejected the same way `x mut
  int64 = -5` was) - a natural, low-risk completion of what already looks like a literal, not
  something a narrower fix could have avoided without adding a second, parallel "literal for widening
  purposes only" flag that nothing else in this codebase has a precedent for.
  (2) **E6 already documented "an integer literal operand widens to match a float32/float64 operand"
  for `+ - * / %`, but no code anywhere ever implemented it** - `x mut float32 = 2.5; y mut float32 =
  x + 5` failed outright, confirmed directly; `OperandBinary` never called the assignment-context
  widening check at all. Fixed by widening a literal operand to match its non-literal sibling before
  `OperandBinary`'s own same-type check runs - applied to *every* `sameType`-requiring binary operator
  (arithmetic, comparison, bitwise alike), not just the five E6 happened to name explicitly: leaving
  comparisons out while arithmetic got it would have been a real, confusing inconsistency (`x + 5`
  compiling but `x == 5` not, for the exact same `x`) that T6's own general "wherever a float type is
  expected" wording gave no principled reason to draw a line at. Judged in-scope rather than a
  separate design question needing its own sign-off, since it's a direct completion of the same
  literal-widening story the rest of this entry is already about, not a new capability.
  **Confirmed extensively:** every widening pair in both directions relevant (byte↔int32↔int64,
  int↔float, float32↔float64), explicit conversion in both directions for every pair including
  identity (`int32(x)` where `x` is already `int32`), truncation producing the correct wrapped value,
  wrong-argument-count and non-numeric-argument rejection for `TypeName(x)`, negative literals via
  both a var-decl and `:=`, arithmetic/comparison/bitwise widening together, and `addLong` - previously
  declared and totally unreachable - actually called and correct for the first time in this project's
  history. `make verify` (90 tests, `-c` build/run) passes with no regressions. spec.md gained a
  rewritten T6 (the general widening rule, referenced from E6/E8/E9/E10 rather than restated), an
  extended E4 (negated literals count as literal expressions), a corrected E12, a fixed T5, and a new
  §5.12/E26 for the explicit conversion - one numbering slip caught and fixed before it shipped: an
  early draft cited a nonexistent "E24a," which isn't this spec's own numbering convention (new rules
  get the next sequential integer, appended at the end of their section so reading order stays
  monotonic, not a lettered sub-rule slotted into the middle) - corrected to a properly-appended E26
  before writing the rule itself.
- **`extern func` - external (C-ABI) function declarations, and the design conversation that led there.**
  Prompted by "is it time for generics?" once numeric conversions landed with no blockers left. The
  user's actual stated goal turned out to be broader: generic data structures (`Vec`, `Set`), generic
  comparison functions (`min`/`max` over anything with the right operators), and I/O (stdin/stdout,
  file read/write). Proposed splitting these into three independent tracks - I/O first (needs a new
  capability the language doesn't have at all yet), generics via a `type`-as-parameter-kind mechanism
  modeled on how `scope` already works as a restricted builtin parameter-only type (not Rust/C++
  `<T>`, which would collide with this language's own existing `<>` reference-marker syntax), and
  `Vec`/`Set` as ordinary olang library code once generics exist, exactly matching the "Deferred:
  generics" entry's own already-settled principle that such a collection belongs in a library, not
  more special cases inside the compiler.

  **Why I/O isn't "written in olang the same way"** (the user's own next question, and the right one):
  it isn't that I/O needs new compiler-builtin machinery - it's that talking to the OS at all requires
  some way to declare and call a function this compilation doesn't define, and no such mechanism
  existed. `Vec`/`Set` need zero new capability (pure compositions of generics, once those exist);
  I/O needs exactly one new primitive: a way to declare an externally-defined function and call it.
  This reframing is what turned "how do we do I/O" into "how do we do FFI," a much smaller and more
  clearly-scoped question.

  **Rejected: importing C headers directly (`@cImport`-style, Zig's approach).** Explicitly proposed
  by the user, explicitly recommended against: `@cImport` requires embedding a real C preprocessor and
  parser (a multi-year engineering effort in Zig's own case) to solve a problem that's actually a dozen
  or so hand-written function declarations, minutes of manual work. Wildly disproportionate to this
  project's actual scale and need. Any header-parsing/bindgen tooling is deferred indefinitely, revisited
  only if it's ever actually needed - plain hand-written `extern func` declarations cover the entire
  known need today.

  **The ABI mismatch, worked through explicitly before any spec was written** (the user's own next
  question: "such external functions use a different ABI right?" - yes, three distinct mismatches):
  (1) this language's own fallible-function return convention (`{ i32 code, T payload }`, locally-
  scoped error codes - see the Error-union return ABI entry) has no C equivalent at all - resolved by
  deciding an external function is simply never fallible in olang's own type system; any real error
  handling for what it might signal has to be a hand-written wrapper in ordinary olang on top of the
  raw call. (2) this language's runtime-length arrays are fat pointers (`{ len, ptr }`, T11) while C wants a
  raw pointer, often NUL-terminated (which this language's own `STR_LIT` deliberately isn't) - resolved
  by marshalling an array argument down to just its pointer half as an invisible codegen detail of the
  call itself, with length (if the external function needs it) stated as a separate, explicit integer
  parameter the caller supplies via `len(arr)` - no automatic pairing, matching this project's standing
  "explicit over inferred" convention throughout. (3) struct-by-value C ABI passing (SysV classification
  rules) was flagged as a genuinely open question with no known answer for this language's own existing
  calling convention - resolved by simply not allowing structs (or any non-numeric type) in an
  `extern-param`/`extern-ret-type` position at all, sidestepping the question entirely rather than
  attempting to answer it: the concrete, actually-needed functions (`open`/`read`/`write`/`close`) only
  ever need scalars and byte buffers.

  **Extern variables: considered, deliberately not built.** Asked directly whether extern variables
  were needed too. Answer: depends on the I/O approach - raw POSIX syscalls need none at all (`stdin`/
  `stdout`/`stderr` are just the integer constants 0/1/2, not linkable symbols), while C's buffered
  stdio (`fopen`/`FILE*`) would need them. Specific gotcha surfaced and avoided: `errno` on Linux/glibc
  isn't actually a plain extern variable - it's a macro expanding to `*__errno_location()`, a function
  call returning a thread-local pointer that's then dereferenced, not something a plain "declare an
  extern variable" mechanism could ever reach cleanly. Resolved by building I/O on raw syscalls (plain
  `int32` file-descriptor "handles," no `FILE*`) and reporting failure via the bare-error feature
  (bare `error`, already built earlier this same session) rather than any per-errno-code detail - a
  deliberate, honest scope boundary, not a hack. Extern variables remain entirely unsupported; nothing
  in the current design needs them.

  **The design goal that shaped every detail above, in the user's own words: "I either wanna go all the
  way or just barely enough with these kinda things. can we do this without the user ever handling
  pointers?"** Yes, achieved by construction, not by convention: (1) plain `int32` file descriptors as
  handles, never an opaque `FILE*`/pointer-typed handle anywhere; (2) an array-typed extern parameter's
  marshalling to a raw C pointer happens *only* as an invisible detail of the call-codegen mechanism
  itself (`cgExternFuncCall`, codegen.c) - never introducing a real, nameable pointer type anywhere in
  this language's own type system, for application code or stdlib authors alike; (3) no `errno`/pointer-
  dereference ever needed, since failure reporting is delegated entirely to a hand-written olang wrapper
  using the bare error. Confirmed nothing in the shipped design exposes a pointer value or pointer
  type anywhere an olang program could ever read, store, or name one.

  **Naming: `extern func`, not an invented abbreviation.** The user asked directly, offering `cfunc`/
  `ntpfunc`-style alternatives; recommended and settled on reusing the existing `func` keyword with an
  `extern` modifier prefix, matching Zig's `extern fn` and Rust's `extern fn` exactly and this project's
  own consistent pattern of borrowing established terminology (`own`, `scope`, `error`, `try`/`catch`)
  rather than inventing new words. Also the cleanest grammar fit: a modifier on the existing func-decl
  shape, no error-list, `STMNT_END` replacing the block a body would otherwise open.

  **Spec (§11, X1-X5) drafted and approved with no revision requested ("looks good").** One genuine
  soundness gap found and fixed *during* implementation, not anticipated by the approved spec text as
  first written: X2 originally restricted an `extern-ret-type` the same way as an `extern-param` (a
  numeric primitive, or an array of one) - but there's no sound way to marshal an array-typed *return*
  value at all. X3's own marshalling (drop the length, keep the pointer) has no working reverse
  direction: a raw pointer an external function returns carries no length anywhere alongside it, so
  reconstructing a real `{ len, ptr }` value from it would mean either fabricating a length (silently
  unsound - reading past the real buffer, or truncating it, depending on which way the fabricated
  length happened to be wrong) or introducing a genuine pointer-typed value into the language (exactly
  what the whole "no pointers ever surface" design goal above exists to prevent). Fixed by narrowing
  `extern-ret-type` to a numeric primitive only, splitting what X2 allows for a parameter from what it
  allows for a return type for the first time, and adding the reasoning as new text in X3. Caught and
  fixed in-session (per this project's standing convention of surfacing and fixing incidental issues
  found along the way, not quietly patching around them), not left as a latent gap - `spec.md` reflects
  the corrected rule, not the originally-approved one.

  **Implementation**, following this project's three-pass semantic-analysis structure end to end:
  parser (`syntax.h`/`syntax.c` - three new node kinds, `SNTX_EXTERN_PARAM`/`_PARAM_LIST`/
  `_FUNC_DECL`, and their own parser functions, deliberately *not* reusing `parseParam` since an
  extern param never accepts `mut`, per X2); `semaCollectNames` (pass 1 - registers into the shared
  `vars` namespace exactly like an ordinary `func-decl`, per the D2 update below); `semaResolveModule`
  (pass 2 - new `resolveExternFuncSig`/`resolveExternParamList`, validating every parameter and the
  return type against the numeric-primitive-or-array-of-them restriction, `isExternAllowedType` for
  params and the narrower `isNumericPrimitive` alone for the return type per the X2/X3 fix above,
  leaving `t.errors` empty per X4 and marking a new `struct type.isExtern` flag); `semaCheckBodies`
  (pass 3 - needed *no* new code at all: its existing `if (actual->type != SNTX_FUNC_DEF) continue;`
  guard already skips anything that isn't an ordinary function definition, and an extern-func-decl
  has no body to check in the first place). Codegen: `emitExternDecls` emits one bare LLVM `declare`
  per extern function at module scope (the unmangled name - X5, it's also the linker symbol, deliberately
  bypassing `mangleGlobal`'s module-prefix convention - with an array-typed parameter's LLVM type
  overridden to a bare `ptr`); `cgEmitAllFunctions` now skips `isExtern` vars (nothing to define, only to
  declare); a new `cgExternFuncCall`, dispatched from the top of the existing `cgFuncCall` before any of
  its ordinary-call machinery runs, builds the call by first running every argument through the *existing*
  `cgBoundaryValue` (so a compile-time-length-array literal promoting into a runtime-length `byte[]` parameter, or a plain
  value promoting into a `<>`-marked one, still goes through exactly the same promotion machinery an
  ordinary call gets), then reduces whatever boundary-form value that produced down to a bare pointer for
  any array-typed parameter (`extractvalue` the pointer half of a `{ i64, ptr }` for a runtime-length array,
  use a `structMAlloc` value's own pointer directly, or spill a plain compile-time-length array's by-value aggregate to
  a fresh stack slot to get a real address) - never the `{ code, payload }` wrapping, never a `try`/catch
  path, since `func->type.isExtern` short-circuits straight past all of that.

  **A real bug caught by the smoke test, worth recording because of how easy it would have been to miss:**
  an early hand-written test declared `extern func write(fd int32, buf byte[]) int64` - two parameters,
  omitting the real POSIX `write(2)`'s third `count` argument - and it *compiled, linked, and ran with
  exit code 0*, but produced inconsistent output between `-O0` (correct) and `-O3` (silently wrong/no
  output) builds. Root cause confirmed directly by inspecting both the unoptimized and `opt -O3`-optimized
  LLVM IR: the generated call was `call i64 @write(i32 1, ptr %buf)`, genuinely missing the third `i64`
  argument libc's real `write` expects - undefined behavior from a caller/callee arity mismatch across
  the C ABI boundary (whatever happened to be in the register/stack slot the real `write` reads as
  `count`), not a compiler bug at all: X2/X3 already require the caller to state and pass every argument
  the real C function needs, length included, with zero automatic inference - this was purely a hand-
  written test declaration under-declaring the real function's own signature. Confirms the design's own
  "explicit over inferred" choice is load-bearing here: an `extern func` declaration is a claim the
  *declarer* is responsible for getting right, matching Zig's own `extern fn` (and C's own header
  declarations) exactly - the compiler cannot check a declaration against a symbol it never sees the
  real definition of.

  **Confirmed working end to end**, not just compiling: a real `write(2)` syscall through `extern func`
  with a `byte[]` buffer, marshalled through `own` scope allocation and the array-to-pointer boundary,
  producing real visible output at `-O3`, confirmed once the test declaration above was corrected to
  the real three-argument signature. Two permanent tests added to `shared.olang`: one calling `getpid()`
  (a real external function taking no arguments, returning a plain scalar - exercises linking and the
  no-array-args path) and one calling `write(-1, buf, len)` (a real external function called with an
  intentionally-invalid file descriptor, exercising the `byte[]`-to-pointer marshalling path while
  staying deterministic and side-effect-free for the test suite - POSIX guarantees `EBADF` immediately,
  no output, no environment dependency). `make verify` (67 `shared.olang` tests + 13 across the
  worker/runner import-cycle files, `-c` build/run) passes with no regressions.

- **Reference syntax, round four: `<>`/`<name>` → `&`/`&name`, to free `<>` for generics.** Settled during
  the design discussion that opened the generics work (see the entry above for where that discussion
  started: what `Print`/`WriteVal` actually need on top of `extern func`). The generics design landed on
  `<T>` for type parameters and arguments - the user's explicit preference over the `(type T, ...)`
  parameter-kind spelling first proposed - which put it in direct collision with the reference marker,
  since `Vec<int32>` and `Point<myscope>` are the same token shape (`IDEN "<" IDEN ">"`).
  **Both of `<>`'s original justifications expire under generics**, which is what made moving the marker
  the right side of the collision to give way on rather than a coin flip. The reference-syntax entry above
  argued `<>` "reads the way a type-parameter/generic annotation does in most other languages" - a
  reasonable intuition for a scope tag only while the language has no real type parameters, and actively
  misleading the moment it does. It also argued there was "no parsing ambiguity risk the way C++'s
  `<`/`>` template lookahead has: `parseTypeRef` is only ever called from a position the parser already
  knows is a type expression... never from general expression parsing" - a premise generics void outright,
  because generic *calls* (`Max<int32>(a, b)`) and *literals* (`Pair<int32, int64>{1, 2}`) do live in
  expression position, and the second of those reproduces the exact C++ comma ambiguity (read without
  knowing `Pair` is generic, it is two arguments: `Pair < int32` and `int64 > {1, 2}`).
  **Options weighed:** (a) move the marker off brackets entirely onto a single sigil, (b) move generics off
  `<>` instead - rejected, since every bracket shape is already taken (`[]` arrays, `{}` struct literals,
  `()` calls, the last already rejected by the user) leaving only turbofish-style ugliness that taxes the
  more frequently written construct, (c) keep both on `<>` and disambiguate by content (`Point<@>`) -
  rejected as strictly more characters than the status quo while still leaving `><` adjacent, so the
  parser work does not actually go away. (a) won on the observation that **the marker is not a list**: it
  is at most one optional identifier, so a bracket *pair* was always overkill, and the pair was the entire
  source of the collision.
  **`&` vs `@`, and why the earlier `&` experiment is not a precedent against it.** The initial
  recommendation was `@`, on three grounds: `&` imports the address-of/borrow mental model from C/C++/Rust
  that this language has explicitly rejected (no pointer ever surfaces, no unary `&`, and the checker is
  scope-containment, not a borrow check); `@` names the half of the marker that actually varies between
  two markers (always the scope, never the is-a-reference part, which per the earlier entry is
  inseparable); and `@` is entirely unused in the lexer, where `&` is live as `TOK_BTWSE_AND` alongside
  `&&`, `&=` and `&&=`. The user chose `&` on **keyboard ergonomics** - decisive for a marker typed
  constantly, and on a Nordic layout `@` is AltGr+2 against `&` at Shift+6. Worth recording that the
  earlier `&` round (see the reference-syntax entry above) is *not* evidence against `&`: it was never
  rejected on its merits, it was introduced for exactly today's motivation ("to stop sharing a delimiter
  with struct-literal value syntax") and abandoned as collateral when an unrelated design question (one
  marker or two) resolved, at which point `{}` was chosen back as a preference call that knowingly
  re-accepted the overload - a call the third round then reversed.
  **The parsing objection was checked properly before being conceded, and does not survive.** There is no
  unary `&` in olang (`isUnaryOpTok`, syntax.c: `!`, `-`, `~`, `++`, `--` only), because there are no
  pointers and so no address-of operator - therefore the marker's postfix-on-a-type position never
  overlaps binary infix `&`. Type-argument lists are safe (`Vec<Point&>`, `Vec<Point&, int32>`: neither
  `&>` nor `&,` is a token). The one expression-position case, an array literal of a marked element type
  (`Point&[p1, p2]`), resolves because the parser has already committed `Point` as a known type via the
  existing `ScanTopLevelDecls` pre-pass before it reaches the `&`. Maximal munch never bites in a valid
  program: `&&`/`&=` could only mislex on `Point&&...`/`Point&=...`, neither ever legal syntax.
  **One genuinely new hazard, found while implementing and closed.** Unlike `<...>`, the new marker has no
  closing token, and `&` is not a `stmntEndTriggerType` (it cannot be - see `acceptStmntEnd`, which treats
  a trailing `&` as an implicit statement terminator for exactly the same reason it used to treat `>` that
  way). So a bare marker ending a line would silently swallow the identifier opening the *next* line as
  its scope name: `x Point&` followed by `q := 5` parsing as `x Point&q`. No valid program reaches it (a
  no-initializer reference var-decl is rejected outright), but the diagnostic would have pointed somewhere
  baffling. Closed by requiring the marker's optional `IDEN` to begin on the marker's own line
  (`iden.lineNr == marker.lineNr` in `parseTypeRef`), written into T24 as a normative rule rather than
  left as an implementation detail. Verified: the case now reports the real error (a var-decl needing an
  initializer) pointing at the declaration, not at a phantom unknown scope.
  **Mechanically** this was smaller than the third round, because the marker got *simpler*: `parseTypeRef`
  drops its backtrack-the-whole-thing path entirely (a `&` in a type position is always a marker, there
  being no unary `&` to confuse it with, where `<` had to be un-read if no `>` followed);
  `acceptStmntEnd`'s `TOK_GRT` becomes `TOK_BTWSE_AND`; the three real marker sites in semantic.c
  (`applyRefMarker`'s presence check and its error token, and `isScopeTypeRef`'s rejection check) swap
  `TOK_LST` for `TOK_BTWSE_AND`; `token.c` needed **no change at all**, since `>` was never a statement-end
  trigger either and `&` inherits that position unchanged. Plus five error messages in errmsg.h, the
  marker's spelling throughout spec.md (T24's production, L20's implicit-statement-end exception rewritten
  for the bare form, and ~28 prose mentions), and 128 marker occurrences across the `.olang` test files.
  `make verify` passes unchanged at 67/12/13 tests - this was a pure notation change with no semantic
  content, which is precisely why it was worth doing now, before generics exist and before the marker
  acquires a second meaning.
  **Incidental fix found along the way:** `unary-op` was referenced by the E1 grammar block in spec.md but
  never actually defined anywhere - the operator set only appeared in E5/E9/E11 prose. Added the missing
  production (`"-" | "!" | "~" | "++" | "--"`), verified against `isUnaryOpTok` in syntax.c.

- **Destructors are an identity claim, so a type declaring one is now reference-only - and registration
  moved from storage locations to constructor calls.** Found while working out how a future generic
  `Vec<T>` would handle a destructor-bearing `T`. The user's position throughout - "destructors are tied
  to scopes; when a struct is created on a scope it is registered to destruct when that scope closes;
  there is nothing more to it" - turned out to be the correct design, and the implementation was not it.
  **Three real bugs, all measured, all one root cause.** (1) A plain local compile-time-length array of
  destructor-bearing values ran *zero* destructors: `cgRunLocalDestructors` filtered on
  `l->type.bType != BASETYPE_STRUCT || !l->type.hasDestruct`, so an array local was skipped outright.
  (2) A plain struct with a destructor-bearing *field* never destructed the field at all; the single
  destructor call observed was the *constructor's own parameter copy* firing at the constructor's
  return - confirmed by reading the counter while the owning struct was still live and in scope, which
  already showed 1. (3) The same thing on any ordinary function: passing a destructor-bearing struct by
  value released the *caller's* resource when the callee returned, while the caller's variable was still
  live and would destruct it again later - use-after-release plus double-release on entirely ordinary
  code. The arena path (`cgRegisterDtorIfNeeded`) recursed through array elements, having been taught to
  by an earlier bug fix, but never through struct fields; the stack path recursed through neither.
  **The wrong fix, considered and dropped: a structural walk.** The obvious repair is to make destructor
  discovery recurse the whole type - struct with `destruct{}` registers, struct recurses its fields,
  array recurses its elements. That is wrong under value semantics, and the user's pushback is what
  surfaced why: registering per *storage location* double-frees. `h2 mut Handle = h` is a copy, not a new
  resource; two storage locations holding the same file descriptor must close it once, not twice.
  Registration per *construction* gets that right, and it is also what makes by-value parameters correct
  for free (a parameter is not a construction, so it registers nothing) with no "parameters never
  destruct" special case needed.
  **Then the real question, and the conclusion.** Registration-at-construction still leaves aliasing:
  `arr[0] = Handle(1)` then `arr[0] = Handle(2)` gives two registrations pointing at one address, so the
  slot destructs twice with the second value and the first is lost. The user first read this as an
  occupancy problem ("no simple way to know if there is anything stored without initializing arrays to
  null") - but occupancy is not the defect. Two constructions genuinely happened and two destructors
  genuinely should run; what is broken is that both registrations point at *mutable shared storage*, and
  no null flag fixes aliasing. Registration is correct exactly when a construction owns storage nothing
  else writes to - which is already true of every `&` instance, and false of every case that broke.
  Hence: **a type declaring `destruct{}` is reference-only.** The user then named the underlying thing
  directly - "I am envisioning more of an object oriented, object is created and stored somewhere system
  instead of C's structs are declared and laid out in memory system" - which is exactly the split. A
  destructor asserts an instance owns something releasable exactly once, which requires a well-defined
  instance count; a value type is compared structurally and copied freely and has none. **The language
  had already drawn this line and `&` is where it sits** (`==` on a reference is pointer identity, on a
  value structural), so the rule is two settled decisions composed rather than a new axiom.
  **A much larger alternative was weighed and rejected: making all structs and arrays references.** It
  would delete `structMAlloc`/`arrMalloc`, the promotion paths, and the value/reference split entirely.
  Three costs sank it. Returns stop working without a scope - `func makePoint(...) Point` is safe today
  only because the value is copied out, so every struct-returning function would need a `scope`
  parameter and an `&s` return, or a hidden implicit one. It is not "one ptr redirect": it is one per
  nesting level per access plus an allocation per object, and a 1000-element `Point` array goes from 8KB
  contiguous to 8KB of pointers plus 1000 scattered allocations - the array-of-structs-to-
  array-of-pointers cliff, not a slight overhead. And `==` would have to stop meaning structural
  comparison or stop lining up with reference-ness. The half-measure (containers are references,
  contents inline) does not fix destructors at all, so the two halves do not compose. Decisive point:
  the narrow rule already buys the entire destructor fix, so the large change would cost returns,
  locality and `==` for nothing. Empirically the languages that went all-reference (Java, Python) added
  value types back, and C# shipped with both from the start.
  **Spec:** C11 added (reference-only, with the identity rationale and the "marker still written at
  every use" clause - declaring a destructor makes the type reference-*only*, never the marker
  implicit, so reading a `type-ref` never requires knowing whether the named type declares a
  destructor). C9 collapsed from two cases to one (scope close), losing the plain-local case and the
  `return x` exception. C10 extended to "never for storage no constructor produced an instance in".
  O15 rewritten, O16 added for registration-at-construction.
  **Implementation:** a `typeHasBareDestructStruct` check in `resolveTypeRef` (semantic.c) - which must
  recurse into an array's element type *regardless of the array's own marker*, since `&` on an array
  makes the array as a whole reference-shaped, never its elements individually (caught in testing: the
  first version skipped `Handle[3]&s`, which is still three Handle values sharing one allocation).
  Deleted from codegen.c: `cgRunLocalDestructors`, `cgSkipLocalForReturn`, `cgRegisterDtorLoop`,
  `typeMayHaveDestruct`, `cgRegisterDtorIfNeeded`'s entire array-walk branch, and the zero-fill
  registration in `cgSizedArrayAlloc` - the function reduces to "if this struct declares a destructor,
  register it", once, at the malloc-promotion site that *is* the construction site.
  **A gap the rule exposed, closed immediately after in its own change (see the entry below).**
  **Tests:** the destructor suite migrated rather than dropped - `useHandleLocally` to `Handle&`;
  the `return x` skip test replaced by the scope-tagged equivalent (`makeHandle(n, s scope) Handle&s`),
  which expresses the same fact directly and needs no dataflow exception; `makeAndDiscardOne` now proves
  the same "deferral is scoped to exactly one instance" point via two different scope tags; both array
  tests moved to the `Slot` wrapper shape. `useSizedHandleArray` was retired - the behaviour it covered
  ("every slot of a runtime-sized array registers up front, zero-filled or not") is deliberately gone,
  since zero-filling constructs no instances and a reference has no zero value, which the existing
  zero-fill rule already rejects. Three new permanent regression tests cover the three bugs above in
  their surviving shapes. `make verify`: 69/13/12, all passing.

- **The reference marker may now be written before the array suffixes as well as after, making an array
  *of* references expressible for the first time.** Fell out of the destructor work above: a
  destructor-declaring type is reference-only, so an array of them has to be an array of references - and
  T24 put the marker strictly *after* the array suffixes, meaning `Handle&[3]` did not parse and never
  had, for any type at all. The capability had to be faked with a plain value struct wrapping a reference
  (`type Slot struct(h Handle&) { h }`, then `Slot[3]`), which the destructor tests briefly used.
  **The two positions are genuinely different data layouts, not two spellings of one thing** - which is
  why this is a new position rather than a reinterpretation of the existing one. `Point&[3]` is three
  pointers to three separate allocations: elements have identity, two loads to reach one, and each can be
  separately constructed, owned and destructed. `Point[3]&` is one pointer to one allocation of three
  inline values: one load to reach an element, and the whole block copies or aliases as a unit. Both
  already had real uses - the second is what `makeFixedArrayRef(s scope) int32[3]&s` in shared.olang does
  (hand back a pointer into the caller's scope instead of copying the elements out), and is also how you
  keep a large array inside a struct without inlining it. Neither subsumes the other.
  **The size question that came up while specifying this, and its answer:** what happens if a function
  declares `Point[3]` and the array cannot be guaranteed to be 3, e.g. one built from a runtime
  expression? Nothing, because a runtime-sized `T[expr]` is *never a compile-time-length type* - it resolves to a
  runtime-length array, exactly as `detectRuntimeSizedArrayType`'s own comment says ("arrLen stays exactly what
  it's always been, a compile-time constant or nothing"). Conversion runs one way only, compile-time- to
  runtime-length; there is no runtime-to-compile-time-length at all, checked or otherwise, and two
  compile-time lengths differing is
  its own rejection. So the only things that can have type `Point[3]` are 3-item literals and other
  `Point[3]` values, and the static guarantee holds by construction rather than by analysis. The practical
  consequence, worth knowing: `T[]` is the general-purpose parameter type (it accepts a compile-time-length array too,
  via promotion), and `T[N]` means "I require exactly N" and is rare and deliberate. The escape hatch for
  runtime data you know is N long is to rebuild it - an array literal's items are ordinary expressions, so
  `int32[d[0], d[1], d[2]]` works and costs a copy.
  **Implementation.** `parseRefMarker` factored out of `parseTypeRef` and parameterized by node type;
  markers now live in their own child nodes (`SNTX_ELEM_REF_MARKER` / `SNTX_REF_MARKER`) rather than as
  loose tokens on the type-ref, so the two positions are distinguishable. `applyRefMarker` and
  `resolveScopeTag` take a marker node instead of the whole type-ref; `resolveTypeRef` applies the element
  marker to the base *before* `applyArraySuffixes` and the trailing one after. Two call sites needed the
  same two-level treatment and one was missed on the first pass - `resolveRuntimeSizedArrayDeclType`
  still passed the whole type-ref, which silently produced a bare (own-scope) tag instead of the declared
  `&s` and surfaced as a scope-containment error on `makeSizedArrayRef`; `isScopeTypeRef` also had to stop
  looking for a loose `TOK_BTWSE_AND` token that no longer exists there.
  **Array literals needed it too, or the feature would have been inert** - `Handle&[3]` was expressible as
  a *type* but nothing could construct one, since `elem-type` in E19 was a bare name. `parseExprPrimary`
  gained a branch for "known type, then `&`, then `[`", committing only once the `[` is confirmed so a
  bare `Handle&` in expression position and ordinary bitwise-and both still backtrack cleanly, and
  `buildArrayLiteralExpr` applies the marker to the element type. No primitive case: a primitive can never
  carry a marker.
  **Spec:** T24's production gains the pre-suffix position with a table of the three shapes; E19's
  `elem-type` gains the optional marker. Tests: the destructor array tests dropped the `Slot` wrapper for
  real `Handle&[3]&`/`Handle&[]&`, and a new test covers both positions side by side. `make verify`:
  70/13/12.

- **Terminology: "fixed-size" and "dynamic" arrays renamed to "compile-time-length" and
  "runtime-length".** User-driven, purely a documentation change - no syntax, semantics or code behaviour
  altered. "Dynamic" was actively wrong: it promises growth, and this language has none (the entry above
  spells out that a runtime length means "sized once, at construction, then fixed" - there is no
  growable `Vec`). "Slice" was considered and rejected for misleading in a different direction: in Go and
  Rust a slice is a *view* into storage someone else owns, where these own their allocation. The real
  distinction was never dynamism at all but *when the length is known* - `T[N]` carries it in the type at
  compile time, `T[]` carries it at runtime alongside the pointer in the `{ i64, ptr }` value - and the
  new pair names exactly that, with the user's own observation that both are static as the deciding
  argument. Renamed throughout spec.md, CLAUDE.md, HISTORY.md (including older entries, since they
  describe the same concepts), every code comment, the one error message that mentioned it, and the
  `.olang` test comments; `typeNeedsDynamicPromotion`/`cgPromoteFixedArrayToDynamic` became
  `typeNeedsRuntimeLengthPromotion`/`cgPromoteFixedToRuntimeLength`. `arrMalloc` was deliberately left
  alone - it is named after the representation (allocated, not embedded), which is still accurate and
  orthogonal to what the length-kind is called.

- **`x T[] = <initializer>` now infers the length into the TYPE, not just the allocation.** User-spotted,
  immediately after the compile-time-/runtime-length rename above: if `T[]` is "runtime-length", why does
  `x int32[] = int32[1, 2, 3]` count as one, when the length is plainly visible at the declaration? The
  answer was that the length *was* inferred - for the copy - and then thrown away from the type.
  Confirmed both directions before changing anything: `cgLen` emits a runtime `extractvalue`/`trunc` for
  any `arrMalloc` operand, even one initialized from a visible 3-item literal, where a compile-time-length
  array's `len()` is a literal constant; and `TypeIsSame` skips the length comparison entirely whenever
  `arrMalloc` is set, so an `int32[]` holding 3 and one holding 4 were *the same type*. The form that did
  keep the length already existed (`x := int32[1, 2, 3]` infers `int32[3]`, verified by passing it to an
  `int32[3]` parameter while the explicit `int32[]` form was rejected), so the two declaration forms
  disagreed for no stated reason.
  **Treated as a conformance bug rather than a design change**, because CLAUDE.md had documented this form
  as "`x T[] = <literal>` (size inferred from the literal)" all along - the implementation simply did not
  make the inferred size reach the type. `mut` was checked first and is unaffected: `x mut := <literal>`
  is valid (D11's grammar allows it), so nothing was reachable only through the old behaviour.
  **Rule (D12a):** a declared `T[]` whose initializer has a compile-time length adopts it, becoming
  `T[N]`. The declared element type and any `&`/`&name` marker are kept as written - only the length-kind
  and length come from the initializer - so `x T[]&s = ...` stays allocated into `s`, and a bare
  `x T[] = ...` becomes an ordinary embedded array, exactly what `:=` would have produced. An initializer
  that is itself runtime-length carries no length to adopt and leaves the declaration runtime-length,
  which is the only shape that ever had a length worth keeping.
  **Implementation:** one helper, `inferArrayLenFromInit`, applied at both sites where a declared type
  meets its initializer (`buildVarDeclStmnt` and the `for`-init path), immediately after the existing
  fit check so a genuine mismatch is still reported against the type as written. No codegen change at
  all - the resulting type is one the backend already handles.
  **Consequence worth knowing:** reassigning such a variable to a differently-sized array is now a
  compile error rather than silently working, since its type carries a length. That is the intended
  effect (it catches a real mistake), and a genuinely varying-length local is still expressible via
  `T[expr]` or a runtime-length initializer. Two permanent tests cover both directions. `make verify`:
  72/13/12.

- **An element-position scope NAME is now rejected instead of silently ignored.** Found by the user
  questioning whether `Handle&s[Handle(1), ...]` was an example of scoping the *creation* rather than the
  type - i.e. whether the element-marker feature had quietly reintroduced the per-construction-site scope
  the ownership design had already rejected. It had not: `elem-type` in E19 is a type expression, so the
  literal restates the element *type* and the target's declared type still supplies every scope. But
  checking that claim properly turned up a real wart in the element-marker work.
  **A correction worth recording, since the first check was reported before it was sound:** the test
  originally used to "confirm" that a named element tag put elements in `s` passed `own` as `s` from the
  caller, so `s` *was* the caller's own scope and both possible allocations survived identically - the
  test could not distinguish the two outcomes at all and established nothing. A three-level version
  (`outer` -> `middle(own)` -> `makeIt(s)`, observing from `middle` after `makeIt`'s own scope has closed
  but while `s` is still open) does distinguish, and shows elements marked bare `&` surviving into `s`.
  **So the element marker's scope name was accepted and ignored.** Codegen allocates every element into
  the *array's* own scope, which is the settled rule (a reference nested inside a larger value always
  inherits its container's scope, never an independent tag) - so `Handle&s[3]`, `Handle&anything[3]` and
  `Handle&[3]` all compiled to exactly the same thing. Not unsound - nothing dangles, since elements
  follow the array's scope rather than the callee's own - but an accepted-but-meaningless tag is precisely
  the shape that hides a later bug, so it is now a compile-time error (NAMED_SCOPE_ON_ELEMENT), gated on
  array suffixes actually following the marker (with none, the marker IS the whole type's own and takes a
  scope name normally). Spec'd in T24; a permanent test covers the surviving behaviour by construction.

- **C3 (a constructor field is mutable only if declared `mut`) was never actually enforced - fixed.**
  Surfaced sideways: while demonstrating that a value flowing into a `&` parameter is copied rather than
  aliased, the demo struct's field had to have its `mut` removed to parse, and `p.x = 99` still compiled.
  `OperandIsMutableLvalue`'s `OPERATION_MEMBER` case recursed on the *base* alone
  (`return OperandIsMutableLvalue(base)`), consulting the base variable's mutability and never the
  field's own flag - so every field of any mutable variable was writable regardless of how it was
  declared, and C3 was documentation with nothing behind it.
  **The flag was already recorded correctly on both sides**, which made the fix small and safe: a ctor
  field gets `v.mut = hasTokOfType(f, TOK_MUT)` (resolveStructCtorInto), while a plain (T13) struct's
  fields get `v.mut = true` explicitly, since that grammar has no `mut` at all. So checking the field's
  flag ANDed with the base's enforces C3 exactly and leaves plain structs untouched. `OperandMember` now
  records `memberMut` on the operand (the field var is right there but was not being carried forward),
  and the check consults it alongside the base rather than instead of it, so writing through an immutable
  base stays rejected too.
  **Worth noting the `mut` goes on the FIELD, not the parameter** - `IDEN [ "mut" ]` for a bare pun
  (C2), so `open mut`, not `struct(open mut int32)`. Got this wrong in the first regression test and the
  newly-working check caught it, which is a small piece of evidence the enforcement is real. Two
  permanent tests cover both sides (a `mut` ctor field stays writable; a plain struct's fields stay
  writable). `make verify`: 75/13/12.

- **Parameter mutability enforced (D9), and a value may no longer be promoted into a `&` parameter it was
  named for (E12a).** Driven by the user working through the `mutateThrough` example, where the same
  function with one prototype mutated the caller's value in one call and silently didn't in the other.
  My first answer defended it as required for soundness; that was too strong, and the user's pushback
  ("whether mutation happens should be obvious from the function signature", and later "the
  copying/mutate in place behaviour should not be dependent on what scope is given - this is not
  human-workable") was right on both counts.
  **A design I proposed and the user correctly rejected**, recorded because the rejection is the useful
  part: I first made mutation-visibility a consequence of the scope tag (bare `&` can't outlive the call
  so pass by address; `&s` might be retained so copy). That is sound but unusable - it means reasoning
  about durability at every call site to know whether your variable changes. I had also imported "borrow"
  vocabulary from Rust, which this language explicitly does not implement.
  **What landed instead is simpler and needed no new concepts:** `mut` means what it means everywhere
  (this can be assigned to) and `&` means whose instance it is. For a value parameter `mut` makes the
  callee's own copy writable, leaving the caller unaffected; for a reference parameter it makes the
  caller's instance writable. Independent axes, readable from the signature alone.
  **Both halves turned out to be conformance bugs, not design changes.** D9 already said "a parameter is
  immutable unless declared with `mut`" and pointed at D11 for how that differs from a local - but the
  body-scope setup forced `local->mut = true` for every parameter with the comment "local variables
  (including parameters) are mutable by default", so D9 was unenforced. Exactly the same shape as C3's
  unenforced field mutability found an hour earlier, and in the same function-family. Only two call sites
  in the entire test suite needed `mut` added (`fillBoxedPoint`, `setChainLeaf`, both writing *through* a
  reference parameter), which is decent evidence the rule matches how the code was already written.
  **E12a took three attempts to scope correctly, each narrowing on real evidence.** First cut rejected any
  value flowing into a `&` parameter: that broke every constructor call initializing a reference field
  from a fresh value (`ScopedBox(outer, Point{7, 8})`). Second cut exempted literals: still broke *nested*
  constructor calls (`PunnedBox(a, WrappedPoint(a, Point{x, y}))`), since a constructor's result is a
  temporary but not a literal. Third cut is the right predicate - `OperandIsLvalue`: reject only when the
  caller actually *named* the argument (a variable read, index, or member access). A freshly built
  temporary has no caller-side instance to preserve, so promoting one is construction rather than a silent
  copy of something the caller holds - which is also exactly why var-decls and returns are untouched.
  **Deliberately not done:** an explicit address-of operator at the call site. The parameter type already
  carries the information, so `&v` would be a second place to state the same fact, and the user was
  right to be reluctant to add syntax for it. `make verify`: 77/13/12.

- **Scope runtime: O(1) close, arena-allocated destructor nodes, and an alignment bug found doing it.**
  The two items identified while working out where the frontend should optimize and where LLVM already
  does. The dividing line established first, empirically: LLVM handles anything that is local dataflow in
  one function - it eliminates the stack temporary and writes struct fields straight into the arena slot
  at -O3, and it deletes the whole scope struct for a function that never allocates (`valueStruct`
  reduces to `ret i32 1`). So building directly into the arena in our own codegen would have been work for
  nothing. What LLVM cannot touch is anything that *escapes*, which is exactly these two.
  **1. `__olang_scope_close` is now genuinely O(1).** It used to walk the chunk list head-to-tail on every
  close purely to find the node to splice onto the global pool - the codegen.c comment already conceded
  this ("in one O(1) operation (after an O(chunks-in-this-scope) walk to find the tail)"). `%olang.scope`
  gained a third field holding the tail, appended rather than inserted so the dtor-list head stays at
  index 1 and no existing GEP had to be renumbered. Chunks are prepended, so the tail is whichever chunk
  the scope took first: set once in `scope_alloc` when the list goes from empty to non-empty, never
  touched again.
  **2. Destructor list nodes are bump-allocated from the scope's own arena**, replacing a `malloc(24)` per
  registration and a matching `free` per node at close with a pointer bump and nothing at all. Safe
  because the arena strictly outlives every node it holds - the dtor walk runs before any chunk is
  reclaimed - and the chunks go back to the pool wholesale. LLVM could never do this itself: the node
  escapes into a list reachable from the scope, so no local analysis can prove anything about it.
  **3. And the bug this turned up: the arena never aligned anything.** `%newused = add i64 %curused,
  %size` is a raw byte sum, so a 12-byte `int32[3]` left the *next* allocation starting at offset 12 -
  fine for an i32, misaligned for any i64 or pointer field, which is UB at the LLVM level even on x86-64
  where the hardware tolerates it. Latent before, since it needed a specific size sequence; near-certain
  once every destructor registration started bump-allocating a 24-byte three-pointer node. Fixed by
  rounding every allocation up to 8 bytes at the top of `scope_alloc`. The chunk's own data area was
  already fine (malloc is at least 16-aligned, the header is exactly 24 bytes).
  **Verified under load, not just by the existing suite**: a permanent test interleaves all three
  allocation shapes (a 12-byte array, a 16-byte two-i64 struct, and a destructor-bearing instance) across
  200 scope closes of 50 iterations each, checking both the arithmetic and that all 10,000 destructors
  ran. `make verify`: 78/13/12.
  **Still open, deliberately:** escape analysis so a non-escaping bare-`&` local lives in the frame with
  no arena call at all. LLVM cannot infer it (the pointer is handed to our runtime, so it escapes as far
  as any analysis can see), and the checker already proves such values cannot escape - `return p`,
  returning it as `&s`, embedding it in a returned struct, and storing it into a named scope are all
  rejected. The catch is bounding it: the arena spills to heap chunks while the stack does not, and an
  `alloca` in a loop is not reclaimed per iteration, so a million-iteration loop that works today would
  overflow the stack. Wants a size-and-loop heuristic, not a blanket rule.

- **Run-time-sized constructor fields (D14a) - the gap that stopped a struct owning a buffer.** Found
  while writing the spec's own `Vec<T>` example during generics work, and initially misread as a
  generics problem. It is not. `T[expr]` with a non-constant `expr` is not a *type* at all - it is a
  var-decl-only construct meaning "allocate expr zero-filled elements here, now", deliberately kept
  invisible to every other consumer of `struct type` (`detectRuntimeSizedArrayType`'s own comment says
  so). There are only two array types, `T[N]` and `T[]`. So a field could not be `T[expr]`, and no
  *expression* form existed either - no `make(T, n)` - so nothing could produce a runtime-sized array to
  initialize a `T[]` field with. **The consequence was much broader than Vec: no struct could own a
  runtime-sized buffer of any kind.** Generics merely made it visible, because `Vec<T>` is the first
  thing anyone writes.
  **Fixed by extending the existing form to one more position rather than inventing a second one.** A
  constructor field has exactly the property that makes `T[expr]` meaningful for a local var-decl: a
  definite point at which to allocate, namely the constructor call. A plain (T13) struct has no such
  point - its literal performs no allocation step - so the form stays rejected there. Same
  `detectRuntimeSizedArrayType`, same `resolveRuntimeSizedArrayDeclType`, same
  `OPERATION_SIZED_ARRAY_ALLOC`; the size expression is built in pass 3, where the constructor's own
  parameters are in scope, and evaluated once per construction in field order.
  **A silent, vicious bug found while testing it, and the reason the scope tag is now mandatory.** The
  first version allocated into whatever scope the field's type named, which for an untagged field is the
  *constructor's own* - and that closes before the constructed value reaches its caller. Not merely a
  dangling read: the chunk went straight back to the global pool, the caller's very next
  `__olang_scope_alloc` (for the constructed struct itself) got the same chunk back, and the field's
  data pointer therefore aimed at the struct's own bytes. `b.data[0] = 65` then overwrote the slice's
  own length word - which is exactly how it surfaced, as `len(b.data)` changing after an unrelated
  write. Bisected by IR inspection: the constructor's `scope_alloc` took `%t1`, its own scope, and
  `scope_close(%t1)` ran on the line before `ret`. Now rejected at the field's declaration, with the
  same reasoning O13 already applies to a bare `&` return type - name a scope parameter of this same
  constructor. Two permanent tests cover both the sizing and, specifically, that a write no longer
  corrupts the length. `make verify`: 80/13/12.
  **Raised alongside and deliberately deferred:** the user noted a real symmetry between constructors
  and functions that the language only half commits to (a constructor is already called `Type(args)`,
  is already a synthetic `BASETYPE_FUNC` var, and already has its own parameter and error lists - but
  is parsed and resolved by an entirely separate path, marks its error list differently, and has a
  field list where a function has a body). Whether syntax and implementation should converge further is
  its own design conversation, to be had in isolation rather than settled in passing.

- **Generics: monomorphization working end to end for generic functions.** A generic function now
  infers its type arguments at each call, is compiled once per distinct set of them, and runs.
  **Inference (G9)** happens at the top of `OperandFuncCall`, before anything else: `TypeUnify` matches
  each argument's type structurally against the declared parameter type, binding variables as it goes and
  rejecting the case where one variable is reached twice with two different types. Doing it first means
  every existing check below it - arity, fit, scope bindings, the return type - sees an ordinary
  non-generic function, because the instantiation *is* one. Nothing downstream needed a generic-aware
  version.
  **The instantiation registry is deliberately NOT stored in the owning module's own vars list.** That
  list holds `struct var` by value, so growing it during body checking would realloc its backing array
  and invalidate every `struct var*` already handed out - every `op->readVar`, every parameter origin.
  Instantiations live in one global list of heap-allocated vars whose addresses are stable, and codegen
  walks that list separately. This was a real hazard spotted before it bit, not after.
  **Body checking is a worklist, not a pass.** Checking one copy can create more (a generic calling
  another generic, or itself with different arguments), so `semaDrainInstantiations` runs to a fixed
  point after all ordinary bodies are checked. G17's depth cap is what guarantees it terminates.
  **The copy is checked by the same code path as any other function** - a scope of its parameters, a
  checkCtx, `buildBlock` - against its own substituted types. That is the whole content of G16: once
  substituted there is nothing generic left, so destructors, scope containment and structural comparison
  all apply unchanged. Confirmed by a test instantiating a generic over a user-defined struct and
  comparing with `==`, which needed no generic-specific handling at all.
  **Verified in the emitted IR**, not just by tests passing: one symbol per distinct type-argument set
  (`@m0_maxOf$int32`, `@m0_maxOf$int64`, `@m0_maxOf$float64`, `@m0_maxOfThree$int32`,
  `@m0_same$Point`), with repeated calls on the same types reusing one copy.
  **Still to come:** generic struct types are declared and validated but their type arguments are not yet
  substituted at a use site (`Pair<int32, int64>` resolves, ignoring the arguments), and `match <T>`
  (§12.5) is not implemented. `make verify`: 84/13/12.

- **Generics complete: generic struct types and `match <T>`.** The remaining two pieces of §12.
  **Generic struct type instantiation.** `Pair<int32, int64>` now substitutes. G10 needed no code at
  all: struct identity is owner+name (TypeIsSame), and an instantiation's name carries its own arguments,
  so two instantiations are the same type exactly when their arguments are. Codegen mangles that name
  like any other, so each copy gets its own LLVM aggregate for free. A generic type's constructor is
  monomorphized alongside the type - otherwise `Vec<int32>(10)` would call a constructor whose parameters
  and fields still mentioned `T`.
  **The literal form needed its own parser branch, and it is the one genuinely ambiguous position for
  type arguments** - the C++ problem, exactly: inside a call, `f(Pair<int32, int64>{1, 2})` could read
  its commas as argument separators. It commits only once the whole `<...>` list has parsed *and* a `{`
  or `[` follows, so `a < b` stays a comparison. A generic *function* call needs no such branch at all,
  since its arguments are inferred and never written - a second, unplanned payoff from choosing inference
  over explicit type arguments for functions.
  **A prerequisite discovered while implementing `match <T>`:** a type variable written *inside* a
  generic's body (`x mut <T> = a`, or the match operand itself) has to resolve to the bound type, because
  the body syntax still says `<T>` - it is the same syntax checked again per instantiation. Solved with a
  `currentBindings` static consulted by the type-var resolution path, saved and restored around each
  instantiation's body check so nesting works. Needed for far more than `match`.
  **`match <T>` (G13-G15)** is resolved at instantiation: only the selected arm's block is built, spliced
  in as an `if true { ... }` (cheaper than teaching codegen a new statement kind, and LLVM folds it).
  G14 then needed no separate mechanism - the operand's variable already resolves to the bound type, so a
  value declared with it *is* a value of the concrete type throughout the arm; and because unselected
  arms are never built, each arm can be valid for only its own type. Confirmed by a test where `v + 1`
  compiles only in the `int32` arm and `v.x` only in the `Point` arm. G15's exhaustiveness check reports
  at the instantiation that produced the unmatched type.
  **What did not need changing is the notable part.** Nothing downstream of instantiation is
  generic-aware: destructor registration, the scope-containment checker, structural `==`, promotion,
  boundary values. That is G16 working as specified - once substituted there is nothing generic left, so
  every existing rule applies to the copy exactly as if it had been written by hand. `make verify`:
  89/13/12.

- **Generic types with constructors (G10a/G10b) - the one combination the generics work never reached.**
  Found by going back to fix what looked like a stale example: §12.3's own `Vec<T>` sketch still read
  `items <T>[cap]`, which D14a had since made illegal (the field needs a scope tag). Writing the corrected
  version out and actually compiling it turned up something much larger than a documentation slip - the
  entire combination of "generic type" and "constructor" was unreachable, in three separate ways, none of
  which any test covered because every generic-type test in `shared.olang` used a plain `Type{...}`
  literal.
  **First, there was no call syntax.** The parser's generic-literal branch committed on `{` or `[` after a
  type-argument list, never `(`, so `Vec<int32>(own, 4)` did not parse at all. Since C8 rejects the
  `Type{...}` literal for any type declaring a constructor, a generic type with a constructor could not be
  constructed by *any* spelling. Fixed by extending that same branch with a `(` case, under the identical
  commit rule.
  **Second, merely declaring one crashed the compiler.** `type Holder<T> struct(v <T>) { val <T> = v }`
  and nothing else was enough: `ERROR: bug found` from `llvmType`, reached through `cgFunction`. A type's
  constructor is a synthetic `BASETYPE_FUNC` var living in `mod->vars`, and the generic marker that makes
  both the pass-3 body builder and codegen skip a generic is `type.typeParams` - which was set on the type
  but never on its constructor, so both walked straight into a "function" whose parameters were still type
  variables. The generic's constructor and destructor now carry the type's own parameter list, which is
  what makes them skippable; their monomorphized copies carry an empty one, exactly as for a generic
  function.
  **Third, an instantiation's constructor had no body.** `instantiateType` copied the generic's already-built
  `codeBlock`, whose statements were built against type variables. The fix mirrors the function case
  exactly: the constructor/destructor body construction was factored out of `semaCheckBodies` into
  `buildTypeBodies`, and each new type instantiation is queued and drained with `currentBindings` set, so
  the very same field syntax is built again against the copy's substituted types. The two queues drain in
  one combined fixed point rather than in sequence, because a function copy's body can instantiate a type
  and a type copy's constructor body can call a generic function, in either order.
  **A fourth bug, found only by testing a generic type with a destructor.** The instantiated constructor's
  return type was a *snapshot* (`*ret = *spec`) taken before the copy's destructor was attached, so it
  froze the **generic's** `destructFunc` into the constructed value's type. Every construction then
  registered `@m0_Res$dtor` - the generic's symbol, which is never emitted - and the link failed. Fixed by
  pointing the return type at the copy's own stable slot instead, which is what the non-generic path
  already does and says so in a comment ("the same stable slot resolveTypeDecl was called with - never a
  copy"). The by-value snapshot had no reason to exist.
  **Spec:** G10a states the call form and that the generic's own constructor is never a call target;
  G10b states that constructor and destructor are monomorphized with the type; E3's grammar and E13 gained
  the optional type-argument list. G6's `Vec<T>` example is now the corrected, actually-compiling one.
  **The lesson worth keeping:** the untested combination was invisible because both halves were tested
  separately - generic types (via literals) and constructors (via non-generic types). It surfaced only
  when the spec's own motivating example was typed in and run, which is a good argument for treating
  spec examples as test cases rather than prose. `make verify`: 92/13/12.

- **Considered and rejected: dropping `Type{...}` so all struct construction goes through a constructor.**
  Raised while revisiting the parked constructor/function-symmetry question. The proposal was to delete
  the positional struct literal entirely and give every plain (T13) struct a **derived constructor**
  synthesized from its field list, so `P{3, 4}` became `P(3, 4)` and the language had one construction
  syntax. It was worked out far enough to be costed, and the investigation is worth keeping even though
  the answer was no.
  **What the investigation established, all verified empirically rather than argued:**
  - The derived constructor needs no new mechanism: `type P struct { x int32, y int32 }` desugars to
    `type P struct(x int32, y int32) { x, y }` - the all-bare-puns constructor - which compiles and
    behaves identically today.
  - **The performance objection the proposal pre-empted does not exist.** A struct-literal global already
    compiles to `zeroinitializer` plus a store in `__olang_init_globals`, byte for byte what a
    constructor call produces; struct literals were never static data. At -O3 a trivial constructor
    inlines to plain stores. So compile-time function evaluation was never a prerequisite for the change
    - it would be an optimization benefiting both forms equally.
  - **One case does not desugar naively**, found only by testing: a literal *accepts* an lvalue for a
    bare `&` field (copying it into container-owned storage), while a constructor *rejects* it under
    E12a, because `&` on a parameter means "the caller's own instance". A faithful derivation therefore
    has to **strip the reference marker on the derived parameter and keep it on the field** - the caller
    supplies a value, the container decides how to store it. That distinction (a field's `&` is storage,
    a parameter's `&` is aliasing) is worth remembering independently of this proposal.
  - A plain struct cannot carry a `&name` field at all (no parameter list to name a scope in), so the
    derivation only ever had to handle unmarked and bare `&` fields.
  - Cost was fully scoped: delete E18 and C6's second sentence, amend E4/D15 (a `:=` initializer would
    have to admit a constructor call, since `p := P(3, 4)` is rejected today), add three rules to §9.1,
    delete `parseStructLiteralTail` and `buildStructLiteralExpr`, keep `OperandStructLiteral` as the
    internal aggregate form every constructor body is built from, and migrate 57 call sites.
  **Why it was rejected.** Two construction forms make infallibility visible *at the use site*. With a
  single form, "can this construction fail?" becomes a property of the declaration that a reader has to
  look up; with two, the syntax says it: `Type{...}` is plain data assembled, `Type(...)` is constructed,
  possibly validating or allocating or taking ownership. The E12a difference above stops being an
  inconsistency to paper over and becomes the two forms correctly meaning different things. This also
  keeps open the cleaner version of the still-unresolved question below - a constructor that can raise
  its own error - without making every struct in the language fallible.
  **Still open, and now better posed:** a constructor may declare an error set but has no way to produce
  an error of its own (R3 restricts `error T.W` to a function body, and a constructor has no statement
  body). Verified: a validating constructor is only expressible via a helper function plus a throwaway
  field, and the compiler accepts a constructor declaring an error set it is structurally incapable of
  producing, forcing every caller to `try` forever. Also noted along the way: `mut` on a constructor
  parameter is accepted and completely inert, since there are no statements to assign in - a feature that
  exists only because the `param-list` grammar is shared with functions.

- **Reversal: a constructor-declaring type is now buildable by struct literal too (C6/C6a), and `:=`
  accepts a constructor call (D15).** The direct consequence of the decision above. Having settled that
  the two construction forms are worth keeping apart, the old prohibition - "once a struct type declares
  a constructor, the plain positional literal is no longer valid for it" - stopped making sense: if the
  point of two forms is that a literal is *visibly infallible at the use site*, then withholding it from
  exactly the types that have constructors withholds it precisely where the distinction is informative.
  The literal now assembles the fields directly, supplying every one of them, including any the
  constructor would have computed; the constructor does not run.
  **Two cases genuinely cannot work, and both were found by testing rather than by reasoning.** A field
  whose declared type carries an explicit `&name` scope tag names one of the *constructor's own
  parameters*, and a literal supplies field values, not constructor arguments - so there is nothing for
  the tag to name. That covers both shapes that can produce such a field: an explicitly `&name`-marked
  field, and a D14a run-time-sized field, whose tag is mandatory. Before this was checked the first
  **crashed the compiler** (`ERROR: bug found`) and the second produced a garbled diagnostic - one
  "type doesn't match" per array element - so C6a replaces two bad failure modes with one accurate
  message. A **bare** `&` field is deliberately unaffected: it denotes the container's own scope, which a
  literal establishes as readily as a call does.
  **What did not need a special case, contrary to the initial worry.** A destructor-bearing type built by
  literal was expected to escape registration, since O16 says registration happens at the constructor
  call. It does not: registration actually rides on the value-to-reference promotion, and C11 makes every
  destructor-declaring type reference-only, so every instance goes through one however it was built.
  Verified by running both forms and counting destructor calls. Worth recording because the O16 wording
  ("at the point its constructor call completes") describes the intent but not the mechanism.
  **`:=` and constructor calls.** D15 required a literal initializer, so `p := Point(1, 2)` was rejected
  while `p := Point{1, 2}` was fine. The rule's actual purpose is that the declared type be evident at
  the declaration, which a constructor call satisfies exactly as well - it names the type right there.
  Now admitted, via an `isCtorCall` flag set where a call's target is the struct type its own `ctorFunc`
  points back at (which also covers a monomorphized constructor, since an instantiation's constructor
  points at the instantiation). An ordinary call (`x := f()`) is still rejected, unchanged.
  `make verify`: 96/13/12.

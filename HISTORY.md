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
  entries below):** choice types had never had any way to construct/reference a value at all, and calling
  through a function-*valued* parameter/variable segfaulted at runtime. Neither was caused by the parser
  rewrite (confirmed: the first was never exercised by any test in the project's history, and the second
  is a codegen bug in a code path the rewrite never touched) - both were just newly discovered by it.
- **Choice values: `Type.WORD`, communicating a fixed set and a selection from it - deliberately not a
  C-enum-style number.** Choice types were declarable from the start but had no way to construct or read a
  value at all until now - completely inert, the same gap struct literals had before they existed.
  `Direction.NORTH` is parsed the same type-name-aware way struct literals are (see the parser-rewrite
  entry above): the parser commits to a choice-value read only when the identifier before the dot is a
  *local* (never alias-qualified) known type, so it's never confused with a real cross-module reference
  like `sh.SomeType{...}` or an ordinary `localVar.field` member access. Semantically a choice value is just
  its declared ordinal (`OperandChoiceLiteral`, the same representation an error word already used), but
  deliberately not treated as a number anywhere: `TypeIsNumeric`/`TypeIsInt` (which gate every
  arithmetic/ordering/bitwise operator) don't include `BASETYPE_CHOICE` (then `BASETYPE_VOCAB`), so `<`, `+`, `&`, etc. are already
  rejected with the ordinary "operand must be a number" error, no choice-specific restriction needed.
  Equality/inequality (`==`/`!=`, unrestricted by type) and `match`/`case` (structural `cgDeepEq`,
  type-agnostic) already worked generically for any type, so those needed no new code at all - constructing
  the value was the entire gap. This is a deliberate, narrower design than a C enum: a choice type
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
  this specific boundary could be lifted too: a struct/array literal's own type name, and a choice value,
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
  analysis actually runs). `firstIdenIsLocalKnownType` (choice values) needed no logic change at all, since a
  choice value is never alias-qualified in the first place by design - only its one call into the now-
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
  own grammar - not `struct`, `choice`, `func`, or a `NAME`), so `parseRetType` (now completely bare,
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
  (`func f() ? error { err }`, mirroring how struct/choice bodies can be anonymous type-expr shapes,
  T2/T3) - rejected on inspection: error type identity is by declared name (T27), so two functions
  each writing their own anonymous shape would get two distinct, non-interoperable types, unable to
  propagate to each other under either signature - the opposite of reusable, and actively worse than
  useless (an anonymous struct/choice shape is merely inert; an anonymous error type would be a trap).
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
  strictly better than introducing a new word: zero grammar-choiceulary growth, no possible collision
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

- **T6 revised: a numeric literal adapts by *representability*, not by direction - which is what finally
  made `byte` reachable by a literal at all.** Found by probe rather than by design work: while measuring
  D13's zero-fill matrix, a throwaway test buffer needed `b[0] = 1` and that was a type error, as were
  `x byte = 1` and `assert x == 1`. The widening rule above is exactly why - `byte` is the *narrowest*
  integer type, so nothing widens into it, and an integer literal is `int32`. `byte` was therefore writable
  only through an explicit `byte(1)` or a character literal (which `OperandCharLiteral` already types
  `byte`), which is why `io.olang`'s `FormatInt` writes `byte(v % 10) + '0'`. This is the same class of
  unreachability the widening rule was itself introduced to fix for `int64`/`float64` - it just fixed the
  top of the numeric lattice and left the bottom.
  **The user proposed typing small integer literals `byte` in the tokenizer and widening them up from
  there. Rejected for two concrete reasons, both of which it fails rather than merely complicates:**
  (1) `:=` infers a literal's own type, so `i := 0` would make every counter a `byte` - `for i := 0; i < n;
  i++` against an `int32` `n` would stop compiling, and a `byte` counter silently wraps at 256 where it
  did. (2) A literal-literal binary operation would become `byte` arithmetic: `200 + 100` wraps to 44 at
  runtime rather than being 300, silently and correctly-typed. Both come from the same root - defaulting
  *low* makes the default type wrong in every context that doesn't immediately constrain it.
  **What was implemented instead keeps the default at `int32` and changes the condition, not the
  direction:** a numeric literal adapts to whatever numeric type it is used against provided the value
  *written* is representable there - an integer literal into any integer type whose range contains it
  (`byte` unsigned, 0-255) or either float type, a float literal only into a float type. Representability
  was always the real safety condition; "widening" was a proxy for it that happened to be conservative in
  one direction and, in the `byte` case, wrong. `numericLiteralCanWiden(from, to)` became
  `numericLiteralFits(lit, to)`, taking the operand so it can consult the value it already carries - the
  same one-predicate-plus-one-call-site shape the user asked for when this code was first rebuilt, just
  reading one more field.
  **Three things fell out that were not the point but are part of the same rule:** (1) adaptation now runs
  *out* of `byte` too, so `n int32 = 'a'` works where it previously did not - the old rule never widened
  `byte` into `int32` either. (2) When *both* operands of a same-type-requiring operator are literals of
  differing numeric types (`'a' + 1`, `1 + 2.5`), the narrower adapts to the wider by an explicit rank
  (`byte` < `int32` < `int64` < `float32` < `float64`) rather than the pair being rejected; adapting the
  wider one down instead would have reintroduced exactly the `200 + 100` wrap that ruled out the
  tokenizer approach. (3) **T6a, a silent-truncation bug closed on the way:** an integer literal was tagged
  `int32` regardless of its value, so `x int32 = 5000000000` matched *exactly*, never reached T6 at all,
  and truncated at codegen. A literal's own type now follows its value - `int32` when it fits one, `int64`
  otherwise - which both fixes that and leaves `:=` inference unchanged for every literal that fits an
  `int32`, i.e. all of them in practice.
  A dedicated diagnostic replaced the generic mismatch for this case: `x byte = 256` said only "this
  value's type doesn't match the target's declared type", which names the least informative half of the
  problem. It now says the value isn't representable, gives `byte`'s range, and points at `byte(x)` for a
  deliberate lossy conversion.
  **Confirmed:** `byte` locals, array elements, arguments and comparisons all accept plain literals;
  `byte` values adapt out into `int32`; `'a' + 1`, `200 + 100` and `2.5 + 1` all evaluate correctly;
  `x byte = 256`, `x byte = -1`, `x int32 = 5000000000`, `x byte = 1.0` and `x int32 = 1.5` are all
  rejected with the new message; `n := 5000000000` infers `int64`. `make verify` passes at 115 tests
  (up from 111), 13 cross-module, with no regressions.

- **Per-level reference markers (T24 generalized), and T8a: arrays are rectangular and storage-agnostic.**
  Two changes that arrived together, the second correcting the premise of the first.
  **The grammar change.** `parseTypeRef` had exactly two marker slots - one before the array suffixes
  (element position) and one after (whole type) - however many suffixes were written, so no interior level
  could be marked: `int32[]&[]&` and `int32[]&[3]` did not parse at all. `struct type` was already fully
  recursive (`arrElem` is a `struct type*`, each level carrying its own `arrMalloc`/`structMAlloc`/
  `scopeParam`), so the restriction lived entirely in the parser. A marker now binds to whatever is written
  immediately to its left: the head marker to the element type, each suffix's own marker to the level that
  suffix introduces, consumed by `parseArrSfx` itself. `applyArraySuffixes` already walked innermost-first
  and needed only to apply each suffix's marker as it wrapped.
  **The binding was wrong on the first attempt, and the user caught it.** Pairing each suffix's marker with
  its own level reinterprets `T[a][b]&` - the trailing marker had meant "reference to the whole type" and
  came to mean "the innermost level is a reference", moving the whole-type marker to the first suffix
  (`T[a]&[b]`). The user rejected that outright: *"Type[][]& should still be a reference to the entire
  type."* Correct, and the fix is a cleaner rule than the one it replaced: a type with `k` suffixes has
  `k+1` marker positions (after the element name, then after each suffix) and `k+1` levels (the element,
  then the innermost array level out to the outermost), and **the i-th position binds to the i-th level
  counting from the inside out**. The head marker therefore always marks the element and the last position
  always marks the whole type - which is exactly what the two spellings the language already had mean, so
  nothing that parsed before this change means anything different now. Since suffixes are written
  outermost-first while levels are marked inside-out, suffix markers pair with suffixes in reverse
  (`applyArraySuffixes` takes the marker for the level it builds from suffix `len-1-i`). `int32[][]&` is one
  reference to the whole 2-D array; `int32[]&[]` is a 2-D array whose rows are references. The three
  shared.olang sites migrated under the wrong rule went back to their original spellings unchanged.
  The `Point&s&a` rejection survives unchanged and generalizes: every marker is now consumed
  by the level it binds to, so any marker still sitting at the type-ref level is a second one on a level that
  already has one - which is exactly what DOUBLE_REFERENCE_MARKER means. NAMED_SCOPE_ON_ELEMENT generalizes
  the same way: only the outermost level may carry a scope name (the last marker position, or the head
  marker with no suffixes), every other being nested inside a container whose scope it inherits.
  **The premise was wrong, and the user corrected it.** I had justified the feature with jagged arrays and
  built an array-literal element type to construct them (`int32[]&[r0, r1]`). The user rejected the whole
  idea: *"jagged arrays as arrays with different number of elements in a dimension, do not exist and should
  not be supported"*, and, more fundamentally, *"the user need not be concerned with whether arrays are
  dynamic or static... whenever we interact with arrays it should be storage agnostic... they must still
  obey static array semantics and behaviour and just be represented differently internally."* That is a
  statement about the whole array model, not this feature: a runtime length is a representation, not a
  different kind of array.
  **T8a is what that principle cashes out to:** every dimension of an array type must have the same length
  kind - all compile-time (`T[2][3]`) or all runtime (`T[][]`) - and a mixed type (`T[3][]`, `T[][3]`) is a
  compile-time error, because a mixed type is *precisely* one whose rows have lengths decided independently
  of the array holding them. Reference markers stay orthogonal: `int32[2][3]&` allocates its rows separately
  and every row still has exactly 3 elements. T8a also closes the jagged construction path for free - a
  literal is always compile-time-length (E20), so a runtime-length element type makes the composed type
  mixed, and `int32[]&[r0, r1]` is rejected while `int32[3]&[r0, r1]` (an array of references to fixed rows)
  stays legal and is the reason to keep the literal extension at all.
  **Two things T8a broke that were already broken, and had to be fixed for the rule to be true rather than
  aspirational:** (1) the `x T[] = <literal>` length inference stopped at the outermost dimension, so
  `m int32[][] = int32[[1,2],[3,4]]` produced `int32[2][]` - now not a legal type at all - and codegen read
  the literal's inline rows back as `{ i64, ptr }` descriptors, segfaulting on the first element access.
  `inferArrayLenFromInit` now recurses. (2) E12's compile-time-length -> runtime-length promotion compared
  element types with `TypeIsSame`, so it only ever fired at the outermost dimension and a nested literal
  could not reach an `int32[][]` target at all. `arrayPromotesToRuntimeLength` recurses, and
  `cgPromoteFixedToRuntimeLength` takes the target type so it can promote each row and store the resulting
  descriptor, sizing this level's buffer by the target's element size rather than the source's.
  **A debugging note worth keeping, because it cost real time:** the segfault above was diagnosed twice, and
  the first diagnosis was wrong - the `.ll` and `.o` files being read were **stale**. `-t` skips a module
  whose object is newer than its source, and rebuilding the *compiler* does not invalidate anything: an
  object built by a previous compiler looks current. Deleting the scratch `build/` directory made three
  "failures" and one "segfault" disappear at once. Staleness is computed from source mtimes only; the
  compiler's own mtime is not an input, and arguably should be.
  **Confirmed:** `int32[3][]` and `int32[][3]` rejected, `int32[2][3]` and `int32[][]` accepted;
  `int32[]&[]&`, `int32[3]&[2]`, `int32[2]&[3]` all parse; a nested literal reaching a fully runtime-length
  local and a runtime-length reference parameter, values correct at every element; `int32[3]&[r0, r1]`
  building separately-allocated rows; `int32[]&[r0, r1]` rejected by T8a. `make verify` passes at 119 tests
  (up from 115), 13 cross-module, with no regressions.

- **Element reference-shapedness is part of an array's type identity (T27 tightened).** Found by the user
  asking, of a call result flowing into a declared array type, *"do we then automatically check that the
  sizes match? otherwise how is this not just misleading?"* The sizes were checked - at every dimension,
  which the probe confirmed - but the probe also showed `int32[2]&[3]` being accepted into a declared
  `int32[2][3]`, and `Cell&[2]` into `Cell[2]`, both silently producing wrong values. T27 deliberately
  leaves reference-shapedness out of type identity, which is correct at the level being compared: a value
  and a reference to it are the same type, and E12/O6's promotion converts between the representations
  wherever a value flows into a reference-shaped slot. But `TypeIsSame` recursed into element types with the
  same leniency, and promotion only ever applies to the **outermost** level - there is no element-by-element
  conversion anywhere in codegen. So an array of two pointers type-checked against an array of two inline
  values, with matching lengths and matching element names, and the pointers were read straight back as
  field data. `typeIsSameIncludingRefShape` now compares `structMAlloc` alongside `TypeIsSame` and recurses,
  so the leniency holds exactly at the level asked about and nowhere below it. `OperandFitsType` gained a
  dedicated diagnostic for the case: it previously reported ARRAY_SIZE_MISMATCH, which was actively wrong
  (the lengths agree - that is the whole trap), and the generic mismatch names two types that print almost
  identically. **Confirmed:** both directions now rejected with the new message, the legitimate outermost-
  level promotions (`int32[3]` into `int32[3]&`, `int32[3]` into `int32[]`) unaffected, and an array of
  references verified to hold the very instances passed in (`g[0] == a`). `make verify` passes at 121 tests
  (up from 120), 13 cross-module, with no regressions.
  **Revised immediately afterwards, on the user's push: "I dont think referenceness is outside of the type.
  it should very much be part of the type."** Correct, and a sharper diagnosis than the one above: the first
  fix kept T27's leniency at the outermost level and patched the recursion, which treats the symptom. The
  actual defect was that **identity and assignability were fused** - `TypeIsSame` ignoring the marker was
  doing the work of "a value may be promoted into a reference-shaped slot", which is an E12 rule with a real
  allocation behind it, not a statement about type equality. So T25a now says reference-shapedness is part
  of identity, full stop, and E12 gained an explicit clause for the conversions. Both directions are
  permitted at the outermost level and only there: value into reference is promotion, reference into value
  is a copy out. **The copy-out direction had to be checked rather than assumed:** an early version of this
  change rejected it, and stashing the working tree to run the old compiler showed it had always been
  accepted *and always produced correct values* - so rejecting it would have removed a working capability,
  and worse, the one D9a explicitly names as how a callee takes its own copy of an array parameter ("declare
  a local and assign, where the copy is written down"). It stays.
  **One exception, and it is principled rather than a carve-out:** identity tracks representation, not
  annotation, and for a runtime-length array the marker changes no representation - T11 makes `byte[]` and
  `byte[]&` both `{ len, ptr }`, so the marker there contributes only a scope name, which T25 already keeps
  out of identity. Without that exception `io.olang`'s own `write(fd, data, ...)` broke, passing a `byte[]&`
  to an `extern func`'s `byte[]` parameter. `make verify` passes at 122 tests (up from 121), 13
  cross-module, with no regressions.

- **T11 removed: an array's semantics follow its marker, never its length kind.** The user's instruction was
  flat - *"now let's fix T11 so arrays are storage agnostic. it changes the type, not the storage. type, not
  storage."* T11 had said a runtime-length array is reference-shaped unconditionally, marker or not, which
  made `&` mean "make this a reference" on a `T[N]` and merely "tag a scope" on a `T[]`, and made a type's
  behaviour depend on where its length came from. Now the marker decides, identically for both: `T[N]` and
  `T[]` are values (`==` element-wise, assignment copies the elements into storage of the target's own),
  `T[N]&` and `T[]&` are references (`==` identity, assignment repoints). When a length becomes known is a
  difference in representation - `T[N]` inline, `T[]` a length paired with its own storage - and that is not
  a difference in behaviour.
  **Probing the current behaviour first is what showed how bad the old rule had got.** Two measurements,
  both surprising: assignment to an unmarked `T[]` *aliased* (reference semantics) while `==` on the same
  type compared *contents* (value semantics), so `b = a` produced two names for one buffer which then
  compared equal for the wrong reason entirely; and `==` on a *marked* `T[]&` also compared contents, where
  E10 has always promised identity for a reference. `cgDeepEq` never consulted `structMAlloc` on either
  array branch. So this was not only a design cleanup - the implementation had gone incoherent in both
  directions and nothing in the suite noticed, because no test compared two distinct runtime-length arrays.
  **The blast radius was six errors, all one shape, and one character each to fix.** An unmarked
  runtime-length local passed to a `T[]&` parameter is now a value being promoted, which E12a rejects; the
  fix is to write the `&` the parameter already asked for (`buf mut byte[sz]&`). D9a had required the marker
  on the parameter all along, so nothing new had to be learned - which is the rule working, not a migration
  cost. Three semantic clauses went away with it: TypeIsSame's runtime-length exception to T25a, E12a's
  two-forms-of-already-a-reference test, and OperandFitsType's `|| arrMalloc` scope-check clause.
  **Codegen needed two things.** `cgDeepEq` now dispatches on the marker for both array shapes: a marked
  compile-time-length array falls through to the pointer leaf, and a marked runtime-length one - whose value
  is a `{ i64, ptr }` descriptor that no `icmp` accepts - compares its buffer pointer, which is the right
  notion of identity for it. And `cgStoreInto` gained `cgCopyRuntimeLengthArray`: an unmarked runtime-length
  target now gets its own arena-allocated buffer and a real element loop, since the length is a runtime
  value and `cgPromoteFixedToRuntimeLength`'s unrolled copy does not apply. Representation is unchanged -
  both marked and unmarked `T[]` stay `{ i64, ptr }` - so no ABI churn and no extra indirection.
  **Confirmed:** all four combinations of marker x length kind behave as the rule says, checked directly;
  `io.olang`'s `extern func` calls and `FormatInt` still work. `make verify` passes at 125 tests (up from
  122), 13 cross-module, with no regressions.

- **Runtime-length array assignment reuses the buffer it already has, and the last T11 remnant went with
  it.** The copy loop above allocated on every unmarked runtime-length assignment, including when the
  lengths already matched - flagged when it landed, and the user asked for it directly. `cgStoreInto` gained
  a `dstHoldsLiveValue` flag, true only at an assignment to an existing lvalue and false at every
  initialization (a var-decl slot, a field or element being built, a global's initializer), since reading a
  length out of undefined storage to decide whether to reuse it would be reading garbage. When the flag is
  set and the target is a value, the copy branches at run time: same length, copy into the buffer already
  there; different length, allocate. Reuse is deliberately unobservable from the language - it removes an
  allocation, never changes a meaning - so the tests pin the semantics (the copy is real and complete, a
  longer source grows into fresh storage, self-assignment is safe) and the reuse itself is confirmed in the
  emitted IR rather than asserted in olang.
  **Writing the reuse test is what exposed the remaining bug.** The first version observed reuse by taking
  a `int32[]&` alias of the target beforehand and checking that a later write showed through it - and it
  passed, which it should not have: promoting a value into a reference is supposed to allocate. It was
  `typeNeedsMallocPromotion` ending in `return !dstT.arrMalloc`, excluding runtime-length arrays from
  promotion entirely - correct under T11, where a `T[]` was already a pointer and there was nothing to
  promote, and stale the moment T11 went. So `r mut int32[]& = v` left `r` aliasing `v`'s own buffer.
  Fixed by widening the copy branch to fire for every combination except reference-to-reference: value into
  value copies (value semantics), value into reference copies into fresh storage (E12 promotion), reference
  into value copies out (E12's other direction), and only reference into reference stores the descriptor,
  which is the repoint S4a describes. The same four every other type has.
  **Confirmed:** all four combinations checked directly, plus same-length reuse, growth, and
  self-assignment. `make verify` passes at 130 tests (up from 125), 13 cross-module, with no regressions.

- **E12c: taking a reference to an array borrows it; an array is never copied implicitly.** The entry above
  had value-into-reference allocating fresh storage and copying, and I defended it on the grounds that the
  copy is what makes a scope-local array safe to assign into a longer-lived reference. The user rejected the
  premise outright: *"never copy arrays silently... if I assign an array that is created in the scope to a
  ref that outlives this scope, then that is the problem, not the 'we didn't copy'."* Exactly right, and the
  earlier behaviour was worse than inefficient - it made an unsafe program **compile**, by quietly
  substituting a copy for the reference the programmer asked for. `func keep(dst mut int32[]&s)` with
  `dst = local` used to compile and silently copy; it is now the O10d lifetime error it always should have
  been.
  So a reference to an array lvalue is now a borrow: the descriptor is stored as-is, the reference names the
  very elements the value has, and writes show through in both directions. The borrow is a lifetime claim
  and is checked against the storage's own scope, derived structurally by `lvalueStorageScope` - `own` for a
  local or parameter, the enclosing reference's scope for a field or element reached through one (exact,
  because O5 makes a nested bare `&` inherit its container's scope), unbounded for a global. Only a
  temporary, which has no storage to borrow, is still allocated into the target's scope, and that is
  construction rather than copying. Codegen needed `srcIsLvalue` threaded into `cgStoreInto` alongside
  `dstHoldsLiveValue`, since a type pair alone cannot tell a borrowable lvalue from a fresh temporary.
  **The test suite caught the reversal itself:** the only failure was the test written one commit earlier
  asserting "value into reference allocates fresh storage rather than aliasing the value", which encoded the
  overturned design and is now replaced by its opposite.
  **Two implicit array copies deliberately survive, and both are written down at the point they happen:**
  value into value, which is what a value type means (`b = a` between two `T[]` values), and reference into
  value, which is D9a's own advice for a callee wanting its own copy. The user flagged that "never" was
  possibly too strong - *"there might be some cases"* - and these are the two; whether either should instead
  require an explicit copy function is open. `make verify` passes at 131 tests (up from 130), 13
  cross-module, with no regressions.

- **E12c generalized from arrays to every type, closing the same lifetime hole for structs.** The user
  signed off on the two surviving copies - *"value -> value and ref -> value as you laid them out are fine
  as copying mechanisms. they are quite explicit in what is happening and this rhymes well with structs
  which do the same. I hope they do at least, otherwise fix that too."* They did: both directions were
  already identical for a struct, confirmed by probe. The *third* direction was not. `r mut Point& = v`
  still copied where `r mut int32[]& = v` had just been made to borrow, so `&` meant "this instance" for one
  type and "a copy of it" for another - the exact split this whole sequence has been closing.
  Worse, the copy was hiding the same bug for structs that it had hidden for arrays: `func keep(dst mut
  P&s)` with `dst = local` compiled, silently substituting a copy for the reference asked for. Generalizing
  E12c - dropping the `BASETYPE_ARRAY` restriction on the borrow, and lifting codegen's borrow branch above
  `typeNeedsMallocPromotion`, which was claiming the struct case first - makes it the same lifetime error
  arrays now give. **The blast radius was zero**: all 131 existing tests passed unchanged, which is the
  strongest evidence available that the copy was never load-bearing, only hiding things.
  Destructors need no special handling: C11 makes a destructor-bearing type reference-only, so no value of
  one exists to borrow, and borrowing creates no new instance to register. `make verify` passes at 132 tests
  (up from 131), 13 cross-module, with no regressions.

- **E12a removed: a prohibition that had become the obstacle to the property it protected.** E12a rejected
  passing an lvalue to a `&` parameter, on the grounds that `&` would otherwise mean "the caller's own
  instance" at some call sites and "a copy of it" at others, and a `mut` reference parameter could write to
  a copy the caller never sees. Both were true *while promotion copied*. Once E12c made promotion of an
  lvalue a borrow, `&` names what the caller passed at every call site by construction - so the rule
  guaranteeing that property became the only thing standing in its way. Its cost was concrete and had been
  paid twice in this session: every array you wanted to pass anywhere had to be declared `&` at its
  declaration, `io.olang`'s own buffer included.
  `fill(buf)` now borrows, for a struct and for either array length kind, and the lifetime check rides along
  - a local borrowed into a parameter tagged to a longer-lived scope is the O10d error, checked against the
  parameter's tag *after* it is resolved through the call's own scope binding, which the argument loop
  already did.
  **Removing it exposed a hole it had been masking.** Since a `mut &` parameter writes through to whatever
  the caller passed, binding an **immutable** lvalue to one launders that immutability away. Nothing checked
  this - not for borrowed values, and not for already-reference arguments either, which E12a never covered:
  an immutable `p P&` parameter passed straight into a `mut P&` one let the callee write it, while writing
  `p.val = 9` in the passing function itself was correctly rejected. Confirmed against the pre-change
  compiler before touching anything. D9's two axes are only independent if both are enforced at the
  boundary; the new check (`paramType.structMAlloc && param.mut && OperandIsLvalue(arg) &&
  !OperandIsMutableLvalue(arg)`) is what makes that true, and a temporary is exempt because nothing else can
  observe it.
  **Two smaller things fell out.** The borrow lifetime check had to move into a shared
  `borrowLifetimeFits`, because a compile-time-length array reaching a runtime-length reference is admitted
  by `arrayPromotesToRuntimeLength` rather than by the value/reference clause, and that path is a borrow too
  - it was accepting `byte[24]` into `byte[]&` with no lifetime check at all. And `cgStoreInto`'s borrow
  branch had a latent bug from the commit that introduced it: it stored a fixed-length array's raw address
  as though it were a `{ i64, ptr }` descriptor. Both sites now go through `cgBorrowValue`, which
  materialises the statically-known length beside the pointer the array already has - E12's widening half,
  which copies nothing.
  **A gap closed itself.** D13 still rejects `a mut byte[64]&`, and that used to mean a fixed-size scratch
  buffer could not be passed anywhere: E12a rejected the unmarked form and D13 the marked one. Borrowing
  removed the pincer from the other side, so `buf mut byte[24]` - plain, unmarked, zero-filled - is now both
  declarable and passable, and `io.olang`'s test says so directly instead of sizing a statically-known
  length at run time. `make verify` passes at 135 tests (up from 132), 13 cross-module, with no
  regressions.

- **Slicing (E16a/E16b), and what it unblocked in `io.olang`.** The user's model was right and simple -
  *"you get a new reference with the same lifetime with the ptr adjusted and the length adjusted. since
  arrays don't move in memory as they don't grow there is no problem really"* - and the core of it took one
  new token (`:`, which maximal munch keeps clear of `:=`), one parser change (an index and a slice are
  indistinguishable until the colon is or isn't reached, so one function parses both), an `OperandSlice`,
  and a `cgSliceValue` of one GEP and two `insertvalue`s. The result type is a `T[]&` tagged to the scope
  the base's storage belongs to, reusing `lvalueStorageScope` from E12c - so a slice is just another borrow
  and every existing lifetime rule applied to it unchanged, verified by probe: slicing an own-scoped local
  into a longer-lived reference is rejected with O10d's own diagnostic, and nothing new was needed for it.
  **Three things the "no problem really" reading missed**, each found by writing the tests rather than by
  reasoning: (1) `lvalueStorageScope` bottomed out at `own` for *any* variable read, so slicing a
  `buf byte[]&s` parameter claimed own-scoped storage and `Read` would not compile - a reference-shaped
  operand's storage is wherever its own tag says, which is now the first thing that function checks. (2) A
  slice launders mutability: it is not an lvalue, so the `mut`-parameter check skipped it entirely and
  `writes(a[0:2])` on an immutable `a` compiled. `OperandIsMutableLvalue` gained a slice case and the call
  check moved to `OperandNamesExistingStorage`, which is "names storage the caller can see" rather than "is
  assignable" - the property that check actually cares about. (3) `s := a[1:3]` does not work, because D15
  admits only a literal or a constructor call; left alone, since the rule's rationale (the type is written
  at the declaration) is intact and relaxing it is a separate decision.
  **Bounds are checked (E16b), which E16's unchecked indexing is not.** The asymmetry is about blast radius:
  a bad index is one wrong access where it is written, while a bad slice manufactures a value that stays
  wrong for as long as it lives, so the failure surfaces arbitrarily far from the mistake - and the check is
  cheap exactly where a per-index check would not be, since a slice is taken once and read N times. The user
  asked whether this wanted error handling; it does not, and the precedent is the language's own: division
  by zero is not fallible either, and `ComputeChecked` in the test corpus validates its divisor and raises
  its own error. Making slicing fallible would put `try` on every slice including those that provably cannot
  fail, and make "this function can fail" depend on whether it slices - cascading through every caller. So
  the check is a backstop against a bug (the same hard-abort a failed `assert` performs, which never
  returns), and code whose bounds can legitimately be wrong validates them against `len` itself.
  Testing the abort in-suite is impossible by construction - it aborts the run rather than reporting - so
  the suite pins the in-range edges (`a[0:3]`, `a[3:3]`, `a[0:len(a)]`) and names the three failing shapes
  in a comment, the same treatment compile-error cases get.
  **`io.olang` is what this was for.** `Write` re-slices the unwritten tail and retries rather than
  reporting `PARTIAL` and giving up - the file's own comment used to say it could not, for want of a way to
  name the tail. `Read` exists at all, returning `buf[:n]`: a borrow of the front of the caller's buffer, so
  the length rides with the value instead of being a count the caller must remember to respect. It needed
  `buf` and the return type to share a scope variable (`func Read(fd int32, buf mut byte[]&s) byte[]&s`),
  which is what O3 is for - the returned slice points into the caller's buffer, so its lifetime is that
  buffer's, and saying so is what makes returning it legal under O13. Two smaller gaps closed on the way:
  `\0` is now a valid escape (every C interop path needs a NUL and no other syntax produced a zero byte),
  and `open`/`close` joined the extern declarations so the `Read` test could use a real descriptor. One
  limitation found and worked around rather than fixed: a `test` block cannot bind the result of a fallible
  call at all - `try f()` is an expression only where there is a signature to propagate through, and
  `try f() catch { }` is a statement that discards the value - so the `Read` assertion lives in a fallible
  helper the test calls. `make verify` passes at 140 tests (up from 135), 13 cross-module, with no
  regressions.

- **D15 admits a slice initializer.** *"s := a[1:3] should def work."* It does now. The rule was never
  about literals as such - it is "the type is written at the declaration, plainly visible to a reader",
  which is why a constructor call was already admitted alongside them. A slice satisfies it the same way:
  its type is the base's element type with a runtime length, and the base is right there in the expression.
  An ordinary call stays rejected for the reason it always was - `f`'s return type lives in another
  declaration entirely. The four copies of `!isLiteral && !isCtorCall` became one
  `OperandTypeIsWrittenHere`, which is what the rule had actually meant all along.
  The same message confirmed the omitted-bound semantics already shipped as intended (`[:n]` is `[0:n]`,
  `[n:]` is `[n:len]`) and asked for `try`/`catch` on slices - see the next entry.

- **E16c: `try a[lo:hi]` opts into an error instead of E16b's abort.** I had argued against this, and
  overstated the obstacle: *"why not normal try catch behaviour"* - and the normal behaviour was already
  most of the way there, because `s := try f()` binds a value today. What I had presented as a blocker (a
  `catch` cannot bind) only bites the *statement* form; the expression form was never blocked.
  So a tried slice is exactly the ordinary try expression, propagating the **bare error** (R16) - out of
  range is one fact with no further detail worth tracking, so no new error type was needed and
  `? error`/`catch error { }` composed with it unchanged. The semantic side is one branch in `buildTryExpr`
  synthesizing a one-item error list for `checkTrySuperset`, and codegen reuses `cgError`'s own
  encode-and-return, since propagating with no callee to decode from is all that is left of propagation.
  **Opt-in rather than universal**, which is the part of my earlier objection that survived: bounds the
  program itself produced (`a[:]`, a checked loop index) stay unchecked-at-the-type-level and put no error
  on the signature, while bounds from a parsed length are written with `try`. Making every slice fallible
  would make "this function can fail" depend on whether it slices.
  **One real bug found and one form declined.** `parseExprTry` consumed only a *primary*, so `try buf[2:n]`
  parsed as `try buf` with the slice attaching outside it - the try then saw a bare variable and rejected
  it. Both try parsers now take a postfix. Widening the *statement* parser the same way then segfaulted the
  compiler: `buildTryCatchStmnt` looked up `SNTX_EXPR_PRIMARY`, got NULL for the new node shape, and handed
  NULL to `buildExprFromSyntax`. Fixed, and the statement form is now rejected for a slice with its own
  message rather than accepted: it discards the value it guarded, which for a call is the entire point (C7)
  but for a slice leaves only the bounds check, so the slice would have to be written a second time to be
  used. Supporting it would have meant a second codegen path in `cgTryCatch` for a shape strictly worse than
  `if hi > len(a)`. `make verify` passes at 143 tests (up from 141), 13 cross-module, with no regressions.

- **M6a: capitalization decides a struct member's and an error word's visibility too.** The user's framing
  was *"caps should mean visibility for error sets and choices too... just like how a struct can have some of
  its members visible outside and some not"* - and the premise turned out to be false, which made the fix
  bigger than asked: **struct fields were not visibility-checked either**. A two-module probe confirmed it
  directly, reading `lib.Box.priv` and catching `lib.LibErr.private` from another module, both accepted. So
  "exported" was all-or-nothing at the type: an exported struct exposed every field, an exported error type
  every word. M6 had always said the rule "governs every kind of name"; it just never reached inside a
  declaration.
  Now it does, at three sites: `OperandMember` (which gained the referencing module as a parameter, NULL
  where no boundary question can arise - a destructor reading its own fields), the `error T.word` statement,
  and catch items. A private word deliberately does **not** make its type uncatchable - `catch Lib.Err` with
  no word still matches every word, including ones the catching module cannot name, so a caller can handle
  "some Err" without being told which exist.
  **The corpus needed five renames**, all cross-module fields that had been lowercase because nothing
  stopped them: `BaseThing.id` -> `.Id`, `BasePoint.x`/`.y` -> `.X`/`.Y`, and their four uses in
  runner.olang. Two things bit while adding tests, both my own doing: adding a second word to `BaseError` to
  demonstrate a private one broke a pre-existing test that caught `BaseError.BROKEN` by name (no longer full
  coverage), so the private word moved to its own `BaseQuiet` type; and a `secret` field needed a D8a default
  to keep the existing one-argument `BaseThing(9)` call sites working.
  The choice half needed M12 reversed first, done in the entry below. `make verify` passes at 143 tests,
  14 cross-module (up from 13), with no regressions.

- **M12 reversed: a choice value is alias-qualified like any other cross-module name.** The user asked why
  `lib.Dir.North` was not aliasable, and reading for the reason rather than restating the rule found there
  wasn't one - it was a leftover. `firstIdenIsLocalKnownType` committed to choice syntax only when the name's
  **first** identifier was a locally-known type, with an explicitly empty alias chain. That predated the
  chain-walking type lookup added later for struct/array literals (`wk.Base.BasePoint{...}` at any depth),
  and when that lookup landed the choice predicate was deliberately left alone on the grounds that a choice
  value "is never alias-qualified in the first place by design" - which had become circular: it was by
  design because the parser could not, and it stayed because it was by design.
  The ambiguity the restriction avoided is with an ordinary `localVar.field.sub` member access. But that is
  the *same* ambiguity the local case always had - `Direction.NORTH` versus a variable named `Direction`
  with a field `NORTH` - and it is answered the same way at any depth: ask whether everything before the
  trailing word names a known type. A wrong guess costs nothing, since the parser is only deciding whether
  to commit to choice syntax and `buildChoiceValueExpr` re-checks everything for real, privacy included.
  **What it cost was not theoretical**: measured before changing anything, a foreign module could hold a
  `Dir`, receive one from a function and compare two of them, but could not name a single word - so it could
  not construct one, compare against a specific value, or `match` on one. An exported choice type was inert
  across the boundary. `firstIdenIsLocalKnownType` became `trailingWordFollowsKnownType` (the same loop
  `nameIsKnownType` already used, stopping one identifier earlier), and `buildChoiceValueExpr` gained the
  alias-chain resolution every other cross-module name already had, plus M6/M6a on both the type and the
  word. `make verify` passes at 143 tests, 16 cross-module (up from 14), with no regressions.

- **G3a: a function type is never generic in its own right.** Found by asking what a standard library would
  need rather than by hitting it: every `sort`, `find`, `map` and `filter` has the same shape - generic over
  the element, parameterised by a callback - and none of them were writable. `resolveFuncSig` applies G3
  ("generic exactly when a type variable appears in its signature") to a function **type** as well as a
  function **declaration**, so a parameter typed `less func(a <T>, b <T>) bool` carried a type-parameter
  list of its own, and calling it looked like calling a generic that needed inference from its arguments.
  A generic could therefore *accept* a callback and never *call* it - which the probes separated cleanly:
  passing compiled, calling did not; a concrete callback inside a generic body compiled; a generic callback
  inside a plain body compiled. Only the combination failed.
  The fix is one line at the `SNTX_FUNC_TYPE` site, clearing the list: a `<T>` in a callback parameter's
  type names the *enclosing* declaration's variable and introduces nothing of its own, because olang has no
  higher-rank polymorphism - a parameter cannot demand "any generic function". **Inference needed no change
  at all**: `TypeUnify` already walked a function type's own parameters, so `T` is inferable even when it
  appears *only* inside the callback (`func CallIt(cmp func(a <T>, b <T>) bool)`), which the tests now pin
  alongside a real generic insertion sort and a `FindBy`. `make verify` passes at 144 tests (up from 143),
  13 cross-module, with no regressions.

- **G16: a generic used before its declaration silently returned a zero value.** Found by chasing the
  user's question - *"if a library function declares a template, don't we have to recompile the lib
  function every time to achieve monomorphism?"* - and checking the answer against the compiler rather than
  the docs. The architecture was right and already documented: a library's own object contains **no**
  instantiations (confirmed by `nm`: only the non-generic `glib_Plain`), and the consumer emits
  `@glib_Id$int32` into its own object as `linkonce_odr`. But the emitted body was
  `ret i32 zeroinitializer` - a generic identity function returning 0.
  `instantiateFunc` copies the generic's var wholesale (`*spec = *generic`), body syntax included, and
  `bodySyntax` was being recorded in the pass that *checks* bodies. So an instantiation created before the
  generic's own declaration was reached copied a NULL, `checkInstantiationBody` returned early on it, and
  codegen emitted a function with parameters set up and nothing else. Silent - no diagnostic anywhere.
  **The bug is ordering, not cross-module**, which the probe that isolated it showed: a generic declared
  *after* its use in the **same file** fails identically, and the same generic declared before it works.
  Cross-module is just the case where the ordering is not under the author's control - and it meant every
  generic a library exported was broken, which is most of what a standard library is. Moved to the
  signature pass, which runs for every module before any body is checked, so both orderings are covered.
  Regression tests pin all three shapes: used-before-declared in one file, declared-before-used, and
  instantiated across a module boundary from `worker.olang` into `runner.olang`. `make verify` passes at
  145 tests (up from 144), 17 cross-module (up from 16), with no regressions.

- **`spawn { ... }`: structured concurrency, with the block as the join (P1-P4).** Built after the design
  conversation concluded that arenas make Rust-style borrowing redundant *memory-wise* - nothing is freed
  until a scope closes, so a stale reference reads old data rather than dangling - leaving data races as the
  only thing exclusivity would still buy, and threads as the only reason to want it.
  **Two design choices carry the whole feature, and the second was forced by a failing test.** Each task is
  a **call**, not a body: olang has no closures, so an argument list is the only way to state what a task
  may reach - and stating it explicitly is what makes the race rule decidable by reading one block instead
  of analysing a function the way a general borrow checker must. I had argued for a block form on the
  grounds that it makes captures visible; building it showed the call form makes them *more* visible, for
  the same reason. The block survives as the **grouping**, with each statement inside it a task.
  And the **join is the block, not the function**. The first implementation joined at every function exit,
  reusing the existing `cgCloseOwnScope` sites - simple, and wrong: the spawner keeps running after the
  spawn and can read a task's results before the join, which is exactly the race the whole design exists to
  prevent. The first end-to-end test failed on precisely that, asserting on a counter two tasks were still
  incrementing. Moving the join into the block fixed it and removed machinery rather than adding it: no
  per-function handle list, no hook in scope-close, and the "no spawn inside a loop" restriction (one
  handle slot per site would have lost every iteration but the last) became unnecessary, since a spawn
  block inside a loop now joins within its own iteration.
  **The lifetime half needed no new rule at all**, which was the bet going in: a task's arguments are
  ordinary E12c borrows of the spawner's storage, and the spawner provably outlives every task because it
  cannot leave the block until they finish - so §8's containment check applies unchanged. **The race half is
  one rule (P3)**: within a block, a variable handed to a task through a `mut &` parameter may go to no
  other task, while a read-only `&` or a copied value may go to any number. Rust's exclusivity applied at
  exactly one boundary, where the aliasing set is enumerable by reading the source.
  P4 rejects a fallible task: an error raised on another thread has nowhere to propagate, since the join
  carries no value and the spawner has left the call site.
  **Runtime**: 1:1 OS threads (`pthread_create`/`pthread_join`), a per-task trampoline unpacking an env
  struct alloca'd in the spawner's frame - valid for the task's whole life precisely because of the join -
  and the chunk free-list made `thread_local`, which is correct rather than merely faster, since a scope
  belongs to one thread and so do the chunks it takes and returns. Two build slips worth noting: the target
  name is already `@`-prefixed by `mangleGlobal`, and the first version emitted `@@sp_bump`; and
  `-lpthread` joined the link line. `make verify` passes at 148 tests (up from 145), 13 cross-module, with
  no regressions.

- **P5 (`shared`) and `chan.olang`: channels, and the one exemption they forced.** Writing the channel
  immediately hit the wall the design had built: **P3 forbids exactly what a channel is**. A channel handed
  to a producer and a consumer is one variable reaching two tasks through `mut &`, which is the rule's
  central prohibition - and correctly so for every type that does not synchronise itself. Forbidding it
  outright would leave tasks with no way to communicate at all, which is not a concurrency design.
  So P5: a struct type may be declared `shared`, exempting it from P3. The declaration asserts the type
  synchronises access to its own state and the compiler takes it at its word - Rust's `unsafe impl Sync`,
  spelled as a marker on the declaration. It is deliberately the *only* construct through which a data race
  can enter the language, which is why it is written on the type rather than inferred: reading a type tells
  you whether sharing it is safe. Confirmed load-bearing by deleting it, which turns the producer/consumer
  test straight back into a P3 error.
  **The channel itself is ordinary olang**, which was the claim `extern func` was built to support and is
  now tested on the type that most obviously wants to be a builtin: a ring buffer in a D14a run-time-sized
  field, `head`/`tail`/`count` cursors, and pthread mutex/condvar through `extern func`. X2's extern
  choiceulary is numeric primitives and arrays of them, so a `pthread_mutex_t` is a `byte[40]` and a
  `pthread_cond_t` a `byte[48]`, which X3 marshals to precisely the pointer pthread expects. **Those sizes
  are glibc/x86-64 and a wrong one is silent memory corruption** - the honest cost of having no way to name
  a foreign struct, and the strongest argument so far for extern gaining one.
  The test runs a producer and a consumer as separate tasks over a capacity-4 channel carrying 100 values,
  so the producer genuinely blocks and the consumer genuinely wakes it; the sum coming out right is the
  condvar handshake working. `make verify` passes at 148 shared tests plus a new chan.olang suite, 13
  cross-module, with no regressions.

- **Methods (M19), and the nominal types (T29) they turned out to need.** The user's rule was precise:
  `x.f(args)` works when `f` is declared in the same module as `x`'s type and takes that type first. That is
  UFCS with a coherence rule built in, and it needs **no new declaration syntax at all** - a method is an
  ordinary function, and `x.f(a)` desugars to `f(x, a)`. Constructors and destructors were untouched, which
  was the requirement: the type is already a namespace with two members invoked *by the language*, and
  methods are members invoked *by you*, so they are declared like the ordinary functions they are.
  **"Does this work for non-ref structs?" was the right question and it found a codegen bug** - see the
  entry above: a reference argument reaching a by-value parameter emitted invalid IR, because
  `cgBoundaryValue` had never implemented E12's copy-out. All four receiver shapes work now, and the method
  call needs no receiver rules of its own precisely because it is the first argument.
  **Extending it to "any type declared in the module" exposed a bigger gap.** `type Meters int32` was a
  *transparent alias*: `double(n)` with a plain `int32` compiled against a `Meters` parameter, proving the
  two were one type. A name with no identity has nothing to attach a method to, so T29 makes a declared type
  nominal even over a primitive - which is independently what makes `type Meters` / `type Feet` worth
  writing. Confined to `TypeIsSame`'s vanilla branch after a broader version broke every generic callback
  (struct/choice/error already compare by owner+name; func/array/typevar have their own rules). The corpus
  had **zero** non-struct named types, so it cost nothing to adopt. Two follow-ons fell out: `Meters(x)` had
  to become a legal conversion (nominality is a prison you could leave but not enter, since `int32(m)`
  already worked), and `cgNumericConvert` had to emit *nothing* when the representations match, rather than
  a same-width `trunc` LLVM rejects.
  One slip worth recording: the first implementation looked up the receiver using `nameTok`, which is the
  **last** identifier of a call's name - so it searched for a local named `Add` in `m.Add(n)` and silently
  never fired. `make verify` passes at 151 tests (up from 149), 13 cross-module, with no regressions.
- **O3b: one scope argument, and the `own` keyword deleted.** `&a&b` meant three different things in three
  positions - an illegal double reference inside a type (T24), a scope-argument list at a call, a
  scope-declaration list after a name - told apart only by what followed. The user objected to the spelling
  on exactly those grounds, and the fix that survived scrutiny was not a new separator but removing the
  list: **at most one** supplied or declared scope, everywhere.
  The argument for why that costs little: an already-reference-shaped argument *determines* the scope
  variable its parameter names (O17), so a signature needing two undetermined scopes is one that should be
  taking a reference. Binding an inline construction to a local first is what makes it reference-shaped,
  which is the whole rewrite - `DualWrapped&a&own(WrappedPoint&a(...), WrappedPoint(...))` became three
  ordinary lines and a plain `DualWrapped(l, r)` with no scope arguments at all. Every multi-scope site in
  the corpus went the same way, and the two-scope obligation tests came out better: `obligationRelate&t&s(n
  int32)` taking two ints and declaring both scopes by fallback became `obligationRelate(seed Point&t)
  Point&s`, where each scope is declared by appearing in a type, which is what O3 says should happen.
  The user's summary of why this is not a loss is the right one: a function wanting two scope variables
  that nothing determines is just a bad function.
  Alternatives considered and dropped: a comma list (`&a,own`) reads as `f&a` followed by `,own(n)`; and
  reusing the generic brackets (`f<&a, &own>`) both collides with real comparison syntax - `a < b > (c)`
  parses today - and muddies `<>` by putting non-type arguments in the type-argument list.
- **O4a: a bare `&` on a parameter is the caller's scope, not `own` - which turned out to be the root
  cause of O24 rather than a separate idea.** The user's framing was that a parameter is categorically
  different from a local: it *placeholds* something from the caller rather than declaring storage, so
  `b mut Type&` on a parameter "obviously never means declare a variable on own". That is right, and O4
  said the opposite - a bare marker means own, uniformly, with no parameter exception. Codegen believed it,
  which is why assigning a temporary through a bare-`&` container parameter allocated into the *callee's*
  arena and handed the caller a pointer to freed memory.
  Checked against the implementation, the behaviour already matches the better rule on all five shapes that
  matter: narrowing works, passing on to a named-scope parameter works, naming the parameter makes
  allocation and returning legal, and the two that need a name are rejected. So this was a **specification**
  correction, not a rewrite - but the correction is what makes the bug class unrepresentable in the model
  rather than merely caught by a rule bolted on afterwards.
  The distinction it turns on is worth keeping: treating such a parameter as own is safe for *narrowing*,
  because own is the shortest scope nameable in the body, and unsafe as an *allocation target*, because own
  is not where the referent lives. Those two uses had been conflated under one sentence.
- **The parameter case, and why naming is inherent rather than a workaround.** Pressed on whether `:=`
  inference helps a *parameter* - it cannot, a parameter has no initializer - the question became whether
  a bare `&` parameter should mean something other than `own`. Working it through: to return a value at a
  parameter's scope, the **return type must name that scope**, because a signature is what the caller
  reads. An implicit or anonymous scope cannot appear there, so no amount of inference removes the need
  for a name. It is the same constraint a type parameter has.
  Making bare-`&` parameters implicitly scoped was considered and does not pay: it would not remove the
  naming requirement for anything that escapes the call, and named scope variables are hidden `ptr`
  arguments, so every reference parameter would start costing one. The conflation it would prevent - two
  bare-`&` parameters reading as the same scope - is safe as it stands, because `own` is the *minimum* and
  an underestimate never outlives what it names; probing for a hole through container writes found O20 and
  O24 already covering them.
  **What was actually missing was the diagnostic.** `own` reaches a check two ways with opposite remedies:
  a value this function really allocated (a bug - no caller can help, which is what O10d says), or one read
  out of a bare-marked parameter (add one token). Both produced O10d's "no argument would make this work",
  which is simply false for the second and points away from the fix. They are separate messages now.
- **O24: the bare-`&` parameter question, which turned out to be a live use-after-free.** The user asked
  whether a bare `&` parameter should inherit its argument's scope rather than meaning `own`. Probing that
  found the answer was not a preference: `func fill(o mut Hold&) { o.held = Box(9) }` compiled, and the
  temporary was allocated into *fill's* own arena while the pointer went into the caller's container. It
  read back correctly until the arena was churned, then did not.
  The cause is exactly what the user suspected. A bare marker means own (O4), which for a parameter is not
  where the container lives - it is merely the shortest scope the body can name - so E12c's "allocate a
  temporary into the target's scope" resolved to the wrong arena. **Naming the parameter's scope fixes it
  outright**, since a named scope is passed as a hidden argument and the allocation lands in the caller's,
  which is why the rule is "name it" rather than "don't do this".
  The first version of the check rejected *every* write through a bare-`&` container parameter and broke
  five sites in `io.olang` immediately: `buf[0] = '0'` through a `mut byte[]&` writes a byte, which needs
  no scope at all. Restricted to slots that actually hold a reference, the corpus is untouched.
- **O23: a nameless reference is a very low scope, which was the user's observation and it was right.**
  `func across(w WrappedPoint&) Point&a { return w.inner }` was rejected, and the reason turned out to be
  that a bare `&` means `own` (O4) - literally correct, and useless for a parameter, since whatever the
  caller passed provably outlives the call. So a field of a container parameter read at `own` and could not
  be handed to anything outliving the call. Naming the container's scope fixes it: the field now falls back
  to the container's scope, and `func namedAcross(w WrappedPoint&p) Point&p { return w.inner }` compiles.
  **What makes the fallback sound is O22, which had just landed.** Falling back is an underestimate - every
  value that can reach the field was required to outlive the container's construction scope, which outlives
  where the container sits - and an underestimate can never outlive what it names. The same fallback
  applied to the WRITE side would be a weakening rather than an underestimate, and that is the version
  measured and rejected an hour earlier for costing per-field precision. Read-only costs nothing.
- **O22, derived obligations: writing a field of a container parameter.** `func put(o mut Hold&s, b Box&t)
  { o.held = b }` was rejected, and the reason was structural rather than a missing check: the field's tag
  names a scope variable of the *type*, bound wherever the container was constructed, so the body can
  neither decide the relation nor name it in a signature - and an ordinary obligation is discharged by the
  caller binding the callee's *scope parameters*, which that variable is not.
  **The user's first instinct was the right one** - "we want the compiler to know what scope `o.held` is on
  its own" - and the answer is that it does, one frame away: the caller holds the binding, on the very
  argument it is about to pass. So the body records the requirement against the *parameter* the container
  arrived through, and each caller resolves it against its own argument; a caller holding only a parameter
  records its own derived obligation and the question moves up, terminating at whoever constructed the
  container exactly as O10c does. No new syntax, and no runtime check - which the user ruled out
  explicitly, correctly: a scope has no runtime value to check.
  **The simpler alternative was implemented, measured, and reverted.** Forgetting the construction binding
  and using the container's scope for both reads and writes is sound - and it has to be *both*, which was
  the subtlety worth stating: weakening only the write while a reader elsewhere still recovers the longer
  construction scope is precisely how a stale promise dangles. But it costs per-field precision. Ten corpus
  sites broke, and one of them cannot be fixed at all: `DualWrapped&a&own` holds two fields in *different*
  scopes, and a single container tag can be neither "a" (over-claiming the own field) nor "own" (losing the
  returnable one). That measurement is what settled it; the argument alone would not have.
  **The staleness worry that motivated forgetting is what O22 removes.** A binding recorded at construction
  could only go stale if some write escaped the check - and the only such write was this one, which is now
  checked against that same scope variable. Nothing that would falsify the binding is admitted, so trusting
  it is not optimism.
- **"References must outlive the struct" - the rule the user stated back, and the case where it was not
  being checked.** The recap was right in substance and found a hole in the enforcement. O20 was testing
  the wrong predicate: it asked whether a stored value's scope binding was *own*, which catches a
  short-lived reference created in the storing function, and misses one that arrives as a `&s` parameter
  while the container is tagged `&t`. Nothing related `s` to `t`, so `func stash(b Box&s, o mut Outer&t)
  { o.inner = H(b) }` compiled, and a caller could hand it a local and have it stored somewhere that
  outlives the call. Verified as a real use-after-free: after the call returned, churning the arena left
  the stored reference reading someone else's bytes.
  **The fix is to ask the actual question** - does this value outlive the container? - through
  `scopeCanFlowInto`, which was already the right tool and was simply not being called here. It proves the
  relation where it can and records an **obligation** where it cannot, so the two-scope-variable case is
  deferred to callers rather than rejected. That distinction is what keeps the shape usable: the caller
  storing into a container of the same scope still compiles, and only the caller that cannot discharge the
  obligation is rejected, at its own call site rather than inside the callee.
  Worth noting how it was found: the user asked for a recap of the model rather than reporting a bug -
  "those references must outlive the struct or be of the same lifetime? is that how references are
  guaranteed?" - and checking the answer against the implementation rather than against the design record
  is what turned it up. The design record said yes; the checker said yes only for one of the two ways the
  reference could be short-lived.
- **O13b: merging scope bindings across branches - two bugs and a better rule, arrived at by the user
  asking the obvious question twice.** A value built by a constructor records what its type's scope
  variables were bound to at that construction; reassigning it in one arm of an `if` rebinds them, so the
  merge has to say what the binding is afterwards.
  **The first bug was a dangling return on one path.** The fold already marked disagreeing arms
  "definitely ambiguous" rather than guessing - but the checks that *consume* a binding only rejected one
  equal to `own`, and SCOPE_AMBIGUOUS is not `own`. So a value whose scope variable one arm rebound from a
  local and the other left alone was returned without complaint, dangling on exactly that path and working
  fine on the other, which is the shape testing finds last.
  **Rejecting ambiguity closed it and over-corrected**, which the user caught immediately: *"why don't we
  make the return value assume the shortest-lived one?"* That is the honest meet, and it is computable
  outright whenever one arm said `own` - O10a already orders every named scope above own, so own wins. That
  is both sounder-looking and strictly more useful than "unverifiable", since a merged own-scoped value can
  still flow anywhere an own-scoped one may.
  **Then: "isn't meet always computable?" - and it is.** Two different named scopes have no single name for
  their meet here, because their relative order is exactly what O10b defers to the caller. But the meet is
  still a definite scope, and every question anyone asks of it distributes: `min(p,q)` outlives a target
  precisely when `p` does and `q` does. So the binding keeps its *candidates* and each consumer checks all
  of them. `func f(a Box&p, b Box&q, c bool) H` now returns its merged value, which is correct and was
  rejected an hour earlier. Works for a `match`'s N arms as well as an `if`'s two.
  The general lesson is the one that keeps recurring here: collapsing "I know it is one of these" into "I
  do not know" throws away exactly the information that makes the safe case provable.
- **Memory safety, part three: a null reference through monomorphization (G18), and convincing ourselves
  about scopes.** The user asked two things - whether the reference cases really hold, and whether any of
  this is possible for "runtime-decided scopes" - and added that reference default values had been
  forgotten. The last of those found a real null.
  **Nine paths to a zero-valued reference were enumerated and tried**: a zero-filled array of a
  struct-with-reference, of bare references, of a choice with a reference payload, the runtime-sized
  versions of each, a global, a plain struct with no initializer, nested arrays, a function falling off the
  end with a reference return type, and both run-time-sized constructor-field forms. All were correctly
  rejected. The ninth was a **generic**: a `<T>[n]&s` field satisfies D13 at declaration for every `T`,
  because a type variable contains no reference - and nothing re-asked once `T` became a struct holding
  one. `Cell2<WithRef>(4)` zero-filled storage full of null references and segfaulted on the first read.
  G18 re-checks containment rules against each instantiation's substituted types. Monomorphization is a
  path like any other, which is the same lesson `TypeValueChildren` encodes one level down.
  **On runtime-decided scopes, the user's instinct was right and the answer is that olang has none.** A
  scope name is not a value (O3): it cannot be computed, stored, compared or selected, so a binding is
  fixed per call site at compile time. What varies at run time is which *instance* of an arena exists - a
  recursive function has many `own`s - and FILO nesting is exactly what makes a static ordering over names
  sound over dynamic instances: if `s` outlives `own` statically, every dynamic `own` closes before its
  corresponding `s`. Probing confirmed the three shapes that would break otherwise: recursion passing its
  own scope into a callee's named one is accepted (correctly - the inner call returns first), branches
  binding *different* scopes to one name are rejected as ambiguous rather than guessed, and a loop storing
  a per-iteration reference outward is rejected. A relation between two named scopes that cannot be settled
  locally is not waved through either: it becomes an obligation (O10b) the caller discharges, and both
  directions were checked - an impossible discharge is rejected, a satisfiable one passes.
- **Memory safety, part two: scope order through nested reference types (O20), and `extern` stated as the
  one unchecked seam (X1a).** The user named this as the most glaring remaining hole, and it was.
  **The mechanism is that a bare `&` tag means `own` (O4) wherever it is written** - including on a slot
  that lives inside somebody else's container. `dst[0]` where `dst` is `Box&[]&`, or `dst.slot` where
  `dst` is a `&`-tagged struct: the slot's own tag says "this function's scope", so the ordinary fit check
  compared own against own and accepted storing a local's reference into storage that outlives the call.
  Verified to dangle rather than argued about - after the call, churning the arena to reuse the freed chunk
  left the stored reference reading someone else's bytes.
  **Probing found it by trying the same shape four ways**, which is why the fix covers all four: a struct
  field with a *named* tag was already rejected (the existing machinery resolves `&s` through the
  container's bindings), two levels of nesting likewise - but an **array element** and a **choice payload**
  both sailed through, because neither carries a name for anything to resolve. The rule now asks the
  structural question instead: is this target reached through a reference-shaped container? If so, a stored
  value that names existing own-scoped storage is rejected, and so is a value whose own scope variables
  were bound to `own` where it was built - the latter being O13a arriving by assignment rather than return,
  and now sharing one predicate with it.
  **The first version had a false positive and the corpus caught it**, which is the argument for keeping a
  large test corpus rather than a small one. `b.inner = Point{x, y}` through a `&s`-tagged `b` was
  rejected, and it is safe: a temporary has no storage to borrow, so E12c allocates it into the *target's*
  scope. The fix was to require that the stored value actually names existing storage
  (`OperandNamesExistingStorage`), which is the same carve-out `borrowLifetimeFits` already makes.
  **`extern` was ruled out of scope by the user** - "extern is unsafe and that is unavoidable, this is
  fine" - and is now written down as X1a rather than left implicit: a declaration states a prototype and
  the compiler takes it at its word, a wrong one is undefined behaviour, and a wrong *size* for a foreign
  type reached through the `byte[N]` idiom is silent corruption. Every other guarantee in the spec is
  stated as holding for programs that do not declare an incorrect prototype. `make verify` passes at 174.
- **Memory safety, part one: spatial safety, and making the type walkers total.** The user asked for
  compile-time guarantees over all memory - "no memory bugs should be possible, yet I want easy
  expressibility" - so the work started with an audit against the *code* rather than the design record,
  which had already overclaimed twice that day. The audit is worth keeping, because it says what is left:
  **temporal safety is largely sound by construction** (there is no `free`, so no double-free and no
  use-after-free by release; arenas close FILO and §8 proves containment, rejecting what it cannot trace),
  **uninitialized reads are closed** (D13 gives no reference and no runtime-length array a zero value),
  **type confusion is closed** (no casts between reference types, and a choice's payload is reachable only
  through a tag test) - and **spatial safety was entirely absent**, with three data-race holes and `extern`
  outstanding.
  **Indexing was unchecked, and the rationale for that was wrong rather than a tradeoff.** E16 justified it
  on blast radius: a bad index is "one wrong access where it is written", unlike a slice, which manufactures
  a value that stays wrong. That is true of a read and false of a *write* - `a[100000] = 7` and
  `a[-4000] = 7` both compiled, ran, and corrupted whatever was there, which is precisely the unbounded
  case the argument said did not exist. The fix reuses what E16b/E16c already built for slices: the same
  compare-and-abort, the same `try a[i]` opt-out propagating the bare error, one shared failure tail
  (`cgBoundsFailed`) instead of two copies. Where the index and the length are both compile-time known the
  check moves to compile time, so an out-of-range constant is an error where it is written and an in-range
  one costs nothing - which is most indexing into fixed-size arrays. **Adding it broke nothing**: 170
  existing tests passed unchanged, which is the real answer to the expressibility worry - no code was
  relying on the hole.
  **The second half was structural, and it closed two more holes as a side effect.** Choice payloads had
  been missed by *three* separate type walkers, two of them safety checks, and each was found by hand one
  at a time (a zero-filled array of null references; a returned reference into a closed scope). The cause
  is that each walker independently knew which types contain other types. `TypeValueChildren` is now the
  single enumeration of that - a struct's fields, an array's element, a choice's payloads - and the
  predicates go through it. Routing `typeHasBareDestructStruct` and `typeHasBareInterface` through it
  immediately rejected two programs that had compiled: a destructor-bearing struct held **by value** in a
  choice payload (C11 needs a well-defined instance count) and an unmarked interface in one (T32). Neither
  was looked for; they fell out of asking the question in one place. One walker still recurses on its own,
  `structContainsBareScopeField`, because it must also *stop* at a reference-shaped child - it carries a
  note saying it is the only one that must be kept in step by hand.
  **Still open, and named rather than implied**: the three data-race holes (a scope shared by two
  allocating tasks; P3's root-comparison being defeated by any reference aliasing; `shared` being an
  unchecked promise), and `extern`, which is unsafe by construction and should be stated as the one
  deliberate seam rather than left implicit. `make verify` passes at 173 tests.
- **Sum types, arrived at by asking how a `match` on an interface could ever be exhaustive.** The user's
  question was exactly the right one: if a type switch on an interface has to enumerate the implementing
  types, doesn't that need whole-program compilation? It does - and the answer is that *exhaustiveness*
  needs a closed set, not that separate compilation is the obstacle. An interface is open by construction;
  even with the whole program in front of you, one new module invalidates the proof. What you want when you
  want exhaustive matching is a closed set of alternatives, i.e. a sum type, and that is a different
  feature from an interface rather than a missing half of one.
  **The name came before the feature.** `vocab` already *was* a sum type with the payloads missing, so the
  right move was to generalise it rather than add a parallel construct - but the user pushed back that
  "vocab" stops being a good word once a case carries data, and they were right: a vocabulary is a set of
  *words*, and `Circle(3)` is a construction. `choice` replaced it. The recorded reason for rejecting
  `enum` originally - "not an underlying orderable/arithmetic number" - survives payloads untouched, and
  `union` stays out because olang is C-like enough that a reader imports C's meaning, which is precisely the
  *untagged* one. Members became **cases**, lining up with `match`'s own `case`; error types keep "words",
  correctly, since those really are atoms. Cases also became STMNT_END-separated, the move the constructor
  body already made - a trailing comma after a payload's `)` reads as noise.
  **Modelling a payload as an anonymous struct is what made the feature small.** A case's parameter list
  becomes a struct type, so sizing, field access, structural comparison and codegen's aggregate handling all
  came for free. Representation is `{ i64 tag, [N x i8] }` where N is the largest payload - the i64 tag is
  there so the payload lands 8-aligned, since an i32 would under-align a pointer inside one - and a choice
  with no payloads anywhere keeps the bare i32 ordinal, so nothing about the old form changed at all.
  **"Why don't choices hold one of several typed variables?" - they do, and the part of that proposal that
  had to be rejected was only the naming.** A payload's type can be any declared type (`Held(b Box&)`,
  `Pair(p Pair2)`, `Nest(i Figure)`), so a choice already holds one of several typed values. What was
  proposed on top - that a case simply *be* a declared type, `choice { MyStruct, OtherStruct }` constructed
  as `Val.MyStruct&s(3)` forwarding to that type's own constructor - founders on **disjointness**, the
  property that separates a sum type from C's union: `Celsius(int32)` and `Fahrenheit(int32)` are two
  cases carrying the same payload type, told apart by the tag alone, and that is inexpressible if the case
  name is the type name. The workaround would be inventing wrapper types solely to obtain distinct tags.
  Rust keeps variant names separate from payload types for the same reason. The user agreed on this point.
  The constructor-forwarding half is separable and merely deferred: it is ambiguous when the payload type's
  constructor takes one argument of that same type, and `Val.Held(Box(3))` is one word longer and never is.
  **"Do choices take constructors?" was the user's earlier question and the answer is no, on principle.** A struct
  constructor exists because a struct has one shape and you may want a validated path into it distinct from
  the raw literal (C6). For a choice, *selecting the case* is the interesting logic, and an ordinary
  function already does that - fallibly, and as a method under M19. C13 forbids `return` in a constructor
  body precisely so a type has one construction path, which is the opposite of what a choice constructor
  would need. And the encapsulation a constructor buys is available at finer grain: M6a makes a case name
  private by its own first character, so a module can keep a case to itself and hand out a checked function.
  So creation is `Type.Case` or `Type.Case(args)`, and nothing else.
  **`match` over a choice is the one exhaustiveness check in the language (S13a)**, and that asymmetry is
  the point rather than an inconsistency: a choice is the only type whose alternatives are both closed and
  written down in one declaration the compiler reads. `nomatch` already existed as the opt-out, so the rule
  needed no new syntax. `case Type.Case(a, b)` binds the payload to arm-scoped locals; the identifiers are
  binding occurrences always, which keeps the form unambiguous against a construction spelled the same way,
  and the binding is what makes reading a payload sound - a field is reachable only inside a clause whose
  tag test already selected its case.
  **`==` compares the tag and then the live case's payload**, and the implementation is the interesting
  part. The comparison branches, and a branch in the middle of an expression would need phi nodes threaded
  back out through every level of `cgDeepEq`'s recursion - so it is emitted as one `linkonce_odr` function
  per choice type whose arms each `ret`, leaving every call site straight-line. Both shortcuts were
  considered and both are wrong on real programs: comparing tags alone silently drops the payload, and
  comparing the buffer bytewise reports `0.0 != -0.0` and would dereference a garbage pointer for a
  reference-shaped payload read as the wrong case. It shipped rejected for one commit rather than
  approximated, then done properly - the tests that prove the point (a float ±0 payload, a `Recv&` payload
  compared by identity, a `byte[]&` payload) are the ones a bytewise version would have failed.
  **Two things the parser had to be told.** `Shape.Circle(3)` has the same shape as a cross-module call
  `alias.func(args)`, so the choice test has to come first and commits only when the last-but-one
  identifier is a known type - the same predicate the payload-free form already used. And a `case` clause
  tries the binding pattern before falling back to an ordinary expression.
  **Two real bugs found, both the same shape** - a rule that walked structs and arrays but not choices.
  D13's "no valid zero value" check did not reach into a choice's payloads, so `arr mut Msg[3]` where
  `Msg`'s first case holds a `Blob&` produced three null references that matched the case and dereferenced
  cleanly to nothing. And O13's "a return type may not embed a bare `&`" did not either, so
  `return Val.Held(localBox)` handed back a reference into the scope that closed at the return, reading a
  freed chunk that happened to still hold the right bytes - a passing test that was wrong. The second was
  found by the user asking why a case does not simply hold a declared type with its own constructor and
  scope tag (`myChoice.myStruct&s(3)`), which is the question that made the scope story worth checking at
  all. Both are compile errors now.
  **"Why isn't the scope tag in the choice header?"** - because O3a's header form exists for exactly one
  situation a choice cannot be in: a scope the *body* allocates into that no type in the signature
  mentions. A choice has no body, so every scope variable it can have appears in a payload, and a header
  tag would always be the redundant one O3a already rejects (`type Parcel&s choice` reports precisely
  that). The generics analogy confirms the split rather than contradicting it: a struct's `<T>` goes in a
  header because type arguments are written positionally and cannot be inferred, while a scope variable
  *is* inferred, by O17, from the construction's own arguments. Inferable things are declared by appearing;
  uninferable ones get a list. The question did find a real omission though, one hop away: *supplying* a
  scope had no spelling, so a payload that is a fresh value could only ever be allocated into the
  constructing function's own scope. The parser already collected the adjacency-constrained `&name` before
  the `(` and only the call branch consumed it; routing it into the choice-value node and on to
  `bindCallScopeVars` was the whole fix.
  **Two bugs surfaced in that one test.** Resolving the payload's tag at codegen needed the same
  binding-map lookup a call argument gets - without it `cgResolveScope` looked the choice type's own `s` up
  as a caller-local, found nothing, and mangled a var with no owning module, which segfaulted the compiler.
  And two match arms binding the same name collided: the semantic side scoped them separately but codegen
  declared both into the enclosing scope, so the second arm allocated its own slot, stored into it, and
  then read the *first* arm's by name. Both are fixed and both now have regression tests.
  **That second bug looked for a while like compiler memory corruption**, because the same program passed
  or failed depending on the length of a test's description string. It was stale build artifacts: `-t`
  skips a module whose object is newer than its source, and rebuilding the *compiler* invalidated nothing,
  so several runs were reading IR generated before the fix - and the string-length dependence was just an
  edit forcing one file's rebuild and not another's. ASan finding nothing was the clue that the compiler
  was behaving deterministically and the inputs were not what they appeared.
  **So it was fixed rather than written down as a caution.** An object is now stale when the compiler
  binary is newer than it, alongside its own source and its transitive imports. Nothing else records which
  compiler produced an object, so this class of "my fix does nothing" is now impossible rather than merely
  known about - the second time it had cost real time here. The compiler's path comes from
  `/proc/self/exe`, which resolves whatever PATH lookup or symlink was used to reach it; where that cannot
  be read the check does not fire, matching the previous behaviour. Verified both directions: an unchanged
  module is still skipped, a touched source still rebuilds, and touching the compiler now rebuilds
  everything.
  **Closing the gap that question pointed at turned up a pre-existing soundness hole in §8.** A payload can
  now carry a `&name` tag: the *choice type* owns the scope-variable list, so every case's payload shares
  one namespace, and `Type.Case(args)` binds each variable from the arguments through the same
  `bindCallScopeVars` a call uses. Resolving the payload parameter's tag through that binding *before* the
  fit check is load-bearing for the same reason it is at a call - the tag names one of the TYPE's own
  variables, never anything in the constructing function's frame, so comparing it directly against the
  caller's parameters finds nothing and rejects a safe program.
  With that working, the obvious next test was the unsafe version - bind `&s` from a local and return the
  value - and it **compiled and read a freed chunk**. Then the same test written with a constructor-bearing
  struct instead of a choice did too, which placed the bug: O13 only ever inspected the tag written on the
  *return type*, so a scope variable bound to `own` at a construction carried a reference out through a
  name the signature never mentions. That had been true since constructor fields could be tagged; choices
  merely gave a second way to reach it. **O13a** closes both by judging the binding recorded on the
  returned operand rather than the type's written tag, and one check covers both shapes because both record
  bindings the same way. The deliberate limit is stated rather than hidden: only an explicitly recorded
  binding is judged, since treating "no entry" as "own" would reject every pass-through function, whose
  scopes were bound by whoever built the value.
  `make verify` passes at 165 shared tests (up from 160).
- **Interfaces: Go-style, and what had to be built underneath them.** The user asked for interfaces "in the
  go style" and left the naming to me. `interface` is the right word precisely because Go's semantics are
  the ones asked for: `trait` and `protocol` both signal *declared* conformance, and this is structural and
  implicit. **The whole feature rests on M19 and T29 already existing**: a type's methods are its module's
  functions, so "does T satisfy I" is M19's own lookup run once per method, and the coherence rule (only a
  type's declaring module may give it methods) becomes the coherence rule for satisfaction with nothing
  added. Satisfaction is decided at each conversion site from the two declarations alone.
  **The representation question answered itself.** An interface value has to be (concrete type, instance),
  and the instance is somebody else's - so the instance half is an E12c borrow (E12d) and the lifetime
  check that applies to every other reference applies here untouched, including the case where an interface
  tagged to a longer-lived scope is handed something scope-local. That also settles T32: an interface is
  reference-only, the way a destructor-bearing struct is (C11), but for the opposite reason - a
  destructor-bearing struct must be a reference because it needs a well-defined instance count, an
  interface because it has no instance of its own that a by-value form could denote.
  **`mut` on a method signature** was the one thing that could not be inferred. Whether `w.M()` writes
  through to what `w` names is exactly D9's second axis, and at a dispatch site the concrete receiver is
  invisible - so without declaring it on the interface, the answer would depend on a type the call cannot
  see. With it, the existing immutability-laundering check does the rest.
  **P3 and P4 needed no work at all**, which was the bet worth checking: the receiver is parameter 0 of an
  ordinary call, so a `mut` method's receiver is a `mut &` argument and spawn's exclusivity rule already
  covers it; and the task env already stored a function *pointer*, so a table entry slotted in.
  **A sealed interface fell out of M6 unasked**: a private method name belongs to its declaring module, so
  only a type there can supply it. An importer can hold and pass such an interface but can never implement
  it. Getting this right needed one correction - the first version tested visibility at the *converting*
  module, which made a sealed interface untransportable; the test belongs on the two declarations, which is
  also what Go does.
  **Two prerequisites turned up immediately, both from writing the obvious first test - two shapes and an
  interface, in one file.** It did not compile, for two independent reasons.
  **M21 (methods overload by receiver type).** `Area(Square&)` and `Area(Tri&)` collided in the module's one
  function namespace, so *two types in one module could not both implement an interface* - which is the
  basic case, not an edge one. A module may now declare several functions sharing a name as long as each is
  a method of a different type. Consequences that had to be worked through: a declaration can no longer
  find its own var by name (matched by the name token's position instead); "is a method" is a fact about a
  resolved first parameter, so the duplicate check moved to a pass after every signature exists; and method
  symbols now carry their receiver type. That last is applied to *every* method, not only ones with a
  same-named sibling, so a symbol never depends on what else a module happens to declare. The deliberate
  limit: such a name is reachable only as `x.f(...)`. Resolving `f(x)` by the first argument's type would
  be overload resolution, which olang has nowhere else, and the method spelling already says which type is
  meant.
  **M19b (a postfix method call).** `items[i].Area()` did not parse. The call form is built around an
  `alias-chain IDEN`, which reaches only identifiers, so a method on an indexed or returned value was
  inexpressible - and "several concrete types in one collection, each dispatched to its own method" is the
  entire reason interfaces exist. A `.` member followed by an argument list is now a method call on
  whatever stands to its left, sharing one resolver with the name-chain form.
  **Two implementation notes.** A by-value receiver reaches the table through a generated thunk that loads
  the aggregate, since a dispatch always hands over a pointer; T31 admits both receiver shapes because the
  latitude E12 gives every other argument should not stop at this one, and the thunk is the whole cost.
  And error lists must agree *in order*, not as sets: the error-union ABI numbers words by position in a
  function's own declared list, so identical lists are what let a dispatch call the real function directly.
  Relaxing that is another thunk's job, not a semantic change.
  **One latent bug surfaced**, in the way these usually do - by writing something real. `cgTryCatch` held
  its own copy of `cgFuncCall`'s target-and-argument lowering; the copy knew nothing about dispatch, and
  `try w.Put(n)` mangled a synthetic var with no owning module and segfaulted the compiler. The duplication
  predated interfaces; the two share one lowering now.
  **Deliberately deferred**: type assertions and type switches (the dispatch table's address already
  identifies the concrete type, so there is somewhere to hang them), interface-to-interface conversion (the
  concrete type is not known until run time, so the target's table cannot be selected at the conversion),
  and generic interfaces or generic method signatures (T35). Also noted along the way and *not* fixed: a
  named primitive cannot take a reference marker (`Meters&` is rejected), so a named primitive can supply a
  read-only interface method but never a `mut` one.
  `make verify` passes at 160 shared tests (up from 152) and 19 cross-module (up from 17).
- **M20's alias reservation, and the chained receiver it unblocked.** These were the two things M19 left
  open, and they are one problem: `lib.f()` (M8, a cross-module call) and `m.Add(n)` (M19, a method) are
  written through the *same* `alias-chain IDEN` grammar, so the left of a dot needs exactly one meaning.
  **The hole predated methods and was silent.** An import alias and a module-level declaration of the same
  name simply coexisted, with no diagnostic, and the local declaration won - found by writing a module that
  imported `matrix.olang` and also declared a choice type `matrix`, where `matrix.New` quietly resolved to
  the local one. That is the collision the user had flagged much earlier as "always really ugly", showing up
  as a wrong answer rather than as ugliness. **M20 makes the alias name reserved in the module that wrote
  the import** - no type, function, global, local or parameter there may reuse it - and the reservation is
  per-module, so an unrelated module may still declare that name and two modules may alias the same import
  differently. Four check sites, one predicate: `collectType`/`collectVar` (pass 1, after imports are
  already collected in `semaLoadModule`), `resolveParamList`, and `scopeDeclare`, which gained a module
  parameter for it. Nothing in the corpus had to be renamed.
  **With that, the receiver could become a chain.** `a.b.f()` is `f(a.b)` and `a.b.c.f()` is `f(a.b.c)`, to
  any depth: the method name is the last identifier and everything before it is a member-access chain rooted
  at a local. A leading name that resolves to a value in scope can no longer also be an import alias, so the
  two readings are mutually exclusive by construction rather than by a tiebreak rule. The chain is **probed
  over types first, building and reporting nothing**: a chain that does not resolve is not a method call, and
  the ordinary call path keeps ownership of the real diagnostic for whatever the name actually was -
  otherwise every mistyped cross-module call would have reported a bogus "unknown struct member" from the
  method path on its way past. `make verify` passes at 152 tests, 13 cross-module.
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
  choiceulary from Rust, which this language explicitly does not implement.
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

- **Why the literal is allowed to bypass a constructor, and the constructor error-list `?` alignment.**
  Two loose ends from the reversal above, closed together.
  **The bypass is a consequence of one-constructor-per-type, not a general concession.** The first
  justification written down - "a literal is visibly infallible at the use site" - explains why the two
  forms are worth keeping apart, but not why the literal must be available for a *validating* type
  specifically. The real reason is narrower and stronger: a type declares exactly one constructor (C1),
  with no overloading and no second named constructor. So a validating constructor, if the literal were
  withheld, would be the only construction path its type has anywhere - leaving no way to rebuild an
  instance from values already known to be valid (deserialization, or reassembling a value that was
  taken apart). Other languages meet that need with an explicit unchecked constructor; here the literal
  is it, and being ordinary visible syntax it announces itself at the point of use, where a
  conventionally-named `new_unchecked` relies on the reader knowing what the name means. Confirmed
  reachable with a test: a constructor whose field initializer is `try checkCap(cap)` rejects `Sized(-1)`
  and the literal `Sized{-1}` builds it anyway, no `try` required.
  **This also retired a rule that had been proposed one exchange earlier** - rejecting the literal only
  for constructors that *declare errors*. It looks principled (a constructor with no error set computes
  but does not validate, so bypassing it cannot produce an invalid instance) and is exactly backwards:
  it would hit precisely the validating types, the ones that most need a trusted-reconstruction path,
  and leave them unconstructible from values. Recorded because the argument for it is superficially
  persuasive and worth not re-deriving.
  **The `?` alignment.** A constructor's error-list was bare (`type M struct(n int32) ValidationError`)
  where a function's is `?`-marked. The stated reason was that a constructor has no `ret-type` slot for
  the marker to disambiguate against - which explains why it *could* be bare, never why it should be. It
  now carries the `?` like every other error set in the language. `parseStructCtor` simply calls
  `parseFuncErrorList` instead of `parseErrorList`, and the latter, left with no callers at all, is
  deleted. One site in the whole corpus needed updating, which is itself a fair measure of how little the
  saving was worth. `make verify`: 96/13/12.

- **Default parameter values, the `default` argument keyword, and named arguments rejected.** Came out of
  a three-part conversation - operator overloading, defaults, variadics - of which this is the part that
  got built.
  **Operator overloading: rejected**, for a reason specific to this language rather than taste. An
  overloaded operator has nowhere to write a scope tag. Every heap-indirect value here is tagged
  (`&`, `&s`, `own`), so `Vec + Vec` must allocate its result somewhere and `a + b` has no syntactic slot
  to say where - leaving "operators may return value types only", which excludes exactly the types the
  feature is wanted for (Vec, String, Matrix, BigInt: all `&`-shaped by C11 or T11). Two further
  problems: a fallible operator would need `try` extended from calls to operator expressions (R8), and
  `==` is *already* defined for every user type by E10, so overloading it would give a type two meanings
  for one operator. Worth recording what does NOT argue against it: operators are not identifiers, so
  they never reintroduce the field/method name collision that killed user-defined methods.
  **Variadics: rejected.** The one real motivator is printf, and a variadic C function cannot be declared
  through `extern func` at all (fixed list, five numeric primitives plus arrays), so that was never the
  path. "Many arguments of one type" is already an array literal. Tested what a println actually looks
  like without them: a non-generic `print(byte[])` works today (string literals promote into it), and a
  generic `print(v<T>)` with `match <T>` works for scalars - but **a single `case byte[]` does not catch
  an array literal**, since `byte[byte(1), byte(2)]` is `byte[2]` and every length is its own type, so no
  finite set of cases covers "any byte array". Also `describe(2.5)` instantiates `T` as `float32`, not
  `float64`. So multi-value output is multiple calls, with no one-line formatted print. That cost is
  accepted deliberately: if it proves intolerable once a standard library exists, the answer is
  compile-time argument packs (monomorphization already provides most of the machinery), not C variadics.
  **Named arguments: rejected, and `default` is what replaced them.** The argument against: they would
  permanently make every parameter name of every exported function part of its API, where names are
  currently internal and free to change. The readability they buy is better served by distinct types -
  `makeRect(Point{0,0}, Size{100,50})` rejects a transposition at compile time where
  `makeRect(x=.., y=.., w=.., h=..)` cannot. And the ordering argument is decisive under uncertainty:
  adding positional defaults now does not foreclose named arguments later, while shipping named arguments
  forecloses removing them. The one genuine loss conceded was reaching a later parameter without
  restating the earlier ones - which the user then closed by proposing a `default` keyword in argument
  position. It fixes exactly that, keeps names internal, and has a property worth naming: the syntax gets
  uglier in proportion to the design smell, so `f(a, default, default, default, x)` looks as bad as a
  function with four optional knobs deserves, where named arguments would hide it.
  **A latent build bug this exposed, since fixed.** Adding a field to `struct var` in semantic.h and
  rebuilding incrementally produced a compiler that segfaulted on valid input: `sizeof(struct statement)`
  was 616 in the freshly built `semantic.o` and 624 in the stale `codegen.o`, because `build/%.o: %.c`
  declared **no header dependencies** - editing a .h rebuilt nothing that included it. `make verify`
  always runs `make clean` first, which is exactly why this never surfaced in a check and only ever
  appeared mid-edit. Fixed with `-MMD -MP` plus `-include $(DEP)`. The fix has its own trap, hit once
  while making it: `-include` splices the .d files' explicit rules into the makefile, and the first
  explicit rule read becomes make's default goal - placed above `build/out`, plain `make` silently began
  building one object file instead of the compiler. It belongs at the very end of the file.
  `make verify`: 100/13/12.

- **Constructor bodies are real statement blocks; a constructor can raise its own error (C2/C2a/C2b,
  R3/R4).** The last open item from the constructor/function symmetry thread. The parked question was
  "can a constructor raise its own error?", and R3's own text explained why it couldn't: *"a constructor
  has no statement-block body at all to write one in in the first place"*. The user answered the question
  by rejecting its premise - **"constructors can raise errors yes, they are basically functions whose
  local variables are exported into the scope they are constructed on"** - which is not a request for an
  exception to R3 but a statement about what a constructor already is. Implemented as exactly that: the
  comma-separated `ctor-field-list` is gone, and a constructor's body is an ordinary statement block in
  which a field declaration is one more kind of statement.
  **The fields are the constructor's own top-level locals** (C2a). A `ctor-field` declares both a field of
  the struct type and a local of the same name, so everything textually after it - a later field's
  initializer, an `if` guard, a `try ... catch` - can read the value it just computed, and the instance is
  assembled from those bindings' final values when the body completes normally (C6). Previously a field
  initializer saw only the constructor's parameters, so `half int32 = doubled / 4` was not expressible at
  all. A **bare pun declares no local**: the same-named parameter it binds already carries that name and
  that value, and re-declaring it would collide for no gain - which also means a non-pun field may no
  longer share a name with a parameter (VAR_NAME_IN_USE, a new rejection, previously silently allowed).
  `return` is rejected anywhere in a constructor body (C2b): the synthetic `ctorFunc` does carry a
  ret-type (the struct being built), so without this rule `return someOtherInstance` would have
  type-checked and become a second, invisible construction path.
  **Migration was near-trivial, which is itself the argument the design is right**: every existing
  constructor kept working character-for-character minus its trailing commas. The parse rule is "try a
  field first at each position, require it to terminate like any other statement, otherwise backtrack into
  parseStmnt" - so `x` alone classifies as a bare pun rather than a useless expression statement, and
  `x = 5` / `f()` / `if ...` fall through cleanly.
  **Two tokenizer-level snags, both real.** A bare pun may be written `open mut`, and `mut` is not a
  `stmntEndTriggerType`, so no STMNT_END is synthesized after it and the next line's field would have been
  swallowed as its type; fixed by accepting a preceding `TOK_MUT` in `acceptStmntEnd`, alongside the `}`
  and `&` cases already there - no ordinary statement can end in that keyword, so it costs nothing
  elsewhere. Separately, requiring STMNT_END outright broke the one-line form `type Point struct(x int32)
  { x }`: `x` is a trigger type but no newline follows it, and `acceptStmntEnd`'s `}` case tests the
  *previous* token, not the next. Fixed by also accepting a lookahead `}` as a field terminator, and
  `Counter` in shared.olang is now written on one line to keep that shape tested.
  Everything else fell out for free. `buildErrorStmnt` already resolves against `ctx->func->type.errors`,
  which for a constructor is its declared error union - so `error MeasureError.NEGATIVE` inside a
  constructor needed no new code at all, only a statement position to be written in. The same is true of
  `try`/`catch`, `assert`, `if`/`match`/loops, and of a constructor that declares no errors catching one
  entirely the way a `test { }` block does. `make verify`: 104/13/12.

- **An expression is a statement only if evaluating it can do something (S3).** Fallout from the
  constructor-body change above, spotted by the user: *"so now constructors can have statements as 'n'
  without anything else but functions can not?"* The premise was the other way round - `n`, `n + 1` and
  `n == 3` were all legal, silent no-ops in a function body too, because S3 read "any expression,
  evaluated for its side effects, with its value (if any) discarded." So the asymmetry was never
  "constructors allow a form functions don't"; it was that the *same* line meant something in one place
  and nothing in the other. The constructor didn't create that - it only made it visible, since the new
  parse rule leans on classifying a bare identifier as a pun "rather than as a useless expression
  statement," which was only safe because the useless form was tolerated everywhere else.
  Tightened at the user's direction (*"we need to be a lot more restrictive about what statements we
  allow. just 'n' should not be a valid statement ever. neither should x == y"*): an expression statement
  must be a call (ordinary, constructor, or `try`-wrapped - `buildTryExpr` returns the call itself marked
  `isTried`, so one check covers both) or one of the four `++`/`--` forms, which are expressions by
  grammar (E1) and reach statement position only through S3. `i++` is why the rule can't simply be "must
  be a call," which is the shape Go's own expression-statement rule takes for the same reason.
  Enforced in `buildExprStmnt` rather than the parser, so the diagnostic can say what was probably meant.
  All 104 tests passed unchanged - nothing in the corpus relied on the old permissiveness, which is
  itself the evidence the form was never useful. The rule's real value is catching `x == y` written for
  `x = y`, previously accepted in silence.

- **A closing `}` terminates the statement before it (L20).** Noticed while testing the S3 restriction
  above: `func g(a int32) int32 { return a }` did not parse, even though `type Point struct(x int32)
  { x }` did, because the constructor body had been given an ad-hoc `}` lookahead and nothing else had.
  Generalized at the user's request (*"fix the one-line thing tho. I want one-liners to be valid"*), and
  the general rule turned out to be strictly simpler than the special case it replaced: `acceptStmntEnd`
  now succeeds when the next token is `}`, and `parseCtorBody`'s own lookahead went away.
  There is no `;` in olang - a newline before a `}` synthesizes the `STMNT_END` (L18) - so before this
  every block needed a line break before its closing brace, and no one-line form parsed anywhere: not a
  function body, an `if`/`for`/`do`/`match` arm, a `test`, or an empty `{ }`. All of them work now.
  Sound because nothing but the block's own end can follow a statement inside a block, so the peeked `}`
  can never absorb a token a longer parse would have wanted; it is peeked rather than consumed, since the
  enclosing block parser still needs it. Go's automatic-semicolon rule has the same clause for exactly
  this reason. L20a keeps the three genuinely narrow no-token-at-all positions (after a body-closing `}`,
  after a bare `&` marker, after a bare pun's `mut`).
- **Restating a constructor parameter as an explicitly-typed field stays rejected.** Raised as an open
  question alongside the bare pun: should `start int32 = start` (C2a, VAR_NAME_IN_USE) or `start int32`
  with no initializer (C5) be legal for a type declaring `struct(start int32)`? User: *"they should both
  be rejected. keep it as it is."* The pun already gives the concise form, and C5 exists so `name Type`
  means one thing everywhere rather than silently becoming a pun whenever the name happens to match a
  parameter. Keeping C2a's collision rule also avoids a real fix that would otherwise be needed: params
  and field-locals share one scope, and both `scopeFindLocal` and `cgFindLocal` scan forward, so a
  shadowing field would resolve to the parameter instead of itself. `make verify`: 105/13/12.

- **Scopes stop being variables: no `scope` type, no `own` expression, scope variables declared by
  appearance, and an outlives relation with inferred obligations (T23, O3/O3a, O10/O10a-d, O17-O19, E25).**
  The largest change to §8 since it was written, and it started from a question about generics: *"I am
  curious if we can somehow get rid of scopes as variables as we have done with type generics."*
  **The argument that settled it is O3's own old text.** It already said a `scope` value is *"never
  itself a reference-shaped value, never stored, and never compared; it exists only to be read once and
  passed along as an argument."* A thing that can be neither stored, compared, nor constructed is not a
  value - it is an annotation that happened to be spelled as an argument. The implementation agreed:
  a `&`-reference is a bare `ptr` at run time carrying no scope, and `cgResolveEffectiveScope` already
  resolved the arena *statically* from the type's tag. So the only genuinely dynamic part was the arena
  pointer at an allocation site, which is a hidden parameter, not a user-facing one.
  **What the design went through before landing.** Three shapes were tried and rejected in discussion
  before the fourth was built. (1) *Whole-program region inference* (Tofte-Talpin, MLKit) - possible,
  genuinely memory-safe, and wrong here: region inference never fails, it just picks a longer region, so
  §8.4's compile-time proof would become vacuous and the failure mode (retention) would have no
  diagnostic and no fix the programmer could write. Decisively, it makes **destructor timing an
  inference artifact** - C9/O15 say a destructor runs when its scope closes, so an inferred scope means
  a file handle closes whenever unification decided, possibly at exit. (2) *Bare `&` in return position
  meaning "the caller's scope"* - terse, and rejected by the user: `&` would read differently by
  position. Worth recording that the objection turned out to be to the wrong half - what was actually
  wrong was that the caller had no way to *say* which scope; once a scope argument existed, the
  positional reading was still dropped in favour of (3). (3) *A declaration slot on every function*
  (`func f&s(...)`) - the user's own first proposal, argued down as redundant for any name the
  signature's types already declare... and then reinstated as O3a when the corpus proved the
  non-redundant case real (see below).
  **What was built.** A scope variable is declared by appearing as a `&name` in a signature, exactly as
  a generic type variable is (G1) - `resolveScopeTag` creating one on demand instead of looking up a
  `BASETYPE_SCOPE` parameter bought that almost for free. At a call it is **determined** by an
  already-reference-shaped argument whose parameter names it, **supplied** by an adjacency-constrained
  scope argument, or bound to the caller's own scope. Adjacency (`f&a(x)`, no whitespace, checked on the
  source pointers) is what distinguishes it from the binary `&` of `f & a(x)`; the alternative of
  revisiting `{s}` for the marker was considered and dropped - `{}` has already lost this argument twice
  (`{}` -> `&` -> `{}` -> `<>` -> `&`) and its cost is paid at every type reference, to fix an ambiguity
  adjacency already closes at a handful of call sites.
  **The outlives relation, and why obligations exist.** O10 became "src must outlive dst", which is what
  the user asked for: *"the only problem should be supplying a scope that dies too quickly, not one that
  lives too long."* O10a can prove only two things - a name outlives itself, and every scope variable
  outlives `own`. Two distinct scope variables are unordered where the function is checked. Rather than
  reject that (the original plan, documented as a known limitation), the user proposed the fix:
  *"the function computes what the order has to be based on its body and the call checks if that order
  is true?"* That is O10b/O10c, and it is strictly better than the Rust-style written bound it replaces:
  the checker already visits every flow point and already computes the ordered/unordered verdict, so the
  change is to *record* the unordered pair as an obligation instead of rejecting it. It is also NOT the
  region inference rejected above - every scope stays written by hand; only the relation between two of
  them is derived. It keeps separate compilation open, which the user explicitly wants (*"I want to have
  libraries to link against"*) and which the error-union ABI was already designed for.
  **Two things the corpus proved wrong that discussion had not.** First, O17's original "a variable
  appearing in a parameter type is unified from the arguments, never written" is false for a **promoted**
  argument: `WrappedPoint(Point{x, y})` has nothing to read off a literal - the tag on that parameter is
  where the value is about to be *allocated*. Fixed by having only already-reference-shaped arguments
  determine anything, which also forced E25 from a single slot to a positional list (`DualWrapped&a&own(...)`).
  Second, and more embarrassing: the claim that a scope used only in a body is never useful, which killed
  the declaration slot. It appeared **four times** in one test file, the clearest being
  `makeScopedBoxPlain`, which returns a plain `ScopedBox` whose `inner` field is `&outer` - nothing in its
  signature's types mentions `outer`, since the return type is unmarked and the parameters are ints.
  Three were worked around by pushing the scope onto a real parameter; the sibling-pair pair could not be,
  and the reason is instructive rather than incidental: building the values outside and passing them in
  means their inner tags were bound at a call the function cannot see, so O11 correctly rejects the deep
  access as untraceable. O3a reinstates the slot as a **fallback only** - rejected if the signature's own
  types already declare the name (the user's call: *"make it an error"*), and rejected outright on a plain
  struct. Fallback-declared variables come first in E25's positional order, so a caller reaches what it
  must supply without restating what its arguments already determine.
  **Corpus migration**: every `s scope` parameter and every `own` argument deleted; a handful of bodies
  that had tagged a local to a scope parameter for no reason now read as plain `own`, which is what they
  always meant. `make verify`: 108/13/12.

- **Separate compilation: one module, one object file (§10 B1-B3c, B5a).** Chosen over the stdlib as the
  next piece because the user had named it directly - *"I want to have libraries to link against and every
  file to be its own compilation unit"* - and because it gets harder, not easier, once a standard library
  exists to be rebuilt by it.
  **Two blockers, both found by looking rather than guessing.** First, symbols were mangled `@m<n>_name`
  where `n` was the module's index in *this compilation's* module list. An index is meaningless to a
  separately-compiled object: two objects would disagree about which module `m0` named and nothing would
  link. Now the prefix is the file's base name, which is the identity the language already derives an
  import alias from (M3), so it is stable however a client spells the path. Fixed and verified on its own
  (`19b8bf6`) before anything else moved. Second, a generic's instantiation set is not known until the
  *using* module is compiled, so no single module can own it - instantiations, and the runtime, are now
  emitted by every object that needs them as `linkonce_odr`, and the linker keeps one. That is the C++
  template model and it is what makes stable mangling load-bearing rather than cosmetic: dedup is by name.
  **No interface files, deliberately.** Imports are resolved from source exactly as before; only codegen
  narrowed to one module. Semantic analysis was not touched at all. Beyond avoiding a metadata format, this
  sidesteps a real hazard already noted when obligations were designed: a function's scope obligations are
  *derived from its body*, so an interface file would carry a fact the source is the only authority for and
  could silently drift from it. A prebuilt library is therefore its sources plus its objects - the C++
  headers-and-`.a` model rather than the Go/Rust one.
  **`-c` vs `-b`.** The user proposed a `-b` build flag and asked how it would differ from `-c`. It reads
  cleanly once `-c` means what it means in every other compiler: compile one file, don't link. So `-b` is
  the driver and `-c` is one unit of work it schedules, which also means an external build system can drive
  `-c` per file without going through `-b` at all. `SemanticAnalyzeFile`'s `testMode` parameter became
  `requireMain`, since "needs a main" was the only thing it ever controlled and only `-b` wants one.
  **Staleness is transitive, and two mistakes in it were caught by testing rather than reasoning.** An
  object depends on the signatures it was compiled against, so a change to an import invalidates it even
  though its own source did not change. The first implementation compared against *every* module in the
  program - safe, but it rebuilt the world whenever any leaf changed, defeating the entire point; it now
  walks the real import graph, with a visited set since import cycles are legal (§4.6). The first test of
  it was also inconclusive in a way worth recording: the whole edit-and-rebuild sequence ran inside one
  second, and `st_mtime` is whole-second, so nothing looked stale. That is not a test artifact but a real
  bug - a fast edit-build loop would silently skip rebuilds - fixed by comparing `st_mtim` at nanosecond
  resolution.
  **One genuine bug the corpus caught:** a cross-module *constructor* call emitted no `declare`. The
  foreign-declaration pass skipped anything a type pointed at as its `ctorFunc`, on the theory that
  constructors "ride on the type" - true only for generic instantiations, which are `linkonce_odr` in every
  object. A non-generic type's constructor is an ordinary entry in its module's own var list and needed a
  declaration like any other function. `make verify`: 108/13/12, now through four separate objects.

- **The root module stops being force-rebuilt, and base-name collisions become a real error.** Two
  follow-ups the user asked for immediately after separate compilation landed, both flagged in the same
  breath as shipping it.
  **Why the root always rebuilt, and the actual fix.** The first cut forced it, which quietly gave up
  incrementality on the module most likely to be edited. The reason was real but the remedy was lazy:
  a root's object carries `main` on top of its own code, so it is a *different artifact* from the same
  module's plain object - and both were being written to `build/<base>.o`. A plain object left by `-c`
  would therefore look perfectly current to a later `-b` while containing no `main` at all, and the link
  would fail. Naming them apart (`<base>.main.o`, `<base>.test.o`) makes them independent artifacts that
  can both be current at once, after which ordinary staleness covers the root like anything else and the
  force flag disappears. `-t` was routed through the same path while there, so a test build is incremental
  too. `-b` with nothing changed now regenerates nothing at all.
  **On UUID mangling.** The user asked whether a UUID would fix base-name collisions. It cannot, and the
  reason is worth writing down: the prefix has to be *stable* - the same for a module however and whenever
  it is compiled, or a prebuilt object stops linking against a client compiled later. A UUID generated per
  compilation is not stable; a hash of the file's *content* is stable per content but changes on every
  edit, which is worse than the problem; a hash of the *path* is stable only while the path is, which
  defeats relocatable objects and is exactly why full paths were rejected in the first place. What does
  work is a UUID (or any name) *declared in the source* - which is what Java packages, Go module paths and
  Rust crate names all are: an identity the module states rather than one derived from where its file
  happens to sit. That is a real design addition and was not made here. What was made is B3b's check:
  two modules with matching base names are now rejected up front, against the file, rather than surfacing
  as a duplicate-symbol error naming mangled symbols. Reproduced first (`sub/util.olang` alongside
  `util.olang` produced `invalid redefinition of function '@__olang_init_globals_util'`), then fixed.
  `make verify`: 108/13/12.

- **Module identity stays derived from the file base name; a declared `module` name was considered and
  deferred.** Follow-on from the collision work above, and a good example of a proposal dying to one
  question. Having established that a UUID cannot work (it must be stable across compilations, so it
  would have to be written in the source), the obvious next step looked like a declared identity -
  `module util` - as Java packages, Go module paths and Rust crate names all are, and it was suggested as
  worth doing before a stdlib occupies common names like `io`/`vec`/`str`. The user's reply killed it in
  one line: *"but if both lib/util.olang and app/util.olang declare module util then we have the same
  problem again right?"* - which is correct. A declared name relocates the cause of a collision (from the
  directory structure to the programmer) without removing the possibility of one.
  **What the alternatives actually do**, checked rather than recalled. C++ mangles the declaration's own
  scope path and signature and nothing about the file: `foo::util(int)` is `_ZN3foo4utilEi` wherever it
  lives, and two files defining it collide with `multiple definition of 'foo::util(int)'`. Its only
  genuine per-file mechanism is *internal linkage* - two objects each containing an anonymous-namespace
  `hidden` both emit the byte-identical symbol `_ZN12_GLOBAL__N_16hiddenEi` and link fine, because both
  are LOCAL symbols (`t` in nm, not `T`). Uniqueness there comes from linkage, not from the name, which
  is the same reason a UUID cannot help anything exported. Systems that make accidental collision
  *unlikely* do it with hierarchy plus an owner (reverse DNS, a repo URL, a registry entry) or a
  build-supplied disambiguator (Rust's `-C metadata`, from Cargo rather than from the source) - and every
  one of them still merely *reports* a collision rather than preventing it.
  **Decision: base name only.** Both mechanisms that would make a declared identity worth having belong to
  a package boundary olang does not have. Within one program every file is the author's to rename, and
  B3b's hard error catches a clash immediately. The problem only becomes real for a third-party library
  that cannot be renamed, and at that point identity and packaging want designing together rather than one
  being guessed at first.

- **The first standard-library module (`io.olang`), and the bug writing it immediately found.** The stdlib
  was picked as the next piece precisely because everything the last several sessions built - generics,
  constructor bodies, D14a run-time-sized fields, defaults, `extern func`, scope names - had never been
  exercised by anything except its own tests. It took one function to find a real one.
  **The module itself worked first try**: `extern func write`/`read`, an `IoError` set, `Stdin/Stdout/Stderr`
  as ordinary globals, `Write`/`Print`/`PrintErr` propagating through `?`. Real output from real syscalls
  in ordinary olang, with no compiler privileges - which is what §11 was built to make possible.
  **Then `FormatInt(n int64, buf mut byte[])` failed, and the cause is a genuine hole.** A `T[N]` argument
  passed to a `T[]` parameter is malloc-and-COPIED (the T11 length-kind promotion), so the callee writes to
  a copy and the caller sees nothing; a `T[expr]` argument is already reference-shaped, so the same
  parameter aliases and works. One signature, two semantics, selected by how the *argument* was declared
  and invisible at the call site:

      func fill(b mut byte[]) int32 { b[0] = 'X'  return len(b) }
      a mut byte[4]        fill(a)   -> a[0] unchanged   (copy)
      sz mut int32 = 4
      b mut byte[sz]       fill(b)   -> b[0] == 'X'      (alias)

  That is verbatim what E12a exists to prevent - *"`&` in a signature would mean 'the caller's own
  instance' at some call sites and 'a copy of it' at others, and a `mut` reference parameter could write to
  a copy the caller never sees"* - and E12a explicitly exempts this case, on the stated grounds that the
  arrMalloc promotion *"changes no instance identity"*. It does: codegen mallocs and copies. The exemption
  rests on a false premise, so the rule closes the hole for `&` parameters and leaves it open for `T[]`
  ones. Left undecided pending the user's call between extending E12a to arrMalloc (consistent, but no
  fixed-size buffer could ever be passed to a `T[]` parameter), making the promotion a `{len, ptr}` view of
  the caller's storage (what the parameter looks like it means, with real §8 lifetime consequences), or
  documenting the copy as intended. `io.olang`'s own test declares its buffer run-time-length to work
  around it, with a comment saying why.
  **A filename's case is part of its interface.** Raised when the user asked to rename `Io.olang` and added
  "no files should ever be capitalized", then immediately retracted it - correctly, since M4 derives an
  alias-less import's alias from the file's base name and M6 makes a capitalized alias re-exportable. So
  `Base.olang`'s capital is load-bearing: it is what lets `worker.olang` re-export it and `runner.olang`
  reach `wk.Base.BaseError` two hops away. Derivable from M4 + M6 but stated in neither, so M4 now says it.
  `io.olang` stays lowercase, since nothing re-exports it.

- **Correction to the entry above: the `T[]`-parameter hole was real, but not where it was reported.**
  The diagnosis there - that E12a's exemption for the arrMalloc promotion "rests on a false premise" - was
  arrived at without trying the obvious alternative spelling. The user asked the obvious question:
  *"why is fill not declared with a ref arg?"*
  It should have been. `func fill(b mut byte[]&)` is the correct signature for an out-parameter, and with
  the marker present E12a fires exactly as designed, rejecting a `byte[4]` lvalue instead of silently
  copying it. So the rule was not exempting the dangerous case at all - the test that found the "bug" had
  simply not asked for a reference.
  **What trying it did expose is a real bug, one level down.** `fillRef(c)` with `c mut byte[sz]` - a
  genuinely reference-shaped runtime-length array, nothing to promote - was *also* rejected. E12a's test
  read `!arg->type.structMAlloc`, and a runtime-length array is reference-shaped through `arrMalloc`
  instead (T11), so it looked like a value about to be promoted. The two forms of "already a reference"
  were not both accounted for. Consequence: an array out-parameter was inexpressible in **either**
  spelling - `mut T[]&` rejected every argument including correct ones, and unmarked `mut T[]` silently
  copied a `T[N]` argument and wrote to the copy. Fixed by testing both forms; `io.olang`'s `FormatInt`
  now takes `buf mut byte[]&`, and shared.olang carries a permanent regression test.
  **One residual, now a design question rather than a defect**: an *unmarked* `mut T[]` parameter still
  copies a `T[N]` lvalue while aliasing a `T[]` one. That is consistent with D9 (unmarked means a copy)
  and there is now a correct alternative spelling for the other meaning, so it no longer blocks anything -
  but "reference-shaped by T11, yet copied on the way in" remains worth revisiting.
  **Also checked and NOT a bug:** `byte[0, 0, 0, 0]` is rejected because an int literal does not narrow to
  `byte` (T6 widens only), and `int32[3]& = int32[7, 8, 9]` is rejected by D16 as a redundant size, not by
  anything to do with the marker. Both were mistaken for compiler faults before being run down.

- **Array passing, settled: D9a (an array parameter must be a reference) and E12's reference widening.**
  The whole confusion laid out as a matrix first, because describing it in prose had already produced two
  wrong diagnoses:

      param       <- byte[4] arg          <- byte[n] arg
      byte[4]        COPY (compiles!)        reject: type mismatch
      byte[4]&       reject: E12a            reject: type mismatch
      byte[]         COPY (compiles!)        ALIAS
      byte[]&        reject: E12a            ALIAS

  Four problems visible at once: two cells silently copy a `mut` parameter's array (write lost, O(n) at
  every call); `byte[]` means COPY in one column and ALIAS in the other, one declaration whose semantics
  are chosen by how the *argument* was declared; there is no "any byte array, by reference" parameter at
  all, which is what `&[u8]`, `[]byte` and `(char*, size_t)` all are; and a fixed-size scratch buffer
  cannot be passed anywhere.
  **The user's two claims, both right.** *"dynamic vs static allocation has nothing to do with
  references"* - T11 promoted a representation fact (a runtime length needs `{len, ptr}`) into a semantic
  rule, so "how long is it" decided "is it aliased". *"passing an array as a copy should be a compilation
  error"* - the only two cells that silently copy are the only two nobody would ever want.
  **Whether the marker should then be implicit** (the user's follow-up, since with by-value parameters
  illegal `&` has only one legal spelling - the same redundancy argument that removed the scope
  declaration slot) **was decided by generics.** A single `func takes(v <T>)` is instantiated today with
  both a struct and an array, and so is `type Box<T>` - both verified, not assumed. An implicit rule would
  make that function's calling convention depend on its type argument, and E12a would reject some
  instantiations and accept others for a reason nowhere in the function's own text. The alternative
  offered - forbidding arrays as type arguments - would remove a working capability (`Vec<byte[16]>`) to
  save a sigil, and is the one option that is hard to reverse.
  **What shipped:** D9a rejects a by-value array parameter (`extern-param`s exempt - X3 marshals to a raw
  pointer, so no copy exists to prevent); E12 gained `T[N]&` -> `T[]&` as a widening that keeps the
  pointer and materialises the statically-known length. That second half was already *accepted* by
  OperandFitsType and emitted **invalid IR** - `llvmType` of a `T[N]&` is a bare `ptr`, which
  cgPromoteFixedToRuntimeLength's element-copy loop then GEP'd as if it were an `[N x T]` aggregate. Found
  by writing the first test of the new rule.
  **Migration was three signatures** (`takesExactlyThree`, and io.olang's `Write`/`Print`/`PrintErr`) plus
  one caller declaring its array as a reference. `make verify`: 110/13/12/3.
  **Left open and recorded rather than fixed:** D13 still rejects `a mut byte[64]&`, so a zero-filled
  fixed-size buffer that can be passed somewhere is not declarable. D13's reason is about a reference
  nested inside a zero-filled aggregate having no valid zero value; a declared type that is *itself* a
  reference to a compile-time-sized array is a real allocation with a real zero value, exactly like the
  `T[expr]` form already allowed. Relaxing it is what would let `io.olang`'s scratch buffer stop being
  run-time-sized for no reason.

- **`Point&s&a` rejected: one reference position per array level, and no reference-to-a-reference.**
  Found while answering three questions about the reference model. T24 gives a `type-ref` two marker
  positions - before the array suffixes (the element type) and after them (the array as a whole) - and
  says that with no suffix at all "the two positions describe the same type". It did not say what happens
  when both are written anyway, and the answer was: silently accepted, with one of the two scope tags
  dropped. A discarded scope tag is a discarded safety claim, so it is now a compile-time error rather
  than something resolved by precedence.
  The user's framing is the rule: *"I do not want double references, it makes sense with arrays where for
  every array there might a ref."* So a type carries one reference level per array level plus one for the
  element type, and nothing more. `Point&&` cannot even lex, since `&&` is the logical-AND token.
  **Two findings recorded but not acted on**, both from the same investigation. A per-level marker form
  (`int32[]&[]&[]&`, one `&` after each suffix rather than only two positions overall) does **not** parse
  today - the grammar has exactly two marker slots however many suffixes there are - though the user
  observed it "actually means something useful". And `p = q` through a `mut Point&` parameter is currently
  a **silent no-op**: `p.x = 42` writes through and the caller sees it, but whole-value assignment rebinds
  the callee's own copy of the pointer and is lost. Since `mut Point&` means "the caller's instance,
  writable", that should either write through memberwise or be rejected - silently rebinding a local is
  the one option that is neither.
  **Also settled: `int32&` stays rejected.** olang's `&` bundles heap indirection, a scope tag, and
  identity (`==` on a reference is pointer identity, T26) - the third is wrong for a primitive. The real
  gap it exposes is that olang cannot return two values at all, which wants multiple return values rather
  than a weakening of what `&` means. Recorded as a future problem at the user's request.

- **`p = q` through a reference parameter: kept, not rejected (S4a).** The last of the three reference
  questions, and the one where two successive proposals of mine were wrong.
  **First proposal - write-through** (copy q's contents into p's instance, so the caller sees it) - was
  defeated by the user's own question: *"but then comparison on references should also be field-wise, is
  that really smart? especially for arrays that sounds really not smart."* Exactly right. `x = y` must
  imply `x == y`, and E10 compares references by identity, so write-through would leave the two
  equal-by-value and unequal. Repairing that by making `==` structural costs O(n) on arrays and destroys
  C11's reason for existing: a destructor-declaring type is reference-only *precisely* so that "which
  instance owns this" has an answer, which structural comparison removes.
  **Second proposal - reject it** as a silent no-op - was defeated by the user pointing out it is not a
  no-op at all: *"you probably should keep it even in the local case where the caller doesn't see it. it's
  one less exception and may be useful for some algorithmic tricks."* Rebinding the parameter is a real
  effect inside the function; a reference parameter doubling as a mutable cursor is an ordinary pattern,
  and rejecting it would force a redundant local to be declared from it first.
  **What was actually missing was documentation, not a check.** Measured, the rule is already uniform and
  already right: `=` on a reference overwrites the *pointer* in every position - a local's own, a field's
  (inside whatever instance holds it, visible to every other holder - confirmed by aliasing a field and
  mutating through the other handle), and a parameter's (this call's cursor). The surprise only arises
  from expecting `mut &` to mean "write through everything", when it means "you may write *through* the
  pointer"; `=` replaces the pointer instead. Written up as S4a with a test, and the working tree reverted
  to what it already did. `make verify`: 111/13/12/3.

- **§10's rules renumbered `P` -> `B`, because two sections were both numbering rules `P1`-`P8`.**
  §6.8 Concurrency and §10 Compilation Model had each grown a full `P1`-`P5`/`P1`-`P8` family
  independently, so *every* number in the range named two different rules in one normative document:
  `P3` was both "within one `spawn` block, a `mut &` argument may go to only one task" and
  "`-b <file>`: builds one program", and `P4` was both "a spawned function may not declare an error set"
  and "the root module must declare `main`". In prose this passed unnoticed because the surrounding
  section disambiguates; in **code comments it did not** - `main.c`'s `//P3:` and `semantic.c`'s `//P3:`
  sat in different files with no section around them, meaning opposite things.
  Found by trying to add a rule to the concurrency section during the data-race work and discovering there
  was no free number to add it under: 1 through 8 were all taken twice over. Two new collisions were about
  to be created rather than one inherited, which is what forced the fix instead of a note.
  **§10 moved rather than §6.8** on reference count: the concurrency family is cited about thirty times
  across `codegen.c`, `semantic.c`, `syntax.c`, `chan.olang` and `shared.olang`, much of it in prose the
  language's own corpus explains itself with, against roughly a dozen for §10 - and `P` reads as
  "parallelism" where §10's rules are about turning source into a program and running it, which `B`
  (build) names at least as well. Purely mechanical: rule labels and every reference in `spec.md`,
  `codegen.c`, `codegen.h`, `errmsg.h`, `main.c` and this file. No rule's content changed.

- **Run-time bounds checking removed from array indexing (E16); slices keep theirs (E16b).** User-directed,
  to bring the language back toward C-like performance after a run of memory-safety work, and taken with
  the measurement already in hand rather than on instinct.
  **What the measurement said.** Against C on identical work, `clang -O3` on both sides, 160M accesses:

      sequential (counted loop)   olang 0.04s   C 0.02s    20ms apart - under a cycle per access
      data-dependent gather       olang 0.61s   C 0.40s    ~50% slower

  So the check was free exactly where the optimizer could bound the index - a counted loop, a constant
  index, anything LLVM can hoist - and expensive exactly where it could not. It was therefore buying real
  safety in one shape and nothing but code size in the other, and the one shape it cost in is the one
  serious programs spend their time in. After removal, olang and C are indistinguishable on the gather
  (0.50/0.51 vs 0.51/0.49, interleaved medians of 7), and no bounds branch survives in the emitted loop.
  **What was kept, and why it is not inconsistency.** A *slice*'s bounds are still checked. A bad index is
  one wrong access at the point it is written; a bad slice manufactures a value that stays wrong for as
  long as it lives, and can be returned, stored in a field, passed on and read a million times, so the
  failure surfaces arbitrarily far from the mistake. The slice check is also cheap precisely where a
  per-index check is not - it is paid once per slice expression, never per element access - so removing it
  would buy nothing measurable and cost the `try a[lo:hi]` feature (E16c) outright. The compile-time check
  was kept for the same reason: a constant index into a fixed-size array is settled where it is written,
  which is most indexing into fixed-size arrays, and it costs nothing at run time either way.
  **`try a[i]` (E16d) was removed as a consequence, not as a separate decision.** It opted out of the
  run-time check by propagating the bare error instead of aborting; with no check left there is no failure
  to detect, so it now falls through to the ordinary "try requires a direct call to a fallible function".
  Two corpus sites and one test went with it. `try a[lo:hi]` is untouched.
  **The honest cost, recorded rather than implied.** The argument that added the check is still true -
  `a[100000] = 7` and `a[-4000] = 7` compile, run, and corrupt whatever is there - it is simply no longer
  being acted on. An out-of-range index is now one of exactly *two* places in the language where a program
  can reach storage it does not own, the other being `extern func`, and §8's guarantees are stated as
  holding for programs that do not index out of range, exactly as they are already stated as holding for
  programs that do not declare an incorrect prototype (X1a). E16d is now the rule that says so.
  One pleasant side effect: `shared.olang`'s own E16b comment ("a slice's bounds ARE checked, unlike an
  ordinary index") and §5.11's aside about "E16's own unchecked array indexing" had both gone stale when
  the check was added, and are correct again without being touched.

- **`null` (T2a/T2b), and the initialization rules that come with it (D13/D13a/D13b).** User-directed, and
  the second half of the move back toward C-like performance that removing the index bounds check started.
  **`null` needed no new type and no new operator**, which is most of why it was cheap. It is a literal with
  no type of its own that adapts to whichever *nullable* type it meets - the same mechanism T6 already uses
  for numeric literals, reusing the same two adaptation points (`OperandFitsType` for assignability,
  `OperandBinary` for a comparison against a non-literal sibling). `==` on a reference is already pointer
  identity (E10), so `p == null` fell out with nothing written for it.
  **All-zero bits is what makes the rest compose**, and there was no argument against it: address zero is
  unmapped on every mainstream OS, so a null dereference traps deterministically instead of corrupting - the
  one case where the dangling-pointer class degrades into something diagnosable. From that one choice:
  a BSS global containing references is all-null for free, `= 0` and `= null` on an array of references are
  the same instruction, and a null `T[]` is `{ 0, null }`, so `len(null)` is `0` and it reads as genuinely
  empty rather than needing a special case.
  **Initialization came out as three rules, and the third removed the need for a fourth keyword.** The user
  asked for `= zero`/`= null` to zero a local array and then asked whether both keywords were needed and
  whether arbitrary expression initialization would work instead. The second question answers the first:
  letting a declared-size array take a **fill** from one value of its element type (D13b) makes `= 0` and
  `= null` say what `zero` would have said, using vocabulary the language already had - and `null` has to be
  an expression regardless (`p == null`, `return null`), where `zero` would only ever have appeared in
  declaration position. One new keyword instead of two. `hist mut int32[256] = -1` is a free consequence
  rather than a separate feature.
  **The fill form is purely additive**, which was checked before it was designed rather than assumed:
  `T[N] = <anything>` was a compile error in *every* form beforehand, so no declaration changes meaning, and
  a fill is told from whole-array initialization by the initializer's own type - the element type versus the
  array type, different types under T25a.
  **Globals keep the zero because BSS is free.** The user's own call, and the measurement backs it: the
  loader zeroes the page, so there is no memset to remove and nothing to buy. The cost being targeted exists
  only for locals, which is exactly where the exemption now applies.
  **D13 was the opposite rule, and its entire stated justification was the absence of null** - it rejected
  any no-initializer array whose declared type contained a reference at any depth, on the grounds that a
  zero-filled reference was "an invisible dangling pointer, not a safe default" and a zero-filled `T[]` a
  "phantom empty array that never went through real allocation". Both objections end at T2a, so the rule is
  gone, taking `typeContainsReference`, `ZERO_FILL_CONTAINS_REFERENCE`, and G18's per-instantiation re-check
  of it with it. The three shapes it used to reject are ordinary declarations now.
  **What null does not fix, recorded rather than implied:** D13a and T2a pull in opposite directions on
  arrays of references. A *zero-filled* one is all null - safe, testable, 8 bytes a slot. An *uninitialized*
  one holds arbitrary bit patterns, which is strictly worse than null and undetectable. The user accepted
  this knowingly ("maybe we will make local ref arrays always nulled in the future"), and `= null` or a
  global is what makes those slots safe today.
  **Three things fell out for free, and one broke.** Free: `null` works as a declared default
  (`func f(p Point& = null)`), since E4 already admits literals there; O13 needed no change, because a bare
  `&` return type is rejected on what the *caller* receives, which needs a nameable scope whatever value is
  returned; and `try a[i]` (E16d), deleted an hour earlier for having no check to opt out of, came back
  unchanged as the opt-*in* once indexing was unchecked by default - the same syntax, the same bare error,
  the meaning inverted, which also restores a symmetry with E16c where `try` means one thing throughout:
  "give me the failure as an error I handle".
  Broken, and found by writing the test rather than by reasoning: **`x := null` type-checked and crashed
  codegen** with a `BASETYPE_NULL` local. `:=` reads the declared type off a literal, and `null` is
  precisely the literal that writes no type - the one place its "adapts to anything" nature has nothing to
  adapt against. Rejected at `OperandTypeIsWrittenHere` now, with D15's ordinary diagnostic.
  **Corpus cost: five tests, all one cause** - local arrays no longer zero-fill, so `b mut byte[4]` followed
  by `assert(b[2] == 0)` and four like it needed `= 0`. That this was a *silent* behaviour change rather
  than a compile error was known in advance: it was the argument for inverting the default (Zig's
  `undefined`), which was put to the user and declined. `make verify`: 190/19/13/4/1.

- **A constructor field follows the local-variable initialization rules exactly (C2a/C5, D14a).**
  User-directed, and a correction to something the design record already said but the implementation never
  carried through: *"constructor fields should work like normal function variables, because that is in
  effect what they are, except that they aren't destroyed when the function exits."* C2a has said "the
  fields **are** the constructor's own top-level locals" since the constructor body became an ordinary
  statement block, and the original framing that produced that rule was the user's own - "basically
  functions whose local variables are exported into the scope they are constructed on".
  **Two exceptions existed and both are gone.** C5 made a field with an explicit type and no initializer a
  compile-time error ("there is no value for it to take") - which stopped being true the moment D13 gave
  every type a zero value and `null` gave references one. And D14a's `T[expr]&s` field was *always*
  zero-filled, with no `= v` form to ask for anything else, so it was the one declared-size array in the
  language that did not follow D13a. I had kept that one deliberately in the previous change, on the
  grounds that a field had no fill syntax - which was circular, since the fix was to give it one.
  **The cost was almost nothing, and the reason is structural**: a `ctor-field` already lowers to an
  ordinary `STATEMENT_VAR_DECL` appended to the synthetic constructor function's body, so `cgVarDecl` -
  which already implemented D13/D13a/D13b for locals - needed no change at all. Every special case was in
  the semantic pass, and removing them made that chain a copy of `buildVarDeclStmnt`'s, which is the point:
  the two really are one rule.
  **The whole corpus passed unchanged**, `chan.olang` included, which is the useful evidence that nothing
  was relying on field zero-fill. `Chan<T>`'s ring buffer is gated by its own `count`, and its
  `pthread_mutex_t`/`pthread_cond_t` byte arrays are fully written by `pthread_mutex_init`/`pthread_cond_init`
  before any read - so the zeroing those fields used to get was never load-bearing.
  A field still differs from a local in exactly one respect, which is the one the user named: it outlives
  the call, being assembled into the constructed value. `make verify`: 191/19/13/4/1.

- **Two real data races in the concurrency runtime, both fixed; three more found and left standing.**
  The user asked for "the data races" after the memory-safety work. The notes listed three known holes; five
  exist, and probing found the two that are genuine *memory* corruption rather than lost updates.
  **The arena race (P2) was the serious one.** P2 claimed "allocation is per-thread, so tasks never contend
  for one arena" - false the moment a task's parameter carries a `&s` tag, since a scope is passed as a
  hidden pointer argument. Two tasks then bump one cursor with no synchronisation: they are handed the same
  chunk, write over each other, and prepend two chunks onto one list head. A twenty-line repro aborted
  inside glibc's own malloc consistency assertion in four runs out of five.
  **The fix is a runtime one with no language restriction**, which was worth insisting on: the alternative
  was a compile-time rule ("at most one task may allocate into a given scope"), and that would have
  forbidden a perfectly ordinary parallel-producer shape. Instead each task gets a private, empty arena
  standing in for the scope it was handed, and the spawner folds each one back after the join. **Nothing is
  copied** - the two chunk lists are relinked, one `next` field and one `head` field - and that is a
  correctness requirement rather than a speed trick, since the entire reason a task allocates into the
  spawner's scope is that the spawner will hold references to what it built. Copying would move them.
  It was cheap for a structural reason worth recording: **the allocator was already a chunk list with a
  recorded tail**, because `__olang_scope_close` splices a whole scope onto the free pool in O(1). Merging
  is that identical splice with a different destination. Had an arena been one contiguous `mmap` with a
  single cursor - the textbook shape - merging really would have meant copying, and the compile-time
  restriction would have been the only option.
  **Measured, because "isn't that a lot of overhead?" deserved a number rather than an argument.** Time:
  indistinguishable - 40,000 tasks, medians of 7, 1.86s/1.87s against 1.88s/1.90s before. Memory: ~46 bytes
  per task over 32,000 tasks, far below the 4KB/task predicted, because the sub-scope's chunk is recycled
  with the parent's rather than dropped. And the cost is *zero* for a callee that names no scope variable,
  which a bare `&` parameter does not (O4a) - 12 of the corpus's 20 tasks, every pre-existing one included.
  **The cross-thread longjmp (P6) was the second.** `@__olang_jmp_target` was a plain global, so a failed
  `assert` on a task thread restored the *spawner's* stack pointer onto the task's thread while the spawner
  was still parked in `pthread_join` on that same stack. Two threads on one stack; it appeared to work, by
  luck. `thread_local` makes the target null on a task, so the assert aborts - which is what S18 already
  says happens where there is no recovery point, and what P4 already argues for errors. Making the abort
  path print to `stderr` rather than `stdout` came out of the same test: stdout is block-buffered when it
  is not a terminal, so `abort()` was discarding the message exactly when output was being captured.
  **Three holes were found and deliberately left standing**, each needing a design decision the user has
  not yet made: P3's root comparison is defeated by ordinary reference aliasing (`b mut Tally& = a` gives
  two roots for one instance, and two tasks may then write it); **globals are outside P3 entirely**, since
  a task reaches every global without any of them appearing in an argument list, and a two-task counter
  loses updates reliably; and `shared` remains an unchecked promise, accepted on non-struct types and
  never propagating.
  **And one memory leak, pre-existing and unfixed**: a spawned thread's `@__olang_chunk_pool` is
  `thread_local`, so when the thread exits its chunks are never returned to anything - ~4KB per task that
  allocates at all, measured at 132MB for 32,000 tasks against 1.6MB for the identical work done
  sequentially. The sub-scope change slightly reduces it, since those chunks now migrate to a live thread.
  `make verify`: 186/19/13/4/1 at the time.

- **Every block is a scope (O2/O2a/O2b).** User-directed, and arrived at by the user pushing back twice on
  positions I had argued for badly.
  **Where it came from.** Three separate conversations - a `Mutex<T>` guard, the guard's lifetime, then
  `shared` variables as compiler-mutexed cells - all terminated at the same missing feature: a scope
  smaller than a function. A lock guard is a reference that must expire *while the data lives on*, and
  olang's scopes express lifetime, so with the function as the shortest nameable region there was nowhere
  to put "valid until the unlock". But the feature turned out to buy two things that have nothing to do
  with threads, and those are what justified it: an allocation in a loop body accumulated for the whole
  call (the arena never frees individually), and a destructor-bearing value declared in a loop was not
  destructed until the function returned.
  **Two positions of mine the user corrected.** First I argued for `&` continuing to mean the *function's*
  scope with an opt-in `scope s { }` block, on the grounds that you would otherwise need to name the
  function scope from inside a block and could not. The user's reply - *"if we don't need to reference the
  function scope, lets just make & mean the current scope"* - pointed out that I had already disproved my
  own premise two messages earlier: a temporary is allocated into the **target's** scope (E12c), so a value
  built in a block that must outlive it gets that from whatever it is stored into, and never needs to name
  anything. Second, I claimed the cost was a broken pattern - a named intermediate in a loop stored into a
  longer-lived array. The user asked *"why would this pattern ever be needed?"* and the corpus agreed with
  them: every array of references in it is filled with a literal of temporaries or from parameters, and
  even the one case I thought irreducible (two containers, one instance) rewrites to `a[i] = Box(i)`
  followed by `b[i] = a[i]`.
  **The breakage was measured before the feature was built**, which is what made committing to it cheap. A
  block-local reference can escape only by assignment, by being passed to a function that stores it (O22),
  or by being returned - and O13 already closes the third, since a bare `&` return type is rejected and a
  block scope cannot be named in a signature. Instrumenting the other two across every `.olang` file:
  **21 reference-to-reference assignments, all at equal depth; zero calls with reference arguments at
  differing depths.** Both probes were validated against constructed breaking cases first, so the zero was
  a real one rather than a probe that never fired.
  **The checker change is one fact.** O2a: inner block scopes < outer block scopes < the signature's scope
  variables. `struct type` gained a `scopeDepth` that a local declaration stamps from the checking
  context's block depth, and `scopeOutlives` compares depths when both sides are bare. The trick that kept
  it additive is that **depth 0 means "not a block tag"** - only a local declaration stamps a real depth -
  so a bare `&` on a parameter, field or return type behaves exactly as before, and O4a (a parameter's bare
  `&` is the caller's, not own) needed no special case at all. Getting that wrong first rejected most of
  `chan.olang` and `io.olang` in one go, which is how it was found.
  **One codegen trap hit, one avoided.** Hit: the scope header must be alloca'd in the **entry block**, one
  per nesting depth, not at the point the block starts - an alloca inside a loop grows the stack by 24 bytes
  per iteration and segfaulted at two million, which is exactly the workload the feature targets. One slot
  per depth suffices because only one block at a given depth is open at a time in a frame, and closing
  resets the header.
  Avoided, and worth recording *why* it was free: a bare `&` must resolve to **the depth its type
  recorded**, never to the innermost open block - `r = Box(7)` inside an `if` must allocate where `r` was
  declared, or the value dies at the closing brace while `r` still points at it, which is silent corruption
  rather than a crash. Nothing had to be restructured for that, because **every promotion site already read
  the allocation scope off the TARGET's type** (`dstT.scopeParam`) rather than from ambient context. That is
  E12c's general rule - a temporary has no storage to borrow, so it is allocated into the target's scope -
  and it long predates block scopes. What block scopes changed is only that "the target's scope" and "the
  current scope" stopped being the same thing: within one function there had only ever been one arena, so
  the two readings gave identical answers and the distinction was unobservable. Adding a depth to the type
  was therefore the whole fix, and no decision point moved. A test churns the arena after the block and
  reads `r` back, since nothing else would catch a regression here.
  A third bug, found by the corpus: **test bodies need their own per-depth scope pool.** They are emitted
  through a different path from functions, so they inherited the previous function's pool and referred to
  `%tN` names defined in another function - invalid IR, caught by the verifier rather than by anything
  subtle.
  **What made unwinding easy is that olang has no `break` or `continue`**: `return` (plus `error` and a
  propagating `try`, both returns) is the only way out of a block, and all seven of those sites already
  went through `cgCloseOwnScope`, which now closes each open block scope innermost-first.
  `make verify`: 194/19/13/4/1.

- **`break` and `continue` (S11/S11a).** User-directed, and the direct sequel to block scopes: S11 used to
  read, in its entirety, "There is no `break` or `continue` statement", and the block-scope work had just
  leaned on that - `return` being the only way out of a block is what made unwinding a single existing
  function. Adding them re-opened exactly that question.
  **Parsing and checking were nearly free.** Both are bare statements with the same shape as `done`/`crash`,
  so the grammar is two productions copied. The only semantic rule is that they must sit inside a loop
  body, which is one inherited `bool` on the checking context - inherited through `if`/`match`/`try` blocks,
  because the rule is about the enclosing **loop**, not the enclosing block, and deliberately cleared for a
  `spawn` block, whose statements are calls rather than a continuation of the enclosing body.
  **S11a is the half that had to be designed.** Both statements branch *past* the closing brace that would
  have closed the iteration's block scope, so each has to close every scope it leaves itself, innermost
  first, down to and including the loop body's own. Recording `blockSlots.len` when the loop starts makes
  that a two-line loop at the branch site - the same shape `cgCloseOwnScope` already used for `return`, just
  stopping at the loop's mark instead of the function's. Without it, a `continue` past an allocation leaks
  that iteration's chunks for the rest of the call, and any destructor registered in the abandoned part
  never runs.
  Both are tested directly rather than assumed: two destructor-bearing handles are constructed per
  iteration, the second inside a nested block the `continue` abandons, and all of them are destructed
  (`continueUnwinds(4) == 8`); a `break` after three constructions destructs exactly three. Measured, four
  million allocating iterations where two out of three `continue`: **1.7MB peak**, which is the same as a
  loop that never continues.
  **One structural change:** a `for` gained a `for.post` label for `continue` to land on. The
  post-expression used to be emitted inline after the body with nothing to branch to, so `continue` had no
  way to advance the loop rather than skip it. A `do` needs no equivalent - its condition already has one.
  LLVM folds the extra label and branch away.
  `make verify`: 196/19/13/4/1.

- **A runtime array length is checked (D14b).** Found by the user asking a survey question rather than by
  chasing a bug: *"do we ever abort in a place where we could return an error instead? like for slices
  maybe?"* The literal answer was "only slices, and they already have `try` (E16c)" - but auditing every
  termination path to answer it turned up two places that neither abort **nor** return an error.
  **The one that was a bug.** `a mut int32[n]` with `n < 0` computed a negative byte count. The allocator's
  capacity test is an **unsigned** comparison (`icmp uge`), so a negative size reads as enormous: it takes
  the fresh-chunk path, `malloc`s `24 + (-16)` = 8 bytes, records the negative value as the chunk's
  capacity, and every later allocation from that scope bumps straight past the end of it. Reproduced as
  `malloc(): corrupted top size` and SIGABRT, two allocations after the actual mistake - the worst kind of
  failure, arbitrarily far from its cause. A negative *constant* was already rejected ("invalid array
  size"); only the runtime path was open, which is why it had never shown up.
  **The check is one compare per allocation**, and that is the whole justification. It is the same cost
  shape as a slice's bounds (E16b, paid once per slice expression) and the opposite of an index's (E16,
  paid per element access), which is what the measurement earlier in this session settled at about 50% on a
  data-dependent gather. So the language now draws one consistent line: a check whose cost is
  per-construction stays on, a check whose cost is per-operation is off, and `try` converts either into an
  error where the caller wants to handle it.
  **Still open, and deliberately not fixed here: division and modulo by zero are undefined behaviour and
  the spec does not mention them at all.** `sdiv i32 x, 0` is immediate UB in LLVM, so the result is poison
  rather than a trap - the first probe produced a program that took a branch requiring
  `10/0 + 10%0 == 12345`. That is the strongest remaining candidate for the same treatment, and the cost
  argument is better than anywhere else in the language: an integer divide is already 20-40 cycles, so a
  compare beside it is noise.
  `make verify`: 196/19/13/4/1.

- **`crash` renamed `fail`, and `done`/`fail` now end a test rather than the process when one is running
  (S16/S16a/S16b, S18/S18a/S18b).** User-directed, from a naming observation that turned out to be about
  more than the name: *"crash sounds like an abort and maybe we should use fail instead to indicate its
  exiting but with an error."* That is exactly right - `crash` ran `exit(1)`, an orderly exit the program
  chose, while the thing that genuinely aborts (a failed assert, an out-of-range slice bound, a negative
  array length) is reached only by a guarantee breaking and cannot be written at all. The two were blurred
  by one word sitting on the wrong side of the line.
  **The second half was the user's too, and it is better than my objection.** I had raised that `fail`
  would read wrong inside a `test { }`, since it would kill the run rather than fail the test. Their reply -
  *"can't we make done and fail mean test passed and test failed in tests only... they read like small
  programs anyways"* - inverts that into the feature: `done` ends a test as passed, `fail` ends it as
  failed, and outside a test run both keep their process meaning.
  **It is one rule, not a special case, because `assert` already worked this way** - and checking that
  turned up a spec error. S18 said a failed assert is recoverable "inside a `test { }` block"; the
  implementation keys off a global `jmp_target`, so it is **dynamic**: a failing assert in a *helper called
  from* a test marks that test failed and the run continues. Verified. `done`/`fail` follow the same
  dynamic rule, so a helper's `fail` and a helper's `assert(false)` agree, and S18's wording is corrected
  to "while a test is running".
  It also filled a real gap nobody had noticed: **a test had no early exit at all**. `return` in a test
  body is rejected with "value doesn't match function result type 'i32'", the test's compiled shape leaking
  into the diagnostic.
  **The mechanism cost almost nothing**: the harness already does `setjmp` per test and a failed assert
  `longjmp`s with 1. `fail` is that same jump; `done` jumps with 2 and the harness records a pass. A
  `switch` on the `setjmp` result replaced the old `icmp eq 0`.
  **No `abort` statement, and that is now a recorded decision (S16b)** rather than an absence - it would
  differ from `fail` only in leaving a core file, so it would be a third exit distinguished by nothing a
  program should be choosing between.
  **Each runtime check names itself now (S18a).** All three printed "assertion failed", including the two
  that are not assertions. The shared constant was also `[17 x i8]` for sixteen characters plus a newline -
  no NUL - so `fputs` and, before it, `printf` read past the end of the array looking for one.
  **And one bug the work exposed:** a body ending in `done`/`fail` produced invalid IR. `cgCloseOwnScope`
  emitted its scope closes unconditionally, so they landed after the `unreachable` that terminates the
  block, and the label that followed had no terminator before it. It now returns early when the block is
  already terminated - which is correct anyway, since those closes would be unreachable.
  **What could not be delivered, and why it is now understood rather than assumed.** The plan included
  closing scopes on the recovery path, fixing the long-standing "destructors do not run for a failed test"
  gap, recorded until now as "a known, deliberate v1 simplification". It cannot be done in the harness.
  LLVM does not model `longjmp`'s control flow: from the landing block the only edge in comes from before
  the `setjmp`, where those scopes are still empty, so it proves any close emitted there is a no-op and
  deletes it - destructors included. Demonstrated by compiling identical IR at `-O0`, where the destructors
  ran, and `-O3`, where they did not. A call-site `noinline` on the close fixed the test's own scope but
  not a nested block's; making the close's list-head reads `volatile` fixed neither. The only correct fix
  is to unwind **before** the jump, which means the runtime must know which scopes are open - a push and a
  pop on every scope open and close, i.e. on exactly the per-block path O2 had just made hot. That is a
  real trade, so it is recorded as S18b with the reasoning rather than attempted cheaply.
  `make verify`: 199/19/13/4/1.

- **Integer division and modulo are checked (E6a).** The second half of the audit that produced D14b, and
  the user's own follow-up: having asked where the language aborts and whether it ever aborts where it
  could return an error, the answer turned up two places that did neither - a negative array length, fixed
  first, and this.
  **Two operand pairs, not one.** The obvious case is a zero divisor. The second is the most negative value
  divided by `-1`, whose true quotient is one past the type's maximum; it was found by asking what else
  `sdiv` leaves undefined, and it **segfaults** rather than producing poison. `%` has both problems too:
  `srem` is the same instruction family and traps identically, even though `MIN % -1` is mathematically
  `0`.
  **The zero case is the more dangerous of the two**, because it does not fail. `sdiv i32 x, 0` is
  immediate UB in LLVM, which means poison, which means the optimizer may fold any *use* of the result to
  anything at all. The first probe compiled a program that took a branch requiring
  `10/0 + 10%0 == 12345`, and a second one exited 0 having computed nothing. A fault would have been
  better; silence is what made this worth fixing rather than documenting.
  **Each failure names itself** (S18a), which meant splitting the check into two branches rather than
  or-ing the conditions together - a small cost for a message that says which of the two happened. A
  constant zero divisor is settled at compile time instead, the same split E16 makes for a constant index.
  Float division is deliberately untouched: IEEE 754 defines division by zero as an infinity and `0.0/0.0`
  as a NaN. Those are values, and a test asserts it.
  **This is the cleanest illustration of the line the language now draws on checks.** Removing the
  per-element index check earlier in this session was justified by measurement - about 50% on a
  data-dependent gather. An integer divide is already tens of cycles, so the same kind of compare beside it
  does not register. The rule is not "checks are expensive" but "checks whose cost is proportional to the
  work are free, and checks whose cost dwarfs the work are not".
  `make verify`: 201/19/13/4/1.

- **Every path must return (D10a), plus `abort` and `unreachable` (S16c/S16d).** The user pushed back on my
  refusal to add `abort`, and was right twice.
  **First correction.** I had argued the OS abort status is meaningful "precisely because one of them
  cannot be written". The user: *"but assert(cond) can still break the 'the program broke' guarantee."*
  Exactly - `assert(false)` is writable and aborts, so the distinction I was defending did not exist. The
  argument was wrong on its own terms.
  **Second, and more valuable: asking what `unreachable` would be FOR turned up a real hole.** A function
  declaring a result type that falls off the end compiled silently and returned a zero value - `0` for a
  number, an all-zero struct, and a **null reference** for a reference return. Three shapes, no diagnostic
  anywhere. The sharpest case was a `match` over a choice where every clause returns: S13a had already
  *proved* the match exhaustive and nothing used that fact to conclude the function returns.
  So the order was: fix the hole, and then `unreachable` exists because the fix needs it.
  **The analysis is structural on purpose.** No dataflow, no constant folding: `return`/`error`/`done`/
  `fail`/`abort`/`unreachable` leave, an `if` leaves when both sides do, a `match` when every clause does
  and it is exhaustive or has a leaving `nomatch`. **A loop never counts**, even `do { return 1 } while c`
  - `break` (added earlier this session) makes "the body leaves" and "the loop leaves" different questions,
  and answering the second needs a reachability pass the rule deliberately lacks. The cost of that is
  writing `unreachable` after an infinite loop, which is the trade being made rather than an oversight.
  **One corpus function failed, and it was the rule's bug rather than the corpus's**: a selected
  `match <T>` arm (G15) collapses to an `if` whose condition is a literal `true` with no `else`. Teaching
  the rule to read the condition - rather than special-casing type matches - fixed it and also covers a
  hand-written `if true { return 1 }`.
  **`unreachable` is checked, never assumed.** This is the one design decision in it: C++'s
  `std::unreachable` and Rust's `unreachable_unchecked` are undefined behaviour, used to let the optimizer
  delete the path. Adding a keyword whose purpose is to *introduce* UB, in a session that spent its length
  removing UB from indexing, array lengths and division, would have been incoherent. A wrong `unreachable`
  is a diagnosed abort with a message saying so.
  **And `abort` earns its keyword for the user's own reason**: `assert(false)` already produced exactly
  this behaviour while saying nothing about why. `abort` names the intent, `unreachable` names a different
  intent, and both lower to the same failed-check path - recoverable per-test while a test is running,
  which keeps them consistent with the `assert` they replace.
  `make verify`: 202/19/13/4/1.

- **Shift amounts (E8a) and float-to-integer conversions (E26a) are checked, completing the class E6a
  started.** The user asked to "find all the division-by-zero-like cases", which turned the earlier
  one-off into a question with a definition: **which operations does LLVM leave undefined, rather than
  merely wrapping?** That distinction is the whole audit, and it cuts cleanly.
  **Wrapping, so left alone**: integer overflow on `+ - *`, and integer narrowing conversions. Both are
  defined, both are documented (T6), and both produce an answer - the wrong one if you did not want it, but
  an answer. **No defined result, so checked**: division and modulo (already done), shift amounts outside
  `[0, width)`, and float-to-integer conversions of values the target cannot hold.
  **The shift case was silent, like the divisor.** `shl`/`lshr`/`ashr` past the width is poison in LLVM;
  the probe compiled and exited 0 having computed nothing meaningful. The bound is the *shifted* operand's
  width, not the amount's own, since E5 lets the two operands differ in type - a detail easy to get
  backwards.
  **The conversion case was worse: it crashed.** `int32(999999999999.0)` segfaulted with no message at all,
  and so did `int32(nan)` and `int32(inf)`. One pair of ordered comparisons catches all three, because an
  ordered compare against NaN is false - so the range test doubles as the NaN test for free. The bounds are
  the target's bounding powers of two, exactly representable in both float types, which costs at most a
  fractional value at each extreme that would have truncated into range.
  **The asymmetry with integer narrowing is the point, not an inconsistency.** `byte(300)` wrapping to 44
  is defined and documented; `int32(1e12)` has no defined result at all. A test asserts both, side by side,
  so the difference is written down in the corpus rather than only in the spec.
  **And a process failure worth recording: I hand-counted LLVM string-constant lengths and got it wrong
  twice**, both caught by the IR verifier rather than by review. The fix was to stop counting - a pass now
  recomputes every `@__olang_msg_*` array length from its own text, so all nine are derived rather than
  asserted. The bug that started this, a `[17 x i8]` holding sixteen characters and a newline with no NUL,
  was the same mistake made once before.
  `make verify`: 205/19/13/4/1.

- **The shift (E8a) and float-to-integer (E26a) runtime checks were removed, and the rule behind it is now
  explicit: a runtime check that costs per operation does not belong in this language.** User-directed, and
  stated flatly after I kept measuring: *"I dont care if you think a bounds check might be efficient, it
  should never be done."*
  **The measurements are worth keeping even though the decision does not rest on them.** On loops doing
  nothing else, 1.2G operations each: the shift check cost ~30% (0.39s against C's 0.30s), and the
  conversion check **3.3x** (0.63s against 0.19s). The second number is the instructive one, because the
  cost is not the compare - it is the **vectorisation the branch prevents**. C emitted four `cvttpd2dq`
  instructions, converting two doubles at a time; the checked version emitted zero vector conversions.
  My cost argument for these ("bounded work with a single compare beside it") was wrong by more than 3x,
  and wrong for a reason I had not considered at all.
  **Also measured, and worth recording: the hardware does not save you.** Only integer division traps -
  SIGFPE, for both the zero divisor and `MIN / -1`. `1 << 32` yields `1` on x86, because the count is
  masked to the operand width, and other architectures differ; `int32(1e30)` and `int32(nan)` both yield
  the most negative value with the invalid-operation flag set but masked. So the unchecked shift and
  conversion are silently wrong rather than fatal. And even division's trap is not dependable under
  optimisation: the same C program gave SIGFPE at `-O0` and SIGILL at `-O2` (folded to `ud2`), and an
  olang probe under LLVM exited 0 having computed nothing at all.
  **What was kept, and why it is not an inconsistency.** Compile-time checks cost nothing at run time and
  stay - a constant zero divisor and a constant out-of-range shift amount are still errors where they are
  written. E6a's division check stays because it is paid against a divide already tens of cycles deep.
  E16b's slice bounds and D14b's array length stay because they are paid **per construction**, never per
  element access - which is the same line that removed the per-element index check earlier in this session.
  `make verify`: 205/19/13/4/1.

- **The integer division checks were removed too (E6a), completing the rule.** User-directed: *"drop both.
  we don't mess with these low level operations."*
  **This is the case that shows the rule is a principle rather than a cost tradeoff.** The division check
  had measured at **parity** with C - 0.28s against 0.29s over 240M divisions - and the reason was
  specific: x86 has no packed integer divide, so a division loop does not vectorise, and the branch that
  cost 3.3x on float conversions had nothing to take away. It was removed anyway. Where a check belongs is
  now decided by what it is paid *per*, not by what it happens to cost on one machine.
  **What the two undefined shapes were.** Only one of them was a bounds check, which is what the user asked
  about: `MIN / -1` checks that the *result* fits, since the true quotient of `-2147483648 / -1` is one
  past `int32`'s maximum. A zero divisor is not a bounds check at all - nothing is compared against a
  range; the operation simply has no result. `%` carried both, `srem` being the same instruction even
  though `MIN % -1` is mathematically `0`.
  **They are also the two undefined shapes that fault** - `#DE` on x86, reported as SIGFPE - unlike an
  out-of-range shift or float conversion, which silently produce wrong values. So removing these leaves a
  fatal signal rather than corrupt data, on that target, when the operation survives to execute.
  **Final state, and it is now short enough to state in one line**: two emitted runtime checks, a slice's
  bounds and a runtime array length, both paid per construction. Everything else that can go wrong at the
  level of a single operation is undefined behaviour, and every check the compiler can make for free at
  compile time is still made.
  `make verify`: 205/19/13/4/1.

- **Hexadecimal (L10a) and exponent (L12a) literals.** User-directed, with a question attached - *"unless
  there is new more modern hex syntax"* - and the answer is no: `0x` is what C, Rust, Go, Zig, Swift, Java
  and Python all use, and nothing has displaced it in forty years. What *is* newer is digit separators
  (`0xFF_FF`, `1_000_000`) and binary literals (`0b1010`), neither of which was asked for, so both were
  raised rather than assumed.
  **Three decisions.** A hex literal denotes a **bit pattern**, so the full width is writable:
  `0xFFFFFFFFFFFFFFFF` is `-1` rather than saturating at `int64`'s maximum, which is what hex is written
  for. A **leading zero stays decimal** - `07` is seven, and there is no octal syntax at all, C's bare-`0`
  form being widely held to be a mistake. That one shaped the implementation: the value is parsed by
  detecting the `0x` prefix explicitly rather than by handing `strtoll` base 0, which auto-detects octal
  too and would have silently changed what an existing `0755` meant. And an **exponent is committed to
  only when the whole of it is present**, so `1e` remains an int literal followed by an identifier and no
  program that parsed before changes meaning.
  **The value side needed almost nothing**, which is why this was cheap: `strtod` already handles
  exponents, and hex needed only a base. Nearly all the work was in `tokenizeNumberLiteral`.
  **Two tokenizer bugs, both from assuming rather than reading.** `TokenGetCursor`/`TokenSetCursor` are
  **token**-level, not character-level - using them to backtrack a failed exponent scrambled every token
  after the first float, which surfaced as a wall of unrelated parse errors. And `tokenizeToken` consumes
  the leading digit *before* dispatching, so the `0x` test was inspecting the second character and every
  hex literal lexed as `0` followed by an identifier. Both were caught immediately by writing the tests
  first, which is the cheap way to find them.
  `make verify`: 208/19/13/4/1.

- **Binary literals (L10c) and digit separators (L10b).** User-directed, completing the numeric-literal
  work: `0b1010`, `0B1111`, `1_000_000`, `0xFF_FF`, `0b1010_1010`, `1_000.5`, `1e1_0`.
  **The separator rule came out as one clause**, after a first attempt that tried to enumerate the illegal
  positions ("may not end the literal, follow the `0x`/`0b` prefix, or sit beside the `.` or the `e`"). The
  implementation naturally enforced something simpler and stronger: **a `_` must be followed by another
  digit of the same base**. That single condition produces every rejection wanted - `1_`, `1_.5`, `1_e5` -
  and the enumerated version was both longer and wrong, since it claimed `0x_FF` was rejected when the code
  accepted it. The message was rewritten to match the rule rather than the code changed to match the
  message, because the rule is the better one; Rust allows `0x_FF` for the same reason.
  Nothing has to be said about a *leading* separator, which is the neat part: `_` is a letter, so `_1` is
  an identifier and never reaches the number path at all.
  **One diagnostic worth the extra five lines.** A prefixed literal stops at the first character that is
  not one of its own digits, so `0b12` lexed as a binary `1` followed by a stray `2` and reported
  "unexpected token '2'" - true, useless. A digit or letter immediately after the run is always a mistake
  in the literal, so it is now reported there: "this character is not a digit of the literal's own base".
  `make verify`: 210/19/13/4/1.

- **`shared` (P5) withdrawn, and P3 demoted from a guarantee to a check (P3a).** User-directed, and the
  user supplied the argument that settles it. Asked for an overview of what threading does and does not
  solve, they identified the two obstacles to compile-time checking exactly: *"if we treat the behaviour of
  threading functions differently from normal functions, we have to recompile it every time it is to be
  used for threading, or we at least add a signature"*, and *"passing a reference can be checked in the
  first step, but what if that reference contains a reference? then we can have data clashes again without
  it being compile-time checkable."*
  **Those are not two difficulties, they are a proof.** The first says spawnability is an *effect*, so it
  needs either a signature marker or whole-program analysis - and interface dispatch breaks the latter
  under separate compilation. The second is decisive: knowing whether `h1.held` and `h2.held` are the same
  object is alias analysis, and the thing that makes it decidable is precisely the uniqueness discipline a
  borrow checker imposes. Ruling out a borrow checker therefore rules out a sound P3. The conclusion
  follows: P3 must stop claiming soundness.
  **On borrow checking specifically**, asked whether it would bring Rust's linked-list problems: yes, and
  worse, it would import a solution to a problem olang does not have. Rust needs ownership because it must
  free at exactly the right moment, and uniqueness is what makes that decidable; olang frees when a scope
  closes, so the "who frees it" question never arises. Several references to one instance are already
  ordinary and a struct can already embed itself through `&`. Adding aliasing-XOR-mutation would buy
  nothing for memory management and cost the doubly-linked list, the graph and the parent pointer.
  **What P3a says now**: P3 rejects the common mistake and is decidable precisely because it looks no
  further than the argument list; it does not guarantee race-freedom, and the two reasons are written down
  - a global needs no argument, and two arguments can be one instance. A program that spawns owns its own
  data races, beside `extern` and out-of-range indexing. The lifetime half (P2) and the spawner's exclusion
  at the join remain guarantees, both by construction.
  **`shared` had nothing left to mean.** It waived P3 for a whole type on a promise the compiler never
  checked; once P3 is admittedly not a guarantee, an exemption from it is an exemption from nothing.
  **The cost is one example, and it is the whole problem in miniature**: `chan.olang`'s producer and
  consumer can no longer run on separate tasks. P3 rejects it, is right that it cannot prove it safe, is
  wrong that it is unsafe, and cannot tell those apart. That is recorded in the file rather than worked
  around. The channel itself still builds and is still tested through its ring buffer and cursors.
  `make verify`: 210/19/13/4/1.

- **A task's chunk pool is drained when its thread exits (P2a).** The last of the concurrency runtime bugs
  found earlier in this session, and the simplest: `@__olang_chunk_pool` is `thread_local`, so every chunk a
  task thread held was lost when the thread ended. The leak is proportional to the *number of tasks that
  allocate*, not to how much they allocate - each task that touches its own scope takes at least one chunk
  and never gives it back. Measured at **132MB over 32,000 tasks, against 3.2MB after**, on the same
  program, and slightly faster rather than slower.
  **The safety argument is what makes it a two-line fix rather than a design question.** Every chunk sitting
  on the pool belongs to a scope that has already closed, so nothing references it. And a scope the task was
  *handed* (P2) never appears there at all - its chunks are spliced into the parent at the join, on the
  spawner's thread, rather than reclaimed by the task. So the drain cannot free anything live, and needs no
  coordination with the join.
  Returning the chunks to `free` rather than to a process-wide pool is deliberate: a shared pool would need
  a lock on the allocator's hot path, and a task is already a `pthread_create` - tens of microseconds - so a
  handful of `free` calls beside it does not register. The measurement bears that out.
  One incidental: the runtime emission string went past C99's 4095-character guaranteed limit for a string
  literal, which `-Wpedantic` caught immediately. Split into two `fputs` calls.
  `make verify`: 211/19/13/4/1.

- **P3 withdrawn: `spawn` checks nothing about what tasks reach.** User-directed, from an observation that
  closed out the whole thread: *"p3 makes no sense anymore right? and the only reason the 'globals hole' is
  a thing is because p3 says it should be whilst not actually doing what it says."*
  **Both halves of that are right, and the second removed a whole work item.** A "hole" is a gap between a
  claim and reality. Once P3a said P3 guaranteed nothing about reachability, globals stopped being a hole
  and became simply shared mutable state in a language that says you own your data races. The globals rule
  - a whole-program call-graph pass I had started designing - was never needed; it existed only to defend a
  claim that should not have been made.
  **And P3 itself was incoherent once demoted.** Not merely incomplete: *inconsistent*. It rejected one
  spelling of a race and admitted every other. `f(a)` twice was an error; `b = a` then `f(a)`, `f(b)` was
  not; two tasks writing one global was not. The same program three times, one of them rejected. A rule
  that stops the naive spelling, cannot stop the others, and forbids a correct bounded channel on the way
  is a style rule with the force of an error - and with `shared` gone there was no longer any way to opt
  out of it.
  **Removing it was the smallest of the three options.** A *warning* would mean inventing a diagnostic
  category for a language that has none, and keeping an opt-out would mean reinventing `shared` under a new
  name. Removal leaves the concurrency story in one sentence: `spawn` gives structured tasks with
  guaranteed lifetimes and a join you cannot escape; data races are the program's own.
  **`chan.olang` got its producer/consumer test back**, which is the clearest measure of what the rule had
  been costing. The correctness there is the mutex's, which is where it belongs.
  What remains guaranteed is structural rather than checked, and is the part worth having: every task is
  joined before the block ends (P1), the spawner runs nothing in between, and a task's arguments cannot
  outlive it (P2).
  `make verify`: 212/19/13/4/2.

- **P1 rewritten: `spawn <call>` statements inside a `join { }` block.** User-directed, and it started as a
  question about whether the block was earning its keep: *"is there a point in making spawn its own block
  instead of a dispatch keyword on a function? do we need spawn {...}, can't we just do spawn func1()
  spawn func2()?"*
  **The old form made one block do two jobs.** `spawn { f() g() }` was simultaneously "these are tasks" and
  "this is the join", which is why it was so small - and the cost of that fusion surfaced the moment the
  question was asked. Four things were inexpressible: ordinary code anywhere in the block (every statement
  had to be a call), reading a result between two spawns, saying *where* to join, and - the one that
  settled it - **a loop that starts a task per iteration**. A block's statement list is fixed at compile
  time, so a spawn block's task count was a compile-time constant; `join { for i ... { spawn f(ts[i]) } }`
  is dynamic fan-out and had no spelling at all. The user reached the same place from the other side:
  *"by removing the scope for spawns we can no longer have functions return a value for every thread...
  secondly, if we want a join at a specific place, we can't do that now. there is no manual join."*
  **Two intermediate designs were tried in conversation and dropped.** A bare `spawn f()` with the join at
  the *function's* exit is what the block form was invented to avoid: the spawner then runs arbitrary code
  between spawn and join, and reading a task's result there is precisely the race - a test caught exactly
  that the first time the feature was built. And it desynchronises the two allocation stories, which the
  user spotted directly: *"now we run into a weird thing where allocation on & is 'per scope' and spawn is
  per function. I want these synchronized."* A `join` keyword meaning "join everything spawned so far in
  this function" has the same problem in a quieter form - "so far" is a dynamic notion, so what a join
  waits for depends on control flow rather than on what is written.
  **`join { }` synchronises them by construction**, because a join block is an ordinary block and therefore
  an ordinary scope (O2). The two questions "what does `&` mean here" and "what does this join wait for"
  have the same answer: this block. Nothing about §8 needed changing.
  **On the syntax**, the user considered and then reversed: *"are we sure join is the right word... what
  happens for functions whose entire body is a join block? `{{` is really ugly"* → *"I changed my mind.
  `{{` is fine, its only really ugly if its on the same line."* The alternative - `join` in the signature
  position, `func f() Type join { }` - was rejected because it does not compose: `if cond join { }` needs
  the same treatment, and so does every other block, which is the genuinely ugly version.
  **Binding is lexical and one level deep (P1a), as three rules the user stated outright**: a join with no
  spawn is an error, only spawns lexically inside the block register to it, and *"join only sees the spawns
  in its own block not in functions that is calls's blocks"* - then, on realising the consequence,
  *"otherwise a spawn without a join must also be an error."* The question behind that was whether a
  callee's spawn could propagate to the nearest enclosing join of its caller. It cannot, and the reason is
  worth keeping: a caller checks a callee by its **signature**, so "this function spawns" would have to be
  part of one, and it would then be viral - every transitive caller carries it. That is a real design and a
  deliberately deferred one; it is purely additive, since today's programs would all still be legal.
  **P1b is the one real hole the split opened, and it was not in the original plan.** The old spawn block
  had no exits - every statement was a call, so nothing could `return` or `break` out of it. A join block is
  an ordinary block, so all four exits exist, and each of them reclaims the block's arena on the way out
  while a task may still be holding storage from it. The fix is a second codegen list kept in lockstep with
  the open block scopes, recording which of them is a join, so both unwinders (`cgCloseOwnScope` for
  returns and propagated errors, `cgUnwindToLoop` for break/continue) emit the wait before the close. Two
  corpus tests pin it: a task doing 100,000 increments, abandoned by a `return` and by a `break`, whose
  count is read afterwards - both see the full 100,000, and both would see a partial count without the
  join. `done`/`fail`/`abort`/`unreachable` are correctly exempt: each ends the process, so no frame is
  left for a task to outlive.
  **One corpus test changed its expected answer, and the change is the correct reading.** Handles built on
  tasks used to be destructed when the spawning *function* returned; they now destruct when the *join
  block* closes, because a task allocating into its caller's `own` allocates into the join block's arena
  (O2). Nothing about concurrency decides that - it is what "every block is a scope" means, arriving here
  by itself. A task whose result must outlive the block names a scope, exactly as any other call does, and
  the test beside it already showed that working.
  **Codegen: the task env moved off the stack.** It used to be `alloca`'d in the spawner's frame, valid for
  the task's whole life because of the join. A spawn inside a loop runs any number of times, so that grew
  the stack per iteration; the env, the task node and the merge records are now bump-allocated from the
  join block's arena, which the join keeps alive for exactly as long and costs nothing extra since the
  arena is already there.
  `make verify`: 220/19/13/4/2.

- **Two follow-ups on the join/spawn split, both from the user asking the right question.**
  **`break`/`continue` in a join block.** *"break and continue make no sense within a join block because
  join is not a loop"* - correct, and the compiler already agreed: `join { break }` with no enclosing loop
  is the ordinary S11 error. What P1b is about is a `break` *crossing* a join block on its way out of an
  enclosing `for`, where the join block is a scope being left rather than the thing being left. Three
  comments were sloppy enough to read the other way (one in CLAUDE.md still referred to a `spawn` block
  that no longer exists, one in the corpus claimed a `continue` could be "the join block's own"), and S11a
  said nothing about joins at all. All four corrected.
  **The `spawns` signature effect: deferred because it buys nothing, not because it is hard.** *"do we gain
  necessary expressibility to allowing functions to declare 'spawns', when would this actually be used?"*
  The answer turned out to be no, and the check is one test rather than an argument: a helper that wants to
  fan out on its caller's behalf joins its own fan-out and is itself `spawn`ed, at which point the caller's
  join waits for everything transitively, the caller's work still overlaps the helper's tasks, and the join
  point is identical. Written out and run - eight tasks across two helper calls with the caller mutating
  state between them, all joined at the same brace. So the effect saves exactly **one parked thread per
  helper call**, and no program shape.
  The one case that does not reduce is a helper that must both start tasks outliving its return *and*
  return a value now, since `spawn` discards a result; an out-parameter covers it and the shape is rare.
  **And the cost is worse than "viral".** Beyond every transitive caller carrying the marker, it would make
  P2's argument-lifetime check **non-local**: a helper's spawn arguments would have to outlive a join block
  in a caller the helper cannot see, which is not a fact about one body but an obligation on a signature -
  a second obligation system beside O10b's, for a feature whose payoff is a thread. Deferred with the
  reason recorded, still purely additive.
  `make verify`: 221/19/13/4/2.

- **The concurrency gap list, measured rather than guessed.** User-directed: *"record all these gaps, and
  lets do them in order when we are ready."* Nothing here was fixed; what was done was establishing which
  of them are real, because two of the seven turned out to be different from what they looked like.
  **The abandoned-test hole is two bugs masking each other.** A failing `assert` inside a `join` block
  `longjmp`s to the harness, which runs no join, so the task keeps running into subsequent tests -
  reproduced 3/3 with an allocating task that could not be folded away (the first attempt used a global
  increment loop, which LLVM collapses to a single add, so the task finished instantly and the test looked
  clean; a second attempt overflowed `int32` summing 0..199999 and failed for that reason instead). It
  **leaks rather than corrupts today, and only by accident**: S18b elides the scope closes on that same
  path, so the abandoned arena is never returned to the pool and the live task writes to memory nobody
  reuses. Fixing S18b on its own would hand those chunks to the next test and turn the leak into a
  use-after-free. They are one piece of work.
  **The fan-out cost is per spawn, not per concurrent task**, which is the opposite of what "unbounded
  fan-out creates a million threads" suggested. Measured 25k/50k/100k spawns at 1.38/2.60/5.11s and
  212/422/842MB - dead linear, ~51us and ~8.4KB each, against ~0.6us for the same call made directly. The
  kernel never holds many threads at once, because a finished thread releases its slot; what accumulates
  is the *unjoined* stacks, held until the block ends. So a `join` block's peak is set by the total number
  of spawns written through it.
  **`pthread_create`'s result is discarded and `pthread_join` has no zero-id guard** - read from the code
  and honestly not reproduced: the ambient limit is 30,178 and 100,000 spawns never hit it, for the reason
  above. Recorded as unproven rather than dressed up.
- **Data races: ThreadSanitizer, which is Go's answer arrived at independently.** The user asked what Go
  does and whether more of it is worth adopting, *"since we haven't really implemented any data race
  checks yet"*. Go's answer is the interesting one: it does **not** check at compile time either - its
  memory model declares a racy program undefined and it ships a dynamic detector for testing. That is the
  same position P3's withdrawal left this language in, reached for the same underlying reason (neither can
  check statically without an ownership discipline), so the remaining question was only whether the
  dynamic half was affordable.
  It is nearly free, and this was verified before anything was written. olang already emits `.ll` and hands
  it to `clang`; TSan needs a `sanitize_thread` attribute on each `define` plus `-fsanitize=thread` on the
  compile and link. Done by hand with `sed`, three findings, all of which had to hold for this to be worth
  proposing: the corpus's **221 tests all pass** under it; the **only** race reported anywhere is
  `shared.Tally.readOut`, which is the one deliberately-racy test in the file; and `chan.olang`'s
  mutex-synchronised producer/consumer reports **nothing at all**, so a correctly locked program is not
  flagged. The arena, the scope merge, the chunk pool and the join walk are all clean, which is
  independent confirmation of P2 and P2a by a tool with no knowledge of them. Reports name olang functions
  (`race.Tally.addUp`), not IR.
  One false start worth keeping: compiling the `.ll` with `-fsanitize=thread` alone detects **nothing**.
  The instrumentation pass is driven by the per-function attribute, which a frontend normally adds, and
  there is no frontend for a `.ll` - so the flag silently does nothing without the attribute. A naive
  implementation would have shipped a race detector that never fires.
  **What to take from Go, and what not to.** Take: the dynamic-detector decision above; a bound on
  parallelism; eventually a `select`. **Do not take the goroutine itself.** `go f()` is fire-and-forget
  with no join, which is Go's most-criticised property and the reason later designs (Trio's nurseries,
  Kotlin, Swift, Java's StructuredTaskScope) all added structure back. `join { }` already is that
  structure, so on this axis the language is ahead of Go and adopting its model would be a regression.
  Go's cheap tasks are a scheduler, not a syntax: ~2KB growable stacks that are *moved* when they grow,
  which Go can do because a precise GC knows every pointer. olang has no GC - but it also has no
  address-of operator and no pointer type, so nothing ever points at a stack slot, and a moving stack is
  far less obstructed here than in C. That is a real observation and a large project; `extern func` frames
  would have to be excluded the way cgo is.

- **Gap 3 revised: cache threads, don't pool or schedule them.** The question *"so we are going the Go path
  for threads? (mostly)"* is what exposed that I had framed the choice badly. I had offered "fixed pool vs
  M:N" and raised the fixed pool's deadlock, which made M:N look like the answer to it. There is a third
  option that is better than either, and reaching it needed a question I had not asked: **what is `spawn`
  for?**
  Go needs M:N because a goroutine is its only concurrency primitive and carries **I/O** concurrency -
  thousands of *blocked* tasks multiplexed onto a few threads, which is exactly what growable, moving
  stacks and a work-stealing scheduler buy. olang has no async I/O at all; `io.olang` is blocking
  `read`/`write` through `extern func`. So `spawn` here is for **parallelism** - splitting CPU work across
  cores - and for parallelism you want roughly core-many tasks, where 51us of setup is noise. The measured
  per-spawn cost only bites when tasks vastly outnumber cores, which is the shape M:N exists to serve and
  which this language has no use for.
  So the proportionate fix is a **thread cache**: a finished task's thread parks on a free list instead of
  exiting, and the next `spawn` takes it. Creation is then paid once per *peak concurrency* rather than
  once per spawn, and the 8.4KB stacks are reused rather than accumulated. Crucially it keeps **1:1
  semantics unchanged**, which is what makes it safe where a fixed pool is not: every task still owns a
  thread, so one that blocks on a nested `join` or on `chan.olang`'s mutex starves nobody. A fixed-size
  pool deadlocks on exactly those two constructs, and that hazard was the whole reason the pool question
  was flagged rather than just built.
  The cost is contained and known: `pthread_join` stops working as the completion signal, since a cached
  thread never exits, so `__olang_join_tasks` needs its own per-task completion flag. P2a gets *simpler* -
  a cached thread does not exit, so its chunk pool persists instead of being drained and refilled.
  **The wider answer to "are we going the Go path" is no, on three of four axes.** Race detection is Go's
  answer exactly (dynamic, not static). Structure is the opposite of Go's - `go f()` is fire-and-forget
  and goroutine leaks are its most-reported bug class, which is why Trio, Kotlin, Swift and Java all added
  nurseries back; `join { }` already is that. Channels stay a library rather than language syntax.
  Scheduling stays 1:1. One axis of four.

- **P7: `-race`, dynamic data-race detection via ThreadSanitizer.** Built after establishing (previous
  entry) that Go does not check races statically either, so the only question left was whether the dynamic
  half was affordable. It was: the whole feature is an attribute, two clang flags, and an artifact name.
  **The trap is the attribute, and it fails silently.** LLVM's TSan pass instruments a function only when
  it carries `sanitize_thread`. A C/C++ frontend adds that; nothing adds it for a `.ll`. So handing
  `-fsanitize=thread` to clang along with olang IR produces a binary that links the TSan runtime, runs
  slower, and **detects nothing** - which is exactly what the first attempt did on a program with two
  tasks writing the same field. A naive implementation ships a race detector that never fires and looks
  like it works.
  The attribute is applied by rewriting the finished IR text in `CodegenModule` rather than by threading a
  flag through all sixteen `define` sites. That is not only less invasive: several of those sites are
  inside multi-function runtime string literals, and rewriting the text is what guarantees the **runtime**
  is instrumented too - the arena, the scope merge, the chunk pool, the join walk. That is the code a
  concurrency bug would actually hide in, and it is the part no hand-placed flag would have covered.
  One detail in the rewriter worth keeping: the attribute goes before the **last** brace on the line, not
  the first. `define { i32, i32 } @shared_SafeDiv(...) {` has two, and matching the first produced
  `define #0 { i32, i32 } ...`, which does not parse.
  **Two consequences followed from rules already written.** `-race` has to be a whole-build mode, since
  the runtime is `linkonce_odr` in every object and mixing instrumented with clean lets the linker keep
  either. And an instrumented object is a different artifact, so it is named `.race.o` - the same reasoning
  B4 already gives for `.main.o`/`.test.o`, and without it a `-race` build silently reuses a clean object,
  which is the staleness trap CLAUDE.md records as having cost real debugging time twice.
  **Results.** All 259 corpus tests pass under `-race`. Exactly one race is reported anywhere:
  `shared.Tally.readOut`, the deliberately-racy test written when P3 was withdrawn. `chan.olang`'s
  mutex-synchronised producer/consumer is clean, so correct locking is not flagged. The arena, merge, pool
  and join machinery are clean, which is an independent check on P2 and P2a by a tool with no knowledge of
  them. The test harness's `setjmp`/`longjmp` recovery still works - a failing test is still recoverable
  and the run continues.
  Built at `-O1` under `-race`: at `-O3` the accessors inline enough that a report names the caller rather
  than the function at fault.
  **`make race` is deliberately not part of `make verify`.** A correct run of the corpus reports that one
  intentional race and exits nonzero, so wiring it into `verify` would mean either a permanently red
  target or deleting a test that documents a real language decision. More than one report is the signal.
  `make verify`: 221/19/13/4/2, unchanged - the clean path emits byte-identical IR.

- **Why P7 works with no `Mutex` type, and the invariant that has to be preserved.** The user's question -
  *"so even though we don't have mutexes yet, this can still be done because it runs on pthread_mutex
  stuff?"* - is exactly right, and worth writing down because the property is load-bearing and temporary.
  TSan does not understand a mutex as a language construct. It **intercepts the C symbols**, supplying its
  own `pthread_mutex_lock`/`unlock`/`create`/`join` that do the vector-clock bookkeeping and forward on.
  A call arriving through `extern func` is the same symbol at the same boundary as one from C, so
  `chan.olang`'s hand-rolled locking is fully visible. Demonstrated rather than assumed: two structurally
  identical programs, two tasks bumping one field 20,000 times each, one guarded by a pthread mutex and
  one not. The guarded one is silent; the unguarded one is reported. If TSan were merely not looking at
  that code, both would have been silent.
  **The picture is complete for a reason that will not last.** Every ordering olang can express today goes
  through the C library, from exactly two sources: `pthread_create`/`pthread_join` emitted by codegen for
  `spawn`/`join`, and whatever a program calls via `extern func`. There is no third way - no atomics, no
  `volatile`, no inline asm, nothing lock-free - so TSan sees **100%** of the happens-before edges in any
  olang program, in a language with no mutex type and no written memory model. That was free only because
  there was no synchronisation of our own for it to miss.
  So gap 7 (atomics) gained a constraint it did not have before: whatever is added must be something TSan
  can see. Genuine LLVM atomics qualify. Anything else owes `__tsan_acquire`/`__tsan_release`, because a
  detector that reports correct lock-free code as racy is worse than no detector - it gets switched off.
  **The arena is the same hazard from the other side, and is already safe by accident of P2a.** A recycled
  chunk is the classic false-positive source for a custom allocator: TSan resets shadow state on
  `malloc`/`free`, and the chunk pool recycles without either, so a chunk reused across threads would look
  like a race on stale shadow. It is sound because `@__olang_chunk_pool` is `thread_local` - a chunk goes
  back to the pool of the thread that used it - and the one cross-thread path, a task's sub-arena spliced
  into its parent, is ordered by the `pthread_join` immediately before it. Making that pool global would
  need the allocator annotations, and the corpus already exercises the case hard (two tasks each running
  20,000 allocations into one scope) and reports clean.

- **P1c: `pthread_create`'s result was discarded, and the failure mode was worse than predicted.** Recorded
  earlier as read-from-the-code and explicitly *not* reproduced; reproducing it first is what corrected the
  diagnosis. I had predicted a null dereference: the thread-id slot is pre-zeroed, a failed creation leaves
  0, and `__olang_join_tasks` hands that to `pthread_join`, which on glibc walks a `struct pthread*`. It
  does not crash - it returns `ESRCH` - so the join **completes normally** and the program exits **0**
  having silently skipped however much work failed to start. Silent wrong answers rather than a segfault,
  which is the worse of the two and the one nothing would have caught.
  **Reproducing it needed the right limit.** `ulimit -u` (thread count) never fired even at 100,000 spawns,
  because a finished thread releases its kernel slot and our tasks finish fast - that is why the first
  attempt failed and the gap was recorded as unproven. `ulimit -v` is the one that works: each thread stack
  reserves 8MB of *virtual address space*, so a 2GB cap starves `pthread_create` after a couple of hundred
  simultaneously-live tasks. The demonstration is a program that has each task mark its own array slot -
  race-free, since no two tasks touch the same one - and then asserts all 2,000 ran. Before the fix it
  printed `assertion failed`, i.e. the program's own check was the only thing standing between it and a
  wrong answer; after, `could not start task`.
  **Abort rather than degrade.** Running the call inline when no thread is available is tempting and is
  not graceful: two tasks that communicate through a channel deadlock the moment one of them runs to
  completion before the other has started, which `chan.olang`'s own producer/consumer test would do. So
  `spawn` guarantees the call runs, and a broken guarantee aborts, on exactly the terms S18a already sets
  for a failed assert or an out-of-range slice bound - recoverable under `-t`, a core dump otherwise.
  The check is one comparison per `spawn` against ~51us of thread creation, so it is per-construction in
  the sense D14b means and nowhere near the per-operation line the language refuses to cross. It is a
  `linkonce_odr` helper taking the return code rather than a branch emitted inline, which keeps every spawn
  site two instructions longer instead of five.
  **Not coverable by a corpus test** - it needs resource exhaustion to fire, so the evidence is the
  reproduction above rather than a permanent test.
  `make verify`: 221/19/13/4/2.

- **P1d and S18b: unwind before the jump.** These were recorded as one piece of work because they masked
  each other, and that turned out to be exactly right. The `longjmp` out of an abandoned test ran no join,
  so a task kept running into the next test; it *also* elided the scope closes, so the abandoned arena was
  never recycled and the live task wrote to memory nobody reused. Fixing S18b on its own would have handed
  those chunks to the next test and converted a leak into a use-after-free.
  **Why the closes could not simply be emitted at the recovery point.** This had been tried and recorded as
  "LLVM does not model longjmp's control flow", which is right but worth stating precisely: the landing
  block's only incoming CFG edge is the one from before the `setjmp`, where the scope headers were just
  zeroed, so LLVM proves any close emitted there is a no-op and deletes it. That is correct reasoning
  about a CFG that lies. `returns_twice` was already on the `setjmp` declaration and does not help, because
  the scope allocas do not escape to `setjmp` on that path, so nothing tells LLVM they could have changed.
  **The fix is a runtime chain of the scopes actually open**, thread-local, linked across frames, walked
  down to a mark taken before the `setjmp`. Each node is an `%olang.unwind` alloca'd in the entry block
  beside the scope header it describes; its `prev` and `scope` fields never vary within a frame, so they
  are written once there and a block entry costs two stores - its join head and the new chain top - while a
  block exit costs one. Leaving a frame pops the whole frame in a single store. The walk joins each `join`
  block's tasks before closing its scope, which is P1b applied to the one exit path that had been missing
  it.
  **Measuring it is what shaped the design, and the first three benchmarks were all wrong.** A loop
  allocating four million times measured 0.01s and a forty-million one measured identically with and
  without - because LLVM was deleting the arena work entirely once it could prove the scope dead, so the
  benchmark measured nothing. Making the allocation escape fixed that. The honest number is **2.4x on an
  allocation-heavy loop** (0.06s to 0.14s over 40M iterations), and the cost is not the three stores: it is
  that putting a scope pointer into a global makes it *escape*, after which LLVM keeps allocator work it
  would otherwise have removed.
  **So it is emitted only where it can be used.** Outside `-t` there is no `longjmp` at all - a failed
  check aborts the process - so a production build tracks nothing and measures identical to before. A
  module compiled for a test build is a different artifact (`.tmod.o`), which is the same reasoning B4
  already gives for `.main.o`/`.test.o`; the first attempt reused `.test.o` for both the harness-carrying
  root and plain modules and produced `multiple definition of main` at link time.
  **A pre-existing inefficiency found on the way.** The instruction count for a small benchmark function
  was 59 before and 156 after, which did not match three stores. The assembly showed why: LLVM's default
  TLS model is general-dynamic, so *every* thread-local access lowers to `call __tls_get_addr@PLT` - and
  `@__olang_chunk_pool` was paying that in the middle of the allocator's hot loop, and had been since P2a
  made it thread-local. All four are `thread_local(initialexec)` now, a direct `%fs`-relative load, which
  is safe because these are only ever linked into an executable. Fourteen PLT calls to zero, and it speeds
  up every allocating program rather than only test builds.
  **The corpus tests use `done`, not a failing assert**, which is what lets a regression test for early
  exit be a green test: `done` ends a test as *passed* and takes the identical longjmp path. One pins that
  a spawned task is finished before the next test starts; the other that handles in three different scopes
  - the test body's, a callee's own, and a block nested inside that callee - are all destructed. Both fail
  without the fix, checked by reverting.
  `make verify`: 225/19/13/4/2. `make race`: still exactly one report.

- **P1e: threads are cached, and the interesting part is when a worker goes back.** Gap 3 as recorded: a
  `spawn` created an OS thread and the join destroyed it, ~51us and ~8.4KB each, with the stack held until
  the join so a block's peak tracked total spawns rather than live ones. The recorded plan - cache threads,
  not a fixed pool and not M:N - was right, and building it turned up one thing the plan had not said.
  **Returning the worker at the join is the obvious place and it is wrong.** `pthread_join` used to sit
  there, so `__olang_worker_wait` replaced it one-for-one: wait for the task, then push the worker back.
  But a `join` block starts all its tasks *before* joining any of them, so nothing is ever returned while
  spawning is going on and a fan-out reuses **nothing**. 100,000 spawns built 100,000 workers which then
  sat parked and alive, where plain threads had exited as soon as their trivial task finished. Measured
  **224.79s** against 5.11s for a fresh thread each time - a 44x regression on precisely the workload the
  change exists for, and it only showed up because the benchmark was run rather than assumed.
  **A worker goes back the moment its task's call returns.** That forces the completion flag into the
  **task node** rather than the worker, because by the time a `join` looks the worker belongs to somebody
  else; the task carries a done flag guarded by one global mutex and condvar, the worker sets it before
  handing itself back, and `__olang_task_wait` waits on that. The worker takes the free-list lock while
  still holding its own, so a spawner cannot hand it work between the push and the park - and the park is
  a predicate loop under that same mutex, so no wakeup is lost either way.
  **Measured, same binary shape both sides, 100,000 spawns: 5.40/6.02/5.87s and ~843MB before,
  1.13/1.17/1.20s and ~6MB after.** About 5x faster and 140x less memory.
  **1:1 is kept deliberately**, and it is what makes this safe rather than merely fast: every task still
  owns a thread, so one that blocks on a nested `join` or on `chan.olang`'s mutex starves nobody. A
  fixed-size pool deadlocks on exactly those two, which is the hazard Go's M:N scheduler exists to remove
  and which 1:1 does not have. `chan.olang`'s producer/consumer needs two tasks live simultaneously and is
  the standing proof that this still holds.
  **P2a inverted and got simpler.** It existed because a task thread's `thread_local` chunk pool was lost
  when the thread exited. A worker does not exit, so the pool persists and the next task on that worker
  reuses it - the leak is gone by construction, and retention is bounded by worker count rather than task
  count. The drain call is simply no longer emitted.
  **Two implementation collisions worth keeping.** The runtime now needs `pthread_mutex_lock` and friends,
  and `chan.olang` declares some of those same symbols as `extern func`; LLVM rejects a duplicate
  `declare` even when the signatures agree, so the runtime's declaration stands for both and
  `emitExternDecls` skips those names. `pthread_mutex_init`/`pthread_cond_init` are not declared by the
  runtime at all, because `chan.olang` declares them with an `i64` attr argument where the runtime would
  want a `ptr` - a real disagreement, not a duplicate. A worker's mutex and condvar are zeroed instead,
  which is their initialized state on glibc, the same dependency `chan.olang` already carries. And the
  runtime string ran past C99's 4095-character literal limit again and had to be split.
  **ThreadSanitizer still reports exactly one race** (the intentional one), which is the check that
  mattered: a worker now runs many different tasks, so the mutex/condvar handoff has to give TSan the
  happens-before edges that `pthread_create`/`pthread_join` used to give it for free. It does.
  `make verify`: 225/19/13/4/2.

- **P1f: cap the idle-worker cache at 64.** User-asked, and the right question: *"should we maybe have a
  desired cap that we go down to when the load goes down tho?"* P1e had left the thread count as a
  high-water mark held for the life of the process, and I had recorded that as an accepted cost without
  measuring it - so the first thing was to find out what it actually strands. A burst of 300 concurrent
  tasks followed by a long single-threaded tail sat at **246 threads and 64MB** for the rest of the run,
  against 1 thread and 1.3MB for the same program without the burst. Roughly 55KB per parked worker, plus
  8MB of reserved address space each. Real enough to act on.
  **The design that makes this safe is capping the CACHE, not concurrency.** A worker that finishes when
  64 are already parked exits instead of parking; `__olang_worker_get` is untouched and still creates a
  thread unconditionally when none is free, so a live task is never refused one and P1e's one-thread-per-
  task property is intact. That is the whole difference from the fixed-size pool this design rejected
  twice: a pool bounds how many tasks may *run*, which is what deadlocks on a nested `join` or on
  `chan.olang`'s blocking channel, whereas a bound on *idle* threads is something nothing can wait on.
  Ten lines, one counter guarded by the free-list lock that was already being taken.
  **It also brought `__olang_pool_drain` back from the dead.** P1e had made it unreachable - a worker no
  longer exits, so its chunk pool persists for the next task - and a retiring worker is now the one place
  it is still needed. That turned out to matter more than the stacks: the 64MB held in the uncapped tail
  was mostly retained chunk pools, not thread stacks, and the capped version settles at **65 threads and
  9MB**, a 7x reduction in the quiet phase.
  **A measurement trap worth keeping.** The first check looked like the cap was not working - 229 threads
  still held during what I had labelled "the tail" - and the timeline showed why: sampling at a fixed
  fraction from the end landed while workers were still finishing. The decay is 244, 235, 234, 229, then
  **65**, and it only becomes visible with a tail long enough to sample in its steady state. An earlier
  version of the same script had also reported "at exit = 2", which was a read taken during process
  teardown; the worker loop has no exit path other than P1f's, so that was never real.
  **64 is deliberately generous**, on the same reasoning that rejected `#cores`: a tighter cap thrashes,
  since destroying a worker only to recreate it costs the ~51us the cache exists to save, and the
  100,000-task fan-out settles at 9 workers - a cap of `#cores` would have clipped it on an 8-core
  machine. The cost of the bookkeeping is about **8%** on that fan-out (1.17s to 1.27s median).
  **An idle-timeout reaper was rejected**: a timer thread plus a decay policy is the first real piece of
  the scheduler this design does not build, for what a single counter solves.
  `make verify`: 225/19/13/4/2. `make race`: still exactly one report, and `chan.olang` - the case a pool
  would have deadlocked - still passes.

- **P8: the memory model, written down at last.** Gap 5, and the smallest of the seven by a distance -
  because it was never missing from the implementation, only from the spec. What a task observes of
  another's writes was whatever LLVM and pthreads happened to give, which is a real answer but not a
  stated one, and an unstated one cannot be relied on or checked against.
  **Writing it was description, not design.** The edges were already there; the work was establishing
  exactly what they are and confirming them against the emitted code rather than against intent. They are
  three: a global initializer before every task, everything before a `spawn` before the spawned call, and
  everything a task does before the end of its `join` block. Transitive, so a task in a later join block
  sees what one in an earlier block wrote - through the spawner, with no direct ordering between the two
  tasks.
  **The interesting part is that the edges had silently moved.** They used to be carried by
  `pthread_create` and `pthread_join`, which is where any reader would have assumed they lived. P1e
  replaced both: the spawn edge is now the worker's own mutex at handoff (`__olang_worker_start` releases,
  `__olang_worker_loop` acquires) and the join edge is the task lock at completion (the worker releases
  after setting the done flag, `__olang_task_wait` acquires). Both are still genuine release/acquire pairs,
  so the guarantee survived a change that replaced its entire mechanism - which is precisely the kind of
  thing that should be written down before it is changed again.
  **P8a names one tempting falsehood.** Two tasks that run on the same cached worker really *are* ordered,
  by that worker's own handoff, and a program must not rely on it because which worker runs which task is
  unspecified. Stating that now costs nothing and protects any future scheduling change.
  **P8b makes a data race undefined behaviour, with no size exception.** There are no atomics (gap 7), so
  no access is atomic - not a `byte`, not a pointer - and a concurrent read of something being written may
  observe a value never stored. That is the same position X1a takes on a wrong `extern` prototype and E16e
  on an out-of-range index, so the language now has one consistent list of the places it does not define
  behaviour rather than two written and one implied.
  **P8c is what stops this being a separate system.** A program adds ordering through `extern func`
  pthread calls, and those are the same primitives the implementation uses, which is also exactly why P7's
  ThreadSanitizer can tell a synchronised program from a racy one - the invariant recorded with P7 and the
  memory model are the same fact stated twice.
  Three corpus tests pin the edges. They pass trivially on a correct implementation and exist so that
  breaking one fails there rather than as a wrong answer somewhere unrelated.
  `make verify`: 228/19/13/4/2.

- **P1g: `spawn TARGET = CALL`.** Gap 4. `spawn` discarded the call's result, so the only way to get a value
  out of a task was a `mut &` out-parameter - which infects the callee's signature. A function anyone would
  write as `func square(n int32) int32` had to be rewritten to take a slot it does not otherwise want,
  purely so it could be spawned. That was the actual complaint, and it is what the feature removes.
  **Three options were laid out and the smallest won.** The status quo (out-parameter); binding the result
  at the spawn; and a `Task<T>` future. The future is the obvious "real" answer and was rejected on one
  point: the extra expressiveness it buys is passing a handle around, and P1a already makes binding lexical
  and one level deep, so a handle escaping its join block is meaningless - §8 would have to stop it doing
  the one thing handles exist for. It would also need a new generic runtime type and rules for reading it
  before completion that the type system cannot enforce.
  **What decided it was what falls out.** `join { for i ... { spawn out[i] = f(i) } }` is parallel map with
  no lock, no helper and no new type: each task writes a slot nobody else touches, so there is nothing to
  synchronise, and the join supplies the happens-before that makes the results readable (P8). That shape
  previously needed a helper taking `(out, i)` purely to perform the store.
  **The store happens on the task's own thread the instant its call returns**, and that single fact decides
  both restrictions. The target's type must be *exactly* the return type, because there is no caller frame
  left in which a conversion or an E12 promotion could run - so the checker requires `TypeIsSame` rather
  than assignability, and says why. And the target must outlive the join block, which is not a new rule at
  all: it is P2's argument-lifetime check applied to the result slot, and the user got there unprompted
  ("so this means a storage is only valid if it lives at least until the end of the join block right?").
  The bar is low - a target declared at the join block's own level is fine, since P1b runs the join before
  that block's arena is reclaimed; only a nested block that closes first is rejected.
  **The target's address is taken at the spawn, not on the task**, which is what makes `out[i]` mean slot
  `i` rather than whatever `i` holds whenever the task is scheduled.
  **Plain `=` only.** A compound assignment reads the target on the task's thread, which is a data race
  written by accident; it is rejected at the parse.
  **The user's channel instinct was right but is a different primitive**, and worth recording as such:
  `spawn x = f()` is a *future* - one slot, one writer, no lock required - while a channel is a *queue*
  with many writers and a lock inside. Putting a mutex behind the target would give "last writer wins under
  a lock", which is neither. The aggregating case is already ordinary olang (`chan.olang`); what it lacks
  is gap 6 and a way to enforce lock discipline, and this feature touches neither.
  **One thing checked and found not to be a bug**: `spawn r = f()` into a non-`mut` local is accepted,
  which looked like a missing mutability check. It is not - D-rules say `mut` is meaningful only for a
  global and there is no way to declare an immutable local, so plain assignment behaves identically. The
  guard does fire on an immutable global.
  `make verify`: 231/19/13/4/2.

- **X3a: a foreign blob is an upper bound, an alignment and a missing `mut`.** Gap 6, and the entry that
  recorded it named the wrong problem. It said the fix was "`extern` gaining a way to name a foreign type's
  size"; the size was the least important of three and the only one needing no mechanism.
  **The user asked the question that dissolved it**: *"why is this a problem in the first place, don't we
  already know the size of a C mutex?"* We do - measured on this machine, 40 and 48, and glibc does not
  break its ABI so it will not drift. But 40 is an **architecture** fact, not a C fact: glibc's own header
  here defines three different `__SIZEOF_PTHREAD_MUTEX_T` values (40, 32, 24) by arch, and other platforms
  differ again. olang has no conditional compilation at all - `compif`/`compelse` are reserved words with
  no implementation - so `chan.olang` was not a file with a possibly-wrong number, it was a file that
  silently worked on one architecture with no way to say so.
  **And that is exactly why the size did not need solving.** Nothing embeds the blob by value: X3 hands
  the foreign side a pointer and nothing else, so over-reserving is free and only under-reserving
  corrupts. One generous constant is therefore correct on every target at once without knowing any of
  them, which is the user's own call - *"we just hedge with the maximum size and don't involve clang."*
  **Alignment was the real hazard and was invisible.** The language cannot state an alignment - zero
  matches in the spec - so `chan.olang` was correct only by accident: `&s` makes those fields arena
  allocations and `__olang_scope_alloc` rounds every allocation to 8. An unmarked inline `byte[N]` has
  alignment 1, can land at any offset in its struct, and a foreign type holding a pointer or performing an
  atomic on itself cannot tolerate that. So the `&` marker is load-bearing well beyond scope, which
  nothing had written down.
  **Opacity turned out to be free, which was the user's second call**: *"isn't this simply a matter of
  declaring the array without mut? yes, we may peek into it but it's not gonna break things is it?"* Right
  on both halves. Writing is the only operation that can corrupt a live mutex, and dropping `mut` rejects
  it - verified as `variable is immutable` even from inside the declaring module. It restricts pthread not
  at all, because an `extern-param` carries no mutability (X2) and X3 marshals a bare pointer; both channel
  tests pass unchanged, producer/consumer included. And it is sound rather than a convenient fiction: the
  emitted IR contains zero `readonly`/`invariant`, so `mut` is a front-end check and nothing tells LLVM the
  bytes are stable while a foreign call writes them. Reading stays legal and is merely meaningless.
  **The clang-probe design was worked out and rejected on the right grounds.** Compiling
  `char p[sizeof(pthread_mutex_t)]` and scraping the array length out of `-S -emit-llvm` is genuinely
  cheap - a dozen lines, never executed, so it cross-compiles - and my "that is Zig's `@cImport`" objection
  was overstated, since reading two integers is not translating declarations. The user pushed back on
  exactly that and was right. What killed it is that it buys only the number, the part that did not need
  solving, while making the compiler able to fail because a C **header** is missing - something nothing in
  it can do today. Held for the day a foreign struct's *fields* are needed, which is real translation and
  which neither approach addresses.
  Net change: no compiler code at all. Three lines of `chan.olang` and a spec rule.
  `make verify`: 231/19/13/4/2. `make race`: still exactly one report.

- **Alignment solved by choosing the element type, not by adding a feature.** X3a's first version said a
  foreign blob "must carry `&`", because a marked array is arena-allocated and the arena rounds to 8. That
  was true and was a workaround: it made the guarantee depend on how the field happened to be *stored*
  rather than on what it *was*, and it silently blessed a `byte[N]` whose own alignment is 1.
  **An array is aligned as its element type is**, and olang lays aggregates out by the same
  natural-alignment rule as the platform's C compiler - `TypeGetAlign` already exists for exactly that,
  having been added when disagreeing with LLVM's layout was a heap-corruption bug. So the alignment a
  foreign type needs is expressible today by picking an element type that has it, and dividing the
  reservation by its size. `int64[8]` and `byte[64]` are the same 64 bytes; the first is 8-aligned
  everywhere and the second is 1-aligned everywhere.
  **Measured rather than reasoned**: in C, a `char blob[16]` following a single `char` sits at offset 1
  with struct alignment 1, while a `long blob[2]` sits at offset 8 with alignment 8. olang emits the same
  LLVM struct types (`{ i8, [16 x i8] }` versus `{ i8, [2 x i64] }`), so it inherits exactly that layout.
  `chan.olang` now reserves `int64[8]` for each pthread object and declares the externs as `int64[]`; X3
  marshals either to the same bare pointer, so nothing else changed and both channel tests pass.
  **An `align` keyword was considered and not built.** It is a real feature - syntax, struct layout,
  alloca and arena propagation - and it would express something the type system can already say. The one
  thing the element-type route cannot reach is an alignment greater than a primitive's, currently 8; no
  foreign type in view needs more, and X3a states the limit rather than leaving it implied. If a vector
  type or a long double ever turns up, that is when an alignment feature earns itself.
  `make verify`: 231/19/13/4/2. `make race`: still exactly one report.

- **P9: five atomic builtins.** The last of gap 7's three parts that had a clear design. They are named and
  resolved exactly as `len` is - intercepted before the ordinary call lookup, so no declaration can shadow
  one - and each lowers to exactly one LLVM atomic instruction.
  **An `atomic` type qualifier was rejected, and it is the trap worth recording.** `atomic int32` reads
  tidily and would make `x = x + 1` look like ordinary code while being an atomic load, an add and an
  atomic store: three operations where the program clearly meant one, and a lost update under contention.
  C++ only escapes this by overloading the operators to perform a read-modify-write. Naming each operation
  puts both the atomicity and the cost at the use site, which is what the rest of the language does.
  **Sequentially consistent, no ordering argument.** Go made the same call for `sync/atomic`; a weaker
  ordering is among the easiest things in systems programming to get subtly wrong, the x86 difference is
  confined to stores, and admitting `relaxed` later is purely additive.
  **`atomicCas` returns what it found rather than a bool**, which is the detail that made it fit a language
  with no multiple returns. For a *strong* compare-exchange "what it found" and "did it write" are the same
  fact - it writes exactly when it found `expected` - so `atomicCas(x, e, d) == e` is the success test and
  nothing is lost. A weak exchange, which may fail spuriously, could not be expressed this way.
  **Alignment came free from the work immediately before it.** An atomic instruction requires natural
  alignment, and `TypeGetAlign` already gives every integer exactly that, in a local, in a field and in the
  arena alike - so there was nothing to add.
  **S3 needed one change.** Four of the five write their target, which is precisely S3's own criterion for
  an expression that may stand alone as a statement, and they were being rejected as discarded values.
  `atomicLoad` still is one, correctly.
  **The P7 invariant was re-checked rather than assumed**, because this is the first synchronisation the
  language can express without calling pthread through `extern` - exactly the case the invariant was
  recorded to protect. Two structurally identical programs, two tasks each incrementing one shared counter
  20,000 times: TSan reports the plain version and is **silent** on the atomic one. So it does follow LLVM
  atomics as happens-before edges, and "TSan sees 100% of the edges" still holds.
  **P9a records the sharp edge this leaves.** A plain access racing an atomic access to the same location
  is still a race, because no type marks a location as atomically-accessed - keeping every access to such a
  location atomic is the program's own job, and `-race` is what checks it. Making that structural would
  need an `Atomic<T>` wrapper type, which is the qualifier idea in a different hat and carries the same
  cost of hiding operations behind ordinary-looking syntax.
  `make verify`: 234/19/13/4/2. `make race`: still exactly one report.

- **G8a: generics compose.** Taken on as its own piece of work after it turned out to be what stood behind
  an `Atomic<T>` wrapper - and behind every container helper. Before it, generics worked for leaf types
  (`Chan<int32>`) and for functions over a bare `<T>`, but `Vec<T>` could not be written **anywhere**:
  not as a parameter type, not as a field, not in the spec's own example (`type Outer<T> struct(b Box<T>&)`,
  which G8's last sentence explicitly sanctions and which did not compile).
  **The path to it was three wrong diagnoses in a row, each corrected by testing rather than reasoning.**
  First I proposed deferring the atomic builtin's integer check to instantiation, "G18-style". The user
  asked whether that was a carveout; checking showed **G16 already covers it** - a generic body is not
  checked at all until instantiation, demonstrated with `len()` over `<T>`, which is accepted at
  declaration and rejected only when instantiated with a non-array. So that fix was never needed. Then I
  proposed name resolution as the whole job; building it moved the error but enabled nothing, so I reverted
  it and said so. Only then did the real shape appear.
  **Three things were broken, and the middle one was the actual bug.** Resolution was the visible one: a
  bare `IDEN` in type-args was only ever looked up as a declared type. **Substitution** was the real one,
  and invisible until resolution worked - `Box<T>` already became an instantiation named `Box$T`, and
  `TypeUnify` already bound `T=int32` through the fields, but substituting rewrote the field types while
  leaving the name derived from the *old* arguments. `Box$T` never became `Box$int32`, so every use failed
  its fit check with a message about the value's type. An instantiation now records what it was applied
  from and with what, and substitution re-applies the generic instead of walking its fields. **Method
  lookup** was the third: it matched receivers by exact name, so a method over `Cell<T>` was invisible to a
  `Cell<int32>`; a still-generic receiver now matches any application of the same generic, checked only
  after an exact match fails so M21's overloading by receiver is untouched.
  **A pattern is not a type.** An application whose arguments are not all known has no layout and no
  constructor and must not be emitted - the same rule G16 states for a generic function's body. Missing
  that filter crashed codegen (`ERROR: bug found`) on the first field whose type was still a variable,
  which is how the omission surfaced.
  **Resolve, never introduce.** A bare name in type-args resolves a parameter in scope and never declares
  one, so `Cell<Poont>` stays "unknown type" rather than silently making the function generic over a typo -
  verified as a negative test. The cost is that a variable appearing *only* in type-args needs the `<T>`
  spelling there, and `Cell<<T>>` cannot lex because `<<` is the shift token - the same hazard recorded for
  `Point&&`. A space fixes it (`Cell< <T> >`), which is ugly but rare, unambiguous, and needed no lexer
  change. The alternative - letting a bare name introduce - was rejected precisely because a typo would
  then compile.
  **Scope is the whole signature, not left-to-right**, since G3 already says a function's type-variable set
  *is* whatever appears in its signature; scoping this one thing positionally would have been the odd rule.
  **One pre-existing limitation this did not introduce**, and worth separating because it looked like a
  failure of the new work: a numeric literal does not adapt during generic inference, so
  `Pick(int64Var, 7)` fails to unify `T` - the literal's own type is `int32` (T6a) and inference matches
  exactly rather than by representability. Isolated by reproducing it on a plain
  generic with no composition anywhere - same error. A real gap, for its own piece of work.
  `make verify`: 240/19/13/4/2. `make race`: still exactly one report.

- **G16a: an instantiation's name is its identity, and it was under-specified.** Found by the user asking
  whether two modules instantiating one generic over the same type clash at link time. They do not, and
  that part was already right: instantiations are `linkonce_odr`, every object that uses one emits it, and
  the linker keeps one copy - measured on the corpus, which emits four copies of several instantiations and
  links cleanly. The question was worth asking anyway, because checking *how* the name is built turned up a
  real bug next door.
  **`typeShortName` collapsed two different things into one name.** A struct contributed only its **bare
  name**, ignoring its owner - so two modules each declaring a `Point`, which are different types by the
  owner+name rule T29 states, shared a single instantiation of any generic over them. And every array
  contributed the literal string `"arr"`, so `Box<int32[2]>` and `Box<int64[4]>` were one instantiation.
  **Three correct programs were rejected**, each with a diagnostic pointing somewhere unrelated: two array
  instantiations in one module ("this value's type doesn't match the target's"); two modules' same-named
  but differently-shaped `Point` ("unknown struct member", on a member that plainly exists in the type as
  written); and - the clearest statement of the bug - two modules whose `Point` types were *identically*
  shaped, which is a program with nothing wrong with it at all.
  **Nothing miscompiled in any case found.** The reuse always failed a later fit check, because that check
  compares types by owner+name and the reused instantiation genuinely is a different type. So this was a
  diagnostic bug rather than a soundness one - stated as an observation about the cases tried rather than
  as a proof, since it depends on every use reaching a check.
  **The fix is one function.** A declared type argument is owner-qualified, mirroring the identity rule the
  type itself has; an array argument carries its element type, its length and its reference-shapedness,
  which is precisely what T25a already says distinguishes two array types. Both cross-module cases now
  build *and run*, each module getting its own `Point`'s layout.
  No migration needed: B3 already rebuilds an object when the compiler binary is newer than it, which is
  exactly the situation a change to symbol naming creates.
  `make verify`: 243/19/13/4/2. `make race`: still exactly one report.

- **B2c: `-debug`, the one mode that turns optimization off.** User-directed: *"I want all backend
  optimization to be present unless in a special mode"*, followed by asking whether such a mode had ever
  been discussed. It had not - checked, and every `-O0` in the whole record is incidental, a case where IR
  was compiled by hand to diagnose something (S18b's destructor elision, the UB-under-optimization probes).
  Never a decision about a compiler mode.
  The state before it: `-O3` always, `-O1 -fsanitize=thread` under `-race` (chosen for report quality, not
  as a debug policy), and **no `-g` anywhere**, so no debug information of any kind was ever produced.
  **The compile and link steps now share one `modeFlags()`**, which is worth more than it looks: linking
  `-O3` objects with `-O0` ones is not an error, so two independent flag strings can silently disagree and
  produce something nobody asked for.
  **A debug object is a distinct artifact**, and this is the fourth time that rule has been needed -
  `.main.o`/`.test.o` (B4), `.tmod.o` (P1d), `.race.o` (P7) and now `.debug.o`. The failure is always the
  same shape: a build reuses objects from a different mode and silently is not what was requested.
  **What it buys, stated honestly, is `-O0` and nothing else.** `-g` is passed and is currently inert -
  verified rather than assumed, and my first check was a false positive I had to correct: grepping objdump
  output for "debug" matched the *filename* `runner.debug`, not a section. Checked properly, the binary has
  no `.debug_*` section at all, and the reason is upstream - this compiler emits **zero** debug metadata in
  its IR (no `DISubprogram`, `DILocation` or `DIFile`), and clang cannot synthesize what is not there. So
  no line numbers and no variable names.
  What `-O0` alone does give is real: nothing inlined, so a backtrace names the functions actually called;
  nothing reordered; values in memory rather than registers, so state is inspectable. That is precisely
  what the S18b investigation needed, and it had to be done by hand at the time. Emitting DWARF is its own
  piece of work and the rule needs no change when it happens.
  **Correction to that commit's own message: `-debug -race` was NOT "verified running".** It segfaults, and
  so does plain `-debug`, on any program whose loop declares a local. That is not a fault in the mode - it
  is a pre-existing codegen bug the mode immediately exposed, recorded in the next entry. The claim was
  written before the check finished and should not have been made.
  `make verify`: 243/19/13/4/2 (which is at -O3, and unaffected).

- **A local declared inside a loop is alloca'd per iteration - found by `-debug` on its first real use.**
  `-O0` on the corpus segfaulted immediately. Narrowed to one shape: a `join` whose task runs a loop that
  declares a local. A *short* task passed and a long one crashed, which looked like a concurrency bug in
  the P1d unwind path - and was not. The `done` was a red herring: the same loop crashes with an ordinary
  block end and no early exit at all.
  **What made it look like concurrency is that `-O3` folds the task's loop away entirely**, so at `-O3` the
  task finishes instantly and the crash never has time to happen. The same optimisation that hid three
  earlier benchmarks hid this too.
  **The real fault is a stack overflow on the worker thread**, established rather than guessed: the
  faulting instruction is `mov %rdi,0x18(%rsp)` - an ordinary prologue spill - at an address just below
  `rsp`, i.e. the guard page, while every frame on the path is 200 bytes or less. That means tens of
  thousands of frames or a leaking stack pointer, and it is the latter. The emitted IR says so directly:
  ```
  for.body.0:
    %loc.42 = alloca ptr        ; the local, per iteration
    %t45 = alloca %e.Crate2     ; a temporary, per iteration
  ```
  400,000 iterations of ~16 bytes is ~6.4MB against an 8MB thread stack.
  **This is exactly the trap O2 already records** - "an alloca inside a loop grows the stack by a header per
  iteration and segfaults at a few million" - which was fixed for *scope headers* by hoisting them to the
  entry block, and never for ordinary locals and temporaries. `mem2reg` at `-O3` promotes them to registers,
  so it has never mattered and has never been visible.
  Every alloca this compiler emits is fixed-size, so all of them are hoistable; the fix is to emit them
  into a per-function entry stream rather than at the point of declaration, which is LLVM's own convention
  and exists for precisely this reason.

- **O2c: every alloca hoisted to the entry block - and it was a live bug at `-O3`, not a `-debug` one.**
  The previous entry recorded this as a stack overflow `-O0` had exposed. Checking whether `-O3` was
  genuinely safe showed it was not, and the difference matters: `mem2reg` promotes a loop-body alloca to a
  register **whenever it can**, and it cannot when the local's address escapes into a call it cannot
  inline. A call into another module is exactly that, since without LTO there is nothing to inline.
  **Measured, at `-O3`, in an ordinary `-b` build**: a loop declaring a local and handing it to a function
  in another module runs fine at 1,000 and 100,000 iterations and **segfaults at 1,000,000** - which is
  where 8MB of stack over ~8 bytes per iteration says it should. The single-module version of the same
  program is fine, because the callee inlines and the escape disappears; that is the whole reason this has
  been invisible.
  **The path to it is worth keeping, because two things pointed the wrong way.** It first reproduced
  through `done` inside a `join` block and looked like a concurrency bug in the P1d unwind path - it was
  not, and the same loop crashes with an ordinary block end and no early exit. And the reason the
  concurrency framing was plausible at all is that `-O3` folds a task's loop away entirely, so the task
  finishes instantly and the crash has no time to happen; the same optimisation spoiled three benchmarks
  earlier in this session. What settled it was reading the fault rather than theorising: a plain prologue
  spill to just below `rsp` - the guard page - with every frame on the path under 200 bytes, which means a
  leaking stack pointer, and the emitted IR showing two allocas inside `for.body`.
  **O2 already records this trap** - "an alloca inside a loop grows the stack by a header per iteration and
  segfaults at a few million" - and fixed it for scope headers by hoisting them to the entry block. The
  same reasoning was never applied to ordinary locals and temporaries. A rule applied in one place gets
  missed everywhere it is not applied, which is the lesson `TypeValueChildren` and G18 already encode.
  **The fix is what a C frontend does, and that was verified rather than assumed.** Clang hoists a
  fixed-size local to the entry block however deep in the source it is declared - checked directly on a C
  loop declaring a struct, which produces one entry-block alloca and none in the loop. So all thirty alloca
  sites now write to a per-function entry stream, spliced ahead of the body; the pattern follows the
  redirect-and-splice `cgDeepEq` already used.
  **The other sanctioned approach does not apply here, which is worth knowing before it is reached for.**
  `llvm.stacksave`/`llvm.stackrestore` around the loop body is what clang emits for **VLAs** - the allocas
  it cannot hoist, because their size is not known until the statement runs. olang emits **no
  variable-length allocas at all**: a runtime-sized array is arena-allocated, never stack-allocated, so
  there is nothing left that hoisting cannot reach. Confirmed by searching the emitted IR for the
  `alloca <type>, i32/i64 %n` form, which does not occur.
  Two corpus tests pin it at two million iterations each, with the local's address escaping so the slot
  cannot be promoted away.

- **C11's stated reason was wrong for years, and the user's own argument is what found it.** The proposal
  was: let a destructor-bearing type be copied, since "the constructor call should register the destructor,
  that way we can copy it all we like and the destructor still only runs once."
  **The premise is exactly what the implementation does** - C9 registers per constructor call, never per
  storage location - and it was verified rather than taken on trust: one constructor call reached through
  three reference names and stored inside another struct runs the destructor **once**; three calls run it
  three times. Two corpus tests now pin that.
  So the justification C11 carried - "a destructor asserts an instance owns something releasable exactly
  once, which needs a well-defined instance count; no copy is identifiably the owner" - describes a problem
  **already solved somewhere else**. It was in the spec, in CLAUDE.md, and quoted verbatim in the error
  message, and none of the three were load-bearing.
  **The real reason is that §8 checks references and not values.** A reference carries a scope tag and
  containment proves it cannot outlive what it names; a by-value copy carries no tag, because it is plain
  data. So a copyable destructor-bearing type could move the released resource into storage nothing tracks,
  and a read after the destructor ran would be undetectable. **Use-after release, not double release** -
  which is also the class of the pre-C11 bug already on record ("passing by value released the caller's
  resource at the callee's return and destructed it again later").
  Honest limit: this cannot be demonstrated in olang, since C11 is precisely what stops the program being
  written. It is an argument, recorded as one, where the registration half is a measurement.
  **The correction is what makes the Vec rule coherent.** A `Vec` needs no destructor at all - the arena
  reclaims its buffer - yet must not be copied either, and under the old justification there was nothing to
  appeal to. Under the corrected one it is the same defect: a value copy duplicates the `{ len, ptr }`
  descriptor, two Vecs share one buffer, and §8 sees neither. Measured: `w mut V = v` then `w.data[0] = 99`
  changes `v.data[0]`. So "a struct owning a D14a run-time-sized field is reference-only" composes from the
  same principle rather than being a second, unrelated rule.
  Spec, CLAUDE.md and the diagnostic all rewritten; the message now says what it is actually protecting.

- **`Vec` abandoned, `List<T>` in its place, and `Buffer` designed and rejected on measurements.**
  A contiguous growable array had been the assumed goal since generics landed. Working out what one costs
  killed it, and the deciding question was what the language is *for*: an inference engine and big-data
  work allocate **once, at a size known at load time, and never resize**. `T[expr]` already is that. The
  container everyone assumed was missing was never the thing that mattered.
  **`List<T>` is chunked and append-only**, with `ToArray()` copying to contiguous. Non-contiguous indexing
  measured **1.7x** (335M accesses, power-of-two chunks, shift and mask: 0.045s flat against 0.080s
  chunked) - but append-only never pays it, since you append and flatten once and never index a chunk.
  Indexing is additive later; starting with it taxes every user for a capability most will not use.
  **Chunked rather than hash-like**: for a sequence the keys are `0..n-1`, so a shift and a mask is a
  perfect hash with no collisions, probing or load factor. A hash pays for a problem a sequence does not
  have.
  **`Buffer` - a virtual-memory reservation so the storage never moves - was measured twice and failed
  both.** Creation is cheap (0.5us regardless of size) and a borrow would stay valid *and current*. But a
  touched mapping of >=1MB costs ~320KB resident to transparent huge pages: **20,000 small buffers is 6.3GB
  against ~1.3MB via malloc**. And the version that does not reserve up front - grow a page at a time,
  linking each new page contiguously - **does not work at all**: `mremap` in place returned ENOMEM on every
  one of 8,192 attempts, and `MAP_FIXED_NOREPLACE` explained it with EEXIST. The adjacent page is already
  mapped, because Linux packs mmap regions with no gaps. Since the whole proposal was conditional on not
  reserving everything at once, that settled it.
  **The one result worth keeping from the dead end**, because it corrects something I had wrong for several
  rounds: the arena never reuses storage within a live scope - `__olang_scope_alloc` only bumps, and chunks
  return to the pool only at close - so a borrow taken before a growth is **memory-safe**, pointing at live
  untouched memory. Verified with 8 growths and 1,600 intervening allocations in the same scope: the
  original borrow still read its original contents. I had been arguing for `&expr` on the grounds that
  slices *dangle*; they do not. What they do is go **stale**, which is a wrong answer with no diagnostic
  and is worse in practice - the user pushed back on exactly that. A `List` that never hands out its chunks
  has neither problem, which is what makes `&expr`, the invalidation rule and the borrow tracking all
  unnecessary rather than merely deferred.

- **TBAA metadata: olang store loops did not vectorize at all, and now match C (T36).**
  The question was "does a Vec cost more to index than an array", which measured as *no* on the read path
  (0.134s vs 0.133s through a slice - LICM hoists the descriptor) and *2x* on the append path. Isolating
  the 2x is what opened this up: a loop that indexes directly and only additionally does `v.n = v.n + 1`
  costs exactly what `Push` costs, so none of it was the pointer chase, the method call or the descriptor.
  **Then the baseline turned out to be the real story.** olang's *plain* store loop - no Vec, no count -
  was **0.039s against C's 0.015s**, with **0 vector instructions against C's 47**.
  **Three wrong hypotheses, each killed by an experiment rather than an argument.** (1) The O2 per-block
  scope: the loop body opens and closes a block arena every iteration, and an opaque call in a loop body
  does block vectorization - but deleting both lines from the IR by hand left it at 0. (2) A missing
  `inbounds` on the GEP and `nsw` on the induction variable, both of which olang really does omit - adding
  them by hand left it at 0. (3) TBAA being what carries C: `clang -fno-strict-aliasing` still vectorizes
  and is still fast, so type metadata was not the mechanism *there* (LLVM distinguishes C's two `malloc`
  results directly, and versions the loop with a runtime alias check).
  **`-Rpass-analysis=loop-vectorize` named it** - "could not determine number of loop iterations" - and the
  optimized IR showed the cause plainly: `%t75.unpack14 = load ptr` **inside** the loop, reloaded every
  iteration because a `store i32` might have overwritten the `{ i64, ptr }` descriptor it came from. An
  address recomputed from memory each iteration cannot vectorize.
  **Proved by hand before building anything**: two `!tbaa` tags pasted into the `.ll`, one on the descriptor
  load and one on the element store, took it to **23 vector instructions and 0.014s**, against C's 0.015s.
  **T36 is the language fact underneath**, and it is stronger in olang than in C: no unions, no casts, no
  reinterpretation, a numeric conversion produces a value, a choice reaches its payload only through the
  tag-selected case, and `&` is typed. Written as a spec rule rather than left as an implementation
  assumption, because it is what a future feature must not break.
  **Scope of the implementation.** Six primitives plus the runtime-length array descriptor; everything else
  untagged, which means "may alias anything". A **choice payload is excluded on purpose** - two cases can
  put different types in the same bytes, which is exactly the union case C handles with a parent node - so
  it is left alone rather than reasoned about. The arena needed nothing: a recycled chunk holding a
  different type later is malloc/free's own situation, with an opaque `__olang_scope_close` between the two
  lives. `llvm.memcpy` and every foreign call stay untagged, so X3b is untouched.
  **A wrong condition cost one round.** The descriptor tag was keyed off `arrMalloc && !structMAlloc`, but
  `llvmType` gives a runtime-length array the `{ i64, ptr }` shape **whatever marker it carries** (T11) - so
  the field that mattered was never tagged and the measured win was zero with the tags visibly present in
  the IR.
  **Then the element/field split, which is what answers the original question.** One node per type left
  `v.n` sharing `int32` with every array element, so the count still round-tripped every iteration. There
  are now **two families per type, chosen by the LAST step of the access path**: an element reached by
  indexing, or a field (a struct member, a local, a global). Sound because no storage is reachable both
  ways - olang cannot build an `int32[]` view over a `Point[]` - and `pts[i].x` is a field access from every
  path that reaches it. **Push went 0.068s -> 0.013s, 5.2x**, with 38 vector instructions against none, and
  C measures 0.011s on the same program.
  The split creates an obligation the single-family version did not have: **every access to one location
  must use the same family**, or LLVM is told two aliasing accesses do not alias. So an array literal's
  element stores are element-tagged exactly as a later indexed read is. Only nine call sites each for the
  load and store helpers, and only one assignment site can have an index target.
  **The choice payload needed a real argument, and my first write-up was wrong about it.** I recorded that
  payloads were "excluded"; they are not. A payload's fields are primitives and the IR shows them tagged -
  `getelementptr { i64, [8 x i8] }` to the payload, then `getelementptr { i32 }` to the field - so two cases
  really can put an `int32` and an `int64` in the same bytes under different tags. It is safe for a
  different reason: **changing which case is live is always a whole-value store of the choice, and an
  aggregate store carries no tag**, so it aliases everything and no tagged read can move across it. That
  argument is now tested rather than asserted - a three-case choice written and read alternately, and the
  same in a loop, agreeing at `-O0` and `-O3`.
  Verified across the whole corpus: 248 tests, `-race` reporting only the one intentional race, `-debug`
  green, and every other `.olang` file passing.

- **`volatile` considered and rejected, and X3b written to say why the case that matters is already
  covered.** The question arrived as "can we do volatiles first", and the useful move was to take each of
  C's four uses separately rather than answer the keyword as a whole.
  **The user's own diagnosis - "because we don't have free pointers?" - is right about one of the four and
  is worth separating from the rest.** It is exactly right for MMIO, which is what `volatile` is genuinely
  for: reading a hardware register is itself the effect, that needs an address to name, and olang has no
  pointer type, no address-of and no integer-to-pointer conversion. The feature's core purpose is
  inexpressible here, not unimplemented. It is *not* the reason for the other three - the threading misuse
  needs no pointer at all (Java has none and has a stronger `volatile`), and the `setjmp` case is about
  locals.
  **The `extern` case is the one that had a real hole, and the hole was in the spec rather than the
  code.** X3 hands a bare pointer to foreign code that writes through it - the classic `volatile` shape -
  and it works because an external call is **opaque**: LLVM must assume it reads and writes everything
  reachable from its arguments. Verified rather than recalled: **zero** `readonly`, `noalias`, `writeonly`,
  `memory(...)` or `invariant` attributes across every emitted `.ll`. X3a already depended on this without
  saying so (it is what makes a `mut`-less `pthread_mutex_t` blob safe while pthread writes it) and P8c's
  whole ordering story does too, since a lock reached through `extern func` orders nothing if the accesses
  around it can move across the call. So it is X3b now. LTO does not weaken it: the foreign side is native
  objects from libc, not bitcode in this program, so there is nothing to inline through.
  **Checking the `setjmp` case turned up two facts worth keeping, both the opposite of what I expected.**
  First, `returns_twice` does **not** protect an alloca from promotion - a minimal probe optimizes
  identically with and without it, folding the counter to a constant either way. Second, the harness's own
  pass/fail counters really *are* promoted: at `-O3`, `main` keeps no `alloca i32` at all and the counts
  live in phi nodes, which is precisely where C would demand `volatile`.
  It is correct anyway, and the reason is structural: **nothing writes those counters between a `setjmp`
  and its `longjmp`** - both increments sit on the two landing paths, after the jump has arrived, and a
  test body never touches them. Confirmed behaviourally on a file mixing `done`, failing asserts and
  ordinary passes, which reports `5 passed, 2 failed` with the jumps interleaved between both counters.
  Nothing had stated that invariant, and it is one an ordinary-looking edit could break, so it is a comment
  at the declaration now.
  **The deciding argument against building it is P8b.** A data race is undefined with no exception for any
  type or size, and `volatile` does not make a race defined in C either - so the keyword would read as a
  race fix while the spec says it fixes nothing. That is the same trap withdrawing P3 cleared away.
  **Revisit only for MMIO**, and then as builtins rather than a qualifier, for P9's reason exactly: with a
  qualifier `x = x + 1` reads as ordinary code while being three separate accesses.

- **LTO enabled by default (B2d), after the first attempt at it had produced a number that was wrong.**
  The question was revisited under B2c's rule - all backend optimization present unless a special mode turns
  it off - and whole-program inlining is backend optimization, so the burden was on LTO to cost something,
  not to earn its place.
  **The earlier session's claim that it made binaries 4.5x smaller was an artifact** of globbing `$SP/*.o`
  with stale objects in it, and was corrected at the time to "16,288 vs 16,072 bytes, no meaningful
  difference". So this round started with no demonstrated benefit at all, and the first two benchmarks
  found none either - which is worth keeping, because both were measuring the wrong thing.
  **Benchmark 1, 4M-element array, 200 rounds: identical (1.01s vs 1.01s).** Memory-bound at ~3.2GB/s; the
  call was never the bottleneck. **Benchmark 2, the array shrunk to 2,048 so it sits in L1: still identical
  (0.99s vs 1.03s).** The loop carries `h` from one iteration to the next, so the multiply's latency hides
  the call entirely.
  **Benchmark 3 made the per-element work independent** (`h = h + Mix(data[i], i)` rather than
  `h = Mix(h, data[i])`) and the answer appeared at once: **0.834s -> 0.145s, 5.75x**, interleaved, five
  runs each, through the compiler itself rather than a hand-run clang. The mechanism is visible in the
  output: vector instructions go **10 -> 58**, and `Mix` is not in the binary at all - LTO inlined it and
  the loop then vectorized. **A call the optimizer cannot see through does not cost a call, it costs the
  vectorization** - exactly the effect that made E26a's float-to-int check 3.3x rather than the few percent
  a compare should be. Two identical-looking programs measuring 1.00x and 5.75x is the useful result here.
  **The cost side came out backwards**: a clean `-b` of the corpus is **0.50s -> 0.386s** and a `-c` of its
  largest module **0.36s -> 0.23s**, both interleaved. `-c -flto` writes bitcode instead of optimizing, so
  the optimizer runs once over the merged program rather than once per module. Two things make that a net
  win at this scale - the runtime is emitted `linkonce_odr` into every object (16 functions across 4
  objects in the corpus, 48 copies optimized and discarded by the linker), and four full `-O3` clang runs
  become four cheap ones plus one. The `-t` path measures noisier because it *runs* the corpus as well as
  building it, which is why `-b` and `-c` are the numbers quoted.
  **ThinLTO was built and measured rather than assumed.** Runtime: **indistinguishable** - 0.146s for both,
  interleaved. A first comparison had put thin 14% ahead, which was drift between two non-interleaved runs;
  interleaving is the same discipline that settled three earlier measurements in this session. Build time:
  thin is **slower** here, 2.8s against 2.5s, because its summary-index and parallel-backend machinery has
  a fixed cost and a four-module program has nothing to parallelize. ThinLTO is the right answer for a
  large codebase doing incremental rebuilds; recorded as the thing to revisit if that day comes.
  **`-race` stays out on purpose**, for the same reason it is already `-O1` rather than `-O3`: TSan names
  the function a race happened in, and cross-module inlining moves code between functions. `-debug` turns
  optimization off wholesale, so it is out by construction. Both already produce distinct artifacts (B4),
  so an LTO object and a non-LTO one are never mixed.
  **The one visible change is that `-c` now writes LLVM bitcode rather than an ELF object**, which is what
  `-c -flto` writes in every compiler. That is a format change to an existing artifact, and it needed no
  new rule because B7 already rebuilds an object when the compiler binary is newer than it. Verified
  rather than assumed: fresh ELF objects plus a touched compiler binary rebuilt as bitcode and linked to a
  working program. Without B7 this would have been precisely the silent staleness trap that cost real
  debugging time twice before.

- **O2c, second pass: the first fix reached one emitter of four, and the corpus test written FOR it was
  what fell over.** Hoisting was added inside `cgFunction`, which builds an ordinary function body. Three
  other places emit a `define` of their own and never went through it - the program entry point, the test
  harness's `main`, and the per-module globals initializer - plus the `linkonce_odr` choice-equality
  helper, which is reached *from inside* another body. The harness is the one that bit: every `test { }`
  body is emitted into a single `main`, so the new "a local declared in a loop does not grow the stack"
  test grew it by 2,000,000 slots and segfaulted at `-O0`.
  **The nesting bug is the one worth remembering.** The choice-equality helper redirects the output stream
  because it can be reached mid-body, so it needs its own alloca stream too - and `cgBodyEnd` restored the
  alloca stream to *none* instead of to the enclosing one. The symptom was that hoisting worked for the
  first thousand-odd blocks of `main` and stopped dead at the first test comparing two choice values.
  Fixed by saving the previous stream in the body buffer, which is what the function stream already did.
  **The real lesson is that the emitters are not a list anyone can be confident they have finished**, so
  the rule is now checked instead of argued: `make checkir` reads the IR the build just emitted and fails
  on an alloca in any block after the entry block, and `make verify` runs it. The check found the fourth
  site after the other three were fixed, and reported zero afterwards; it was also tested against a
  hand-written bad function, so a green result means something. Every function this compiler emits opens
  with `entry:`, which is what makes the check one line of awk.
  With all four fixed, `-debug` and `-debug -race` pass the whole corpus - 245 each - which is what the
  first pass had claimed and had not actually been run against.
  `make verify`: 245/19/13/4/2. `-debug` and `-debug -race` now pass the whole corpus, which is what
  originally failed.

- **Methods get a receiver clause and are callable only as methods - which is what made methods on
  built-in types possible (M19, M21, T29b, T33).** The question that started it was how to give `int32`
  and `T[]` methods at all. Under UFCS (the original M19 entry above) a method was *inferred*: any function
  in a type's module whose first parameter took that type. That rule cannot be extended to a built-in, and
  not for want of trying - a built-in has no module, so "the type's module" is every module, and every
  `func helper(n int32)` anywhere would silently become a method of `int32` and collide with every other.
  Method-ness had to be *said*, and the user chose Go's spelling: `func (m T) Name(...)`, also for `T&`,
  with E12's conversions as usual.
  **The receiver is spliced in as parameter 0 of the signature at parse time.** That was the whole cost of
  keeping UFCS's one virtue: every rule about a parameter - D9, E12, §8, the P2 lifetime check - governs
  the receiver with no special case, because after parsing it simply *is* the first parameter. The
  `SNTX_RECEIVER` node survives only so the collection pass can mark the function as a method.
  **"Methods are to be called as methods" was the user's decision, and it answered an open question.**
  With both spellings legal, two modules each declaring `int32.Twice` could have been disambiguated with a
  plain call. With only the method spelling, nothing can tell them apart - so the second declaration has to
  be impossible rather than resolvable: a *(built-in type, method name)* pair is declared at most once per
  program, reported at declaration. No module is privileged, stdlib included. (The alternative raised
  earlier - built-in methods reserved to the stdlib - would have made the stdlib special, which the
  language has so far avoided entirely.)
  **Implementation, in the order it mattered.** Methods are hidden from `VarGetList`, the by-name lookup,
  which makes "not callable plainly" true everywhere at once - a plain call, a function value, a global -
  rather than at each site that might find one; a plain call that finds nothing but a method gets its own
  diagnostic saying how to call it. `SemanticMethodReceiver` answers from the declaration rather than from
  the first parameter's type. `VarGetMethod` searches every module for a built-in receiver, preferring an
  exact element type over a type-variable one. The declaration checks were rewritten: plain/plain clash,
  same-receiver method/method clash, foreign declared type, and the program-wide built-in pass. A
  built-in receiver's symbol is spelled by shape (`@mod.arr_int32.Summed`). M21's `AMBIGUOUS_METHOD_NAME`
  and `nameIsOverloaded` went away: there is no plain call left to be ambiguous.
  **An interface receiver was going to be banned and was kept instead.** Go forbids methods on interface
  types, and the first draft did too - but the corpus already relied on "a helper over an interface,
  called as `s.Describe()`" (M19a), and removing a working capability was not part of what was asked. So
  `func (s Shape&) Describe()` is a method of the interface, under the own-module rule, and may not reuse a
  name the interface itself declares, which would make `s.f` a dispatch and a static call at once.
  **Migration: 29 declarations became methods, 7 call sites changed, ~70 old-rule "methods" stayed plain.**
  Those 70 were never called as methods - only plainly - which is the best evidence that inferring
  method-ness was a guess. The seven call sites were mostly tests asserting "the plain call is the same
  function", whose premise the language change removed; they now say it is a compile error.
  **T29b lifted, because built-in arrays can now have the methods an interface asks for.** A run-time-length
  array is a `{len, ptr}` pair held by value, with no address of its own. A *marked* one is boxed into the
  interface's own scope - not borrowed through its slot, because a `byte[]&s` parameter's slot is in the
  callee's frame while its storage is the caller's, and an interface returned with tag `&s` would dangle
  into the stack. An *unmarked* lvalue is a value type, so borrowing its slot is exactly E12c. Dispatch uses
  the by-value thunk that already existed for struct receivers. A `T[N]` reaching a `T[]&` receiver gets a
  thunk that builds the pair from the length the table knows statically - E12's widening, at the dispatch
  boundary, so `int32[1, 2, 3]` satisfies an interface its element type's methods implement.
  **Boxing would have broken T33, and was caught by asking what `==` does next.** Two conversions of one
  array reference produce two boxes, so pointer identity would call them different instances. The fix puts
  one trailing entry in every dispatch table - null for pointer identity, a pair comparison for a boxed
  array - and routes interface `==` through a `linkonce_odr` helper that reads it only when the tables
  agree and the pointers do not. It needs branches (a null table has no trailing entry to read), which is
  why it is a helper rather than inline, for the same reason T17a's choice equality is. Identity is
  **same storage, same length**. Considered and rejected: a three-word interface value (changes every
  interface's layout for one case), and stating that two conversions are two instances (true to the
  mechanism, false to T33's "names the same instance").
  **Two silent pre-existing bugs found on the way.** `buildRetStmnt` reported four of the fit outcomes and
  dropped the rest: `func f() byte { return 300 }` compiled and returned 44 (verified against the previous
  compiler), and a returned value that did not satisfy the return type's interface reached codegen and
  segfaulted it - that is how it surfaced, as a crash in `cgItabEntry` while `Base.olang` was half
  migrated. It now falls through to `reportTypeFit`. And `x mut I& = null` was rejected for every interface
  `I`, because `OperandFitsType` asked whether null's type satisfied the interface before asking whether it
  was null; T2a says interfaces are nullable. Verified broken on the previous compiler, fixed by ordering,
  and pinned by the T33 test.
  **One trap re-hit while writing the tests**: `int32[k]` in expression position is a one-element *literal*,
  not a run-time-sized array, and it type-checked as `int32[1]&` - which made the first array-interface test
  fail for a reason unrelated to the feature. Recorded again because it has now bitten twice; a diagnostic
  for it remains a good idea.
  `make verify` 267/19/13/4/2 plus checkir; `make race` reports only the one intentional race; `-debug`
  passes the corpus.

- **Interfaces stay implicitly satisfied; declared conformance (Java's `implements`) was weighed and
  rejected.** The user asked whether types should declare which interfaces they may be used as, and
  whether there is a real module reason to. There is exactly one, and it points the other way here.
  **The four things declared conformance buys**, each taken seriously: (1) a missing or misspelled method
  is reported at the type's declaration rather than at a conversion that may be in another module or not
  yet written - Go programmers recreate this with `var _ io.Writer = (*T)(nil)`, which is evidence the need
  is real; (2) adding a method to an exported interface breaks implementers at their own declarations
  rather than at scattered conversion sites; (3) no accidental satisfaction by a same-named method with an
  unrelated meaning - rare enough in a decade of Go to be theoretical; (4) the set of (type, interface)
  pairs is closed and known at the type's declaration, so every dispatch table can be built there and
  interface-to-interface conversion or a type switch becomes a lookup. (4) is the real implementation
  argument.
  **Why it loses in olang specifically**: M19's coherence rule already confines a type's methods to its
  declaring module. Add declared conformance and the declaration must sit there too, naming only
  interfaces that module imports - so a consumer can never fit a foreign type to its own interface without
  a wrapper type, and the dependency runs from implementation to interface. Built-in types make it
  absolute: `byte[]` has no module in which to declare anything, so the methods this session just made
  possible on it could never count toward an interface. Rust's way out - an `impl` written in either the
  type's or the trait's crate, policed by the orphan rule - is a much larger system than the problem.
  **What is kept from the other side**: (1) can be recovered by an optional compile-time assertion, purely
  additive and not built (a `test` block converting the value does the job today). (4) is recorded as the
  cost: when interface-to-interface conversion or type switches are built, the target's table has to be
  found at run time, needing either per-type method metadata (Go's runtime searches method names and
  caches the itab) or a table built over the whole program at link time. The latter suits olang, since
  `-b` already links the whole program under LTO; `-c` objects built apart would need care. Decided when
  the feature is.

- **G9a: a numeric literal no longer breaks generic inference.** `Pick(int64Var, 7)` failed with "type
  arguments can't be determined": `TypeUnify` bound `T` from each argument's own type in order, so the
  literal's default `int32` met `int64` and the call was declared ununifiable. Recorded as a known
  limitation during G8a; fixed now because `List<int64>` taking `l.Push(7)` would have hit it first thing.
  The rule is T6 moved one step earlier: a literal whose parameter is a bare type variable is skipped while
  every other argument unifies, and a literal reaching a variable something else bound simply adapts at the
  ordinary fit check afterwards - which is also where an unrepresentable one is rejected. A variable reached
  *only* by literals binds to the widest of their types by the rank binary operators already use, so
  `Pick(1, 2.5)` is a float64 call rather than an error; binding to the first literal would make argument
  order change the instantiation. Deliberately limited to bare type-variable parameters: a literal inside
  an array literal, or reaching `<T>[]`, carries its type in a structure where the element type is written.

- **E20a: `int32[k]` in an expression is a compile-time error.** It is a one-element array literal holding
  `k`, and it reads exactly as the declaration `x mut int32[k]` does, which means an array of `k` elements.
  The trap bit twice in real work: a benchmark wrote `int32[cap]` expecting an allocation, got a one-element
  array, indexed past it and corrupted the heap; and a T29b test wrote `r mut int32[]& = int32[k]`, which
  type-checked as `int32[1]&` and failed interface satisfaction for a reason that had nothing to do with the
  feature under test. The corpus had **no** intentional use of the shape. So the diagnostic is narrow -
  integer element type, exactly one item, that item a non-literal integer - and the one legitimate meaning
  keeps a spelling that already existed and is unambiguous: the D13b fill, `a mut int32[1] = k`.
  **Not taken, because it is a language change rather than a diagnostic**: making `T[expr]` allocate a
  run-time-sized array in expression position. It would remove the need for a var-decl just to get a buffer,
  but it takes the one-element literal's meaning away rather than guarding it, and `int32[5]` would then
  mean five zeroes where today it means one five. Worth raising if expression-position allocation is ever
  wanted.

- **`string.olang`: text operations as methods on `byte[]`, and two lexer defects found writing it.** The
  design question was whether text is plain `byte[]` or a nominal `type String byte[]` (T29a made the latter
  possible). Plain `byte[]` won, because receiver-clause methods on built-ins (M19) had just landed: every
  literal, slice and `$x` rendering already is a `byte[]`, so methods declared on `byte[]&` reach all of them
  with no conversion anywhere. A named `String` would need `String(x)` at every boundary and would buy a
  text-versus-bytes distinction that nothing currently needs; a program wanting it can still declare one.
  The module is `Eq`, `Compare`, `StartsWith`, `EndsWith`, `Find`, `FindByte`, `Contains`, `Trim` and
  `ParseInt`. `Eq` is the answer to string equality - `==` keeps E10's identity - which is also how the
  "without operator overloading" constraint is met. `Trim` borrows (`(t byte[]&s) ... byte[]&s`), so it
  copies nothing. `ParseInt` accumulates in the negative range so the most negative int64 parses, and names
  its failure (`EMPTY`, `INVALID`, `OVERFLOW`) as three words rather than the bare error, since a parser's
  caller wants to say what was wrong. Testing which word fired needed three one-word pass-through helpers,
  because a `catch` clause must cover everything the call can produce and there is one clause per `try` -
  a small awkwardness in writing tests for multi-word errors, noted rather than changed. `Split` waits for
  `List<T>`. A cross-module test in runner.olang uses the methods through a plain `import` whose alias is
  never written.
  **Lexer defects.** `\r` was not an escape at all. And `\0` inside a *string* literal decoded to the
  character `'0'`: the tokenizer accepted it and the character-literal decoder handled it, but the
  string-literal decoder in codegen had no case and fell through to the raw character. So `"path\0"` - the
  use `\0` was introduced for, NUL-terminating a path for a C call - produced `path0`. It went unnoticed
  because io.olang's only NUL-terminated path is built with an array literal ending in `0`. Verified broken
  before the fix and correct after; the spec's escape lists (L13/L14/L15) had also never gained `\0`, and now
  list both it and `\r`.
  **Also noticed, not changed**: `:=` rejects a concatenation (`g := "a" + $3`), because D15 admits only a
  literal, a constructor call or a slice. A concatenation's type is always `byte[]&`, so it arguably is
  "written at the declaration"; left as is since it is a rule change rather than a fix.

- **`List<T>` written (list.olang), and the six defects writing it turned up, plus one soundness hole left
  open on purpose.** The design was settled earlier (chunked, append-only, `ToArray` copies); what is new is
  that it exists and that it stressed parts of the compiler no test had reached. Chunks double from 8, so
  `n` elements take about `log2(n/8)` chunks and at most twice the storage; a list allocates everything into
  the scope it was built in, so it has no destructor; `ToArray` returns into the caller's scope rather than
  the list's, so the array outlives a discarded list. Four tests: empty, 1,001 pushes across many chunk
  boundaries with a trailing literal push (G9a), copy independence, and a list of structs.
  **The defects, in the order they surfaced**, each verified against the previous compiler:
  1. The `for` post clause was an `expr`, so a linked walk (`c = c.next`) did not parse. Made a simple
     statement - assignment or S3 expression - which is Go's rule. That also closed an S3 hole: a post of
     `i + 1` was accepted, discarded, and never advanced the loop.
  2. A generic type could not reference itself: `resolveTypeDecl` set `typeParams` only after
     `resolveStructCtorInto` had resolved the fields, so `next Node<T>&` saw a non-generic type.
  3. Allowing it made `instantiateType` recurse without end - `Node<int32>` substituted its field
     `Node<T>&`, which re-applied the generic, which was not yet registered. Now registered first.
  4. A self-referential struct's field held a mid-resolution snapshot of the struct - true of plain structs
     all along: `a.next.v` worked and `a.next.next` was an unknown member, because the snapshot had only the
     fields declared before `next`. `refreshStructSnapshots` re-points such fields at the finished type,
     after all modules resolve and at the end of each instantiation. That turned self-reference into a real
     cycle, and every walker that recursed through fields stopped terminating - `typeHasBareInterface`
     first, then `TypeCollectVars`. The finite snapshots had been what kept them finite. Fixed at the
     root: `TypeValueChildren` does not descend into a reference (a referent is a separate instance, not
     part of the value), and the four generic walkers read a declared struct's type arguments, which is
     where its type variables live, instead of its fields.
  5. A generic function's body could not resolve a bare `T` in type-args (`listChunk<T>`), because
     `currentTypeParamNames` is set only while the signature is resolved. Inside an instantiation the
     bindings are consulted directly.
  6. `ToArray` first returned garbage: its scope variable and its local were both called `out`, and
     codegen's local table is keyed by bare name, so `return out` loaded the hidden scope argument's slot.
     O3 already says a scope name is not a value; codegen now keeps them apart.
  **The soundness hole.** Probing why O5 rejected `a.next = b` for two locals of one block led to a real
  use-after-free with no List in it: `func attach(p mut N&s) { a mut N& = p; a.next = N(5) }` allocates the
  node into `attach`'s own arena, because a temporary goes "into the target's scope" and `a`'s tag is the
  narrowed one, then stores it into the caller's node. Churning the arena after the call and reading
  `root.next.v` fails; writing `p.next = N(5)` directly passes. O10's narrowing is a lower bound, which is
  right for reading and wrong for anything that allocates into or stores into the referent. O24 closed
  exactly this for a bare-`&` *parameter*; a narrowed local is the same thing. It also reaches one hop
  further, through a narrowed local passed as the argument that determines a callee's scope variable (O17).
  Not fixed, deliberately: the real fix is a choice between provenance tracking ("exact" tags) and
  invariance of mutable references under narrowing, and that is the user's decision. O5's blanket
  rejection stays, since it is what stops the value half of the same hole, at the cost of the over-rejection
  that led here.

- **G8b: a type variable is `<T>` everywhere, type arguments included - `List<<T>>`.** The user's decision,
  answering the receiver wart `func (l List< <T> >&) Len()`. Until now a bare `T` in type arguments
  *resolved* an in-scope variable while `<T>` *introduced* one, and the only-in-type-args case needed a
  space because `<<` lexes as the shift operator - one variable, two spellings, plus lexical noise. Now a
  bare name is always a declared type (a variable written bare gets its own diagnostic), and `<T>` both
  introduces and refers, everywhere. The lexer is unchanged: the parser splits `<<` into two `<` at the
  opening of a type-argument list, and `>>` into two `>` after a type variable (the closing split already
  existed for `Vec<Vec<int32>>`), and joins a split `<<` back if the type-argument parse fails - so an
  expression like `x << 3 >> 1` is never disturbed, and a corpus test pins that. The expression-position
  detector for a generic literal or constructor call had to accept `<<` as a possible opening too, which is
  how `listChunk<<T>>&s(8)` first failed. Migration: eleven lines across shared.olang and list.olang. My
  first mechanical rewrite also caught `func maxOf(a<T>, b<T>)` - a parameter named `a` of type `<T>`,
  written with no space - and was reverted for those five lines.

- **O25: a reference never narrows.** The user's decision on the hole found writing `List`: "never
  allowing narrowing. In the case of assigning a reference to something that survives the current scope,
  normal must-outlive rules apply."
  **How it was built.** One helper, `RefExactScope`, answers "where does this referent actually live" for
  any operand: a local's adopted scope, a named tag resolved through bindings, a bare slot's container
  (recursively, through value containers too), a slice's base, a call result's bound variable - or
  "unnamed" for a bare parameter or a global. Then every place a tag could change consults it: a local's
  declaration adopts it (O25a) - including the `for` header, whose variable had never been given a block
  depth at all; reassignment must match it (O25b); a slot store must match or outlive it (O25c); a return
  must match or outlive it (O25d); call binding uses it and must agree exactly (O25e); a derived obligation
  carries an `exact` flag (O25f). Codegen needed nothing: allocation scope was already read off the
  target's type, so giving the local the right type is what moves the allocation.
  **The user's "must outlive" clause could not be taken literally for every slot**, and that was stated
  before building rather than discovered after: storing a longer-lived `p` into a container field and later
  writing through the field reproduces the bug one hop removed. The rule therefore splits on whether the
  stored value's referent can hold references (`TypeHoldsReferences`). Where it cannot, nothing written
  through it allocates or stores a reference, so "outlives" is sound and kept, exactly as asked.
  **Found while testing it, beyond the original report:** (1) passing a *field read* to a callee determined
  the callee's scope variable by the field's own bare tag, so `growLink(a.next)` inside an `if` allocated
  into the `if`'s arena - a second live use-after-free, reproduced on the previous compiler; (2) two
  arguments determining one scope variable were compared by variable only, not depth, so two locals from
  different blocks "agreed". And every new check was first written guarded on `ctx->func`, which is NULL
  inside a `test` block - so none of them ran in tests, and the probes that looked like passes were not.
  Guarded on `hasOwnScope` instead.
  **Removed:** O5's blanket rejection of own-scoped values in nested slots, the stand-in for the missing
  exactness, which over-rejected `a.next = b` for two same-block locals; its two helpers went with it. One
  corpus test used the removed construct (`q mut Point&s = seed`, `seed` tagged `&t`) and now shows its
  obligation through a return. Four corpus tests pin the rule, two of them failing on the previous compiler.
  **Also this session - old syntax residue.** The user found `scope` parameters described in the corpus
  and asked whether old syntax was being removed diligently. The syntax itself was gone (`s scope` and
  `own` are both unknown now), but it had left a dead `own` case in codegen, a dead `&own` branch in
  `resolveScopeArg`, comments describing scope-typed parameters, and test titles still saying "own passes a
  test's own scope down to a scope-parameterized function". All removed or reworded; `BASETYPE_SCOPE` stays
  as the internal type of a scope variable's hidden argument, and says so.

- **O10e: implicit scope order, shortest-lived first, as a direction rather than a total order.** The
  user proposed ordering a signature's scopes so callers are not surprised by obligations the body inferred
  and the signature never showed; first as longest-first, then reversed to shortest-first after the
  receiver case was raised ("this works for receivers, are there other cases this fails?"). Two failure
  cases were identified before building: storing an earlier parameter into a later one (fixed by putting
  the container first), and scopes with no relation being forced into one, which our own `ToArray` would
  have hit. The second is why it was built as a *direction*: the order restricts which way a relation may
  run, and a caller is held only to the relations the body records. Implemented in `scopeCanFlowInto`,
  where every obligation between two signature scopes is created, with its own diagnostic.
  **Running the corpus found a third case**, the most common shape of all: returning a parameter into a
  separately named return scope. A return-only scope was counted last, making "the parameter outlives the
  result" run against the order. It now counts first - a result lives no longer than its sources. After
  that, one corpus function needed reordering (`stash3`, whose comment said its scopes' "order is not
  knowable here" - now it is) and nothing else changed.

- **D11a: `mut` on a local is an error.** The previous session found that `mut` on a local was accepted and
  ignored (D11 said locals are always mutable), which I proposed fixing by enforcing it. The user chose the
  other direction: locals stay mutable, and writing `mut` on one is a compile-time error, so no declaration
  suggests an immutability that does not exist. `mut` keeps its meaning on globals, parameters, fields,
  receivers and interface methods, all of which enforce it. Constructor fields go through their own path
  (`SNTX_CTOR_FIELD`), so a field's `mut` was never at risk. The corpus migration removed `mut` from 692
  local and `for`-variable declarations, located by the compiler's own diagnostics rather than by pattern,
  so no parameter or global was touched; comment examples, spec examples and two diagnostic texts followed
  by hand, with one false positive (a parameter) caught and reverted.
  **The spec still had old syntax**, which the previous residue sweep missed because it searched the
  compiler and corpus only: `type Buffer struct(s scope, cap int64)` and the same for `Vec<T>`, both with
  trailing field commas, and an E25 example with two scope arguments and `&own`. Rewriting E25 exposed a
  small mismatch - a scope argument bound the callee's first scope variable in declaration order, while
  O10e now defines the order that matters; a return-only variable is exactly what a scope argument exists
  to supply, and declaration order could put a parameter-determined one first. The code now binds the
  O10e-first variable.

- **`func` renamed `fn`.** The user's decision, for shorter syntax, with `func` made invalid rather than
  kept as an alias. `func` still lexes as a token of its own so that writing it produces "the function
  keyword is 'fn'" instead of a cascade of parse errors, and the declaration then parses as if `fn` had
  been written. Migration was a word-boundary replace over the corpus, the backticked and fenced code in the
  spec, and backticked code in CLAUDE.md; three backtick spans that wrap across lines were missed by the
  first pass and fixed by hand. Nonterminal names (`func-decl`, `func-type`) are unchanged.

- **D15 relaxed: `x := f()` for any call returning a value**, `try` calls included. The user's decision; the
  old rule ("the type must be written at the declaration") had admitted constructor calls and slices on
  exactly that argument, and a call's declared result is as findable. One bug on the way: `:=` copied the
  result type including its scope tag, which for a reference is the *callee's* scope variable - so the new
  O25 check read it as a written tag and rejected `n := mk(4)`. A `:=` declaration writes no tag, so the tag
  is dropped and the local adopts the call's exact scope, exactly as a bare `&` declaration would.

- **D8c/S4b: multiple return values, Go's design, chosen over tuples and named results.** The user picked
  "multiple returns, no tuple type", plus `:=` from any call, `_`, and `spawn a, b = f()`. The implementation
  leaned entirely on existing machinery. The result type is an anonymous struct with positional fields and
  an `isTuple` flag, which bought layout, the error-union ABI, generic substitution and interface matching
  for free; a probe with a generic `swap(a <T>, b <T>) (<T>, <T>)`, a method and an interface dispatch all
  worked first time. Destructuring lowers to a hidden `$resultsN` local plus one ordinary declaration or
  assignment per target, so O25's exactness, fit checks and call scope bindings apply per element with no
  new rules - which needed `buildAssignStmnt` split into a syntax front and an operand core, and a
  `buildStatementsInto` so one statement can yield several (used by blocks and constructor bodies alike).
  `spawn` captures one destination address per target and, when the call returns, extracts each result
  into its own slot; it passes under `-race`.
  **A latent identity bug surfaced**: every anonymous struct was `TypeIsSame` as every other (owner and
  name both empty). Choice payloads never met each other, so it never mattered; tuples would have. Fixed
  for tuples by element-wise comparison. Every misuse - a tuple call as an initializer, operand, argument,
  with the wrong target count, or `:=` into a non-name - has its own diagnostic, and `_` cannot be declared
  anywhere. One implementation slip: `firstTokOfType` treats a missing token as an internal error, which
  the first destructuring build hit on every `=` form.

- **B2e: `-debug` emits DWARF.** The third item on the user's list. The design choice was where to attach
  locations: threading a location through every `fprintf` in codegen would touch hundreds of sites, so
  statements write a `; dbgloc N` comment (valid IR, so harmless anywhere) and `cgBodyEnd`, which already
  splices each function's alloca and body buffers into place, rewrites the instruction lines with `!dbg`
  as it goes. Each function gets a `DISubprogram`, each module a `DICompileUnit`/`DIFile`, and every
  primitive or reference parameter and local a `DILocalVariable` via `llvm.dbg.declare`. Line numbers come
  from a new `line` on every statement, recorded when it is built. Ids start at 900000 to stay clear of the
  TBAA metadata's.
  **Three corrections found by actually driving gdb**, each of which looked right in the IR: parameter
  values were garbage at a function breakpoint because the parameter stores were located, and LLVM puts
  `prologue_end` at the first located instruction - fixed by locating nothing before the first statement
  except calls (which the verifier requires), as clang does; `break scale` found nothing because gdb took the
  `linkageName` as the C function's name - dropped; and `-debug -race` failed to compile because the
  sanitizer pass appended its attribute group after `!dbg`. DWARF 4 rather than 5, since this gdb ignores
  the `.debug_names` index DWARF 5 produces. The generated entry points are named `olang.start` and
  `olang.tests` so a backtrace does not show two `main`s.
  **Not yet**: by-value struct and array locals (they need composite types with member offsets), and a
  lexical block per `test`, which would stop locals of different tests appearing together.
- **Modules: packages, four import forms, a fetched-once remote cache, import-scoped built-in methods
  (M22/M22a/M23/M23a, M19c, B3d).** Came out of a question about who may declare methods on primitives. The
  answer under M19 was "one module in the whole program", and elaborating on that exposed that it was a
  stand-in for having no real module system: two unrelated libraries each adding `int32.Clamp` could never
  appear in one program, and there was no way to say which one a call meant other than by forbidding the
  second. The user's direction was to build module support properly, with remote packages that are
  "stashed locally when loading the first time" and `std/...` as the standard library's path.
  **What a module is.** A file, as before, or a directory whose `.olang` files (not subdirectories) form one
  module with one namespace and one set of imports. Loading scans *every* file of a package before parsing
  any, then loads the imports, then parses - the same "declared names first" ordering that made import
  cycles work, now over a whole package, so a type declared in one file can be built by literal in another.
  A package's imports are unioned; one alias naming two different modules across files is an error.
  **Import forms, told apart by shape:** `.olang` suffix is a file; `./`, `../`, `/` is a local package;
  `std/` is the standard library (found via `OLANG_STD` or `../std` beside the compiler binary, through
  `/proc/self/exe`, the same way B7 finds the compiler); anything whose first element contains a dot is
  `host/owner/repo[@ref][/sub]`. Anything else is an error rather than a guess.
  **Relative now means relative to the importer.** The old M3 resolved every path against the working
  directory. That was invisible while all code sat in one directory and wrong the moment a package lives in
  the cache or `std/`: `./util` inside a fetched package must mean that package's neighbour.
  **Fetching.** `git clone --depth 1 [--branch ref]` into `OLANG_CACHE/host/owner/repo[@ref]`
  (default `~/.cache/olang`), with a notice on stderr. Present means done: nothing re-fetches implicitly, so
  a build never changes because a remote moved, and the second build is offline - the check deletes the
  remote after the first build to prove it. `OLANG_GIT_BASE` replaces `https://`, which is what lets the
  test clone from a local repository, and doubles as a mirror setting. Deliberately absent for now: a lock
  file, checksums, and any update command; `@ref` is the only pin.
  **Identity.** Base name for local code, full import path for std/remote, sanitized into symbol and object
  names (`std/list` -> `std_list`). The first version gave a relative import inside a remote package only
  its last path element, so `tools/mathy` and `tools@v1/mathy` were both `mathy` - caught by the module
  check as a duplicate-symbol error. A relative import inside a std/remote package is now qualified by the
  importer's own identity and normalized. A std package named directly on the command line (`-t std/list`)
  gets the identity its importers give it, so the object is shared rather than built twice under two names.
  **M19c.** A built-in receiver's methods are looked up in the current module and its *direct* imports only,
  exact element type before type variable, and two different visible modules at the same precedence is
  `METHOD_AMBIGUOUS` at the call. "Current module" had to be one global set identically by both passes -
  semantic body checking (the module; for an instantiation, the generic's module; for a type's constructor,
  the type's) and `cgFunction` - because codegen resolves methods again when it builds an interface's table
  and when it renders `$x`. Private methods of another module are not candidates, so they cannot make a call
  ambiguous.
  **The bug it exposed (B3d).** Every object defined every generic instantiation in the program, as
  `linkonce_odr`. So `std/string`'s object, built while compiling the runner program, contained
  `shared.olang`'s `Tracked$dtor$int32`, which calls a `shared` global; the `geom` test program reused that
  object (its sources were unchanged, so it was current by B3) and did not link `shared` at all. The fact
  was always true - an object depended on its program - and simply never surfaced while no non-root module
  was shared by two programs. Instantiations are now defined only by the root object, whose staleness
  already covers every module; other objects declare them. The first version kept `linkonce_odr` and broke
  `-race`: without LTO, clang discards a `linkonce_odr` function the root itself never calls, before
  writing the object. `weak_odr` is kept and still merges with a `-c` object's copies.
  **DWARF across files.** A package's functions come from several files and a test build emits every test
  into one harness function, so the line markers now carry a file id: one `DIFile` per source file, each
  subprogram on its own file, and a line from a different file than its subprogram's is scoped by a
  `DILexicalBlockFile`.
  **Moved:** `io`, `chan`, `string`, `list` into `std/<name>/`; runner imports `std/string` and the new
  two-file `geom/` package. **Declined:** importing individual functions or types (the user was unsure they
  wanted it; the module is the unit, and `std/int/sort` could only be a package of its own).
  **A pre-existing gap noticed on the way, not fixed:** a function cannot return an unmarked runtime-length
  array (`fn f() byte[]`); it is rejected with O13's message about a bare `&`, which the program never
  wrote. Returning one by value needs its storage placed in the caller's scope.
- **`try X default d` (R9a).** Asked for as "try catch default values"; the user proposed the shape,
  `n, m := try f() default 3, 2`, when it came up. Before it, a caller wanting a fallback had to write the
  statement form into a pre-declared variable (`x := 7` then `try ... catch E { }` with a success path that
  assigned), because the statement form discards the call's value by design (C7).
  **Semantics.** Failure yields the default and does not propagate, so no signature coverage is required;
  the default is evaluated lazily, only on the failure path (a test counts calls to a defaulting function to
  pin that). One default per result, fit-checked against that result's type exactly as a returned value is,
  and several become the result tuple's struct literal - the same construction `return a, b` uses, so
  destructuring needed no change at all: the tried operand is still the call, and D8c's lowering takes it.
  It extends to the other two `try` operands, a checked index (E16d) and a slice (E16c), whose failure
  branch is the bounds check's.
  **Grammar.** A default is a unary expression. Letting it be a full expression would make
  `if try f() default 0 == 3` parse as a default of `0 == 3`, a type error pointing at the wrong thing.
  Several defaults are admitted only at the start of a destructuring's right-hand side or a return's value:
  the parser records that token position and a `try` starting exactly there may take a comma list. That
  one rule makes `g(try f() default 3, 4)` unambiguous (one default, two arguments), and costs nothing,
  since a multi-result call is not a legal argument anyway (D8c). A `return` whose first value is a
  defaulted try therefore reads the rest as defaults; `return (try g() default 0), 5` is how to mix.
  **Reference results take only `null`.** A reference default would have to be reconciled with the scope
  binding the call's own result carries - the O13b meet of two branches - and at the `try` the target is
  not yet known, so there is nowhere to check it. Restricting to `null` is sound and covers the lookup case;
  lifting it is additive.
  **Codegen** needed no new machinery beyond a slot: `cgValue` wraps a defaulted operand, which records the
  slot and a join label on the context; the failure branch - the call's propagate branch, or
  `cgBoundsFailed`'s - stores the default there and branches to the join instead of returning. The context
  is saved and restored per defaulted try, since an argument or the default itself may contain another.
  A defaulted index is **not an lvalue**, since on failure there is no element; `OperandIsLvalue` says so,
  which also keeps it out of borrow analysis.
  Negative cases (count mismatch, a default on a call returning nothing, a non-null reference default) are
  in `modcheck.sh`, beside the module checks, since the corpus cannot express a program that must fail.
  **Reference defaults relaxed the same day.** The first version accepted only `null` for a reference
  result, on the grounds that anything else needed a scope merge. The user pointed out it does not: the
  default is fine whenever that reference could be put in the variable by the ordinary rules, and with
  O25's exact tags that means the same scope - so the two paths agree and there is nothing to merge. The
  implementation checks the default against the result type *as the caller sees it* (each callee scope
  variable replaced by what the call bound it to, via the same `resolveEffectiveScopeVar`/
  `SemanticBoundScopeDepth` the call's own codegen uses), requires an exactly equal scope for a stored
  default, and lets a temporary be built there. Codegen stores the default against that caller-view type,
  which is what makes a temporary land in the caller's arena rather than being looked up under the
  callee's scope name - a test builds one inside a function, returns it, churns the arena and reads it back.
  Rejected, with tests: a default from a shorter-lived inner block, and one tagged with a different named
  scope. By-value results that merely hold references remain excluded.

- **Catch clauses in value position, several per `try`, and `default` belonging to a clause (R9a/R9b,
  R10, R11/R11a, R13).** Started from the user's question: *"what happens if we do `x := f() catch {}` and
  then use x? Now it is undefined no?"* It could not be written - `catch` was statement-only and never
  produced a value - but the question was what a catch in value position would have to guarantee.
  **The part that never changed**: a clause in value position must either provably leave (D10a's structural
  rule, extended with `break`/`continue`, which leave the expression as surely as `return`) so the
  assignment never runs, or supply the value. A default after a block that provably leaves is dead and
  rejected as confusing - the user's own rule.
  **Where the default goes took four rounds, and the record of the rejected three is the useful part.**
  (1) *Default first* (`try f() default 0 catch E { }`), proposed by the user as simpler - rejected by the
  user a message later: the default "kinda eats the error", since it reads as handling every failure before
  the catch is reached. (2) *Default after a catch, covering only that catch's errors* - rejected as
  inconsistent: the bare `try f() default d` swallowed every error, while the same word after a catch let
  the rest propagate. (3) *A default means nothing escapes*, with or without a catch - rejected ("this is
  bad too"): it makes a specific catch plus a default a silent catch-everything. The root cause under all
  three was that R9a's bare `try f() default d` was an **implicit catch-everything**. (4) The user's
  suggestion, *several clauses*, is what resolved it: a `default` is part of a **clause**, a clause ends by
  leaving or by its own default, catch-everything is an item-less `catch` that must come last, and an error
  no clause names propagates - always. So what a default covers is exactly what is written to its left. The
  user chose to drop the shorthand: `try f() default d` is a compile error naming `try f() catch default d`.
  **Decisions made while building it.** A clause may begin on a following line - STMNT_END is skipped when
  `catch` follows, safe because no statement begins with `catch` - since the clause-per-line layout is the
  natural one and newline-terminated statements would otherwise forbid it. A clause every one of whose
  items an earlier clause already took is rejected as unreachable. The statement form gets the same clauses
  and the item-less catch, but never a default (no value has anywhere to go). A checked index or slice takes
  clauses too: its only error is the bare error, so `catch error` or an item-less `catch` handles it, and
  the dispatch is resolved statically.
  **Implementation.** `struct catchClause` (matches, catch-all flag, block, default) replaces the single
  `catchMatches`/`block` pair on both the statement and the operand. Match building and the
  "uncaught errors must be in the signature" check were factored out of the statement form and
  parameterised on the error set, so a bounds check (errors = {bare}) and a call share them. Codegen has
  one `cgCatchDispatch` for a call's runtime code, a bounds failure's static bare error, and the
  statement form: each clause's block, then its default stored into the try's slot and joined, or (in a
  statement) a branch to the statement's end; the uncaught remainder is left positioned for the caller,
  which propagates as a call or as a bounds check does.
  **One mistake of mine worth recording**: the first test run failed with "try requires a direct call to a
  fallible function" on calls that plainly were fallible. The test's own `error R9E { A \n B }` was missing
  its comma - error words are comma-separated; only choice cases moved to one-per-line - so the type never
  declared and the rest was fallout. Found by extracting the block into its own file.
  Tests: six corpus tests (statement clauses in order, per-clause defaults after a block, a leaving clause,
  propagation of an unnamed error, `continue`/`break` as leaving, index plus a multi-default clause) and
  seven must-fail cases in `modcheck.sh`.

- **Two pre-existing bugs found while starting conditional compilation (B5a, L18).** Both surfaced by a
  two-file probe written to check how globals are initialized.
  **B5a was violated: a root initialized before its imports.** `cgInitGlobalsCalls` walked
  `SemanticAllModules()`, and its comment said that list was "already in discovery order (a module is
  appended once its imports have been analyzed), which is exactly that post-order". The first half is true
  and the second is not: the loader registers a module *before* recursing into its imports - it has to, or
  an import cycle would never close - so discovery order is pre-order, root first. A root whose global was
  `Twice int32 = dep.Base * 2` read `Base` as 0. Fixed with `SemanticInitOrder`, a post-order walk of the
  import graph; a cycle's members stay in walk order, which is what B5a already allows. A corpus test in
  runner.olang reads a startup-computed global of shared.olang's from its own initializer.
  **A file ending in a statement with no newline after it did not parse.** The tokenizer synthesizes the
  statement terminator when a newline follows a token that can end one, and it only ever checked that
  between two tokens - so the last statement of a file, with nothing after it, was never terminated, and
  the parser reported "unexpected token ''" at a line past the end. End of file now terminates a
  statement exactly as a newline does (Go's rule). Every corpus file happened to end in a `}` or a trailing
  newline before more code, which is why it never showed. Covered in modcheck.sh, since an editor always
  writes the final newline.

- **Conditional compilation as a top-level `if`, and `-D` build constants (B9/B9a/B10/B10a/B10b).** The
  user asked two things together: compile-time evaluation of "anything that can be", and conditional
  compilation, proposing that it be ordinary `if`/`else` - compile-time at the top level, runtime but folded
  inside functions. That proposal was right, and the reason it is unambiguous is simple: nothing runs at
  the top level, so an `if` there can only choose declarations. `compif`/`compelse`, reserved since the
  beginning and never implemented, were removed. The user's decisions: check both branches of a local
  `if` always (so a condition's constness never decides what is type-checked, and nothing rots unbuilt),
  and `-D Name=value` defines an immutable global typed as that literal would be, visible like any global.
  **Phase ordering is the design constraint.** The pre-scan (`ScanTopLevelDecls`) collects each file's
  type names and imports before anything is parsed - that ordering is what makes import cycles work - so it
  must already know which branch is taken. Conditions are therefore evaluated on tokens, by a small
  evaluator over literals, build constants and the usual operators, shared by the pre-scan (which ignores
  its errors) and the parser (which reports them). Conditions over ordinary globals, which the user asked
  for next, wait on the compile-time evaluator.
  **An untaken branch is skipped, not parsed** - reversed within the same session. Parsing every branch so
  syntax errors surface everywhere broke `make run`: a test in shared.olang built `CcBox{5}`, and in a `-b`
  build the branch declaring `CcBox` was not taken, so the pre-scan never registered it and the parser
  could not recognise the literal. Parsing depends on which type names exist; which type names exist
  depends on the branch. So a branch is text until chosen, as in C's preprocessor.
  **Built-in constants**: `TargetOs`/`TargetArch` from `uname` (the host - no cross-compilation yet),
  `DebugBuild`/`RaceBuild`/`TestBuild`. Names are my choice, logged for the user's review. The mode flags
  need no staleness handling of their own, because each mode already builds distinct artifacts (B4); user
  `-D`s get a hash in every object name (B10b), and a check changes a value and asserts the other branch
  compiles in.
  **The constants are an ordinary module.** A synthetic `olang_build` module holds one immutable global per
  constant, registered first so B5a initializes it before anything reads it; `lookupVar` falls back to it
  by bare name, and `collectVar` rejects a module declaring the same name. Being ordinary globals is what
  makes a text constant borrowable and its type exactly its literal's.
  **Bugs found**: (1) B5a violated - see the entry before this one. (2) End of file did not end a statement.
  (3) Redeclaring a `-D` name crashed the compiler: the error path returned before registering the
  variable, and later passes assume every top-level declaration has one; it is now reported and registered.

- **Top-level conditions over immutable globals (B9a), and global initializers in a pass of their own
  (D15).** The user's follow-up to conditional compilation: conditions should take ordinary variables, not
  only constants. The phase constraint still holds - a condition is decided before any type exists - so
  the rule that fits it is: an immutable global the module declares at its top level, outside every
  conditional, whose initializer is itself evaluable by the condition evaluator. It is found on tokens
  (`Name [mut] [type] = expr` or `Name := expr` as a whole top-level statement), across every file of a
  package (the loader hands the evaluator all of the module's token streams), and evaluated recursively with
  a depth guard. Rejected, each with its own message: a mutable global (no value a build can fix), one
  computed by a call (its body cannot be analysed while declarations are unsettled), and a cycle.
  Cross-module globals are not reachable: the importer's condition is evaluated during the pre-scan that
  discovers its imports.
  **A pre-existing bug this exposed.** The package test declared `GeomUnits byte[] = "cm"` and produced
  invalid IR. D15 adopts a literal's length into a `T[]` declaration for locals and, per the spec, globals
  - but the global path never did it, so the global stayed runtime-length and its initializer called
  `__olang_scope_alloc` with a null scope (printed as `(null)`). Reproduced at the previous commit with a
  single file. The deeper cause is timing: a global's type can depend on its initializer (`:=`, or `T[]`
  adopting a length), yet initializers were built while their own module's bodies were checked, which can
  be after another module's body has already read the global's type. So global initializers now get a pass
  of their own, after every signature and before any body, in B5a's imports-first order. A corpus test
  reads a `:=` global and a `byte[] = "cm"` global of shared.olang from runner.olang, the root, whose bodies
  are checked first.

- **Compile-time evaluation, first stage (K1/K2).** The user asked that "anything that can be compiled
  during compilation time including functions etc is"; the agreed shape was no function colouring, with
  evaluation guaranteed only in the places that need a value and left to LLVM elsewhere.
  **The evaluator** is an interpreter over the checked program (`comptime.c`): values are integers (wrapped
  to their type's width), floats (float32 rounded after every operation), bools, aggregates held by value,
  null, and references - a reference holds the very node it was taken from, which is what makes `mut &`
  parameters write the caller's value and makes reference `==` identity. E12's conversions happen at every
  store point, as in codegen: a reference target borrows an lvalue or gets a fresh node for a temporary, a
  value target gets an independent copy, a numeric literal adapts. Calls bind parameters, run the checked
  body, and return through a control-flow state that also carries break/continue and errors; `try`
  clauses are matched exactly as R9b says. Everything that needs a running program is refused with the
  operation named (K1), and so is everything undefined - division by zero, an out-of-range shift or
  conversion or index - because "refused" is honest where "the value the hardware would have given" is not.
  **Where it is used first: immutable global initializers (K2)**, attempted for every one after a clean
  check, in B5a's order. A plain-data result is written into the global's definition (`@x = global i32
  6765`) and its startup store is skipped; anything else - a mutable global read, a value holding a
  reference, a run-time-length array (whose buffer would need a second global) - is set at startup as
  before. So nothing observable depends on whether evaluation succeeds, which is the property that lets it
  be attempted everywhere without a keyword. `modcheck.sh` reads the emitted IR to prove the data is
  there; the corpus asserts the values, which catches an evaluator bug because nothing recomputes a baked
  global at run time.
  **Two bugs found by reading the evaluator while Bash was unavailable**, both confirmed by tests once it
  was back: a reference parameter shared the caller's variable node (a callee's repoint would have moved
  the caller's variable), and an error propagated by an argument's own `try` could have been caught by the
  enclosing call's clauses (at run time it leaves the enclosing function first). Also needed: `-lm` for the
  compiler's own link, since the evaluator uses `fmod`/`trunc`.
  **Not yet**: constant contexts inside function bodies - making a local `T[expr]` compile-time-length -
  need a callee's body on demand, since bodies are checked module by module and a callee may not be checked
  yet; calls in top-level conditions need the phase ordering answered; slices, text building and payload
  choices are not modelled.

- **B10b narrowed: an object depends on the -D values its import closure mentions, not on all of them.**
  The user: "recompile if -D values change, but don't if they don't". The first version hashed every -D
  into every object's name, so changing any value rebuilt the whole program. Now each module records which
  -D names appear in its tokens, and an object's name carries a hash of just the values mentioned in its
  import closure - transitively, because K2 can bake a value computed from `B.Level` into an importer's
  data. A name mentioned only in an untaken branch or never read still counts, which errs toward
  rebuilding. A check builds twice with different values and asserts the unrelated module's object kept its
  mtime while the dependent one got a new object.

- **Evaluability as a property of the function (K1a), conditions decided by evaluation (B9c), and dead
  branches (S8a).** Three answers to one message from the user.
  **K1a.** The user asked whether the compiler could "spit out as metadata for functions if they depend on
  external things", unsure whether that or the try-and-see evaluator was better. Both, doing different
  jobs: a static scan per function finds the first operation that no evaluation can perform - in its body,
  in anything it calls (recursion assumed evaluable while being scanned, the fixed point), or in the
  initializer of an immutable global it reads - and the evaluator refuses a call to such a function before
  running it, reporting that operation where it is written. The evaluator still computes every value and
  still refuses on value-dependent grounds (division by zero, a failing assert, the budget). What changed
  is predictability: a function that did something runtime-only in one branch used to evaluate for inputs
  that avoided it, and now never does. Not written to a file - B2a already says a function's facts come
  from its source.
  **B9c.** "Integrate the comptime logic with compif logic." A condition the token evaluator cannot decide
  is now deferred rather than rejected: the pre-scan and the parser treat it as not taken and the parser
  queues it (file, token position after `if`, parsed condition, module); after a complete attempt the
  queued conditions are checked as bool expressions in their modules and evaluated; the decisions are
  recorded by position and the whole analysis runs again, since re-tokenizing reproduces the positions.
  Diagnostics from discarded attempts are held in an in-memory stream (every error path now writes through
  one `eo()`), and the error count is rolled back. A condition whose building reported errors in that
  attempt - usually because it names something declared only inside a branch still being decided - is
  rejected rather than evaluated with a placeholder. Functions whose bodies had errors are never evaluated.
  Two existing checks flipped from "must fail" to "must work" (a call, and a call-computed global, in a
  condition), and new ones cover the reason text naming the operation and its line, and the unseen-name
  case. Measured: the largest corpus file with a two-deep chain of such conditions builds its tests in
  5.55s against 5.10s without; nothing changes for a program without them.
  **S8a.** Asked "if we don't parse every branch at top level, should we at local level too?", with the
  suggestion that a condition always true and not depending on a -D constant means dead code. The
  recommendation, and what was built: a local `if` keeps checking both branches (the top level skips only
  because a branch's types may not exist, which the language already routes to top-level conditional
  declarations), and a condition fixed without depending on any build constant is a compile error - one
  branch is dead. Judged on the checked condition, following immutable globals' initializers, not calls.
  The corpus had no local constant `if`; the one `if false {` in it is a top-level conditional.

- **S8b: a local if the build decides is conditional compilation, like the top level.** The user asked why
  the same condition logic was not used locally - "check only one branch if the condition always only uses
  one?". The earlier answer (check both, always) rested on one hazard: a condition that became constant by
  accident would silently stop a branch being checked, with what gets checked depending on how a condition
  happens to evaluate. S8a, added the turn before, had already made that impossible - a constant local
  condition not depending on a build constant is a compile error - so the only constant conditions left
  are build-dependent ones, which are configuration by construction. The reasoning no longer held; the
  rule was changed.
  **How.** The decision has to be made at parse time, since a skipped branch may use types that do not
  exist in this build and cannot be parsed. `parseStmntIf` runs the token evaluator on the condition first;
  if it evaluates, depends on a build constant (`usedBuild`, propagated through globals' initializers) and
  is followed by `{`, the condition is parsed for syntax, the chosen block is parsed, and everything else in
  the chain is skipped by matching braces. The result is a `SNTX_STMNT_CHOSEN` node that the checker turns
  into an `if` on a literal `true` - the shape G15's collapsed type match already produces, which D10a and
  codegen understand - or into nothing.
  **Shadowing** was the only real obstacle: locals may shadow globals and build constants (only other
  locals are checked for collisions), and the parser tracks no scopes. The parser now collects every
  parameter, local, for-variable, destructuring target and payload binding declared in the current
  top-level item, and the evaluator refuses to read any of those names as a global - never pruned, since
  over-approximating only turns a decision into an ordinary runtime if. A corpus test shadows `TargetArch`
  with a parameter and gets a runtime condition.
  **Else-if chains** are judged link by link; a decided link after a runtime `if` folds into its `else`
  block (or no `else`), so `buildIfStmnt` never meets the new node. Tests: corpus functions whose untaken
  branches call functions and build types that do not exist, a runtime-then-decided chain, and the shadowing
  case, all valid in both `-t` and `-b`; in modcheck a `-D Level` program that compiles at `Level=3` and
  reports its own unknown name at `Level=1`.

- **D3a: no shadowing.** The user: "you can reserve space for build-time and global variables / constants, I
  don't want any shadowing, modules/directories take care of the 'too many names to fill a namespace
  reasonably' problem". D3 had said a local may shadow a module-level global or function name. Now a local
  declaration or parameter reusing a name in its module's `vars` set, or a build constant's, is an error -
  checked in `scopeDeclare` and wherever parameters enter a body's scope (functions, constructors, generic
  instantiations), deliberately not in `resolveParamList`, whose parameter names in function types,
  interface methods and choice payloads declare no local. The whole corpus already complied except for the
  one test of mine that shadowed `TargetArch` to show S8b falling back to a runtime condition - removed,
  since the construct it demonstrated is now illegal.

- **S8b extended: any compile-time-computable local condition that depends on the build.** The user wanted
  "a local if on a comptime-computable expression, no matter how complicated" to be a valid way to write
  platform-specific code. The parse-time token evaluator covers literals, build constants and constant
  globals; everything else now goes through the B9c attempt machinery, adapted for bodies.
  **First attempt.** A local condition that fails the token evaluator only on names it cannot read (not on
  a local) is queued. The `if` is parsed as an ordinary one when its branches parse; when they do not -
  the usual reason being that they use what exists only where the condition holds - they are skipped by
  brace matching, a `SNTX_STMNT_UNDECIDED` node stands in, and the enclosing top-level item is marked
  `SNTX_BODY_INCOMPLETE`, which sets `bodyIncomplete` on the function.
  **Deciding.** The condition names no local, so it is checked in its module's context, like a top-level
  one, and evaluated. The evaluator now reports `usedBuild` (a build constant read directly or through a
  global; memoized per global). A value with `usedBuild` makes it conditional compilation; a value without
  is S8a's dead code, which therefore now covers conditions computed through calls; failure to evaluate
  makes it an ordinary runtime if - never an error, unlike the top level. A condition calling a function
  whose body is still incomplete is left undecided until an attempt completes that function.
  **Another attempt only when needed**: when a local decision is a value or dead, when branches were
  skipped, or when something was left undecided. An attempt whose local conditions all came out runtime -
  already parsed as ordinary ifs - is final, so ordinary code with calls in its conditions costs one
  evaluation attempt per condition and no re-check.
  **Two bugs of mine, caught by std/string.** The token evaluator stops at the first name it cannot read,
  so `len(a) != len(b)` failed on `len` and never saw the parameters `a` and `b` - it was deferred, then
  checked in module context, where `a` and `b` do not exist. Every identifier of a deferrable condition is
  now checked against the function's local names. And those module-context errors reached the output:
  the decision step now runs with diagnostics muted (a new mute that also restores the count).
  **A consequence flagged to the user**: `if pure(3) != 6 { fail }` - a self-check - is now dead code,
  which is exactly the rule; `assert` is the idiom for a fixed check. Four modcheck programs used the `if`
  form and were migrated. A corpus test has a function whose own branch-free-on-this-target `if` must be
  decided before another function's condition, which calls it, can be.

- **S8c: locals that provably hold one value.** The user clarified "extend to local instances": local if
  statements, and "even variables that can be proven to have a certain value can be comp-timed". The rule
  built is the one that can be checked soundly without dataflow: a plain scalar local declared with an
  initializer that nothing in its function writes afterwards. For a scalar the write list is complete -
  assignment, `++`/`--`, the atomic builtins, spawn targets - because olang has no reference to a primitive,
  so no borrow or alias can reach one. Aggregates and references are left for later for exactly that
  reason.
  **Mechanism.** The parser now queues every local condition it cannot decide from tokens, including those
  naming locals. The checker records each condition's operand where the if is checked (and, for an if whose
  branches were skipped, builds it at the placeholder), along with an id for the enclosing function or test
  body; bodies are registered as they are built. Deciding evaluates the recorded operand with a fixer: when
  it reads a local of that body, the fixer finds the declaration (matched by name and declaration token),
  rejects anything but a scalar with an initializer, scans the whole body for writes, and hands back the
  initializer, which the evaluator evaluates in place (at call depth 0 only - a callee's locals are its own).
  **What it did to existing code**: two corpus tests had conditions that are now provably fixed (a local
  `n int32 = 3` tested with `n > 1`, and `try SafeDiv(1, 0) ...` compared with 0) - both tests are about
  something else, so the conditions were given run-time inputs; two check programs moved from
  `if x != y { fail }` to `assert`. And one pre-existing parser bug surfaced: `parseStmntIfRuntime` dropped
  an `else` whose branch failed to parse and returned the if without it, so the stray `else` failed later -
  harmless before, but it meant S8b never learned that the if's branches did not parse. The if now fails to
  parse as a whole.

- **S18c: compile-time asserts, and the destructor hole they exposed.** The user chose option C for the
  self-check question S8a raised - an assert whose condition is computable is checked while compiling -
  observing that an assert aborts rather than fails but that in tests the two are the same and outside
  tests a program would rarely want to fail there. Every assert is recorded with its body as it is
  checked; after a clean check each is evaluated with the S8c fixer. False is a compile error; true sets
  `ctProven` on the condition and codegen emits nothing for it (a computable condition has no effect to
  lose - which is exactly the claim the next paragraph had to repair).
  **First run: nine false asserts in passing tests.** All were `assert false` in branches marked "never
  reached" - fixed-false wherever written, reached or not. That is the job of `unreachable` (S16d), and the
  nine were migrated; S18c now says so.
  **Second run: one test failed at run time.** `assert trackedInt() == 4` was proven true and dropped - and
  `trackedInt` builds a value with a destructor that increments a global. The evaluator never modelled
  destructors, so it judged the call pure; at run time the call no longer happened, so neither did the
  destructor, and the next assert on the counter failed. K2's global baking had the same hole. Building a
  value whose type declares a destructor (a constructor call or a literal of it) is now outside K1, in
  both the static facts (K1a) and the evaluator; a regression test initializes a global with such a call
  and asserts the destructor ran at startup. The other effects a dropped condition could have were checked
  by argument: global writes were already refused, and a local can only be touched if it is a fixed
  scalar, which any write - including a `++` inside the assert itself - disqualifies.
  **Third run: `make run` failed** on a test's `assert TestBuild`, fixed-false in a `-b` build, where tests
  are checked but never run. Test asserts are judged only in a test build.
  Measured: ~480 of the largest test file's ~1,680 assert checks are now proven at compile time, and its
  test build went from 5.6s to 4.0s.

- **`size()` designed and withdrawn; serialization and reflection deferred (2026-09-30).** The user asked for
  a builtin giving a value's byte length, and over two rounds it was pinned down: taken on a variable, not a
  type; padding between fields at natural alignment but none trailing (`{int32, byte}` = 5); at most one
  level of indirection, so the object itself is followed once and anything reached through a further
  pointer counts as its handle (an array of array references is count x 16, the `{len, ptr}` pair); an
  enum counts its active case at run time. The intent was a matching write/read of exactly that layout -
  which is what exposed the problem. The padding question has no answer of its own; it is a question about
  the *format written*, and `size` could only follow it. The user then withdrew the whole thing and asked
  the real question: how to write a data object to a file or the network, and whether drivers need size.
  The answer split it in two. **Serialization** should never be a memory dump - padding wastes bytes, byte
  order differs between machines, and a reference is an address meaningless to the reader - but an encoder
  walking fields: JSON (readable by anything, but lossy above 2^53 for int64 in most readers and without
  binary data) as one encoder in std, and a compact binary encoder (fixed byte order, length-prefixed
  arrays, a tag per enum) beside it. What it needs from the language is **compile-time reflection**, a way
  for one generic function to iterate a type's fields, in the spirit of `match <T>`. **Exact layout** for
  drivers, wire headers and C structs is a different feature: a type whose layout is declared (field order,
  byte order, no implicit padding) and whose size is therefore a constant - nothing measures arbitrary
  values. The user's decision: drop `size()`, record serialization and reflection, do neither next.

- **`choice` renamed `enum` (2026-09-30).** The user found `choice` confusing. Offered: `enum` (Rust,
  Swift - the same construct), `variant` (C++, OCaml), `oneof` (protobuf); the user took `enum`. The
  original objection to `enum` - that C's enum is an orderable number - still describes C, but Rust and
  Swift have made "enum with payloads and no arithmetic" the familiar meaning, and the payload-carrying
  form is exactly theirs. Unlike the `func` -> `fn` rename (D7), the old word is **not** reserved: `choice`
  is a common English word and a plausible variable name, so it lexes as an identifier again, and only
  `choice {` where a type expression is expected is diagnosed ("the keyword is 'enum'") and parsed as the
  new keyword. modcheck.sh covers both halves. Changed: the keyword, every user-facing diagnostic, the spec
  (T17 and every mention of the type kind), the corpus's six declarations and its comments and test names.
  Compiler identifiers kept the old name, as `TOK_FUNC` survived `fn`; this file's older entries keep it
  too, since they are history.

- **Operators dropped; `+` on arrays withdrawn; text joined by adjacency; `$` renders everything
  (2026-09-30).** User-declared operators were laid out problem by problem - hidden cost at the use site,
  where a reference result lives, arena garbage from `a + b + c` and from `acc = acc + m` in a loop (a
  bump allocator frees nothing until the scope closes), no fallibility (`try a / b` has no clean reading),
  one `*` per receiver type under M21, derived comparisons, and indexing's get/set/place split - and the
  user concluded "it is a bad idea". Same message: remove `+` from arrays, and join literals C-style. I
  pointed out `+` had been doing two jobs, joining literals and building text at run time (`"n is " + $n`),
  and that C adjacency covers only the first; I proposed a `concat(...)` builtin for the second. The user
  rejected it: C's hazard (a missing comma joining two strings) does not arise, because a value only becomes
  text through `$`, so a bare `b` can never be a piece - `f("a" b)` is a syntax error. So adjacency does both
  jobs: literal pieces fold into one literal in the parser, anything with a `$` piece is a run-time join. The
  result is a `byte[]` value in the current scope, built in a reference target's scope when assigned to one
  (the user corrected my wording: not "promoted", built there).
  `$` became universal on the user's instruction, with array/struct formats left to me: `Point{1, -2}`,
  `[1, 2, 3]`, `Shape.Rect(3, 4)` - the way each would be written - with nested text in quotes so its
  boundaries show (no escaping), `null`, and references followed at most 8 deep per path, the next shown as
  `...`, so a cyclic list renders finitely. Functions and interfaces stay errors (an interface would need a
  rendering entry in its dispatch table - possible, not done). `Str` still wins wherever present.
  Implementation: snprintf's measure-then-write contract everywhere - a helper per type,
  `i64 @olang.rd.<key>(ptr dst, ptr val, i32 depth)`, measures when `dst` is null - so a join measures each
  piece, allocates once, and renders each piece in place; numbers are formatted twice as the price of no
  intermediate buffers. The helpers are functions rather than inline code because types recurse through
  references and arrays need loops.
  **Found on the way:** the `$` result type had been `byte[]&`, and a bare byte array's `$` handed back a
  borrow of the operand; as a value that would alias, so it now copies (a corpus test pins it). And my first
  cut of the value type set the wrong flag - in this compiler `arrMalloc` means run-time length and
  `structMAlloc` means the reference marker - which segfaulted codegen on a method call through a `$`
  receiver until corrected.

- **`$` has one rendering per type and nothing overrides it; arrays carry their element type; functions and
  interfaces render as signatures (2026-09-30, same day).** The user reviewed the renderings: arrays should
  read `Type[1, 2, 3]`, "Don't make a Str method override the behaviour. we have no operator overloading at
  all", and "an interface has name and methods, methods are functions, functions are (method owner) name
  (params) retvals ? errors". So `Str` left the language as a rendering hook (TypeStrMethod is gone; a
  method called Str is an ordinary method), which also removed E11a's two-call "tell me the size" contract
  and M19c's rule for which module's Str a built-in's rendering used. An array writes its element type once,
  the way an array literal does, with nested unmarked arrays as bare rows (`int32[[1, 2], [3, 4]]`) - a row
  is not a separate value, so it gets no prefix, which is why the helper for an array has a second, "row"
  variant. A function renders its signature; its name is included only when the operand names a declared
  function, since a function VALUE is a bare pointer and recovering a name would need a run-time table from
  pointers to names (not built - flagged). A method cannot be a value (M19), so "(method owner)" never
  arises in a rendering. An interface renders statically as its name and methods' signatures, `null` when
  null; it says nothing about the value it holds. The only operand left with no rendering is a call returning
  several values, which is not one value.
  Follow-up the same day: the user declined the pointer-to-name table for function values, confirmed the
  8-deep reference limit and that `$` on a byte array copies ("whenever we concat strings we always create a
  new one either way"), and asked for `$` on a multi-result call - it renders `(1, "x")`, so the only
  operand left without a rendering is a call returning nothing.
  Then: the user kept joins limited to literals and `$` pieces (a bare byte[] variable is not a piece, which
  keeps C's missing-comma join impossible), and asked for nested text to be escaped. A byte inside a value is
  written as a character literal and a byte array as a string literal, escaping `\n \t \r \0 \\` and the
  enclosing quote - exactly the escapes L11 has, so the rendering reads back as source. Any other byte is
  written as itself, since the language has no escape for it. It is one runtime routine,
  `__olang_rd_quote`, on the same measure-then-write contract as everything else in E11a. Text at the top
  level is still its raw bytes.

- **`for` remade; `while` removed; `and`/`or`/`not` (2026-09-30).** The user settled the long-pending for
  remake in one message: `in` (they want olang to move toward "natural language"), every `while` becomes
  `for` including `do { } for cond`, all the forms I had laid out, an iterator "built-in interface with
  compiler support", and `&&`/`||`/`!` spelled `and`/`or`/`not`. Ranges were split off: they are to have a
  step as well, and are to be asked about again.
  **The iterator protocol is recognized by shape.** An interface cannot be generic (T35), and `Next` returns
  a different `T` for every iterator, so there is no olang interface declaration that could say it. The
  compiler knows two shapes: `Next()` returning `(T, bool)` makes an iterator, `Iter()` returning an
  iterator makes an iterable. This is a deliberate privileged construct, as `$` is for text, which the user
  sanctioned explicitly here.
  **Lowering, not new codegen.** `for x in a` becomes, in a block of its own, a borrowed `T[]&` of `a`, a
  counted loop, and a body that starts `x := $arr[$i]`; an iterator becomes a hidden copy of it and a body
  that starts by calling `Next` into a hidden result and `break`ing on false. Everything downstream -
  scope containment, the element copy, unwinding on break/continue, comptime evaluation - sees ordinary
  statements. The only codegen change was letting a `for` have no variable, condition or post clause.
  **`not`'s precedence** was the one real design point: as a tight unary operator (C's `!`), `not x == 4`
  parses `(not x) == 4`, the opposite of how it reads. It now binds between `and` and the comparisons,
  Python's choice, in the parser and in the token-level condition evaluator alike. Migration was
  mechanical: 14 `&&`, 6 `||`, 23 `!`, 19 `while` in the corpus, all `!` applied to a primary so the
  precedence change altered no meaning.
  **Two things noticed and flagged rather than changed:** E7 says olang's boolean operators do **not**
  short-circuit - `p != null and p.x > 0` evaluates both sides - which an English-reading `and` makes more
  surprising; and `^^`/`^^=` (boolean xor) are the last symbolic logic operators left.
  **Ranges (S9b).** The user's design: a `range` keyword with one to three comma-separated arguments, end
  first, then start (default 0), then step (default 1); start above end means the other way, as does a
  negative step, and both at once may be an error "or not". I read "the other way" for a negative step as
  walking the same values in reverse, which makes the two directions compose (both together ascend) and
  needed no rule for the combination. First built as `range(...)`; the user asked for no parentheses. The
  lowering computes the count once (span, direction, |step|, `n = ceil(span/|step|)`) and maps a counter
  onto values, which also makes a run-time zero step harmless - it produces no values instead of dividing by
  zero or looping forever - with no per-iteration cost. Writing the test surfaced a pre-existing D15 wart,
  flagged rather than changed: `t byte[]&s = ""` takes the literal's length, so `t` is a `byte[0]&s` that a
  later `t = $t "x"` cannot be assigned; `= $""` is the workaround.
  **Revised the same day: a range only counts upward.** The user checked my examples, found the
  downward/reversed behaviour wrong for what they had in mind, and simplified: start must be below end or
  the loop does not run. A step must be positive too (a literal zero or negative one is an error, a run-time
  one runs nothing). The argument order stayed end, start, step as first specified. Then every counting loop
  in the corpus moved to `range`: 62 three-clause loops by script - skipping any whose body writes the counter
  or the bound, since `range` fixes its end once where the old condition re-read it (none did) - 8
  `i := 0; do { ...; i++ } for i < n` loops, and three while-loops that carried an unused dummy counter
  became plain `for cond { }`. Kept: the do-loops that exist to test `break`/`continue` in a `do` and in
  compile-time evaluation, and the D10a test whose loop deliberately has no end.
  **And the order is start, end, step.** The user's first description read "first one is end, second is
  start, third is step", and I built exactly that; their later examples (`range 0, 4` giving 0..3) were the
  real intent, and they corrected it: one argument is the end, otherwise start, end, step - Python's order.
  Six corpus loops and the spec's examples swapped.

- **`xor`, and short-circuit `and`/`or` (2026-09-30).** `^^` became `xor` (retired like `&&`, with a
  diagnostic), leaving `^^=` as the one symbolic logic form - pending the user. Then the user made `and`/`or`
  short-circuit, answering the question flagged when the words arrived: E7 had said olang evaluates both
  operands always, so `p != null and p.x > 0` read through null. Codegen now branches through a slot (the
  right operand can end in any block, so a phi would need its predecessor). **The compile-time evaluator
  already short-circuited**, so before this change it and the compiled program disagreed about whether a
  right operand ran - unobservable only because K1 refuses side effects; now they agree. `xor` does not
  short-circuit, since its result always depends on both sides.
  The user then removed logic compound assignment entirely (`^^=` gone too), and settled the literal-length
  wart: a reference to an array always takes the length of whatever it points to, updated at every
  reassignment - "since we can't resize arrays, having the length with the ptr is just quicker". That is the
  existing `{len, ptr}` representation of `T[]&`; what changed is that a reference declaration no longer
  copies its initializer's length into its static type (D15a). Four corpus tests had leaned on the old
  adoption to manufacture `int32[3]&` references from literals; they now borrow value arrays instead.
  **T11a - no length in a reference type at all.** Asked whether `T[N]&` should also carry its length, the
  user went further: the size in a reference type is irrelevant, so make it an error. `[N]&` had meant two
  things - a type length (a parameter `a int32[3]&`) and an allocation size (a field `data T[cap]&s`) - and
  only the first is gone: in a declaration that allocates, a size on a reference now always means "allocate
  this many", a constant exactly as a run-time value, which also gave `local int32[4]&` a meaning (it was a
  null pointer whose 4 said nothing). T8a had to learn that a reference level begins a new array: without
  that, `int32[2]&[]` (two references to arrays of their own lengths) was "mixed length kinds", and
  `int32[2][3]&` had nowhere to go; it is now `int32[][3]&`, a reference level holding fixed rows. Found by
  the corpus: a returned `Handle&[...]` literal promoted into `Handle&[]&s` was built in the callee's scope
  and its handles destructed at the return, because the run-time-length promotion never set the target
  scope while evaluating the literal - it had never carried reference elements before. Also noticed: the
  spec's T24 example table had the inside-out marker pairing backwards for `int32[2]&[3]`; rewritten.

- **Generic interfaces and a built-in `Iterator<T>` (T35a/T35b, 2026-09-30).** Asked whether the iterator was
  a compiler carve-out, I confirmed it was matched by method shape and offered two routes; the user chose
  "design them generic", then "build it in, leave iterable for now", and kept the one-method signature.
  The design turned on reading T35 precisely: what cannot be dispatched is a method with type parameters of
  its own; an interface's type parameters are fixed per instantiation, which makes `Source<int32>` an
  ordinary interface. So an application is monomorphized like a generic struct and nothing downstream knows
  it was generic. Implementation: the declaration path already accepted `<T>` on any type; the interface
  body's checks were taught that the interface's own variables are not the method's (both the T35 check and
  G4's "only in the result" check), the four generic walkers treat a declared interface as they treat a
  declared struct, and satisfaction instantiates a generic type's method for the concrete receiver. That
  last one is what lets `GenOnce<int32>` satisfy `Source<int32>` through `fn (o mut GenOnce<<T>>&) Next()`.
  `Iterator<T>` is constructed in the synthetic build module (where -D constants live) and resolved by name
  as a fallback; redeclaring it is an error - and the first version of that error returned before
  registering the type, crashing a later pass, the same shape as the -D redeclaration crash fixed earlier.
  `for ... in` switched from the shape check to satisfaction of `Iterator<T>`, which now rejects a `Next`
  without a mutable receiver; the `Iter()` iterable rule was removed.
  **Not built, explained instead:** inferring `T` when a concrete type (not an interface value) is passed to
  a `Source<<T>>&` parameter. Today that works only when the argument already is an interface value.
  Iterable was then discussed and **deferred by the user**: my recommendation on record is a `for ... in`-only
  rule (call a concrete `Iter()` directly, no cost) and no nameable `Iterable` interface until generic code
  needs one, since satisfying `Iter() Iterator<T>&` with a concrete return would need covariant-return
  satisfaction and a scoped allocation for the boxed iterator.

- **Capitalized primitive names, the prelude, and built-in methods only in it (M19d, 2026-09-30).** The user
  asked for `Int32` and friends "to match the object-style", for arrays to become `Array<T>` created by a
  constructor, and for the methods of built-in types to be held by the language: "you may very well write
  these types and their methods including Iterator as normal .olang files and just make them always
  included". Done in phases; this is phase one. The rename was mechanical (about 1,450 corpus uses; the
  compiler's own name tables). The user also asked that no diagnostic mention an old way, so the retired-
  spelling errors added over the past days (func, while, choice, &&, ||, !, ^^, compound logic, `+` on
  arrays) were removed, with the modcheck tests that pinned them.
  **The prelude** is `std/prelude`, a package like any other, loaded first in every analysis so its names
  are collected before a module could reuse one. Three rules make it special and nothing else: its exported
  types resolve by bare name everywhere (one helper, `typeNamed`, now used by every by-name type lookup,
  including catch items and error statements, which had their own); only it may declare methods on a
  built-in type; and those methods are visible in every module. That retired M19c - import-scoped built-in
  methods with a program-wide ambiguity rule - which existed only because every module was allowed to make
  such claims. `std/string` moved into it; the synthesized `Iterator` became three lines of olang there.
  Corpus: tests that declared methods on `Int32` or on unnamed arrays now declare `type Num Int32` /
  `type Nums Int32[]` and test the same dispatch through them; the part about a generic element receiver
  losing to an exact one is now only reachable inside the prelude and left untested there. One test
  expectation changed for a real reason: `Nums(buf[:])` converts by copying, so zeroing through the
  converted reference no longer zeroes `buf`.

- **`Array<T>` withdrawn; arrays stay `T[]` (2026-10-01).** M19d's phase two was to make every array an
  `Array<T>` allocated by a constructor, `Array<Int32>(10)`. Working it through: generic arguments are types
  only, so a constructor-only array has no inline form - a struct field `m Float32[16]`, the mutex blob in
  `chan.olang`, C struct layouts and constant tables would all become a length and a pointer to arena
  storage, and a struct holding one would stop being plain data. Keeping `T[const]`/`T[expr]` as storage
  declarations that then become `Array<T>` saved that, but took the length out of the type, so `m = v` into
  fixed storage became a run-time length check (the compile-time evaluator can only remove it where both
  lengths are already known). Multi-dimensional storage was also proposed for removal along the way. The
  user reverted the whole direction: arrays remain `T[]`, `T[N]` and `T[expr]` exactly as in T11/T11a. No
  code had been changed; the 2-D question and the other proposals from that discussion are dropped with it.

- **`T[]` keeps its value meaning (2026-10-01).** The user asked whether `Int32[]` should simply mean
  `Int32[]&`, since an array is either fixed-size or reached by reference once created. Kept as is, the user's
  call: it would make the length kind decide value-vs-reference again (exactly what T11 removed), silently
  change `==` and assignment on run-time-length values (`a Byte[] = "hello"`), and save little, since a named
  scope still needs the `&` to carry it. The parameter position, where D9a makes `&` mandatory, is the one
  place the marker is pure noise; D9a's generic-calling-convention argument is why it stays written there.

- **The test suite is entirely olang (2026-09-30).** Asked what `modcheck.sh` was, I explained it held the
  checks a `test` block cannot make - programs that must fail to compile, and whole builds - and suggested
  moving the must-fail cases into files; the user asked for the entire suite in olang. So: `std/os` (run a
  command, read a file, quote for the shell) over `extern fn`; `checks/cases/*.olang`, 54 real programs whose
  header line states the expectation, replacing heredocs and `sed`-generated variants; and `checks/checks.olang`,
  whose tests run every case and drive the scenarios that need several steps. It runs under `make test`; the
  shell script is gone. Two expectations were tightened on the way (a failing `-D TestBuild=true` now has to
  name B10a). A text piece cannot continue onto the next line, which forced longer commands into variables.
  **It found a pre-existing use-after-free**: `return $a $b` built its result in the returning function's own
  block scope, which closes at the return. `cgStoreInto`/`cgValueForTarget` sent text to the target's scope;
  `cgBoundaryValue`, which returns and arguments use, never did. Every existing test read the result straight
  away, so the freed chunk still held it; the checks runner quoted two paths into one command and the first
  was overwritten by the second. Reproduced on the compiler as it stood at the start of the session, fixed in
  the boundary path, and pinned by a test that allocates between the call and the read.

- **Struct literals and plain structs removed; every struct is built by its constructor (T13, C2d, D8a/K2a,
  2026-10-01).** This came out of reinstating `Array<T>`: the user asked to drop `Type{...}` and make every
  struct a constructor call, and then not to give field-list structs an automatic constructor - a plain
  struct is a special case of a constructor struct, and goes for the reason `vocab` went once a vocabulary
  turned out to be an enum without payloads. The user's own note on what replaces it: a struct with an
  empty `()` constructor and `mut` fields that its user fills in. The corpus was migrated mechanically to
  constructors whose parameters are the old fields (`mut` puns, since plain fields were always mutable):
  about 35 declarations and 157 literals; array-typed fields took `Byte[]&` parameters (D9a). Two tests
  existed only to show a literal bypassing a constructor and were removed with the feature.
  **This reverses the recorded decision to keep literals beside constructors.** Its first reason - a
  literal is visibly infallible where a call is not - was already covered: a fallible constructor call must
  be written with `try`. Its second - a literal is the unchecked way to rebuild a value a validating
  constructor would reject, e.g. when deserializing - is a real loss; the reflection-driven serialization
  recorded as future work is the intended answer.
  **Defaults.** D8a allowed only literal defaults, struct literals included, so removing literals left
  `p Point = Point(3, 4)` unwritable. A default is now any expression the compile-time evaluator can
  compute, checked once the program has checked (it may call a constructor whose body is checked after the
  signature naming it); the error carries the evaluator's reason. Call sites still receive the expression,
  which is pure by construction. `$` renders a struct as `Point(1, -2)`.
  **The use-after-free (C2d).** One migrated test failed at run time, and it was a real bug that predated the
  change: a constructor field holding a reference with no scope name - initialized in the body
  (`inner P& = P(v, v)`) or a pun of a bare-`&` parameter - was built in the constructor's own scope, closed
  as the constructor returned, or in the caller's, while the instance went wherever it was assigned. Both
  shapes read reused memory on the previous commit. Literals had hidden it: a literal built its nested
  parts in the scope the finished value landed in (`targetScopeOverride`), and every test built nested
  references with literals. Two fixes were put to the user: (A) apply O13 to constructors, so every
  reference field names a scope - simple, but nested construction like `Link(1, Link(2, null))` would need
  scope arguments; (B) give the constructor the scope its instance lands in. The user chose B.
  **Implementation.** Every constructor takes one hidden leading `ptr %here`; a call passes the target scope
  when its result is being promoted into one and otherwise the caller's own function scope - precisely
  where a literal's parts went. A field's initializer runs with `%here` as the target, so its unnamed-scope
  allocations and nested constructor calls land there; a temporary argument for a bare-`&` parameter is
  built there. No semantic scope variable was added for codegen: the `ctorField` flag on the field's
  declaration and `cgIsCtor` on the callee are all it reads.
  **The checker half closed a second, older hole.** An argument that already is storage is stored by
  reference, so the instance must not outlive it. The old compiler accepted `return NB{q}` and
  `return NC(q)` with `q` a local - both dangling. Now the call records the argument's exact scope as a
  binding of a per-type instance-scope variable (`hereVar`); declarations, assignments and returns check
  the instance lands in a scope that argument outlives (exactly, when it can itself hold references, O25),
  and bindings propagate through locals as every other binding does. Two arguments of one call must agree
  (as O17's do). A bare-`&` parameter of the calling function may feed an instance kept in this function's
  scopes, never one returned into a named scope.
  **Found on the way, both fixed:** a `mut` at the end of a line produced no end-of-statement, so two `x mut`
  puns on consecutive lines read the second name as a type (L18 now lists `mut`, and the spec's list also
  gained `break`/`continue`/`abort`/`unreachable`, which the tokenizer already had); and an unknown member
  was recovered as a member operand with no base, which crashed the scope walk with "bug found".
  Pinned by four run-time tests (body field, by-value instance, returned instance, nested constructor in a
  field) and four must-fail checks (returned, outer block, unnamed parameter, uncomputable default).

- **`Array<T>` replaces `T[]`/`T[N]`, with inline fields by compile-time evaluation (T7/T7a/T8, E13a, D14,
  C2e, O1b, 2026-10-01).** The user went back to `Array<T>` after the `type String Byte[]` proposal ("this is
  ugly"): `Array<T>(size)` creates an array, `String` will be the text type, 2-D arrays go. The in-struct
  problem (a constructor-only array has no inline form) the user answered with "evaluate arrays in compile
  time": a field whose `Array<T>(n)` size the evaluator can compute is stored in the instance.
  **Types.** `Array<T>` resolves to the old run-time-length representation (`{i64, ptr}`), built in rather than
  declared (`Array` cannot be redeclared, and the parser treats it as a known type name so `Array<T>(n)` and
  `Array<T>&[...]` literals commit). Its argument may carry a bare marker, unlike a declared generic's (G11),
  since an element reference lives in the array's scope. Array suffixes left the grammar entirely, taking
  T8a/T9/T24's inside-out marker pairing, the `T[expr]` declaration shapes (D13a/D13b/D14a/D16), E20a and nested
  literals with them (a net 150 lines out of the compiler).
  **Construction.** `Array<T>(n[, v])` is OPERATION_SIZED_ARRAY_ALLOC with an optional fill, zero-filled
  otherwise (D13a's uninitialized arrays are gone with the form that requested them), and allocated in the
  target scope when one is known - an ordinary temporary. The comptime evaluator learned the fill.
  **Migration.** A script converted `T[]` spellings and `name T[n] [= fill]` declarations (about 350 lines);
  it first folded trailing `##` comments into fills and turned whole-array initializers (`ra Int32[2] =
  HeldValue(ha)`) into fills, both caught by reviewing its output. Functions returning fixed arrays by value
  return `Array<T>&s`; 2-D tests and "the length alone distinguishes instantiations" (G16a) went with their
  features; G16a's distinct-element-type tests now go through a generic function.
  **Bugs found.** (1) Value semantics: a struct holding an array by value shared it on copy - the
  "reference-only Vec" rule in the record was never enforced. T7a now requires `Array<T>&` for an array
  nested in a value, except an inline field. (2) A global holding a reference emitted `__olang_scope_alloc(ptr
  null)` - globals had no scope at all; O1b gives them a never-closed program scope. (3) A constructor's final
  assembly copied a value array field into the constructor's own scope, freed at the return; it now assembles
  with the instance scope (`%here`) as the target. (4) The re-check loop (B9c) ignored layout decisions
  whenever conditions were pending and all turned out runtime.
  **Inline fields (C2e)** are laid out in pass 2, but their size may need the evaluator, which needs checked
  bodies. A field whose size is not a literal is held in the arena for that attempt (T7a suspended), its
  size computed after checking, and the next attempt lays it out; an uncomputable size reports
  `ARRAY_FIELD_SIZE_NOT_COMPUTED`. Fixed storage accepts a copy of exactly its length, checked once per copy
  at run time when not known while compiling.

- **`String`, the text type (T29c, 2026-10-01).** The fourth phase of the user's plan. Built on T29a rather
  than as a compiler type: the prelude declares `type String Array<Byte>` and moves the text methods onto it,
  and the compiler's only part is that written text - a string literal, a `$` rendering, a join - adapts to
  `String` as a literal already adapted to a named array. That covers a `:=` (which now declares a `String`),
  a method receiver (`"  x ".Trim()`), and a `String` parameter. The rest of the corpus follows from meaning:
  `std/os`'s paths, commands and file contents, the check runner's text, and `geom`'s labels are `String`;
  raw buffers stay `Array<Byte>`, and `ReadFile` names its bytes text with `String(buf)`.
  **Two general gaps it exposed.** A slice dropped its base's declared type, so text sliced was no longer
  text (and `Nums(lit[1:])` had needed a conversion for the same reason) - a slice now keeps it. And T29's
  "a named type flows into its underlying one" required an identical representation, so a `String` value
  could not reach an `Array<Byte>&` parameter that an unnamed value reaches by a borrow; for an array the
  underlying type is now judged by element type, and E12's conversions then apply as usual.
  **Decisions not asked**: `==` is identity on `String&` (my earlier recommendation, never answered - flagged);
  the test file's own T29 demo type `String` became `Txt`.

- **K2b: arrays and references baked into global data (2026-10-01).** Last phase of the plan. K2 used to
  give up on anything holding a reference or a run-time-length array ("would need a second global"), and
  since every array now has run-time length, that would have dropped every array global back to startup -
  the K2 check's `Table` assertion was removed in the `Array<T>` commit for exactly that and is back now.
  `cgConstInit` writes each array's elements and each reference's referent as an `internal global`, named
  after the baked global, through a node map that makes shared referents one global and lets a cycle
  terminate (the node is registered before its contents are built). The evaluator's result for such a global
  is stored as `bakeVal`, not `constVal`, so a later evaluation never reads a referent another evaluation
  could change. Pinned by the K2 check: a computed table, a constructor chain, a self-referencing node.

- **C7a/K2c: empty destructors and destructor-bearing globals (2026-10-01).** The user observed that an empty
  `destruct { }` makes a type reference-only and asked that empty destructors not be registered. Registration
  now tests `TypeDestructorHasEffect` (a non-empty body) instead of `hasDestruct`, and the evaluator's
  destructor refusal uses the same test, so a type with an empty destructor is fully evaluable. The refusal for
  a destructor that does something was then narrowed: a global's own initializer frame allocates into the
  program scope (O1b), which never closes, so an instance built there never destructs and may be baked (K2b
  writes it out as data). The evaluator state carries `globalInit`, and the exemption holds at depth 0 only.
  **A latent block found on the way:** a constructor's body ends by assembling its instance as a struct
  literal, and both the static scan and the run-time check counted that as building a destructor-bearing
  value - so no such constructor was ever evaluable, anywhere. The assembly is now recognised as the call's
  own construction. **Asked: why not simulate?** The evaluator does simulate; the issue is that a replaced
  computation's effects vanish from the program. Simulating destructors would work for checks (an assert's
  call still runs) and, for globals, would need the whole startup simulated and the mutated globals' final
  values baked - possible when nothing leaves the program, and recorded rather than built.
  **Then reversed in part, the same day (the user's call): an empty `destruct { }` is a compile error (C7a).**
  An empty destructor releases nothing, so writing one only to make a type reference-only is a misuse; the
  non-registration and evaluator exemption for empty destructors were removed again, with their check
  assertions. The K2c global exemption and the constructor-assembly fix stand.

- **`len(a)` replaced by `a.Len()`, an `Int64` (E23, 2026-10-01).** The user first asked for a context-adapting
  `len` ("int64 when int32 is not enough"); the open question was what happens when a run-time length meets an
  `Int32` (check and abort, wrap, or demand the conversion), and I was implementing the literal-style
  narrowing with a check when the user redirected: `len` should be a method on `Array`, returning a plain
  `Int64`, since the language has no implicit integer conversions (T6 adapts literals only). `Len()` is
  compiler-supplied for every array (its body would need the length, which no olang code can read), and
  `len` is removed outright - an unknown name, consistent with the earlier removal of retired spellings.
  The for-in lowering's hidden index became `Int64`; std's positions and lengths followed (`Find`/`FindByte`
  return `Int64`, `List.Len()`, list and channel counters). **Bug found:** the dotted method-call form only
  accepted a local as its receiver, so `TargetOs.Len()` or `sh.SharedUnits.Len()` were "unknown namespace" -
  a gap `len(...)` had masked; globals, build constants and imported exported globals now work as receivers.
  One near-miss worth recording: three test branches are deliberately unparseable (they check an untaken
  branch is skipped), and converting their old struct literals to calls made them parse; reverted.

- **An `atomic` keyword revisited and declined again (2026-10-01, the user's call: "keep the atomic
  built-ins").** The user asked why olang cannot do what C does. The objection P9 recorded - `x = x + 1` on a C
  `_Atomic` is two atomic operations that read as one - can be designed out: a qualifier with reads and writes
  atomic, compound assignment as one read-modify-write, and a statement that reads and writes an atomic
  location any other way rejected. That would also close P9a. Compare-and-swap was the sticking point: as
  `if x == old { x = new }` or a conditional expression it depends on recognising an exact shape, reports no
  success, and changes meaning silently when the shape is disturbed; as a method it is a call anyway. Kept:
  the five builtins, unchanged.

- **Iterables and `List` iteration (S9c, 2026-10-01).** Built the deferred rule: `for x in e` calls `e.Iter()`
  when `e` has one and no `Next()`. The user had asked whether `List` could simply satisfy `Iterator` itself;
  the answer recorded is that iteration state then lives in the list (nested loops share it, a second loop
  starts at the end, reading needs `mut`, two readers race), and that `Iterable` produces iterators rather
  than replacing them - things with no collection behind them (lines of a file) are iterators directly.
  **Three things found.** (1) A generic iterator never worked with for-in: its element type was taken from the
  generic `Next()`'s declared `<T>`; it is now read off the call instantiated for the receiver. (2) `none <T>`
  on its own line did not parse - a closing `>` ended no statement - fixed in `acceptStmntEnd` the way a
  bare `&` already was (L20a). (3) The checker could not accept `ListIter.Next()` writing `it.chunk =
  it.chunk.next` through its receiver, nor a cursor walk from `it.list.head`: both stay in the list's scope,
  but the checker cannot equate two paths through an unnamed scope, and naming the receiver's scope (`&r`) made
  `Next` unable to satisfy `Iterator`, since a dispatch has no scope to pass. So `ListIter` holds numbers and
  asks the list (`elementAt`, a receiver with no scope name, walking as `ToArray` does) - correct, at a
  log2(n / 8)-chunk walk per element. The checker precision is the thing to fix if that cost ever matters.

- **Scope-checker study: five realistic programs (2026-10-01).** Asked to measure whether structs holding
  references that hold references make the checker unusable. Wrote, the natural way first, a BST with parent
  pointers, a graph with adjacency arrays, a recursive-descent parser building an AST, an LRU cache (doubly
  linked list plus table) and a generic hash map with removal; recorded every rejection and its fix.
  **Bugs found and fixed (3):** (1) the fit check read a reference field with no scope name of its own at
  its bare tag (this function's scope) instead of its container's (O20) - `cur = cur.left` in an insert loop
  was rejected outright; fixed, walking the whole chain of such slots (`m.buckets[b]`). (2) My C2d merge: a
  loop path without an instance-scope binding was taken as ambiguity, so a tree built in a loop could not be
  returned; an absent instance-scope binding is now no constraint. (3) **A use-after-free in codegen that
  predates today**: assigning a new reference into an ELEMENT of a run-time-length array reached through a
  reference (`b.a[0] = N(v, b.a[0])`) allocated the node in the writing function's own scope - codegen's
  container test (typeIsRefShaped) excluded run-time-length arrays. The hash map chained into its own reused
  memory and hung. Pinned by a corpus test that churns the arena.
  **Correct rejections that caught real bugs (2):** an LRU entry built in a local (`e Entry& = Entry(...)`)
  then stored in the table, and a replacement edge array built as a local then installed.
  **What it costs to write such code today:** every method that adds to its receiver names its scope
  (`fn (t mut Tree&s)`); a helper taking part of a structure names the structure's scope (`e mut Entry&s`); a
  value built to be installed is declared in the destination scope (`grown ...&s = ...`). Once the region is
  named, nested references raised no further "can't know" problems in any of the five.
  **Design friction found:** (a) a function returning `X&t` that calls another such function must pass `&t`
  explicitly, or the inner result lands in its own scope (O18) - every nested builder call in the parser;
  (b) G11 forbids reference type arguments, so a generic map with `String` keys cannot be written at all (a
  non-generic one can); (c) O24 also fires on storing `null`, which allocates nothing.

- **O4b: every reference parameter carries its scope; O10e removed (2026-10-01).** From the scope study: the
  user chose to remove the receiver/parameter annotations (option 3) and the "ascending scope" rule (O10e),
  relying on obligations and implicit scope passing. `assignImplicitParamScopes` gives each bare-`&`
  parameter of a function or method signature an anonymous scope variable, ordered by parameter so the
  receiver's comes first; constructors keep C2d's meaning. Interface method signatures get a leading
  `&receiver` variable, which a dispatch binds from the interface value - whose tag is exactly the instance's
  scope (O25), so no third word in the interface value was needed, contrary to what I first proposed; the
  by-value receiver thunk takes and drops it. Satisfaction no longer rejects a receiver with a scope.
  Removing O10e made both-way obligations possible, which is what a parameter repoint (`p = q`) needs: an
  equality obligation. **Found on the way:** (1) obligations were discharged at calls ignoring block depth
  (O2a), so an argument from an inner block was accepted where it had to outlive an outer one - a
  pre-existing hole, closed; (2) an interface parameter's boxing scope was resolved in the caller's frame
  (compiler crash); (3) C2d's "all constructor arguments in one scope" was stronger than needed, now one
  check per argument, exact only for those whose referents hold references.
  The study programs rerun without annotations: the BST and the element-prepend compile as written; the
  graph and LRU still need a value built for installing to be declared in the destination's scope (R4);
  the string-keyed map compiles with none.

- **G11 relaxed: references as generic type arguments (2026-10-01).** Item 1 of the user's four. A bare
  marker is allowed (`List<String&>`), meaning references in the container's scope; a named one stays
  rejected. Four things were hiding behind the old rule: TypeUnify stripped the marker whenever it bound a type
  variable (right for `<T>&`, wrong for a bare `<T>`); typeShortName left the marker out of a declared type's
  contribution to an instantiation name, so `List<String>` and `List<String&>` collided; an instantiated
  parameter that became a reference had no implicit scope (O4b now runs again per instantiation); and a
  re-entrancy bug in resolveStructCtorInto, which ended with scope declaration off rather than restoring it -
  a struct resolved lazily from inside another struct's field made the outer one reject its own `&s`. That
  last one is order-dependent and predates today. `std/list` gains a test building a list of slices.

- **O18a: a scope only the result names follows the result (2026-10-01).** Item 2. O18 bound an undetermined
  scope variable to the caller's own scope, so builders calling builders had to pass `&t` at every call (the
  parser study). Now such a binding is marked landing and rebound where the result lands. Two design points:
  the landing is resolved in the checker, on the bindings codegen already reads, rather than by threading the
  target scope through codegen's ambient override; and a callee obligation involving a landing variable waits
  until the end of the statement (`flushPendingDischarges`), by when every landing site in it has been
  resolved - checked at the call it would have been judged against "own" and failed. A result that never
  lands means what O18 always meant. Pinned by run-time tests that churn the arena after a result lands in
  an outer variable from an inner block, and after nested builders return.

- **No scope names: a scope is reached through a variable or the result (2026-10-05, the user's design; spec
  written, not yet implemented).** After the scope study a "no named scopes" model was designed and its first
  stage (`&x`, "lives where x lives") built; the user then reversed it, then rebuilt it differently over one
  conversation. The path matters, because each step removed a reason for a name.
  (1) A scope *after the function name* (`fn f&s()`) was taken to mean "the caller's block". With O18a's landing,
  an unplaced call already builds there, so for a function with a result the slot is the result's scope; for one
  with **no result** everything it could build there is unreachable garbage, the one plausible use (a lock guard
  dying with the caller's block) being better written as a returned guard - an unplaced result lands in the
  caller's block anyway, and the effect is then visible. So a scope exists only for the result.
  (2) The user proposed `T&arg` results be banned as "a guaranteed narrowing". They are not: `n := l.First()`
  adopts `l`'s exact scope (O25a, verified on the compiler), and banning them makes every accessor, `Trim`,
  slice-returning function and `io`'s `Read` unwritable. Kept as the **borrowed** result beside the **built**
  one (bare `&`, landing).
  (3) A by-value result holding references has no marker to carry a name, which was the last argument for the
  after-name slot. The user's answer: bring back the **returned-local rule** (O26) - a returned local lives where
  the result lives - and nothing in a body ever needs to name the result scope. A helper local stored into a
  returned one is written `&left`, which is why `&x` on locals is in.
  (4) Struct types were checked against `std/list`: fields unrelated to a constructor parameter are a bare `&`
  ("where the instance lives") with no loss - `List` passed apart from O14's by-value-result error, which the
  new rule removes. But cursors and views (`ListIter`, `shared.olang`'s `DualWrapped` with two scopes) store a
  longer-lived argument in a short-lived instance, and a bare field would force exactness against the instance.
  So a pun field carries its parameter's scope, and a field may name a parameter (`list List&of = of`); the
  per-instance tracking (`viaPath`) is unchanged underneath.
  Also decided: a destructuring whose targets disagree falls back to the caller's block, so the mismatch is a
  reported scope error, and an explicit `f&x()` overrides any landing. Kept deliberately: O10b's inferred
  obligations between parameters - `&x` in a parameter states a relation visibly, but the inferred ones were not
  removed. Removed: O3a, O3b, O13 (bare result error), O14 (embedded bare field error), C2c's supplied scope
  variable, T17c's enum scope names. Found on the way: the unknown-scope-argument diagnostic still suggested
  `&own`, removed by O3b - fixed.
  **Building it (same day).** Staged, each stage passing the suite: O10c's obligation note; `&x` tags and `f&x()`;
  result scopes and O26; constructor and payload parameter scopes; then the corpus migration (about 180 lines -
  `shared.olang`'s named-scope tests rewritten to `&p` fields and returned locals, keeping what each pinned) and the
  removal itself. What it turned up, in order:
  - A tag naming a block-scoped local carried only a depth, which the declaration path then overwrote or replaced
    with the initializer's scope - so `&x` needed to count as a *written* tag (`scopeWritten`).
  - **A use-after-free, new with by-value results**: `h = hold(9)` in a loop built hold's references in the loop's
    block while `h` lived outside it; a value target holding references now lands where it lives. And copying out
    (`tmp := hold(9)` then `h = tmp`) is closed by building a value local's references in the function's own scope,
    as constructors already did - verified dangling in the IR before the fix.
  - Codegen never read the checker's binding for a constructor's instance scope, so a constructor building a
    returned value used the function's own scope. Landing now records where a constructor call lands.
  - The by-value result condition was "contains a bare `&` field", which implicit parameter scopes made false for
    every constructor and payload; it is "holds references" now, as the spec says.
  - The C2d revision above, forced by `setChainLeaf` crashing codegen.
  - A field initializer inside a constructor stays "landing" for codegen; the binding persisted for
    `instance.field.x` is resolved to the instance scope, and that scope, reached through a value, to the value's.
  - A still-landing call is a temporary, not a scope-determining argument; and an absent implicit binding imposes
    nothing at a branch merge, as the instance scope's already did.
  - The container-store check rejected every value bound to the function's own scope, which only made sense for
    containers in a caller's scope; it is judged by depth for a container in one of the function's own blocks.
  Left open and flagged: a temporary written through a `&p` field of a container *parameter* is built in the
  container's scope (O23), which is sound only when the field's binding is that scope - pre-existing for named
  type scopes, now reachable only through an explicit `&p` field.
  **Revised the same day, after the user reviewed the result (2026-10-05).** The explanation had been too dense to
  follow, and a plainer pass produced four changes. (1) The automatic O26 ("a returned local lives in the result
  scope") went, replaced by an explicit `&return`, usable as a marker and as a scope argument. It also removed the
  workaround it had needed (`r T& = null ... r = b.inner; return r` becomes `b := B&return(...); return b.inner`).
  (2) A typed local's bare `&` means its block and never adopts its initializer's scope - O25a's adoption is now
  `:=` only - so `x Node& = first(l)` is an error naming `x Node&l`. Cursors in the corpus moved to `&l`/`&p`/`&m`
  (`:=` takes only a literal, call or slice, D15). A value local holding references declared with `:=` keeps
  where its initializer built them (a "value home"), which O26 had covered for returned locals only.
  (3) Option A for constructor fields, confirmed after the user's own question exposed the reason: building
  `l.next.next` in `l.next`'s scope would be equally safe, but that scope has no run-time representation, while
  `l`'s is always passed along; making B work would cost a second word per reference and still leave the checker
  unable to relate it. (4) The `&p` gap closed by forbidding building through such a field where its scope is not
  known, rather than allocating in the container's scope.
  The user also asked for the exact/outlives rule in one line; it is "exact, unless what is stored holds no
  references and sits in a field or array element" - which is TypeHoldsReferences, already what O25c used.

- **T29d: constructors for declared primitive types; primitive references declined (2026-10-05).** The user
  asked why there are no primitive references, framing a primitive as "a struct with one element you don't dot
  into", and proposed constructors for named primitives. Primitive references had never been needed - `&` was for
  what is costly or impossible to copy, and "mutate my number" and "share a number" were covered by multiple
  results and a one-field struct - but they would have removed a special case, and with them destructors on
  primitives made real sense: handles (`type Fd Int32 ... destruct { close(n) }`, reference-only by C11, with no
  arithmetic since an Fd can never exist by value). Building them stopped on S4a: assignment to a reference
  repoints, and a number has no field to write through, so `n = n + 1` on an `Int32&` would build a new number
  and repoint - the opposite of the example offered. The choice was write-through for primitives only (differing
  from every other reference) or a separate write syntax; the user dropped primitive references, and destructors
  with them. Constructors stayed: they replace the conversion and keep arithmetic, which the user chose knowing a
  constructor then checks only the way in (`Percent(60) + Percent(60)` is a `Percent` of 120). A bare literal not
  adapting to such a type followed, or it would have been a second way in past the check. A first version stopped a bare literal adapting to such a type, as a back door past the check. The user briefly
  reversed that ("make literals slide in fine - but only literals"), then restored it: running the constructor on a
  constant costs nothing at run time either way, so `Percent(150)` is written and the check always runs on the way
  in. Arithmetic remains the one path that produces the type without it.

- **`std/map` and the bugs it found (2026-10-05).** Written right after the scope rework, as the user asked, to
  test it on real code. In order: (1) `m.Put("apple", 1)` on a `Map<String&, Int32>` failed inference - text was
  unified as a `String` value against `K = String&`; G9a now treats written text as it treats a numeric literal.
  (2) `m.Get(key)` with a `String` value `key` failed the same way; G9b makes an argument for a variable the
  receiver already bound an ordinary fit check, so E12's borrow applies. (3) The map's own test hung; a slot's
  `next` pointed at itself and then at garbage - traced to the call passing the LOOP's scope for the receiver.
  A value lvalue borrowed for a reference parameter never determined that parameter's scope, so it defaulted to
  the call's block: `l := List<Int64>()` with `l.Push(i)` in a loop built every chunk in the loop's arena. Checked
  on the compiler from before this session - it fails identically - so it is pre-existing, and hidden only because
  no test churned the arena between pushing and reading. (4) Chasing it, the compiler itself hung: the value-home
  walk added earlier in the day followed `origin`, and a variable's origin can be itself. (5) The iterator could
  not walk the map's slots through its `&p` field - correctly rejected by the rule added the same day - so the
  map answers `entryAt` itself, the shape `ListIter` already used.

- **E6c: integer arithmetic wraps (2026-10-05).** Found while writing the prelude's hashes, which multiply past the
  range on purpose: codegen has always emitted plain `add`/`sub`/`mul`/`shl` - no `nsw`/`nuw`, so LLVM gives them
  two's-complement wrapping - and the compile-time evaluator was already written to wrap the same way, but the spec
  never stated it, which left a program relying on it with no guarantee. The user chose to make it the rule rather
  than undefined (C's choice for signed types) or checked (Rust's debug builds). Undefined would let the optimizer
  assume no overflow, and checked would put a branch on every operation; wrapping costs nothing and matches what
  the machine does.

- **The default error replaces the bare error (2026-10-05).** Came out of designing checked arithmetic: the user
  first wanted the built-in failures folded into "?", then settled on this - the only error with no type is the
  default one, which `?` alone declares and which every error set includes; built-in failures get a type of their
  own in the standard library (next entry). Implemented as the existing bare error type appended to every error
  list, after the named types, so no named type's code changed. The rule that every fallible call may produce it
  made 51 corpus `try` statements in code that cannot propagate - tests, mostly - incomplete; each gained a
  trailing `catch { unreachable }` rather than turning its typed clause into an untyped one, so a test still
  stops if the default error ever does arrive instead of silently passing. The first build of it was wrong, and the user caught it from my description: I had put the default error into
  every error set, so every caller of a `? MathError` function had to handle a nameless error too. The user's
  framing was that the default error is "the presence of error" - what a function that names nothing fails with -
  so `? MathError` fails with MathError alone, a plain `error` is only for a bare `?`, and a bare `?` function
  generalizes whatever its `try`s let through. Rebuilt that way the same day; the 51 `catch { unreachable }` came
  back out.

- **BuiltinError (R20, 2026-10-05).** Checked indexing and slicing used to fail with the bare error. They now fail
  with `BuiltinError.OUT_OF_BOUNDS`, from a prelude error type the compiler knows by name, which also carries the
  words the coming checked arithmetic needs. Coverage had to learn that a check produces only some of a type's
  words - otherwise `catch BuiltinError.OUT_OF_BOUNDS` would never complete a checked index. Found on the way, and
  pre-existing: a checked index whose index was already Int64 emitted `sext i64 to i64` (invalid IR), and a Byte
  index was sign-extended though Byte is unsigned.

- **E15a: checked arithmetic under try (2026-10-05).** The user's answer to "should division by zero stay
  undefined": keep every operation exactly as it is and make `try` the opt-in check for all of them, reporting
  through the new BuiltinError. `try` binds as a unary, so a checked computation is `try (a + b)`, and the rule is
  that it checks every operation inside the parentheses that can fail - which also means `try a[2:n + 5]` checks
  the `n + 5`. Integer overflow is detected by computing at twice the width (i128 for Int64) and comparing with the
  truncation, so no intrinsic declarations were needed; float checks read the IEEE result (infinite from finite
  operands, NaN from non-NaN ones). Each tried expression names the words its operations can produce, and catching
  those is complete. Found on the way, and pre-existing: **a shift whose amount had a different width from the
  shifted value emitted invalid IR** (`shl i64 %a, %b` with `%b` an i32) - E5 explicitly allows the mismatch and
  codegen never converted it, so `Int64 << Int32` did not compile at all. The first cut had the compile-time evaluator simply decline checked operations; the user asked for it to handle
  them, and to make keeping the evaluator current part of every change - now the checklist at the top of
  CLAUDE.md. The evaluator computes exact integer results at twice Int64's width (a `__int128`, under
  `__extension__` for -Wpedantic) and rounds float results to the type before judging them, so it fails exactly
  where the generated code does; a check's error carries the try that checked it, so only that try's clauses
  see it and an error from a call passes through. Proven by globals baked from caught checks, one through a call.

- **K1: slices, text and enum payloads in the evaluator (2026-10-05).** Asked for right after checked arithmetic,
  under the new rule that the evaluator stays current. A slice is a reference to a view whose element array points
  into the base's, so the borrow semantics (E16a) hold with no copying; bounds fail as the run time does. Text is
  the delicate one, because the evaluator must produce the same bytes the generated helpers write: the rules were
  transcribed from codegen's renderer (top-level bytes raw, nested text quoted and escaped, references followed 8
  deep, unmarked inner arrays as bare rows, numbers through snprintf's "%lld" and "%.17g"), and the type spellers
  are shared rather than copied, so the two cannot drift on those. An enum payload is the case tag plus its fields;
  a payload-free case of such an enum is the same shape with no fields, which keeps equality and `$` uniform.
  Baking such a global still falls back to startup (codegen does not lay out a payload constant), which is safe.
  The test compares a baked rendering of structs, arrays, enums, references, a float, a byte and nested quoted
  text with the same function run at run time, byte for byte.


- **K1/K2d: function values, interfaces and payload enums (2026-10-05).** The two things the previous entry left
  open, closed at the user's request. A function value is a new evaluator kind holding the function it names, so
  `==` compares functions and `$` renders it; calling through one is still excluded (K1a decides evaluability per
  function, and which function a value names is only known per call). An interface value is the reference to its
  instance, so identity is the instance's - for an array, same storage and same length, matching T33's boxed-pair
  rule at run time. `$` on either renders what it is, not what it holds, through codegen's own spellers (it now
  also exports the interface speller). **K2d**: a payload enum's LLVM type is `{ i64 tag, [K x i8] }`, so the
  baked value writes the live case's fields as the exact bytes they occupy (little-endian, natural alignment by
  `TypeGetAlign`'s rule, which is what LLVM lays the case struct out by). Choosing bytes rather than a literal
  struct of the case's own types keeps the global's type canonical, so containers holding one and other modules'
  `external` declarations needed no change. A payload holding an address (a reference, a function, a run-time
  array) has no byte spelling and still falls back to startup. Proven by baked globals compared with the same
  computation at run time, both by `==` and by rendering.
  **Found on the way, pre-existing**: T29c's "written text declared with `:=` is a `String`" was applied only to a
  local declaration - a global `X := "a" $n` stayed `Array<Byte>`, so `X.Eq(...)` was "no method of this name".
  The `for` initializer, constructor field and global sites each had their own copy of D15 without it; all four
  now share one function.

- **Modules are files; directories only group them (M1/M22/M22a/M23, 2026-10-06).** The user's "remaking
  modules": they disliked that a directory became a module and that a package's imports were implicitly shared
  by all its files, and offered two shapes - std a directory whose files import each other explicitly, or
  std a file re-exporting others. Both are "a module is a file"; they differ only in what a directory means,
  and a re-exporting facade already worked (capitalized aliases re-export, M4/M6), so the first was built and
  the second needs nothing. The user then settled the rest: directories stay groupings (`std/...`, and a
  remote import names a file in its repository, `host/owner/repo/path`), no extension in an import, no
  package-private visibility for now, and relative imports between neighbours (`std/os` imports `"io"`).
  **Identity became the path** - for a local module, relative to the working directory - so `a/util` and
  `b/util` are two modules where base names used to collide; a relative import's identity is the importer's
  with its last element replaced, which is what makes `"io"` inside std and `"std/io"` elsewhere one module.
  Inside std or a remote repository a relative import may not climb out (it would otherwise name a local file
  with a std identity). **The prelude** stays privileged as a set: each of its files is a module, any of them
  may declare built-in methods, and their exported types resolve by bare name everywhere. Per-file coherence
  (a declared type's methods live in its own module) caught `String.Hash`, declared in `hash.olang` for a type
  declared in `text.olang`; it moved. Migration: std flattened (`std/io.olang`), `geom/` became two modules
  importing each other (their tests of shared namespace and shared imports became tests of the cycle and of a
  condition reading an imported global), the `checks` fixtures took the new paths, and the "-t takes a package
  directory" scenario became "a directory is never a module" plus a neighbour not being visible unimported.
  **Found on the way, pre-existing**: written text did not adapt to a `String` value across `==` - `u == "cm"`
  was "both operands must have the same type". It surfaced as geom's condition `measure.GeomUnits == "cm"`
  failing B9c with "does not check"; the old version of that condition was decided on tokens, which compare
  text by content without types, so nothing had ever type-checked it. T29c now reaches `==`/`!=`.

- **`String.Split` (2026-10-06).** Deferred since `string.olang` was written, on the grounds that a variable
  number of pieces is what a `List` is for. It turned out not to need one: two passes - count the separators,
  then fill an array of exactly that length - give a contiguous `Array<String&>` with no growth. The pieces are
  slices, so they borrow the receiver, and the array of them is declared `Array<String&>&t`: it holds
  references into `t`'s scope, and O25 puts a value holding references in exactly their scope, so it lives
  with the text. The empty-separator case follows Go (one piece per byte, which for olang's byte strings is
  the natural reading) rather than Python's error; that choice is flagged. Tested at run time with the split
  done inside a block and read back after an arena churn, and at compile time by globals the evaluator bakes.

- **Lambdas, stage 1 (D16, T22/T22a, 2026-10-06).** The design came out of a long conversation. The user's
  starting point was "quick one-time dispatch functions"; the open question was capture. Most languages share
  the captured variable (JS, Python, Go, C#, Swift - kept alive by the GC); Java forbids modifying; C++, Rust
  and Swift choose per capture. olang could share without a GC by placing a captured local in the scope the
  lambda lands in, but the user observed that with copies a lambda is a plain function of its inputs unless
  references are involved, that sharing is only "return the state" in disguise, and that a captured reference
  is exactly the explicit, scope-checked form of sharing - so captures are copies, plain values read-only,
  references writable through when `mut`. Storing and returning stay allowed because copies make them free in
  scoping terms. The user also rejected implicit returns ("require the return keyword even for single
  statement lambdas") and asked that the result type be optional, which became inference from the expected
  function type, or from the body.
  **Stage 1 is a lambda without captures.** It is a hidden function `lambda$N`, owned by its module and
  emitted `internal` beside the function it is written in (`lambdaHost`), which is what makes it work inside a
  generic instantiation (emitted with the instantiation, in the root object), a test, a constructor, or a global
  initializer. Its signature can depend on the expected type, so the expression is a placeholder until it meets
  one: `OperandFitsType` (every fit site), `OperandFuncCall` (after the other arguments have bound what they
  can for a generic, so its parameters are concrete and its result then binds the rest), operators, and `:=`;
  a per-statement walk catches any that met none. A lambda's result and errors, when nothing gives them, are
  fixed by its first `return` and by every `error`/uncaught `try` (in order, since error codes are positions).
  The evaluator gained calls through a function value: whether one is evaluable is decided when the call is
  reached, since only then is the function known.
  **Four pre-existing bugs, found while building it.** (1) A function whose signature carries a scope
  obligation could be passed as a function value, and a call through the value checks nothing - so `hang(a, b)`
  requiring `b` to outlive `a` was rejected directly and accepted through `apply(hang, a, b)`, reproduced as a
  read of reused memory. T22a forbids such a function as a value, checked once every body's obligations are
  known. (2) Function-type identity ignored error lists and `mut`, so a fallible function was accepted for an
  infallible type and its `{code, value}` result was read as a plain value - wrong answers. T22 now compares
  errors in order, as interface signatures already did. (3) `TypeUnify` walked a function type's parameters but
  never its result, so the obvious `map(a, f fn(x <T>) <U>)` could not infer `U` from any callback, named or
  not. (4) A global declared with `:=` from a call returning an array, when not computable at compile time,
  crashed code generation: the global's type kept the callee's result-scope variable, which means nothing at
  the top level. Each is pinned by a corpus test or a `checks/cases` program.

- **Lambdas, stage 2: captures (D16c/D16d, 2026-10-06).** The hard part was never copying the captures - it was
  proving a lambda cannot outlive a reference it captured once it can be returned and stored. The constructor
  machinery (C2d) checks a value only where it first lands, so it does not follow a lambda copied on afterwards.
  The answer was to stop treating function values as plain data: they became **reference-shaped**, as an
  interface value is, which put every one of them under §8's existing rules at once. Then the only new decision
  is where a lambda lives: one capturing no reference is a temporary built where it lands (exactly as text and
  constructor results are), and one capturing references lives where they do - their one scope, or the innermost
  block among them - so returning or storing it is judged by the rules any reference already obeys. Every live
  scope encloses the current block, so passing a lambda down is always safe, which is the case that matters most.
  Two consequences of that move needed handling: a typed function-valued local was being held to O25's exact
  scope, which exists because writes through a reference allocate into its scope - nothing is ever written
  through a function value, so for function types only "outlives" is checked; and a function-typed result had
  no result scope, so a returned closure was built in the dying callee (caught by an arena churn, as these always
  are). Function values also became nullable, which they already were in fact: a function-typed field's zero
  value was a null pointer.
  The run-time shape is a closure object: code first, then each capture and, for a captured reference, the scope
  its referent lives in - so a write through a captured reference inside the lambda allocates where it should,
  exactly as through a reference parameter. A named function used as a value gets one shared static object and an
  adapter, emitted `linkonce_odr`, which keeps "one function is one value" true across separately compiled
  modules. The evaluator carries the captures in the function value and gives each creation its own identity,
  matching the run time (two calls of `adder(1)` make unequal values; `f == f` holds).
  One friction worth recording: text is a value `String`, so a lambda cannot capture a `name := "bob"` local -
  it must be `name String& = "bob"`. That is D9a's rule applied consistently (an array is never copied
  implicitly), and the diagnostic says what to write.

- **Lambdas, stage 3: the std methods and `spawn fn()` (2026-10-06).** Lambdas exist for callbacks with context,
  and without functions to pass them to they buy nothing, so this stage is the payoff: `Any`, `All`, `FindIndex`,
  `Count`, `Map`, `Filter`, `Fold` and `Sort` on every array (prelude), and the same family on `List`.
  `Sort` taught the most. The obvious merge sort with a scratch array is rejected for an array of references whose
  referents hold references - correctly: such a reference must live in exactly its referent's scope (O25), and a
  scratch array in `Sort`'s own scope is not that. Allocating the scratch array in the caller's scope would leak
  a copy per call into a scope that may live long. So it sorts by swapping alone - Go's `sort.Stable`, insertion
  sort over blocks of 20 merged by rotation - which is stable, allocates nothing, and keeps every element where
  it already was. Writing even a swap generically needed `t := a[i]`, which D15 refused: an element read is now a
  legal `:=` initializer, for the same reason a field read became one (its type is declared, by the array).
  Sorting `String&` then gave garbage, and the cause was **pre-existing**: instantiating `f fn(x <T>)` with
  `T = String&` makes the callback's parameters references, which pass hidden scope arguments (O4b), but
  substitution never gave the function *type* those scopes - so a call through `f` passed two fewer arguments
  than the function it reached expected. Reproduced on the compiler before lambdas with a named function
  (`len 94685499777152` for a four-byte string). Substitution now assigns them, and a result scope when the
  result became a built reference.
  `spawn fn() { ... }` makes a task of a lambda's body: the closure is held by a hidden local declared to live
  in the join block's scope, so it lasts until the join, and each spawn copies its captures - a loop spawning a
  task per iteration hands each its own `i`. Writing it exposed a gap in P2: it checked a task's arguments but
  not the function value it calls through, and a closure made inside the join's loop lives in that iteration's
  arena. A test spawning one passed by luck; it is now rejected, with the message pointing at the spawn form.

- **Inherited array methods (T29e, 2026-10-07).** Asked why `"abc".Count(...)` did not work when `String` is
  `type String Array<Byte>`: the new array methods are declared on unnamed arrays, and a declared type is nominal
  (T29), so method lookup only ever looked at `String`'s own methods even though a `String` already flows
  anywhere an `Array<Byte>` is wanted. The user decided the array methods should be inherited, and that a clash
  should be an error rather than an override - so `x.f` keeps one meaning whichever type `x` is declared as.
  Lookup falls back to the underlying array, the receiver check accepts the declared type for a built-in
  receiver, and the overload check rejects a declared method whose name an inherited one has.

- **T7b: arrays are held by reference except where they are made (2026-10-07).** Came out of the capture question.
  A lambda capturing a value array had three possible meanings: reject it (what shipped), copy it, or borrow it.
  The user ruled out copying - "we may risk accidentally copying large arrays; like for functions, that is a
  problem" - and chose the borrow, then generalised: arrays are always held as references except where they are
  instantiated in memory. Checking every place an array can be held showed the rule already held for parameters
  (D9a), fields and elements (T7a), generic arguments (T7a per instantiation) and enum payloads, and turned up one
  violation nobody had asked about: destructuring an array result (`a, n := two()`) copied the array element by
  element out of the hidden local the results are held in, though that local is never read again and the array
  was built where `a` lives. It is now taken as it is. A destructuring *assignment* into an outer variable still
  copies, correctly - that variable is the storage. The borrowed capture is read-only like every other capture
  of a value, and differs from them in one visible way: it sees later writes to the array, as a parameter
  `a Array<T>&` would.

- **Permission in reference types (T25b/T25c, 2026-10-07).** Started from the user's plan to put literal text in
  read-only storage for immutable variables. Checking whether anything could then write such storage turned up a
  pre-existing hole: `mut` was checked where a variable is named, and a function returning a reference it was
  given read-only (`Trim`, any `fn same(p P&) P&p`) handed back a writable one - so `x := G.Trim(); x[0] = 'z'`
  changed an immutable global, and the compile-time evaluator, which copies `G`'s value, predicted otherwise.
  The first fix inferred read-only-ness per local variable. It closed the hole and then kept needing new cases:
  `Split` fills a fresh array with read-only pieces of its receiver, so "the array is writable, its elements are
  not" had to be expressible, then `ToArray` needed the same for an array living somewhere else. The user asked
  whether the clean answer was to make mutability part of the type - it is (C's `const T*`, Rust's `&T`) - and
  chose it: `mut` written before the type, a global reference `v mut Type&`, and no `mut` on locals, which are
  writable by default ("instead that should be a compile error"). An earlier message of theirs I had read as
  asking for `mut` on locals; it was not, and the corpus-wide migration I had begun was reverted unlanded.
  The implementation: `refMut` on types; `mut` before a type expression; the top-level `mut` of a parameter,
  global or field applied to its reference; identity comparing permission at inner levels and a separate strict
  identity for generic arguments (so `List<Node&>` and `List<mut Node&>` are two instantiations); one fit rule
  (read-only never into writable); one write rule (writing through a reference needs its permission - shallow);
  permission carried through substitution and through the snapshot refresh of self-referential structs (two
  places that copied a type's per-use attributes and had to learn the new one, found by a failing `List`).
  Decisions made while migrating, flagged: a typed local takes its initializer's permission when that is
  read-only (otherwise `rest String& = list` from a read-only parameter could not be written at all); a built
  result is writable (otherwise every builder needed `mut` on its result); an array literal adapts.

- **Static literals (T25d, 2026-10-07).** The request that started the permission work: a literal should be
  static data where the variable receiving it is immutable, and arena data where it is not. With permissions in
  types, "immutable" became checkable: a read-only reference target. So a text literal or an array literal of
  constants passed to a non-`mut` parameter is now `{ length, pointer to a private constant }` - every
  `io.Print("...")` and `s.Eq("...")` used to copy its literal into an arena first - and plain data baked for an
  immutable global is emitted `constant`. A first version emitted the constant before checking that every
  element was constant, producing malformed IR for `Int32[1, 5, 2, 8 + k]`; the elements are now checked first.
  Locals keep their arena copy, as the user decided locals are writable.

- **The tuple question closed: `Pair`, constructor inference, and passing several results on (D8d, G10c,
  2026-10-07).** D8c had chosen multiple return values over tuples, and the user asked for tuples to be
  reconsidered once immutable references existed ("immutable arrays are basically tuples?"). They are not: an
  array has one element type and a run-time length, a tuple neither. Asked when anonymous structs would be
  wanted, the honest list was short - several results (already D8c), and "two things kept together" in a
  container or a map key. A tuple type was designed (structural identity, `(A, B)` spellings, `.0` access,
  destructuring from values) and set against a named generic struct; the user chose `Pair<A, B>` in the prelude
  and closed the question, and asked in the same breath for `f(g())` to work when g's results fit f's parameters.
  **`Pair` needed constructor inference to be worth having.** G10a required `Pair<Int32, String&>(1, s)`, which
  is longer than declaring a struct. G6's reason for written arguments - nothing at a type reference can infer
  them - does not hold at a constructor call, which has arguments; so G10c infers them there, through G9's own
  code (literals adapt, text adapts, a bound variable is not re-inferred), then retargets the call at the
  instantiation's constructor. A parameter the constructor never mentions cannot be inferred, and the message
  says to write the list. `Hash`/`Eq` are generic methods checked per instantiation, so a `Pair` of things
  without them is still a pair; the hash scales the first part's hash by the FNV prime before adding the
  second's, so swapping the parts changes it. Four corpus types named `Pair` were renamed, since the prelude's
  types cannot be redeclared (D3a).
  **D8d is Go's rule**: only when the multi-result call is the sole argument. Mixing (`f(g(), 1)`) stays an error
  whose message now names both legal forms and `Pair`. Implementation: the argument list is replaced by one member
  read per result on the same call operand, flagged as a spread source; codegen and the evaluator compute the
  source at result 0's read and reuse it for the rest, which is sound because arguments are lowered in order.
  The scope checker needed one thing: a part must land the way its call would (O18a) - without it,
  `return keep(mk(42))` was rejected as "own scope cannot satisfy a longer-lived scope" where the single-result
  form compiled. Several `try` defaults remain confined to destructuring and `return`, because inside an argument
  list their commas are the arguments' (R9a).
  **A pre-existing compiler crash found by the first Pair test**: `Map<Pair<Int32, Int32>, Int32>` segfaulted the
  compiler, and a user struct key did too. Checking a generic function's instantiation set `currentBindings` to
  `&inst->bindings`, a pointer into the list of instantiations; checking that body instantiated `mapSlot` and
  grew the list, so the bindings were read from freed memory (a crash, or bizarre "unknown member" errors in
  Map's own body). It had survived because every earlier Map test's instantiations happened to fit the list's
  capacity. The list header is copied now.
  **A gap recorded, not fixed**: a function cannot return a function-value parameter - O14 asks for a borrowed
  result, and a function type has no way to carry the marker. Needs a decision.

- **Returning a function value from a parameter (O14a, 2026-10-07).** The gap recorded with D8d: O14 rejected
  `return f` for a function-typed parameter and told the programmer to write a borrowed result, which a function
  type cannot express (`fn(a Int32) Int32&f` would mark the inner result type). Discussed with the user: the
  restriction only matters because of lambdas - a named function used as a value is a static object and cannot
  dangle, while a closure lives in a block's arena (D16d), whether it captured references or only copied values.
  Three ways out: a marker spelling for function types, inferring "borrowed" from the body (rejected: built vs
  borrowed changes the calling convention, which callers read off the signature), or treating a function result
  as needing only to outlive. The user chose the last. It cost four lines: where O14 would report, a function-typed
  result instead adds the obligation "the parameter's scope outlives the result scope", and O18a's deferred
  discharge checks it at every call once the result has landed - `keep = id(y)` with `y` an inner block's closure
  is rejected, `id(dbl)` and a long-lived lambda pass. Found while testing, not fixed: a call's result cannot be
  called directly (`id(dbl)(3)` does not parse; M19b's postfix form covers methods only).
  **E13b, the chained call, built the same day at the user's request.** `(args)` became a postfix part like
  indexing and member access, so it follows a call, an element or a parenthesized expression. In the checker it is
  an ordinary call through a synthetic variable of the callee's function type - the same shape as a call through
  a local function value, so arity, fit, scope binding and the argument lowering are shared - with the callee
  expression kept on the operand; codegen computes the closure from it where a named variable would be loaded,
  and the evaluator evaluates it where it would look the variable up. Three operand walkers learned the new child
  (lambda finalizing, S8c's write scan, K1a's static scan). `try f(x)(y)` covers the last call: the inner call is
  checked with fallible calls disallowed, so a fallible inner call needs its own `try`. Line ends are already
  statement ends (L18), so a parenthesized expression starting the next line was never at risk - a test pins it.

- **Inference through satisfaction (G9c, 2026-10-07).** The last of the generic-interface follow-ups recorded with
  T35a: `genFirst(c)` with `c` a concrete `ForCounter` failed to infer `T` in `GenSource<<T>>&`, so a caller had to
  convert to an interface value first. `TypeUnify` now meets a generic interface application with a concrete
  argument by looking up, for each interface method, the method the concrete type supplies (instantiated for a
  generic receiver, exactly as `InterfaceMethodImpl` does) and unifying parameters and results. It only binds;
  whether the type really satisfies the substituted interface is still checked by the ordinary conversion, so a
  wrong `mut` or error list is reported where it always was. `total(l.Iter())` over a List works with nothing
  written. The evaluator needed nothing: binding is a checker step, and a call through an interface is outside K1.
  **Three parser defects found writing its test.** (1) `Pair<Int32, Int64>(1, 2)` did not parse in any module but
  the prelude: `isKnownTypeForParsing` looked only at the module's own declared names, while the checker resolves
  prelude types by bare name (M19d) - so the type position worked and the expression position, which the parser
  must commit to, did not. (2) L20a let a `>`, a bare `&` or a `mut` end a statement wherever it fell, not only at
  a line's end as the spec says; `state Array<Float32>(stateSize)` (written in a user program) became a valid
  declaration followed by an item starting at `(`, reported as "unexpected token '(' expected 'test'". (3) Error
  recovery after a failed top-level item fed tokens to the next statement end - the end of the item's first line -
  so the rest of a broken function or test was parsed as top-level declarations and each line re-reported; it
  could even declare a test's locals as globals and then report D3a clashes against them. The item is now skipped
  through its blocks, and one failing at its very first token reports "expected 'declaration'" instead of the
  name of whichever alternative happened to be tried last. Two check cases pin (2) and (3); the old compiler gives
  five errors for the one-typo case.

- **The evaluator calls through interfaces (K1, 2026-10-07).** Asked why it could not, there was no reason: K1
  listed dispatch beside `extern` as though both were opaque, but a dispatch always reaches an ordinary olang
  method, and the evaluator's interface value is a reference to the instance node, which keeps its concrete type.
  So `ctCall` evaluates the receiver, asks the checker's own `InterfaceMethodImpl` which method that type supplies
  (instantiating a generic receiver's method), and runs it - the receiver bound as the instance, or a copy for a
  by-value receiver, as the generated thunk does. The static scan defers the decision as it does for a function
  value. A null interface value is refused. Pinned by globals baked through `GenSource<Int32>` and through G9c's
  `Iterator<<T>>&` inference, compared with the same computation at run time. The user's rule, recorded: the
  evaluator should handle everything it can.

- **Arrays hand out iterators (T35b, 2026-10-07).** The `Iterable` question closed the cheap way, on my
  recommendation which the user took: G9c made `total(l.Iter())` work for any concrete iterator, so the only thing
  generic code over `Iterator<<T>>&` still could not take was an array, which had no `Iter()`. `ArrayIter<T>` in
  `std/prelude/array.olang` holds the array by reference and an index; `String` inherits it (T29e). The test first
  asserted that a second `for` over an exhausted by-value iterator ran zero times; it runs again, because S9a gives
  the loop its own copy of a by-value iterator - the spec was right and the test now pins it. A global computed
  through `a.Iter()` is baked (K2), matching the run time.

- **Cancellation and timeout (2026-10-07).** The last concurrency gap, closed as a library on the user's choice of
  "both" kinds - waits that give up and tasks that stop. The user did not at first see what a token was for; the
  explanation that settled it: a task is an OS thread, nothing can stop one safely from outside (a thread killed
  part way can leave a mutex locked forever or a structure half written), so stopping must be the task's own
  decision, and the token is only the signal it checks. A timeout is the same signal fired by a deadline. The
  alternative offered - `RecvTimeout(ms)` with no token - covers waits but cannot stop a computing task or stop
  several with one signal. `std/cancel` holds `Token` (an atomic flag plus a fixed monotonic deadline), `After`,
  `NowNs`, and `WakeAt`, which picks the wall-clock time a condition-variable wait should next wake at: the
  deadline when near, else 10ms, since a token keeps no list of waiters to wake. `chan` gained `SendUntil` and
  `RecvUntil` beside the blocking forms, which stay infallible so no existing caller changes. Clean under `-race`.
  Two compiler issues met writing it. `atomicLoad` required a writable target (P9 said "mutable lvalue" for all
  five builtins), which made a read-only `Token&` unreadable - relaxed for the one builtin that only reads. And a
  failed `atomicLoad` inside an `if` produced a second error, S8a's "this condition is the same on every build":
  the checker leaves an `OPERATION_NONE` placeholder where an expression fails, and the evaluator treated every
  `OPERATION_NONE` as a literal. It now refuses a placeholder that is not one.
  Noted for the user, not changed: error words are comma-separated (T19) while enum cases are separated by line
  ends, and writing the error the enum way fails with "expected '}'".

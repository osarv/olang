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
- **`test "description" { }` blocks + builtin `assert(cond)`.** Zig-style. Only usable in `-t` mode.
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
  signature to declare every error `f` can produce. `try f(...) catch A || B.word { ... }` is a
  *statement*: pure control flow, the caught error is never bound to a value (no `|err|`-style capture -
  error words carry no data anyway, so there'd be nothing extra to expose). `catch MyError` (bare, no
  `.word`) matches any word of that type; `catch MyError.NotFound` matches only that one word; multiple
  matches combine with `||`. An error not matched by any clause propagates using the same superset rule
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
- **Struct/array literal syntax + `:=` type inference.** `Type[v1, v2, ...]` constructs a struct
  (positional, in member-declaration order) or an array (`T[N][v1, ...]` fixed, `T[][v1, ...]`
  dynamic/malloc'd) inline, as a general expression usable anywhere a value is needed - not just on the
  right of a var-decl. The type is always restated on the literal itself
  (`x mut int32[] = int32[][5, 6, 7]`, not `x mut int32[] = [5, 6, 7]`) - chosen so a literal is
  self-describing and var-decl grammar needs no changes at all. `x := <literal>` infers `x`'s type
  entirely from an initializing literal (locals, for-loop init vars, and globals, via the existing
  two-phase resolve/check split); a non-literal initializer (`x := f()`) is a compile error
  (`TYPE_CANNOT_BE_INFERRED`), since only a literal is guaranteed to syntactically carry a full concrete
  type. `:=` is its own token (`TOK_ASS_INFER`), not reused `=`, because reusing `=` made `SNTX_VAR_DECL`
  and `SNTX_STMNT_ASSIGN` (e.g. `result = 100`) genuinely ambiguous with no way for the PEG engine to
  prefer one over the other. The value-list delimiter is `[...]`, not `{...}`: `{...}` collides with block
  syntax (`if x { y }` was silently misparsed, consuming `x { y }` as a struct literal and leaving the
  `if` without its required block) with no way to backtrack out of it once chosen; `]` never closes a
  block anywhere in the grammar and was already an automatic-statement-end trigger, so `[...]` has zero
  collision risk there and needed no tokenizer changes.
  **Known, unresolved gap: a literal needs at least two values.** `Point[1]` (a genuine single-field
  struct literal) and `int32[][5]`/`int32[]` (a single-element or empty array literal) are syntactically
  indistinguishable from plain indexing (`Point[1]` also reads as "read var `Point`, then index by 1") to
  this PEG engine: it greedily consumes a lone bracket as an array-type suffix and can't backtrack out of
  that once the literal's own value-list bracket then fails to appear (see the comment on
  `SNTX_EXPR_LITERAL` in syntax.c). Resolving this for real needs the base name's type-vs-variable status,
  which only semantic analysis knows, not the parser - not attempted. Single/empty-value literals
  currently fall through to plain indexing and fail with confusing errors (`unknown variable`/`operand is
  not an array`) rather than a clean diagnostic.
  **Still out of scope:** `Type{}[...]` (heap-indirect struct construction - the first real `malloc` for a
  struct) is deliberately not implemented, since it needs the ownership/lifetime model from the
  `{}`-heap-allocation open question below to mean anything.

## Open questions (settle before implementing further - don't silently "fix" these)

- **No free/GC for `{}`-heap-allocated structs.** Deliberate leak for now; no ownership/borrow model
  exists yet. This is the eventual home for the "rust-like compile-time security features" direction.
- **What `{}` even means is disputed - current implementation may have it backwards.** As implemented
  and described under "Value vs. reference semantics" above, plain `Type` is embedded/by-value and
  `Type{}` is heap-indirect/by-reference. The user's original mental model was closer to the opposite:
  `{}` meaning "laid out in memory" (contiguous/embedded) and no `{}` meaning "floating" (a reference) -
  roughly inverted from what's built. Not resolved either way yet - explicitly parked, not to be
  silently changed in either direction. Revisit once the ownership/lifetime model above is designed,
  since "what does `{}` mean" and "who owns/frees a `{}` allocation" are really the same question.
- **Struct/array literal syntax (`Type[v1, v2, ...]`) is unconfirmed.** The "Settled decisions" entry
  above documents what's actually implemented and working today, but the user has explicitly said they're
  "not sold" on this syntax - it may still be reworked or dropped. Don't treat that entry as final; don't
  build further features on top of this syntax assuming it's permanent without checking first.

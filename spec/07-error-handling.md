# 7. Error Handling

olang has no exceptions. Errors are values (of a declared error type, §2.6) that a function's
signature declares it may produce; propagation and handling are both explicit.

## 7.1 Error sets

**R1.** A function or constructor's own signature ([03-declarations.md](03-declarations.md) §3.4,
[09-constructors-and-destructors.md](09-constructors-and-destructors.md)) may declare zero or more
error types via its `error-list` (D8): `ErrA + ErrB + ...`. This is the function's own **error
union** — the complete set of error types (not individual words — an entire declared error type at
a time) it may produce, to `try` callers (§7.4) and to a coverage-checking `catch` (§7.5).

**R2.** Declaring the same error type twice in one `error-list` is redundant but not itself
specified as an error here; each of R1's members is nonetheless still exactly one declared error
type.

## 7.2 The `error` statement

**R3.** `error-stmnt ::= "error" alias-chain IDEN "." IDEN STMNT_END` (`alias-chain`, §4.4 M8,
possibly empty, giving a bare `Type.WORD`). `alias-chain IDEN` names a declared error type (§4.4),
and the final `IDEN` is one of that type's own declared words (T19). Valid only inside an ordinary
function's own body, whose signature's error union (R1) includes the named error type. Not valid in a
`test { }` block or a `destruct { }` body (§9.3 C7) — neither has an error union of its own — nor at
module scope. A constructor has no statement-block body at all to write one in in the first place
(§9.1 C1–C2: a `ctor-field`'s own initializer is always a single expression, never a statement).

**R4.** Executing an `error` statement immediately ends the enclosing function, producing that
specific (type, word) pair as its result, in place of a normal `return`ed value — see §7.3.

## 7.3 Return convention

**R5.** A function that declares one or more errors (R1) returns, conceptually, either its success
value (if it has a `ret-type`, [03-declarations.md](03-declarations.md) D8) or one specific word of
one specific declared error type — never both, and a function with no `ret-type` and a nonempty
error union returns either nothing (success) or an error.

**R6.** Concretely, such a function's result is a `(code, payload)` pair: `code = 0` means success,
and `payload` (present only if the function declares a `ret-type`) holds the success value. A
nonzero `code` identifies an error as `(typeOrdinal << 16) | wordOrdinal`, where `typeOrdinal` is
the 1-based position of the produced error's type within *this function's own* `error-list` (R1,
left to right), and `wordOrdinal` is the 0-based position of the specific word within *that error
type's own* declaration (T19, left to right). These ordinals are local to one function's own
signature and one error type's own declaration; the same error type/word pair may have a different
`code` at a different call site with a different declared `error-list`.

**R7.** A function with no declared errors at all has no `code`; its result is simply its success
value, or nothing.

## 7.4 `try`

**R8.** `try` applies only directly to a call whose target function or constructor declares at
least one error (E13, E15); a bare, un-`try`'d call to such a function is a compile-time error, and
`try` on a call to a function that declares no errors is unnecessary and rejected as such.

**R9.** As an **expression** (`try-expr`, §5.1 E24, only where a value is expected): evaluates the
call; if it produced its success value, the `try` expression's value is that; if it produced an
error, the *enclosing function's* execution ends immediately, re-producing that same error as the
enclosing function's own result (re-encoded under the enclosing function's own `error-list`
ordinals, R6, since the two functions' declared error-lists need not agree on ordering). This form
requires the enclosing function's own error union (R1) to include, for every error type the called
function may produce, either that whole error type or (see R11) every one of its individual words.

**R10.** As a **statement** (`try f(...) catch ... { block }`): evaluates the call; if it produced
its success value, that value is discarded (the statement form never binds one — see §7.5) and
control continues after the statement; if it produced an error, the matching `catch` clause's block
runs (§7.5) and its value is never exposed to that block — no error object or word is bound to a
name.

## 7.5 `catch`

**R11.** `catch-clause ::= "catch" catch-list block`, where `catch-list ::= catch-item
{ "+" catch-item }` and `catch-item ::= IDEN { "." IDEN }` — a type name, optionally preceded by one
or more alias hops and/or followed by `.WORD` to match only that one word; without a trailing word,
the clause matches every word of that error type. `+` combines multiple `catch-item`s into one set,
exactly as `error-list` combines error types in a signature (R1) — a single `try`/`catch` may attach
only one `catch` clause, matching against the union of everything listed in it.

**R12.** Unlike every other alias-qualified position (§4.4 M8's clean `alias-chain IDEN` split), a
`catch-item`'s own dotted identifiers are genuinely ambiguous by shape alone: `IDEN "." IDEN` could
be a same-module `Type.WORD`, or a cross-module `alias.Type` (whole type, no word). This is resolved
identifier by identifier, left to right: at each point where a next identifier names a real import
of the module reached so far, it is consumed as a further alias hop (exactly as an ordinary
`alias-chain` would be, including that hop's own visibility requirement, M9); this only ever stops
- when the next identifier does not name such an import, or
- when only one identifier remains (nothing left to treat as an alias hop),

at which point whatever remains — one identifier (a whole type) or two (`Type.WORD`) — is resolved
as such in whatever module the walk arrived at. This is the same principle §4.4 already relies on
(an import alias and a type name never share a namespace within one module, M8, so wherever an
identifier could be read as a further alias hop, it is).

**R13.** An error the `catch` clause's own set does not match propagates exactly as the bare
`try`-expression form does (R9): it requires the enclosing function's own error union to cover it.
An error type every one of whose words is individually caught (or that is caught as a whole type) is
fully handled and does not need to appear in the enclosing signature at all — this makes
`try`/`catch` usable even where there is no enclosing error union to propagate into (a `test { }`
block, or a function that declares no errors), as long as nothing actually escapes uncaught.

**R14.** Coverage (R9, R13) is judged at the level of the called function's own declared
`error-list` (R1): if a callee declares a whole error type, the caller must treat every one of that
type's words as possible, even if the callee happens to only ever actually produce a subset of them
internally.

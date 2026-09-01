# 3. Declarations

## 3.1 Top-level structure

**D1.** A module (source file) is a sequence of zero or more top-level declarations, in any order:

```
top-decl ::= type-decl | import-decl | error-decl | func-decl | var-decl | test-decl
```

`import-decl` is specified in [04-modules.md](04-modules.md); `test-decl` in
[10-compilation-model.md](10-compilation-model.md) §10.4. The remaining four are covered below.
Declaration order within a module is not significant: any top-level declaration may refer to any
other, declared earlier or later in the same file, and to any name reachable through an import
(§4).

## 3.2 Namespaces

**D2.** Each module has three independent sets of names, each requiring uniqueness only within
itself:

- **types** — struct, vocab, and error type names (§2.4–§2.6);
- **vars** — function and global variable names, sharing one set (a function and a global variable
  may not share a name; see D7);
- **imports** — import alias names (§4.2).

Declaring two entries with the same name in the same set, within the same module, is a compile-time
error. This specification does not define behavior for reusing a name across two *different* sets
in the same module (e.g. a type and a global variable sharing a name).

**D3.** A local variable (a parameter, or a variable declared inside a function or test body, §3.5)
occupies a nested scope, distinct from its module's own `vars` set. A local declaration must not
reuse a name already declared by an *enclosing* local scope of the same function (including that
function's own parameters) — that is a compile-time error, not shadowing. A local declaration *may*
reuse a name already declared as a module-level global or function name; the local then shadows it
for the remainder of its own scope.

## 3.3 Type and error declarations

**D4.** `type-decl ::= "type" IDEN type-expr [ STMNT_END ]`, where `type-expr` is defined in
[02-types.md](02-types.md) §2.1; the constructor-bearing struct shape (T15) is specified fully in
[09-constructors-and-destructors.md](09-constructors-and-destructors.md). The declared name enters
the module's `types` set (D2) and is visible throughout the module, and, per §4.3, outside it if
capitalized.

**D5.** `error-decl` is specified in [02-types.md](02-types.md) T19. Its declared name also enters
the module's `types` set (D2) — an error type and a struct/vocab type may not share a name within
one module.

**D6.** A named struct type may embed itself (directly or through a chain of other named types) only
through a reference marker at some point in the chain (T16). A vocab or error type may never
reference any other type (T17, T19).

## 3.4 Function declarations

**D7.** `func-decl ::= "func" IDEN func-sig block`. The declared name enters the module's `vars` set
(D2). `block` is specified in [06-statements.md](06-statements.md) §6.1.

**D8.** `func-sig ::= "(" param-list ")" [ error-list ] [ ret-type ]`, where:

```
param-list ::= [ param { "," param } ]
param      ::= IDEN [ "mut" ] type-expr
error-list ::= alias-chain IDEN { "+" alias-chain IDEN }
ret-type   ::= "?" type-expr
```

`alias-chain IDEN` (§4.4 M8) never carries an array suffix or reference marker in this position
(§2.6's error types are never array or reference-shaped, unlike the general `type-ref`, T24). Each
entry in `error-list` must name a declared error type (§2.6); see
[07-error-handling.md](07-error-handling.md) for what the combined set means. `ret-type`, when
present, is the function's success type (the type of a normal `return`ed value); a function with no
`ret-type` returns no value (bare `return`/fall-through only).

**D9.** A parameter is immutable unless declared with `mut` (D8); see D11 for how this differs from
a local variable. A parameter's type may be `scope` (§2.8) only in this position. A later
parameter's reference-marker name (T24) may name any *earlier* parameter of the same signature that
is itself of type `scope`; see [08-ownership-and-scopes.md](08-ownership-and-scopes.md).

**D10.** A function's body is a block (D7); control leaving the block without an explicit `return`
is equivalent to a bare `return` with no value, which is only valid when the function declares no
`ret-type`.

## 3.5 Variable declarations

**D11.** A variable declaration, at module level (a **global**) or inside a function/test body (a
**local**), has one of three forms:

```
var-decl ::= IDEN [ "mut" ] type-expr [ "=" expr ] STMNT_END
           | IDEN [ "mut" ] ":=" expr STMNT_END
```

The `mut` keyword is meaningful only for a **global**: a global declared without `mut` is immutable
(assignment to it is a compile-time error); a global declared with `mut` is mutable. A **local**
(including a `for`-loop's own init variable, [06-statements.md](06-statements.md) §6.3) is always
mutable, regardless of whether `mut` is written — the keyword is accepted in this position but has
no effect. There is no way to declare an immutable local variable.

**D12.** In the first form (explicit type), `= expr` is optional only when the declared type-expr's
outermost array suffix (T7) carries an expression — either a compile-time-constant one (`T[N]`,
zero-filled, D13; valid for a global or a local alike) or, for a *local* var-decl only (D14), a
non-constant one (`T[expr]`, run-time-sized); every other declared type — including a dynamic `T[]`
(empty brackets, no size expression at all) written with no initializer, and a global using the
non-constant `T[expr]` shape — requires an initializer. When present, `expr`'s type must fit the
declared type (assignability, defined per-context in
[05-expressions.md](05-expressions.md) and [08-ownership-and-scopes.md](08-ownership-and-scopes.md)).

**D13.** A declared array type with no initializer and a compile-time-constant outermost size
(`T[N]`, T8) is zero-filled: every element recursively set to its type's zero value (`false` for
`bool`, `0`/`0.0` for numeric types, all-zero for a struct, the first-declared word for a vocab —
vocab and error types have no other meaningful "zero", so a zero-filled vocab field's value is its
type's first word by representation, not by any declared meaning).

**D14.** `T[expr]`, where `expr` is present but is *not* a compile-time constant, is recognized as a
distinct, var-decl-only grammatical case in exactly one position: a **local** var-decl with no
initializer, inside a function, `test { }`, or `destruct { }` body (§6.1, §9.3 C7, §10.4) — anywhere
`own` (E25) is itself valid. It is not an instance of the general `array-type-suffix` production (T8,
which requires a compile-time constant), and this shape has no meaning in any other position a
`type-expr` is written: not a field, parameter, or return type; not a global var-decl (a module-level
declaration with this shape is rejected the same way a bare `T[]` global with no initializer is,
since evaluating `expr` and allocating into a scope both require an enclosing `own`, which no global
initializer has); and not a `for-stmnt`'s own init clause (§6.3 S9), whose grammar has no
no-initializer form at all — an initializer is always required there. Recognized in its one valid
position, it declares a **run-time-sized array**: `expr` is evaluated once, must be of an integer
type, and the array is allocated with that many zero-filled elements; the declared variable's own
type becomes an ordinary dynamic array type (T7's `T[]`, no compile-time length) — the same shape
D13's `T[]` sibling has, just sized by a runtime value instead of an initializing literal's item
count. This form's allocation semantics (which scope it belongs to) are specified in
[08-ownership-and-scopes.md](08-ownership-and-scopes.md). Combining a `T[N]` (constant-size) type
with an initializer that already restates the same count is a compile-time error, not merely
redundant — see D16.

**D15.** In the second form (`:=`), no type is written; the declared type is read entirely from
`expr`, which must itself be a literal (a struct literal, array literal, or primitive literal — see
[05-expressions.md](05-expressions.md)). `expr` may not be an arbitrary expression (e.g. a function
call or a variable read) in this form — see [05-expressions.md](05-expressions.md) §5.1 for what
counts as a literal for this purpose.

**D16.** In the first form, if the declared type is a fixed-size array (`T[N]`) and the initializer
is an array literal, that is a compile-time error regardless of whether `N` matches the literal's
own element count: a fixed-size target's size is always exactly its initializing literal's own
element count, so restating it via an explicit `[N]` is redundant by construction, not merely
redundant when the two happen to agree. Write `T[]` (inferred size) or omit the initializer
entirely (D13) instead.

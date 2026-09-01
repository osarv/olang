# 2. Types

## 2.1 Kinds of types

**T1.** Every olang type is exactly one of: a primitive type (§2.2), an array type (§2.3), a struct
type (§2.4), a vocab type (§2.5), an error type (§2.6), a function type (§2.7), or the `scope` type
(§2.8). There is no `void`/unit type available to user code; a function either declares a success
type or declares none (see [03-declarations.md](03-declarations.md) §3.4).

**T2.** A type expression — anywhere a type is written (a variable's declared type, a field's type,
a parameter's type, a return type, an array's element type) — is one of:

```
type-expr ::= vocab-body | struct-body | func-type | type-ref
```

`vocab-body`, `struct-body`, and `func-type` are anonymous type *shapes*, constructible inline
anywhere a type expression is expected (§2.4, §2.5, §2.7). `type-ref` (§2.9) names an existing
primitive, or a previously declared struct, vocab, or error type, with an optional array suffix and
reference marker.

**T3.** An anonymous struct or vocab shape (written inline rather than through a `type` declaration)
is a valid type, but has no name and so can never be the target of struct-literal or vocab-value
construction syntax (both require a named type — see [05-expressions.md](05-expressions.md) §5.6,
§5.7). A variable declared with such a type can therefore never be given a value directly; this is
legal but useless, and exists only because the grammar constructing a named type's body
(`type Name struct { ... }`) is the same grammar as any other struct-body type expression.

## 2.2 Primitive types

**T4.** The primitive types are:

| Name | Description |
|---|---|
| `bool` | boolean, `true` or `false` |
| `byte` | 8-bit unsigned integer |
| `int32` | 32-bit signed integer |
| `int64` | 64-bit signed integer |
| `float32` | 32-bit IEEE 754 floating point |
| `float64` | 64-bit IEEE 754 floating point |

**T5.** `byte`, `int32`, `int64` are the integer types; `float32`, `float64` are the float types;
together these six are the numeric types. `bool` is not numeric.

**T6.** There is no implicit conversion between any two distinct types, numeric or otherwise, with
exactly one exception: an integer literal (§2.2, L10) may be used where a float type is expected
(see [05-expressions.md](05-expressions.md) §5.2). In particular, `int32` and `int64` do not
implicitly convert to one another, nor does `byte` to either.

## 2.3 Array types

**T7.** `array-type-suffix ::= "[" [ const-int-expr ] "]"`. A type expression may carry zero or
more array suffixes, each immediately following the element type (or a preceding suffix, for a
multi-dimensional array):

```
elem-type array-type-suffix { array-type-suffix }
```

**T8.** A suffix with an expression (`[N]`) is a **fixed-size** array of exactly `N` elements; `N`
must be a compile-time-constant, non-negative integer expression (an integer literal, optionally
negated by a single leading unary `-`; see [05-expressions.md](05-expressions.md) §5.1 for the
general expression grammar this is a restricted case of). A suffix with no expression (`[]`) is a
**dynamic** array, whose length is determined at the point a value of that type is produced and is
not part of the type itself. (One further, narrower shape — `[expr]` with a non-constant `expr` — is
recognized *only* as a special case of a *local* var-decl with no initializer, with no general
`type-expr` meaning; see [03-declarations.md](03-declarations.md) D14, which is not an instance of
this production.)

**T9.** For multiple suffixes, the *first-written* suffix is the *outermost* dimension:
`int32[2][3]` is an array of 2 elements, each itself an array of 3 `int32`. (Suffixes are applied
right-to-left internally so that the first-parsed one ends up outermost; the observable rule is
simply left-to-right reading order.)

**T10.** Every array value, fixed or dynamic, has a length that is queryable at run time via the
`len(...)` built-in (see [05-expressions.md](05-expressions.md) §5.9); a fixed array's length is
additionally known at compile time.

**T11.** A dynamic array (`T[]`) is always reference-shaped — see §2.9 — regardless of whether it
carries an explicit reference marker; there is no embedded representation for a runtime-determined
length. A fixed array (`T[N]`) is embedded by default and reference-shaped only with an explicit
marker, exactly like a struct (§2.4, §2.9).

**T12.** Two array types are the same type (§2.10) only if they agree on: dynamic-ness at every
dimension, size at every fixed dimension, and (recursively) element type.

## 2.4 Struct types

**T13.** `struct-body ::= "struct" "{" [ struct-field { "," struct-field } ] [ STMNT_END ] "}"`,
where `struct-field ::= IDEN type-expr`. Each field has a name, unique within the struct, and an
explicit type; there is no field-type inference and no default value.

**T14.** A struct type constructed this way (a **plain** struct) is a value type: assignment,
parameter passing, and return copy the whole value member-wise, and `==`/`!=` compare structurally
(see [05-expressions.md](05-expressions.md) §5.2 E10), unless referenced through a marker (§2.9).

**T15.** A struct type may instead be declared with a constructor (a **constructor-bearing**
struct): `type Name struct( params ) [ error-list ] { ctor-fields } [ destruct-block ]`. This is a
distinct declaration shape from T13, covered fully in
[09-constructors-and-destructors.md](09-constructors-and-destructors.md); syntactically, the two are
told apart by whether `(` immediately follows `struct`. A constructor-bearing struct's *field list*
(what `struct-field`s it has, for the purposes of T14's member-wise semantics) is the set of fields
declared in its `ctor-fields` block.

**T16.** A struct type can only embed itself, directly or through any chain of plain (non-array,
non-reference) member types, if that chain passes through a reference marker (§2.9) at least once;
an unmarked, unbroken self-embedding cycle is a compile-time error.

## 2.5 Vocab types

**T17.** `vocab-body ::= "vocab" "{" IDEN { "," IDEN } [ STMNT_END ] "}"`. A vocab type declares a
closed, ordered set of named words. It has no numeric representation available to a program: it
supports only equality (`==`/`!=`) and structural matching (`match`/`case`,
[06-statements.md](06-statements.md) §6.4) — no ordering, no arithmetic, no explicit conversion to
or from any integer type.

**T18.** A vocab type must declare at least one word; word names must be unique within the type.

## 2.6 Error types

**T19.** `error-decl ::= "error" IDEN "{" IDEN { "," IDEN } [ STMNT_END ] "}"` is a **top-level**
declaration in its own right — not a `type Name error { ... }` form, and not reachable from a
general `type-expr` position (T2). An error type declares a closed, ordered set of named words,
syntactically identical in shape to a vocab body but declared with its own keyword and usable only
in the specific positions described in [07-error-handling.md](07-error-handling.md).

**T20.** An error type's values (words) carry no data; the full semantics of error types — the
error-union return convention, `try`/`catch`, and the `error` statement — are specified in
[07-error-handling.md](07-error-handling.md).

## 2.7 Function types

**T21.** `func-type ::= "func" func-sig`, where `func-sig` is the parameter list, optional error
list, and optional return type described in [03-declarations.md](03-declarations.md) §3.4. A
function type is usable as a variable's, field's, or parameter's declared type, making a function
(named or, wherever a value of function type is otherwise obtained, referenced by that value) a
first-class value that can be passed and called through it.

**T22.** Two function types are the same type (§2.10) only if they agree on parameter count, each
parameter's type in order, presence and identity of a return type, and (if present) the return
type.

## 2.8 The scope type

**T23.** `scope` is a primitive-like type name with one restriction beyond every other type: a
value of type `scope` may only ever appear as a function parameter's declared type. It may not be a
variable's type, a struct field's type, a return type, or constructed by any literal. Its full
semantics are specified in [08-ownership-and-scopes.md](08-ownership-and-scopes.md).

## 2.9 Type references and reference markers

**T24.** `type-ref ::= alias-chain IDEN { array-type-suffix } [ reference-marker ]`, where
`reference-marker ::= "<" [ IDEN ] ">"` and `alias-chain IDEN` (§4.4 M8) names a primitive type, or
a struct/vocab/error type declared in the referencing module or reached through an import alias
chain. This is the `type-ref` alternative of `type-expr` (T2). A struct or (fixed-size) array type
expression may carry a trailing reference marker, immediately after any array suffixes (T7), making
that type **reference-shaped** instead of embedded. A primitive type may never carry a reference
marker; doing so is a compile-time error. A dynamic array (T11) is reference-shaped unconditionally,
with or without an explicit marker.

**T25.** A bare marker (`<>`) and a named marker (`<name>`) both make the type reference-shaped; the
distinction between the two (which region of memory the reference belongs to) is an ownership
concept with no effect on type identity (T12, T27) or on which operations are valid — see
[08-ownership-and-scopes.md](08-ownership-and-scopes.md).

**T26.** A reference-shaped struct or array is heap-indirect: the value held by a variable, field,
or parameter of that type is a pointer, not the aggregate itself, and `==`/`!=` on it compare
pointer identity rather than structural content (see
[05-expressions.md](05-expressions.md) §5.2 E10). An embedded (unmarked, non-dynamic-array) struct
or array is a plain value, self-contained wherever it lives.

## 2.10 Type identity

**T27.** Two types are the **same type** if and only if:
- both are the same primitive (T4), or
- both are `scope`, or
- both are array types and satisfy T12 (dynamic-ness, fixed sizes, and element type all agree) —
  reference-shapedness (T24) is *not* part of array identity, or
- both are function types and satisfy T22, or
- both are struct, vocab, or error types declared with the same name in the same module —
  reference-shapedness (T24) is *not* part of struct identity either; a plain value of a struct
  type and a reference to that same struct type are the same type for every purpose except T26's
  own copy-vs-pointer and comparison behavior.

Any other pairing (different primitives, an array against a non-array, two structs with the same
field shape but different declared names, etc.) is not the same type. olang has no structural
typing for struct, vocab, or error types: identity is always by declared name and declaring module,
never by shape.

**T28.** Nothing in this specification defines implicit conversion between types beyond T6. Where a
context (assignment, argument passing, return, comparison) requires two operand types to match, it
requires the same type under T27 unless a specific rule elsewhere states an exception.

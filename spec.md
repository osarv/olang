# olang Language Specification

This is the reference manual for olang: a precise, current-state description of the language.

## Structure

The specification is organized into eleven numbered sections below, ordered so that each section
only depends on concepts already introduced by earlier ones:

| § | Covers |
|---|---|
| 1 Lexical Structure | Source encoding, comments, tokens, literals, automatic statement termination |
| 2 Types | The type system: primitives, structs, arrays, vocab, error, function, and scope types; type identity |
| 3 Declarations | Type, error, variable, and function declarations; scope of names |
| 4 Modules | Files as modules, imports, visibility, cross-module name resolution, re-export |
| 5 Expressions | Operators, precedence, literals as values, calls, member/index access |
| 6 Statements | Control flow: if/for/do/match, assignment, return, assert, done/crash |
| 7 Error Handling | Error sets, the error-union return convention, try/catch |
| 8 Ownership and Scopes | The `scope` type, `own`, reference markers, the static scope checker |
| 9 Constructors and Destructors | Constructor-bearing struct types, bare-pun fields, destructors |
| 10 Compilation Model | Compilation units, `-c`/`-t` modes, `main`, test blocks, process exit |
| 11 External Functions | `extern func` declarations, linkage, and the restricted C-ABI type boundary |
| 12 Generics | Type parameters on functions and struct types, inference, `match` over a type, monomorphization |

Cross-references between sections exist only where a rule genuinely cannot be stated without one,
and always name the target section and rule, never an internal implementation detail (a function
name, a struct field).

## Notation

Grammar is given in EBNF:

- `::=` defines a rule.
- `|` separates alternatives.
- `[ x ]` — `x` is optional.
- `{ x }` — zero or more repetitions of `x`.
- `( x y )` — grouping.
- `"literal"` — a literal token spelled exactly as shown.
- `UPPER_CASE` — a lexical token class defined in §1.
- `lower-case-with-hyphens` — a grammar rule defined somewhere in this specification.

Each section's normative rules are numbered `<prefix><n>` (e.g. `L1`, `T4`, `S12`) so other
material — future spec amendments, or implementation comments — can cite a rule precisely. The
prefix is the first letter of the section's topic (Lexical, Types, Declarations, Modules,
Expressions, Statements, Errors, Scopes, Constructors, Compilation, eXternal functions, Generics). A
numbered
rule is never renumbered; a superseded rule is marked superseded in place rather than deleted, so
citations never dangle.

"Implementation-defined" marks behavior that is deliberately not fixed by the language (e.g. exact
struct layout beyond what's stated). "Unspecified" marks behavior no program should depend on.
"Error" (unqualified) always means a compile-time diagnostic that stops compilation; where a rule
produces a run-time failure instead, it says so explicitly (e.g. "run-time panic").

## Status

This specification covers the full language, including the static ownership-scope checker and
generics. It does not cover a general borrow checker or a standard library — neither exists in the
language.

## 1. Lexical Structure

### 1.1 Source files

**L1.** A source file is a sequence of 8-bit bytes, treated as ASCII. There is no escape for
non-ASCII source text.

**L2.** A source file's name conventionally ends in `.olang`. A file is the unit of tokenization,
parsing, and (per §4) the unit of module identity.

### 1.2 Whitespace and comments

**L3.** Space (`' '`) and tab (`'\t'`) are insignificant except as token separators.

**L4.** A comment begins with `#` and runs to the end of the line (exclusive of the newline). There
are no block comments. A comment is otherwise treated as whitespace, except that it counts as a
newline for the purpose of L18 (automatic statement termination).

**L5.** A newline (`'\n'`) is otherwise insignificant except for L18.

### 1.3 Identifiers

**L6.** `identifier ::= ( letter | "_" ) { letter | digit | "_" }`, where `letter` is `A`–`Z` or
`a`–`z` and `digit` is `0`–`9`.

**L7.** An identifier that exactly matches a keyword (L9) is not a valid identifier.

**L8.** Identifiers are case-sensitive. An identifier's first character's case is meaningful beyond
spelling: see §4.3 (visibility).

### 1.4 Keywords

**L9.** The following words are reserved and may not be used as identifiers:

```
if      else    try     catch   return  done    crash   assert
for     do      while   match   case    nomatch
type    struct  vocab   func    error   mut     own
import  test    destruct
extern
compif  compelse
```

`compif` and `compelse` are reserved for future use and are not currently valid anywhere in the
grammar; a program that uses either as a keyword is rejected as a parse error, and neither may be
used as an identifier.

`true` and `false` are not keywords; they are the two spellings of `BOOL_LIT` (L11).

### 1.5 Literals

**L10.** `INT_LIT ::= digit { digit }` — a sequence of decimal digits. An `INT_LIT` denotes a value
of type `int32` (see §2.2); there is no literal syntax that directly
produces an `int64`, and no unary minus is part of the literal itself (negation is the unary `-`
operator, §5).

**L11.** `BOOL_LIT ::= "true" | "false"` — of type `bool`.

**L12.** `FLOAT_LIT ::= digit { digit } "." digit { digit }` — at least one digit is required on
*both* sides of the `.`; there is no leading-dot (`.5`) or trailing-dot (`5.`) form, and no more
than one `.`. A `FLOAT_LIT` denotes a value of type `float32` unless context requires `float64` (see
§5.2 on numeric literal typing).

**L13.** `CHAR_LIT ::= "'" char-content "'"`, where `char-content` is exactly one of:
- any single byte other than `'`, `\`, or newline (including `"`, which needs no escaping here), or
- an escape sequence: `\n`, `\t`, `\\`, or `\'`.

A `CHAR_LIT` is of type `byte`. An empty (`''`), unterminated, or newline-containing `CHAR_LIT` is
a compile-time error.

**L14.** `STR_LIT ::= '"' { str-content } '"'`, where each `str-content` element is:
- any single byte other than `"`, `\`, or newline (including `'`, which needs no escaping here), or
- an escape sequence: `\n`, `\t`, `\\`, or `\"`.

A `STR_LIT` is of type `byte[N]`, a compile-time-length array of `byte` (see
§2.3), where `N` is the number of bytes after escape processing. A
`STR_LIT` is not implicitly nul-terminated; `N` reflects exactly its own content. An unterminated or
newline-containing `STR_LIT` is a compile-time error.

**L15.** No other escape sequences exist. Using `\` followed by any character other than `n`, `t`,
`\`, `'` (in a `CHAR_LIT`), or `"` (in a `STR_LIT`) is a compile-time error.

### 1.6 Operators and punctuation

**L16.** The following are single tokens (maximal munch: the tokenizer always consumes the longest
valid token starting at the current position):

```
+  -  *  /  %  ,  .  ?  =  :=
+=  -=  *=  /=  %=  &&=  ||=  ^^=  <<=  >>=  &=  |=  ^=
++  --
==  !  !=  &&  ||  ^^
<  <=  >  >=
&  |  ^  ~  <<  >>
(  )  [  ]  {  }
```

`&&`, `||`, `^^` are the boolean and/or/xor operators; `&`, `|`, `^`, `~`, `<<`, `>>` are the
bitwise operators. There is no ternary conditional operator, no null/optional-coalescing operator,
and no `;`.

### 1.7 Automatic statement termination

**L17.** olang has no statement-terminating character. A statement's end is instead recognized
either by an explicit grammar construct (some statements end in a token the grammar itself
requires, e.g. a block's closing `}`) or by an implicit end-of-statement, synthesized by the
tokenizer under L18.

**L18.** Immediately after producing a token whose type is one of:

```
IDEN, INT_LIT, FLOAT_LIT, CHAR_LIT, STR_LIT, BOOL_LIT, own,
++, --, ), ], return, done, crash, error
```

if the next non-whitespace input is a newline or a comment (L4), the tokenizer synthesizes an
implicit end-of-statement token before continuing. This token has no literal spelling; it exists
only in the token stream produced by the tokenizer, and appears in the grammar as `STMNT_END`
wherever a rule below requires it.

**L19.** Consequently, an operator or continuation that is meant to extend an expression onto the
next line must appear at the *end* of the first line, not the start of the next:

```
x := 1 +
     2        # valid: '+' ends the line, no STMNT_END is synthesized after it
x := 1
     + 2      # invalid: the first line ends in INT_LIT, so a STMNT_END is synthesized
              # after "1", making "+ 2" the start of a new, invalid statement
```

**L20.** Two further, narrower positions accept a statement's end with no `STMNT_END` token at all,
because the grammar never expects one there and L18 never produces one there either:
- immediately after a `}` that closes a block, struct/vocab/error body, or struct literal;
- immediately after the `&` of a bare reference marker (§8),
  when that `&` is the last token of an otherwise-complete statement. (An `&` used as the bitwise-and
  operator can never be the last token of a complete statement, since a binary operator is always
  followed by an operand; the two are therefore never ambiguous in this position. A *named* marker
  (`&name`) ends in an identifier, which does trigger a synthesized `STMNT_END` under L18, so this
  exception concerns the bare form only.)

## 2. Types

### 2.1 Kinds of types

**T1.** Every olang type is exactly one of: a primitive type (§2.2), an array type (§2.3), a struct
type (§2.4), a vocab type (§2.5), an error type (§2.6), a function type (§2.7), or the `scope` type
(§2.8). There is no `void`/unit type available to user code; a function either declares a success
type or declares none (see §3.4).

**T2.** A type expression — anywhere a type is written (a variable's declared type, a field's type,
a parameter's type, a return type, an array's element type) — is one of:

```
type-expr ::= vocab-body | struct-body | func-type | type-ref | type-var
```

`vocab-body`, `struct-body`, and `func-type` are anonymous type *shapes*, constructible inline
anywhere a type expression is expected (§2.4, §2.5, §2.7). `type-ref` (§2.9) names an existing
primitive, or a previously declared struct, vocab, or error type, with an optional array suffix and
reference marker. `type-var` (§12.1 G1) names a type parameter and is valid only inside a generic
declaration.

**T3.** An anonymous struct or vocab shape (written inline rather than through a `type` declaration)
is a valid type, but has no name and so can never be the target of struct-literal or vocab-value
construction syntax (both require a named type — see §5.6,
§5.7). A variable declared with such a type can therefore never be given a value directly; this is
legal but useless, and exists only because the grammar constructing a named type's body
(`type Name struct { ... }`) is the same grammar as any other struct-body type expression.

### 2.2 Primitive types

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
together these five are the numeric types. `bool` is not numeric.

**T6.** There is no implicit conversion between any two distinct types: never between two non-numeric
types, and never between two numeric types unless one side is a literal. A **numeric literal** (§5.1
E4 — a token literal, or one negated
by a single leading unary `-`, §5.2 E11) is the one exception: it implicitly widens to whatever
numeric type it is used against, wherever that type would otherwise have to match exactly - an
assignability context (§5.3 E12: a var-decl initializer, an assignment, an argument, a returned
value) or a binary operator requiring both operands to be the same type (§5.2 E6, E8, E9, E10). Widening
is only ever in the safe, lossless direction: `byte`/`int32` → `int64`, any integer type → `float32`
or `float64`, and `float32` → `float64` - never the reverse, and never `int64` → anything (nothing is
wider). A non-literal value of a different numeric type, in either direction, requires an **explicit**
conversion instead - see §5.12 E26.

### 2.3 Array types

**T7.** `array-type-suffix ::= "[" [ const-int-expr ] "]"`. A type expression may carry zero or
more array suffixes, each immediately following the element type (or a preceding suffix, for a
multi-dimensional array):

```
elem-type array-type-suffix { array-type-suffix }
```

**T8.** A suffix with an expression (`[N]`) is a **compile-time-length** array of exactly `N` elements; `N`
must be a compile-time-constant, non-negative integer expression (an integer literal, optionally
negated by a single leading unary `-`; see §5.1 for the
general expression grammar this is a restricted case of). A suffix with no expression (`[]`) is a
**runtime-length** array, whose length is determined at the point a value of that type is produced and is
not part of the type itself. (One further, narrower shape — `[expr]` with a non-constant `expr` — is
recognized *only* as a special case of a *local* var-decl with no initializer, with no general
`type-expr` meaning; see §3 D14, which is not an instance of
this production.)

**T9.** For multiple suffixes, the *first-written* suffix is the *outermost* dimension:
`int32[2][3]` is an array of 2 elements, each itself an array of 3 `int32`. (Suffixes are applied
right-to-left internally so that the first-parsed one ends up outermost; the observable rule is
simply left-to-right reading order.)

**T10.** Every array value, compile-time-length or runtime-length, has a length that is queryable at run time via the
`len(...)` built-in (see §5.9); a compile-time-length array's length is
additionally known at compile time.

**T11.** A runtime-length array (`T[]`) is always reference-shaped — see §2.9 — regardless of whether it
carries an explicit reference marker; there is no embedded representation for a runtime-determined
length. A compile-time-length array (`T[N]`) is embedded by default and reference-shaped only with an explicit
marker, exactly like a struct (§2.4, §2.9).

**T12.** Two array types are the same type (§2.10) only if they agree on: length-kind at every
dimension, size at every compile-time-length dimension, and (recursively) element type.

### 2.4 Struct types

**T13.** `struct-body ::= "struct" "{" [ struct-field { "," struct-field } ] [ STMNT_END ] "}"`,
where `struct-field ::= IDEN type-expr`. Each field has a name, unique within the struct, and an
explicit type; there is no field-type inference and no default value.

**T14.** A struct type constructed this way (a **plain** struct) is a value type: assignment,
parameter passing, and return copy the whole value member-wise, and `==`/`!=` compare structurally
(see §5.2 E10), unless referenced through a marker (§2.9).

**T15.** A struct type may instead be declared with a constructor (a **constructor-bearing**
struct): `type Name struct( params ) [ error-list ] { ctor-fields } [ destruct-block ]`. This is a
distinct declaration shape from T13, covered fully in
§9; syntactically, the two are
told apart by whether `(` immediately follows `struct`. A constructor-bearing struct's *field list*
(what `struct-field`s it has, for the purposes of T14's member-wise semantics) is the set of fields
declared in its `ctor-fields` block.

**T16.** A struct type can only embed itself, directly or through any chain of plain (non-array,
non-reference) member types, if that chain passes through a reference marker (§2.9) at least once;
an unmarked, unbroken self-embedding cycle is a compile-time error.

### 2.5 Vocab types

**T17.** `vocab-body ::= "vocab" "{" IDEN { "," IDEN } [ STMNT_END ] "}"`. A vocab type declares a
closed, ordered set of named words. It has no numeric representation available to a program: it
supports only equality (`==`/`!=`) and structural matching (`match`/`case`,
§6.4) — no ordering, no arithmetic, no explicit conversion to
or from any integer type.

**T18.** A vocab type must declare at least one word; word names must be unique within the type.

### 2.6 Error types

**T19.** `error-decl ::= "error" IDEN "{" IDEN { "," IDEN } [ STMNT_END ] "}"` is a **top-level**
declaration in its own right — not a `type Name error { ... }` form, and not reachable from a
general `type-expr` position (T2). An error type declares a closed, ordered set of named words,
syntactically identical in shape to a vocab body but declared with its own keyword and usable only
in the specific positions described in §7.

**T20.** An error type's values (words) carry no data; the full semantics of error types — the
error-union return convention, `try`/`catch`, and the `error` statement — are specified in
§7.

### 2.7 Function types

**T21.** `func-type ::= "func" func-sig`, where `func-sig` is the parameter list, optional return
type, and optional error list described in §3.4. A
function type is usable as a variable's, field's, or parameter's declared type, making a function
(named or, wherever a value of function type is otherwise obtained, referenced by that value) a
first-class value that can be passed and called through it.

**T22.** Two function types are the same type (§2.10) only if they agree on parameter count, each
parameter's type in order, presence and identity of a return type, and (if present) the return
type.

### 2.8 The scope type

**T23.** `scope` is a primitive-like type name with one restriction beyond every other type: a
value of type `scope` may only ever appear as a function parameter's declared type. It may not be a
variable's type, a struct field's type, a return type, or constructed by any literal. Its full
semantics are specified in §8.

### 2.9 Type references and reference markers

**T24.** `type-ref ::= alias-chain IDEN [ type-args ] [ reference-marker ] { array-type-suffix }
[ reference-marker ]`, where `reference-marker ::= "&" [ IDEN ]`, `type-args` is defined in
§12.3 G8 (required when, and only when, the named type is
generic), and `alias-chain IDEN` (§4.4 M8) names a primitive type, or
a struct/vocab/error type declared in the referencing module or reached through an import alias
chain. This is the `type-ref` alternative of `type-expr` (T2). A struct or (compile-time-length) array type
expression may carry a trailing reference marker, immediately after any array suffixes (T7), making
that type **reference-shaped** instead of embedded. A primitive type may never carry a reference
marker; doing so is a compile-time error. A runtime-length array (T11) is reference-shaped unconditionally,
with or without an explicit marker.

A marker written **before** the array suffixes applies to the *element* type; one written **after** them
applies to the array as a whole. The two are different types and both are meaningful:

```
Point&[3]     an array of 3 references to Point   — 3 allocations, elements have identity
Point[3]&     one reference to an array of 3 Point values — 1 allocation, elements are inline
Point&[3]&    one reference to an array of 3 references to Point
```

With no array suffix at all the two positions describe the same type, and a single marker is read as the
element one.

An element-position marker (one with array suffixes following it) may **not** carry a scope name: a
reference nested inside a larger value always belongs to its container's own scope (§8 O5), never an
independent one, so such a tag could never be honoured. Writing one is a compile-time error. A marker
with no suffix after it is the whole type's own marker and takes a scope name normally. The Each marker's optional `IDEN` must begin on the same source line as
that `&`; an identifier on a later line is not part of the marker, which therefore reads as bare.
(Without this, a bare marker ending a line would silently absorb the identifier opening the next one,
since `&` triggers no `STMNT_END` under L18 — see L20.)

**T25.** A bare marker (`&`) and a named marker (`&name`) both make the type reference-shaped; the
distinction between the two (which region of memory the reference belongs to) is an ownership
concept with no effect on type identity (T12, T27) or on which operations are valid — see
§8.

**T26.** A reference-shaped struct or array is heap-indirect: the value held by a variable, field,
or parameter of that type is a pointer, not the aggregate itself, and `==`/`!=` on it compare
pointer identity rather than structural content (see
§5.2 E10). An embedded (unmarked, non-runtime-length-array) struct
or array is a plain value, self-contained wherever it lives.

### 2.10 Type identity

**T27.** Two types are the **same type** if and only if:
- both are the same primitive (T4), or
- both are `scope`, or
- both are array types and satisfy T12 (length-kind, lengths, and element type all agree) —
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

## 3. Declarations

### 3.1 Top-level structure

**D1.** A module (source file) is a sequence of zero or more top-level declarations, in any order:

```
top-decl ::= type-decl | import-decl | error-decl | func-decl | var-decl | test-decl
           | extern-func-decl
```

`import-decl` is specified in §4; `test-decl` in
§10.4; `extern-func-decl` in §11. The remaining four are covered below.
Declaration order within a module is not significant: any top-level declaration may refer to any
other, declared earlier or later in the same file, and to any name reachable through an import
(§4).

### 3.2 Namespaces

**D2.** Each module has three independent sets of names, each requiring uniqueness only within
itself:

- **types** — struct, vocab, and error type names (§2.4–§2.6);
- **vars** — function, external function (§11 X1), and global variable names, sharing one set (no
  two of these may share a name; see D7);
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

### 3.3 Type and error declarations

**D4.** `type-decl ::= "type" IDEN [ type-params ] type-expr [ STMNT_END ]`, where `type-params`
(§12.3 G6) declares type parameters and is valid only for a
struct type, and `type-expr` is defined in
§2.1; the constructor-bearing struct shape (T15) is specified fully in
§9. The declared name enters
the module's `types` set (D2) and is visible throughout the module, and, per §4.3, outside it if
capitalized.

**D5.** `error-decl` is specified in §2 T19. Its declared name also enters
the module's `types` set (D2) — an error type and a struct/vocab type may not share a name within
one module.

**D6.** A named struct type may embed itself (directly or through a chain of other named types) only
through a reference marker at some point in the chain (T16). A vocab or error type may never
reference any other type (T17, T19).

### 3.4 Function declarations

**D7.** `func-decl ::= "func" IDEN func-sig block`. The declared name enters the module's `vars` set
(D2). `block` is specified in §6.1.

**D8.** `func-sig ::= "(" param-list ")" [ ret-type ] [ "?" error-list ]`, where:

```
param-list      ::= [ param { "," param } ]
param           ::= IDEN [ "mut" ] type-expr
ret-type        ::= type-expr
error-list      ::= error-list-item { "+" error-list-item }
error-list-item ::= alias-chain IDEN | "error"
```

The return value comes first (`ret-type`, bare - no marker of its own), and the error set (if any)
follows it, marked with a leading `?`: the marker attaches to the error set, not the return type, so
`func f(...) T { }` (a return value, no errors) and `func f(...) ? ErrA { }` (errors, no return
value) are both unambiguous with nothing but an optional bare type-expr ever appearing before the
`?`. `ret-type`, when present, is the function's success type (the type of a normal `return`ed
value); a function with no `ret-type` returns no value (bare `return`/fall-through only).
`alias-chain IDEN` (§4.4 M8) never carries an array suffix or reference marker in this position
(§2.6's error types are never array or reference-shaped, unlike the general `type-ref`, T24). Each
`error-list-item` naming an `alias-chain IDEN` must name a declared error type (§2.6); the bare `"error"`
alternative is **the bare error** — see §7.6 for what it means and R15 for its own grammar note.
See §7 for what a `error-list`'s combined set means.

**D9.** A parameter is immutable unless declared with `mut` (D8); see D11 for how this differs from
a local variable. `mut` carries its ordinary meaning — this can be assigned to — and combines with the
parameter's type rather than modifying it: for a value parameter it makes the callee's own copy
writable, leaving the caller unaffected either way; for a reference parameter (T24) it makes the
**caller's own instance** writable, so the caller observes the write. Whether a call writes to the
caller's value is therefore readable from the signature alone: `&` says whose instance it is, `mut`
says whether it may be written, and the two are independent. A parameter's type may be `scope` (§2.8) only in this position. A later
parameter's reference-marker name (T24) may name any *earlier* parameter of the same signature that
is itself of type `scope`; see §8.

**D10.** A function's body is a block (D7); control leaving the block without an explicit `return`
is equivalent to a bare `return` with no value, which is only valid when the function declares no
`ret-type`.

### 3.5 Variable declarations

**D11.** A variable declaration, at module level (a **global**) or inside a function/test body (a
**local**), has one of three forms:

```
var-decl ::= IDEN [ "mut" ] type-expr [ "=" expr ] STMNT_END
           | IDEN [ "mut" ] ":=" expr STMNT_END
```

The `mut` keyword is meaningful only for a **global**: a global declared without `mut` is immutable
(assignment to it is a compile-time error); a global declared with `mut` is mutable. A **local**
(including a `for`-loop's own init variable, §6.3) is always
mutable, regardless of whether `mut` is written — the keyword is accepted in this position but has
no effect. There is no way to declare an immutable local variable.

**D12.** In the first form (explicit type), `= expr` is optional only when the declared type-expr's
outermost array suffix (T7) carries an expression — either a compile-time-constant one (`T[N]`,
zero-filled, D13; valid for a global or a local alike) or, for a *local* var-decl only (D14), a
non-constant one (`T[expr]`, run-time-sized); every other declared type — including a runtime-length `T[]`
(empty brackets, no size expression at all) written with no initializer, and a global using the
non-constant `T[expr]` shape — requires an initializer. When present, `expr`'s type must fit the
declared type (assignability, defined per-context in
§5 and §8).

**D12a.** A declared **runtime-length** array type (`T[]`, T9) whose initializer has a *compile-time*
length adopts that length: the declared variable's type is `T[N]`, where `N` is the initializer's own
length. The declared element type and any reference marker (T24) are kept as written — only the
length-kind and the length come from the initializer — so `x T[]&s = ...` remains allocated into `s`,
while a bare `x T[] = ...` becomes an ordinary embedded compile-time-length array, exactly as the
`:=` form (D11) would have produced from the same initializer. An initializer that is itself
runtime-length (a call's result, say) carries no length to adopt, and leaves the declaration
runtime-length. This is what makes `T[]` in a declaration mean "infer the length" rather than "discard
it": without it, `len(x)` would compile to a run-time read even for a visibly 3-item literal, and a
`T[]` holding 3 would be the same type (T12) as one holding 4.

**D13.** A declared array type with no initializer and a compile-time-constant outermost size
(`T[N]`, T8) is zero-filled: every element recursively set to its type's zero value (`false` for
`bool`, `0`/`0.0` for numeric types, all-zero for a struct, the first-declared word for a vocab —
vocab and error types have no other meaningful "zero", so a zero-filled vocab field's value is its
type's first word by representation, not by any declared meaning) — **provided** the declared type
contains no reference anywhere within it (T24: a `&`/`&name`-marked struct or compile-time-length array, or,
unconditionally, a runtime-length array, T11), at any depth through a chain of plain embedded array
elements and struct fields. None of these have a valid zero value — a reference has no allocation to
point to yet (there is no null literal or null-checkable state anywhere in this language, T2, so a
zero-filled reference would be an invisible dangling pointer, not a safe default), and a runtime-length
array has no length-appropriate backing allocation to zero-fill in the first place (only a genuinely
empty, zero-length one, which is a different, surprising meaning to produce silently). A declared
array type containing a reference anywhere within it therefore requires an initializer unconditionally,
regardless of its own outermost size — the same error as an array with no compile-time-constant
outermost size at all (D12).

**D14.** `T[expr]`, where `expr` is present but is *not* a compile-time constant, is recognized as a
distinct grammatical case in exactly two positions: a **local** var-decl with no initializer, inside a
function, `test { }`, or `destruct { }` body (§6.1, §9.3 C7, §10.4) — anywhere `own` (E25) is itself
valid — and a **constructor field**'s declared type (§9.2 C2, see D14a). It is not an instance of the
general `array-type-suffix` production (T8, which requires a compile-time constant), and this shape
has no meaning in any other position a `type-expr` is written: not a plain (T13) struct's field, not a
parameter or return type; not a global var-decl (a module-level
declaration with this shape is rejected the same way a bare `T[]` global with no initializer is,
since evaluating `expr` and allocating into a scope both require an enclosing `own`, which no global
initializer has); and not a `for-stmnt`'s own init clause (§6.3 S9), whose grammar has no
no-initializer form at all — an initializer is always required there. Recognized in its one valid
position, it declares a **run-time-sized array**: `expr` is evaluated once, must be of an integer
type, and the array is allocated with that many zero-filled elements. As with `T[N]` (D13), a
compile-time-constant size is not sufficient on its own: the element type must contain no reference
anywhere within it, or this is a compile-time error instead — the outer array itself is always
legitimately constructed (by allocation into a scope, below), it is only what would fill each of its
elements that is in question. The declared variable's own
type becomes an ordinary runtime-length array type (T7's `T[]`, no compile-time length) — the same shape
D13's `T[]` sibling has, just sized by a runtime value instead of an initializing literal's item
count. This form's allocation semantics (which scope it belongs to) are specified in
§8. Combining a `T[N]` (constant-size) type
with an initializer that already restates the same count is a compile-time error, not merely
redundant — see D16.

**D14a.** A **constructor field** (C2) may declare this shape: `items T[expr]&name`, with no
initializer. `expr` is evaluated once per construction, in field-declaration order like any other
field initializer (C6), and may name the constructor's own parameters and any earlier field. The
array is allocated with that many zero-filled elements, into the scope named by the field's own
reference marker.

That marker is **required**: the field must be tagged to a `scope`-typed parameter of this same
constructor (T24, C2). An untagged one would be allocated into the constructor's own private scope,
which closes before the constructed value ever reaches its caller — precisely the hazard O13 rejects
for a bare `&` return type — so it is rejected the same way, at the field's declaration.

```
type Buffer struct(s scope, cap int64) {
    data mut byte[cap]&s,
    used int64 = 0
}
```

This is the only position other than a local var-decl where the shape is meaningful, and for the same
reason it is meaningful there: it needs a definite point at which to allocate, and a constructor call
is one. A plain (T13) struct has no such point — its literal (E18) performs no allocation step — so
the shape remains rejected there. The element-type restriction of D13 applies unchanged: a
zero-filled element type may contain no reference, at any depth, since none has a valid zero value.

**D15.** In the second form (`:=`), no type is written; the declared type is read entirely from
`expr`, which must itself be a literal (a struct literal, array literal, or primitive literal — see
§5). `expr` may not be an arbitrary expression (e.g. a function
call or a variable read) in this form — see §5.1 for what
counts as a literal for this purpose.

**D16.** In the first form, if the declared type is a compile-time-length array (`T[N]`) and the initializer
is an array literal, that is a compile-time error regardless of whether `N` matches the literal's
own element count: a compile-time-length target's size is always exactly its initializing literal's own
element count, so restating it via an explicit `[N]` is redundant by construction, not merely
redundant when the two happen to agree. Write `T[]` (inferred size) or omit the initializer
entirely (D13) instead.

## 4. Modules

### 4.1 Modules

**M1.** Each source file is exactly one module. A module's identity is its file path as written in
the `import` that reached it (or, for the file named directly on the command line, that path); two
imports naming the same underlying file, however reached, refer to the same module (see §4.6).

**M2.** Module imports may form cycles: module A may import module B while B imports A. This is
legal without restriction as long as neither side needs the other's own top-level names to be fully
resolved before *its own* top-level declarations can be scanned (in practice: cyclic imports work
because scanning a module's own declared type names never requires parsing or resolving anything in
an imported module first — see §4.4 for the one place import order *does* matter for a module
participating in a cycle).

### 4.2 Imports

**M3.** `import-decl ::= "import" [ IDEN ] STR_LIT [ STMNT_END ]`. `STR_LIT` is the imported file's
path, resolved relative to the invoking compiler's own working directory (the same rule for every
module, not relative to the importing file). `IDEN`, when present, is the alias other code in this
module uses to refer to the imported module's exported names (§4.4).

**M4.** When `IDEN` is omitted, the alias is derived from the imported file's own name: any leading
directory path is stripped, and a trailing `.olang` extension is stripped. `import "shared.olang"`
and `import shared "shared.olang"` are equivalent. If the derived alias is not a legal identifier
(L6 — e.g. the file name contains a hyphen or starts with a digit), that is a compile-time error;
such a file must be imported with an explicit alias instead.

**M5.** Two imports in the same module may not use the same alias (D2). Two imports in the same
module may not resolve to the same underlying file either, whether both are written directly or one
is reached transitively through re-export (§4.5) — see §4.6.

### 4.3 Visibility

**M6.** A name is **public** (visible outside the module that declares it) if and only if its first
character is an uppercase letter (`A`–`Z`); otherwise it is **private** (visible only within its own
declaring module). This single rule governs every kind of name: types, error types, functions,
global variables, and import aliases (§4.5) alike. There is no separate export keyword, export list,
or visibility modifier.

**M7.** A private name is a compile-time error to reference from outside its declaring module, even
if the referencing code otherwise has a valid path to it (e.g. through a correctly-resolved import
alias chain, §4.4).

### 4.4 Cross-module name resolution

**M8.** `alias-chain ::= { IDEN "." }` — zero or more import aliases, each already followed by its
own `.`. A name, from the referencing module's own or from another module, is written
`alias-chain IDEN`: `Name` (zero hops, `alias-chain` empty), `alias.Name` (one hop), `a.b.Name` (two
hops), and so on to any depth. Every rule elsewhere in this specification that names a possibly
cross-module type, function, error type, or variable is built on this same `alias-chain IDEN` shape,
so it is cited here once rather than repeated at each site.

**M9.** Resolving an alias chain is a left-to-right walk: the first alias is looked up among the
*referencing* module's own imports (M3) — always permitted, regardless of that import's own
visibility (M6 does not apply to your own directly-declared imports). Each *subsequent* alias in the
chain is looked up among the *previously reached* module's own imports, and requires that import's
own alias to be public (M6) — this is exactly what re-export (§4.5) means. The final identifier in
the chain is looked up, and its own visibility (M6) checked, in the module the walk arrives at.

**M10.** If, at any hop, the named alias does not exist among the relevant module's imports, or (for
a hop past the first) is private, or the walk would revisit a module already visited earlier in the
same walk, that is a compile-time error.

**M11.** An alias chain of any length is accepted in every position that names a type, a function
(including a constructor, §9),
an error type, or a global variable: type references (§2.9), call targets
(§5.4), the `error` statement
(§7), `catch` clauses
(§7), a bare variable read or write
(§5, §6.2), and struct and
array literal construction (§5.6, §5.7).

**M12.** A vocab value (`Type.WORD`, §5.8) is never
alias-qualified: `Type` in that position always resolves against the *referencing* module's own
declared types only, never through an import, regardless of any import alias of the same name.

**M13.** Within one module, resolving *any* multi-hop alias chain (M8) requires that every
intermediate module's own set of imports already be fully known. For two modules in a raw import
cycle (M2), this is guaranteed for the module reached *last* in the cycle but not necessarily for
whichever side's own source text is parsed while the *other* side is still finishing its own import
list — concretely: if module A imports module B (participating in a cycle back to A) and *also*
re-exports some third module C, and B's own source references something through A reached via C, B's
source must declare its import of A only after any import that provides what it needs from that
chain has itself already been fully processed — in practice, order the import that is *not* the
cyclic partner first. This is a narrow, mechanical ordering requirement, not a general limitation on
what can be expressed.

### 4.5 Re-export

**M14.** An import is **re-exported** exactly when its own alias (explicit or derived, M3–M4) is
public (M6). A module importing *this* module can then reach the re-exported module through it, by
chaining through the alias (§4.4) — this is the only mechanism for transitive visibility; there is
no separate opt-in re-export declaration.

**M15.** Re-export composes to any depth: if A re-exports B and B re-exports C, a module importing A
can reach a name declared in C as `a.B.Name` (M9).

### 4.6 Reachability restrictions

**M16.** Within one module, the set of modules reachable from it — its own directly-declared
imports (M3), together with, for each such import, everything transitively reachable from it purely
through re-exported (public) aliases (§4.5) — must contain no underlying file more than once. If the
same file would be reachable two different ways from one module (whether by importing it twice
directly under different aliases, or once directly and again through another import's own
re-export), that is a compile-time error.

**M17.** A cycle in the *public*-reachability graph specifically (as opposed to an ordinary raw
import cycle, M2, which is unrestricted) — a module re-exporting something that, through a chain of
further re-exports, eventually re-exports that same module back — is a compile-time error.

**M18.** M16 and M17 do not restrict two *unrelated* modules from both directly importing the same
third module; each module's own direct import is a single path from that module's own perspective,
and only overlaps *within one module's own reachable set* (M16) are restricted.

## 5. Expressions

### 5.1 Grammar overview

**E1.** Expressions are built in four layers, tightest-binding first:

```
expr     ::= binary
binary   ::= unary { bin-op unary }          (precedence-climbing, see E5)
unary    ::= { unary-op } postfix
unary-op ::= "-" | "!" | "~" | "++" | "--"
postfix  ::= primary { index | member | "++" | "--" }
primary  ::= literal | own-expr | try-expr | call-expr | struct-literal
           | array-literal | vocab-value | IDEN | "(" expr ")"
```

`index ::= "[" expr "]"`, `member ::= "." IDEN`. Postfix `++`/`--` and unary `++`/`--` are the same
two operators in prefix and postfix position (E5); both require the operand to be an assignable
lvalue (§6.2).

**E2.** A `primary` that is a bare `IDEN` is a variable or function read: a local, a parameter, a
module-level global, or a module-level function name, resolved by innermost-scope-first lookup (D3).
A bare `IDEN` immediately followed by `member` is additionally checked, before ordinary member
resolution, against every rule in §4.4 for a cross-module alias
chain; if it resolves as one, ordinary member resolution does not apply to that leading identifier.

**E3.** `call-expr ::= alias-chain IDEN [ type-args ] "(" [ expr { "," expr } ] ")"` (§4.4 M8),
covered in §5.4. The optional `type-args` (§12.3 G8) is valid only when the name is a generic struct
type, where it names the instantiation whose constructor is being called (G10a).

**E4.** `literal ::= BOOL_LIT | INT_LIT | FLOAT_LIT | CHAR_LIT | STR_LIT`. An expression `op` is a
**literal expression** (relevant to D15's `:=`, to T6's numeric widening, and to §5.6–§5.7) exactly
when it is one of these token literals, a struct literal (§5.6), an array literal (§5.7), or a
numeric (`INT_LIT`/`FLOAT_LIT`) token literal negated by a single leading unary `-` (§5.2 E11) — the
sign folds into the literal's own value at that point, the same way T8's compile-time-constant array
size already treats this one shape as effectively still a literal - recursively including one whose
own sub-expressions (struct field values, array elements) are themselves literal expressions where
required. A parenthesized literal, a variable read, and a function call are never literal
expressions, even if their value is known at compile time.

### 5.2 Operators

**E5.** Binary operators, loosest to tightest (all left-associative — a chain of same-precedence
operators groups left-to-right):

| Precedence | Operators |
|---|---|
| 1 (loosest) | `\|\|` |
| 2 | `^^` |
| 3 | `&&` |
| 4 | `\|` |
| 5 | `^` |
| 6 | `&` |
| 7 | `==` `!=` |
| 8 | `<` `<=` `>` `>=` |
| 9 | `<<` `>>` |
| 10 | `+` `-` |
| 11 (tightest) | `*` `/` `%` |

Unary prefix operators (`!`, `-`, `~`, `++`, `--`) bind tighter than every binary operator. There is
no ternary/conditional operator.

**E6.** `+ - * / %` require both operands to be the same numeric type (T5, T27) and produce that
type, subject to T6's own numeric-literal widening. `%` requires both operands to be integer types.
Mixing distinct numeric types with neither side a literal (or with a literal that would need to
*narrow*, not widen, to match) is a compile-time error - see §5.12 E26 for the explicit conversion this
requires instead.

**E7.** `&& || ^^` require both operands to be `bool` and produce `bool`; they are not
short-circuiting distinctly from any other olang control construct — both operands are always
evaluated (olang has no short-circuit boolean evaluation).

**E8.** `& | ^` require both operands to be the same integer type (T5) and produce that type, subject
to T6's own numeric-literal widening; `~` is unary and requires one integer operand, producing that
type. `<< >>` each require their *shifted* (left) operand and their *shift-amount* (right) operand to
independently be integer types, but the two need not be the same type as each other (T6's widening is
therefore never relevant between them specifically - there is no "match" requirement to widen into);
the result is the shifted operand's own type.

**E9.** `< <= > >=` require both operands to be the same numeric type (subject to T6's own
numeric-literal widening) and produce `bool`; there is no ordering on any non-numeric type.

**E10.** `== !=` accept operands of any single type `T27`-matching pair (subject to T6's own
numeric-literal widening) and produce `bool`, with
value semantics that depend on whether `T` is reference-shaped (T24–T26):
- for a primitive or vocab value: ordinary value equality;
- for an embedded struct or compile-time-length array: deep, member-wise/element-wise structural equality
  (recursively applying this same rule to every field/element);
- for a reference-shaped struct or array (a `&`/`&name`-marked type, or any runtime-length array): pointer
  identity — two references compare equal only if they refer to the same underlying storage, never
  by comparing what they point to.

There is no expression that produces a value of an error type (§2.6): an error word is never a
first-class comparable value, only a function's own result (§7).

**E11.** Prefix `!` requires a `bool` operand and produces `bool`. Prefix `-` requires a numeric
operand and produces that type (negation). `++`/`--`, prefix or postfix, require an integer- or
float-typed, mutable (§6.2) lvalue operand, and both read and write it: postfix yields the
pre-increment/decrement value, prefix yields the post-increment/decrement value, exactly as in C.

### 5.3 Assignability ("fits")

**E12.** A value of type `S` **fits** a target of declared type `T` (used uniformly for a variable
declaration's initializer, D12; an assignment's right-hand side, §6.2; a function or constructor
call's argument, §5.4; and a `return`ed value, §6.5) exactly when one of:

- `S` and `T` are the same type (T27); if both are additionally reference-shaped (T24), an
  additional scope-compatibility rule applies — see
  §8;
- the value is a numeric literal expression (E4) and `T` is a numeric type it can implicitly widen
  into (T6);
- the value is a compile-time-length array whose element type matches `T`'s element type, and `T` is a
  runtime-length array of that element type (T7–T8) — the value is copied into a freshly sized runtime-length
  array regardless of whether the value itself is a literal;
- `S` and `T` are both compile-time-length arrays of the same element type but different sizes — this is
  specifically rejected (a "wrong size" error distinct from a general type mismatch), not accepted.

Any other pairing does not fit, and is a compile-time error.

**E12a.** In a **call argument** position specifically, a value may not be promoted into a
reference-shaped (`&`-marked, T24) parameter when the argument is an lvalue (a variable read, index,
or member access — §6.2). Such a call is a compile-time error; declare the value as a reference and
pass that. Without this, `&` in a signature would mean "the caller's own instance" at some call sites
and "a copy of it" at others, and a `mut` reference parameter (D9) could write to a copy the caller
never sees. A freshly built temporary — a literal, or a constructor call's own result — has no
caller-side instance to preserve and promotes as usual, exactly as at a variable declaration or a
return, which are unaffected by this rule.

### 5.4 Function calls

**E13.** A call's target is resolved as `alias-chain IDEN` (E2–E3,
§4.4 M8) against: a local variable or parameter of function type; a
module-level function; or a struct type's own constructor
(§9) — a bare type name (or
alias chain naming a type) in call position is a constructor call exactly when that type declares
one. When that type is generic (§12.3), the call must carry a type argument list (G10a).

**E14.** Argument count must match the target's declared parameter count exactly (no default
arguments, no variadic parameters); each argument, in order, must fit (E12) the corresponding
parameter's declared type.

**E15.** If the called function's signature declares one or more errors
(§7), the call must appear directly as the operand of
`try` (either the expression form, §5.10, or the statement form,
§7); a bare, unhandled call to a fallible function is a
compile-time error.

### 5.5 Indexing and member access

**E16.** `base [ index ]` requires `base` to be an array type and `index` to be an integer type; its
result type is `base`'s element type. Indexing performs no run-time bounds check: an `index` outside
`[0, len(base))` (E23) is not diagnosed, at compile time or run time, and reads or writes
out-of-bounds memory, exactly as in C.

**E17.** `base . IDEN` requires `base` to be a struct type with a field named `IDEN`; its result
type is that field's declared type.

### 5.6 Struct literals

**E18.** `struct-literal ::= alias-chain IDEN "{" [ expr { "," expr } ] "}"` (§4.4 M8), resolving to
a plain (non-constructor, T14) struct type. Arguments
are positional, in the type's own declared field order, one per field exactly (E14's count rule
applies here too); each argument's value must fit (E12) that field's declared type. A struct type
that declares a constructor
(§9) may not be constructed
this way; use a call (E13) instead.

### 5.7 Array literals

**E19.** `array-literal ::= elem-type "[" [ arr-item { "," arr-item } ] "]"`, where
`elem-type ::= PRIMITIVE-NAME | alias-chain IDEN [ reference-marker ] | type-var [ reference-marker ]`
(§4.4 M8, §12.1 G1) names the literal's
scalar element type, stated exactly once regardless of nesting depth (E21). The optional
`reference-marker` (T24) makes each element a separately allocated reference rather than a value laid
out inline — `Handle&[a, b, c]` builds three instances, each with its own allocation and its own scope
tag. A primitive element type may never carry one (T24).
`arr-item ::= expr | "[" [ arr-item { "," arr-item } ] "]"` — a plain expression, or a nested
bracketed group with no restated type, for a multi-dimensional literal.

**E20.** The literal's own type is always a compile-time-length array (T8): its size, at each level, is
exactly the number of items written at that level; a literal with zero items is `elem-type[0]`. This
holds regardless of what the literal is subsequently checked against — sizing from item count is
intrinsic to the literal itself, and E12's runtime-length-array and compile-time-length-target rules apply
afterward, against a target, if there is one.

**E21.** For a nested (multi-dimensional) literal, every leaf item is checked against the single
stated scalar element type (E19), at whatever depth it appears; a nested group's own shape (item
count, further nesting) must agree with its sibling groups at the same level — a mismatch is a
compile-time error, not a jagged array.

### 5.8 Vocab values

**E22.** `vocab-value ::= LOCAL-TYPE-NAME "." IDEN`, where `LOCAL-TYPE-NAME` names a vocab type
declared in the *same* module (never alias-qualified, §4.4 M12) and
`IDEN` is one of that type's declared words (T17). Its type is the named vocab type.

### 5.9 Built-in functions

**E23.** `len(arr)` — `arr` must be an array type (any dimensionality, embedded or reference-shaped,
compile-time-length or runtime-length); result is `int32`, the length of `arr`'s outermost dimension. `len` is not an
ordinary function: it cannot be referenced as a value, shadowed by a same-named declaration used as
a call target, or passed a non-array argument.

### 5.10 `try` as an expression

**E24.** `try-expr ::= "try" call-expr`, usable as an ordinary expression anywhere a value of the
call's success type is expected. Its full semantics (error propagation, signature requirements) are
specified in §7.

### 5.11 `own`

**E25.** `own-expr ::= "own"`, a primary expression of type `scope` (§2.8), valid only inside a
function or test body. Its semantics are specified in
§8.

### 5.12 Explicit numeric conversion

**E26.** `TypeName(x)`, where `TypeName` is one of the five numeric primitive types (T5: `byte`,
`int32`, `int64`, `float32`, `float64`) and `x` is a single expression of any numeric type, converts
`x`'s *value* to `TypeName` and produces a value of that type - the explicit counterpart to T6's
implicit literal-only widening, covering every direction a numeric literal's own implicit widening
does not: a non-literal value crossing numeric types at all (widening or narrowing), and narrowing in
general (`int64` → `int32`/`byte`, `float64` → `float32`, any integer type → a narrower one, a float
type → an integer type). Converting a value to its own type is accepted, producing that same value
unchanged. Exactly one argument is required; anything else (zero, two or more, or a non-numeric
argument) is a compile-time error. `TypeName` in this position is never shadowable by another
declaration of the same name (matching `len`, E23) - a primitive type name is never otherwise a valid
call target, so this introduces no ambiguity with an ordinary function or constructor call.
Unlike an ordinary function, `TypeName(x)` is never fallible and needs no `try`/`catch` - a numeric
conversion cannot itself produce an error (a narrowing conversion outside its target type's
representable range - e.g. `byte(300)` - silently wraps, the same well-defined, unchecked behavior
this language already accepts at every other point a value can silently lose information, such as
E16's own unchecked array indexing).

## 6. Statements

### 6.1 Blocks

**S1.** `block ::= "{" { statement } "}"`. A block introduces a nested scope (D3): a local declared
inside it is not visible outside it, and ceases to exist (for scoping and, where applicable,
ownership purposes — §8) at the block's
closing `}`.

**S2.** `statement ::= var-decl | assign-stmnt | if-stmnt | for-stmnt | do-stmnt | match-stmnt
| return-stmnt | done-stmnt | crash-stmnt | assert-stmnt | error-stmnt | try-catch-stmnt
| expr-stmnt`. `var-decl` is specified in §3.5;
`error-stmnt` and `try-catch-stmnt` in §7.

**S3.** `expr-stmnt ::= expr STMNT_END` — any expression, evaluated for its side effects, with its
value (if any) discarded. This is how a bare function call is written as a statement.

### 6.2 Assignment

**S4.** `assign-stmnt ::= lvalue assign-op expr STMNT_END`, where `lvalue` is a postfix expression
(§5.1 E1) whose outermost form is a variable read, an index (`E16`), or a member access (`E17`) —
anything else on the left of an assignment operator is a compile-time error.

**S5.** `assign-op ::= "=" | "+=" | "-=" | "*=" | "/=" | "%=" | "&&=" | "||=" | "^^=" | "<<=" | ">>="
| "&=" | "|=" | "^="`. Every compound form `X=` is defined as `lvalue = lvalue X expr`, using the
corresponding binary operator (§5.2) and its own operand-type requirements; `X`'s left operand and
the assignment's own target must be the same type both ways.

**S6.** The target `lvalue` must be mutable: a local variable (always mutable,
§3 D11), a mutable global, a mutable parameter, or a mutable
constructor field (§9), or an
index/member chain whose own base is one of these. Assigning to an immutable target is a
compile-time error.

**S7.** The assigned value (for `=`, `expr` directly; for a compound form, the binary operation's
result) must fit (§5.3 E12) the target's declared type.

### 6.3 Conditional and looping statements

**S8.** `if-stmnt ::= "if" expr block [ "else" ( if-stmnt | block ) ]`. `expr` must be `bool`
(E7/E9/E10 all produce `bool`; any other type is a compile-time error). An `else` clause is
optional; chaining `else if` is exactly the recursive `"else" if-stmnt` alternative.

**S9.** `for-stmnt ::= "for" for-init "," expr "," expr block`, where `for-init` has the same shape
as a variable declaration (§3 D11) but without a trailing
`STMNT_END` — it is followed by `,` instead. The declared variable is scoped to the loop (its own
init, condition, post-expression, and body all see it, nothing outside the loop does) and is always
mutable. The first `expr` (condition) must be `bool`; the loop runs: evaluate init once; while
condition is true, run body, then evaluate the second `expr` (post), then re-check condition.

**S10.** `do-stmnt ::= "do" block "while" expr STMNT_END`. Runs body once unconditionally, then
repeats: evaluate `expr` (must be `bool`); if true, run body again and repeat; if false, stop. The
loop always executes its body at least once.

**S11.** There is no `break` or `continue` statement.

### 6.4 `match`

**S12.** `match-stmnt ::= "match" expr "{" { case-clause } [ nomatch-clause ] "}"`, where:

```
case-clause    ::= "case" expr block
nomatch-clause ::= "nomatch" block
```

**S13.** `match`'s own `expr` is evaluated once. Each `case`'s own `expr`, in source order, is
compared against it using the same equality rule as `==` (E10) and must be the same type (T27) as
the matched value. The block belonging to the first matching `case` runs, and no other `case` or
the `nomatch` block runs. If no `case` matches and a `nomatch` clause is present, its block runs. If
no `case` matches and there is no `nomatch` clause, no block runs at all — this is not a
compile-time error; `match` over a *value* performs no exhaustiveness checking over any type,
including a vocab
type's own closed word set.

**S14.** A `match` may be used on a value of any type that supports `==` (E10) — numeric, `bool`,
vocab, or any struct/array type (compared structurally or by reference identity per E10's own
rule).

### 6.5 `return`

**S15.** `return-stmnt ::= "return" [ expr ] STMNT_END`. If the enclosing function
(§3 D7–D10) declares a `ret-type`, `expr` is required and
must fit (E12) it. If the enclosing function declares no `ret-type`, `expr` must be absent — a bare
`return` (or falling off the end of the function's block) is the only valid way to end it.

### 6.6 `done` and `crash`

**S16.** `done-stmnt ::= "done" STMNT_END` and `crash-stmnt ::= "crash" STMNT_END` are each valid in
any function or test body. Both are unconditional, immediate process termination — not a return to
the caller, and unrelated to the enclosing function's own declared error union
(§7). `done` terminates the process with the OS-standard
success status; `crash` terminates it with the OS-standard failure status. Neither prints any
diagnostic. See §10 for the exact status values used.

### 6.7 `assert`

**S17.** `assert-stmnt ::= "assert" expr STMNT_END`. `expr` must be `bool`. `assert` is a statement,
not a function call — `assert cond` and `assert(cond)` are both valid and identical, the latter
simply parenthesizing `cond` as an ordinary sub-expression. `assert` is valid in any function, test,
or destructor body (§9), not
only inside `test { }` blocks.

**S18.** If `expr` evaluates to `false`:
- inside a `test { }` block (§10.4): that one
  test is recorded as failed, and execution resumes with the next test — this is a recoverable
  failure specific to the test harness;
- anywhere else: the process aborts immediately (an unrecoverable failure), the same way a failed
  assertion aborts in C.

## 7. Error Handling

olang has no exceptions. Errors are values (of a declared error type, §2.6) that a function's
signature declares it may produce; propagation and handling are both explicit.

### 7.1 Error sets

**R1.** A function or constructor's own signature (§3.4,
§9) may declare zero or more
error types via its `error-list` (D8): `ErrA + ErrB + ...`. This is the function's own **error
union** — the complete set of error types (not individual words — an entire declared error type at
a time) it may produce, to `try` callers (§7.4) and to a coverage-checking `catch` (§7.5).

**R2.** Declaring the same error type twice in one `error-list` is redundant but not itself
specified as an error here; each of R1's members is nonetheless still exactly one declared error
type.

### 7.2 The `error` statement

**R3.** `error-stmnt ::= "error" alias-chain IDEN "." IDEN STMNT_END` (`alias-chain`, §4.4 M8,
possibly empty, giving a bare `Type.WORD`). `alias-chain IDEN` names a declared error type (§4.4),
and the final `IDEN` is one of that type's own declared words (T19). Valid only inside an ordinary
function's own body, whose signature's error union (R1) includes the named error type. Not valid in a
`test { }` block or a `destruct { }` body (§9.3 C7) — neither has an error union of its own — nor at
module scope. A constructor has no statement-block body at all to write one in in the first place
(§9.1 C1–C2: a `ctor-field`'s own initializer is always a single expression, never a statement).

**R4.** Executing an `error` statement immediately ends the enclosing function, producing that
specific (type, word) pair as its result, in place of a normal `return`ed value — see §7.3.

### 7.3 Return convention

**R5.** A function that declares one or more errors (R1) returns, conceptually, either its success
value (if it has a `ret-type`, §3 D8) or one specific word of
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

### 7.4 `try`

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

### 7.5 `catch`

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

### 7.6 The bare error

**R15.** `error-list-item`'s bare `"error"` alternative (D8) is **the bare error**: a member of a
function or constructor's own error union (R1) that names no declared error type at all. It stands
for "this may also fail without identifying which specific error occurred," and is written as the
bare keyword `error` wherever an `error-list-item` is expected — combinable with ordinary named error
types via `+`, in either order, the same as any two named error types combine (`func f(...)
? MathError + error { ... }`, or `error` alone, or several named types plus `error`). Declaring it
more than once in the same `error-list` is redundant in exactly the way R2 already permits for a
named type, and for the same reason.

**R16.** `error-stmnt`'s grammar (R3) gains a second form: bare `"error" STMNT_END`, with no
`alias-chain IDEN "." IDEN` operand at all. Valid under exactly the same conditions as R3's own form —
inside an ordinary function's own body, whose signature's error union includes the bare error
(R15) — and, like R4, immediately ends the enclosing function, producing the bare error as its
result in place of a normal `return`ed value.

**R17.** The bare error participates in `try` propagation (§7.4) and `catch` coverage (§7.5)
exactly as a named error type with exactly one, unnamed word does: R6's ordinal scheme applies to it
unchanged (it occupies whatever position it was declared at in the `error-list`, R1, left to right,
with its own "word" always at ordinal 0); R9's "every error type the called function may produce"
requirement is satisfied for it the same way as for any named type; R13's coverage rule treats it as
fully handled the moment a `catch` clause matches it at all, since it has only the one word to match.

**R18.** `catch-item` (R11) gains the bare keyword `"error"` as an alternative to `IDEN { "." IDEN }`,
matching only the bare error (R15) — never any named error type the same call might also produce,
and never itself followed by a further `.WORD` (it has no addressable word of its own to select). A
`catch` clause covering both the bare error and one or more named types combines them with `+`,
exactly as R11 already describes for named types alone (`catch MathError + error { ... }`).

**R19.** The bare error carries no information beyond the fact that a failure occurred: no
identifying type, no word, no payload. Where the bare error escapes uncaught all the way past
`main` (P5), the printed diagnostic identifies it as such rather than naming a type and word that do
not exist.

## 8. Ownership and Scopes

This section specifies the `scope` type, the `&`/`&name` reference marker's ownership meaning
(distinct from its purely type-level effect, §2.9), the allocation model
for reference-shaped values, and the static compile-time check that constrains how a scope tag may
flow from one place to another.

The marker's `&` denotes scope-tagged heap indirection. It is not an address-of operator and not a
borrow: this language exposes no pointer type and no way to take the address of a value (there is no
unary `&`, E5), and the check specified in §8.4 is a scope-containment check, not a general borrow
check — it constrains which scope a value may flow into, never how many live readers or writers a
value has.

### 8.1 Scopes

**O1.** A **scope** is a nested, strictly last-opened-first-closed (FILO) region that every
reference-shaped value (T24) belongs to. A scope closes exactly when the function or test body that
opened it returns (falls off the end, hits `return`, or otherwise ends normally); every
reference-shaped value belonging to it becomes invalid at that point.

**O2.** Every function and test body implicitly opens its own private scope on entry. `own`
(E25) is an expression of type `scope` evaluating to that function's own private scope; it is the
only way to name it, and is valid anywhere a `scope`-typed value is expected, including as an
argument to a call.

**O3.** A `scope`-typed value (T23) is never itself a reference-shaped value, never stored, and
never compared; it exists only to be read once (`own`, or a parameter of type `scope`) and passed
along as an argument.

### 8.2 Scope tags

**O4.** A reference-shaped type (T24) carries a **scope tag**: bare (`&`) or named (`&name`).
`&name` names a `scope`-typed parameter visible at the point the type is written — an earlier
parameter of the same function or constructor signature
(§3 D9), or, for a constructor's own field
(§9), any parameter of that
same constructor's own signature. `own` is not itself a valid marker name (it is an expression, not
a declared parameter); a bare marker is how a type expresses "this value's own private scope,
determined at the point a value is actually allocated into it" — see §8.3.

**O5.** A scope tag has no effect on type identity (T27) and does not change which operations
(field access, indexing, calls) are valid; it only constrains where the value may be allocated (§8.3)
and where a reference to it may subsequently flow (§8.4).

### 8.3 Allocation

**O6.** A plain (not-yet-reference-shaped) struct or compile-time-length-array value is promoted into
reference-shaped storage — allocated into a scope — at the point it is stored into a
reference-shaped slot: a variable declaration, an assignment, a function argument, a return value,
or a field/element of a larger literal being itself promoted this way. The scope it is allocated
into is:

- for a **named** (`&name`) target: the scope value bound to that parameter at the relevant call
  (the argument passed for it, tracing back through however many call boundaries are needed to find
  a concrete `own` or passed-in scope — see §8.4 for what is and is not provable about this
  statically);
- for a **bare** (`&`) target that is itself a top-level declared type (a variable, parameter,
  field, or return type written with a bare marker directly): the current function's own private
  scope (`own`);
- for a **bare** field or element nested inside a larger value that is itself being allocated into
  some scope `S` (named or bare): the same scope `S` — a bare nested field's scope is never
  independent of its immediate container's own scope.

**O7.** A runtime-length array (T11) is always allocated this way regardless of whether it carries an
explicit marker, since a runtime-determined length has no embedded representation to begin with; a
`T[expr]` variable declaration with no initializer (§3 D14)
is allocated the same way, into its own declared scope tag (bare, meaning `own`, if none is
written).

**O8.** Closing a scope (O1) reclaims every allocation made into it. This specification does not
guarantee any particular reuse or timing of underlying storage beyond "valid until the owning scope
closes, invalid after."

### 8.4 The static scope check

**O9.** Wherever a value already known to be reference-shaped (not a fresh literal being promoted,
O6) flows into a reference-shaped target of the same type (T27) — an assignment, a variable
declaration's initializer, a function argument, or a return value — the source's scope tag must be
**compatible** with the target's declared scope tag, checked at compile time, in addition to (not
instead of) O6's own runtime allocation behavior.

**O10.** A source scope tag `src` is compatible with a target scope tag `dst`, both considered from
the perspective of the function currently being checked, exactly when one of:

- `src` and `dst` name the exact same scope (including: both bare, meaning both mean that same
  function's own `own`);
- `dst` is bare (`&`) and `src` names any scope parameter of the *current* function — a value
  received from a longer-lived, named scope may always narrow into "at least as long as my own
  scope," since a function's own `own` scope is always the shortest-lived scope reachable from
  inside it.

Any other pairing — a bare source flowing into a named target, or two *different* named scope
parameters of the current function — is a compile-time error: neither is provably safe without a
lifetime-relationship annotation, which olang does not have.

**O11.** O10 applies only when both sides are traceable, at compile time, to a scope parameter of
the function currently being checked (following, where applicable: a call's own argument-to-
parameter binding — including resolving a *callee's* own parameter-declared scope tag through that
same call's binding before comparing, since a callee's `&name` always names one of *its own*
parameters, D9, never anything in the calling function's frame; one hop through a variable's own
declaration; a chain of member accesses through constructor-declared fields; straight-line
reassignment; and branches of `if`/`match`/loops, merged — agreeing branches keep the agreed tag,
disagreeing branches are treated as O12). A scope tag this specification's own tracing cannot
resolve back to one of the current function's own parameters — including one read back through an
array index (E16), which this tracing does not follow at all — is treated as **unverifiable** and is
a compile-time error, the same as an actually-proven-unsafe flow under O10: this checker's guarantee
is only as complete as what it can trace, but it is sound within that limit, rejecting anything it
cannot prove safe rather than optimistically accepting it. Extending what this tracing can follow can
only ever accept more programs that are genuinely safe; it can never turn an already-rejected program
newly unsafe.

**O12.** A variable whose scope tag becomes genuinely ambiguous — reassigned to different scopes on
different branches that are merged back together, or (for a constructor field) forwarded from two
different same-typed sibling arguments in a way that cannot be told apart — is treated as
**definitely incompatible** with anything, rejected the same way an unverifiable tag is (O11) but for
a distinct reason worth telling apart: this one was actually traced, and found to disagree, rather
than simply never resolved at all. Once a value's own scope is known to be one of several different
things depending on which branch ran, no further use of it can be proven safe, so it is rejected
outright rather than silently guessing.

### 8.5 Return-type restrictions

**O13.** A function's declared return type may never be a bare (`&`) reference-shaped type
directly: the function's own `own` scope closes at the instant it returns, strictly before the
caller could ever observe a value allocated into it. A bare return type must instead be tagged to an
explicitly-received scope parameter (`&name`).

**O14.** The same restriction extends through embedding: a *plain* (non-reference) struct return
type that itself contains a bare (`&`) reference-shaped field, anywhere within its own field chain
(not chasing into a field that already carries its own explicit `&name` tag, whose lifetime is
independently governed by that name), is also a compile-time error, for the same underlying reason
as O13. This check is conservative: it also rejects some code that would in fact be safe at run time
(a function that only ever passes an already-correctly-scoped value straight through, never
allocating into the bare field itself) — telling that case apart from a genuinely unsound one would
require dataflow analysis this specification's checker does not perform.

### 8.6 Destructors and scope closing

**O15.** If a struct type declares a destructor (§9), every instance of it allocated into a given
scope (§8.3) has its destructor invoked when that scope closes (O1), in the reverse order the
instances were allocated. A destructor-declaring type is reference-only (C11), so this is the sole
rule governing when a destructor runs: there is no plain-local, function-return-governed case.

**O16.** An instance is registered with its scope at the point its **constructor call** completes
(C6) — not at any later assignment, copy, or binding of the resulting reference. Registration is
therefore one-per-construction: a value that reaches a variable, field, or array element by being
copied from an already-constructed instance is the same instance, registers nothing further, and is
destructed exactly once (C10). No storage location is registered on its own account, and no
never-constructed storage is registered at all — in particular, a zero-filled aggregate (D13)
contains no instances and causes no destructor to run.

## 9. Constructors and Destructors

A struct type may declare a constructor and/or a destructor. These are the only two special,
compiler-recognized blocks a struct type can declare; olang has no general user-defined methods.

### 9.1 Declaration

**C1.** A constructor-bearing struct is declared:

```
type IDEN "struct" "(" param-list ")" [ error-list ] "{" ctor-field-list "}" [ destruct-block ]
```

`param-list` and `error-list` are as in a function signature
(§3 D8). This shape is distinguished from a plain struct
declaration (T13) purely by `(` immediately following `struct`.

**C2.** `ctor-field-list ::= [ ctor-field { "," ctor-field } ]`, where each `ctor-field` is exactly
one of:

```
IDEN [ "mut" ] ":=" expr           # inferred: type read from a required-to-be-literal expr
IDEN [ "mut" ] type-expr [ "=" expr ]   # explicit type, optional initializer
IDEN [ "mut" ] T "[" expr "]"          # run-time-sized array, no initializer (D14a)
IDEN [ "mut" ]                     # bare pun (§9.2) — valid only when no type/initializer follows
```

A field's declared type (explicit, or inferred by `:=`) may carry a reference marker (T24) naming
any parameter of this same constructor's own `param-list`, giving that field a real, type-level
scope tag independent of any particular call site — see
§8.4.

**C3.** A field is mutable only if declared with `mut` (D9's own rule for parameters applies
identically here); otherwise it is immutable.

### 9.2 Bare-pun fields

**C4.** A `ctor-field` written as a bare name (with no type, no `:=`, no `=`) must match, by name,
one of the constructor's own declared parameters exactly; the field's type is that parameter's own
type, and the field's value, for any given constructed instance, is exactly the value passed for
that parameter at the call that constructed it. A bare name that does not match any parameter of
the same constructor is a compile-time error.

**C5.** A `ctor-field` with an explicit type but no `=` initializer at all is a compile-time error
— there is no value for it to take (unlike C4, an explicitly-typed field is never implicitly a pun,
even if its name happens to match a parameter).

### 9.3 Constructing and destructing

**C6.** `Type(args)` (E13) constructs an instance: `args` are checked exactly as an ordinary call
against the constructor's own `param-list`, in order; the result is a value of the struct type,
with each field set per C2's own rule for that field, evaluated once, in field declaration order.
Once a struct type declares a constructor, the plain positional literal (E18) is no longer valid for
it; only a constructor call constructs a value of that type.

**C7.** `destruct-block ::= "destruct" block`. A destructor's body has no error union of its own —
every fallible call within it must be fully caught by a `catch` that leaves nothing uncaught
(§7.5), the same rule a `test { }` block follows,
since a destructor is never invoked by ordinary calling code and so has no caller to propagate an
error to. Declaring this block also makes the type reference-only — see C11.

**C8.** Inside a `destruct` block, a bare identifier that names one of the type's own fields (and is
not itself shadowed by a local of the same name) reads that field of the instance being destructed
— there is no `self`/`this` qualifier.

**C9.** A destructor runs, for a given instance, exactly once: when the scope the instance was
allocated into closes (§8.3, §8.6 O15), regardless of which function allocated it or which function
happens to be executing at that point. Because a destructor-declaring type is reference-only (C11),
an instance always has a scope of its own and this is the only case; the enclosing function's return
governs nothing here beyond closing that function's own scope (O1).

**C10.** A destructor never runs for a struct type that declares no `destruct` block, never runs more
than once for the same instance, and never runs for storage no constructor call ever produced an
instance in (O16).

**C11.** A struct type that declares a `destruct` block is **reference-only**: every `type-ref` (T24)
naming it must carry a reference marker, and a bare `type-ref` naming it is a compile-time error —
as a variable's declared type, a parameter type, a return type, a struct field's type, or an array's
element type alike. The type may therefore never be embedded by value in any aggregate, and never
passed or returned by value.

A destructor asserts that an instance owns something releasable exactly once, which requires a
well-defined instance count. A value type has no such count: it is compared structurally (T26, E10)
and copied freely, so two copies are indistinguishable and neither is identifiably the owner.
Reference-shaped types are the ones this language gives identity to (`==` on a reference is pointer
identity, T26), so a type needing identity must be one. The marker is nonetheless written at every
use, exactly as for any other reference: declaring a destructor makes the type reference-*only*, it
does not make the marker implicit, so reading a `type-ref` never requires knowing whether the named
type happens to declare a destructor.

## 10. Compilation Model

### 10.1 Compilation modes

**P1.** The compiler operates in exactly one of two modes, selected by a command-line flag; there is
no other entry point.

**P2.** `-c <file>`: compiles one program, with `<file>` as its root module. Every module reachable
from `<file>` by imports (§4) is pulled in transitively. `<file>` must
declare a `main` function (§10.2); the result is one native executable.

**P3.** `-t <file> [<file> ...]`: for each listed file, independently, compiles that file as its own
root module (transitively pulling in its own imports, exactly as `-c` would) and runs every
`test { }` block declared *directly in that file* (§10.4) — not those declared in any module it
merely imports. `main` is not required in this mode, and is not run even if present. Each listed
file's compilation and test run is independent: a compile-time error in one listed file does not
prevent the others from being checked and run.

### 10.2 Program entry

**P4.** In `-c` mode, the root module must declare a function named `main` with exactly this shape:
no parameters, no success type, and at least one declared error
(§3 D8) — `func main() ? SomeError [+ ...] { ... }`. Any other
shape (parameters, a `ret-type`, or no declared error at all) is a compile-time error. There is no
other valid `main` signature; in particular, there is no "return an int/bool status" convention.

### 10.3 Process exit

**P5.** Running the compiled program (`-c` mode) invokes `main`. If it returns normally (falls off
the end, or a bare `return`), the process exits with status `0`. If an error (§7) escapes `main`
uncaught, the process prints `unhandled error: TypeName.WORD\n` to `stderr` (naming the specific
declared error type and word that escaped) and exits with status `1`.

**P6.** `done` and `crash` (§6.6) exit the process immediately,
from anywhere, with status `0` or `1` respectively, printing nothing, independent of §10.3's own
`main`-return handling.

### 10.4 Test blocks

**P7.** `test-decl ::= "test" STR_LIT block`, valid as a top-level declaration in any module.
`STR_LIT` is the test's description. A `test` block has no error union of its own — the same rule a
destructor's body follows (§9.3 C7): every fallible call inside it must be fully caught.

**P8.** A `test` block is only ever executed under `-t` (§10.1 P3), and only for the file it is
directly declared in. Each test in a run prints its own description together with pass/fail, and
one test failing (§6.7 S18, inside the block itself) does not stop the remaining tests in the same
file, or any other listed file, from running.

## 11. External Functions

**X1.** `extern-func-decl ::= "extern" "func" IDEN "(" extern-param-list ")" [ extern-ret-type ]
STMNT_END` is a top-level declaration (D1) naming a function defined outside this compilation and
resolved by the platform's linker at build time. Unlike an ordinary `func-decl` (D7), it declares no
`error-list` and has no `block` body of any kind — `STMNT_END` ends the declaration directly where an
ordinary function's body would otherwise begin.

**X2.** `extern-param-list ::= [ extern-param { "," extern-param } ]`, where `extern-param ::= IDEN
extern-type`, and `extern-ret-type ::= extern-scalar-type`. `extern-type` is exactly one of: a
numeric primitive type (T5 — `byte`, `int32`, `int64`, `float32`, or `float64` — this is also
exactly `extern-scalar-type`), or an array type (T7, compile-time-length or runtime-length) whose element type is
itself one of those five. `extern-ret-type` is restricted to `extern-scalar-type` alone — an array
return type is never valid (see X3 for why). No other type — `bool`, a struct, a vocab type, an
error type, a function type, `scope`, or an array of any type outside the numeric-primitive set —
is valid in an `extern-param` or `extern-ret-type` position.

**X3.** An array-typed `extern-param` (X2) is passed as a pointer to the array's own first element
only — never its length (a runtime-length array's own `{ len, ptr }` representation, T11, is reduced to
just the pointer half; a compile-time-length array's own embedded address is used directly). This pointer is
never itself a nameable value or type anywhere in this language — it exists only at this one
marshalling boundary. If the external function also requires the array's length, the declaration
states it as a separate `extern-param` (X2) of an integer type, supplied explicitly by the caller
(`len(arr)`, E23) — an `extern-param-list` never infers one parameter's value from another's. An
`extern-ret-type` can never be an array (X2) for exactly the reason this same marshalling can't run
in reverse: a raw pointer an external function returns carries no length anywhere alongside it, so
there is no sound way to reconstruct a real `{ len, ptr }` value from it — accepting one would mean
either fabricating a length (silently unsound) or inventing a real pointer-typed value somewhere in
the language (exactly what X3's own marshalling exists to avoid).

**X4.** An external function declares no errors and is never fallible (§7 R1): calling it always
produces its declared `extern-ret-type` directly, or nothing if none is declared — never the
`(code, payload)` pair a fallible ordinary function's own call produces (§7 R6). It is called exactly
like a non-fallible ordinary function (E13, E14); it can never be the operand of `try` (E24) or a
`try`-`catch` statement (§7.4 R10), the same restriction R8 already places on any non-fallible call.

**X5.** An external function's own declared name is subject to the same visibility rule as any other
module-level name (§4.3 M6): capitalized is exported, lowercase is private to its own declaring
module. The declared name is also the symbol the linker resolves against; this specification does
not define what happens when no such symbol exists at link time (implementation-defined).

## 12. Generics

A function or a struct type may be **generic**: parameterized over one or more types, with a separate
copy compiled for each distinct set of type arguments it is used with. Vocab and error types can
never be generic — neither may reference any other type at all (T17, T19), so there is nothing to
parameterize.

### 12.1 Type variables

**G1.** `type-var ::= "<" IDEN ">"`, written where an entire `type-expr` (T2) would otherwise
appear. It names a **type variable**: a type that is not known at the declaration and is supplied
per instantiation. `IDEN` must not name a type declared in the referencing module (D2); writing a
declared type's name inside a `type-var` is a compile-time error, since `<Point>` would otherwise
read as parameterizing over something already concrete.

**G2.** A `type-var` may carry array suffixes and a reference marker exactly as a `type-ref` does
(T24) — `<T>[3]`, `<T>&`, `<T>&[3]&` are all well-formed — and the marker rules of §2.9 apply to it
unchanged once the variable is bound to a concrete type by instantiation.

### 12.2 Generic functions

**G3.** A function is generic exactly when a `type-var` (G1) appears anywhere in its signature
(`func-sig`, D8). It declares no type-parameter list: its set of type parameters is every *distinct*
`type-var` name appearing in that signature, and repeating a name binds those positions to one and
the same type.

```
func max(a<T>, b<T>) <T> { ... }
func pairUp(a<A>, b<B>) <A> { ... }
```

**G4.** Every type variable of a generic function must appear in at least one *parameter's* type. A
variable appearing only in the return type or only in the error list is a compile-time error, since
nothing at a call could determine it.

**G5.** A generic function's error set (D8) may not mention a type variable: the declared error set
is the same for every instantiation.

### 12.3 Generic struct types

**G6.** `type-decl` (D4) is extended to
`"type" IDEN [ type-params ] type-expr [ STMNT_END ]`, where
`type-params ::= "<" IDEN { "," IDEN } ">"`. Each `IDEN` declares a type parameter, unique within
the list, in scope throughout the whole declaration: the constructor's own `param-list` and error
list (C1), every field, and the `destruct` block (C7).

```
type Vec<T> struct(s scope, cap int64) {
    items mut <T>[cap]&s,
    len mut int64 = 0
}
```

**G7.** Within such a declaration a type parameter is written as a `type-var` (G1) — `<T>` — exactly
as in a generic function. The `type-params` list fixes the parameters' **order**, which is what a
type argument list (G8) supplies positionally; a function needs no such list because its arguments
are inferred (G9) and order therefore never arises.

**G8.** `type-ref` (T24) is extended to accept a **type argument list**:
`type-args ::= "<" type-expr { "," type-expr } ">"`, written immediately after the name and before
any array suffixes. The count must equal the named type's own `type-params` count exactly. A generic
type is never valid without one — a bare reference to a generic type name is a compile-time error.
Within a `type-args` list, a bare `IDEN` names either a declared type or a type parameter in scope at
that point, so a generic declaration may instantiate another generic with its own parameter
(`Vec<T>` inside a declaration that declares `T`).

### 12.4 Inference and instantiation

**G9.** At a call to a generic function, type arguments are never written: each is determined by
matching the actual argument types structurally against the declared parameter types. G4 guarantees
every variable is reachable this way. If two positions bound to one variable are matched against
different types, the call is a compile-time error.

**G10.** A generic struct type is instantiated only by writing its type arguments (G8). `Vec<int32>`
and `Vec<int64>` are different types (T27); two instantiations are the same type exactly when the
named type and every type argument are the same.

**G10a.** A generic struct type that declares a constructor (§9.1) is constructed by writing its type
arguments before the argument list: `Vec<int32>(own, 4)`. This is the only spelling — C8's rejection of
the `Type{...}` literal for a constructor-declaring type applies unchanged, so a generic type with a
constructor has no other construction form. The type arguments select the instantiation exactly as G8
does in a type reference, and the call then targets **that instantiation's own** constructor: the
generic's own constructor is never a call target, its parameter types still being type variables.
Omitting the list where the named type is generic, or writing one where it is not, is a compile-time
error, as is a count that does not match the declared `type-params` (G6).

**G10b.** A generic struct type's constructor and destructor are monomorphized with it (G16): each
instantiation gets its own, built from the generic's own field list and `destruct` block against that
instantiation's substituted types. C11 applies unchanged — an instantiation of a type declaring
`destruct` is reference-only, and each instantiation's destructor is a distinct one, running for the
instances of that instantiation only.

**G11.** A type argument may not carry a reference marker (T24). Its scope tag could not be traced by
the checker of §8.4, which reasons only about tags naming the current function's own scope
parameters, and an untraceable tag is rejected rather than optimistically allowed (O11).

**G12.** An uninstantiated generic name is not a value: a generic function may be called or
instantiated but never read as a `func-type` value (T2). A fully instantiated one is an ordinary
value and may be used wherever a function value is expected.

### 12.5 Dispatching on a type parameter

**G13.** `match` (S12) accepts a `type-var` as its own operand, with each `case` naming a
`type-expr` instead of a value expression. This form is resolved when the enclosing generic is
instantiated, not at run time.

```
func writeVal(fd int32, v<T>) int64 ? error {
    match <T> {
        case int32  { return write(fd, i32Bytes(v)) }
        case byte[] { return write(fd, v) }
    }
}
```

**G14.** Within the selected `case`'s block, the type variable **is** the matched type: a value
declared with that variable's type may be used exactly as a value of the concrete type. Blocks
belonging to other cases are not checked against this instantiation at all.

**G15.** Unlike a value `match` (S13), a type `match` is exhaustiveness-checked: if no `case` matches
and no `nomatch` clause is present, it is a compile-time error reported at the **instantiation**
that produced the unmatched type, naming both the type and the generic. A value `match` performs no
such check; the difference is deliberate, since a silently empty type `match` would compile a
generic that does nothing for some of its instantiations.

### 12.6 Compilation

**G16.** A generic is compiled by **monomorphization**: one separate function or type is generated
per distinct set of type arguments it is used with, with every type variable replaced by its
argument. Every rule of this specification then applies to each generated copy exactly as if it had
been written out by hand — including destructor registration (§9.3), scope containment (§8.4), and
structural comparison (E10).

**G17.** Instantiation may not be unbounded: a generic whose own instantiation requires an
ever-growing set of further instantiations is a compile-time error. The depth at which this is
reported is implementation-defined.


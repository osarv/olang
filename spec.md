# olang Language Specification

This is the reference manual for olang: a precise, current-state description of the language.

## Structure

The specification is organized into eleven numbered sections below, ordered so that each section
only depends on concepts already introduced by earlier ones:

| § | Covers |
|---|---|
| 1 Lexical Structure | Source encoding, comments, tokens, literals, automatic statement termination |
| 2 Types | The type system: primitives, structs, arrays, enum, error, function, and scope types; type identity |
| 3 Declarations | Type, error, variable, and function declarations; scope of names |
| 4 Modules | Files as modules, imports, visibility, cross-module name resolution, re-export |
| 5 Expressions | Operators, precedence, literals as values, calls, member/index access |
| 6 Statements | Control flow: if/for/do/match, assignment, return, assert, done/fail |
| 7 Error Handling | Error sets, the error-union return convention, try/catch |
| 8 Ownership and Scopes | Scopes, scope tags, reference markers, results, the static scope checker |
| 9 Constructors and Destructors | Constructor-bearing struct types, bare-pun fields, destructors |
| 10 Compilation Model | Compilation units, `-c`/`-t` modes, `main`, test blocks, process exit |
| 11 External Functions | `extern fn` declarations, linkage, and the restricted C-ABI type boundary |
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
if        else    try     catch   return  done    fail    assert
for       do      in      range   match   case    nomatch break   continue
and       or      not     xor
type      struct  enum    fn      error   mut
interface spawn   join
import    test    destruct
abort     unreachable
extern    default
```

`true` and `false` are not keywords; they are the two spellings of `BOOL_LIT` (L11). `null` is not a
keyword either, for the same reason: it is `NULL_LIT` (L11a).

### 1.5 Literals

**L10.** `INT_LIT ::= decimal-int | hex-int | bin-int`, where
`decimal-int ::= digit { digit-sep digit }`. No unary minus is
part of the literal itself (negation is the unary `-` operator, §5). An `INT_LIT`'s own type follows its
written value: `Int32` where it fits one, `Int64` otherwise (T6a).

**L10a.** `hex-int ::= ( "0x" | "0X" ) hex-digit { digit-sep hex-digit }`, where `hex-digit` is `0`-`9`,
`a`-`f` or `A`-`F`. At least one digit is required, so `0x` alone is an error. A hexadecimal literal
denotes a **bit pattern**, so the full width of `Int64` is writable: `0xFFFFFFFFFFFFFFFF` is `-1`.

A leading `0` on a decimal literal is **not** an octal prefix — `07` is seven. C's bare-`0` octal is
widely held to be a mistake, and there is no octal syntax at all.

**L10c.** `bin-int ::= ( "0b" | "0B" ) bin-digit { digit-sep bin-digit }`, where `bin-digit` is `0` or
`1`. At least one digit is required.

A character that is a digit or a letter immediately after a `0x` or `0b` literal's digits is an error,
rather than the start of the next token: `0b12` is a mistake in the literal, not a binary `1` beside a
stray `2`.

**L10b.** `digit-sep ::= { "_" }` — a `_` inside a numeric literal is a **separator with no meaning**,
removed before the value is read, so `1_000_000`, `0xFF_FF`, `0b1010_1010`, `1_000.5` and `1e1_0` are all
ordinary literals. The rule is that a `_` **must be followed by another digit** of the same base, which is
what makes `1_`, `1_.5` and `1_e5` errors. Nothing is said about the other end because nothing needs to
be: a leading `_` is a letter, so `_1` is an identifier and never reaches the number path at all.

**L11.** `BOOL_LIT ::= "true" | "false"` — of type `Bool`.

**L11a.** `NULL_LIT ::= "null"` — the absent reference. It has no type of its own and adapts to whichever
nullable type it is used against; see §2.1 T2a.

**L12.** `FLOAT_LIT ::= digit { digit } [ "." digit { digit } ] exponent
| digit { digit } "." digit { digit } [ exponent ]` — at least one digit is required on *both* sides of
the `.`; there is no leading-dot (`.5`) or trailing-dot (`5.`) form, and no more than one `.`.

**L12a.** `exponent ::= ( "e" | "E" ) [ "+" | "-" ] digit { digit }`. An exponent makes the literal a
float whether or not a `.` appeared, so `1e3` is a float literal and equals `1000.0`. The exponent is
recognized only when the whole of it is present: `1e` is an `INT_LIT` followed by an identifier, exactly
as it was before exponents existed, so no program changes meaning. A `FLOAT_LIT` denotes a value of type `Float32` unless context requires `Float64` (see
§5.2 on numeric literal typing).

**L13.** `CHAR_LIT ::= "'" char-content "'"`, where `char-content` is exactly one of:
- any single byte other than `'`, `\`, or newline (including `"`, which needs no escaping here), or
- an escape sequence: `\n`, `\t`, `\r`, `\0` (a zero byte), `\\`, or `\'`.

A `CHAR_LIT` is of type `Byte`. An empty (`''`), unterminated, or newline-containing `CHAR_LIT` is
a compile-time error.

**L14.** `STR_LIT ::= '"' { str-content } '"'`, where each `str-content` element is:
- any single byte other than `"`, `\`, or newline (including `'`, which needs no escaping here), or
- an escape sequence: `\n`, `\t`, `\r`, `\0` (a zero byte), `\\`, or `\"`.

A `STR_LIT` is of type `Byte[N]`, a compile-time-length array of `Byte` (see
§2.3), where `N` is the number of bytes after escape processing. A
`STR_LIT` is not implicitly nul-terminated; `N` reflects exactly its own content. An unterminated or
newline-containing `STR_LIT` is a compile-time error.

**L15.** No other escape sequences exist. Using `\` followed by any character other than `n`, `t`, `r`, `0`,
`\`, `'` (in a `CHAR_LIT`), or `"` (in a `STR_LIT`) is a compile-time error.

### 1.6 Operators and punctuation

**L16.** The following are single tokens (maximal munch: the tokenizer always consumes the longest
valid token starting at the current position):

```
+  -  *  /  %  ,  .  ?  =  :=
+=  -=  *=  /=  %=  <<=  >>=  &=  |=  ^=
++  --
==  !=
<  <=  >  >=
&  |  ^  ~  <<  >>
(  )  [  ]  {  }
```

`and`, `or` and `xor` (keywords, L9) are the boolean and/or/exclusive-or operators, and `not` is boolean negation
(E7a); `&`, `|`, `^`, `~`, `<<`, `>>` are the bitwise operators. The logic words have no compound assignment. There is no ternary conditional operator, no null/optional-coalescing operator,
and no `;`.

### 1.7 Automatic statement termination

**L17.** olang has no statement-terminating character. A statement's end is instead recognized
either by an explicit grammar construct (some statements end in a token the grammar itself
requires, e.g. a block's closing `}`) or by an implicit end-of-statement, synthesized by the
tokenizer under L18.

**L18.** Immediately after producing a token whose type is one of:

```
IDEN, INT_LIT, FLOAT_LIT, CHAR_LIT, STR_LIT, BOOL_LIT, NULL_LIT,
++, --, ), ], return, done, fail, error, break, continue, abort, unreachable, mut
```

(`mut` is there for a mutable bare-pun field, `x mut` (C4), which ends at the line's end like any
other field.)

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

**L20.** Wherever the grammar writes `STMNT_END`, a statement is also accepted as ended when the very
next token is a `}` — the one that closes the enclosing block or body. L18 synthesizes nothing there
(no newline precedes it), and nothing but the block's end can follow a statement inside a block, so
this can never absorb a token a longer parse would have wanted. It is what makes a whole block
writable on one line:

```
fn g(a Int32) Int32 { return a }
type Point struct(x Int32) { x }
if n > 3 { n = 3 }
```

**L20a.** Four further, narrower positions accept a statement's end with no `STMNT_END` token at all,
because the grammar never expects one there and L18 never produces one there either:
- immediately after a `}` that closes a block, or a constructor, enum or error body;
- immediately after the `&` of a bare reference marker (§8),
  when that `&` is the last token of an otherwise-complete statement. (An `&` used as the bitwise-and
  operator can never be the last token of a complete statement, since a binary operator is always
  followed by an operand; the two are therefore never ambiguous in this position. A marker naming a
  variable (`&x`) ends in an identifier, which does trigger a synthesized `STMNT_END` under L18, so this
  exception concerns the bare form only.);
- immediately after the `mut` of a constructor's bare-pun field (§9.1 C2, `open mut`) — the only
  statement-shaped form in the language whose last token is that keyword;
- immediately after the `>` closing a type's argument list, or a type variable, that ends a declaration
  with no initializer (`none <T>`, `q Pair<Int32, Int64>`). A `>` used as "greater than" is always followed
  by its right operand, so it is never a complete statement's last token.

Each of the last three applies only where its token is the last on its line (or of the file): a token after it
on the same line continues the statement, so `s Array<Int32>(4)` is a syntax error at the `(`, not a declaration
followed by a parenthesized expression.

## 2. Types

### 2.1 Kinds of types

**T1.** Every olang type is exactly one of: a primitive type (§2.2), an array type (§2.3), a struct
type (§2.4), an enum type (§2.5), an error type (§2.6), a function type (§2.7), or an interface type
(§2.11). A scope
(§2.8) is not among them — it is not a type at all. There is no `void`/unit type available to user
code; a function either declares a success type or declares none (see §3.4).

**T2.** A type expression — anywhere a type is written (a variable's declared type, a field's type,
a parameter's type, a return type, an array's element type) — is one of:

```
type-expr ::= [ "mut" ] ( enum-body | struct-body | interface-body | func-type | type-ref | type-var )
```

A leading `mut` makes a reference type writable (T25b); it is valid on a reference-shaped type, on a type
variable (which then stands for a writable reference when bound to one), and at the top of a declaration.

`enum-body`, `struct-body`, `interface-body`, and `func-type` are anonymous type *shapes*,
constructible inline anywhere a type expression is expected (§2.4, §2.5, §2.7, §2.11). `type-ref`
(§2.9) names an existing primitive, or a previously declared struct, enum, error, or interface type,
with an optional array suffix and reference marker. `type-var` (§12.1 G1) names a type parameter and is valid only inside a generic
declaration.

**T2a (`null`).** `null` is a literal denoting the **absent reference**. It has no type of its own: like a
numeric literal (T6), it adapts to whatever type it is used against, and the types it may adapt to are
exactly the **nullable** ones — a `&`/`&x`-marked struct or compile-time-length array, a runtime-length
array (`Array<T>`, always pointer-backed per T11), an interface (T32), and a function type (T21, D16d). Used
against any other type it is a compile-time error. Calling through a null function value is a null dereference
(T2b).

Its representation is **all-zero bits**, at every nullable type. For a single-pointer type that is the null
pointer; for the two-word shapes it is each word zeroed, so a null `Array<T>` is `{ 0, null }` — `Len()` (E23) of
it is `0` and it reads as genuinely empty — and a null interface is `{ null, null }`.

`null` carries **no scope** (§8): there is nothing for it to outlive, so it flows into a target of any
scope without a containment check. `==`/`!=` against it are the ordinary reference comparisons (E10,
pointer identity), so `p == null` needs no operator of its own.

**T2b (memory safety).** Every reference is nullable; there is no separate non-nullable reference type.
Reading a field or element through a null reference, or dispatching through a null interface, is
**undefined behaviour** — in practice a deterministic trap, address zero being unmapped, which is why null
is the all-zero representation rather than merely a convention. This is the cost of `null`: §8 continues to
guarantee that a reference never outlives what it points at, and no longer guarantees that it points at
anything.

**T3.** An anonymous struct or enum shape (written inline rather than through a `type` declaration)
is a valid type, but has no name and so can never be the target of struct-literal or enum-value
construction syntax (both require a named type — see §5.6,
§5.7). A variable declared with such a type can therefore never be given a value directly; this is
legal but useless, and exists only because the grammar constructing a named type's body
(`type Name struct { ... }`) is the same grammar as any other struct-body type expression.

### 2.2 Primitive types

**T4.** The primitive types are:

| Name | Description |
|---|---|
| `Bool` | boolean, `true` or `false` |
| `Byte` | 8-bit unsigned integer |
| `Int32` | 32-bit signed integer |
| `Int64` | 64-bit signed integer |
| `Float32` | 32-bit IEEE 754 floating point |
| `Float64` | 64-bit IEEE 754 floating point |

**T5.** `Byte`, `Int32`, `Int64` are the integer types; `Float32`, `Float64` are the float types;
together these five are the numeric types. `Bool` is not numeric.

**T6.** There is no implicit conversion between any two distinct types: never between two non-numeric
types, and never between two numeric types unless one side is a literal. A **numeric literal** (§5.1
E4 — a token literal, or one negated
by a single leading unary `-`, §5.2 E11) is the one exception: it implicitly **adapts** to whatever
numeric type it is used against, wherever that type would otherwise have to match exactly - an
assignability context (§5.3 E12: a var-decl initializer, an assignment, an argument, a returned
value) or a binary operator requiring both operands to be the same type (§5.2 E6, E8, E9, E10) - **provided
the value written is representable in that type**. An integer literal is representable in any integer type
whose range contains its value (`Byte` is unsigned, 0-255; T4) and in either float type; a float literal is
representable only in a float type. Adaptation is therefore never a silent truncation, and never turns a
float literal into an integer - but it is not restricted to widening either: `x Byte = 65` and
`b == 'a'` are as valid as `n Int64 = 1`, because the literal has no representation of its own yet and
the value written fits. Where both operands of a same-type-requiring binary operator are literals of
differing numeric types, the narrower adapts to the wider (`Byte` < `Int32` < `Int64` < `Float32` <
`Float64`), subject to the same representability rule. A non-literal value of a different numeric type,
in either direction, requires an **explicit** conversion instead - see §5.12 E26.

**T6a.** Where nothing adapts it, a literal's own type is: `Int64` for an integer literal whose value is
not representable in `Int32` and `Int32` for every other integer literal, `Float32` for a float literal,
`Byte` for a character literal, and `Bool` for `true`/`false`. This is the type `:=` infers (§6.2 D15) and
the type such a literal carries into a context that requires no particular type of it. It follows that an
integer literal too large for `Int32` is never silently truncated by an `Int32` target: its own type is
already `Int64`, so T6 must adapt it, and the value does not fit.

### 2.3 Array types

**T7.** `Array<T>` is the array type: a sequence of `T` values whose length is decided when the array is
built and fixed for that array thereafter. The length is **not part of the type** — `Array<Int32>` is every
array of `Int32`, of any length — and is read with `....Len()` (§5.9). `Array` is a built-in name, taking
exactly one type argument; declaring a type named `Array` is a compile-time error. The element type may
carry a bare reference marker (`Array<Point&>`, an array of references to `Point`), which belongs to the
array's own scope (§8 O5); a marker naming a variable on the element is a compile-time error, since an element
never has a scope of its own.

**T7a.** An array held **inside another value** — a struct field or an array's element — must be a
reference, `Array<T>&`. An array's storage lives apart from the value naming it, so copying the containing
value would share that storage while appearing to copy it. The one exception is a constructor field whose
length is computed at compile time, which is stored in the instance itself (§9.1 C2e). There is no
multi-dimensional array: an array of arrays is `Array<Array<T>&>`, each element an array of its own length,
and a rectangular block is one array indexed `r * width + c`.

**T7b (arrays are held by reference).** An array is held **by value only where its storage is created**: a
declaration of a value array (a local, a global, an inline constructor field, C2e) and a function's result,
which is built where the call's result is put. Everywhere else an array is held through a reference - a
parameter or receiver (D9a), a field or element (T7a), an enum payload, a lambda's capture (D16c) - and handing a
value array to one of those **borrows** it rather than copying it (E12c). So an array is never copied except where
a new one is declared with a value written into it (`b Array<T> = a`), which is a copy because `b` is new
storage; and a destructured result (S4b) is not copied at all - each declared local takes the array the call
built for it.

**T8.** An array is built by `Array<T>(n)` — `n` elements, each `T`'s zero value — or `Array<T>(n, v)`,
each element `v` (§5.4 E13a), or by an array literal (§5.7 E19). `n` is any integer expression; a negative
`n` aborts the program (D14b).

**T10.** Every array has a length, queryable at run time via `....Len()` (§5.9); where it is known while
compiling (a literal, an inline field) `Len()` is a constant and an index out of range is a compile-time
error.

**T11.** **Whether an array is reference-shaped is decided by its reference marker (T24) and by nothing
else.** `Array<T>` is a value: `==` compares element-wise (E10) and assignment gives the target its own copy
of the elements. `Array<T>&` is a reference: `==` is identity and assignment repoints. How an array is stored
— a length paired with storage elsewhere, or, for a literal or an inline field, the elements in place with
their length known while compiling — is a difference in *representation* only and never in behaviour.

**T11a.** A reference to an array takes its length from the array it points to, every time it is assigned
(D15a): the length is held beside the pointer.

**T12.** Two array types are the same type (§2.10) exactly when their element types are the same and they
agree on reference-shapedness (T25a).

### 2.4 Struct types

**T13.** Every struct type is declared with a constructor (§9): `type Name struct( params ) [ error-list ]
{ ctor-body } [ destruct-block ]`. Its fields are the ones its `ctor-body` declares (§9.1 C2), and every
instance is built by calling it (§9.3 C6). There is no field-list form and no struct literal. A struct
whose fields are meant to be set by its user declares an empty parameter list and mutable fields, which
take their zero values (D13) — `type P struct() { x mut Int32 }`, built as `P()`.

**T14.** A struct type is a value type: assignment, parameter passing, and return copy the whole value
member-wise, and `==`/`!=` compare structurally (see §5.2 E10), unless referenced through a marker
(§2.9).

**T16.** A struct type can only embed itself, directly or through any chain of plain (non-array,
non-reference) member types, if that chain passes through a reference marker (§2.9) at least once;
an unmarked, unbroken self-embedding cycle is a compile-time error.

### 2.5 Enum types

**T17.** `enum-body ::= "enum" "{" [ STMNT_END ] { IDEN STMNT_END } "}"`. An enum type declares a
**closed, ordered set of named cases**, of which a value holds exactly one. It has no numeric
representation available to a program: it supports only equality (`==`/`!=`) and structural matching
(`match`/`case`, §6.4) — no ordering, no arithmetic, no explicit conversion to or from any integer type.

Cases are separated by statement ends, not commas (L18/L20), the same way a constructor body's fields are:
a case is a declaration rather than an item in a list.

**T17a.** A case may carry a **payload**, written as a parameter list after its name:

```
enum-body ::= "enum" "{" [ STMNT_END ] { case-decl STMNT_END } "}"
case-decl   ::= IDEN [ "(" [ param { "," param } ] ")" ]
```

A case with no parameter list is a bare tag — what every case was before payloads existed. A value of the
type holds exactly one case, so its size is the largest payload plus a tag, not the sum of all of them. A
enum **none** of whose cases carries a payload has no payload storage at all.

A case's **name is its own**, independent of any type in its payload: two cases of one enum may carry the
same payload type and remain distinct, which is what makes an enum a *disjoint* union rather than an
overlay. `Celsius(Int32)` and `Fahrenheit(Int32)` are two different cases of one type.

`==`/`!=` compare the **tag first, then the live case's payload** — two enum values are equal when they
hold the same case and that case's payload compares equal. The payload is an ordinary struct, so each of
its fields follows E10's own rule for its kind: a reference compares by identity, a value struct
memberwise, a nested enum through this same rule. Two cases that happen to share a payload type are
still distinct (an enum is a *disjoint* union), because the tag is compared first.

**T17b.** An enum value is created by **naming a case**, and by nothing else: `Type.Case` for a bare tag
and `Type.Case(args)` for one carrying a payload (§5.8 E22). The arguments are checked against the case's
declared parameters exactly as a call's arguments are checked against its parameters. An enum type
declares **no constructor** (§9 C1) — selecting a case is what an ordinary function does, fallibly or not,
and a private case name (M6a) already restricts who may construct one, at finer grain than a constructor
could.

**T17c.** A payload parameter written with a reference marker is a **reference parameter** of its case, as a
function's is (§8 O4b): a bare one's scope is determined by the argument (O17), a temporary argument is built
where the enum value lands (O18a), and the constructed value carries that binding, so an enum can hold a
reference that outlives the function which built it. A payload parameter may name an earlier one of the same
case (`&p`, O4a). A scope argument written between the case name and its arguments
(`Parcel.Held&x(Crate(3))`, E25) puts the value — and the temporaries built for it — where `x` lives.

**G8a (composition).** A `type-arg` (G8) may be a **type variable**, so one generic can be written in terms
of another — `Vec<<T>>` inside a declaration that has a `T`. This is what makes a generic type's own
helpers and methods writable once rather than once per instantiation.

**G8b.** A type variable is written `<T>` **everywhere**, type arguments included: `Cell<<T>>`,
`Pair<<K>, <V>>`, `Cell<Cell<<T>>>`. A bare `IDEN` is always a declared type, so a misspelled type name is
an error rather than silently a variable, and writing a variable bare is diagnosed as such. `<T>`
introduces the variable wherever it is written; a function's variables are every `<T>` in its signature,
receiver included — **one set, not left-to-right**, as G3 already has it. The opening `<<` and the
closing `>>` of a type-argument list lex as the shift tokens and are split where a type-argument list is
being parsed, and only there, so `x << 3 >> 1` is unaffected.

An application whose arguments are not all known is a **pattern**, not a type: it has no layout, nothing is
emitted for it, and its constructor is not monomorphized — the same treatment G16 gives a generic function's
body. Substituting into it re-derives the application, so `Cell<T>` inside `Wrap<T>` becomes `Cell<Point>`
when `Wrap<Point>` is built; rewriting only its field types would leave a name derived from the old
arguments, which nothing would match.

A method declared over a still-generic application is a method of **every** application of that generic. A
method declared over a concrete one (`Cell<Int32>`) applies only to that one and takes precedence, so M21's
overloading by receiver type is unaffected.

**G16a.** An instantiation is identified by its generic and its type arguments, and distinct type
arguments always name distinct instantiations. A declared type argument is distinguished by its **owner
and name** (T29), matching the identity rule the type itself has, so two modules each declaring a `Point`
give two instantiations of `Vec<Point>` rather than one. An array argument is distinguished by its element
type, its length, and whether it is reference-shaped — every part of what makes an array type distinct
(T25a).

Instantiations are emitted by every object that uses one and deduplicated at link time, so several modules
instantiating one generic over one type is ordinary and costs nothing beyond the duplicate compilation.

**G18.** Every rule about what a type **contains** is re-checked against each instantiation's substituted
types, not only against the generic's own declaration. A generic cannot answer such a question about
itself: a type variable contains no reference, no destructor-bearing struct and no interface, so a rule
asking what a field of type `<T>` holds is answered vacuously at declaration, for every `T`, and would stay
answered vacuously forever. The instantiation is where the question has an answer.

**T18.** An enum type must declare at least one case; case names must be unique within the type. A
enum's zero value (D13) is its **first declared case**, by representation: a zero tag selects it, and any
reference in a later case's payload is unreachable without a `match` whose tag test selects that case
(S13b). A first case carrying no payload therefore makes the type's zero value a complete, meaningful one —
which is exactly `Option`-shaped when the other case holds a reference.

### 2.6 Error types

**T19.** `error-decl ::= "error" IDEN "{" IDEN { "," IDEN } [ STMNT_END ] "}"` is a **top-level**
declaration in its own right — not a `type Name error { ... }` form, and not reachable from a
general `type-expr` position (T2). An error type declares a closed, ordered set of named words,
similar in shape to an enum body but declared with its own keyword and usable only
in the specific positions described in §7.

**T20.** An error type's values (words) carry no data; the full semantics of error types — the
error-union return convention, `try`/`catch`, and the `error` statement — are specified in
§7.

### 2.7 Function types

**T21.** `func-type ::= "fn" func-sig`, where `func-sig` is the parameter list, optional return
type, and optional error list described in §3.4. A
function type is usable as a variable's, field's, or parameter's declared type, making a function
(named or, wherever a value of function type is otherwise obtained, referenced by that value) a
first-class value that can be passed and called through it. A value of function type is **reference-shaped**:
it refers to the function together with whatever a lambda captured (D16c), so it is nullable (T2a) and §8's
rules for references apply to it (D16d). `==` compares by identity: a named function is one value however
often it is named, and each evaluation of a capturing lambda makes a new one.

**T22.** Two function types are the same type (§2.10) only if they agree on parameter count, each
parameter's type and `mut` in order, presence and identity of a return type, and their error lists - the
same error types **in the same order**, since a fallible call reports an error by its position in the
callee's own list (§7).

**T22a.** A function whose signature carries a **scope obligation** (§8 O10b) - a relation between its
parameters' scopes that every caller must establish - cannot be used as a function value: a call through a
value of function type checks nothing of the kind, so the obligation would go unchecked. Using such a function
as a value is a compile-time error naming the obligation.

### 2.8 Scopes

**T23.** A **scope** is a region of memory (§8 O1). It is not a type and not a value, and it has **no
name**: there is no `scope` type, no expression of scope kind, and nothing of scope kind may be declared,
stored, compared, or passed as an argument. A program refers to a scope only by naming a variable that lives
in it — inside a reference marker (`&x`, T24) or as a call's scope argument (E25) — or by a bare marker,
whose scope is fixed by its position. The full semantics are specified in §8.

### 2.9 Type references and reference markers

**T24.** `type-ref ::= alias-chain IDEN [ type-args ] [ reference-marker ]`, where
`reference-marker ::= "&" [ IDEN | "return" ]`, `type-args` is defined in §12.3 G8 (required when, and only when, the
named type is generic, and always for `Array`, T7), and `alias-chain IDEN` (§4.4 M8) names a primitive
type, `Array`, or a struct/enum/error/interface type declared in the referencing module or reached through
an import alias chain. This is the `type-ref` alternative of `type-expr` (T2). A struct or array type may
carry a reference marker, making that type **reference-shaped** instead of embedded. A primitive type may
never carry a reference marker; doing so is a compile-time error.

```
Point&                 a reference to a Point
Array<Point>           an array of Point values
Array<Point&>&         a reference to an array of references to Point
Array<Array<Int32>&>   an array of references to arrays, each its own length
```

There is no reference-to-a-reference: at most one marker may be written on a type, so two in a row
(`Point&a&b`) is a compile-time error rather than a double reference — it is one position written twice,
and one of the two scope tags could only be discarded.

A marker's optional `IDEN` names a variable that lives where the reference does (§8 O4a). Each marker's optional `IDEN` must begin on the same source line as
that `&`; an identifier on a later line is not part of the marker, which therefore reads as bare.
(Without this, a bare marker ending a line would silently absorb the identifier opening the next one,
since `&` triggers no `STMNT_END` under L18 — see L20a.)

**T25.** A bare marker (`&`) and one naming a variable (`&x`) both make the type reference-shaped; the
distinction between the two (which region of memory the reference belongs to) is an ownership
concept with no effect on type identity (T12, T27) or on which operations are valid — see
§8.

**T25a.** Reference-shapedness itself **is** part of type identity (T27): `Point` and `Point&` are
different types, one an aggregate and the other a pointer to one, and likewise `Array<Cell>` and
`Array<Cell&>`, `Array<Byte>` and `Array<Byte>&`. Converting between a value and a reference to it is an
*assignability* rule (§5.3 E12), not a statement that the two are the same type: a marker always changes
the type.

**T25b (reference permission).** A reference type is either **writable**, written with `mut` before it
(`mut Point&`, `mut Array<Byte>&`), or **read-only**, written without it (`Point&`). Through a read-only
reference nothing it refers to may be written: no field or element of the referent may be assigned, and the
reference may not be passed or stored where a writable one is wanted. The permission is part of the type at
every level - an array's element type, a type argument, a function type's parameters and result, a function's
result:

```
Array<String&>         an array of read-only references - it may be filled; what they refer to may not be written
Array<mut String&>     an array of writable references
List<mut Node&>        a list of writable references
fn first(l List&) Node&l           a read-only result borrowed from l
fn grab(l mut List&) mut Node&l    a writable one
```

It is **shallow**: a reference stored inside a referent keeps the permission its own type gives, whichever
reference it was reached through. `mut` before a type that is not reference-shaped is a compile-time error,
except at the top of a declaration (below).

At the **top of a declaration**, `mut` belongs to both the binding and, for a reference, its permission: a
parameter (D9), global (D11) or field (C3) written `mut` may be assigned and, if a reference, written through -
a writable global reference is `v mut Point&` - and one written without it may be neither. A **local** takes
no `mut` (D11a): its own top-level reference is writable unless what initializes it is read-only, in which case
the local is read-only too (writing through it is the error, where it is written); `x := e` gives it `e`'s type,
permission included. A function's **built** result (§8 O13, a reference type naming no parameter) is writable,
since it is new storage only the caller holds; a result **borrowed** from a parameter (`T&p`) is read-only
unless written `mut T&p`.

**T25c (converting permission).** A writable reference converts to a read-only one wherever a value is
assigned, passed or returned (E12); a read-only one never converts to a writable one, which is a compile-time
error - so nothing read-only can be written by being passed to something that writes. The conversion is at the
outermost level only: inner levels (`Array<mut T&>` against `Array<T&>`) must agree exactly, since letting
them differ would let a read-only reference be stored where a writable one is later read back out.
A value **borrowed** into a reference (E12c) gives a writable one only if the value may itself be written - a
local, a `mut` global, a `mut` parameter's copy - and a read-only one otherwise. A slice (E16a) has its base's
permission. A **fresh** value - a literal, a constructor call, `$x` and joins (E11a/b), `Array<T>(n)` - is
writable, and an array literal's elements take the target's permission when every one of them may be written.

**T25d (static literals).** Nothing is written through a read-only reference, so a literal known while
compiling - text, or an array of constants - that reaches one (a parameter without `mut`, a read-only field or
element) is the constant data itself: no storage is allocated and nothing is copied, at every evaluation. The
plain data an immutable global holds is read-only data the same way. A writable target - a local, a `mut`
parameter or field - gets a copy of its own. Which happens is not observable except as speed.

**T26.** A reference-shaped struct or array is heap-indirect: the value held by a variable, field,
or parameter of that type is a pointer, not the aggregate itself, and `==`/`!=` on it compare
pointer identity rather than structural content (see
§5.2 E10). An unmarked struct or array is a plain value.

### 2.10 Type identity

**T27.** Two types are the **same type** if and only if:
- both are the same primitive (T4), or
- both are array types and satisfy T12 (length-kind, lengths, and element type all agree), or
- both are function types and satisfy T22, or
- both are struct, enum, error, or interface types declared with the same name in the same module,
  *and* agree on reference-shapedness (T25a) and, inside another type, on permission (T25b) — `Point` and `Point&` are different types, one an
  aggregate and the other a pointer to one, and converting between them is an assignability rule
  (§5.3 E12), not an identity one.

Any other pairing (different primitives, an array against a non-array, two structs with the same
field shape but different declared names, etc.) is not the same type. olang has no structural
typing for struct, enum, or error types: identity is always by declared name and declaring module,
never by shape.

**T29.** A **declared** type is nominal, including one whose underlying shape is a primitive (T4).
`type Meters Int32` and `type Feet Int32` are different types, and both differ from `Int32`: a value of one
is not assignable to the other, and only an explicit conversion crosses between them. `Meters(x)` converts
into such a type exactly as `Int32(x)` converts out of it (§5.12 E26); where the two share a representation
the conversion moves nothing. An undeclared primitive has no owning module and no name, so two occurrences
of `Int32` remain the same type.

Nominality is what gives a named type an identity to attach methods to (§4.4 M19).

**T29d (a constructor for a declared primitive type).** A type declared over a primitive may declare a
constructor, written after the type on the same line: `type Percent Int32(v mut Int32) [? errors] { ... }`.
It takes exactly **one** parameter, of the primitive it is declared over: the value being constructed. The
body is an ordinary block that may check it (failing through its own error list, so the call is then written
with `try`) or change it, and the parameter's final value is the result; `return` is rejected in it, as in any
constructor (C13). `Percent(x)` calls it **in place of** the plain conversion (T29), so it is the only way a
value enters the type. A bare literal therefore does not adapt to such a type (`p Percent = 150` is an error;
`Percent(150)` is written) — but arithmetic on the type keeps producing it **without** running the
constructor: the constructor checks how a value enters, not what arithmetic later makes of it.

```
type Percent Int32(v mut Int32) {
    if v > 100 { v = 100 }        # Percent(150) is 100
}
type Checked Int32(v Int32) ? RangeError {
    if v < 0 { error RangeError.NEGATIVE }        # try Checked(x)
}
```

A declared primitive type takes no destructor and there are no references to primitives (T24): the value is
always copied, so there is no single instance for a destructor to release or a reference to name.

**T29a (a declared type over an array).** Nominality reaches an **array** too: `type String Array<Byte>` is a
distinct type from `Array<Byte>`, with its own identity and therefore its own methods. Its *representation* is
unchanged, so it indexes (E16), slices (E16a), reports `Len()` (E23), joins as text (E11b) when its elements are `Byte`, renders under `$`
(E11a) and marshals across the `extern` boundary (X3) exactly as the array it is declared over. This is how
a built-in array type is given methods at all.

Three rules govern getting values in and out, and they are deliberately asymmetric:

- **A literal adapts**, exactly as a numeric literal adapts to a named numeric type (T6):
  `s String& = "hello"`. A literal is written at the point of use and has no type worth preserving.
- **A value does not.** One that already has a type keeps it; `String(v)` is how it changes, and the
  conversion is admitted whenever `v` would fit the underlying type — so it covers E12's promotions, not
  merely identical shapes. It moves nothing.
- **A named type flows freely into its own underlying type**, with no conversion written: a `String` is
  usable wherever a `Array<Byte>` is wanted. That direction discards a claim rather than making one, which is
  always safe — and it is the same latitude `Int32(m)` already gives a named numeric, without needing a
  spelling for it.

**T29e (inherited array methods).** A declared type over an array (T29a) has every method of the array it is
declared over (M19, M19d) beside its own: `s.Count(...)` on a `String` is `Array<Byte>`'s `Count`, and a
`type Nums Array<Int32>` sorts with `Sort`. An inherited method is never overridden: declaring a method whose
name an inherited one already has is a compile-time error.

**T29c (`String`, text).** The prelude (§4 M19d) declares `type String Array<Byte>`, the text type, and
the text operations are its methods. Text written in the program — a string literal, a `$` rendering
(E11a), a join (E11b) — is a `String` wherever one is wanted: as a declaration's initializer with `:=`, as a
method's receiver (`"  x ".Trim()`), against a `String` parameter or target, and as the other operand of a
`String` value in `==` or `!=` (`unit == "cm"`). Like a literal (T29a) it is
a temporary with no type worth defending, and it is text by construction. Any other bytes become a `String`
only by `String(bytes)`, which copies nothing. A slice of a `String` is a `String` (E16a), and a `String`
goes wherever an `Array<Byte>` is wanted. A `String` is bytes: no encoding is checked. `==` on two
`String&` is identity (E10); comparing what two texts say is `a.Eq(b)`.

**T29b.** An array satisfies an interface (§2.11 T31) on the same terms as any other type, whether it is
a declared array type or a built-in one, of either length kind. A run-time-length array is a
`{ length, storage }` pair held by value rather than something at an address, so the interface value's
instance is that pair, and T33's identity for it is the storage and the length it names.

**T28.** Nothing in this specification defines implicit conversion between types beyond T6. Where a
context (assignment, argument passing, return, comparison) requires two operand types to match, it
requires the same type under T27 unless a specific rule elsewhere states an exception.

### 2.11 Interface types

**T30.** An interface type declares a set of named method signatures and nothing else — no fields, no
constructor, no destructor, no storage of its own:

```
interface-body ::= "interface" "{" [ STMNT_END ] { method-sig STMNT_END } "}"
method-sig     ::= [ "mut" ] IDEN func-sig
```

`func-sig` is the parameter list, optional return type and optional error list of §3.4, written without a
leading `fn`. Method names must be unique within the interface. An interface may declare no methods at
all; such a type is satisfied by every type, built-in types included.

The leading `mut` marks a method that needs a **mutable receiver** — one that writes through to the
instance the interface value names. It is the receiver half of D9's two axes, and it is declared here
because the concrete receiver is not visible at a dispatch site: without it, whether `w.M()` may write to
whatever `w` names would depend on a type the call cannot see.

**T31.** A type `T` **satisfies** an interface `I` when, for every method signature in `I`, `T` has a
method (§4.4 M19) of that name whose

- receiver's type is `T` up to reference-shape (`T`, `mut T`, `T&`, or `mut T&` — the same latitude E12
  gives any argument) — or, for a compile-time-length array `T` = `E[N]`, is `Array<E>&`, the widening E12
  performs at any call — carrying no scope *name* (a named tag would be a second claim about the same
  instance, and one no dispatch could bind — the interface value's own tag is where that instance's
  lifetime is recorded),
- receiver is a `mut` reference if and only if the signature is declared `mut`,
- remaining parameters agree in count, order, and type (T27),
- return type agrees — both absent, or both present and the same type,
- declared error list (§7.1) agrees exactly, in the same order.

A private method name (M6) belongs to the module that wrote it, so only a type declared in *that* module
can supply it. An interface with a private method is therefore **sealed**: no other module can implement
it, though any module may hold, pass and call a value of it. This is a property of the two declarations,
not of where the conversion is written.

Satisfaction is **structural and implicit**: a type declares no intent to satisfy an interface, an
interface names no implementing types, and satisfaction is decided from the two declarations alone at each
point where a value flows into an interface-typed target (§5.3 E12d).

Implicit satisfaction is what lets a module fit a type it did not declare to an interface of its own:
under M19 only a type's declaring module can write its methods, so a declaration of intent would have to
be made there too, and could name only interfaces that module already knows. A built-in type has no
declaring module at all.

This is §4.4 M19's method lookup, unchanged: an interface is satisfied by the methods a type actually has,
under the same coherence rules that decide which methods those can be.
Requiring the error lists to agree *in order* is an implementation restriction rather than a semantic one —
the error-union ABI (§7.4) numbers a function's error words by their position in its own declared list, so
identical lists are what let a dispatch reach the real function directly.

**T32.** An interface type is **reference-only**: every `type-ref` naming one must carry a reference
marker (T24), exactly as a destructor-declaring struct must (§3.3 C11). An interface value names an
instance belonging to some other type, and has no storage of its own for a by-value form to denote. The
marker is still written at every use, and carries the scope tag (§8) that makes the reference the lifetime
claim it is.

**T33.** An interface value is the pair *(the concrete type it holds, the instance it names)*. `==`/`!=`
compare both halves: two interface values are equal exactly when they name the same instance of the same
concrete type, which is E10's pointer identity applied to a value that has two pointers. For a
run-time-length array (T29b) the instance is its `{ length, storage }` pair, so two interface values over
one array are equal exactly when they name the same storage with the same length — `a[:2]` and `a[:3]` are
different instances of one buffer.

**T34.** An interface type is never constructed: it is not the target of a constructor call, it declares no constructor or destructor of its own, and it has no members. The only
name that may follow a `.` on an interface value is a method (§5.5 E27a).

**T35.** A method signature in an interface may not introduce type parameters of its own (§12).
Dispatch selects one already-compiled function through a run-time value, and a method generic in its own
right names a family of functions not chosen until a call; there is nothing for the dispatch to point at.

**T35a (generic interfaces).** An interface type may declare type parameters, after its name exactly as a
struct type does (G6): `type Source<T> interface { mut Next() (<T>, Bool) }`. Its method signatures may use
them, including in a result alone (G4 does not apply: the interface's own variables are fixed by its
arguments, not inferred at a call). An **application** such as `Source<Int32>` is an ordinary interface
type — its methods concrete, so every T30–T34 rule applies to it unchanged — and two applications are the
same type exactly when their arguments are (G16a). A generic function may take `Source<<T>>&`, binding `T`
from an interface value's arguments (G9). A method of a generic type (`fn (b mut Box<<T>>&) Next() (<T>,
bool)`) satisfies an interface through the instantiation the concrete receiver determines, which is one
function; a method with type variables its receiver does not determine satisfies nothing.

**T35b (built-in interfaces).** The prelude (M19d) declares `type Iterator<T> interface { mut Next() (<T>,
Bool) }`, visible in every module. It is what `for ... in` walks besides an array and a range (S9a).

**T36 (no type punning).** Storage is never read as a type other than the one it was written as. There is
no union, no cast between a reference and anything else, and no reinterpretation of one type's bytes as
another's: a numeric conversion (E22) produces a value, a `enum` (§4.5) reaches a payload only through
the case its tag selects, and `&` (T24) is typed. Two accesses of different types therefore never overlap,
except where an external function writes storage handed to it (X3b), which this language does not
describe.

This is a property an implementation may rely on when deciding whether two accesses can refer to the same
storage.

## 3. Declarations

### 3.1 Top-level structure

**D1.** A module (source file) is a sequence of zero or more top-level declarations, in any order:

```
top-decl ::= type-decl | import-decl | error-decl | func-decl | var-decl | test-decl
           | extern-func-decl | top-if
```

`import-decl` is specified in §4; `test-decl` in
§10.4; `extern-func-decl` in §11; `top-if`, conditional compilation, in §10.5 (B9). The remaining four are covered below.
Declaration order within a module is not significant: any top-level declaration may refer to any
other, declared earlier or later in the same file, and to any name reachable through an import
(§4).

### 3.2 Namespaces

**D2.** Each module has three independent sets of names, each requiring uniqueness only within
itself:

- **types** — struct, enum, and error type names (§2.4–§2.6);
- **vars** — function, external function (§11 X1), and global variable names, sharing one set (no
  two of these may share a name; see D7);
- **imports** — import alias names (§4.2).

Declaring two entries with the same name in the same set, within the same module, is a compile-time
error. This specification does not define behavior for reusing a name across two *different* sets
in the same module (e.g. a type and a global variable sharing a name).

**D3.** A local variable (a parameter, or a variable declared inside a function or test body, §3.5)
occupies a nested scope, distinct from its module's own `vars` set. A local declaration must not
reuse a name already declared by an *enclosing* local scope of the same function (including that
function's own parameters) — that is a compile-time error, not shadowing.

**D3a.** There is **no shadowing** at all: a local declaration or a parameter may not reuse a name its
module declares in its `vars` set (a global, a function or an external function), nor the name of a build
constant (B10); either is a compile-time error. A module is what keeps a namespace small enough to manage,
so within one a name means one thing everywhere — which is also what lets a condition be read before its
scopes are known (S8b). Names another module declares are reached only through an import alias, so they
never collide with a local.

### 3.3 Type and error declarations

**D4.** `type-decl ::= "type" IDEN [ type-params ] type-expr [ prim-ctor ] [ STMNT_END ]`, with
`prim-ctor ::= "(" param-list ")" [ "?" error-list ] block` valid only over a primitive (T29d), where `type-params`
(§12.3 G6) declares type parameters and is valid only for a
struct type, and `type-expr` is defined in
§2.1; the struct shape (T13) is specified fully in
§9. The declared name enters
the module's `types` set (D2) and is visible throughout the module, and, per §4.3, outside it if
capitalized.

**D5.** `error-decl` is specified in §2 T19. Its declared name also enters
the module's `types` set (D2) — an error type and a struct/enum type may not share a name within
one module.

**D6.** A named struct type may embed itself (directly or through a chain of other named types) only
through a reference marker at some point in the chain (T16). An enum or error type may never
reference any other type (T17, T19).

### 3.4 Function declarations

**D7.** `func-decl ::= "fn" [ receiver ] IDEN func-sig block`, with `receiver ::= "(" param ")"`. The
declared name enters the module's `vars` set (D2). `block` is specified in §6.1.

A `receiver` makes the declaration a **method** (§4.4 M19): its `param` becomes parameter 0 of `func-sig`,
ahead of those in the parameter list, and is in every other respect an ordinary parameter — `mut`, a
reference marker and a scope tag read exactly as they do there. A declaration without a receiver is never
a method, whatever its first parameter's type.

**D8.** `func-sig ::= "(" param-list ")" [ ret-type ] [ "?" [ error-list ] ]`, where:

```
param-list      ::= [ param { "," param } ]
param           ::= IDEN [ "mut" ] type-expr [ "=" expr ]
ret-type        ::= type-expr | "(" type-expr "," type-expr { "," type-expr } ")"
error-list      ::= error-list-item { "+" error-list-item }
error-list-item ::= alias-chain IDEN
```

The return value comes first (`ret-type`, bare - no marker of its own), and the error set (if any)
follows it, marked with a leading `?`: the marker attaches to the error set, not the return type, so
`fn f(...) T { }` (a return value, no errors) and `fn f(...) ? ErrA { }` (errors, no return
value) are both unambiguous with nothing but an optional bare type-expr ever appearing before the
`?`. `ret-type`, when present, is the function's success type (the type of a normal `return`ed
value); a function with no `ret-type` returns no value (bare `return`/fall-through only).
`alias-chain IDEN` (§4.4 M8) never carries an array suffix or reference marker in this position
(§2.6's error types are never array or reference-shaped, unlike the general `type-ref`, T24). Each
`error-list-item` must name a declared error type (§2.6). `?` with nothing after it declares **the default
error** (§7.6) and only it; a list of types declares those types and nothing else.
See §7 for what a `error-list`'s combined set means.

**D8c (several results).** A `ret-type` written as a parenthesized list of two or more types declares that
the function returns **several values**, one per type, in that order. They are not one value: there is no
tuple type, and a call returning several values may appear only

- as the right-hand side of a **destructuring** statement (S4b),
- as the `expr` of a `return` in a function declaring the same results (S15), which passes them on whole,
- after `spawn` with one target per result (P1g),
- as the **only** argument of a call (D8d), or
- alone as an expression statement (S3), discarding them.

Anywhere else — an initializer, an operand, one argument among others — it is a compile-time error. Two values
held together as one value are a `Pair` (M19d); there is no tuple type and no anonymous struct type. Each result is
checked on its own terms everywhere a single value would be: its type, its scope tag (§8: every built
result is in the one result scope, O13/O14), and its fit at the target.

**D8d (passing several results on).** A call returning several values written as the only argument of a call
— a function, a method, a constructor, an enum payload or a conversion — passes its results as that call's
arguments, the first result to the first parameter and so on: `add(divmod(17, 5))`. The inner call is evaluated
once, before the outer one. There must be exactly as many results as the outer call takes arguments (a
parameter's default is not used), and each result is checked against its parameter as any argument is (E12),
including the scope its parameter gives it (§8 O18a: a result built in the inner call's result scope lands where
the outer call's parameter says). The inner call may be a `try` (E24), though several defaults stay confined to
destructuring and `return` (R9a). To pass some results, or others beside them, destructure first.

`_` is not a name: it discards a value in a destructuring or `spawn` target list, and declaring a
variable, parameter or global named `_` is a compile-time error.

**D8a.** A parameter may declare a **default value** with `= expr`. `expr` must be **computable at
compile time** (§13 K1): a literal, or any expression the compile-time evaluator can compute, including a
constructor call (`p Point = Point(0, 0)`). It is evaluated on behalf of callers the declaration cannot
see, so it must have a value and no other behaviour - it reads no mutable global, calls no `extern fn`,
and builds nothing with a destructor. It is checked in the declaring module, and one that cannot be
computed is a compile-time error naming what stops it.

**D8b.** Defaulted parameters must be **trailing**: once one parameter declares a default, every
parameter after it must too. A call may then omit any number of trailing arguments (E14), and may reach
past a defaulted parameter with the `default` keyword (E14a). The same rules apply unchanged to a
constructor's own `param-list` (§9.1 C1).

**D9a.** A parameter whose type is an **array** must carry a reference marker (T24) on the array itself:
a by-value array parameter is a compile-time error. Passing an array by value copies it, silently and in
time proportional to its length, at every call — and a `mut` one would then be written by the callee where
the caller can never see it — the hazard the `&` marker exists to prevent, arising here from its absence
rather than its presence. Requiring the marker also means one rule covers both length kinds: what
makes a parameter alias the caller's array is `&`, never how the array's length happens to be known.

This applies to the array itself, not its elements: `Array<Handle&>` is an array of references passed by
value and is rejected; `Array<Handle&>&` is a reference to it and is accepted. It does not apply to an `extern-param`
(§11 X3), which marshals to a raw pointer and so never copies anything to begin with.

**D9.** A parameter is immutable unless declared with `mut` (D8); see D11 for how this differs from
a local variable. `mut` carries its ordinary meaning — this can be assigned to — and combines with the
parameter's type rather than modifying it: for a value parameter it makes the callee's own copy
writable, leaving the caller unaffected either way; for a reference parameter (T24) it makes the
**caller's own instance** writable, so the caller observes the write - the parameter's type is then a writable
reference (T25b), and only a writable argument may be passed to it (T25c). Whether a call writes to the
caller's value is therefore readable from the signature alone: `&` says whose instance it is, `mut`
says whether it may be written, and the two are independent. A parameter's reference marker may
name an earlier parameter (`b N&a`, §8 O4a), and the two arguments must then live in one scope; see §8.

**D16 (lambdas).** A **lambda** is a function written as an expression, with no name:

```
lambda       ::= "fn" "(" [ lambda-param { "," lambda-param } ] ")" [ ret-type ] [ "?" [ error-list ] ] block
lambda-param ::= IDEN [ "mut" ] [ type-expr ]
```

Its value has the function type its signature describes (T21), and it is checked and behaves as a function
declaration's body does: `return` leaves the lambda, and is required to give a result - a lambda's body never
yields one implicitly - and `error` and an uncaught `try` leave it with an error of its own.

**D16a.** Where a lambda is written against an **expected function type** - an argument for a parameter of
function type, the initializer of a declaration with a written type, the right-hand side of an assignment,
or the value of a `return` - that type supplies whatever the lambda leaves out: an omitted parameter type,
the result type and the error list. Whatever the lambda writes must agree with it. A parameter of a generic
function (§12) supplies what its type arguments already fix; a type variable reached only through the
lambda's result is then inferred from it, as from any argument (G9).

**D16b.** Without an expected type, every parameter's type must be written, and the result and errors not
written are taken from the body: the result is the type of the first `return`'s value - text is a `String`
(T29c) and a numeric literal its own type - or none when the body returns no value; the errors are those its
`error` statements and uncaught `try`s produce, in the order they first appear, and a plain `error` makes it
fail with the default error alone (§7.6).

**D16c (captures).** A lambda's body may use the variables - locals and parameters - of the body it is
written in. Each one it uses is **captured** when the lambda is made, as though passed to a parameter of its
own type:

- a **value** is copied, and the lambda's copy is **read-only** - changing the variable afterwards does not
  change the lambda, and writing to the copy is a compile-time error;
- a **reference** keeps naming the very instance it names (the copy is of the reference), and may be written
  through exactly when the variable may be (D9) - this is how a lambda changes state outside itself;
- a value **array** - text included - is **borrowed**, not copied, since copying one is never implicit (T7b):
  the lambda holds a read-only reference to the variable's own storage, sees later writes to it, and lives no
  longer than it (D16d);
- a value holding references cannot be captured; a reference to it is captured instead.

A lambda's parameters and locals may not reuse the name of a variable it could capture.

**D16d (where a lambda lives).** A lambda's value is a reference to what it captured (T21). One capturing no
reference is built where it lands, as any temporary is (E12c). One capturing references lives where they do:
in their one scope, or - when they live in several - in the innermost block among them, or else the block it is
made in. Every rule for a reference (§8) then decides where it may be stored, passed and returned, so it can
never be called after something it captured is gone. A function named as a value captures nothing and fits
anywhere. Nothing is written through a function value itself, so it need only outlive where it is put: the
exactness O25 requires of a reference does not apply to one.

**D16e (spawning a lambda).** `spawn fn() { ... }` starts a task running the lambda's body (§6.8 P1). The lambda
takes no parameters; its captures are made when the `spawn` runs, so a loop spawning one per iteration hands
each task its own copy of the loop's variables.

**D10.** A function's body is a block (D7); control leaving the block without an explicit `return`
is equivalent to a bare `return` with no value, which is only valid when the function declares no
`ret-type`.

### 3.5 Variable declarations

**D10a.** A function declaring a result type must produce one on **every** path: control may not reach
the end of its body without returning. Falling off the end is a compile-time error.

Whether a path leaves is decided **structurally**, with no dataflow analysis and no constant folding. A
`return` leaves, and so does an `error` (§7), `done`, `fail`, `abort` and `unreachable` (§6.6). An `if`
leaves only when it has an `else` and both sides leave; a `match` only when every clause leaves and it is
either exhaustive by §2.5 S13a or has a `nomatch` that leaves. **A loop never counts**, even one whose
body always returns — `break` (S11) makes a body leaving and the loop leaving different questions, and
answering the second needs a reachability pass this rule does not have.

So the rule rejects some functions that do in fact always return, which is what `unreachable` (S16d) is
for. That is the deliberate trade: a structural rule a reader can apply by eye, plus one word for the
cases it cannot see. Before it, falling off the end returned a silently zero-valued result — `0` for a
number, an all-zero struct, or a **null reference**.

**D11.** A variable declaration, at module level (a **global**) or inside a function/test body (a
**local**), has one of three forms:

```
var-decl ::= IDEN [ "mut" ] type-expr [ "=" expr ] STMNT_END
           | IDEN [ "mut" ] ":=" expr STMNT_END
```

The `mut` keyword is meaningful only for a **global**: a global declared without `mut` is immutable
(assignment to it is a compile-time error, and a reference global is read-only, T25b); a global declared with
`mut` is mutable, and a reference one writable. A **local** (including a `for`-loop's own init variable, §6.3)
is always mutable, and its own top-level reference writable, so there is nothing to declare.

**D11a.** Writing `mut` on a local is a compile-time error: it would state nothing, and its absence
elsewhere would read as immutability that does not exist.

**D12.** In the first form (explicit type), `= expr` is **optional for every declared type**: a
declaration with no initializer is D13's zero value. When present, `expr`'s type must fit the declared type
(assignability, defined per-context in §5 and §8).

**D13.** A declaration with no initializer is its declared type's **zero value**: `false` for `Bool`,
`0`/`0.0` for numeric types, `null` (T2a) for anything nullable, all-zero fields for a struct, an empty
array for `Array<T>`, and the first-declared case for an enum — an enum and an error type have no other
meaningful "zero", so this is the type's first case by representation, not by any declared meaning. The
zero value is defined at every type, and a reference's is `null`, so no type is excluded. For a **global**
this is the loader's zeroed storage — real BSS, costing nothing at run time.

**D14.** Storage for an array is set aside by building one: `Array<T>(n)` or `Array<T>(n, v)` (T8, E13a),
written anywhere an expression may be. Like any value with no storage of its own it is built in the scope of
whatever it lands in (§8 E12c): a local's block, a reference's tagged scope, the instance a constructor
field belongs to (C2d). Every element is `T`'s zero value, or `v`. A global's initializer builds into the
program's own scope, which is never closed (§8 O1b).

**D14b.** `n` must evaluate to a **non-negative** length. A negative one aborts the program, the same hard
abort an out-of-range slice bound produces (§5.9 E16b); a length of `0` is valid and produces a genuinely
empty array.

The check is cheap for the same reason E16b's is and E16's was not: it is paid **once per allocation**,
never per element access. A negative length multiplies out to a negative byte count, which the allocator's
unsigned comparison would read as an enormous free capacity.

**D15.** In the second form (`:=`), no type is written; the declared type is read from `expr`, which
must be a literal (an array literal or primitive literal — see §5), a **call** that
returns a value (E13, including a constructor call, `Array<T>(n)` and a `try` call), a **field read**
(`c := l.head` — the field's declared type, as a call's is its callee's result), an **element read**
(`t := a[i]` — the array's element type), a **slice** (E16a), or
text built by `$` or a join (E11a/E11b); text declares a `String` (T29c). An array literal declares an
`Array<T>` (T7): its length is not part of the type, and a later assignment may change it. It may not be
`null`, a variable read, or any other expression built from these, which the reader would have to type
in their head. A reference-shaped result writes no scope tag into the declaration: the local takes its
initializer's exact scope (§8 O25a).

**D15a.** An array declared by either form holds its length beside its storage, so a later assignment may
give it an array of any length: a value `Array<T>` gets its own copy of the new elements, a reference
`Array<T>&` repoints.

## 4. Modules

### 4.1 Modules

**M1.** A module is **one `.olang` file**. A directory is never a module: it only groups files, and its name
is part of their import paths (M23). Two imports reaching the same underlying file, however spelled or
reached, refer to the same module (see §4.6).

**M22.** A module sees exactly what it declares and what its **own** imports name. Files in one directory
share nothing: a file using a name another file in its directory declares imports that file, as it would
any other, and its imports are its own.

**M22a.** A module has an **identity**, from which its symbols and object files are named (§10 B3b): its
path without the `.olang` extension. For a std module it is `std/` followed by its path within the standard
library (`std/map`); for a remote module, the repository and the path within it as the import names them
(`example.com/me/tools@v1/mathx/add`); for a local module, its path relative to the working directory the
compiler was run from (`geom/rect`), or its file name alone when it lies outside that directory. A relative
import (M23) is identified by the importing module's identity with its last element replaced by the
relative path - so `import "map"` written in `std/io` names `std/map`, the module `import "std/map"` names,
and each version of a repository has its own copy of what it imports relatively.

**M2.** Module imports may form cycles: module A may import module B while B imports A. This is
legal without restriction as long as neither side needs the other's own top-level names to be fully
resolved before *its own* top-level declarations can be scanned (in practice: cyclic imports work
because scanning a module's own declared type names never requires parsing or resolving anything in
an imported module first — see §4.4 for the one place import order *does* matter for a module
participating in a cycle).

### 4.2 Imports

**M3.** `import-decl ::= "import" [ IDEN ] STR_LIT [ STMNT_END ]`. `STR_LIT` names the imported module
in one of the forms of M23. `IDEN`, when present, is the alias other code in this module uses to refer to
the imported module's exported names (§4.4).

**M23.** An import path names a **file, without its extension**, in one of three forms told apart by shape
alone:

- **std**: `std/PATH` - a file of the standard library, which is located by the implementation (in this one,
  the `OLANG_STD` environment variable, or `../std` beside the compiler); `std/map` is the file `map.olang`
  at the standard library's root;
- **remote**: `HOST/OWNER/REPO[@REF]/PATH`, where `HOST` contains a `.` - the file `PATH` within a remote
  version-controlled repository, at the branch or tag `REF` (its default branch when omitted);
- **relative**: any other path - a file relative to the **importing module's own directory**, never the
  working directory, so a module means its own neighbours wherever it was found. It may descend into
  directories (`geom/rect`) and climb out of them (`../shared`). Within the standard library or a remote
  repository a relative import stays within it: `import "map"` in `std/io` is `std/map`.

A path ending in `.olang`, a path naming no file, and a first element `std` naming anything outside the
standard library are compile-time errors. The first element of a relative path is therefore never `std`
and never contains a `.`.

**M23a.** A remote repository is **fetched once** and kept in a local cache (in this implementation, a git
clone under `OLANG_CACHE`, default `~/.cache/olang`, one directory per `HOST/OWNER/REPO[@REF]`). Every later
compilation reads the cached copy and needs no network; nothing is ever re-fetched implicitly, so a build
does not change because the remote did. Two different `@REF`s of one repository are two separate
fetches and two separate sets of modules. A fetch that fails is a compile-time error, reported against the
import.

**M4.** When `IDEN` is omitted, the alias is derived from the import path's **last element**: any leading
path is stripped. `import "shared"` and `import shared "shared"` are equivalent, as are `import "std/list"`
and `import list "std/list"`. If the derived alias is not a legal identifier
(L6 — e.g. the file name contains a hyphen or starts with a digit), that is a compile-time error;
such a file must be imported with an explicit alias instead.

A file's own capitalization is therefore part of its interface: because the derived alias is the file's
base name and M6 makes a capitalized alias public, `import "Base"` yields an alias importers may
re-export (§4.5) while `import "base"` yields one they may not. An explicit `IDEN` overrides this
in either direction, so a lowercase file can still be given a re-exportable alias by writing one.

**M5.** Two imports in the same module may not use the same alias (D2). Two imports in the same
module may not resolve to the same underlying file either, whether both are written directly or one
is reached transitively through re-export (§4.5) — see §4.6.

### 4.3 Visibility

**M6.** A name is **public** (visible outside the module that declares it) if and only if its first
character is an uppercase letter (`A`–`Z`); otherwise it is **private** (visible only within its own
declaring module). This single rule governs every kind of name: types, error types, functions,
global variables, and import aliases (§4.5) alike. There is no separate export keyword, export list,
or visibility modifier.

**M6a.** The rule reaches *inside* a declaration as well as across the top level: a **struct member**
(§6.6), an **error word** (§7.6) and a **enum case** (§5.8) are each public or private by their own first character,
independently of the type that declares them. An exported type may therefore keep some of its members
to itself — `t.Id` crosses the module boundary where `t.secret` does not, and `catch Lib.Err.Quiet`
names a word that `catch Lib.Err.quiet` may not. Privacy is about the boundary only: inside the
declaring module a private member is entirely ordinary, and code there may expose it through a
function of its own.

A private word does not make its **type** uncatchable. `catch Lib.Err` (no word) matches every word of
that type, including ones the catching module could not name — a caller can handle "some `Err`" without
being told which ones exist.

**M19.** A **method** is a function declared with a receiver (§3.4 D7): `fn (p Point&) Norm() Int32`.
Methods live in a namespace of their own, keyed by receiver type, and a method is reached **only** as
`receiver . IDEN ( args )` — a **method call**, resolved against the methods declared for the receiver
value's type (up to the value/reference conversions of §5.3 E12). A method is never found by a plain name:
`Norm(p)` is a compile-time error, as is taking a method as a function value. So a method and an ordinary
function may share a name, and `x.f` and `f` never mean the same declaration.

The receiver type may be:

- a **declared** type (T29) — a struct, an enum, an error type, a named primitive or a named array — in
  which case the method must be declared **in that type's own module**;
- an **interface** (T30), under the same own-module rule — see M19a;
- a **built-in** type: a numeric primitive, `Bool`, or an unnamed array. Its methods are declared by the
  **prelude** (M19d) and by no other module, and are visible everywhere. An array receiver
  is identified by its **element type** alone — `Array<Int32>&` and `Int32[4]` are receivers of the same method,
  the call's E12 conversions deciding whether a given array reaches it — and an element that is a type
  variable (`Array<<T>>&`) makes the method one of every array. A method over a specific element type is a
  different receiver from the generic one and takes precedence where both apply, as G8a's concrete
  application does.

Once resolved, the call is exactly a call of that function with the receiver as parameter 0.

The receiver is `IDEN`'s whole `alias-chain`, not just a single name: every identifier before the final one
is read as a member-access chain rooted at a local or parameter, so `a.b.f()` calls `f` with receiver `a.b`,
and `a.b.c.f()` with `a.b.c`, to any depth. M20 is what keeps this unambiguous against a cross-module call written through the
same grammar (`lib.f()`, `a.b.Name()`): a leading identifier naming a value in scope is never also an import
alias, so the two readings can never both apply. A chain whose members do not resolve is not a method call
at all and is diagnosed as whatever name it actually was; a chain that resolves to a value whose type has
no method `IDEN` is a compile-time error.

The receiver is an ordinary first parameter, so every rule about it applies unchanged — D9's `mut` and `&`
axes, E12's conversions, and §8's containment check. Whether `x.f()` writes through to `x` is read from the
function's own signature, exactly as it would be at a plain call.

Requiring a declared type's methods to live in its own module is a coherence rule: no module can attach
one to a foreign type and no two modules can disagree about what `x.f` means. No module is exempt from it.

**M19d (the prelude).** Every program includes the **prelude**: the files of the standard library's
`prelude` directory, each an ordinary module, loaded before any other module. Their exported types are
visible in every module by their bare names, with no import, and no module may declare a type of the same
name (D3a). They are the only modules that may declare methods on a built-in type, which is how the built-in
types get their methods; those methods are visible in every module. A program wanting methods over a built-in type declares a type of its own over it
(T29) and gives that its methods.

Among the prelude's types is `type Pair<A, B> struct(First <A>, Second <B>)`, two values of any types held as
one, its type arguments inferred at construction (G10c). It has `Hash()` and `Eq(other)` - what a map key needs - for
every instantiation whose two parts have them.

A method may not share a name with a **field** of its receiver type; such a call is a compile-time error, so
`x.f` names exactly one thing.

**M19a.** When the receiver's type is an **interface** (§2.11), `w . IDEN ( args )` is a **dynamic
dispatch** rather than an M19 lookup: `IDEN` is resolved against the interface's own declared methods
(T30), and the function actually called is the one supplied by the concrete type the value holds (T31).
The call is checked entirely against the interface's declared signature — the concrete type is not known at
the call — and a `mut` method requires the receiver to be a mutable lvalue, exactly as a `mut T&` parameter
does at a plain call.

A name that is *not* one of the interface's methods falls through to M19's ordinary lookup, which finds a
method declared with the interface itself as its receiver (`fn (w Writer&) WriteAll(data Array<Byte>&)`) — a
helper over every value of the interface, called statically. Such a method may not reuse the name of one
of the interface's own methods, which would make `w.f` both a dispatch and a static call.

**M19b.** A method call's receiver need not be a name at all. Wherever a postfix `.` member access (§5.5)
is followed by an argument list, everything to its left is the receiver: `items[i].Area()`, `f(x).Size()`.
This is the only spelling that reaches a method on an indexed or returned value, since the
`alias-chain IDEN ( args )` call form (E13) reaches only identifiers. Resolution is M19's and M19a's,
unchanged; a name that is neither a method of the receiver's type nor, for an interface receiver, one of
its declared methods is a compile-time error here rather than a member access. So a module may declare a
method on its own interface (`fn (w Writer&) WriteAll(data Array<Byte>&) ? IoError`) and callers reach it as
`w.WriteAll(data)` — one spelling for the methods a type must supply and the helpers built on top of them,
with only the former dispatched.

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

**M12.** An enum value (`Type.Case`, §5.8) is alias-qualified like any other cross-module name: the
identifiers before the trailing case name are an alias chain (M8) followed by the enum type's own name, so
`Lib.Dir.North` names a word of an imported type to any chain depth. Both the type and the word are subject
to M6/M6a — a private type is unreachable, and a private word is unnameable even where its type is public.
A private word's *value* still crosses the boundary normally; only its name does not.

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

**M20.** An import's **alias name is reserved** in the module that wrote the import. No type, function,
global variable, local variable, or parameter declared in that module may reuse it; doing so is a
compile-time error, reported against the reuse. (The alias is reserved only in its own module — an
unrelated module is free to declare that name, and two modules may import the same third module under
different aliases.)

The reservation is what makes the left of a `.` mean exactly one thing. Both a cross-module name
(`lib.f()`, M8) and a method receiver (`m.Add(n)`, M19) are written as an `alias-chain`, so without it a
name that was both an alias and a declaration would have two valid readings with no stated tiebreak.

**M21.** A module may declare several **methods** with the same name, provided no two have the same
receiver type — where a receiver's reference marker does not count (`(p Point)` and `(p Point&)` both
declare a method of `Point`), and an array receiver is identified as M19 says. A method may also share its
name with at most one ordinary function. Any other reuse of a name is a compile-time error.

This is what lets two types declared in one module both satisfy one interface (T31): without it a given
method name could be written only once per module, and two shapes in one file would not compile. It
involves no overload resolution: a method is reached only through its receiver (M19), which names the type
and therefore the method.

## 5. Expressions

### 5.1 Grammar overview

**E1.** Expressions are built in four layers, tightest-binding first:

```
expr     ::= binary
binary   ::= unary { bin-op unary }          (precedence-climbing, see E5)
unary    ::= "not" binary | text | { unary-op } postfix
unary-op ::= "-" | "~" | "++" | "--" | "$"
text     ::= text-piece text-piece { text-piece }     (E11b)
text-piece ::= STR_LIT | "$" { unary-op } postfix
postfix  ::= primary { index | member | call-on | "++" | "--" }
primary  ::= literal | try-expr | call-expr | struct-literal
           | array-literal | enum-value | lambda | IDEN | "(" expr ")"
```

`index ::= "[" expr "]"`, `member ::= "." IDEN [ "(" [ arg { "," arg } ] ")" ]`. A `member` carrying an
argument list is a **method call** on everything to its left (§4.4 M19b), not a member access.
`call-on ::= "(" [ arg { "," arg } ] ")"` calls the function value everything to its left gives (E13b).
Postfix `++`/`--` and unary `++`/`--` are the same
two operators in prefix and postfix position (E5); both require the operand to be an assignable
lvalue (§6.2).

**E2.** A `primary` that is a bare `IDEN` is a variable or function read: a local, a parameter, a
module-level global, or a module-level function name, resolved by innermost-scope-first lookup (D3).
A bare `IDEN` immediately followed by `member` is additionally checked, before ordinary member
resolution, against every rule in §4.4 for a cross-module alias
chain; if it resolves as one, ordinary member resolution does not apply to that leading identifier.

**E3.** `call-expr ::= alias-chain IDEN [ type-args ] [ scope-arg ] "(" [ arg { "," arg } ] ")"`,
where `scope-arg` is E25's own adjacency-constrained `"&" IDEN`, and
`arg ::= expr | "default"` (E14a) (§4.4 M8),
covered in §5.4. The optional `type-args` (§12.3 G8) is valid only when the name is a generic struct
type, where it names the instantiation whose constructor is being called (G10a).

**E4.** `literal ::= BOOL_LIT | NULL_LIT | INT_LIT | FLOAT_LIT | CHAR_LIT | STR_LIT`. An expression `op` is a
**literal expression** (relevant to D15's `:=`, to T6's numeric adaptation, and to §5.7) exactly
when it is one of these token literals, an array literal (§5.7), or a
numeric (`INT_LIT`/`FLOAT_LIT`) token literal negated by a single leading unary `-` (§5.2 E11) — the
sign folds into the literal's own value at that point, the same way T8's compile-time-constant array
size already treats this one shape as effectively still a literal - recursively including one whose
own sub-expressions (array elements) are themselves literal expressions where
required. A parenthesized literal, a variable read, and a function call are never literal
expressions, even if their value is known at compile time.

### 5.2 Operators

**E5.** Binary operators, loosest to tightest (all left-associative — a chain of same-precedence
operators groups left-to-right):

| Precedence | Operators |
|---|---|
| 1 (loosest) | `or` |
| 2 | `xor` |
| 3 | `and` |
| 3½ | prefix `not` (E7a) |
| 4 | `\|` |
| 5 | `^` |
| 6 | `&` |
| 7 | `==` `!=` |
| 8 | `<` `<=` `>` `>=` |
| 9 | `<<` `>>` |
| 10 | `+` `-` |
| 11 (tightest) | `*` `/` `%` |

Unary prefix operators (`-`, `~`, `++`, `--`, `$`) bind tighter than every binary operator; `not` is the
exception (E7a). There is
no ternary/conditional operator.

**E6.** `+ - * / %` require both operands to be the same numeric type (T5, T27) and produce that
type, subject to T6's own numeric-literal adaptation. `%` requires both operands to be integer types.
Mixing distinct numeric types with neither side a literal (or with a literal whose written value the
other side's type cannot represent) is a compile-time error - see §5.12 E26 for the explicit conversion this
requires instead.

**E6a.** Integer `/` and `%` have **undefined behaviour** for two operand pairs, and neither is checked
at run time:

- a **zero divisor**, for either operator and either signedness;
- the **most negative value divided by `-1`**, for a signed type, whose true quotient is one past the
  type's maximum. `%` is included: its result is mathematically `0`, but the instruction is the same one.

Where the divisor is a compile-time constant zero the check is made at compile time and is an error there,
which costs nothing to apply. Float `/` is not undefined at all: IEEE 754 defines division by zero as an
infinity and `0.0/0.0` as a NaN, which are values.

Unlike E8a and E26a, both shapes here fault on common hardware — `#DE` on x86, reported as SIGFPE — so
they are usually fatal rather than silent. That is a property of the target rather than a guarantee: being
undefined, the operation may be removed or transformed before it ever executes.

**E6c.** Integer arithmetic **wraps**. The result of `+`, `-`, `*`, unary `-`, `++`, `--`, their compound
assignments and `<<` on an integer type is the true result reduced modulo 2^w, `w` being the type's width: a
signed type (`Int32`, `Int64`) is two's complement, so `Int32` 2147483647 + 1 is -2147483648 and `-` of the most
negative value is itself; `Byte` is unsigned, so 255 + 1 is 0 and 0 - 1 is 255. `<<` discards the bits shifted
out; `>>` shifts in the sign bit for a signed type and zeros for `Byte`. Overflow is never undefined, never
checked and never trapped, and compile-time evaluation (§13 K1) wraps identically - so hashing and checksums may
rely on it. A program wanting overflow detected checks for it itself. Division is the exception, by E6a.

**E6b (withdrawn).** `+` does not apply to arrays; no arithmetic operator does. Text is joined by writing
its pieces side by side (E11b). `+` with two array operands is a compile-time error that says so.

**E7.** `and or xor` require both operands to be `Bool` and produce `Bool`. `and` and `or`
**short-circuit**: the left operand is evaluated first, and the right one only when the left has not
already decided the result — `and` stops at a false left operand, `or` at a true one. So
`p != null and p.x > 0` never reads through a null `p`. `xor` always evaluates both operands, since its
result depends on both.

**E7a.** `not-expr ::= "not" binary` (its operand at the precedence of `|` and tighter). `not` requires a
`Bool` operand and produces `Bool`. It binds **looser** than every comparison and bitwise operator and
tighter than `and`/`or`, so an expression reads as the sentence it spells: `not a == b` is `not (a == b)`,
and `not a and b` is `(not a) and b`.

**E8.** `& | ^` require both operands to be the same integer type (T5) and produce that type, subject
to T6's own numeric-literal adaptation; `~` is unary and requires one integer operand, producing that
type. `<< >>` each require their *shifted* (left) operand and their *shift-amount* (right) operand to
independently be integer types, but the two need not be the same type as each other (T6's adaptation is
therefore never relevant between them specifically - there is no "match" requirement to adapt into);
the result is the shifted operand's own type.

**E8a.** A shift amount outside `[0, w)`, where `w` is the **shifted** operand's width in bits, is
**undefined behaviour** — the two operands need not share a type (E5), and it is the left one's width that
bounds the right one. Nothing is checked at run time. Where the amount is a compile-time constant the
check is made at compile time and an out-of-range one is a compile-time error, which costs nothing to
apply.

This is not merely undefined in the abstract: the result is architecture-dependent. x86 masks the count
to the low bits of the operand width, so `1 << 32` yields `1`; other targets yield `0` or trap. A program
that shifts out of range has no portable meaning.

**E9.** `< <= > >=` require both operands to be the same numeric type (subject to T6's own
numeric-literal adaptation) and produce `Bool`; there is no ordering on any non-numeric type.

**E10.** `== !=` accept operands of any single type `T27`-matching pair (subject to T6's own
numeric-literal adaptation) and produce `Bool`, with
value semantics that depend on whether `T` is reference-shaped (T24–T26):
- for a primitive or enum value: ordinary value equality;
- for an embedded struct or compile-time-length array: deep, member-wise/element-wise structural equality
  (recursively applying this same rule to every field/element);
- for a runtime-length array with no marker: deep, element-wise structural equality, the same as any other
  array value — lengths must agree first;
- for a reference-shaped struct or array (a `&`/`&x`-marked type, of either length kind): pointer
  identity — two references compare equal only if they refer to the same underlying storage, never
  by comparing what they point to. For a marked runtime-length array, whose value is a length paired with a
  pointer, identity is that pointer: two such arrays are equal exactly when they name the same storage.

There is no expression that produces a value of an error type (§2.6): an error word is never a
first-class comparable value, only a function's own result (§7).

**E11.** Prefix `-` requires a numeric
operand and produces that type (negation). `++`/`--`, prefix or postfix, require an integer- or
float-typed, mutable (§6.2) lvalue operand, and both read and write it: postfix yields the
pre-increment/decrement value, prefix yields the post-increment/decrement value, exactly as in C.

**E11a (`$` — a value as text).** Prefix `$` produces text — an `Array<Byte>`, which is a `String` wherever
one is wanted (T29c) — holding its operand's textual rendering. It
is a **value** and a **temporary**: it has no storage of its own to borrow, so it is built in the scope of
whatever it flows into (E12c) — the current block for a local it initializes, the target's scope for a
reference it is assigned to or returned as. It binds as the other prefix operators do, tighter than any
binary operator, so `$a.b` renders `a.b`.

Every value has exactly one rendering, fixed by its type, and **nothing overrides it**: a method a type
declares — whatever its name — takes no part. The rendering is the value written the way it would be in
source:

- `Bool` — `true` or `false`.
- `Int32`, `Int64` — decimal, with a leading `-` for a negative value.
- `Float32`, `Float64` — decimal. The digit count is implementation-defined, but the rendering always
  reads back as the same value.
- `Byte` — at the top level, the **character** it denotes, one byte long (`Byte` is this language's
  character type, L11); its numeric rendering is `$Int32(b)`. Inside another value, that character written as
  a character literal: `'c'`, with `\n`, `\t`, `\r`, `\0`, `\\` and `\'` escaped (L11).
- an array of `Byte`, in any of its four shapes — at the top level, its bytes unchanged (copied: the result
  is a new value, never a second name for the operand's storage). Inside another value, its bytes written as
  a string literal: `"text"`, with `\n`, `\t`, `\r`, `\0`, `\\` and `\"` escaped. Any other byte is
  written as itself.
- any other array — its element type as written, then its items: `Int32[1, 2, 3]`, `Point&[Point(1, 2)]`,
  `Int32[]` when empty.
- a struct — its declared name, then its fields in declaration order in parentheses: `Point(1, -2)`.
- an enum — `Type.Case`, followed by the payload's fields in parentheses when the live case carries one:
  `Shape.Rect(3, 4)`.
- a declared type over a primitive or an array — as the type it is declared over (a `type Meters Int32`
  renders as a number).
- a function — its signature, `(params) results ? errors`, preceded by its name when the operand names a
  declared function directly (`add(a Int32, b Int32) Int32`) and by `fn` for a function value, whose name is
  not known where the `$` is written (`fn(a Int32, b Int32) Int32`). A null function value is `null`.
- an interface — its name and its methods' signatures: `Writer{Write(d Array<Byte>&) Int32, mut Reset()}`. A null
  interface value is `null`.
- a reference — `null` when it is null, otherwise its referent. References are followed at most **8**
  deep along any one path from the operand; the next one is rendered as `...`, which is what makes a cyclic
  structure's rendering finite.

- a call's several results (D8c) — `(r0, r1, ...)`, each rendered by these rules. This is the one place the
  results are taken together rather than destructured.

Only a call that returns nothing has no rendering.

**E11b (joining text).** Two or more **text pieces** written side by side are joined into one text value:
`"n is " $n "!"`, `$a ", " $b`. A text piece is a string literal (`STR_LIT`, with nothing applied to it)
or a `$` rendering; nothing else can stand beside one, so `f("a" b)` is a syntax error rather than a join —
a value becomes text only through `$`. Pieces must be written on one line (a line end ends the statement,
L18).

String literals that are adjacent are one literal: `"ab" "cd"` is exactly `"abcd"`, joined before anything
else happens, so a join of literals alone is a literal and costs nothing at run time. Any other join is a
text **value** (T29c) and a temporary, exactly as `$` is (E11a): every piece is measured, one allocation of the
total is made in the scope the result flows into, and each piece is written into it once, so the cost is
linear in the result however many pieces there are. A `:=` declaration takes its type from a join or a
`$` rendering (D15), since both are text by construction.

### 5.3 Assignability ("fits")

**E12.** A value of type `S` **fits** a target of declared type `T` (used uniformly for a variable
declaration's initializer, D12; an assignment's right-hand side, §6.2; a function or constructor
call's argument, §5.4; and a `return`ed value, §6.5) exactly when one of:

- `S` and `T` are the same type (T27); if both are additionally reference-shaped (T24), an
  additional scope-compatibility rule applies — see
  §8;
- the value is a numeric literal expression (E4) and `T` is a numeric type it can implicitly adapt
  to (T6);
- `S` and `T` are the same type but for reference-shapedness at their **outermost** level (T25a) — a
  conversion in either direction, and a real operation rather than a retag: a value flowing into a
  reference-shaped target is **promoted** (allocated in the target's scope and pointed at, §8 O6), and a
  reference flowing into a value target is **copied out** (the aggregate is loaded), which is how a callee
  takes its own copy of a `Array<T>&` parameter (D9a). Both apply only at the outermost level; nested levels
  differing in reference-shapedness are simply different types, with no conversion between them. See E12c
  for the array case, which borrows rather than allocating;
- the value is an array whose length is known while compiling (a literal, an inline field — T11's
  representation) and `T` is an `Array<T>` of the same element type — the value is copied into storage of the
  target's own;
- the value is such an array as an **lvalue** and `T` is an `Array<T>&` of the same element type — a
  **borrow** (E12c): the target names the very same storage, with the known length materialised beside the
  pointer. It never allocates;
- `T` is fixed storage (an inline field, C2e) and the value an array of the same element type: copied in,
  with its length checked against the storage's (C2e).

Any other pairing does not fit, and is a compile-time error.

**E12b.** D9a and E12c together mean no ordinary call ever copies an array: a by-value array parameter
cannot be declared, and an array argument passed to a `&` parameter is either already reference-shaped, or
an lvalue that is borrowed, or a temporary with no storage to borrow. A callee that wants its own copy
declares a local and assigns to it, where the copy is written down.

**E12a.** In a **call argument** position, an *lvalue* argument crossing into a reference-shaped
(`&`-marked, T24) parameter is **borrowed** (E12c): the parameter names the very instance the caller
passed, no copy is made, and the borrow's lifetime is checked like any other. A freshly built temporary —
a literal, or a constructor call's own result — has no storage to borrow and is allocated in the
parameter's scope instead, exactly as at a variable declaration or a return.

Because the callee may therefore write through to what the caller named, D9's `mut` half is enforced here:
binding an **immutable** lvalue to a `mut` reference parameter is a compile-time error. Without that,
passing an immutable value on to a `mut &` parameter would launder its immutability away, letting the
callee write what the caller may not.

**E12c.** When the value flowing into a reference-shaped target is an *lvalue*, the reference **borrows**
that value's storage: it names the very instance the value is, and no copy is made. This holds for every
type — a struct and an array behave identically here, since `&` means "this instance" regardless of what is
behind it — and for an array it is also what keeps a copy proportional to the array's length from being
inferred from a marker rather than written down. The borrow is therefore a claim about lifetime, and the
claim is checked: the scope the borrowed storage belongs to must outlive the target's own scope (§8 O10),
which is derived as the declaring block's for a local, the function's own for a value parameter, as the enclosing reference's scope for a field or
element reached through one, and as unbounded for a global. Handing storage in this function's own scope to
a reference tagged to a longer-lived scope is a compile-time error — that, and not the absence of a copy, is
the defect in such a program. A value that is *not* an lvalue (a literal, a call's result) has no storage to
borrow and is allocated in the target's scope instead (§8 O6), which is construction rather than copying and
needs no check.

The three directions therefore read the same for every type: **value into value** copies (that is what a
value type means), **reference into value** copies out (D9a's way for a callee to take its own copy), and
**value into reference** borrows. A fourth, reference into reference, is neither — it repoints (S4a).

**E12d.** A value whose type **satisfies** an interface `I` (T31) fits a target of type `I&`. The
conversion pairs the value's concrete type with the instance itself: the instance half is an ordinary E12c
**borrow**, subject to the same lifetime check (the borrowed storage's scope must outlive the interface
value's own tag), and only a non-lvalue is allocated instead. Nothing is copied into the interface, and the
interface never owns what it names.

An interface value flowing into a target of the *same* interface type is ordinary — it repoints (S4a),
carrying both halves. Converting between two *different* interface types is not currently defined, even
where the target's methods are a subset of the source's: the concrete type is not known until run time, so
the target's dispatch table cannot be selected at the point of conversion.

### 5.4 Function calls

**E13.** A call's target is resolved as `alias-chain IDEN` (E2–E3,
§4.4 M8) against: a local variable or parameter of function type; a
module-level function; or a struct type's own constructor
(§9) — a bare type name (or
alias chain naming a type) in call position is a constructor call exactly when that type declares
one. When that type is generic (§12.3), it may carry a type argument list (G10a), or leave it to be inferred (G10c). A call whose
target has a result scope (§8 O13) — a constructor always has one, its instance's — may carry a scope
argument (E25) between the target name and the `(`; a call whose target has none may not.

**E13b.** A `call-on` after any postfix expression of function type calls the function value it gives:
`id(dbl)(3)`, `fs[i](x)`, `(pick(c))(x)`. The expression is evaluated first, then the arguments, and the call
is checked as a call through a variable of that type would be (E14, E12). A fallible one needs `try` as any
call does; a `try` written before the chain covers its last call only. A `(` beginning a new line begins a new
statement (L18), never a `call-on`. Calling a value not of function type is a compile-time error.

**E13a.** `Array<T>(n)` and `Array<T>(n, v)` build an array (T8): `n`, of any integer type, is its length,
and every element is `T`'s zero value or `v`, which must fit `T`. It is a value with no storage of its own,
built in the scope of whatever it lands in (§8 E12c, D14), and is the only expression that sets aside
storage for an array of a length decided at run time. Nothing else may be called as `Array`.

**E14.** Argument count must be at least the number of the target's parameters that declare no default
(D8a) and at most its total parameter count; there are no variadic parameters. Arguments bind
positionally, in order, and each must fit (E12) the corresponding parameter's declared type. Any
parameter left without an argument takes its declared default, which is evaluated as the literal it is —
one value per call, with no evaluation order to observe.

**E14a.** An argument may be the keyword `default`, which supplies that one parameter's declared default
in place of a written value, letting a call reach a later parameter without restating the values before
it: given `connect(host Array<Byte>, port Int32 = 80, timeout Int32 = 30, retries Int32 = 3)`, a call
`connect(h, default, default, 5)` sets only `retries`. As an argument, `default` is valid **only** as a direct argument of
a call (its other use, introducing a `try`'s fallback value, is §7 R9a), and only where the corresponding parameter declares a default (D8a); it is not an expression and
may not be assigned, nested, or used as a value anywhere. Parameter *names* are deliberately not part of
this: they remain internal to the declaration, so renaming one is never a change to the caller's contract.

**E15.** If the called function's signature declares one or more errors
(§7), the call must appear directly as the operand of
`try` (either the expression form, §5.10, or the statement form,
§7); a bare, unhandled call to a fallible function is a
compile-time error.

**E15a (checked operations).** `try` applied to anything other than a call - an index, a slice, or a
parenthesized expression, `try (a * b / c)` - **checks every operation inside it that can fail**, other than
inside a call (which has its own signature) or a nested `try`. Each check fails with a word of `BuiltinError`
(§7.7) instead of doing what the unchecked operation does:

| operation | fails with |
|---|---|
| integer `+ - *`, unary `-` | `OVERFLOW` when the true result does not fit (instead of wrapping, E6c) |
| integer `/ %` | `DIVIDE_BY_ZERO` for a zero divisor; `OVERFLOW` for the most negative value by `-1` (E6a) |
| float `+ - * /` | `DIVIDE_BY_ZERO` for a zero divisor; `OVERFLOW` for an infinite result from finite operands; `INVALID` for a NaN result from operands that are not NaN |
| `<<`, `>>` | `INVALID` for an amount outside `[0, w)` (E8a) |
| integer narrowing `T(x)` | `OVERFLOW` when the value does not fit `T` (instead of wrapping, T6) |
| float to integer `T(f)` | `INVALID` for a NaN or infinity, `OVERFLOW` out of range (E26a) |
| `Float32(f)` from `Float64` | `OVERFLOW` when a finite value becomes infinite |
| `a[i]`, `a[lo:hi]` | `OUT_OF_BOUNDS` (E16d, E16c) |
| `Array<T>(n)` | `OUT_OF_BOUNDS` for a negative `n` (D14b) |

`try` binds as tightly as a unary operator, so a checked computation is parenthesized: `try a + b` is
`(try a) + b`. A `try` whose operand holds nothing that can fail is a compile-time error. The words a tried
expression can produce are exactly those of the operations in it, and catching those is complete (R13). Written
without `try`, every operation behaves as the rules above state - wrapping, IEEE results, or undefined.

### 5.5 Indexing and member access

**E16.** `base [ index ]` requires `base` to be an array type and `index` to be an integer type; its
result type is `base`'s element type. **The index is not checked at run time.** An `index` outside
`[0, base.Len())` (E23) reads or writes storage the array does not own, which is **undefined behaviour** —
the same reading C gives it, and one of exactly two places in this language where a program can reach
storage it does not own (the other is `extern fn`, §11 X1a).

Where the index and the length are **both known at compile time** — a constant index into a
compile-time-length array — an out-of-range index is a **compile-time error**. That check costs nothing at
run time and is not affected by the above.

**E16d.** `try base [ index ]` (§5.10 E15) **opts in to a bounds check**: the index is checked against
`[0, base.Len())` and an out-of-range one produces `BuiltinError.OUT_OF_BOUNDS` (§7.7) rather than reading or
writing storage the array does not own, propagating like any other `try` so the enclosing signature must
cover it. This is the mirror of E16c, which opts a *slice* out of its abort — in both, `try` means "give me
the failure as an error I handle". An index written without `try` is unchecked and costs nothing.

**E16e (memory safety).** An out-of-range index written without `try` is, with `extern fn` (§11 X1a) and
a null dereference (T2b), one of the places where memory safety rests on something the compiler does not
check. This is deliberate: the check E16 used to make cost about 50% on indexing whose bounds the optimizer
cannot establish, and nothing at all where it can. Every other guarantee in this specification — §8's scope
containment above all — is stated as holding for programs that do not index out of range. What remains
checked costs nothing or is asked for: a constant index is a compile-time error (E16), a slice is always
checked (E16b), and `try a[i]` (E16d) checks where the program asks it to.

**E16a.** `base "[" [ lo ] ":" [ hi ] "]"` is a **slice**. `base` must be an array type of either length
kind, marked or not; `lo` and `hi` must be integer types, and either may be omitted, defaulting to `0` and
`base.Len()` (E23) respectively. The result is a **borrow** of `base`'s own storage with the pointer and
length adjusted — never a copy and never an allocation — so its type is a runtime-length reference
`Array<T>&` whose element type is `base`'s (keeping `base`'s declared type, T29a: a slice of a `String` is a
`String&`), tagged (§8) to the scope `base`'s storage belongs to: slicing a
local yields a reference in that local's block, slicing an array reference yields one in its referent's scope. The result has
length `hi - lo`, and writing through it writes `base`.

A slice is not an lvalue and may not be assigned to. It does carry `base`'s **mutability**: a slice of an
immutable array is itself immutable, and so cannot bind to a `mut` reference parameter (E12a) — without
that, slicing would launder immutability away.

**E16b.** A slice's bounds **are** checked at run time: `0 <= lo <= hi <= base.Len()` must hold, and a
violation aborts the program (the behaviour of a failed `assert`, §6.9 — it never returns, so no
execution continues with an out-of-range slice). **Indexing is not** (E16), and the asymmetry is the whole
point: a bad index is a single wrong access at the point it is written, while a bad slice produces a
*value* that remains wrong for as long as it lives — it can be returned, stored in a field, passed on, and
read any number of times — so the failure surfaces arbitrarily far from the mistake. The check is also
cheap exactly where a per-index check is not, since a slice is taken once and read many times: its cost is
paid per slice expression, never per element access.

**E16c.** Writing the slice as `try base [ lo : hi ]` (§5.10 E15) makes it **fallible** instead: an
out-of-range bound produces `BuiltinError.OUT_OF_BOUNDS` (§7.7) rather than aborting, and the expression
propagates it like any other `try`, so the enclosing signature must cover it.

The two forms divide the two cases cleanly. Bounds that come from the program itself (`a[:]`, `a[0:a.Len()]`,
a loop index already checked) cannot fail, cost nothing, and force no error onto the signature. Bounds that
come from somewhere that can legitimately be wrong — a parsed length, a protocol field — are written with
`try`, and the caller handles them. Making *every* slice fallible was rejected for that reason: it would
put `try` on slices that provably cannot fail and make "this function can fail" depend on whether it
slices, cascading through every caller.

`try` on a slice is valid only in the **expression** form. The `try ... catch { }` *statement* discards the
value it guarded — for a call that is the whole point (C7: control flow only, the error is never bound to a
value), but for a slice it would leave nothing behind but the bounds check, so the slice would have to be
written a second time to be used. Bind and propagate instead.

**E17.** `base . IDEN` requires `base` to be a struct type with a field named `IDEN`; its result
type is that field's declared type.

### 5.7 Array literals

**E19.** `array-literal ::= elem-type "[" [ arr-item { "," arr-item } ] "]"`, where
`elem-type ::= PRIMITIVE-NAME | scalar-name [ reference-marker ] | scalar-name { array-type-suffix }
reference-marker` and `scalar-name ::= alias-chain IDEN | type-var`
(§4.4 M8, §12.1 G1) names the literal's
element type, stated exactly once regardless of nesting depth (E21). The optional
`reference-marker` (T24) makes each element a separately allocated reference rather than a value laid
out inline — `Handle&[a, b, c]` builds three instances, each with its own allocation and its own scope
tag. A primitive scalar type may never carry one (T24).

An element type may itself be an **array**, always as a reference (T7a): `Array<Int32>&[r0, r1]` has two
elements, references to the arrays `r0` and `r1`, each with its own length.
`arr-item ::= expr | "[" [ arr-item { "," arr-item } ] "]"` — a plain expression, or a nested
bracketed group with no restated type, for a multi-dimensional literal.

**E20.** The literal's own type is always a compile-time-length array (T8): its size, at each level, is
exactly the number of items written at that level; a literal with zero items is `elem-type[0]`. This
holds regardless of what the literal is subsequently checked against — sizing from item count is
intrinsic to the literal itself, and E12's runtime-length-array and compile-time-length-target rules apply
afterward, against a target, if there is one.

**E21.** A literal's items are never themselves bracket groups: there are no nested literals, since there
is no multi-dimensional array (T7a). An array of arrays is a literal of references,
`Array<Int32>&[r0, r1]`.

### 5.8 Enum values

**E22.** `enum-value ::= alias-chain IDEN "." IDEN [ "(" [ arg { "," arg } ] ")" ]` (§4.4 M8), where the
argument list is present exactly when the named case carries a payload (T17a), and the identifier before the final
`"."` names an enum type — in this module, or in one reached through the alias chain (M12) — and the final
`IDEN` is one of that type's declared cases (T17). Its type is the named enum type. Across a module
boundary both the type and the case must be public (M6, M6a).

### 5.9 An array's length

**E23.** `arr.Len()` — every array type, declared ones like `String` included, has a method `Len()` giving
its length as an `Int64`. It is supplied by the compiler rather than declared, since the length lives in the
array's representation; in every other respect it is a method (§4.4 M19). An `Int64` converts to a narrower
integer type only by an explicit conversion (`Int32(a.Len())`, T6).

### 5.10 `try` as an expression

**E24.** `try-expr ::= "try" postfix { catch-clause }`, where the `postfix` is a call (§7), a checked
index (E16d) or a slice (E16c); usable as an ordinary expression anywhere a value of its success type is
expected. Its full semantics (error propagation, signature requirements, and catch clauses in value
position) are specified in §7.

### 5.11 The scope argument

**E25.** `scope-arg ::= "&" ( IDEN | "return" )`, written between a call's target name and its opening `(` — at most
one:

```
makeVec&x()
Vec<Int32>&x(4)
```

`IDEN` names a local or parameter of the **calling** function, and binds the callee's result scope (§8 O13,
O18) to where that variable lives (O4a); `return` binds it to the calling function's own result scope (O26). A variable living in the program's scope — a global, or a local
holding a global's referent — is a compile-time error here: no function allocates into that scope (O25). On a constructor call it is where
the instance lands (C2c). Without one, the result scope follows the result (O18a).

The `&` must be **adjacent** to what precedes it and the `IDEN` adjacent to the `&` — no whitespace or
comment anywhere in the run, and all on one line. Without that requirement `f&a(x)` could not be
told from the binary `&` of `f & a(x)` (E7), which is a legal expression.

A scope argument on a call whose target has no result scope — one returning nothing, nothing holding
references, or a result borrowed from a parameter (O13) — is a compile-time error.

### 5.12 Explicit numeric conversion

**E26.** `TypeName(x)`, where `TypeName` is one of the five numeric primitive types (T5: `Byte`,
`Int32`, `Int64`, `Float32`, `Float64`) and `x` is a single expression of any numeric type, converts
`x`'s *value* to `TypeName` and produces a value of that type - the explicit counterpart to T6's
implicit literal-only adaptation, covering everything a numeric literal's own adaptation does not: a
non-literal value crossing numeric types at all (in either direction), a literal whose written value the
target type cannot represent, and any float-to-integer conversion at all (`Float64` → `Float32`,
`Int64` → `Int32`/`Byte`, a float type → an integer type). Converting a value to its own type is accepted, producing that same value
unchanged. Exactly one argument is required; anything else (zero, two or more, or a non-numeric
argument) is a compile-time error. `TypeName` in this position is never shadowable by another
declaration of the same name - a primitive type name is never otherwise a valid
call target, so this introduces no ambiguity with an ordinary function or constructor call.
Unlike an ordinary function, `TypeName(x)` is never fallible and needs no `try`/`catch` - a numeric
conversion cannot itself produce an error (a narrowing conversion outside its target type's
representable range - e.g. `Byte(300)` - silently wraps, the same well-defined, unchecked behavior
this language already accepts at every other point a value can silently lose information, such as
E16's own unchecked array indexing).

**E26a.** A **float-to-integer** conversion of a value the target cannot represent — outside its range,
NaN, or an infinity — is **undefined behaviour**. Nothing is checked at run time.

Note that this differs from an integer narrowing conversion, which **wraps** and is defined (T6). A
float-to-integer conversion out of range has no defined result at all: not a wrap, not a saturation,
nothing. In practice x86 yields the target's most negative value and sets a masked floating-point flag,
but that is the hardware's behaviour rather than the language's.

## 6. Statements

### 6.1 Blocks

**S1.** `block ::= "{" { statement } "}"`. A block introduces a nested scope (D3): a local declared
inside it is not visible outside it, and ceases to exist (for scoping and, where applicable,
ownership purposes — §8) at the block's
closing `}`.

**S2.** `statement ::= var-decl | assign-stmnt | if-stmnt | for-stmnt | do-stmnt | match-stmnt
| destruct-stmnt | return-stmnt | break-stmnt | continue-stmnt | done-stmnt | fail-stmnt | abort-stmnt
| unreachable-stmnt | assert-stmnt | error-stmnt | try-catch-stmnt | spawn-stmnt | join-stmnt
| expr-stmnt`. `var-decl` is specified in §3.5; `error-stmnt` and `try-catch-stmnt` in §7;
`spawn-stmnt` and `join-stmnt` in §6.8.

**S3.** `expr-stmnt ::= expr STMNT_END`, where `expr` must be one that can actually *do* something:
either a **call** (§5.1 E13 — an ordinary call, a constructor call, or one wrapped in `try`, §7.4) or
one of the four increment/decrement forms (`++x`, `--x`, `x++`, `x--`, E1), which are expressions by
grammar but reach statement position only here. Its value, if any, is discarded.

Any other expression standing alone as a statement is a compile-time error. `n`, `x == y` and `a + 1`
each compute a value and then throw it away, which is dead code by construction, and far more often a
typo for the assignment (S4) or declaration (D12) that was meant. In particular, a bare name declares
nothing anywhere in the language: a declaration always states a type (`name Type = expr`) or infers one
(`name := expr`), in a function body and a `ctor-body` (§9.1 C2) alike.

### 6.2 Assignment

**S4a.** Assignment to a **reference-shaped** (T24) target overwrites the *reference* — the pointer —
never the pointed-to value, uniformly and in every position. `a = b` on a local repoints the local;
`p.x = q.x` on a reference field repoints that field inside whatever instance holds it, which is visible
to everyone else holding that instance; and `p = q` on a reference **parameter** repoints the function's
own copy, which is a cursor local to that call and is not visible to the caller. All three are the same
rule, and the third is useful in its own right — a reference parameter doubles as a mutable cursor
without needing a separate local declared from it.

This is why assignment does *not* copy contents through a reference: `x = y` must imply `x == y`, and
T26 compares references by identity. Write-through would satisfy neither that nor C11, which makes a
destructor-declaring type reference-only precisely so that "which instance owns this" has an answer.
Copying a reference's contents is written explicitly, field by field.

**S4.** `assign-stmnt ::= lvalue assign-op expr STMNT_END`, where `lvalue` is a postfix expression
(§5.1 E1) whose outermost form is a variable read, an index (`E16`), or a member access (`E17`) —
anything else on the left of an assignment operator is a compile-time error.

**S5.** `assign-op ::= "=" | "+=" | "-=" | "*=" | "/=" | "%=" | "<<=" | ">>="
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

**S4b.** `destruct-stmnt ::= target "," target { "," target } ( ":=" | "=" ) expr STMNT_END`, where `expr` is
a call returning several values (D8c) and there is exactly one `target` per result. With `:=` each target
is a plain name, declared as by D15 from its result; with `=` each is an lvalue, assigned as by S4. A
target written `_` discards its result. The call is evaluated once, before any target is written.

**S8.** `if-stmnt ::= "if" expr block [ "else" ( if-stmnt | block ) ]`. `expr` must be `Bool`
(E7/E9/E10 all produce `Bool`; any other type is a compile-time error). An `else` clause is
optional; chaining `else if` is exactly the recursive `"else" if-stmnt` alternative. Both branches are
checked, except where the build decides the condition (S8b; for the top-level form, see B9).

**S8a.** A condition that is **fixed on every build** decides nothing, so one of its branches is dead code:
a condition that can be evaluated at compile time (K1) — however it is computed, calls included, and
reading only locals whose values are **fixed** (S8c) — and reads **no** build constant (B10), directly or
through anything it evaluates, is a compile-time error. (To check a fixed value, `assert` it; an `assert`
is not an `if`.)

**S8c.** A local is **fixed** when it is a plain scalar (a numeric type, `Bool`, `Byte`, or an enum without
payloads) declared with an initializer, and nothing anywhere in its function writes it afterwards — no
assignment, `++`/`--`, atomic operation or spawn target names it. Such a local holds its initializer's value
wherever it can be read, so a condition reading it reads that value. A parameter is never fixed.

**S8b.** A condition the **build decides** — one S8a describes, except that it does read a build constant —
makes the `if` conditional compilation, exactly as at the top level (B9): only the branch it chooses is
parsed and checked, and the others are skipped by matching braces, so they may use names, types and syntax
that exist only where they would be chosen. The branch chosen behaves as a block in its place (a scope, as
the `if`'s own block was); when none is chosen the `if` is nothing. A condition reading a local that is not
fixed (S8c) or a parameter, or one that cannot be evaluated at compile time (K1), is an ordinary runtime
condition, and both branches are checked. In an
`else if` chain each link is judged on its own: a decided link that follows a runtime one becomes that
one's `else` block, or no `else`. A condition the implementation cannot evaluate from its tokens alone is
decided as B9c describes, by checking the program without it and evaluating it; that is not observable,
except that a function one of whose branches is still being decided is not evaluated until it is.

**S9.** A `for` statement has four forms, all using the one keyword:

```
for-stmnt ::= "for" block                                   (forever)
            | "for" expr block                              (while expr holds)
            | "for" for-init "," expr "," simple-stmnt block (three clauses)
            | "for" IDEN [ "," IDEN ] "in" expr block        (S9a)
            | "for" IDEN [ "," IDEN ] "in" range-expr block  (S9b)
```

The first runs its body until something leaves it (`break`, `return`, an error, S11). The second evaluates
`expr` (which must be `Bool`) before each iteration and stops when it is false. In the three-clause form,
`for-init` has the same shape as a variable declaration (§3 D11) but without a trailing `STMNT_END` — it is
followed by `,` instead. The declared variable is scoped to the loop (its own init, condition,
post-expression, and body all see it, nothing outside the loop does) and is always mutable. The condition
must be `Bool`. The post clause is `simple-stmnt ::= lvalue assign-op expr | expr`, written without a
`STMNT_END`: an assignment (S4, so `c = c.next` advances a loop), or an expression that may stand as a
statement under S3 — so `i + 1`, which computes a value and discards it, is a compile-time error here as
anywhere else. The loop runs: evaluate init once; while condition is true, run body, then run the post
clause, then re-check condition.

**S9a (`for ... in`).** `for x in e` runs its body once for each value `e` yields, with `x` a new local
holding it; `for i, x in e` also declares `i`, an `Int64` counting iterations from `0`. The names are
scoped to the body. `e` is evaluated once, before the first iteration, and must be one of:

- an **array**, of any shape (T11, including a slice and a declared array type): `x` is each element in
  order, **copied** — assigning to `x` does not change the array; `a[i] = ...` through the index form does.
  The array is borrowed for the loop (E12c), never copied, so its length is read once per iteration from
  the same storage.
- an **`Iterator<T>`** (T35b): a value whose type satisfies the built-in interface, or a value of it.
  Each iteration calls `Next()`; `false` ends the loop and `x` is the `T` otherwise. The loop holds its own
  copy of `e` (so a by-value iterator written as a variable is not advanced by the loop; a reference one
  is). The element type of a generic iterator is its instantiated `Next()`'s.
- an **iterable** (S9c): a value with no `Next()` of its own and a method `Iter()`, taking no arguments, whose
  result is an iterator. The loop walks `e.Iter()`. An iterable keeps no position — every loop, nested or
  repeated, gets a fresh iterator — which is why a collection is an iterable rather than an iterator itself.

Anything else after `in` is a compile-time error. `break` and `continue` (S11) apply as in every loop;
`continue` moves to the next value.

**S9b (`range`).** After a `for`'s `in` (and nowhere else), `range-expr ::= "range" expr [ "," expr [ "," expr ] ]`
(no parentheses) names a sequence of integers. One argument is its **end**, with start `0`; two are its
**start** and **end**; three are **start**, **end** and **step** (default `1`). All are integers; the first
argument that is not a literal gives the type of the range, of the loop's value and of its counter `i`, and
literals adapt to it (T6). Each is evaluated once, in the order written, before the first iteration.

The values run **upward** from start, **included**, to end, **excluded**, `step` apart. A range only counts
upward: when start is not below end, or the step is not positive, the loop runs no times.

```
range 5             0 1 2 3 4
range 7, 10         7 8 9
range 0, 10, 3      0 3 6 9
range 4, 0          (nothing)
```

A step that is a literal zero or negative is a compile-time error. The number of values is fixed before
the first iteration, so the loop costs what the three-clause form does.
`range` is a keyword (L9).

**S10.** `do-stmnt ::= "do" block "for" expr STMNT_END`. Runs body once unconditionally, then
repeats: evaluate `expr` (must be `Bool`); if true, run body again and repeat; if false, stop. The
loop always executes its body at least once.

**S11.** `break-stmnt ::= "break" STMNT_END` and `continue-stmnt ::= "continue" STMNT_END`. Both are bare
statements taking no operand, and both are valid **only inside a loop body** (S9, S9a, S10) — writing either
anywhere else is a compile-time error. Each applies to the **innermost** enclosing loop; there are no loop
labels and no way to target an outer one.

`break` leaves the loop immediately, without re-evaluating the condition or, in a `for`, the
post-expression. `continue` ends the current iteration: in a `for` it jumps to the post-expression and then
the condition, so the loop still advances; in a `do` it jumps to the condition.

**S11a.** Both close every block scope (§8 O2) they leave, innermost first — the loop body's own included,
and any block nested inside it that the statement sits within. A value allocated in the abandoned part of
the iteration is therefore reclaimed, and any destructor registered there runs, exactly as it would have
at the closing brace. This is the same unwinding `return` performs (O2a); the difference is only where
control lands afterwards. If one of the scopes being left is a `join` block, its tasks are waited for
before it is reclaimed (§6.8 P1b) — a `join` is not a loop and is never what a `break` targets, but it can
lie between the statement and the loop it does target.

Note that `continue` closes the loop body's scope and the next iteration opens it again. That is what makes
a loop that allocates and sometimes `continue`s cost no more than one that never does.

### 6.4 `match`

**S12.** `match-stmnt ::= "match" expr "{" { case-clause } [ nomatch-clause ] "}"`, where:

```
case-clause    ::= "case" expr block
nomatch-clause ::= "nomatch" block
```

**S13a.** A `match` whose matched value is a **enum type** must cover every one of that type's cases, or
carry a `nomatch` clause. This is the only type for which exhaustiveness is checked, and the reason is that
it is the only one whose set of alternatives is both closed and written down: an enum type's cases come
from one declaration the compiler reads. An interface (§2.11) is open by construction and an integer's
"cases" are not usefully enumerable, so neither admits the question. Making `match` exhaustive here is most
of the point of declaring an enum — adding a case tells you every place that now has to handle it — and
`nomatch` is the opt-out.

**S13b.** A `case` clause over an enum type has two forms. `case Type.Case` matches the tag. `case
Type.Case(a, b)` matches the tag **and binds** the payload's fields to fresh locals named `a` and `b`,
visible only inside that clause's block. The identifiers inside the parentheses are always *binding*
occurrences, never expressions, so the form never means "compare against a constructed value"; the list
must name every field of that case's payload, in declaration order. Binding is what makes reading a payload
sound: a field is reachable only inside a clause whose tag test has already selected its case.

**S13.** `match`'s own `expr` is evaluated once. Each `case`'s own `expr`, in source order, is
compared against it using the same equality rule as `==` (E10) and must be the same type (T27) as
the matched value. The block belonging to the first matching `case` runs, and no other `case` or
the `nomatch` block runs. If no `case` matches and a `nomatch` clause is present, its block runs. If
no `case` matches and there is no `nomatch` clause, no block runs at all — this is not a
compile-time error; `match` over a *value* performs no exhaustiveness checking over any type,
including an enum
type's own closed word set.

**S14.** A `match` may be used on a value of any type that supports `==` (E10) — numeric, `Bool`,
enum, or any struct/array type (compared structurally or by reference identity per E10's own
rule).

### 6.5 `return`

**S15.** `return-stmnt ::= "return" [ expr { "," expr } ] STMNT_END`. If the enclosing function
(§3 D7–D10) declares a `ret-type`, `expr` is required and
must fit (E12) it; if it declares several results (D8c), there is one `expr` per result, each fitting its
own result type, or a single call returning exactly those results. If the enclosing function declares no `ret-type`, `expr` must be absent — a bare
`return` (or falling off the end of the function's block) is the only valid way to end it. A
`return` in a constructor's body is a compile-time error whatever its shape (§9.1 C2b).

### 6.6 `done` and `fail`

**S16.** `done-stmnt ::= "done" STMNT_END` and `fail-stmnt ::= "fail" STMNT_END` are each valid in
any function or test body. Both are unconditional and immediate — not a return to the caller, and
unrelated to the enclosing function's own declared error union (§7). Neither prints any diagnostic.

**S16a.** Each ends **the innermost thing that can end**: the current test if one is running, and the
process otherwise. So `done` ends a test as **passed** and otherwise exits with the OS-standard success
status; `fail` ends a test as **failed** and otherwise exits with the OS-standard failure status. See §10
for the exact status values.

Which applies is decided at run time, not by where the statement is written — exactly as it is for a
failed `assert` (S18). A `fail` inside a helper called from a test ends *that test*, not the process,
which is what makes the two rules one rule rather than two.

**S16b.** `fail` is an orderly exit the program chose: it runs the process's normal exit path and
reports the OS-standard failure status. It is **not** an abort — that is what S16c is for, and the
difference is visible in the status a supervisor sees.

**S16c.** `abort-stmnt ::= "abort" STMNT_END` stops immediately and violently: no cleanup, the OS's
abort status, a core dump where the platform produces one. It behaves in every respect as a failed
`assert` does (S18), including being a recoverable, per-test failure while a test is running — which is
the point of having it, since `assert(false)` already produced exactly this and said nothing about why.

**S16d.** `unreachable-stmnt ::= "unreachable" STMNT_END` states that control was never expected to
arrive. Reaching it is a failure and aborts exactly as S16c does, with a message saying so. It is
**checked, never assumed**: the compiler draws no conclusion from it and generates no code that relies on
the claim, so a wrong `unreachable` is a diagnosed abort rather than undefined behaviour.

`unreachable` exists because D10a requires a result on every path and the analysis behind it is
deliberately structural — it cannot see that a loop never exits, or that a `match` a caller guarantees is
exhaustive really is. `unreachable` is how a program says so, and it is the only one of these four
statements a checker ever *requires*.

### 6.7 `assert`

**S17.** `assert-stmnt ::= "assert" expr STMNT_END`. `expr` must be `Bool`. `assert` is a statement,
not a function call — `assert cond` and `assert(cond)` are both valid and identical, the latter
simply parenthesizing `cond` as an ordinary sub-expression. `assert` is valid in any function, test,
constructor, or destructor body (§9), not
only inside `test { }` blocks.

**S18.** If `expr` evaluates to `false`:
- **while a test is running** (§10.4): that one test is recorded as failed, and execution resumes with
  the next test — a recoverable failure specific to the test harness. This is decided at run time, so it
  applies inside a function called from a test just as much as inside the `test { }` block itself;
- otherwise: the process aborts immediately (an unrecoverable failure), the same way a failed assertion
  aborts in C — leaving a core dump and skipping the normal exit path, which is what distinguishes a
  broken guarantee from the orderly `fail` (S16b).

**S18a.** A failed assert, an out-of-range slice bound (§5.9 E16b) and a negative array length (§3.5
D14b) each print a message naming what failed, to standard error.

**S18c.** An `assert` whose condition can be evaluated at compile time (K1), reading only locals whose
values are fixed (S8c), is **checked while compiling**: a false one is a compile-time error at the assert,
and a true one needs, and gets, no run-time check. This holds wherever the assert is written, reached or
not, so a branch that must never run says so with `unreachable` (S16d) rather than `assert false`. An assert
in a `test` block is judged only in a test build (B3a), the only build that runs it.

**S18b.** Leaving a test early — by a failed assert, a failed runtime check, `done` or `fail` — runs the
destructors of every value still live and reclaims every scope still open, innermost first, through
function frames as well as the test body's own blocks. A test that does not run to completion tears down
exactly what one that does would.

The unwinding happens **before** the `longjmp`, while those frames are still alive. Emitting it at the
recovery point instead does not work and is not a matter of effort: an optimizer does not model the
jump's control flow, so on the only path it can see into that point the scopes are still empty, and it
deletes the closes as provable no-ops. What makes the unwind possible is a runtime chain of the scopes
actually open (§6.8 P1d), which also lets a `join` among them wait for its tasks first.

### 6.8 Concurrency

**P1.** `spawn-stmnt ::= "spawn" [ target { "," target } "=" ] ( call | lambda ) STMNT_END` and `join-stmnt ::= "join" block`. A `spawn` statement
starts one **task**: the call runs on its own thread, and the statement itself completes immediately. A
`join` block is an ordinary block in every other respect, and its end is where every task spawned in it is
waited for.

The operand of `spawn` is a **call** (§5.4) — ordinary, method, dispatched, or through a function value — or a
**lambda** taking no parameters (D16e), whose body is then the task: what it needs, it captures (D16c), each
value copied when the `spawn` runs. Neither states everything a task can *reach*: a task reaches globals, and
anything reachable through a reference it was handed or captured (P3).

**P1a.** Binding is **lexical, and one level deep**. A `join` waits for exactly the `spawn` statements
written inside its own block, however deeply nested in ordinary blocks (an `if`, a loop) within it. It does
not wait for spawns in functions that block calls: a callee's spawns bind to a `join` of the callee's own,
which has already finished by the time it returns. A `join` inside a called function is therefore entirely
that function's, and nests against the caller's not at all.

Two errors follow from that, and both are diagnosed where they are written:

- a `join` block containing no `spawn` statement of its own waits for nothing, and is an error;
- a `spawn` with no enclosing `join` block **in the same function** is an error.

Propagating a callee's spawns up to its caller's join would need the fact "this function spawns" to be part
of its signature, since a caller checks a callee by its signature alone. It is deliberately not taken, and
the reason is that it adds no expressibility: a helper that fans out on its caller's behalf joins its own
fan-out and is itself spawned, at which point the caller's join waits for everything transitively, the
caller's own work still overlaps, and the join point is unchanged. What the effect would save is one parked
thread per helper call. Against that it is viral — every transitive caller carries the marker — and it
makes P2's argument-lifetime check non-local, since a helper's spawn arguments would have to outlive a
`join` block in a caller the helper cannot see, which is an obligation on the signature rather than a fact
about one body. It stays purely additive if it is ever wanted.

**P1b.** The join is on **every path out of the block**, not only its last statement: a `return`, a
`break`, a `continue` and a propagated error all wait for the block's tasks before leaving it. The block's
arena (§8, O2) is reclaimed on the way out, and a task may still be holding storage from it.

`done`, `fail`, `abort` and `unreachable` (§6.7) are the exceptions, and are not joins: each ends the
process immediately, so there is no frame left for a task to outlive. A `test` left early by a failing
`assert` does unwind, and does join — see P1d.

**P1c.** `spawn` guarantees the call runs. A thread the operating system declines to create is therefore
a broken guarantee, not a condition to report: it aborts with `could not start task`, exactly as a failed
`assert` or an out-of-range slice bound does (§6.7 S18a), and is recoverable under `-t` on the same terms.
Running the call inline instead would look like graceful degradation and is not — two tasks that
communicate through a channel deadlock the moment one runs to completion before the other has started.
The cost is one comparison per `spawn`, against the cost of creating the thread.

**P1d.** Leaving a `test` early — by a failing `assert`, a failed runtime check, `done` or `fail` (§6.7
S18, S16) — unwinds **before** it jumps: every scope open between that point and the test's own start is
closed, innermost first, and each `join` block among them waits for its tasks first, exactly as P1b
requires of every other exit. This reaches through function frames, not only the test body's own blocks.

Without it a task outlives the test that started it and runs on into the next one, which is the only way
the guarantee in P1/P1b can be broken. It is why S18b is no longer a gap.

The chain of open scopes this needs is maintained only in builds that can use it: outside `-t` a failed
check aborts the process (S18a), so nothing is ever unwound and nothing is tracked. A module compiled for
a test build is therefore a distinct artifact from its ordinary object (§10 B4), named accordingly.

**P1e.** A task runs on a **cached worker thread**. A finished worker parks on a free list and the next
`spawn` takes it, so a thread is created once per *peak concurrency* rather than once per `spawn`.

Every task still has a thread to itself. This is a cache, not a fixed-size pool, and the difference is
what keeps it correct rather than merely fast: a task that blocks — on a nested `join`, or on a mutex
reached through `extern fn` — occupies its thread for as long as it blocks, so a bounded pool could be
fully occupied by tasks waiting on work that has nowhere left to run. With a worker per live task that
cannot happen.

A worker is returned the moment its task's call **returns**, not when a `join` observes it: a `join` block
that starts several tasks before joining any of them would otherwise reuse nothing at all. The completion
flag therefore belongs to the task, not to the worker, and a `join` waits on that — by the time it looks,
the worker has very likely been handed to someone else.

Workers are created **lazily**: none exist before the first `spawn`, and one is created only when a `spawn`
finds none parked. So the number of threads a program holds tracks how many tasks are live *at once*, and
is unrelated to how many it spawned.

**P1f.** At most **64** idle workers are kept. A worker that finishes its task when that many are already
parked exits instead: it returns its chunk pool (P2a) and releases its stack. A program that is briefly
very concurrent therefore settles back to the cap rather than holding its high-water mark for the rest of
its life.

The cap is on the **cache, never on concurrency**: a `spawn` that finds no worker parked still creates one,
so a live task is never refused a thread and P1e's one-thread-per-task property is untouched. That is what
separates this from a fixed-size pool, which bounds how many tasks may *run* and can therefore deadlock on
a nested `join` or a blocking channel — a bound on idle threads is something nothing can wait on. The value
is deliberately generous, since destroying a worker only to recreate it costs what the cache exists to
save; an ordinary parallel workload never reaches it.

**P1g.** `spawn TARGET = CALL` binds what the call returns; for a call returning several values (D8c),
`spawn T1, T2 = CALL` binds one target per result, `_` discarding one, each on the terms below. `TARGET` is an lvalue, written with plain `=`
and no compound form — a compound assignment reads the target on the task's own thread, which is a data
race written by accident. The plain `spawn CALL` form is unchanged and discards the result (P4).

The store happens **on the task's thread, the instant its call returns** — somewhere between the `spawn`
and the `join`. Two things follow. The target's type must be **exactly** the call's return type, since
there is no caller frame left in which a conversion or a promotion could run. And the target must outlive
the `join` block, on precisely the terms P2 states for an argument: one declared in a block nested inside
the join closes first and is rejected.

The target's address is taken **at the `spawn`**, not when the task runs, which is what makes
`spawn out[i] = f(i)` inside a loop mean slot `i`. Reading the target before the `join` is a data race
(P8b) exactly as reading through an out-parameter would be; the `join` is what makes the result readable.

**P2.** A task's arguments are ordinary borrows of the spawner's storage (§5.3 E12c): the spawner cannot
leave the `join` block until every task started in it has finished, so it provably outlives them all, and
§8's containment check applies unchanged. What that leaves to check is one thing the block form got for
free — an argument must live at least as long as the `join` block itself, which an argument declared in a
block *inside* the join does not. Such a spawn is rejected. The same holds for a function value a task is a
call through: a lambda made inside the join block lives in the block it was made in, and spawning a call
through it is rejected. A spawned lambda (D16e) is instead built to last until the join, and the references it
captured must outlive the join block on the same terms as an argument. Each task gets its own scope, as any
function call does.

A scope a task is handed as a scope variable (§8 O3) is **not** shared with the task that was handed it: the task
allocates into a private arena of its own standing in for that scope, and the spawner folds each one back
into the scope it stands for after the join. A value a task allocates through such a scope therefore lives
exactly as long as that scope, and is reachable from the spawner once the block ends, while no arena is
ever bumped by more than one thread. Destructors registered on a task thread run when the scope they were
registered with closes, ahead of those registered before the spawn.

A task handed no scope variable allocates into its caller's own block, which inside a `join` block is the **join
block's** arena (O2) — so such a value, and any destructor it registers, lives until the block closes and
no longer. A task whose result must outlive the block says so the ordinary way, through a parameter or a spawn target living outside it.

**P2a.** A task's chunk pool is **kept** on the worker that ran it, and the next task to run on that
worker reuses it. Scope memory is pooled per thread (§8.7), so when a task's thread used to exit its
chunks went with it — a leak proportional to the number of tasks that allocate. A worker does not exit
(P1e), so that leak is gone by construction rather than by cleanup, and what is retained is bounded by
the number of workers rather than by the number of tasks.

**P6.** A failing `assert` (§6.7 S18) on a task's thread always aborts the process; it is never the
recoverable, per-test failure S18 describes, even under `-t`. A test's recovery point belongs to the
spawner's stack, which the spawner is still parked on at the join, so there is nothing on a task's thread
to recover to — the same reason P4 gives for errors.

**P3.** *(withdrawn.)* Within one spawn block — the form P1 used to describe, where every statement in a
block was a task — a variable passed to a task through a `mut`-marked
reference parameter could not be passed to any other task in that block. It was stated as the language's
data-race rule and was never one: it compared the **roots** written in the block, and equal roots is a
sufficient condition for two tasks reaching the same storage, never a necessary one.

Two things defeated it, both by construction. **A global needs no argument**, so a task's use of one was
never visible in the block at all. And **two arguments can be one instance** — `b T& = a` gives two
names for one allocation (S4a), and a field reached through two containers can be one object again.
Closing either requires deciding whether two references alias, which is what an ownership-and-borrow
discipline exists to make decidable; this language deliberately has none, so neither was closable.

What made it worth removing rather than documenting is that it rejected **one spelling** of a race while
admitting every other. `f(a)` twice was an error; `b = a` then `f(a)`, `f(b)` was not; two tasks writing
one global was not. Those are the same program three times. A rule that stops the naive spelling of a
mistake, cannot stop the others, and forbids a correct bounded channel on the way, is a style rule with
the force of an error.

**So `spawn` checks nothing about what tasks reach.** A program that spawns is responsible for its own
data races, on the same footing as `extern fn` (§11 X1a) and out-of-range indexing (§5.9 E16e). What
remains guaranteed is structural rather than checked, and is stated in P1, P1b and P2: every task is
joined before its `join` block is left, by whichever path leaves it, and a task's arguments cannot
outlive that block.

**P5.** *(withdrawn.)* A type could once be declared `shared`, waiving P3 for every use of it on the
grounds that it synchronised its own state. The compiler verified nothing about that claim, so the marker
promised a guarantee it did not provide — and since P3a is now explicit that P3 was never a guarantee to
begin with, an exemption from it had nothing left to mean. A type that really does synchronise itself still
works exactly as before; what is gone is the marker that told the compiler to stop asking.

**P7.** Data races are detected at **run time**, not compile time. Building with `-race` (valid alongside
any mode) instruments every emitted function and links LLVM's ThreadSanitizer; a detected race is reported
against the olang function it occurred in, and the process exits nonzero. This is a build mode, not a
language feature: it changes no rule in this section, and an uninstrumented build behaves exactly as
before.

It is a **detector, not a proof**. It reports races that actually happen on the paths a run takes, so it
finds nothing about code that did not execute and nothing about an interleaving that did not occur. What
it does not do is give false positives on correctly synchronised code — a program that guards its shared
state with a mutex is not flagged.

It sees a program's synchronisation because it **intercepts the C library**: the same `pthread_create`
and `pthread_join` §6.8 is implemented with, and whatever a program itself reaches through `extern fn`
(§11) — a mutex taken that way is as visible as one the language provided. The one other source of
ordering is P9's atomic builtins, which lower to LLVM atomic instructions that ThreadSanitizer instruments
and treats as edges directly. Since those are the only ways an olang program can establish ordering at
all, the picture is complete. **Any synchronisation primitive added later must preserve that**: an LLVM
atomic operation is understood, and anything establishing ordering by other means — including a change
making the chunk pool (§8.7) shared rather than per-thread — must annotate itself, or correct code will be
reported.

`-race` is a whole-build mode rather than a per-file one, because the runtime (§8.7) is emitted
`linkonce_odr` into every object: mixing an instrumented object with an uninstrumented one would leave the
linker free to keep either copy. An instrumented object is therefore a distinct artifact from a clean one
(§10 B4) and is named accordingly.

**P4.** A spawned function may not declare an error set (§7): an error raised on another thread has nowhere
to propagate to, since the join carries no value and the spawner is no longer at the call site. A spawned
call's return value, if any, is discarded — `spawn` is a statement, never an expression.

**P9.** Five **atomic builtins**, resolved by the compiler and shadowable by no declaration:

```
atomicLoad(t)              -> T      reads t
atomicStore(t, v)                    writes v to t
atomicAdd(t, v)            -> T      adds v to t, yielding the value t held BEFORE
atomicSwap(t, v)           -> T      writes v to t, yielding the value it held before
atomicCas(t, expected, v)  -> T      writes v to t only if t holds `expected`, yielding what it found
```

`t` must be a **mutable lvalue of an integer type** — `Byte`, `Int32` or `Int64`. Atomicity is a property
of a single machine word, so there is nothing it could mean for an aggregate, a reference or a float. Each
value argument must already have `t`'s type, a numeric literal adapting by representability as anywhere
else (§5.2 T6); the operation is one machine instruction, with no point at which a conversion could run.

`atomicCas` returns **what it found**, not whether it succeeded: for a strong compare-exchange those are
the same fact, since it writes if and only if it found `expected`. That is what lets it report both
outcomes through the one return value this language has.

Every one of them is **sequentially consistent**, and no ordering can be selected. A weaker ordering is
among the easiest things in systems programming to get subtly wrong, and admitting one later is purely
additive.

Each is a valid statement (§6.1 S3) except `atomicLoad`, which only reads and so really is a computed
value discarded.

**P9a.** An atomic operation is a synchronisation edge for P8: two atomic accesses to the same location are
ordered with respect to each other, so a program built from them alone contains no data race under P8b. A
plain access and an atomic access to the same location are **not** ordered, and are a race exactly as two
plain accesses would be — this language has no type that marks a location as atomically-accessed, so
keeping every access to such a location atomic is the program's own responsibility, and `-race` (P7) is
what checks it.

### 6.8.1 Memory model

**P8.** What one task is guaranteed to see of another's writes is defined by a **happens-before** relation.
If A happens-before B, then B sees every write A made. The relation is transitive, and within a single
task it is program order.

Exactly three things establish it across tasks:

- **Every global initializer (§10)** happens-before `main`, and therefore before every task.
- **`spawn`** — everything the spawning task did *before* the `spawn` statement happens-before everything
  the spawned call does. Its arguments are covered by this, which is what makes them readable at all.
- **`join`** — everything a task does happens-before the end of the `join` block it was spawned in, and so
  before everything the spawner does after that block. This is what makes a task's results readable, and
  it holds for **every** exit from the block, not only falling off its end (P1b).

**P8a.** Nothing else is ordered. In particular, **two tasks live at the same time are unordered with
respect to each other**, and so are a task and its spawner between the `spawn` and the `join`. An
implementation may create incidental ordering — two tasks that happen to run on the same cached worker
(P1e) are in fact ordered by that worker's own handoff — and a program may not rely on it, since which
worker runs which task is unspecified.

**P8b.** Two accesses to the same memory that are unordered by P8, where at least one is a write, are a
**data race**, and a program containing one has **undefined behaviour**. This is the same position §11 X1a
takes on a wrong `extern` prototype and §5.9 E16e takes on an out-of-range index: the language does not
define what such a program does, and no guarantee stated anywhere else applies to it.

There is no exception for any type or size. olang has no atomic operations, so **no** access is atomic —
not a `Byte`, not an `Int32`, not a pointer — and a concurrent read of something being written may observe
a value that was never stored. `-race` (P7) detects races that actually occur on a given run, which is a
detector and not a proof.

**P8c.** A program adds ordering of its own by calling a synchronisation primitive through `extern fn`
(§11) — a pthread mutex or condition variable is what `chan.olang` uses. Such a call carries exactly the
ordering the foreign primitive defines. This composes with P8 rather than sitting beside it, because those
are the same primitives the implementation uses for `spawn` and `join`, and it is what P7's detector
follows to tell a synchronised program from a racy one.

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
and the final `IDEN` is one of that type's own declared words (T19). Valid inside an ordinary
function's own body, and inside a **constructor's** own body (§9.1 C2), whose signature's error union
(R1) includes the named error type. Not valid in a `test { }` block or a `destruct { }` body
(§9.3 C7) — neither has an error union of its own — nor at module scope.

**R4.** Executing an `error` statement immediately ends the enclosing function, producing that
specific (type, word) pair as its result, in place of a normal `return`ed value — see §7.3. In a
constructor this ends the construction: no instance is produced at all, and no field declared after
the statement is ever evaluated (§9.3 C6).

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

**R9a.** A catch clause in **value position** — one of a `try-expr`'s own clauses (E24) — ends one of two
ways, and the expression's value on the error the clause handles follows from which:

- its block **provably leaves** — by the structural rule of D10a, where additionally `break` and
  `continue` count as leaving (they leave the expression as surely as `return` does). Then no value is
  ever needed on that path: whatever the `try` was to initialize or be assigned to is never reached.
- it ends with **`default d`**, and the expression's value is `d`, evaluated after the clause's block (if
  it has one) runs, and only then — never on success, and never for an error another clause handles.

A clause in value position whose block does not provably leave must have a default, and a clause whose
block provably leaves may not (the default could never be the value). A `default` belongs to the clause it
is written in; one written directly after the tried operand, outside any clause, is a compile-time error —
`try f() catch default d` is how a value for every error is written. What a default covers is therefore
always what the clause to its left names.

- Each default is a `unary` (E1), binding as tightly as the `try` itself: `try f() catch default 0 == 3`
  compares the result with `3`. A compound default is parenthesized.
- There is **one default per result**. A call returning several results (D8c) takes as many defaults,
  separated by commas — which is written only where the `try` is the **entire** value of a destructuring
  (S4b) or of a `return`: `n, m := try f() catch default 3, 2`. Anywhere else a comma ends the expression,
  so `g(try f() catch default 3, 4)` passes `3`-or-the-result and `4`. A count that does not match the
  results is a compile-time error, as is a default for a call with no success value.
- Each default must fit its result's type (E12), with that type seen from the enclosing function: each of
  the callee's scope variables replaced by the scope the call bound it to (O17/O18). A result that is a
  reference follows the ordinary rules for putting a reference in a variable, and since a reference never
  narrows (O25) that means its default must live in **exactly** the scope the result does — so both
  outcomes have one scope, and whatever receives the value treats it exactly as it would the call alone.
  `null` has no scope and always fits; a temporary has none of its own and is built in the result's scope
  (E12c). A by-value result that holds
  references (a struct or payload carrying scope variables) takes no default.
- A checked index `try a[i]` and a slice `try a[lo:hi]` can fail only with `BuiltinError.OUT_OF_BOUNDS` (§7.7),
  which a clause names or takes with an item-less `catch`: `try a[i] catch default -1`. The
  expression is then a value, never an lvalue.

**R10.** As a **statement** (`try-catch-stmnt ::= "try" postfix catch-clause { catch-clause }`):
evaluates the call; if it produced its success value, that value is discarded (the statement form never
binds one — see §7.5) and control continues after the statement; if it produced an error, the first
clause that handles it runs (§7.5) and, if its block does not leave, control continues after the
statement. The error is never exposed to the block — no error object or word is bound to a name. A clause
of a statement has no value to give, so it always has a block and never a `default`.

### 7.5 `catch`

**R11.** `catch-clause ::= "catch" [ catch-list ] [ block ] [ "default" unary { "," unary } ]`, with at
least one of the block and the default written, where `catch-list ::= catch-item { "+" catch-item }` and
`catch-item ::= IDEN { "." IDEN }` — a type name, optionally preceded by one or more alias hops and/or
followed by `.WORD` to match only that one word; without a trailing word, the item matches every word of
that error type. `+` combines multiple `catch-item`s into one set, exactly as `error-list` combines error
types in a signature (R1). A clause may begin on a line after the one before it.

**R11a.** A `try` may carry **several clauses**, and an error runs the **first** that handles it, in the
order written. A clause with no `catch-list` handles every error no earlier clause did, and so may only be
the last. A clause every one of whose items is already handled by earlier clauses could never run, and is
a compile-time error.

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

**R13.** An error no clause handles propagates exactly as the bare `try`-expression form does (R9) — in
a statement and in value position alike, whether or not any clause has a default: it requires the enclosing function's own error union to cover it.
An error type every one of whose words is individually caught (or that is caught as a whole type) is
fully handled and does not need to appear in the enclosing signature at all — this makes
`try`/`catch` usable even where there is no enclosing error union to propagate into (a `test { }`
block, a `destruct { }` body, or a function or constructor that declares no errors), as long as
nothing actually escapes uncaught.

**R14.** Coverage (R9, R13) is judged at the level of the called function's own declared
`error-list` (R1): if a callee declares a whole error type, the caller must treat every one of that
type's words as possible, even if the callee happens to only ever actually produce a subset of them
internally.

### 7.6 The default error

**R15.** A function or constructor declared with **`?` alone** - no error types after it - fails with **the
default error**: an error with no type and no name, standing for "this failed, without saying how". A function
whose `?` names error types (`? A + B`) fails with those and with nothing else; the default error is not among
them.

**R16.** `error-stmnt`'s grammar (R3) has a second form: `"error" STMNT_END`, with no operand. It raises the
default error and is valid only where that is the error set: in a function or constructor declared with `?`
alone. A function naming its errors raises one of them (`error T.WORD`).

**R17.** A function declared with `?` alone **generalizes** what it tries: any error a `try` in it lets through -
whatever its type - leaves the function as its own default error. R9's requirement that a signature cover what a
tried call produces is therefore always met by a bare `?`; a function naming its errors must cover each one as
before.

**R18.** Having no name, the default error is caught only by an **untyped** clause - `catch { ... }`, or `catch
default v` in value position - which catches whatever no earlier clause took (R11a).

**R19.** The default error carries no information beyond the fact that a failure occurred. Where it escapes
uncaught past `main` (§10.3 B5), the diagnostic says so rather than naming a type and word that do not exist.

### 7.7 Built-in errors

**R20.** The checks the language itself makes report **`BuiltinError`**, an error type declared in the prelude:

```
error BuiltinError { OUT_OF_BOUNDS, DIVIDE_BY_ZERO, OVERFLOW, INVALID }
```

A check runs only where it is asked for, with `try` (§5); an operation written without it behaves as §5 says.
`BuiltinError` is an ordinary error type in every other respect: a function letting one through names it in its
`?` (or is declared with `?` alone, R17), and a `catch` names it, or one of its words. A check names exactly the
words it can produce, and catching those is complete (R13): a checked index or slice produces only
`OUT_OF_BOUNDS`.

## 8. Ownership and Scopes

This section specifies scopes, the `&`/`&x` reference marker's ownership meaning (distinct from its purely
type-level effect, §2.9), the allocation model for reference-shaped values, and the static compile-time check
that constrains how a scope tag may flow from one place to another.

A scope is **never named**. Where a program has to say which scope a reference lives in, it names a
**variable** that already lives there (`&x`, O4a), or writes a bare `&` whose meaning is fixed by its position
(O4). Every scope a function can relate to is reached through one of its own variables or through its result.

A scope tag is a **claim about lifetime**, not a record of where a value was allocated: it says the value is
valid at least until that scope closes, and O25 makes the claim exact for every reference.

The marker's `&` denotes scope-tagged heap indirection. It is not an address-of operator and not a borrow:
this language exposes no pointer type and no way to take the address of a value (there is no unary `&`, E5),
and the check specified in §8.4 is a scope-containment check, not a general borrow check — it constrains
which scope a value may flow into, never how many live readers or writers a value has.

### 8.1 Scopes

**O1.** A **scope** is a nested, strictly last-opened-first-closed (FILO) region that every
reference-shaped value (T24) belongs to. Every reference-shaped value belonging to a scope becomes invalid
when that scope closes.

**O1b.** The program has one more scope, opened before any global initializer runs and never closed.
Whatever a global's initializer builds is built there, so a global may hold a reference (or an array) that
lives as long as the program. Destructors registered in it do not run at exit. `&g`, for a global `g`, names
it (O4a).

**O2.** Every **block** (§6.1 S1) implicitly opens a scope on entry and closes it when the block ends — a
function or test body included, that being its outermost block. The outermost block's scope is the
function's **own** scope. No scope is an expression, and none has a written name (T23).

**O2a.** Block scopes nest, so they are **ordered by nesting**: an enclosing block's scope outlives every
block scope within it, and every scope a function receives from its caller (O3) outlives all of them. A value
tagged to an inner block's scope therefore cannot flow into anything declared outside that block, by O10's
ordinary containment rule and with no rule of its own.

A block's scope closes at the block's end and at every other exit from it: a `return` (`error` and a
propagating `try` included, both being returns), `break` and `continue`. `done`/`fail`/`abort`/`unreachable`
(§6.6) end the test or the process; scopes left that way are closed by the unwinding §6.6 describes, or not
at all.

**O2b.** The cost of a block scope is paid only where it is used. A scope is a chunk-list head that stays
empty until something allocates into it (§8.7), so a block that allocates nothing costs an empty header
and a close that finds nothing to reclaim. What it buys is that an allocation inside a loop body is
reclaimed each iteration rather than accumulating for the whole call.

**O3.** A function receives scopes from its caller as **scope variables**, which are implicit and never
written:

- one per **reference parameter** (O4b) — "wherever this argument lives";
- the **result scope** (O13) — "wherever the result is put", for a function whose result is built there.

A constructor has the same two kinds (§9 C2c): one per reference parameter, and the scope the instance lands
in. An enum case's payload parameters are reference parameters in this sense (T17c).

Each scope variable is bound afresh at every call (§8.6). Neither lengthens the function's own lifetime: the
function still opens and closes its own scope exactly as O2 says, and a scope variable is a separate region
the body reaches only through the variable or result it belongs to.

### 8.2 Scope tags

**O4.** A reference-shaped type (T24) carries a **scope tag**: bare (`&`) or naming a variable (`&x`, O4a).
What a bare tag means depends on where it is written:

| position | a bare `&` means |
|---|---|
| a parameter | that parameter's own scope variable (O4b) |
| the result type | the result scope (O13) |
| a local | its block's (O25a) — `x := e` instead takes `e`'s scope |
| a constructor field, or an element/field of something reference-shaped | its container's scope (O5, C2d) |
| a bare-pun field | the instance's scope, as any bare field (C2d) |
| a generic type argument | its container's scope (G11) |

**O4a.** `&x` says **"lives where `x` lives"**, `x` being a variable visible at the marker:

- in a parameter's type, a parameter written before it in the same `param-list`, the receiver included
  (`fn link(a mut N&, b N&a)`);
- in the result type, any parameter (`fn (l List&) First() Node&l`);
- in a local's type, any local or parameter in scope, or a global — or the word `return`, for the result
  scope (O26);
- in a constructor field's type, a parameter of that constructor or an earlier field.

Where `x` lives is:

- for a reference: the scope its referent lives in — its own tag's scope;
- for a value: the scope references stored into it go into — the block it is declared in, or the function's
  own scope for a value parameter;
- for a global: the program's scope (O1b).

`x` must be reference-shaped or hold references (§8.4 O25); naming any other variable is a compile-time error,
as is a local naming itself. Since no name may be shadowed (D3a), `&x` always means exactly one variable.

**O4b.** Every parameter written with a bare reference marker is passed together with the scope its referent
lives in, as an anonymous **scope variable** of the signature. An argument determines it (O17); a temporary
argument is built where the call's other rules put it (O18a); the function may allocate into it and store
references through the parameter; and any relation the body needs between it and another scope is an
obligation its callers discharge (O10b, O10c). A method's receiver is such a parameter. A parameter written
`&x` has no scope variable of its own: it shares `x`'s, so the two arguments must agree (O17). The hidden
scopes are passed in the parameters' order, the receiver's first — which is what lets a call through an
interface reach its method (T31): the interface value's own tag is the instance's scope.

**O5.** A scope tag has no effect on type identity (T27) and does not change which operations (field access,
indexing, calls) are valid; it only constrains where the value may be allocated (§8.3) and where a reference
to it may subsequently flow (§8.4). A bare tag reached through a container — a field, an element, a payload,
a type argument — is the container's scope.

### 8.3 Allocation

**O6.** A value with no storage of its own — a temporary (§5.3 E12c) — is allocated at the point it is stored
into a reference-shaped slot: a variable declaration, an assignment, a function argument, a return value, or
a field or element of a larger value being itself allocated this way. The scope it is allocated into is the
slot's scope as O4 and O4a give it, bound at the relevant call (§8.6); a nested slot's scope is never
independent of its immediate container's.

**O7.** An array's storage (T11) is always allocated this way, whether or not the array carries a marker:
`Array<T>(n)` (§3 D14) is built in the scope of whatever it lands in, and only a literal or an inline field
(C2e) is laid out in place.

**O8.** Closing a scope (O1) reclaims every allocation made into it. This specification does not
guarantee any particular reuse or timing of underlying storage beyond "valid until the owning scope
closes, invalid after."

**O8a (allocation alignment).** Storage a scope hands out is aligned by its own size: 8 bytes below 32,
32 bytes from 32 up to 64, and 64 bytes at 64 and above. This is enough for the vector types a machine's
SIMD unit loads, and for a cache line, so an array large enough to be worth vectorising is always aligned
for it without anything being written at the declaration.

Alignment beyond 64 bytes is not expressible (see also §11 X3a, which states the same ceiling for a
foreign type reached through an array).

### 8.4 The static scope check

**O9.** Wherever a value already known to be reference-shaped (not a temporary being allocated, O6) flows
into a reference-shaped target of the same type (T27) — an assignment, a variable declaration's initializer, a
function argument, or a return value — the source's scope tag must be **compatible** with the target's, checked
at compile time.

**O10.** A source scope tag `src` is compatible with a target scope tag `dst` — both read from the perspective
of the function currently being checked — exactly when **`src` outlives `dst`**, subject to O25, which
requires the two to be the **same** scope wherever a reference would otherwise be *narrowed*.

Supplying a shorter-lived scope than a target asks for is the dangling-reference case this check exists to
reject. Supplying a longer-lived one is safe for a value that is only read, and is what O25 restricts.

**O10a.** `X outlives Y` holds exactly when one of:

- `X` and `Y` are the same scope (a scope trivially outlives itself);
- `Y` is one of the function's own block scopes and `X` is a scope variable or the program's scope — every
  scope variable is bound to a scope already open when the function was entered, and scopes are strictly FILO
  (O1);
- both are block scopes and `Y`'s block is nested in `X`'s (O2a).

No other pair is ordered **by these facts alone**. Two distinct scope variables of the same function have no
relationship known where that function is checked: each is bound independently by the caller. Rather than
reject such a pair, the checker records it as an obligation — see O10b.

At run time all live scopes *are* totally ordered, by O1's nesting; O10a is simply the part of that order
provable from one function's own signature.

**O10b.** *Scope obligations.* When a flow (O9) requires `X outlives Y` and O10a does not establish it, and
both `X` and `Y` are scope variables of the function being checked, the relation is recorded as an
**obligation** of that function rather than reported as an error. A function's obligation set is the
transitive closure of everything so recorded across its whole body, and is part of its signature exactly as
its parameter types are: it is what the function requires of every caller, derived from what the body
actually does. A relation written in the signature (`b N&a`, O4a) is not an obligation: it is part of the
parameter's type and is checked as an argument agreeing (O17).

A function whose body makes no such demand has an empty obligation set, which is the common case.

**O10c.** *Discharging obligations.* At every call, each of the callee's obligations is translated through that
call's own scope-variable bindings (§8.6) into a relation between the **calling** function's scopes — a binding
to one of the caller's own blocks keeps which block (O2a), so an argument from an inner block does not outlive
one from an outer — and must then hold under O10a extended with the caller's own obligation set (O10b).
Obligations run in either direction between a signature's scope variables, and a relation both ways is an
equality: repointing one reference parameter at another's referent (S4a) obliges callers to pass both from one
scope. One that does not hold is a compile-time error at that call, which names the statement in the callee's
body that required it. Because the function's own scope is
ordered against every scope variable (O10a) and every chain of calls ends at a body whose bindings are
concrete, this terminates.

Obligations are computed per function and consulted per call; nothing outside a function's own signature and
body is ever needed to check it, and nothing but its own callers' bindings is needed to check them. A directly
or mutually recursive function's obligation set is the least fixed point of O10b over its own body, which
exists and is reached in finitely many steps: obligations are pairs drawn from that one signature's own
finite set of scope variables.

**O10d.** *Unsatisfiable relations.* A required `X outlives Y` where `Y` is a scope variable and `X` is one of
the function's own block scopes is not an obligation and is never deferred to a caller: no binding a caller
could choose changes it. It is a compile-time error in the body itself, reported there, and is worth telling
apart from O10b's deferrable case and from O11's untraceable one — all three reject, for three different
reasons.

**O11.** O10 applies only when both sides are traceable, at compile time, to a scope of the function
currently being checked (following, where applicable: a call's own scope-variable bindings — including
resolving a *callee's* tag through that same call's binding before comparing, since a callee's tag always
names one of *its own* scopes; one hop through a variable's own declaration; a chain of member accesses
through constructor-declared fields; straight-line reassignment; and branches of `if`/`match`/loops, merged —
agreeing branches keep the agreed tag, disagreeing branches are treated as O12). A scope tag this
specification's own tracing cannot resolve back to one of the current function's own scopes — including one
read back through an array index (E16), which this tracing does not follow at all — is treated as
**unverifiable** and is a compile-time error, the same as an actually-proven-unsafe flow under O10 — this is
distinct from O10b's obligations, which arise only when *both* sides are successfully traced to scope
variables and merely lack a known order: this checker's guarantee is only as complete as what it can trace,
but it is sound within that limit, rejecting anything it cannot prove safe rather than optimistically
accepting it. Extending what this tracing can follow can only ever accept more programs that are genuinely
safe; it can never turn an already-rejected program newly unsafe.

**O12.** A variable whose scope tag becomes genuinely ambiguous — reassigned to different scopes on different
branches that are merged back together, or (for a constructor field) forwarded from two different same-typed
sibling arguments in a way that cannot be told apart — is treated as **definitely incompatible** with
anything, rejected the same way an unverifiable tag is (O11) but for a distinct reason worth telling apart:
this one was actually traced, and found to disagree, rather than simply never resolved at all.

**O20.** A bare reference slot reached **through** a reference-shaped container — a field or element of a
value that is itself `&`-marked — lives in the **container's** scope (O5), not in the scope of the function
doing the writing. Storing a value whose storage belongs to the writing function is a compile-time error: the
container outlives the call, and reading it afterwards would follow a reference into a closed scope. The same
applies to a value that merely *carries* such references — an enum payload or a constructor-bearing struct's
field whose scope variables were bound to the writing function's own scope where the value was built (O13a's
rule, arriving by assignment rather than by return).

More generally, a value stored into such a slot must outlive the **container**, not merely the storing
function. Where the value's own scope variables and the container's are all scope variables of the storing
signature, their order is not knowable there, so the requirement is recorded as an **obligation** (O10b) and
discharged by every caller (O10c) rather than rejected — which is what keeps the shape writable at all.

A **temporary** is exempt, and must be: having no storage to borrow, it is allocated into the target's own
scope (§5.3 E12c), so assigning a fresh value through a container is safe and is not this case at all.

**O25 (no narrowing).** A reference's scope tag is **exact**: the scope its referent was allocated in, never
merely one it outlives. Anything written through a reference is allocated into the reference's scope (E12c)
and stored where its referent lives, so a reference carrying a shorter tag than its referent's would place a
value where it dangles. Accordingly:

- **O25a.** A local's type says where it lives, and an initializer never changes that: `x T&` lives in its
  block (O2), `x T&y` where `y` does, `x T&return` in the result scope (O26). An initializer that already lives
  somewhere must live in exactly that scope; a temporary is built there. `x := e` writes no scope, and takes
  `e`'s exact scope — the one way a local adopts where its value lives.
- **O25b.** Assigning to a reference local or parameter requires the value's exact scope to be that target's
  exact scope; between two of the function's scope variables that is an equality obligation on its callers
  (O10c).
- **O25c.** Storing an existing reference into a reference-holding **slot** — a field, element or payload —
  requires the value's exact scope to be the slot's whenever the value's referent can itself hold
  references. Otherwise the value must outlive the slot (O10), since nothing written through a reference to
  plain data can be misplaced.
- **O25d.** A returned reference follows O14.
- **O25e.** A scope variable determined by arguments (O17) is bound to their **exact** scope, and two
  arguments determining it must agree exactly — depth included. An argument living in the program's scope
  (a global's referent) cannot determine a scope variable of a parameter whose referent can hold references,
  since the callee may allocate into that variable and store through it.
- **O25f.** A derived obligation (O22) recorded for a value whose referent can hold references is one of
  equality, discharged only by the same scope.

A local that takes the program's scope (O25a) may be read and walked, and nothing may be allocated into or
stored through it, since no function's code allocates into the program's scope.

**O23.** Where a field's scope tag cannot be resolved through its container's bindings — the container arrived
as a parameter, so the binding stayed with whoever constructed it — the field reads at the **container's**
scope, which for a parameter is its scope variable (O4b). This is an underestimate and never a claim: every
value that can reach the field was required to outlive the container's construction scope (O13a, O20, O22),
which in turn outlives wherever the container now sits.

**O22.** An assignment whose target's scope tag resolves to a scope variable of the **type** of a parameter —
the container arrived as a parameter, so the binding was made wherever it was constructed — records a
**derived obligation**: "the stored value outlives scope variable `V` of parameter `p`'s type". The body can
neither decide such a relation nor state it in its own signature, but each caller can resolve it against the
argument it passes, which carries that binding. A caller that only holds a parameter itself records its own
derived obligation instead, moving the question one frame up; this terminates at whoever constructed the
container, exactly as O10c does.

This is what makes a field of a container parameter writable without weakening what a *read* of that field
promises. It is also what keeps a construction binding from going stale: every write into the field is
checked against the same scope variable, so no write that would falsify the binding is admitted.

**O13b.** Where a value's scope-variable bindings differ between the arms of an `if`, `match` or loop, the
merged binding is the **shortest-lived** of what the arms claim — never one arm's value silently chosen. Where
one arm bound the key to a block scope of the function, the innermost such block is the answer outright: O10a
orders every scope variable above them.

Where the arms bound two *different* scope variables, the meet has no single scope here — their relative order
is exactly what O10b defers to the caller — but it is still a definite scope, and every question asked of it
**distributes**: `min(p, q)` outlives a target precisely when `p` does and `q` does. The candidates are
therefore kept and each consumer (O13a, O20) checks all of them. A merged binding is unverifiable only when
nothing was traced at all.

### 8.5 Results

**O13.** A function's result is either **built** or **borrowed**, and its type says which:

- **Built** — the result type carries a bare `&` (`fn number() Expr&`), or is a by-value type holding
  references (`fn mk() Holder`, where `Holder` has a reference field). The function has a **result scope**: a
  scope variable bound at each call to wherever the result is put (O18a), or where a scope argument names
  (E25). Whatever the result is built from that has no storage of its own is built there.
- **Borrowed** — the result type carries `&p`, `p` a parameter (`fn (l List&) First() Node&l`). Nothing is
  built: the result is part of `p`'s data and lives in `p`'s scope, and the function has no result scope.

Several results (D8c) share one result scope; each built result is in it, and each borrowed one names its own
parameter. A function whose results are neither has no result scope. The body reaches the result scope by
returning a temporary, or by naming it: `&return` (O26).

**O14.** What a `return` may hand back:

- for a **built** result: a temporary, built in the result scope, or a value whose exact scope is the
  result scope (`&return`, O26). A reference into a parameter's data is a compile-time error that names the
  borrowed form (`T&p`), and so is one into the function's own storage, which closes at the return;
- for a **borrowed** result `&p`: a value in exactly `p`'s scope where its referent can hold references,
  and otherwise one that outlives it (O10) — a relation between `p` and another parameter being an obligation
  (O10b). A temporary is built in `p`'s scope.

**O14a.** A **function value** (T21) is the exception to O14's first case: a built result of function type may
return a parameter's value, or a function value reached through a parameter's data, with no borrowed form. Nothing
is ever written through a function value (D16d), so such a return needs only that the parameter outlive the
result scope; it is an obligation of the function (O10b), and every call checks it once the result has landed
(O18a). `fn id(f fn() Int32) fn() Int32 { return f }` is then legal, and `keep = id(y)` is a compile-time error
where `y`'s closure lives in a block `keep` outlives.

**O26 (`&return`).** The word `return` after a reference marker names the **result scope** of the enclosing
function (O13): `n Node&return = Node(1, null)` declares a local living where the result will be put, and
`f&return(...)` builds a call's result there (E25). It is how a body builds something in the result scope
other than by returning it directly — a value it fills in first, or one it returns a part of:

```
fn build() Node& {
    n Node&return = Node(1, null)
    n.next = Node(2, null)        # built where n lives - the result scope
    return n
}
fn inner() Point& {
    b := Box&return(Point(7, 8))
    return b.inner
}
```

It is valid only inside a function that has a result scope; anywhere else — a function with no result, a
borrowed result, a test — it names nothing and is a compile-time error.

**O13a.** A returned value whose **type** declares scope variables (T17c, or a constructor-bearing struct's
tagged field) carries whatever those were bound to where the value was built. If one of them was bound to one
of the returning function's own block scopes, the return is a compile-time error: the value hands back a
reference to storage that dies at the return, arriving through a binding the signature never mentions. Only a
binding actually recorded on the returned value is judged; a value returned with no binding of its own — a
parameter handed straight back out — is not, since its scopes were bound by whoever built it.

### 8.6 Binding scope variables at a call

**O17.** *Determination by arguments.* An argument that is **already reference-shaped** carries a scope tag
of its own, and binds the scope variable of the parameter it is passed for to that scope. Every argument
binding the same variable — a parameter and those written `&` it (O4a) — must agree on one scope, or the call
is a compile-time error.

A **value** lvalue passed for a reference parameter is borrowed (E12c): the callee receives that very storage,
so it binds the variable to where that storage is - its block, or where its references were built (O25a).
Any other argument that is not already reference-shaped binds nothing: it is a temporary (O6), and the tag on
its parameter is where it is about to be *allocated*, not a fact about where it already lives. Where it is
allocated is decided as for any temporary (O18a).

**O18.** *Supplying the result scope.* A scope argument (E25) binds the callee's result scope to where a
variable of the caller lives. Without one, the result scope **follows the result** (O18a).

**O18a.** *Landing.* A result scope a call is not given is bound to the scope the call's result **lands** in,
as a temporary is built where it lands (E12c):

| the result goes into | the result scope binds to |
|---|---|
| a declaration written with a bare `&` | the local's block |
| a declaration written `&x` | where `x` lives |
| a declaration written `&return` | the result scope (O26) |
| a declaration of a value holding references | the function's own scope |
| an assignment's target | the scope the target's referent lives in (O25) |
| `return f()` | the returning function's result scope, or `p`'s scope for a result borrowed from `p` |
| an argument for a parameter of another call | that parameter's binding — and, where that is itself still landing, wherever the outer call's result lands |
| a constructor's field or bare-pun parameter | the instance's scope (C2d) |
| several targets of a destructuring (S4b) | their one scope, where they all agree; otherwise the caller's own block, where the call stands |
| anywhere else (an operand, an expression statement) | the caller's own block, where the call stands |

A temporary argument for a reference parameter is placed by the same table, as the result of a call would be.
The callee's obligations that involve the result scope (O10b) are discharged once the statement holding the
call has been checked, against the scope the result landed in. Where several destructured targets disagree,
the fallback to the caller's block makes any target outliving that block fail the ordinary check, so the
disagreement is reported rather than resolved by guessing.

**O19.** Binding is per call. In `fn take(v Vec<Int32>&) Point&`, `v`'s scope is determined by the argument
and the result scope lands or is supplied: `take&x(v)` builds the result where `x` lives, `take(v)` where it
lands. A scope variable's binding is not a value the program can observe; whether a callee needs the region at
run time (because it allocates into it, O6) is an implementation matter with no user-visible parameter.

### 8.7 Destructors and scope closing

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

Every struct type declares a constructor, and may declare a destructor. These are the only two special,
compiler-recognized blocks a struct type can declare; its methods are ordinary functions with a receiver
(M19).

### 9.1 Declaration

**C1.** A constructor-bearing struct is declared:

```
type IDEN [ type-params ] "struct" "(" param-list ")" [ "?" error-list ] "{" ctor-body "}" [ destruct-block ]
```

`param-list` and `error-list` are as in a function signature
(§3 D8), the error set carrying the same leading `?` it does there —
a constructor has no `ret-type` slot for the marker to disambiguate against, but it is written all the
same, so that one spelling of an error set holds everywhere in the language.

**C2.** `ctor-body ::= { ctor-field STMNT_END | stmnt }` — a constructor's body is an ordinary
statement block (§6) in which a field declaration is one more kind of statement, so fields and
statements interleave freely in textual order. A `ctor-field` is exactly one of:

```
IDEN [ "mut" ] ":=" expr           # inferred: type read from expr, as D15 reads it
IDEN [ "mut" ] type-expr [ "=" expr ]   # explicit type, optional initializer
IDEN [ "mut" ]                     # bare pun (§9.2) — valid only when no type/initializer follows
```

A field's declared type (explicit, or inferred by `:=`) may carry a reference marker (T24): bare, or
naming a parameter or an earlier field of this same constructor (C2d).

The `STMNT_END` terminating a `ctor-field` follows §1's own rules for any other statement, L20
included, so a whole constructor may be written on one line (`type Point struct(x Int32) { x }`).

**C2a.** The fields **are** the constructor's own top-level locals. A `ctor-field` declares, in
addition to a field of the struct type, a local of the same name, initialized to the same value and
visible to everything textually after it — a later field's initializer, or an ordinary statement.
**Every rule governing a local var-decl's initialization therefore governs a field unchanged**: D13's
zero value when no initializer is written, and D14's building of an array. A field differs from a local in exactly one respect — it outlives the call, being
assembled into the constructed value — and in nothing else.
A **bare pun** (C4) declares no local of its own: the same-named parameter it binds already carries
that name and that value. A field name may therefore not collide with a parameter name (except as a
bare pun, where matching one is the whole point) or with an earlier field's name.

**C2c.** A constructor's scope variables (§8 O3) are implicit: one per reference parameter (O4b), and the
**instance scope** — where the instance lands, which a constructor has as a function has its result scope
(O13): bound to wherever the call's result is put (O18a), or supplied by a scope argument (E25) —
`Vec<Int32>&x(4)` builds the instance where `x` lives.

**C2d.** In a constructor:

- a field written with a bare `&` lives in the **instance scope**: whatever its initializer builds with no
  storage of its own — a referent, a nested constructor call's instance, text — is built there, and lives as
  long as the instance does;
- a **bare-pun** field of a bare reference parameter lives in the instance scope too, and the argument stored
  in it must outlive the instance (below);
- a field written `&p`, naming a reference parameter, lives where that parameter's argument lives, and one
  written `&f` where an earlier field `f` does (O4a). The constructed value carries these bindings, so a
  short-lived instance may refer into longer-lived storage — a cursor or a view into a structure. A function
  receiving such a value as a parameter does not know that binding, so it may read, walk and repoint through
  the field but not **build** through it: a temporary stored into the field or anything reached through it, or
  the field passed for a parameter the callee may build into, is a compile-time error there (O23);
- a reference parameter written with a bare `&` has its own scope variable, determined by an argument that is
  existing storage (O17); a temporary argument is built in the instance scope (O18a).

An argument the instance stores in an instance-scoped field must outlive it: wherever the result lands — a
declaration, an assignment's target, a returned value's scope — must be outlived by that argument's scope, and
be exactly it when the argument can itself hold references (O25c). An argument for a parameter a field names
(`&p`) is not held against the instance: that field keeps the argument's own scope.
A violation is a compile-time error at that point.

```
type Box struct(v Int32) { inner Point& = Point(v, v) }   # inner lives wherever the Box does
type Link struct(v Int32, next Link&) {
    v
    next                                                   # lives wherever the Link does
}
l Link& = Link(1, Link(2, null))                           # the inner Link is a temporary: built in l's scope
type Cursor struct(of List&) { list List&of = of }        # a Cursor may be shorter-lived than its List
```

**C2e.** A field written as an array value initialized by `Array<T>(n)` or `Array<T>(n, v)` —
`m Array<Float32> = Array<Float32>(16)`, or `m := Array<Float32>(16)` — whose `n` can be **computed at compile
time** (§13 K1: a literal, a constant global, arithmetic, or a call the evaluator can run) is stored **in the
instance itself**: its `n` elements are part of the struct's layout, as a primitive field is. The instance
then remains plain data — copying it copies the elements, returning it by value needs no scope — and its
layout matches a C struct with an array member. `Len()` of such a field is the constant `n`, and an index known
while compiling is checked against it. Where `n` cannot be computed at compile time the field cannot be
stored inline, and must be written as a reference (T7a).

An inline field is **fixed storage**: an array copied into it must have exactly its length. Where both
lengths are known while compiling a mismatch is a compile-time error; otherwise the length is checked once
per copy, and a mismatch aborts the program as an out-of-range slice bound does (E16b).

**C2b.** A `return` statement is a compile-time error anywhere in a `ctor-body`. A constructor
produces no value of its own to return: the instance is assembled by the language from the field
bindings (C6), and the way to end a construction early is `error` (§7.2 R3), which produces no
instance at all.

**C3.** A field is mutable only if declared with `mut` (D9's own rule for parameters applies
identically here); otherwise it is immutable. This governs the constructed instance's own field; the
local a `ctor-field` declares (C2a) is writable inside the `ctor-body` regardless, exactly as any
other local is, and the instance is assembled from whatever value that local holds at the end (C6).

### 9.2 Bare-pun fields

**C4.** A `ctor-field` written as a bare name (with no type, no `:=`, no `=`) must match, by name,
one of the constructor's own declared parameters exactly; the field's type is that parameter's own
type, and the field's value, for any given constructed instance, is exactly the value passed for
that parameter at the call that constructed it. A bare name that does not match any parameter of
the same constructor is a compile-time error.

**C5.** A `ctor-field` with an explicit type and no `=` initializer takes its type's zero value (D13) —
the same as the local it also declares (C2a). It is never implicitly a pun (unlike C4), even if its name happens to match a parameter.

### 9.3 Constructing and destructing

**C6.** `Type(args)` (E13) constructs an instance: `args` are checked exactly as an ordinary call
against the constructor's own `param-list`, in order, and the `ctor-body` then runs in textual order
(C2) — each `ctor-field` evaluating its own initializer once, at its own position, and binding the
result under the field's name (C2a). If the body completes normally, the result is a value of the
struct type assembled from those bindings' final values. If it instead reaches an `error` statement
(§7.2 R4), or an uncaught error propagates out of a `try` within it (§7.4 R9), the construction
produces that error instead and no instance at all — so a field declared after the failing point is
never evaluated.

**C7.** `destruct-block ::= "destruct" block`. A destructor's body has no error union of its own —
every fallible call within it must be fully caught by a `catch` that leaves nothing uncaught
(§7.5), the same rule a `test { }` block follows,
since a destructor is never invoked by ordinary calling code and so has no caller to propagate an
error to. Declaring this block also makes the type reference-only — see C11.

**C8.** Inside a `destruct` block, a bare identifier that names one of the type's own fields (and is
not itself shadowed by a local of the same name) reads that field of the instance being destructed
— there is no `self`/`this` qualifier.

**C7a.** A `destruct` block with no statements is a compile-time error: a destructor exists to release
something when its instance's scope closes, and an empty one releases nothing.

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

A destructor releases something at the moment the scope holding its instance closes, so every name that
can still reach the released thing afterwards must be one that §8 can see. §8 checks **references**: a
reference carries a scope tag and scope-containment proves it cannot outlive what it names. A by-value
copy carries no tag — it is plain data — so copying an instance would move the released resource into
storage no rule tracks, and reading it after the destructor ran would be undetectable. Reference-only is
what keeps every path to the resource inside the checker's reach.

Note that this is *not* about how many times the destructor runs. Registration happens once per
constructor call (C9), never per storage location, so exactly-once already holds however many names an
instance has. The hazard a copy creates is use-**after** release, not double release. The marker is nonetheless written at every
use, exactly as for any other reference: declaring a destructor makes the type reference-*only*, it
does not make the marker implicit, so reading a `type-ref` never requires knowing whether the named
type happens to declare a destructor.

## 10. Compilation Model

### 10.1 Compilation modes

**B1.** Each module — one `.olang` file (§4 M1) — is a **separate compilation unit**, compiled to its own
object file and linked with the others. The compiler operates in exactly one of three modes, selected
by a command-line flag; there is no other entry point.

**B2.** `-c <file>`: compiles the single module `<file>` to one object file, and stops — nothing is
linked and no other module's code is generated. Every module `<file>` imports, transitively, is still
read and analyzed, because that is where their declarations come from (B2a); only code generation is
confined to `<file>` itself. `main` is neither required nor emitted.

**B2b.** `-race` is a **modifier**, valid in any position alongside any of the modes above, and it applies
to the whole build: every emitted function is instrumented and ThreadSanitizer is linked in (§6.8 P7).
Because the instrumented form of a module is a different artifact from its clean one, it is named
separately (B4) — so a `-race` build never silently reuses a clean object, and the two can be current at
the same time.

**O2c.** Storage for a local or a temporary is reserved once per **call**, never once per execution of the
statement declaring it. A declaration inside a loop therefore costs nothing per iteration, and a loop of
any length runs in constant stack.

**B2c.** Generated code is **fully optimized by default**, in every mode. `-debug` is the single exception:
it disables optimization so that the emitted code corresponds to the program as written — nothing is
inlined, nothing is reordered, and values live in memory rather than in registers, so a backtrace names the
functions actually called and the state is inspectable. It is a modifier, valid alongside any mode and in
any position, and composes with `-race`.

**B2e.** Under `-debug` the build also carries **source-level debug information** (DWARF): every function
of the program has a source location and its own name, every statement a line, and every parameter and local
of a primitive or reference type its name and value. A debugger can therefore break on a function or a
`file:line`, step by statement, show arguments and locals, and print a backtrace in source terms. A by-value
aggregate local is not yet described, and a test build's `test` blocks share one function scope. Outside
`-debug` no debug information is emitted.

A debug object is a distinct artifact from an optimized one and is named accordingly (B4) — without that,
a `-debug` build would silently reuse optimized objects and be exactly what was not asked for.

**O2d.** Where a call binds one of a callee's scope variables to the caller's own scope, the **block** that
means is decided by what bound it. A binding an argument determines (O17) refers to the block the
argument's referent lives in, which may be any number of blocks out from where the call is written. A
result scope the call is not given lands where its result goes (O18a), and where the result goes nowhere it
refers to the block containing the call.

Without the first half, a call written inside a nested block allocates the callee's result into that
block's scope, and a value the caller holds outside it is reclaimed at the block's closing brace.

**B2d.** A build is **link-time optimized**. Each module is compiled to an intermediate form and the whole
program is optimized once, at the link, so a call into another module is subject to inlining — and to
everything inlining enables — exactly as a call within one module is. This holds wherever optimization
holds: `-debug` (B2c) disables it along with the rest, and `-race` (§6.8 P7) does not use it, because
attributing a report to the right function depends on code not moving between them. Those builds produce
distinct artifacts already (B4), so an optimized object and one that is not are never mixed.

One consequence is visible: the object file `-c` writes holds that intermediate form rather than native
code, which is what `-c` produces in any compiler that was asked for link-time optimization. It links
normally here; it is not a native object for another toolchain to consume.

**B2a.** A module's imports are resolved from their **source**, exactly as they are within one program:
there is no separate interface, header, or metadata file, and none is generated. A prebuilt library is
therefore its sources together with its object files, and a signature is never stated in two places
that could disagree. This matters beyond convenience: a function's scope obligations (§8 O10b) are
derived from its body, so a separate interface would carry a fact its own source is the only authority
for.

**B3.** `-b <file>`: builds one program, with `<file>` as its root module. Every module reachable from
`<file>` by imports is compiled as in B2, and the results are linked into one native executable.
`<file>` must declare a `main` function (§10.2). A module's object is rebuilt when it is older than
that module's own source **or than any source it transitively imports** — an object depends on the
signatures it was compiled against, so a change to an import invalidates it even though its own source
did not change.

**B3a.** `-t <file> [<file> ...]`: for each listed file, independently, compiles that file as its own
root module (transitively pulling in its own imports, exactly as `-b` would) and runs every
`test { }` block declared *directly in that file* (§10.4) — not those declared in any module it
merely imports. `main` is not required in this mode, and is not run even if present. Each listed
file's compilation and test run is independent: a compile-time error in one listed file does not
prevent the others from being checked and run.

**B3b.** A symbol a module defines is named from that module's **identity** (§4 M22a) — its path — never from
anything about the compilation it happens to be part of: an object compiled on its own has to agree with one
compiled as part of a whole program. Two modules whose identities coincide therefore collide, and that is a
compile-time error. A std module named directly on the command line takes the identity its importers give
it.

**B3c.** The language's own runtime support is emitted by **every** module's object, under one shared
name, and the duplicates are discarded at link time.

**B3d.** The instantiations of generics (§12 G16) are the **whole program's**, and are defined by the object
of the compilation's **root** module only — `-b`'s and `-t`'s root, or `-c`'s one module — each under one
shared name per B3b; every other object refers to them. An ordinary module's object therefore depends on
nothing but its own module and its imports, and is correctly reused by any program that imports it. The
root transitively imports every module of the program, so its own staleness (B3) already covers every change
to the instantiation set. Copies a `-c` object of another module carries are discarded at link time.

### 10.2 Program entry

**B4.** In `-b` mode, the root module must declare a function named `main` with exactly this shape:
no parameters, no success type, and at least one declared error
(§3 D8) — `fn main() ? SomeError [+ ...] { ... }`. Any other
shape (parameters, a `ret-type`, or no declared error at all) is a compile-time error. There is no
other valid `main` signature; in particular, there is no "return an int/bool status" convention.

### 10.3 Process exit

**B5.** Running the compiled program (`-b` mode) invokes `main`. If it returns normally (falls off
the end, or a bare `return`), the process exits with status `0`. If an error (§7) escapes `main`
uncaught, the process prints `unhandled error: TypeName.WORD\n` to `stderr` (naming the specific
declared error type and word that escaped) and exits with status `1`.

**B5a.** Every module's global variables (§3 D12) are initialized before `main` runs, each module's own
in declaration order. Across modules the order is **imports first**: a module is initialized after every
module it imports has been. Where imports form a cycle (§4.6 allows one), the relative order of the
modules in that cycle is unspecified, so a global initializer that reads a global from another module in
the same cycle has no defined value to read and must not be written.

**B6.** `done` and `fail` (§6.6) exit the process immediately, from anywhere, with status `0` or `1`
respectively, printing nothing, independent of §10.3's own `main`-return handling — except while a test
is running, where they end that test instead (S16a). An abort from a failed runtime check (S18) reports
the OS's abort status, which is distinct from `fail`'s: one is a broken guarantee, the other a decision.

### 10.4 Test blocks

**B7.** `test-decl ::= "test" STR_LIT block`, valid as a top-level declaration in any module.
`STR_LIT` is the test's description. A `test` block has no error union of its own — the same rule a
destructor's body follows (§9.3 C7): every fallible call inside it must be fully caught.

**B8.** A `test` block is only ever executed under `-t` (§10.1 B3a), and only for the file it is
directly declared in. Each test in a run prints its own description together with pass/fail, and
one test failing (§6.7 S18, inside the block itself) does not stop the remaining tests in the same
file, or any other listed file, from running.

### 10.5 Conditional compilation and build constants

**B9.** An `if` statement written at the **top level** of a module — `top-if ::= "if" expr "{" { top-decl
| top-if } "}" [ "else" ( top-if | "{" { top-decl | top-if } "}" ) ]` — is **conditional compilation**:
exactly one of its branches (the first whose condition is true, or the `else`, or none) is part of the
module, and the declarations in the others do not exist. Nothing runs at the top level, so a top-level
`if` has no other meaning. A branch may hold any top-level declaration — types, functions, globals,
`extern` declarations, imports and `test` blocks — and further top-level `if`s. A branch that is not
taken is not parsed or checked in any way beyond matching its braces: it may use names, types and syntax
that exist only where it would be taken. An `if` inside a function or test body is an ordinary `if` (S8):
S8a and S8b say when its condition is dead code and when the build decides it.

**B9a.** A top-level condition decides which declarations exist, so it is decided before the module's
types are resolved where it can be: when it uses only **literals**, **build constants** (B10), and
**immutable globals** the module declares at its top level outside every conditional — in any of its files
— whose own initializers are built the same way; combined with parentheses, `not`, unary `-`, `* / % + -`,
the six comparisons, `and` and `or`. It must evaluate to a `Bool`. Integers and floats mix as their values,
a global declared with a float type reads as a float, and text (a string literal, a text build constant,
or a global holding one) compares with `==` and `!=` **by content**. A mutable global has no value a build
could decide on and is rejected, as are globals defined in terms of each other.

**B9c.** Any other condition — one that calls a function, reads a global computed by one, or names
another module's declaration — is decided by **compile-time evaluation** (§13): the program is checked
without the branches of such conditions, each condition is then checked as an ordinary `Bool` expression
in its module and evaluated, and the program is checked again with the branches chosen, repeating while a
chosen branch holds further such conditions (to an implementation-defined depth). Diagnostics from every
attempt but the last are not reported. A condition that cannot be evaluated (K1) is a compile-time error
naming the operation that prevents it and where it is written; so is one using a declaration that exists
only inside a branch still being decided, since its value would depend on the choice it is making. Text
compares here as it does everywhere else (E10), not by content.

**B10.** `-D Name=value` (or `-DName=value`), given any number of times alongside any mode, defines a
**build constant**: an immutable global named `Name`, visible by its bare name in **every** module of the
build, whose type and value are those of a literal written as `value`. `true` or `false` is a `Bool`; text
shaped as an integer literal is an integer (typed by T6a), text shaped as a float literal a float, each
optionally preceded by `-`; anything else — or anything in double quotes — is text, a `Byte[N]` holding it.
A build constant is an ordinary immutable global in every other respect: it may be read, borrowed and
passed, and never assigned. A module declaring a top-level name equal to a build constant's is a
compile-time error, as is defining one name twice.

**B10a.** Every build defines five build constants of its own, and `-D` may not redefine them:
`TargetOs` and `TargetArch`, text naming the target's operating system (lowercase, e.g. `"linux"`) and
architecture (e.g. `"x86_64"`) — the host's, since compilation is not yet cross-target; and `DebugBuild`,
`RaceBuild` and `TestBuild`, `Bool`s saying whether the build is `-debug`, `-race` and `-t` respectively.

**B10b.** The build constants' values are part of what a module compiles to — a top-level condition may
take a different branch under different ones, and compile-time evaluation (K2) may make one part of a
global's data — so a module's object is a distinct artifact for each set of values of the `-D` names its
import closure mentions (B4). Changing a value rebuilds exactly the modules that mention it, directly or
through an import, and never reuses an object compiled under the old value; a module that mentions no
changed name is not rebuilt, and changing a value back finds the earlier objects current.

## 11. External Functions

**X1.** `extern-func-decl ::= "extern" "fn" IDEN "(" extern-param-list ")" [ extern-ret-type ]
STMNT_END` is a top-level declaration (D1) naming a function defined outside this compilation and
resolved by the platform's linker at build time. Unlike an ordinary `func-decl` (D7), it declares no
`error-list` and has no `block` body of any kind — `STMNT_END` ends the declaration directly where an
ordinary function's body would otherwise begin.

**X1a (memory safety).** `extern fn` is, with an out-of-range array index (§5.9 E16e) and a null
dereference (§2.1 T2b), one of the places in the language where memory safety rests on something the
compiler does not check. A declaration states a prototype, and the compiler takes it at its
word: it verifies nothing about the function that actually links, its real signature, its calling
convention, or what it does with the pointer an array parameter marshals to (X3). A wrong prototype is
undefined behaviour, and a wrong *size* for a foreign type reached through a reserved array — a
`pthread_mutex_t` held as `Array<Byte>(40)`, say — is silent memory corruption rather than a diagnosed error.

This is unavoidable rather than an omission: the foreign side is compiled by another toolchain and olang
has no view into it. Every other guarantee in this specification is stated as holding for programs that do
not declare an incorrect prototype. Keeping the vocabulary deliberately narrow (X2) reduces how much can
be got wrong, but does not close it.

**X2.** `extern-param-list ::= [ extern-param { "," extern-param } ]`, where `extern-param ::= IDEN
extern-type`, and `extern-ret-type ::= extern-scalar-type`. `extern-type` is exactly one of: a
numeric primitive type (T5 — `Byte`, `Int32`, `Int64`, `Float32`, or `Float64` — this is also
exactly `extern-scalar-type`), or an array type (T7, compile-time-length or runtime-length) whose element type is
itself one of those five. `extern-ret-type` is restricted to `extern-scalar-type` alone — an array
return type is never valid (see X3 for why). No other type — `Bool`, a struct, an enum type, an
error type, a function type, or an array of any type outside the numeric-primitive set —
is valid in an `extern-param` or `extern-ret-type` position.

**X3.** An array-typed `extern-param` (X2) is passed as a pointer to the array's own first element
only — never its length (a runtime-length array's own `{ len, ptr }` representation, T11, is reduced to
just the pointer half; a compile-time-length array's own embedded address is used directly). This pointer is
never itself a nameable value or type anywhere in this language — it exists only at this one
marshalling boundary. If the external function also requires the array's length, the declaration
states it as a separate `extern-param` (X2) of an integer type, supplied explicitly by the caller
(`arr.Len()`, E23) — an `extern-param-list` never infers one parameter's value from another's. An
`extern-ret-type` can never be an array (X2) for exactly the reason this same marshalling can't run
in reverse: a raw pointer an external function returns carries no length anywhere alongside it, so
there is no sound way to reconstruct a real `{ len, ptr }` value from it — accepting one would mean
either fabricating a length (silently unsound) or inventing a real pointer-typed value somewhere in
the language (exactly what X3's own marshalling exists to avoid).

**X3a (foreign opaque storage).** A foreign type with no olang spelling — a `pthread_mutex_t`, say — is
held as a `Byte[N]` and handed over by X3's marshalling. Three things make that sound, and only the first
is about `N`:

- **`N` is an upper bound, never an exact size.** Nothing embeds the blob by value; the foreign side only
  ever receives a pointer to it, so reserving more than it uses is harmless and reserving less corrupts.
  A generous constant is therefore correct on every target at once, which matters because the true size is
  a property of the *architecture* rather than of C — one C library's own headers define three different
  sizes for `pthread_mutex_t` depending on the machine.
- **The element type supplies the alignment.** An array is aligned as its element type is, and an
  aggregate containing one is laid out by the same natural-alignment rule the platform's C compiler uses
  (§3.2) — so an `Array<Int64>(8)` is 8-aligned wherever it sits, inline in a struct (C2e) or in the
  arena, while an `Array<Byte>(64)` has alignment **1** and may land at any offset in its container. A foreign type holding
  a pointer, or performing an atomic operation on itself, cannot tolerate that. Choose the element type
  for the alignment the foreign type needs and divide the reservation by its size; `Byte` is the wrong
  choice for almost every foreign type, and is right only for one that really is a byte buffer.
  The largest alignment this expresses is a primitive's largest, currently 8. A foreign type needing more
  (a long double, a vector type) has no sound spelling here.
- **It is declared without `mut`.** Its bytes belong to the foreign side, so no olang code should write
  them, and omitting `mut` is what says so. This does not restrict the foreign function at all: X2 gives
  an `extern-param` no mutability of its own, and X3 hands over a bare pointer, so the callee writes
  through it exactly as it must. Reading such a blob from olang stays legal and is merely meaningless.

**X3b (a foreign call is opaque).** A call to an external function may read and write any storage
reachable from the pointers X3 marshals for it, together with any storage an earlier call has made
reachable to foreign code. A value loaded before such a call is therefore not reusable after it, and a
store may not be deferred past it, unless the storage is provably unreachable from the call — a local
whose address never leaves this program may stay in a register across one.

This is what makes writes by the foreign side observable with nothing written at the declaration: a buffer
a foreign function fills, or the bytes of an X3a blob, are read back as written. **There is no `volatile`
qualifier in this language and none is needed** — the call is the barrier. It is also what §6.8 P8c's
ordering rests on, since a synchronisation primitive reached this way can only order anything if the
accesses around it stay on their own side of the call.

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
copy compiled for each distinct set of type arguments it is used with. Enum and error types can
never be generic — neither may reference any other type at all (T17, T19), so there is nothing to
parameterize.

### 12.1 Type variables

**G1.** `type-var ::= "<" IDEN ">"`, written where an entire `type-expr` (T2) would otherwise
appear. It names a **type variable**: a type that is not known at the declaration and is supplied
per instantiation. `IDEN` must not name a type declared in the referencing module (D2); writing a
declared type's name inside a `type-var` is a compile-time error, since `<Point>` would otherwise
read as parameterizing over something already concrete.

**G2.** A `type-var` may carry a reference marker exactly as a `type-ref` does (T24), and is written as an
array's element as any type is — `<T>&`, `Array<<T>>&`, `Array<<T>&>&` are all well-formed — and the marker rules of §2.9 apply to it
unchanged once the variable is bound to a concrete type by instantiation.

### 12.2 Generic functions

**G3.** A function is generic exactly when a `type-var` (G1) appears anywhere in its signature
(`func-sig`, D8). It declares no type-parameter list: its set of type parameters is every *distinct*
`type-var` name appearing in that signature, and repeating a name binds those positions to one and
the same type.

```
fn max(a<T>, b<T>) <T> { ... }
fn pairUp(a<A>, b<B>) <A> { ... }
```

**G3a.** G3 applies to a function **declaration** only. A function **type** (T2's `func-type`, written as a
parameter's or variable's type) is never generic in its own right: a `type-var` appearing in one names the
*enclosing* declaration's type parameter and introduces nothing of its own, so the function type has an
empty type-parameter list. There is no higher-rank polymorphism — a parameter cannot demand "any generic
function", only a function at the enclosing declaration's own (possibly generic) types.

```
fn sortBy(v mut Array<<T>>&, less fn(a <T>, b <T>) Bool) { ... }
```

`T` here is `sortBy`'s, inferred from the call as usual (G9, which unifies through a function type's own
parameters), and `less` is called inside the body as an ordinary function value.

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
type Vec<T> struct(cap Int64) {
    items mut Array<<T>>& = Array<<T>>(cap)
    len Int64 = 0
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
Within a `type-args` list a type parameter is written `<T>` like anywhere else (G8b), so a generic
declaration may instantiate another generic with its own parameter (`Vec<<T>>` inside a declaration that
declares `T`) — or itself, through a reference marker (`next Node<<T>>&` inside `type Node<T>`). In a
function's body, the type variables of its signature are in scope exactly as in the signature.

### 12.4 Inference and instantiation

**G9.** At a call to a generic function, type arguments are never written: each is determined by
matching the actual argument types structurally against the declared parameter types. G4 guarantees
every variable is reachable this way. If two positions bound to one variable are matched against
different types, the call is a compile-time error.

**G9a.** A numeric literal argument (T6) whose parameter is a bare type variable does not take part in
that matching while any other argument binds the same variable: the variable is determined by the other
arguments, and the literal then adapts to it by T6 or is rejected as unrepresentable. A variable reached
only by such literals is bound to the widest of their types, ranked as for a binary operator's two
literal operands (§5.4). So `Pick(v, 7)` with `v Int64` instantiates `Pick` at `Int64`, and `Pick(1, 2.5)`
at `Float64`.

Written text (a string literal, a `$` rendering or a join, E11a/E11b) is treated the same way: it binds nothing
while another argument binds the variable, and is then built as a temporary of the bound type - so
`m.Put("apple", 1)` on a `Map<String&, Int32>` passes the text where a `String&` is wanted. Reached only by text,
the variable is the text's own type (`String`).

**G9b.** Matching runs left to right, the receiver of a method first. An argument whose parameter is a bare type
variable already bound by an earlier argument takes no part in it: the argument is then checked against the
bound type as in any call, with E12's conversions - so `m.Get(key)` with `K` bound to `String&` borrows a `String`
value `key` as any `String&` parameter would.

**G9c.** An argument of a concrete (non-interface) type whose parameter is an application of a generic interface
(`s mut Source<<T>>&`) is matched through the methods that make it satisfy that interface (T31): each interface
method's parameter types and result are matched against those of the method the argument's type supplies under
the same name. So a `ListIter<Int32>` passed to `Iterator<<T>>&` binds `T` to `Int32`. Whether the argument then
satisfies the interface the bindings give is decided by the ordinary conversion (E12d).

**G10.** A generic struct type is instantiated only by writing its type arguments (G8). `Vec<Int32>`
and `Vec<Int64>` are different types (T27); two instantiations are the same type exactly when the
named type and every type argument are the same.

**G10a.** A generic struct type that declares a constructor (§9.1) is constructed by writing its type
arguments before the argument list, and a scope argument (E25) after them to build the instance where
a variable lives: `Vec<Int32>&x(4)`, or `Vec<Int32>(4)` to build it where it lands (§8 O18a). The type
arguments select the instantiation exactly as G8
does in a type reference, and the call then targets **that instantiation's own** constructor: the
generic's own constructor is never a call target, its parameter types still being type variables.
Writing a list where the named type is not generic is a compile-time error, as is a count that does not
match the declared `type-params` (G6). Omitting it is G10c.

**G10c.** A generic struct type's constructor called with no type-argument list infers its type arguments from
the constructor's arguments, exactly as a generic function's are inferred (G9, G9a, G9b): `Pair(1, s)` is
`Pair<Int32, String&>(1, s)`. A type parameter no constructor parameter mentions, or arguments that bind one
inconsistently, cannot be inferred, and the call is then a compile-time error naming the written form. A type
named anywhere other than a constructor call always writes its arguments (G6).

**G10b.** A generic struct type's constructor and destructor are monomorphized with it (G16): each
instantiation gets its own, built from the generic's own field list and `destruct` block against that
instantiation's substituted types. C11 applies unchanged — an instantiation of a type declaring
`destruct` is reference-only, and each instantiation's destructor is a distinct one, running for the
instances of that instantiation only.

**G11.** A type argument may be a **reference**, written with a bare marker (`List<String&>`): wherever
the instantiation holds a value of that type, the reference lives in its container's scope (O5), as an
array's element reference does, and a parameter of that type is passed with its scope (O4b). A type
argument naming a variable (`List<String&x>`) is a compile-time error: the variable belongs to the
function writing it, inside generic code that cannot see it (O11). A type variable written bare (`x <T>`)
and bound to a reference is that reference; written with a marker (`x <T>&`), `T` is the referent's type.
Reference-shapedness is part of an instantiation's identity (G16a), so `List<String>` and `List<String&>`
are two types.

**G12.** An uninstantiated generic name is not a value: a generic function may be called or
instantiated but never read as a `func-type` value (T2). A fully instantiated one is an ordinary
value and may be used wherever a function value is expected.

### 12.5 Dispatching on a type parameter

**G13.** `match` (S12) accepts a `type-var` as its own operand, with each `case` naming a
`type-expr` instead of a value expression. This form is resolved when the enclosing generic is
instantiated, not at run time.

```
fn writeVal(fd Int32, v<T>) Int64 ? error {
    match <T> {
        case Int32  { return write(fd, i32Bytes(v)) }
        case Array<Byte> { return write(fd, v) }
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

## 13. Compile-time evaluation

**K1.** An expression can be **evaluated at compile time** when everything evaluating it does can be done
without a running program. No declaration marks a function as evaluable: any function is, on a given
call, when what that call actually does is evaluable. Evaluation follows this specification's own
meaning for every operation - integer widths wrap exactly as generated code does, a reference (and an
interface value) names the very value it was taken from, a function value names the function, a slice shares its base's elements, text renders exactly as the generated code
writes it, a checked operation (E15a) fails with the same `BuiltinError` word, and a `try`'s clauses handle an
error as they would at run time. It is **not** possible when evaluation would:

- read a mutable global, whose value is the running program's, or write any global;
- build a value whose type declares a destructor, which runs when its scope closes — except directly in a
  global's own initializer (K2c);
- call an `extern` function or dispatch through an interface - a call through a function value is evaluated
  when the function it reaches is, which is known only when the call is reached;
- spawn or join, use an atomic operation, or end the test or the process (`done`, `fail`, `abort`,
  `unreachable`);
- fail an `assert`, or let an error escape that no clause handles;
- do anything this specification leaves undefined - divide by zero, divide the most negative value by
  `-1`, shift by a count outside the type's width, convert a float the target cannot represent, or index
  outside an array - which evaluation refuses rather than giving a value the program never had (each is
  evaluated when written under `try`, E15a, where it is defined);
- take a slice out of range without `try`, which aborts at run time (E16b);
- run longer, or recurse deeper, than an implementation-defined budget.

**K1a.** Whether a call of a function can ever be evaluated is a property of the **function**, not of the
arguments one call passes: a function whose body — or anything it calls, or the initializer of an
immutable global it reads — contains an operation K1 excludes can never be, whichever path a particular
call would take. A context that needs such a call evaluated reports that operation and where it is
written.

**K2.** An **immutable global** whose initializer can be evaluated at compile time is: its value is
part of the program as data, and nothing runs at startup to set it. Where the initializer cannot be, the
global is set at startup (B5a) exactly as before - evaluation is attempted, never required, here - so
whether it succeeds changes nothing a program can observe, except that such a global is also available
wherever a compile-time value is needed (only a value holding no reference is available that way; see K2b
for one that does).

**K2c.** A global's own initializer may build an instance whose destructor does something: what it builds
lands in the program's own scope, which never closes (O1b), so that destructor would never run in the
program either. Anything built inside a function it calls — including a constructor's own fields — is still
refused, since that function's scopes close.

**K2b.** K2 reaches a global holding an **array** or a **reference** too: what it points at is written out
as data beside it, so a table computed by a loop, or a linked structure built by constructors, costs nothing
at startup. Two references to one instance remain one instance, and a structure referring to itself is
written as such. The data lives as long as the program (O1b).

**K2a.** A **parameter's default value** (D8a) that is not a literal must be evaluable at compile time;
one that is not is a compile-time error naming the operation that prevents it.


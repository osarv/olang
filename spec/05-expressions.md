# 5. Expressions

## 5.1 Grammar overview

**E1.** Expressions are built in four layers, tightest-binding first:

```
expr     ::= binary
binary   ::= unary { bin-op unary }          (precedence-climbing, see E5)
unary    ::= { unary-op } postfix
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
resolution, against every rule in [04-modules.md](04-modules.md) §4.4 for a cross-module alias
chain; if it resolves as one, ordinary member resolution does not apply to that leading identifier.

**E3.** `call-expr ::= alias-chain IDEN "(" [ expr { "," expr } ] ")"` ([04-modules.md](04-modules.md)
§4.4 M8), covered in §5.4.

**E4.** `literal ::= BOOL_LIT | INT_LIT | FLOAT_LIT | CHAR_LIT | STR_LIT`. An expression `op` is a
**literal expression** (relevant to D15's `:=` and to §5.6–§5.7) exactly when it is one of these
token literals, a struct literal (§5.6), or an array literal (§5.7), recursively including one whose
own sub-expressions (struct field values, array elements) are themselves literal expressions where
required. A parenthesized literal, a variable read, and a function call are never literal
expressions, even if their value is known at compile time.

## 5.2 Operators

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
type, except: an integer literal operand widens to match a `float32`/`float64` operand of the same
expression position (the only implicit conversion in the language, T6). `%` requires both operands
to be integer types. There is no implicit `int32`↔`int64` or `byte`↔anything conversion; mixing
distinct numeric types without a literal on at least one side is a compile-time error.

**E7.** `&& || ^^` require both operands to be `bool` and produce `bool`; they are not
short-circuiting distinctly from any other olang control construct — both operands are always
evaluated (olang has no short-circuit boolean evaluation).

**E8.** `& | ^` require both operands to be the same integer type (T5) and produce that type; `~` is
unary and requires one integer operand, producing that type. `<< >>` each require their *shifted*
(left) operand and their *shift-amount* (right) operand to independently be integer types, but the
two need not be the same type as each other; the result is the shifted operand's own type.

**E9.** `< <= > >=` require both operands to be the same numeric type and produce `bool`; there is
no ordering on any non-numeric type.

**E10.** `== !=` accept operands of any single type `T27`-matching pair and produce `bool`, with
value semantics that depend on whether `T` is reference-shaped (T24–T26):
- for a primitive or vocab value: ordinary value equality;
- for an embedded struct or fixed array: deep, member-wise/element-wise structural equality
  (recursively applying this same rule to every field/element);
- for a reference-shaped struct or array (a `<>`/`<name>`-marked type, or any dynamic array): pointer
  identity — two references compare equal only if they refer to the same underlying storage, never
  by comparing what they point to.

There is no expression that produces a value of an error type (§2.6): an error word is never a
first-class comparable value, only a function's own result (§7).

**E11.** Prefix `!` requires a `bool` operand and produces `bool`. Prefix `-` requires a numeric
operand and produces that type (negation). `++`/`--`, prefix or postfix, require an integer- or
float-typed, mutable (§6.2) lvalue operand, and both read and write it: postfix yields the
pre-increment/decrement value, prefix yields the post-increment/decrement value, exactly as in C.

## 5.3 Assignability ("fits")

**E12.** A value of type `S` **fits** a target of declared type `T` (used uniformly for a variable
declaration's initializer, D12; an assignment's right-hand side, §6.2; a function or constructor
call's argument, §5.4; and a `return`ed value, §6.5) exactly when one of:

- `S` and `T` are the same type (T27); if both are additionally reference-shaped (T24), an
  additional scope-compatibility rule applies — see
  [08-ownership-and-scopes.md](08-ownership-and-scopes.md);
- the value is an integer literal expression and `T` is a float type (E6);
- the value is a fixed-size array whose element type matches `T`'s element type, and `T` is a
  dynamic array of that element type (T7–T8) — the value is copied into a freshly sized dynamic
  array regardless of whether the value itself is a literal;
- `S` and `T` are both fixed-size arrays of the same element type but different sizes — this is
  specifically rejected (a "wrong size" error distinct from a general type mismatch), not accepted.

Any other pairing does not fit, and is a compile-time error.

## 5.4 Function calls

**E13.** A call's target is resolved as `alias-chain IDEN` (E2–E3,
[04-modules.md](04-modules.md) §4.4 M8) against: a local variable or parameter of function type; a
module-level function; or a struct type's own constructor
([09-constructors-and-destructors.md](09-constructors-and-destructors.md)) — a bare type name (or
alias chain naming a type) in call position is a constructor call exactly when that type declares
one.

**E14.** Argument count must match the target's declared parameter count exactly (no default
arguments, no variadic parameters); each argument, in order, must fit (E12) the corresponding
parameter's declared type.

**E15.** If the called function's signature declares one or more errors
([07-error-handling.md](07-error-handling.md)), the call must appear directly as the operand of
`try` (either the expression form, §5.10, or the statement form,
[07-error-handling.md](07-error-handling.md)); a bare, unhandled call to a fallible function is a
compile-time error.

## 5.5 Indexing and member access

**E16.** `base [ index ]` requires `base` to be an array type and `index` to be an integer type; its
result type is `base`'s element type. Indexing performs no run-time bounds check: an `index` outside
`[0, len(base))` (E23) is not diagnosed, at compile time or run time, and reads or writes
out-of-bounds memory, exactly as in C.

**E17.** `base . IDEN` requires `base` to be a struct type with a field named `IDEN`; its result
type is that field's declared type.

## 5.6 Struct literals

**E18.** `struct-literal ::= alias-chain IDEN "{" [ expr { "," expr } ] "}"` (§4.4 M8), resolving to
a plain (non-constructor, T14) struct type. Arguments
are positional, in the type's own declared field order, one per field exactly (E14's count rule
applies here too); each argument's value must fit (E12) that field's declared type. A struct type
that declares a constructor
([09-constructors-and-destructors.md](09-constructors-and-destructors.md)) may not be constructed
this way; use a call (E13) instead.

## 5.7 Array literals

**E19.** `array-literal ::= elem-type "[" [ arr-item { "," arr-item } ] "]"`, where
`elem-type ::= PRIMITIVE-NAME | alias-chain IDEN` (§4.4 M8) names the literal's scalar element type,
stated exactly once regardless of nesting depth (E21).
`arr-item ::= expr | "[" [ arr-item { "," arr-item } ] "]"` — a plain expression, or a nested
bracketed group with no restated type, for a multi-dimensional literal.

**E20.** The literal's own type is always a fixed-size array (T8): its size, at each level, is
exactly the number of items written at that level; a literal with zero items is `elem-type[0]`. This
holds regardless of what the literal is subsequently checked against — sizing from item count is
intrinsic to the literal itself, and E12's dynamic-array and fixed-size-target rules apply
afterward, against a target, if there is one.

**E21.** For a nested (multi-dimensional) literal, every leaf item is checked against the single
stated scalar element type (E19), at whatever depth it appears; a nested group's own shape (item
count, further nesting) must agree with its sibling groups at the same level — a mismatch is a
compile-time error, not a jagged array.

## 5.8 Vocab values

**E22.** `vocab-value ::= LOCAL-TYPE-NAME "." IDEN`, where `LOCAL-TYPE-NAME` names a vocab type
declared in the *same* module (never alias-qualified, [04-modules.md](04-modules.md) §4.4 M12) and
`IDEN` is one of that type's declared words (T17). Its type is the named vocab type.

## 5.9 Built-in functions

**E23.** `len(arr)` — `arr` must be an array type (any dimensionality, embedded or reference-shaped,
fixed or dynamic); result is `int32`, the length of `arr`'s outermost dimension. `len` is not an
ordinary function: it cannot be referenced as a value, shadowed by a same-named declaration used as
a call target, or passed a non-array argument.

## 5.10 `try` as an expression

**E24.** `try-expr ::= "try" call-expr`, usable as an ordinary expression anywhere a value of the
call's success type is expected. Its full semantics (error propagation, signature requirements) are
specified in [07-error-handling.md](07-error-handling.md).

## 5.11 `own`

**E25.** `own-expr ::= "own"`, a primary expression of type `scope` (§2.8), valid only inside a
function or test body. Its semantics are specified in
[08-ownership-and-scopes.md](08-ownership-and-scopes.md).

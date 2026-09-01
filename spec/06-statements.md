# 6. Statements

## 6.1 Blocks

**S1.** `block ::= "{" { statement } "}"`. A block introduces a nested scope (D3): a local declared
inside it is not visible outside it, and ceases to exist (for scoping and, where applicable,
ownership purposes — [08-ownership-and-scopes.md](08-ownership-and-scopes.md)) at the block's
closing `}`.

**S2.** `statement ::= var-decl | assign-stmnt | if-stmnt | for-stmnt | do-stmnt | match-stmnt
| return-stmnt | done-stmnt | crash-stmnt | assert-stmnt | error-stmnt | try-catch-stmnt
| expr-stmnt`. `var-decl` is specified in [03-declarations.md](03-declarations.md) §3.5;
`error-stmnt` and `try-catch-stmnt` in [07-error-handling.md](07-error-handling.md).

**S3.** `expr-stmnt ::= expr STMNT_END` — any expression, evaluated for its side effects, with its
value (if any) discarded. This is how a bare function call is written as a statement.

## 6.2 Assignment

**S4.** `assign-stmnt ::= lvalue assign-op expr STMNT_END`, where `lvalue` is a postfix expression
(§5.1 E1) whose outermost form is a variable read, an index (`E16`), or a member access (`E17`) —
anything else on the left of an assignment operator is a compile-time error.

**S5.** `assign-op ::= "=" | "+=" | "-=" | "*=" | "/=" | "%=" | "&&=" | "||=" | "^^=" | "<<=" | ">>="
| "&=" | "|=" | "^="`. Every compound form `X=` is defined as `lvalue = lvalue X expr`, using the
corresponding binary operator (§5.2) and its own operand-type requirements; `X`'s left operand and
the assignment's own target must be the same type both ways.

**S6.** The target `lvalue` must be mutable: a local variable (always mutable,
[03-declarations.md](03-declarations.md) D11), a mutable global, a mutable parameter, or a mutable
constructor field ([09-constructors-and-destructors.md](09-constructors-and-destructors.md)), or an
index/member chain whose own base is one of these. Assigning to an immutable target is a
compile-time error.

**S7.** The assigned value (for `=`, `expr` directly; for a compound form, the binary operation's
result) must fit (§5.3 E12) the target's declared type.

## 6.3 Conditional and looping statements

**S8.** `if-stmnt ::= "if" expr block [ "else" ( if-stmnt | block ) ]`. `expr` must be `bool`
(E7/E9/E10 all produce `bool`; any other type is a compile-time error). An `else` clause is
optional; chaining `else if` is exactly the recursive `"else" if-stmnt` alternative.

**S9.** `for-stmnt ::= "for" for-init "," expr "," expr block`, where `for-init` has the same shape
as a variable declaration ([03-declarations.md](03-declarations.md) D11) but without a trailing
`STMNT_END` — it is followed by `,` instead. The declared variable is scoped to the loop (its own
init, condition, post-expression, and body all see it, nothing outside the loop does) and is always
mutable. The first `expr` (condition) must be `bool`; the loop runs: evaluate init once; while
condition is true, run body, then evaluate the second `expr` (post), then re-check condition.

**S10.** `do-stmnt ::= "do" block "while" expr STMNT_END`. Runs body once unconditionally, then
repeats: evaluate `expr` (must be `bool`); if true, run body again and repeat; if false, stop. The
loop always executes its body at least once.

**S11.** There is no `break` or `continue` statement.

## 6.4 `match`

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
compile-time error; `match` performs no exhaustiveness checking over any type, including a vocab
type's own closed word set.

**S14.** A `match` may be used on a value of any type that supports `==` (E10) — numeric, `bool`,
vocab, or any struct/array type (compared structurally or by reference identity per E10's own
rule).

## 6.5 `return`

**S15.** `return-stmnt ::= "return" [ expr ] STMNT_END`. If the enclosing function
([03-declarations.md](03-declarations.md) D7–D10) declares a `ret-type`, `expr` is required and
must fit (E12) it. If the enclosing function declares no `ret-type`, `expr` must be absent — a bare
`return` (or falling off the end of the function's block) is the only valid way to end it.

## 6.6 `done` and `crash`

**S16.** `done-stmnt ::= "done" STMNT_END` and `crash-stmnt ::= "crash" STMNT_END` are each valid in
any function or test body. Both are unconditional, immediate process termination — not a return to
the caller, and unrelated to the enclosing function's own declared error union
([07-error-handling.md](07-error-handling.md)). `done` terminates the process with the OS-standard
success status; `crash` terminates it with the OS-standard failure status. Neither prints any
diagnostic. See [10-compilation-model.md](10-compilation-model.md) for the exact status values used.

## 6.7 `assert`

**S17.** `assert-stmnt ::= "assert" expr STMNT_END`. `expr` must be `bool`. `assert` is a statement,
not a function call — `assert cond` and `assert(cond)` are both valid and identical, the latter
simply parenthesizing `cond` as an ordinary sub-expression. `assert` is valid in any function, test,
or destructor body ([09-constructors-and-destructors.md](09-constructors-and-destructors.md)), not
only inside `test { }` blocks.

**S18.** If `expr` evaluates to `false`:
- inside a `test { }` block ([10-compilation-model.md](10-compilation-model.md) §10.4): that one
  test is recorded as failed, and execution resumes with the next test — this is a recoverable
  failure specific to the test harness;
- anywhere else: the process aborts immediately (an unrecoverable failure), the same way a failed
  assertion aborts in C.

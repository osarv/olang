# 1. Lexical Structure

## 1.1 Source files

**L1.** A source file is a sequence of 8-bit bytes, treated as ASCII. There is no escape for
non-ASCII source text.

**L2.** A source file's name conventionally ends in `.olang`. A file is the unit of tokenization,
parsing, and (per [04-modules.md](04-modules.md)) the unit of module identity.

## 1.2 Whitespace and comments

**L3.** Space (`' '`) and tab (`'\t'`) are insignificant except as token separators.

**L4.** A comment begins with `#` and runs to the end of the line (exclusive of the newline). There
are no block comments. A comment is otherwise treated as whitespace, except that it counts as a
newline for the purpose of L18 (automatic statement termination).

**L5.** A newline (`'\n'`) is otherwise insignificant except for L18.

## 1.3 Identifiers

**L6.** `identifier ::= ( letter | "_" ) { letter | digit | "_" }`, where `letter` is `A`–`Z` or
`a`–`z` and `digit` is `0`–`9`.

**L7.** An identifier that exactly matches a keyword (L9) is not a valid identifier.

**L8.** Identifiers are case-sensitive. An identifier's first character's case is meaningful beyond
spelling: see [04-modules.md](04-modules.md) §4.3 (visibility).

## 1.4 Keywords

**L9.** The following words are reserved and may not be used as identifiers:

```
if      else    try     catch   return  done    crash   assert
for     do      while   match   case    nomatch
type    struct  vocab   func    error   mut     own
import  test    destruct
compif  compelse
```

`compif` and `compelse` are reserved for future use and are not currently valid anywhere in the
grammar; a program that uses either as a keyword is rejected as a parse error, and neither may be
used as an identifier.

`true` and `false` are not keywords; they are the two spellings of `BOOL_LIT` (L11).

## 1.5 Literals

**L10.** `INT_LIT ::= digit { digit }` — a sequence of decimal digits. An `INT_LIT` denotes a value
of type `int32` (see [02-types.md](02-types.md) §2.2); there is no literal syntax that directly
produces an `int64`, and no unary minus is part of the literal itself (negation is the unary `-`
operator, [05-expressions.md](05-expressions.md)).

**L11.** `BOOL_LIT ::= "true" | "false"` — of type `bool`.

**L12.** `FLOAT_LIT ::= digit { digit } "." digit { digit }` — at least one digit is required on
*both* sides of the `.`; there is no leading-dot (`.5`) or trailing-dot (`5.`) form, and no more
than one `.`. A `FLOAT_LIT` denotes a value of type `float32` unless context requires `float64` (see
[05-expressions.md](05-expressions.md) §5.2 on numeric literal typing).

**L13.** `CHAR_LIT ::= "'" char-content "'"`, where `char-content` is exactly one of:
- any single byte other than `'`, `\`, or newline (including `"`, which needs no escaping here), or
- an escape sequence: `\n`, `\t`, `\\`, or `\'`.

A `CHAR_LIT` is of type `byte`. An empty (`''`), unterminated, or newline-containing `CHAR_LIT` is
a compile-time error.

**L14.** `STR_LIT ::= '"' { str-content } '"'`, where each `str-content` element is:
- any single byte other than `"`, `\`, or newline (including `'`, which needs no escaping here), or
- an escape sequence: `\n`, `\t`, `\\`, or `\"`.

A `STR_LIT` is of type `byte[N]`, a fixed-size array of `byte` (see
[02-types.md](02-types.md) §2.3), where `N` is the number of bytes after escape processing. A
`STR_LIT` is not implicitly nul-terminated; `N` reflects exactly its own content. An unterminated or
newline-containing `STR_LIT` is a compile-time error.

**L15.** No other escape sequences exist. Using `\` followed by any character other than `n`, `t`,
`\`, `'` (in a `CHAR_LIT`), or `"` (in a `STR_LIT`) is a compile-time error.

## 1.6 Operators and punctuation

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

## 1.7 Automatic statement termination

**L17.** olang has no statement-terminating character. A statement's end is instead recognized
either by an explicit grammar construct (some statements end in a token the grammar itself
requires, e.g. a block's closing `}`) or by an implicit end-of-statement, synthesized by the
tokenizer under L18.

**L18.** Immediately after producing a token whose type is one of:

```
IDEN, INT_LIT, FLOAT_LIT, CHAR_LIT, STR_LIT, BOOL_LIT, own,
++, --, ), ], return, done, crash
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
- immediately after the `>` that closes a reference marker (`<>`/`<name>`, see
  [08-ownership-and-scopes.md](08-ownership-and-scopes.md)), when that `>` is the last token of an
  otherwise-complete statement. (A `>` used as the greater-than comparison operator can never be
  the last token of a complete statement, since a binary operator is always followed by an operand;
  the two are therefore never ambiguous in this position.)

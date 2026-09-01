# 9. Constructors and Destructors

A struct type may declare a constructor and/or a destructor. These are the only two special,
compiler-recognized blocks a struct type can declare; olang has no general user-defined methods.

## 9.1 Declaration

**C1.** A constructor-bearing struct is declared:

```
type IDEN "struct" "(" param-list ")" [ error-list ] "{" ctor-field-list "}" [ destruct-block ]
```

`param-list` and `error-list` are as in a function signature
([03-declarations.md](03-declarations.md) D8). This shape is distinguished from a plain struct
declaration (T13) purely by `(` immediately following `struct`.

**C2.** `ctor-field-list ::= [ ctor-field { "," ctor-field } ]`, where each `ctor-field` is exactly
one of:

```
IDEN [ "mut" ] ":=" expr           # inferred: type read from a required-to-be-literal expr
IDEN [ "mut" ] type-expr [ "=" expr ]   # explicit type, optional initializer
IDEN [ "mut" ]                     # bare pun (§9.2) — valid only when no type/initializer follows
```

A field's declared type (explicit, or inferred by `:=`) may carry a reference marker (T24) naming
any parameter of this same constructor's own `param-list`, giving that field a real, type-level
scope tag independent of any particular call site — see
[08-ownership-and-scopes.md](08-ownership-and-scopes.md) §8.4.

**C3.** A field is mutable only if declared with `mut` (D9's own rule for parameters applies
identically here); otherwise it is immutable.

## 9.2 Bare-pun fields

**C4.** A `ctor-field` written as a bare name (with no type, no `:=`, no `=`) must match, by name,
one of the constructor's own declared parameters exactly; the field's type is that parameter's own
type, and the field's value, for any given constructed instance, is exactly the value passed for
that parameter at the call that constructed it. A bare name that does not match any parameter of
the same constructor is a compile-time error.

**C5.** A `ctor-field` with an explicit type but no `=` initializer at all is a compile-time error
— there is no value for it to take (unlike C4, an explicitly-typed field is never implicitly a pun,
even if its name happens to match a parameter).

## 9.3 Constructing and destructing

**C6.** `Type(args)` (E13) constructs an instance: `args` are checked exactly as an ordinary call
against the constructor's own `param-list`, in order; the result is a value of the struct type,
with each field set per C2's own rule for that field, evaluated once, in field declaration order.
Once a struct type declares a constructor, the plain positional literal (E18) is no longer valid for
it; only a constructor call constructs a value of that type.

**C7.** `destruct-block ::= "destruct" block`. A destructor's body has no error union of its own —
every fallible call within it must be fully caught by a `catch` that leaves nothing uncaught
([07-error-handling.md](07-error-handling.md) §7.5), the same rule a `test { }` block follows,
since a destructor is never invoked by ordinary calling code and so has no caller to propagate an
error to.

**C8.** Inside a `destruct` block, a bare identifier that names one of the type's own fields (and is
not itself shadowed by a local of the same name) reads that field of the instance being destructed
— there is no `self`/`this` qualifier.

**C9.** A destructor runs, for a given instance, exactly once:
- if the instance is a **plain** (non-reference-shaped) local variable, immediately before the
  enclosing function or test returns (however it returns — explicit `return`, falling off the end,
  or propagating an error) — never merely at the closing `}` of the inner block it happens to be
  declared in (S1): a local declared inside a nested block and still live when the *function* returns
  is destructed then, at that point, not any earlier. Where more than one plain local is destructed at
  the same return, the order is innermost-block-first, and, within one block, last-declared-first —
  the reverse of declaration order, mirroring a stack unwind. The one exception: when the returning
  local variable is itself the bare operand of a `return` statement (`return x`, where `x` is a plain
  variable read and nothing else — not `return x.field` or any other expression that merely reads
  through `x`) — in that one case, the local's destructor does not run in the returning function,
  since the value is being handed to the caller intact, not discarded;
- if the instance is **reference-shaped** (allocated into a scope,
  [08-ownership-and-scopes.md](08-ownership-and-scopes.md) §8.3), when that scope closes
  (§8.6 O15), regardless of which function allocated it or which function happens to be executing
  at that point.

**C10.** A destructor never runs for a struct type that declares no `destruct` block, and never runs
more than once for the same instance.

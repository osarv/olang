# 8. Ownership and Scopes

This section specifies the `scope` type, the `<>`/`<name>` reference marker's ownership meaning
(distinct from its purely type-level effect, [02-types.md](02-types.md) §2.9), the allocation model
for reference-shaped values, and the static compile-time check that constrains how a scope tag may
flow from one place to another.

## 8.1 Scopes

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

## 8.2 Scope tags

**O4.** A reference-shaped type (T24) carries a **scope tag**: bare (`<>`) or named (`<name>`).
`<name>` names a `scope`-typed parameter visible at the point the type is written — an earlier
parameter of the same function or constructor signature
([03-declarations.md](03-declarations.md) D9), or, for a constructor's own field
([09-constructors-and-destructors.md](09-constructors-and-destructors.md)), any parameter of that
same constructor's own signature. `own` is not itself a valid marker name (it is an expression, not
a declared parameter); a bare marker is how a type expresses "this value's own private scope,
determined at the point a value is actually allocated into it" — see §8.3.

**O5.** A scope tag has no effect on type identity (T27) and does not change which operations
(field access, indexing, calls) are valid; it only constrains where the value may be allocated (§8.3)
and where a reference to it may subsequently flow (§8.4).

## 8.3 Allocation

**O6.** A plain (not-yet-reference-shaped) struct or fixed-array value is promoted into
reference-shaped storage — allocated into a scope — at the point it is stored into a
reference-shaped slot: a variable declaration, an assignment, a function argument, a return value,
or a field/element of a larger literal being itself promoted this way. The scope it is allocated
into is:

- for a **named** (`<name>`) target: the scope value bound to that parameter at the relevant call
  (the argument passed for it, tracing back through however many call boundaries are needed to find
  a concrete `own` or passed-in scope — see §8.4 for what is and is not provable about this
  statically);
- for a **bare** (`<>`) target that is itself a top-level declared type (a variable, parameter,
  field, or return type written with a bare marker directly): the current function's own private
  scope (`own`);
- for a **bare** field or element nested inside a larger value that is itself being allocated into
  some scope `S` (named or bare): the same scope `S` — a bare nested field's scope is never
  independent of its immediate container's own scope.

**O7.** A dynamic array (T11) is always allocated this way regardless of whether it carries an
explicit marker, since a runtime-determined length has no embedded representation to begin with; a
`T[expr]` variable declaration with no initializer ([03-declarations.md](03-declarations.md) D14)
is allocated the same way, into its own declared scope tag (bare, meaning `own`, if none is
written).

**O8.** Closing a scope (O1) reclaims every allocation made into it. This specification does not
guarantee any particular reuse or timing of underlying storage beyond "valid until the owning scope
closes, invalid after."

## 8.4 The static scope check

**O9.** Wherever a value already known to be reference-shaped (not a fresh literal being promoted,
O6) flows into a reference-shaped target of the same type (T27) — an assignment, a variable
declaration's initializer, a function argument, or a return value — the source's scope tag must be
**compatible** with the target's declared scope tag, checked at compile time, in addition to (not
instead of) O6's own runtime allocation behavior.

**O10.** A source scope tag `src` is compatible with a target scope tag `dst`, both considered from
the perspective of the function currently being checked, exactly when one of:

- `src` and `dst` name the exact same scope (including: both bare, meaning both mean that same
  function's own `own`);
- `dst` is bare (`<>`) and `src` names any scope parameter of the *current* function — a value
  received from a longer-lived, named scope may always narrow into "at least as long as my own
  scope," since a function's own `own` scope is always the shortest-lived scope reachable from
  inside it.

Any other pairing — a bare source flowing into a named target, or two *different* named scope
parameters of the current function — is a compile-time error: neither is provably safe without a
lifetime-relationship annotation, which olang does not have.

**O11.** O10 applies only when both sides are traceable, at compile time, to a scope parameter of
the function currently being checked (following, where applicable: a call's own argument-to-
parameter binding; one hop through a variable's own declaration; a chain of member accesses through
constructor-declared fields; straight-line reassignment; and branches of `if`/`match`/loops, merged
— agreeing branches keep the agreed tag, disagreeing branches are treated as O12). A scope tag this
specification's own tracing cannot resolve back to one of the current function's own parameters is
treated as **unverifiable** and is allowed to flow anywhere — this check proves the specific unsound
shapes described in O10 are absent for the cases it can trace; it is not a complete guarantee that
every program it accepts is free of dangling references, only that the shapes it can see are sound.

**O12.** A variable whose scope tag becomes genuinely ambiguous — reassigned to different scopes on
different branches that are merged back together, or (for a constructor field) forwarded from two
different same-typed sibling arguments in a way that cannot be told apart — is treated as
**definitely incompatible** with anything (never allowed to flow, unlike O11's "unverifiable, so
allowed"): once a value's own scope is known to be one of several different things depending on
which branch ran, no further use of it can be proven safe, so it is rejected outright rather than
silently guessing.

## 8.5 Return-type restrictions

**O13.** A function's declared return type may never be a bare (`<>`) reference-shaped type
directly: the function's own `own` scope closes at the instant it returns, strictly before the
caller could ever observe a value allocated into it. A bare return type must instead be tagged to an
explicitly-received scope parameter (`<name>`).

**O14.** The same restriction extends through embedding: a *plain* (non-reference) struct return
type that itself contains a bare (`<>`) reference-shaped field, anywhere within its own field chain
(not chasing into a field that already carries its own explicit `<name>` tag, whose lifetime is
independently governed by that name), is also a compile-time error, for the same underlying reason
as O13. This check is conservative: it also rejects some code that would in fact be safe at run time
(a function that only ever passes an already-correctly-scoped value straight through, never
allocating into the bare field itself) — telling that case apart from a genuinely unsound one would
require dataflow analysis this specification's checker does not perform.

## 8.6 Destructors and scope closing

**O15.** If a reference-shaped struct type declares a destructor
([09-constructors-and-destructors.md](09-constructors-and-destructors.md)), every instance of it
allocated into a given scope (§8.3) has its destructor invoked when that scope closes (O1), in the
reverse order the instances were allocated. See
[09-constructors-and-destructors.md](09-constructors-and-destructors.md) §9.3 for the corresponding
rule for a *plain* (non-reference) local variable, which is governed by its own enclosing function's
return rather than by scope closing.

# The scope model: SPEC §8 as rules, and why each is sound

Status: written for review before M6, the port's scope pass, 2026-10-18. Nothing here is built. It describes §8 as the
language will mean it once `docs/memory.md`'s round 3 has removed §8.8 (`own`, `take`, loans): one memory rule,
everything lives in a scope. It changes nothing about the language. Section 9 lists what the model decides, the SPEC
text it finds stale, and the questions for the user.

Sources: SPEC §8 and the rules it leans on (E12c, E16a, E25, E28, T17c, T22a, T25b-T25d, C2c-C2g, C9a, C11, D16c,
D16d, P1g, P2, P4a, S4c, S4d, S13b, S13c, E11c, E31b); `docs/memory.md`; `compiler/DESIGN.md` 1.6.1 (the typed
contract), 1.7, 1.8.1 (MIR) and the M6 row. Findings are cited by the name of the review that made them - `tonight`
(tonight1) to `tonight9`, `str1`-`str5`, `batch6`, `chk5`, `e31view`-`e31view4`, the 2026-10-09 statements and scopes
review ("the scopes review", F01-F10), the usage studies and the scope fuzzer. HISTORY.md tells each one under the fix
that answered it.

## 0. Summary

- **One invariant.** No reference outlives the scope its referent is reclaimed with (I1, section 1.2). Every §8 rule
  exists to keep it. One more invariant makes it survive stores: a reference through which something can be stored
  names its referent's scope exactly (I2).
- **One order, one fit rule.** Scopes are ordered by "outlives". A value put into a slot must outlive the slot's
  scope, and be exactly in it where something can be stored through it (FIT, section 3.1). Most of §8's rules are FIT
  for one more kind of slot, or a way to find where a value or a slot lives.
- **Two kinds of scope term.** Blocks, scope variables and the program are run-time scopes, and only they are ever
  built into. Derived scopes, scopes not known here, and untraced ones are static-only: they may be read through,
  never built into, because nothing exists at run time to build into. That one distinction is O12's, O23a's, C2d's
  and E11c's restriction.
- **Facts are claims.** Where a variable lives is fixed where it is declared, and every write is held to that. Nearly
  every use-after-free the reviews found was a fact read from the wrong place, or read before it was final.
- **Interprocedural facts are summaries** over the call graph's strongly connected components: obligations, what a
  callee may build into, store through or keep (least fixed points), and what it uses only through a reference
  (a greatest fixed point, verified). No check reads a summary before its component has converged.
- **A split value** - one whose references live elsewhere than its own storage - is the hardest case. A reference
  parameter has one scope variable and cannot describe both homes. There are two sound ways to lend one anyway, by its
  storage or by its references, each with its own condition on the callee; O17 and O17b are instances of them
  (section 3.3). Giving such a parameter two scope variables would turn both conditions into ordinary obligations
  (section 6.3).
- **Early freeing is the same check run again**, with a finer scope for each place's values (section 5). Where it
  passes, freeing early is unobservable. As `docs/memory.md` states it, two values of one place share a scope term,
  which would accept a value referring into a sibling that is then freed. The model gives each read its own term.
- **After §8.8's removal**, O30-O42 are retired, with a paragraph of O17a and a sentence each of O8c, O26a, P2 and C11.
  A handful of §8 rules are no longer separate rules in the model - O13b, O22 and O25f among them - since they
  follow from its general form (section 4).

## 1. The run-time model

### 1.1 Scopes

- A **scope** is an arena: storage handed out by bumping, reclaimed in one step when the scope closes (O1, O8).
- Each thread opens and closes its block scopes last in, first out (O2). Each activation of a block (each call, each
  loop turn) has a scope of its own. The program scope opens before any global initializer and never closes (O1b).
- A call does not reopen its caller's scopes. The callee receives scope variables as hidden arguments: where each
  reference argument's referent lives, where its result goes (O3, O4b, O19). Each is open when the call starts, so it
  outlives every block of the callee.
- Concurrency adds no lifetimes. A task's stand-in for a scope, and a thread's part of a scope, are folded into that
  scope and close with it (P2, decision 48). For lifetimes, they are that scope. They exist so that no arena is bumped
  by two threads (I3).
- `σ ⊒ τ` means scope σ closes no earlier than τ.

### 1.2 Cells and the invariants

A **cell** is storage holding a value: an allocation in a scope, or a frame slot (a local, a parameter, a temporary;
O2c reserves them once per call). A frame slot belongs, for lifetime, to the block activation that declares it.
`home(c)` is the scope a cell belongs to. For a reference value `r`, `target(r)` is the cell it names.

| invariant | statement |
|---|---|
| **I1 containment** | every live cell `c` holding a reference `r` has `home(target(r)) ⊒ home(c)` |
| **I2 exactness** | for every reference `r` through which something can be stored (O25g), the scope a store through `r` builds into is `home(target(r))` |
| **I3 one bumper** | no arena is bumped by two threads at once |
| **I4 destructors** | each constructor call's instance is registered once, with the scope it is built in, and destructed once, when that scope closes, before its storage is reclaimed |

- **Why I1 is enough.** When a scope closes, every cell holding a reference into it belongs to a scope closing no
  later. So no live cell can follow a reference into reclaimed storage. Values held only in registers are read inside
  the statement that made them, where every scope they name is open.
- **Why I2 is needed.** A store through `r` builds its temporary in `r`'s tag (E12c, O6) and keeps it in
  `target(r)`. If the tag named a shorter scope than `home(target(r))`, the new cell would close first, and I1 would
  break at the first store. O25 exists for this (section 3.1).
- **What a tag claims.** A reference's static tag is a lower bound on its referent's lifetime ("valid at least until
  this closes"), and exact wherever something can be stored through it. Reading needs only the lower bound. Storing
  needs exactness.
- **Outside the model.** SPEC states three holes the language accepts: a wrong `extern` prototype (X1a), an
  out-of-range index (E16e) and a data race (P8b). A null read traps (T2b) and is not a memory error.

## 2. The static model

### 2.1 Scope terms

For one typed body `f` (DESIGN 1.6.1: a function instance, a constructor or twin, a payload, a destructor, a lambda, a
test, a global's initializer):

| term | what it is | at run time |
|---|---|---|
| `B(b)` | block `b`'s scope; `B(0)` is the frame | the block activation's header |
| `V(v)` | a scope variable: one per reference parameter and per by-value parameter holding references (O4b); the result scope `R` (O13); a constructor's instance scope (C2c); a destructor's closing scope (C9a); a lambda's captured scopes (D16c) | the hidden argument, or the environment's word |
| `P` | the program scope (O1b) | the global scope, or this thread's part of it |
| `D(p, w)` | derived: where the argument for parameter `p` bound the scope variable `w` of `p`'s type (O23a) | nothing: a fact about an instance, with no pointer |
| `{s1, ..., sn}` | not known here: one of these, which one is not traced (O12, O13b, S13c, E28) | one of them |
| `?` | untraced (O11) | anything |

`B`, `V` and `P` are **run-time terms**. `D`, sets and `?` are **static-only**. An activation of `f` gives each term
its scope: `B(b)` the block's active scope, `V(v)` the scope passed, `D(p, w)` the scope the argument's instance was
bound to (which exists but which `f` cannot name), a set one of its members.

### 2.2 The order

`Γ_f`, `f`'s **obligations**, is a transitively closed set of relations `u ≥ w` between `f`'s `V`, `D` and `P` terms
(O10b). The order:

```
s ≥ s        P ≥ s        V(v) ≥ B(b)        D(p, w) ≥ B(b)
B(b) ≥ B(c)              when block c is nested in block b                      (O2a)
u ≥ w                    when (u ≥ w) is in Γ_f                                 (O10b)
s ≥ t,  t ≥ u   ⟹   s ≥ u
S ≥ t   iff  s ≥ t for every s in S          s ≥ T   iff  s ≥ t for every t in T
s ≡ t   iff  s ≥ t and t ≥ s                 never for a set of two or more, never for ?
? ≥ t and t ≥ ?   never
```

**Lemma O.** If `Γ_f ⊢ s ≥ t`, and every caller of `f` established `Γ_f` at its call (O10c), then in every activation
of `f` the scope of `s` closes no earlier than the scope of `t`.

- `P` never closes. A scope variable is open before the call and the call's blocks close before it returns. A derived
  scope is one the argument's instance was built not to outlive (C2d), and the argument is alive during the call.
  Blocks are last in, first out. Obligations hold by assumption. Sets distribute.
- Every block a judgment compares encloses a variable visible where the judgment is made, so the blocks lie on one
  chain. An implementation may compare them by depth, as stage 0 does (`scopeOutlives`).
- SPEC's O10a lists no `P ≥ V(v)`. The program scope outlives every scope, and O25c already relies on that for slots
  ("a referent in the program's scope outlives every slot"). O10a should say it once.

### 2.3 Building into a term

- **A temporary is built only in a run-time term**: never in a `D`, a set or `?`. Nothing exists at run time to pass,
  and a guess would build the value in one scope while every reader believes another.
- This one rule is O12's "never built into", O23a's "nothing is built into it", C2d's "may read, walk, relate and
  repoint through the field but not build through it", the last sentence of O25e, two refusals of E25, and E11c's rule
  for a `Str` receiver (section 3.11).
- **Exactness.** A temporary stored where something can be stored through its slot is built exactly in the slot's
  scope (I2). Elsewhere it may be built in any run-time term that outlives the slot's: placement chooses (section 3.2).

### 2.4 Two type predicates

- `refs(T)`: `T` holds references. `T` is a reference, a function value, or an aggregate one of whose parts does -
  a field, an element of a fixed array held by value, a payload, a type argument.
- `st(T)`, "something can be stored through" (O25g):
  - a writable reference `mut R&` has it when, starting at `R` and following fields and elements held by value or
    through writable references, at any depth, some assignable field or element has a type with `refs`;
  - a read-only reference never has it, and neither does a function value (nothing is written through one, D16d);
  - an enum's payload is never assigned, so it counts only through the writable references it holds;
  - a value type has it when one of its writable references does.
- Both are decided per instance (G16, G18) on concrete types. Over a recursive type they are fixed points over the
  type graph.

### 2.5 What each expression gives

For each typed expression `e` of `f`, M6 computes whether it is **fresh** (a temporary, with no storage of its own -
E12c) or **existing** (a place read, borrowed or copied), and the terms below. A copy of existing storage counts as
existing: its references are already somewhere.

- `at(e)`, for a reference: the term its referent lives in.
- `refs(e)`, for a value holding references: the term its references live in (O25h).
- `stor(e)`, for a place: the term its own storage is in.
- `bind(e)`, for an instance of a struct with fields written `&q`: the per-instance bindings, `q` to a term (C2d,
  O23a, O13c).

| `e` | `at` or `refs` | `stor` | rules |
|---|---|---|---|
| reference local `x` | by its mark: `Bare`: `B(block of x)`; `Of(y)`: where `y` lives; `Return`: `R`; `Global`: `P`; `Infer`: its initializer's | `B(block of x)`, or `R` where O26a moves `x` | O25a, O26a |
| value local `x` holding references | its initializer's: a temporary's is `x`'s storage; a copy's is the source's | `B(block of x)`, or `R` | O25h, O26a |
| reference parameter `p` | `V(p)`, or `V(q)` for `&q` | `B(0)` | O4b |
| by-value parameter `p` holding references | `V(p)` | `B(0)`; a constructor's: an inner block | O4b, C2g |
| global `G` | `P` | `P` | O1b |
| `r.f` or `r[i]`, slot bare, `r` a reference | `at(r)` | `at(r)` | O20, O5 |
| `x.f` or `x[i]`, slot bare, `x` a value | `refs(x)` | `stor(x)` | O25h |
| field written `&q` | `bind(base)[q]` where known; `D(p, q)` where the base is parameter `p`; else the base's term, an underestimate | the base's | C2d, O23, O23a |
| match binding or `as` of a payload | where the payload's references live (T17c); out of a by-value enum parameter, `V(p)` (O4b) | the clause's block | T17c, S13b |
| `Borrow(place)` | `stor(place)` | | E12c |
| slice, view | `stor(base)`; of a temporary, the block it is written in | | E16a, E32b |
| `Read(place)`, a copy holding references | `refs(place)`; read through a reference, the referent's term | | O25h, O20 |
| call with a built result | where the call lands (fresh, section 3.2) | | O13, O18a |
| call with a result borrowed from `p` | `β(V(p))`, or the derived scope its body returns from | | O13, O13c |
| constructor call, enum case, array, literal, text, `Array<T>(n)`, lambda | where it lands (fresh) | | O6, O7, D16d |
| constant data | `P` | | T25d |
| `null` | fits every slot | | T2a |
| conditional or match value | the one term its values share, or the set of their terms | | E28, S12b, O12 |
| a field, element or slice of a call's result | where the call landed | | O18a, O18c |

### 2.6 Claims

- **A reference local's term is fixed by its declaration** (O25a). Every assignment must give exactly that term
  (O25b).
- **A value local's references term is fixed by its declaration** (O25h, "that is a claim"). Every assignment to it,
  and every store into a part of it, must fit that term.
- **Per-instance bindings are flow-sensitive.** At each point, a variable's binding is the meet over the assignments
  reaching it, so it only gets shorter (O13b), around a loop's back edge too (O13a). A write into a field written `&q`
  must fit the binding where it is made (O23a), so no write can falsify a binding that a reader relies on.
- **O26a's move is decided before the block is judged**, from the rest of the block. The local's claims are then the
  result scope's.

Why: a claim that a later operation may change must be read again after that operation. The reviews kept finding the
stale read - O13a's "stale construction binding" (2026-10-09), tonight2 #2's region flag set after a caller had read it,
str4 C1's dependencies read mid-cycle. A claim fixed at declaration, with every write held to it, cannot go stale.
Bindings are the one flow-sensitive claim, and a meet only gets shorter, so a reader holding an earlier binding holds a
true lower bound.

## 3. The rules

Each rule is given as a statement over sections 1 and 2, then **sound** (why it keeps I1-I4), **rules out** (the
shape of the use-after-free) and **found by** (the review or study that motivated it, where one did).

### 3.1 FIT: a value into a slot (O9, O10, O10a, O10d, O25, O25b, O25c, O25g, O20, O1b)

```
   slot of type T, in term t          e existing, living at x  (at(e); refs(e) for a value)
   st(T):   Γ ⊢ x ≡ t                  not st(T):   Γ ⊢ x ≥ t
   --------------------------------------------------------------------------------  FIT
                               storing e into the slot is accepted
```

Where `Γ_f` does not already give the premise:
- both sides are `V`, `D` or `P` terms of `f`: the relation is added to `Γ_f`, an obligation of `f` (O10b);
- a block of `f` is involved: an error, in `f`. A block never outlives a scope variable (O10d), and outlives only the
  blocks nested in it (O2a);
- a side is `?`: an error (O11); `≡` asked of a set: an error (O12).

Three slots are always exact or always outlive, whatever `st` says:
- a reference local or parameter (O25b): always `≡`. A local's type says where it lives, which is the user's design and
  stricter than I1 needs where nothing can be stored through;
- a function value: always `≥` (D16d: nothing is written through one);
- a field written `&q`: always `≥` (C2d: the field keeps the argument's own scope, so the instance may be
  shorter-lived than what it names, never longer).

`null` fits every slot, and constant data lives in `P`. The slot's term:

| slot | its term `t` |
|---|---|
| a reference local `x` | `x`'s term (2.5) |
| a part of a value local `x` | `refs(x)` |
| a bare field or element through a reference `r` | `at(r)` (O20) |
| a bare field or element of a value `x` | `refs(x)` |
| a field written `&q` of a base | `bind(base)[q]` |
| a global, or a slot reached from one | `P` (O1b) |
| an argument for parameter `p` | `β(V(p))` (section 3.3) |
| a built result | `R` |
| a result borrowed from `p` | `V(p)` |
| a spawn target | the target's slot (P1g) |
| a capture | the lambda's home (D16d) |

- **Sound.** `≥` gives I1 for the slot, by Lemma O. `≡` also gives I2 for it: a later store through the slot's
  reference builds where its referent really is.
- **Rules out.** `≥`: a block's storage kept where it outlives the block. `≡`: narrowing - `a mut N& = p` with `p`
  from the caller, then `a.next = N(5)`, which built the node in the function's arena and hung it off the caller's list.
- **Found by.** O25: writing `List`, 2026-09-28 (HISTORY, "O25: a reference never narrows"); its second path, a field
  read passed as an argument binding the callee's variable to the field's bare tag. O20: the scope study, 2026-10-01 -
  a reference assigned into an element of an array reached through a reference was built in the writer's own scope.
  O1b: `GA = x` with `x` a local compiled, and a lambda stored in a global skipped O1b, a segfault (both 2026-10-09).

### 3.2 PLACE: where a temporary is built (O6, O7, O18a, O18b, O18c, O26a, S4c)

- **Each allocation site is built in exactly one run-time term**, recorded once in the plan (`Built[site]`, DESIGN
  1.6.1), and everything fresh inside it is built in the same term (O6: "a nested slot's scope is never independent of
  its immediate container's").
- The term is chosen by what consumes the value. O18a's table, compressed:

| the value goes | it is built in |
|---|---|
| into a slot (3.1's table) | the slot's term |
| as an argument whose parameter's variable an obligation ties to a scope the call determines | that scope (O18b) |
| as any other argument | where the call's result lands (O18a) |
| as a call's result | where it lands; a scope argument's term (E25); O18c's choice for `:=` |
| into a `return` | `R`, or `V(p)` for a result borrowed from `p` |
| into an operand, or as a statement | the block it stands in |

- **O18c.** `x := f()` lands the result by `f`'s obligations only where that is needed: `x` is kept beyond its block,
  or an obligation requires the result scope to outlive, or be, a scope an argument gives. Otherwise it lands in `x`'s
  block. A callee in an unsettled component is taken to build (section 7.2).
- **O26a.** A local the function returns, or that flows into what it returns, is declared in `R`, its storage and its
  references alike. The flow is read off the rest of its block.
- **Sound.** Placement proposes, the judgment disposes. Every placement is followed by FIT against the term chosen, so
  a wrong choice can cost memory or give an error, never a dangling reference. The only constraints on the choice
  itself are that the term is a run-time term (2.3), and that it is the slot's own term where `st` holds (I2). O26a is
  sound for the same reason: moving a local into `R`, a longer-lived term, only changes what its stores are judged
  against.
- **Rules out.** A temporary built in a block that closes before its holder: `return $a $b` built in the dying scope
  (E11b, 2026-09-30); `return Array<T>(n)` through a reference result (E27, 2026-10-07); a node built in a loop body
  and pushed onto a list outside it (O18b).
- **Found by.** The codegen review of 2026-10-09 found "where does this value land" answered in about eight places,
  with six use-after-frees and leaks from their disagreements; the plan's single `Built[site]` is the answer. batch6 #1:
  a store through a call's result was judged before that call had landed, then landed elsewhere and never judged again.
  So every judgment reads the final placement: a store lands the call it is read through first.
- **The memory principle.** Placement builds in the innermost legal term. chk5 #1 showed that landing by obligations
  alone picks the longest legal one: every turn's text was kept where the lexer lives, so memory grew without bound.
  That cost memory, not soundness.

### 3.3 CALL: binding a callee's scopes (O17, O10c, O10d, O25e, O2d, O23a, E25, O19)

A call of `g` in `f` binds each scope variable `v` of `g` to a term `β(v)` of `f`:

```
argument for p (variable v)             β(v)
an existing reference                   at(a)
a value place, not split                stor(a)                                    (E12c)
a split value                           by LEND, below
a fresh value                           undetermined: PLACE builds it (O18a, O18b)
the result scope, given &x              where x lives                              (E25)
the result scope, not given             where the call's result lands              (O18a)
every other argument determining v      Γ_f ⊢ β(v) ≡ its term, block depth included (O25e, O2d)
```

Then, at the call:

```
(u ≥ w) in Γ_g      ⟹   Γ_f ⊢ β(u) ≥ β(w)         added to Γ_f, or an error naming g's statement   (O10c, O10d)
D_g(p, w)           ⟹   bind(a_p)[w]; or D_f(q, w) for a_p f's parameter q; else a_p's own term  (O23a, O23)
g may build into v  ⟹   β(v) is a run-time term                                              (O25e, O12, O23a)
```

- **Sound.** `g`'s body was judged under `Γ_g`, with its terms denoting whatever its callers pass. This call passes
  scopes for which every relation in `Γ_g` holds, so Lemma O holds inside `g` for this activation, and `g`'s own
  acceptance gives I1 and I2 there. The caller sees `g` only through `Γ_g`, `g`'s result term and `g`'s summaries.
- **Rules out.** A callee relying on an order its caller does not give - storing one parameter into another's
  referent. An argument from an inner block passed where it must outlive an outer one (2026-10-01: obligations were
  once checked without block depths). `c = c.regrow(4)` inside an `if`, the binding naming the innermost block
  instead of where the argument's referent lives (O2d, found writing `Vec`, 2026-09).
- **Found by.** O10c's completeness, 2026-10-09: a call was held to its callee's obligations only if the callee's body
  had been checked first - never for an instance or a function declared later - so `for i in range n {
  l.Push(Node(i)) }` built each node in the loop body. The rule now says what the order of work must give (section 7).

**LEND: a split value.** A value `x` is **split** when `refs(x) ≠ stor(x)`. By I1, `refs(x)` then outlives
`stor(x)`. Split values are copies of existing storage, by-value parameters, values built where a scope argument
says, a copy in an inner block of an outer value, and values with no storage of their own whose references already
live elsewhere (a call's value result, a conditional of places, `checked x[i] catch default v`).

A reference parameter has **one** scope variable. Its callee takes everything reached through the parameter to live
there (O20), so one variable cannot describe a split value.

**The rule.** The binding is fixed by what kind of split value `x` is, as SPEC O17 states it. It is never a choice an
implementer makes. The two bindings record different obligations in `Γ_f`, so M6 matches stage 0 only by this table:

```
x a value place (it has storage)       β(V(p)) = stor(x)              by its storage      if g keeps nothing in x  (O17)
x a value with no storage of its own   β(V(p)) = refs(x)              by its references   if g keeps nothing in x  (O17)
x a handle                             β(V(p)) = at(x's reference)    by its reference    if thru(g, p)            (O17b)
otherwise                              an error (O17), naming the fix: declare x a reference where its references live
```

"Keeps nothing in x" is SPEC's combined condition: `not reg(g, p)` and `not self(g, p)`.

**Why each binding is sound.** Each needs only half of the combined condition:

```
not self(g, p)    ⟹   β(V(p)) = refs(x) is sound   g never lets p's own storage outlive the call,
                                                    nor stores it where p's references lead
not reg(g, p)     ⟹   β(V(p)) = stor(x) is sound   g puts nothing into storage reached through p's
                                                    references, except what it read out of there
```

This is the justification, not the rule. Using it to pick a binding (say, "by references first, where both hold")
would bind differently from stage 0 and record obligations stage 0 does not.

- `self(g, p)`: `g`'s obligations require `V(p)` to outlive another scope (`p` stored into another argument's
  referent, returned, captured by a lambda that outlives the call, handed to a callee that keeps it); or `g` stores
  `p`, or a borrow of `p`'s storage, where `p`'s references lead; or `g` returns such a borrow. All but the store
  are read off `Γ_g`, which is what makes the condition checkable.
- `reg(g, p)`: `g` stores a reference, or a value holding one, into storage reached from `p` through at least one
  reference, and that value was not itself read out of such storage through at least one reference. It may be built,
  another argument, `p` itself, or one of `p`'s inline parts. Handing out a writable reference into that storage, or
  passing `p` to a callee with `reg`, counts too.
- **The table is an instance of the two sound bindings.** A value place is lent by its storage; a value with no
  storage of its own (a call's value result, a conditional of places) by its references; a handle by its reference,
  where the callee uses `p` only through it (`thru`, a syntactic form of `not self`). The combined condition counts a
  store or capture of `p` itself as well as `reg`. It is sound for either binding and stricter than each needs.
  Relaxing it to the half a binding needs is an M6 relaxation, with its own soundness review (8.3), not part of the
  port.
- **O17a.** A split value is never held by a reference outside a call's argument: not a reference local, not the
  value of an assignment to a reference, not a constructor's reference parameter, not a slice, not a view. A reference
  has one term, and it would carry `stor(x)` away from `refs(x)`.
- `for e in x` over a split value hands out each element at `refs(x)`.
- **Sound.** Bound by its references, everything `g` reaches through `p` lives at `refs(x)`, as `g` believes. The one
  exception, `p`'s own storage, `g` neither keeps past the call nor stores anywhere (`not self`), and `x` is alive
  during the call. Bound by its storage, anything `g` built or stored through `p`'s references would be built at
  `stor(x)` and kept at `refs(x)`, dangling; `not reg` says `g` does no such thing. What `g` keeps of `p` itself is then
  judged by `Γ_g` against `stor(x)`, which is right.
- **Rules out.**
  - tonight2 #1: `tie(b mut Box&) { b.head.owner = b }`, `p`'s own storage stored where its references lead.
  - tonight2 #4, tonight3 #3: `br mut Box& = b`, then `br.head.next = Node()`; a slice of a split value's inline array
    (O17a).
  - e31view3 U1, U2: a call's value result lent to a parameter that builds through it, `addRef(idBox(seed), i)`.
  - e31view4 F1: a lent copy captured in a lambda the callee returns. It was bound by its references, and the capture
    was judged against `refs(x)` - exactly the case `not self` excludes.
  - tonight4: "uses the handle only through its reference" decided by a token scan, which missed `&h` used as the
    binary `&` of a program's own `BitAnd`.
- **Found by.** Those, and tonight2 #2: a caller whose callee's body was known read that callee's flag before a cycle
  further down settled it, and was never revisited. That is a check reading a summary before its component converged
  (section 7.2).

### 3.4 RET: results and returns (O13, O13a, O13c, O14, O14a, O14b, O14c, O26, O26a)

- **A built result** (`T&`, or a by-value type holding references) has `R`. A `return` gives a fresh value, built in
  `R`, or a value whose term is `≡ R` (`&return`, O26; a local O26a moved).
- **A result borrowed from `p`** (`T&p`). A `return` gives a value that FITs a slot in `V(p)`, and a temporary is built
  in `V(p)`.
- **A built result may not give a parameter's storage** (O14), except where no borrowed spelling exists. Those
  exceptions become obligations, checked at each call once the result has landed:

| exception | the result | the obligation |
|---|---|---|
| O14a | a function value | `V(p) ≥ R` |
| O14b | written as a type variable | `V(p) ≥ R`, `≡` where `st` holds |
| O14c | by value, holding references copied from a by-value parameter | `V(p) ≥ R`, `≡` where `st` holds |

- **O13a.** A returned value's per-instance bindings must not name a block of `f`, since that block closes at the
  return. It is judged at every `return` by every binding reaching it, and inside a loop by assignments later in the
  loop too. O14c and O26 refuse the same for a value whose references live in a block of `f`.
- **O13c.** A call's result carries the returned value's bindings, translated through `β`, where every `return` agrees.
  A callee in an unsettled component adds nothing, and its signature is all the caller knows.
- **Sound.** `R` is bound at the call to where the result lands, which is open in the caller while the result is
  held. Every way of handing storage back is either fresh in `R` (I1 with equality), existing storage shown to outlive
  `R`, or an obligation discharged at each call (Lemma O). Nothing returned names a block of `f`.
- **Rules out and found by.**
  - O14b: `y = id(n)`, with `n` dying each loop turn (2026-10-09). The result was untagged and taken for a fresh
    temporary.
  - O14c: `keep = id(Holder(inner))` (the scopes review, F04).
  - O26a: a local `List` returned by value with its chunks in the dying block (study2 r02 - segfaults, and `Map.Get`
    silently 0).
  - O13a: an instance returned holding a reference to a local (2026-10-01, then written as a struct literal), and a
    return in a loop judged before a later reassignment (2026-10-09).

### 3.5 INST: instances, bindings and derived scopes (C2c, C2d, C2g, O23, O23a, T17c)

- **A constructor** has a `V` per reference parameter (and per by-value parameter holding references) and the
  instance scope `I`, its result scope. Its top-level locals are the fields, and what its top level builds is built in
  `I` (C2g). Its nested blocks are blocks, but a call through a field in one builds where the field lives. Its by-value
  parameters are frame storage of an inner block, shorter-lived than `I` (C2g).
- **A bare field lives in `I`.** What is stored there FITs `I`. **A field written `&p`** keeps its argument's term,
  and its argument must outlive the instance, never exactly (FIT's third row).
- **At a call**, an argument binds the instance only where the constructor's body may make the instance hold it (the
  may-hold summary, section 7.2). It is then FIT where the instance lands. An enum case is the same, by T17c: a
  payload lives where its value does.
- **An instance carries** `bind(x)[q] = β(V(q))` from its construction.
- **O23a.** A field written `&q`, read through parameter `p`, reads at `D(p, q)`. At a call it resolves to the
  argument's binding; for an argument that is the caller's own parameter, to the caller's derived scope; else to the
  argument's own term (O23). That fallback is an underestimate, and sound for reading, since every value reaching the
  field had to outlive the container.
- **D terms are never built into** (2.3). A temporary stored into such a field, or a copy of what it names handed to
  a callee that may build into it, is an error.
- **O23.** A store into a field written `&q`, through a path whose binding is not known (an element of an array,
  another instance's field), is unverifiable.
- **Sound.** A binding is a claim the construction established - FIT where the instance landed - and every later
  write is held to it. Reading through it reads at a lower bound. Building through it would need a run-time scope the
  reader does not have.
- **Rules out and found by.**
  - C2d's first hole (2026-10-01): a reference field with no scope name was built in the constructor's closing scope.
  - oann's `ctorpush` (C2g): `items.Push(6)` in a constructor built into its closing scope.
  - The scope sanitizer's `scopectornested`: the same in a nested block.
  - tonight5 #6: a constructor kept a borrow of its own by-value parameter (stack use after return).
  - tonight9 #3: a constructor field kept a view of frame storage.
  - tonight5 #7, str4 PE2: a reference copied out of a `&p` field was built through in the scope it was read through.
  - The scopes review, F03: a write through an alias whose binding is not known falsified the binding. Also a method
    writing a `&p` field of its receiver was checked against the receiver's scope (2026-10-09).

### 3.6 UNK: scopes that are not known (O11, O12, O13b, S13c, E28, S12b)

- **A set term arises** from a conditional or a match of references whose values live in different terms; from match
  alternatives binding one name from payloads in different scopes; and from a binding merged over branches (O13b).
- **What may be done with a set.** It may be read and walked: every member is open where it is read. Every `≥`
  question distributes over it.
- **What may not.** It is never `≡` anything. So it is never a local's exact scope, never the binding of a scope
  variable a callee may build into or that its borrowed result names, never a scope argument, and never built into.
- **Stored into a field**, each member value is judged alone, as though stored by itself (E28).
- **Declared** with `:=` or a bare `&`, it is held in the block it is declared in and read there.
- **`?`** gives no judgment, so it is an error (O11). Extending what is traced only turns `?` into a known term, so it
  can only accept more programs that are safe.
- **Sound.** Every judgment of a set is a judgment of each member. The judgments refused are those that need a single
  scope - `≡`, and building - which no member can answer for the others.
- **Rules out and found by.**
  - batch6 #3, pre-existing: `b.last = x if c else outer`. The conditional's scope came back as none, which is what a
    temporary gives, so the store into the field skipped every check.
  - The scopes review, F02 and F08: an ambiguous or untraced scope was read as the program's ("unnamed" meant two
    things).
  - tonight3 #2, tonight5 #4: copies out of a conditional's members kept their references in the copy's block.

### 3.7 VAL: values holding references (O4b, O25h, O17a)

- `refs(x)` is a claim (2.6). A copy keeps its source's term (O25h). A temporary's is where it is built.
- **A by-value parameter holding references** has its own `V(p)` (O4b). What is read out of it lives at `V(p)`, never
  in `P` and never in the frame. A callee may build into `V(p)` wherever `st` holds of `p`'s type - decided by the type,
  as a reference parameter's is by its permission, not by whether the body writes `p` (tonight #2, P1). Returning what
  it holds is O14c's obligation.
- **Rules out.**
  - tonight #2: `fn grow(b Box) { b.n.next = N(9) }` built the node in `grow`'s own scope.
  - The scopes review, F04 and F08: such a parameter had no scope for its references, so returning them was unchecked
    and a payload read out of one passed for the program's.
  - tonight3 #2: copies out of a returned or borrowed reference, in four shapes.
  - The scope fuzzer's `scopepayloadcopy` (2026-10-10): a local enum's payload copied by a match binding or `as`
    recorded no home.

### 3.8 FN: function values (D16c, D16d, O14a, T22a, E31)

- **A lambda's captured scopes** are `V` terms of its body, bound where it is made.
- **A closure's home** is its captures' one term; where they differ, the innermost block among them; else the block it
  is made in. Returned where it is made, it is built in `R`, each captured term an obligation `≥ R` (D16d). A closure
  FITs by `≥` only.
- **A function with obligations is never made a value** (T22a): a call through a value discharges nothing. A function
  type whose result is a type variable carries its own obligation, which calls through it are held to. A `Call`
  adapter is a function value of its instance, and a `Call` that keeps an argument beyond the call is not adapted.
- **A call through a function value keeps nothing of its arguments beyond the call, except in its result** (T22a).
  That is the language's promise that makes callbacks checkable without their bodies.
- **Rules out and found by.** Lambdas, stage 1 (2026-10-06): a function with an obligation passed as a value, the
  obligation never checked. str4 PE1: a `Call` adapter kept its function-typed argument. e31view4 F1 (3.3).

### 3.9 DTOR: destructors (O15, O16, C9a, C10, C11)

- **Registration** is once per constructor call, with the term the instance is built in (O16). Destructors run when
  that scope closes, last constructed first, and the storage is reclaimed after all of them (O15).
- **C11.** A destructor-bearing type is reference-only, so every name reaching an instance is a reference §8 judges.
  A copy by value would have no term, and could outlive the release.
- **C9a.** A destructor's top level builds into the closing scope, a `V` term of the destructor's body, so what it
  builds lives until that scope is reclaimed. A task it spawns builds into parts folded back as the destructor returns.
- **Sound.** By I1, when a scope closes nothing outside it refers into it. Since storage goes only after every
  destructor has run, one destructor reading an instance another has destructed reads live memory: a logical matter,
  not a memory one. I4 holds by registration at construction.
- **Rules out and found by.**
  - Registration per storage location: three bugs at once (C11's entry, 2026-09).
  - str1 P2: a destructor-bearing temporary no promotion took was never destructed.
  - str2 F4, str3 N7: one constructor call destructed twice, through a conditional and a catch default.
  - tonight9 #5: a destructor building through its instance's field built into its own frame.
  - batch6 #2: a destructor's task's part was never folded, so its storage leaked and its destructors never ran.

### 3.10 TASK: threads (P1b, P1g, P2, P4a, decision 48)

- **Static.** Everything a task is handed must FIT a slot in `B(join)` by `≥`: it must last until the join block
  closes. That covers its arguments and everything they hold, its function value and that value's captures, its
  clauses' captures and its targets. The join waits on every way out of its block (P1b).
- **Run time.** Each scope a task is handed as a scope variable gets a stand-in, folded back at the join, which
  forwards to its parent after that (P2). Each worker has a part of the program scope. A closure that may build into a
  captured scope asks for its thread's part of it on entry (decision 48), decided by the may-build summary - the plan's
  `MayBuild`.
- **Sound.** I1: the spawner's join block outlives the task, so every cell the task can read is open while it runs. I3:
  every arena is bumped by its owner only. Stand-ins and parts have their parent's lifetime, so no static claim
  changes.
- **Rules out and found by.**
  - P2's first claim, "allocation is per-thread", was false: two tasks bumped one scope variable's arena (a glibc heap
    corruption in four runs of five, 2026-09).
  - tonight #1: `os.RunOnStack` in a task bumped the program scope.
  - tonight2 #5: `spawn h.f()`, a closure read from a field, was not held to P2.
  - tonight3 #1: a spawned lambda built into the spawner's scopes from the task's thread.
  - tonight5 h1-h4: decision 40's static refusal could be evaded, and a fold into a stand-in already folded lost its
    destructors.
  - tonight8 #1: the may-build walk missed temporaries built where a conditional, a match or a catch default lands - a
    data race.
  - Decision 50: a `String` value spawn target was built in the join block.

### 3.11 STR: rendering (E11c)

- **In a `Str` body, the receiver's terms are not known**, as for O12. `Str` may read and walk them, but builds
  nothing into them and requires nothing of them (no obligation names them). `$` binds them to an `Inert` scope.
- "Builds nothing into them" is a summary over everything `Str` hands a part of the receiver to: callees, closures,
  tasks, `Call` adapters, conditional and match values, catch defaults.
- **Sound.** `$` cannot say where the part it renders lives. A value built "where the receiver lives" would be built in
  a scope that closes with the rendering, while kept in the receiver.
- **Rules out and found by.** str1 N1, N2: a read-only capture and a destructor stored into the receiver. str2 F1, F2:
  callees and build sites missed by a hand-kept list. str3 N1, N2: closures and `Call` adapters. str4 C1, C7: a cycle
  read mid-way, and a reassigned callback. str5 C1, C2: a catch default's call, and an O26a slot.
- **The lesson.** Five rounds went into this because "does it build into `v`" was answered from a hand-kept list of
  build sites. In the model it is one predicate over `Built[site]` and `Passed`, and the MIR verifier holds lowering to
  it (section 7.3).

### 3.12 Rules elsewhere that meet §8

| rule | owner | what it does for the model |
|---|---|---|
| S4d | check, by types | a borrow of the place being written over takes the old value; otherwise the value would hold itself - a cycle, not a dangling reference |
| E31b | check elaborates, scope judges the lend | a call that could write a copy of `x[i]` is an error unless the element is a handle lent as its reference (LEND, by its references) |
| T25b, T25c | check | permission decides `st`; read-only copies (QC) |
| E16a | scope | a slice borrows `stor(base)`; a slice of a temporary borrows it in the block it is written in (tonight9 #4) |
| P1g | scope | a spawn target is an assignment's slot, judged as one |

## 4. The O-rules after §8.8

Status: **rule**, a rule of section 3; **runtime**, not a judgment (lowering or the runtime keeps it); **subsumed**,
follows from the model's general form; **revised**, by `docs/memory.md`; **retired**.

| SPEC | content | in the model | status |
|---|---|---|---|
| O1 | scopes, FILO | 1.1 | rule |
| O1b | the program scope | `P`; FIT's `P` row; 3.1 | rule |
| O2, O2a | blocks open scopes; nesting orders them | `B(b)`, the order | rule |
| O2b | an empty scope costs a header | | runtime |
| O2c | a local's storage reserved per call | frame slots, 1.2 | runtime |
| O2d | a binding records its block | `β` maps to terms, blocks included | subsumed by CALL |
| O3, O4, O4a | scope variables; what a marker means | `V`; marks, 2.5 | rule |
| O4b | implicit variables, by-value ones included | `V(p)`; 3.7 | rule |
| O5 | a tag is not part of a type; a container's scope | FIT's slot table | subsumed by O20 |
| O6, O7 | temporaries built where they land | PLACE | rule |
| O8 | closing reclaims | 1.1 | runtime |
| O8a, O8b | alignment; reuse | | runtime |
| O8c | nothing reclaimed earlier | section 5 | revised by O8d; its last sentence (own slots) goes |
| O9, O10, O10a | flows judged; outlives | FIT, the order | rule; O10a gains `P ≥ s` |
| O10b, O10c, O10d | obligations, their discharge, unsatisfiable relations | FIT, CALL | rule |
| O10e, O24 | | | retired earlier (by O4b) |
| O11 | untraced is an error | `?` | rule; its "array index ... not followed at all" is stale (O20, O25c follow elements) |
| O12 | not known here | sets | rule |
| O13 | built and borrowed results | RET | rule |
| O13a | a returned value's bindings | RET | rule |
| O13b | merged bindings | sets, meets (2.6) | subsumed |
| O13c | what a result carries | RET | rule |
| O14, O14a, O14b, O14c | returns | RET | rule |
| O15, O16 | destructors | DTOR | rule |
| O17 | arguments bind variables; lending by bodies | CALL, LEND | rule; O17a's "own array's borrow" paragraph goes |
| O17a | a split value is not held by reference | LEND | rule |
| O17b | a handle is lent as its reference | LEND, by its references | rule; `Vec` joins it as a handle (`docs/memory.md` 4.1) |
| O18 | supplying the result scope | PLACE, CALL | subsumed by O18a and E25 |
| O18a, O18b, O18c | landing | PLACE | rule |
| O19 | binding is per call, unobservable | CALL | subsumed |
| O20 | a slot through a container | FIT's slot table | rule |
| O22 | derived obligations | `D` terms in `Γ` | subsumed by O23a and O10b |
| O23, O23a | derived scopes; unverifiable stores | INST | rule |
| O25, O25a-O25c, O25e, O25g | exactness | FIT, CALL | rule |
| O25d | a returned reference follows O14 | RET | subsumed |
| O25f | derived obligations of equality | `D` terms, FIT | subsumed |
| O25h | a value holding references | VAL | rule |
| O26, O26a | `&return`; a returned local lives in `R` | PLACE, RET | rule; O26a's `take` sentence goes |
| O30-O42 | owned references | | retired (round 3) |

Elsewhere, P2's sentence on a borrow of an owned object and C11's last paragraph go with §8.8.

## 5. Early freeing: the second layer

`docs/memory.md` (section 2) makes freeing early the compiler's optimization: a place that lets go of what it holds
frees it at once when it was the only holder. This section states what that adds to the model and why it is
unobservable.

### 5.1 What it adds

- A **sole** place's values are each built in a **region**: a run-time scope inside the place's scope `S`, which closes
  when the place lets go of that value, or with `S`.
- §8's judgments are unchanged and placed those values in `S`. The second layer proves that the region, a shorter
  scope, is just as safe.

### 5.2 The trigger rule

> When a place lets go of what it holds, that storage is freed at once if it was made for that place and no reference
> into it was ever stored anywhere else. A reference read from it that is still in use delays the free to that
> reference's last use.

### 5.3 The invariant: freeing early is unobservable

When a region `ρ` is freed, at the place's let-go point or after the last use of the views it waits for:

| | condition | `docs/memory.md` O8d |
|---|---|---|
| E1 | no live cell outside `ρ` holds a reference into `ρ` | 1, 2 |
| E2 | no live local or temporary that is read again holds one | 6, and 2.5 |
| E3 | no other thread can reach `ρ` | 3 |
| E4 | `ρ` holds no instance whose destructor is still to run | 4 |

**Theorem.** If E1-E4 hold at every early free, a run with early frees reads the same values and runs the same
destructors at the same points as a run without them. Only memory differs. After the free nothing can reach `ρ`'s
cells (E1-E3), so reusing them changes nothing any read sees; no destructor moves (E4). This extends the plan's
invariant, "nothing in it changes a value" (DESIGN 1.6.1). Condition 5 of O8d ("the place can let go again") is a cost
rule, not a soundness condition.

### 5.4 How the analysis gives E1: §8 again, with finer scopes

- **Region terms.** The provenance pass gives every **read** of a candidate place's value a region term of its own,
  `ρ_k`. The place's scope outlives each one (`S ≥ ρ_k`). A region term outlives no other term, and - for stores - not
  even itself (5.5).
- **Re-judge.** Sections 3.1-3.10 are run again with those terms. A flow §8 accepted with `S` but refuses with `ρ_k`
  goes either to a local or temporary of the function - a **view**, judged by liveness (5.6) - or anywhere else, an
  **escape**: condition 2 fails, the place is not sole, and that flow is the report's note (B14).
- **Builds through a view** of a sole place are placed in its region (MIR's `RegionOf`), which keeps I2 exact for the
  region rather than for `S`.
- **Made for the place** (condition 1). Every store into the place gives a temporary (built in a new region), `null`,
  constant data, or a value moved from a sole place (`Pop`, `TakeAt`, `SwapTake`, `Take`, a local's last use).
- **The fixed point** is a greatest fixed point over places (`docs/memory.md` 2.4, step 3).
- **Why this gives E1.** It is §8's own soundness argument, applied with each `ρ_k` as a scope that closes at the
  let-go. A reference into `ρ_k` is stored only where `ρ_k` outlives the slot's term, and it outlives none. So outside
  views, a reference into the region exists only inside the region, made by the value's own constructor and methods,
  where the relation is between a scope variable and itself and reaches no caller as an obligation. Views are handled
  by E2. What the value holds from outside the region had to outlive `S` already, and `S` outlives `ρ_k`, so §8's
  first run still covers it.

### 5.5 A hole in `docs/memory.md` 2.4 as written, and the fix

`docs/memory.md` gives all of a place's values **one** fresh scope `ρ`. Two values of one place then share the term,
and §8 accepts storing a reference into one value inside another:

```olang
a := try m.Get(1)
b := try m.Get(2)
b.next = a           # rho into rho: accepted with one rho
m.Remove(1)          # frees a's region while b.next still refers into it
```

The same goes for a loop that links each element to the one before it (`e.prev = last; last = e`), and for a method
relating its receiver to its argument when both are views (`b.link(a)`: `Γ_link` holds `V(other) ≡ V(recv)`, which
one `ρ` satisfies).

**Decided.** Each read of a place's value gets its own region term, and for a store, no region term outlives another
or itself. So a store of a reference read from the place, into a slot reached through a reference read from the
place, is an escape - even through the same local, which in a loop holds a different value each turn. A value
referring to itself is made inside its own constructor or methods, where the relation is between one scope variable
and itself and reaches the caller as no obligation, so it is untouched. A collection whose values refer to each other
(a graph held in a `Map`, linked entries) is therefore not sole, and the report names the store. That is the only safe
answer without tracing, and it is `own`'s vec7 F1 lesson again: the same path is the same variable, not the same
object. A later relaxation - the same read, with no loop carrying it - can be added under review.

### 5.6 Views, calls, threads, destructors and unwinding

- **A view in the same function.** The free is placed after the last use of every view, on every path. This is
  liveness over MIR, where deferred code, joins and catch dispatch are explicit, so their reads count.
- **A view across a call that may let go of the place.** This uses a may-let-go summary per function (a least fixed
  point; an unknown body may let go of anything it reaches). A view live across such a call makes the place keep
  (condition 6). Pins would make it exact; that is ledger QAD 1, unanswered.
- **Threads.** Anything a task can reach is kept (condition 3).
- **Destructors.** A region holding a pending destructor is handed to `S` and closed with it (condition 4).
- **A test unwound by a failed check.** Every region not yet freed is registered with its place's scope, so the
  unwind's close reclaims it. A region is freed exactly once: at its let-go, or when its scope closes.
- **Separate compilation.** Decisions are made at the root and delivered as link-time constants (`docs/memory.md`
  3.5), so every object reads one answer.

### 5.7 M19g is not about memory

`v.View()` is a result borrowed from the `Vec` handle. A growth replaces `vecState.data`, a place, and retires the old
buffer. A stale view's memory safety is 5.4-5.6: the old buffer is kept while a view of it may be used. M19g's error is
a correctness rule, and its requirement runs the other way: it must never refuse a correct program, so it fires only
where the same `Vec` is seen on both sides. It uses the same view liveness and a may-grow summary, and nothing relies
on it for soundness.

## 6. Where the model is conservative, and where completeness needs care

### 6.1 Safe programs it refuses (kept in M6)

1. A reference local is always exact (O25a, O25b), even where nothing can be stored through it: `x Node& = first(l)`
   must be written `x Node&l`. This is the user's design, and stays.
2. A value `List<String&>` has one scope for its chunks and its elements' referents (G11; study3 r10).
3. A loop's copy of an element, lent to a call, is judged at the copy's storage (study3 r06).
4. The body summaries (`reg`, may-build, may-hold) are over-approximations: a store on a path that never runs still
   counts.
5. Within a cycle of calls, placement takes the conservative default, and a result carries no bindings.
6. A call through a function value builds into anything it reaches and stores through any parameter with `st`.
   Callback parameters are not parametric: decision 49's round 4 made them so, and str4, the review of that round,
   found two use-after-frees in it (C1, C7).
7. `Str`: a helper making a lambda over a node it was handed is refused.
8. O23: a store into a `&p` field through an element or another instance.
9. An `At` result in an operand, of an element type with `mut` reference fields, asks for an exact scope it cannot
   show (recorded 2026-10-09).
10. Early freeing (all keep memory, none is an error): decided per declaration and per construction site; views across
    calls; whatever a task reaches; values of one place referring to each other (5.5); places let go of once.

**M6's bar.** M6 refuses exactly stage 0's set: these ten, and every other refusal stage 0 makes (8.3).
1. A difference is a finding: a stage-0 hole with a reproducer, or a relaxation with its soundness review.
2. Some strictnesses are the user's design, not the model's: item 1 (O25a, a reference local is exact) and the
   per-member judgment of a conditional stored into a field (3.6, E28). The model's general form would allow more in
   both. M6 does not relax them for that reason: doing so is a language change, and the user decides it.

### 6.2 Where completeness needs care

Each item is something a review should check is closed.

1. **Every allocation is a site** with one `Built` entry. Lowering's own allocations are the listed exemptions
   (DESIGN 1.6.1: a builder's scratch, `Inert`, hold slots, stand-ins, a try default's slot), and the MIR verifier
   refuses any other.
2. **Every way a reference reaches storage is a FIT.** In the typed contract these are `Let`, `Assign` (with
   `Target`), a call's arguments and hidden scopes, `Return`, `Spawn` with its targets and clauses, `Fn`'s captures,
   `Yield`, `Make`/`Collect` elements, and `Promote`. The list must be closed against DESIGN 1.6.1's 18 expressions
   and 15 statements: a new node kind needs a FIT case.
3. **`st` and `refs` over recursive types and instances** must reach type arguments, fixed arrays held by value, and
   payloads.
4. **Summaries over every call edge**: direct calls, constructors, destructors (charged to whoever closes the scope),
   deferred code, defaults (`Away`, built for each call in its declaration's context), lambdas (an edge from host to
   lambda), and calls through function values and externs as unknown bodies.
5. **Thread reach**, for P2 and for early freeing's condition 3: arguments, captures, function values held in what a
   task is handed, clauses, targets. Early freeing also needs which construction-site collections a parameter and a
   task may reach; their structural defaults are in `docs/memory.md` 5.5, round 6.
6. **Unwinding in tests** (S18, P1d) closes scopes in order, so every lifetime claim still holds. Regions must be
   registered (5.6).

### 6.3 A simplification the model suggests: two scope variables per reference parameter

LEND exists because a reference parameter has one scope variable and a split value has two homes. Give every reference
parameter whose referent type holds references **two** variables: `V_at(p)`, where the referent's storage is, and
`V_refs(p)`, where its references lead, with `V_refs(p) ≥ V_at(p)` always. O20 then reads a bare field through `p` at
`V_refs(p)`.

- tonight2 #1's `b.head.owner = b` stores `V_at(b)` where `V_refs(b)` is needed, so it records the obligation
  `V_at ≡ V_refs`, which a split argument fails at the call.
- e31view4 F1's escaping capture records `V_at(b) ≥ R`, judged against the copy's block.
- e31view3 U1's build through `b.head` goes to `V_refs(b)`, where the references really are.
- A handle's `Push` builds at `V_refs` and never touches `V_at`.

So `reg`, `self`, O17a's lending paragraph and much of O17b become ordinary obligations, with no body summary. The
cost is a second hidden argument where both are used, and a second entry in `types.Scopes`.

**Decided:** M6 builds §8 as SPEC states it first (LEND by summaries), so that its verdicts can be compared with
stage 0's. The two-variable form is then measured as an experiment: does it accept everything stage 0 accepts that is
safe, and refuse every reproducer? It would replace LEND only with a SPEC change and a soundness review.

## 7. M6 from the model

### 7.1 Inputs and outputs

- **In:** typed bodies (DESIGN 1.6.1: marks, blocks, sites, scope variables, fields, held and hidden locals), types
  (for `st` and `refs`), and the call graph. §8.8's removal takes `Take` as written, `Region` read sites and the
  `Owning` permission out of the contract (`docs/memory.md` 5.3).
- **Out:** the plan (`Built`, `Stored`, `Passed`, `MayBuild`); a summary per function instance; diagnostics. At the
  root, the early-free decisions and the B14 report.

### 7.2 Passes, summaries and their order

**Generate, then solve.** Each body yields atomic constraints (`s ≥ t`, `s ≡ t`, "built only in a run-time term", the
LEND conditions), each with its rule and its source position. Solving them is a transitive closure over a small set of
terms per function. Errors are failed constraints, so a cause gives one error.

| step | over | computes | reads |
|---|---|---|---|
| 0 | each body, alone | blocks, marks into terms (2.5); O26a's flow sets; O18c's kept sets | nothing interprocedural |
| 1 | each strongly connected component, callees first | placement and constraints per body; `Γ` to a least fixed point; the component's own calls discharged once `Γ` is final | lower components' final summaries |
| 2 | same | may-facts to least fixed points: may-build per scope variable, `reg`, may-hold, may-keep and `self` (from `Γ`). Must-facts to greatest fixed points, verified at convergence: `thru` | the plan, `Γ` |
| 3 | same | the constraints that read step 2: LEND, E11c, E31b's lend, nothing built into a static-only term, P2's `MayBuild` marks | converged step 2 |
| 4 | the program, at the root | early freeing's fixed point over places; may-let-go per function; the report | everything |
| 5 | MIR, after lowering | view liveness (5.6), M19g; the verifier holds lowering to the plan | the plan |

Rules for the order:
- **Placement inside a component never reads that component's own obligations.** It takes the conservative default
  (O18c: "taken to build"; O26a: "keeps"), so placement does not move while `Γ` grows. `Γ` then grows monotonically
  over a finite set of relations, and step 1 converges.
- **No summary is read before its component has converged.** A check on an unconverged summary is a bug, not a
  conservative answer: tonight2 #2 and str4 C1 were each this, and each was a use-after-free. Each component carries
  a `converged` flag, set when its fixed point ends; reading a summary of a component without it is an internal error.
- **Step-2 facts are structural.** `reg`, may-build, may-hold, may-keep and `self` say what a body stores, returns,
  builds and keeps, read off its typed tree and `Γ`. They never depend on a step-3 verdict: not on which binding a
  LEND chose, nor on where a build landed under that binding. Computing `reg` from "where did this build land" would
  make step 2 read step 3, and the stratification would be circular.
- **Lowering is held to the converged summaries.** Stage 0's `cgCheckMayBuild` (decision 48) is the precedent. The MIR
  verifier checks every build and every store that lowering performs against what the converged summaries allowed:
  1. a build into a scope variable the callee's may-build said it never builds into;
  2. a store that `reg` or `self` said does not happen;
  3. a hidden scope handed to a callee that may build into it, where the caller relied on no build there.
  Any such case is an internal compiler error. So a stratification mistake - a summary read early, a fact computed
  from a binding - is caught at compile time, never found later as a use-after-free.
- **Summaries are per function instance.** study5 r03 found a region fact kept on a generic's shared scope variable,
  so `List<List<String&>>.At` decided `List<String&>.At`'s answer, depending on statement order.
- **Least or greatest.** A may-fact computed to convergence as a least fixed point is sound and the most precise.
  Stage 0's coarser greatest fixed point for may-build is also sound. Only reading an unconverged value was ever
  wrong.
- **Check's own summaries stay in check**: D9b's written parameters, T25c's by-value need, `roByArg`/`roToResult`, K1a,
  B5a (DESIGN 1.6.1).

### 7.3 Rules of construction

1. **One predicate** says where a value is built, `Built[site]`, with `Passed` for hidden arguments. Everything that
   asks "does `f` build into `v`" - P2's prologue, E11c, the never-built-into terms - reads it. The MIR verifier holds
   lowering to it, and to the converged summaries (7.2), as stage 0's codegen holds bodies to the walk (decision 48).
2. **Placement proposes, the judgment disposes** (3.2).
3. **Facts are claims, and writes are held to them** (2.6).
4. **Soundness never rests on a token scan** (tonight4): only on the typed tree.
5. **Every relaxation of a rule gets a soundness review before it merges.** The own, Vec, view-lend and `Str` rounds
   each found use-after-frees in the newest relaxation.

## 8. Testing

1. **`checks/cases`.** About 190 cases name an O-rule of §8 in their expected error; those naming a rule of §8.8 go
   in round 3 (`docs/memory.md` 5.3). M6's acceptance is stage 0's rule and position on each (diaggold, checkdiff).
2. **A rule-to-case table.** Every rule of sections 3 and 5 names at least one case that must fail and one program
   that must run, and a tool lists the rules with none. Run cases read their values back after an arena churn.
3. **The differential against stage 0.** A tool gives each program to both compilers and compares the verdicts. Each
   difference goes into a `compiler/goldens/scope.deferred` with its reason, as `layout.deferred` does: either a
   stage-0 hole (with a reproducer, fixed in stage 0 under QB where that is cheap) or an M6 relaxation (with its
   soundness review). For programs both accept, the stage-1 build under `-sanitize` must agree with stage 0's.
4. **The scope fuzzer** (`fuzz/scopegen.olang`): built under the sanitizer, run against `interpret`. Its shapes come
   from the reviews, and every review adds its reproducers' shapes. In 2026-10-10's first run it found 62 problems in
   300 programs. With M8, `eval`'s dead-region mode is a second oracle, and an early-free mode replaces the own mode
   (`docs/memory.md` 3.6).
5. **The sanitizer.** `make scopesan` with stage 1.
6. **The plan's invariant.** Evaluation with and without the plan gives the same values (DESIGN 1.6.1). With early
   freeing, the same with its regions freed and kept.
7. **Unit tests** in the scope module: the order (2.2), FIT's table, `st` and `refs` on recursive types, and
   placement's table.

## 9. Decisions and questions

### 9.1 Decided here

1. The model's form: scope terms, the order, FIT, PLACE, CALL and LEND, claims (sections 2-3).
2. `P` outlives every term.
3. `D` terms join `Γ`'s transitive closure, so O22 and O25f are not separate rules.
4. Early freeing gives each read its own region term, and a region term outlives no term, itself included, for stores
   (5.5). This closes a hole in `docs/memory.md` 2.4 as written.
5. May-facts are least fixed points computed to convergence; must-facts are greatest fixed points, verified. Nothing
   reads an unconverged summary. Step-2 facts are structural, and the MIR verifier holds every build and store to the
   converged summaries, an internal error otherwise (7.2).
6. Placement inside a component never reads that component's obligations.
7. M6 implements LEND as SPEC states it, the binding fixed by the split value's kind (3.3); the two-variable form
   (6.3) is an experiment after that. M6 refuses exactly stage 0's set, and the user-design strictnesses are not
   relaxed with it (6.1).
8. M19g runs over MIR beside the view liveness, and gives errors only.
9. SPEC text to fix when round 3 rewrites §8: O10a gains `P ≥ s`; O11's "an array index ... not followed at all" is
   stale (O20 and O25c follow elements); O17b still writes `try a[i] catch default v`, which since QQ1 is `checked`;
   O17a's own-array paragraph, O8c's last sentence, O26a's `take` sentence, P2's §8.8 sentence and C11's last
   paragraph go; §8's title and opening change (`docs/memory.md` 5.5, round 3). S13b's "nothing is built into" a
   binding read out of a by-value enum parameter predates O4b's scope variable for that parameter; the model follows
   O4b (built into where `st` holds), which is sound because that variable is where the argument's references are.
   This is the one place the model departs from SPEC's letter, so its SPEC edit lands in round 3 with the rest
   (`docs/memory.md` 5.5). Once round 3 is in, SPEC and the model agree.

### 9.2 For the user (direction)

1. **Should SPEC §8 be restated in the model's form when round 3 rewrites it?** That means the general rules first (the
   order, FIT, placement, calls, split values), then the special cases as applications.
   Today it is about fifty case-by-case paragraphs, and the reviews' holes were mostly cases one paragraph did not
   reach. The meaning would not change.
   - In effect until answered: round 3 cuts §8.8 and leaves §8's text as it is.
   - Recommended: yes, written beside M6 so the spec and the pass have the same structure.

Ledger QAD's two questions - pins for views across calls, and disarming a destructor - still stand. The model changes
neither.

### 9.3 Decided while building M6 (round 1, `compiler/scope.olang`)

1. Constant data is a value kind of its own: it lives in `P` and fits every slot, as `null` does (T25d). The array a
   `for ... in` walks, a literal of constant data reaching a read-only reference, has its elements in `P` whatever its
   own storage is.
2. A constructor's field is a slot of its instance whatever its type writes (a field written as a bare type variable
   too): a bare field claims the instance scope with `st`'s exactness; a field written `&q` only outlives, and adds
   `bind[q] ≥ Instance` to the constructor's obligations - the instance never outlives what such a field names (C2d).
3. A field written `&q` read through a reference parameter `p` gives `D(p, q)`. Read through any other base (a local
   instance) it gives an underestimate standing above the instance's term: shown to outlive what that term outlives,
   never shown to be outlived, never built into (O23's fallback, made safe for building). Through a call, `D(p, q)` on
   the side that is to outlive is `p`'s binding - the referent outlives the instance (C2d) - and on the other side it is
   untraced until per-instance bindings exist: an over-rejection, never an acceptance.
4. LEND (3.3) for a split value - a landed local whose references are not where its storage is, a call's value result
   promoted for a reference parameter: bound where its references are, to a callee keeping nothing in it. Keeping is
   handing the region's address on: the parameter's reference, or a borrow into what it names, returned, captured,
   declared into a local, or passed to a callee that keeps. Storing into the region is not keeping under this binding,
   since what is stored must outlive the binding, which outlives the region. Read off each body's tree after it is
   judged, per parameter, callees first; anything else is O17's error.
5. A callee whose component has not converged is taken to build into every scope variable, to keep every argument and
   to give no landing (7.2: placement inside a component never reads its own obligations).
6. `O18c`'s "the callee builds nothing" is read off the converged plans: a body builds into a scope variable where a
   site of it is built there, or a call passes it to a callee variable that may be built into.
7. `O26a` is decided before a local's `Let`, by a backward flow over the rest of its block (returns, assignments,
   `:=` declarations, a method's receiver), seeded with the locals already in the result scope; a local reached only
   by a flow, from a call tied to a block of this function, stays (SPEC's exception). A moved local's storage is
   `Stored[l]`, which lowering gives the MIR local as its home.
8. A term with no run-time scope that a call passes (`Inert`) is the program's in lowering.

### 9.4 Decided while building M6 (round 2)

9. **Tasks (P2, P1g).** Everything a task is handed - its arguments, what its temporaries hold, the function value it
   calls, what its clauses capture, its targets - must last until its join block: a term at or outside the join block,
   a scope variable, or `P`. A task's temporaries are built in the join block, where the task is made, never in the
   spawn's own block. A spawn's target is fitted as the assignment it is, at the spawn.
10. **Stand-ins apart from builds.** A body's summary records, per scope variable, whether it may build there at all
    (`Builds`, a task's stand-in included) and whether it builds a value there (`Real`). A spawned call whose callee
    builds into a variable builds there; one whose callee builds nothing still makes a stand-in of every scope it binds
    (P2). A derived scope takes only real builds: a stand-in for it is made where the instance whose field it reads
    lives (O23), a real build into it is O23a's error, as in stage 0.
11. **T22a after every body.** A function with obligations becomes no value - named, a lambda, or an instance's `Call` -
    judged once every body is, since obligations are summaries; a function value returned from a parameter (O14b's
    callback) is exempt, its obligation being the callers'.
12. **A constructor's instance is built where it stands or where its parameter is bound** (C2d), never landed by its
    obligations (O18a, O18b): an instance not exactly where what it can store through lives is said at the argument.
13. **What a body keeps, in two.** `Stores` - it stores into what it is lent, or hands a writable reference into it out
    - and `Keeps` - it only keeps its reference. A reference read out of a lent region and handed on is kept in that
    region only by a callee storing into it (O17). O17a refuses holding by reference, slicing or viewing a value whose
    references live where its own storage does not.
14. **E31b and E11c are read off callee bodies.** A copy of an element nobody holds, lent for a writable reference
    parameter, is refused but for a handle the callee uses only through its reference and a view writing nothing of its
    own storage - a greatest fixed point over bodies. What a body builds into each scope variable, and where, is a
    least fixed point (P2 stand-ins, lambdas' and adapters' bodies, moved locals, try defaults and choices placed where
    their values live), and a `Str` builds nothing where its receiver lives (decision 49).
15. **Errors inside an instance's body are said at the program's use** (G16b), with the checker's note naming the
    instance; one said in several instances is said once.
16. **Which rule a fit says**, as stage 0 names it: O25 where an exact fit fails and something can be stored through at
    any depth (else O10); O10 for a local whose own scope is too short, whatever its claim; T17c for an enum payload's
    slot; O10d for a reference or function value returned from the function's own scope; O14 for a parameter's
    storage returned as a built result (and T25c for a read-only reference returned as one). A derived scope's
    exactness is refused for a local (nothing here shows the two the same) and recorded as an obligation for a result
    (O14b). An assignment's fit is said at its `=`, a call at its last callee in a chain, an index call at its `[`.
17. **O26a and lambdas.** A returned lambda's captures are not moved into the result scope; each is an obligation
    (D16d), and a lambda over several scopes is O26.
18. **O4a in generic signatures.** A marker in a signature naming no earlier parameter is an error at the name, in
    `compiler/generic.olang` where signatures are made.

### 9.5 Decided while building M6 (round 3)

19. **A set where one scope is needed** (O11, O12, S13c): a temporary stored into a place whose references live in one
    of several scopes, a mark or scope argument naming such a local, and an argument a callee may build into are
    errors - there is no run-time scope to build in. A match binding lives in its clause (S13b); a for-in's own copy is
    never moved (O26a); a reference default lives exactly where the call's result does (R11); a conversion names its
    array's storage (T29a); a slice of a constructor's temporary is the constructor's frame's (E16a).
20. **What O17 counts as storing into a region**: a store through a reference the body read out of the region; a result
    a call borrows from the region is a read of it; a handle holding a handle is used through its reference. A for-in's
    copy of an element is lent as its storage, the loop's block (B11's note names the array).
21. **Inside a component, least fixed points.** What a callee of the component being judged keeps, stores and builds,
    and what its obligations require of a variable no argument determines (O18b), is what the rounds so far found; the
    rounds run until no relation and no such fact grows, then once more reporting.
22. **Per-instance bindings for locals (O23a).** A local a constructor call initializes, and the body never assigns
    again (a store into the local itself, a task's target), carries the term each constructor parameter's argument
    lived at. A `&q` field read through it is there; a callee's `D(p, q)` through it resolves there, on both sides of a
    relation; a store into a `&q` field is held to the field's binding (`D(p, q)` through a parameter, the local's
    binding, else the underestimate) - never only to the instance's scope - and exactly where something can be stored
    through it (O25g), as a constructor's initializer of one is, so that building through the field builds where its
    referent is; a store of existing storage where only the underestimate is known is O23/O11's error. Not tracked yet, so still underestimates (over-rejections, never
    acceptances): locals assigned after their declaration, a call's result's bindings (O13c), a for-in's hidden locals.
23. **Which rule and token**, as stage 0: O25e at the call (a constructor's at the argument); O1b at the value stored; an
    element read at its `[`; a build through a derived scope at the argument determining it; a conditional at its
    `if`; a relation naming a constructor's instance is C2d's (through a constructor building one of its fields too); a
    callee's relation on its result asking this function's own storage to outlive the result, where the result is
    returned, is O26 at the call; a reference stored exactly where something can be stored through is O25 (naming a
    value local that closes first); an array literal's element and a fill are O25c's.
24. **An array value with no result scope.** A function whose result is, or holds by value, an array value has no result
    scope in the typed contract where its type holds no reference; what it returns is built in the program's scope (as
    lower's copy of a returned array value is), a local it returns whole is moved there, a conversion passes its
    destination on, and an array read out of a call's built result has that result built where the value goes. Sound,
    not exact: a result scope for array values (as stage 0 has) would reclaim it with the caller.
25. **Handed back through a shared scope.** A call can hand back an argument that shares the scope its result is
    borrowed from (O13), so a local lent there flows into the result (O26a); and landing by obligations (O18c) reads the
    summaries of the component being judged, as O18b does (21).

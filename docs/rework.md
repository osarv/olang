# The rework: scopes inferred, `&` means may write, values guarantee their own copy

Status: the design, written 2026-10-31 for review before any code. Nothing here is built. It joins three decisions
into one rework of section 8 and of how parameters are passed, since all three change the same rules, the same
signatures and the same pass:

1. **Scopes inferred, none written** (QCB, 2026-10-30, the user: "Yes, do this scoping rework", then "make manual
   scopes impossible"; blocks stay scopes, 2026-10-31).
2. **`&` on a parameter means it may write** (QCC, 2026-10-31; its three checks, "Yes do them").
3. **A guarantee is declared by holding a value** (QCE, 2026-10-31: "things which want to guarantee no external process
   may modify them, simply declare their data to be by value and then there is a copy on entry").

Sources: CLAUDE.md's entries of those names, "Permission is part of a reference's type" and "Memory and scopes";
HISTORY.md's sections of 2026-10-30 and 2026-10-31; decisions.md's QCB, QCC and QCE; `docs/scope-model.md` (the formal
model of section 8 as it is, called "the model" below); SPEC section 8, T22a, T25b-T25d, D9-D9c, T7a-T7d, E12-E12c,
E25, D18c; `compiler/scope.olang` as it stands. Rule names new here (O27, D9d-D9f) are provisional: round 4 numbers
them in SPEC.

## 0. Summary

- **The judgment stays; only who proposes the claims changes.** Today a marker proposes where a value lives and the
  scope pass disposes (FIT, CALL, RET, the model's section 3). After the rework a solver proposes and the same judgment
  disposes. The model's soundness argument never depended on where a claim came from, only on every write being held to
  it (model 2.6), so inference adds no way to be unsound; it adds ways to be refused, each with a fix (section 3).
- **Inference is a least solution.** Every allocation site, every local and every call's result gets a region variable;
  each construct gives lower bounds (`ρ ⊒ t`: what flows into a slot of term `t` must outlive it) and equalities (where
  something can be stored through, O25g). The solution is the shortest-lived term every bound allows. A value kept
  longer is built where it is kept (O18a's landing, generalized), never copied there.
- **The no-extension rule** is what keeps memory at today's best hand placement: only a value's *whole* flow may lift
  where it is built. A *view* of storage (a slice, a part, a borrow of an inline field) kept past the loop turn or block
  that built the storage is O27's error, naming `$x`/`x.Clone()` - never a hidden copy, never storage held for a part of
  it (the region-inference leak the ML Kit is known for).
- **Hidden scope parameters** carry what markers said in signatures: the result scope (exists, O13), a site's scope
  where it must outlive two parameters' scopes with no known order (new, `W`), a bare parameter's storage where the body
  hands back a view of it (new). A field's scope is the container's unless the inference gives it its own per-instance
  binding (today's `&q`, C2d/O23a), decided per field by a monotone whole-program fixed point.
- **Permission is inferred by origin and per level, as scopes are.** Nothing writes `mut` but a global. A bare
  parameter's whole reach and constant data are read-only roots; a `&` parameter's top level is writable; every other
  level - a local's, a result's, a fresh instance's field, a parameter's inner levels - is solved from what flows in,
  T25c's read-only copies and its generic rule made the general case. So `t.Split(" ")` on a bare `t` gives a writable
  array of read-only views, which may be sorted but not written through.
- **A bare parameter is the callee's value**: passed by pointer, copied on the callee's entry only where its body may
  write it (D9b, generalized), and at the call only where something the call reaches may write storage of its type
  while it runs - so passing by pointer is never observable. D9c's 128-byte cap and D9a's run-time-length error go.
- **Value arrays may be held by value anywhere** (T7a relaxed): a `String` field, a `Vec<String>` element, a
  `Map<String, V>` key own their elements, laid out as a run-time array local is today (length beside a pointer, the
  elements where the container lives); a store copies into the container's scope, a read by value copies out.
- **What disappears** from what a user can see: every scope marker, scope arguments, `outlives`, `mut` but on globals,
  about fifty of today's seventy section-8 and permission diagnostics, D9a/D9c/T7a's errors. **What remains**: about
  twenty errors (section 3), each naming what to write.
- **The plan** is four rounds on this branch, each verified on its own, then a bulk review, then one merge: master goes
  from today's markers straight to none (the user's rule).

## 1. What is written today (measured)

Counted with grep over the code of `std/` (20,791 lines) and `compiler/` (97,266 lines), comments stripped,
single-line signatures (multi-line ones and `Map<K, V>&`-shaped parameters are missed, so the parameter counts are low
bounds). They size the migration and say which designs matter.

| what | std | compiler | tests | checks |
|---|---|---|---|---|
| `T&x` markers (not `return`) | 86 | 722 | 137 | 209 |
| of which a borrowed result `T&p` (signature) | ~43 | ~394 | | |
| of which on a local or a constructor-body field | ~59 | ~300 | | |
| of which a parameter sharing another's scope (`b N&a`) | ~0 | ~147 | | |
| of which a field written `&q` in a constructor body | 24 | 0 | | |
| the most common names | `&of` 17, `&t` 14 | `&c` 339, `&p` 164, `&cfg` 57 | | |
| `&return` markers | 37 | 9 | 32 | 30 |
| scope arguments `f&x(...)` | 1 | 9 | 33 | 19 |
| `outlives` in a contract | 0 | 0 (3 in explain's test strings) | 2 | 5 |
| generator element scopes `Iterator<T&x>` | 0 | 3 | 3 | 20 |
| function types with a marker | 0 | 1 | 1 | 1 |

| `mut` and reference parameters | std | compiler |
|---|---|---|
| function declarations | 1,121 | 5,241 |
| `mut` receivers `fn (s mut T&)` | 249 | 2,996 |
| read-only `&` receivers | 235 | 340 |
| by-value receivers | 140 | 12 |
| `mut T&` parameters (not receivers) | 109 | 487 |
| read-only `T&` parameters | 323 | 3,685 |
| of which `String&` / `Array<T>&` | 185 / 75 | 1,750 / 102 |
| by-value array parameters (D9a, known lengths) | 16 | 9 |
| `mut` in type arguments (`List<mut Node&>`) | 22 | 30 |
| `mut` reference locals | 183 | 221 |
| `mut` globals | 25 | 1 |
| function types with `mut` | 11 | 7 |
| every `mut` in code | 633 | 3,934 |

| text and arrays held by reference inside values (T7a) | std | compiler |
|---|---|---|
| constructor parameters `String&` / `Array<T>&` | 35 / 6 | 100 / 24 |
| constructor-body fields `String&` / `Array<T>&` | 12 / 32 | 58 / 66 |
| `Map<String&, ...>` / `Vec<String&>` / `Array<String&>` | 27 / 27 / 43 | 103 / 304 / 128 |
| `Map<String, ...>` (refused today) | 0 | 0 |

| traits, `any`, checks | std | compiler | tests |
|---|---|---|---|
| traits / `mut` methods / read-only methods | 8 / 2 / 4 | 1 / 3 / 0 | 34 / 7 / 27 |
| `any` in code | 1 (both) | | |
| checks/cases: files / expecting a section-8 or permission error / with a marker / with `mut` | 1,535 / 238 / 169 / 526 | | |

What the numbers settle:
- **Markers are mostly `&c`-style placement in the compiler and borrowed results** - both what the inference
  reproduces from bodies (a local placed by its uses; a result's obligation on `R`). Real relations between
  parameters' scopes (`b N&a`, `outlives`) are rare in code that is not about them; the one function type carrying a
  relation is the one capability that has no inferred form (section 4.3).
- **Read-only `T&` parameters are three quarters of all reference parameters**; they become bare `T` (section 5),
  most of them text. `mut` receivers are the compiler's state structs, which become `&`, the ones never written bare.
- **Written `&q` fields exist only in std's iterators** (24), so the field-region inference has a small, known target:
  round 1 checks it rediscovers exactly those.
- **Traits and `any` are rare now** but are the GUI path (principle 5), so their receivers must keep saying whether
  they write (section 4.4).

## 2. The formal model

### 2.1 What stays from the model

Unchanged and relied on: the run-time model (model 1: scopes as arenas, blocks last-in-first-out, scope variables as
hidden arguments, a thread's part of a scope); invariants I1 (containment), I2 (exactness where something can be stored
through), I3 (one bumper), I4 (destructors once, at their scope's close); the terms `B`, `V`, `P` (run-time) and `D`,
sets, `?` (static-only, never built into, model 2.3); the order and Lemma O (model 2.2); FIT (model 3.1); CALL's
translation of a callee's obligations through its bindings (model 3.3); summaries over the call graph's strongly
connected components, callees first, to a fixed point (model 7.2, `scope.olang`'s `component`); early freeing as the
same check with finer terms (model 5).

What changes is **where a claim comes from**. Today a local's claim is its mark (`markTerm`: `Bare` its block, `Of(y)`
where `y` lives, `Return` the result scope), a result's is its signature (built or borrowed), a call's result lands
by O18a/O18c (`decide`, `landByObligations`) and a returned local moves by O26a (`decide`'s `flowRun`). After the
rework every one of these is a variable the solver fixes.

### 2.2 Region variables

A **class** is a region variable of one body. Classes are made for:

| what | its class stands for | today |
|---|---|---|
| each allocation site `s` (a constructor call, an enum case, an array, a literal not constant data, `$`/joins, `Array<T>(n)`, a lambda, a generator's frame) | where `s` is built | O6, O18a, `Plan.Built` |
| each local `x` holding or being a reference | where `x`'s referent lives (`at`) or its references (`refs`) | its mark, O25a, O25h |
| each local's own storage | where `x`'s storage is (frame, or an arena) | `stors`, O26a's move |
| each call's result | where the call's result lands: the callee's `R` bound here | O18a, O18c, E25 |
| each hidden variable `W` of a callee bound at a call | where the callee builds that site | new |

Fixed terms are the body's blocks, its scope variables (`V`: reference parameters, bare parameters holding references
(O4b), the result scope `R`, a constructor's instance, a destructor's closing scope, a lambda's captures), `P`, and the
static-only terms. A class is **liftable**: the solver may give it any run-time term at or above its **floor** - the
block where the site is evaluated, or the block declaring the local (a local lives at least to its block's end, since
it is visible there). A local's storage is liftable as O26a lifts it today; a parameter's storage, a for-in's copy and a
bare parameter's frame copy are not.

### 2.3 Constraints

An **edge** `a ⊒ b` says class or term `a` must outlive `b`. It is **whole** when the value of `a` itself (a reference
to the whole instance, the whole of its storage) is what is kept, and a **view** when a part of `a`'s storage is (a
slice, a reference to an inline field or element, a view a callee hands back). It is **exact** where something can be
stored through the slot (O25g, read from the inferred permission, 2.8): then `a ≡ b`.

| construct | edges |
|---|---|
| `x := e`, `e` existing at `t` | `x ≡ t` (O25a: `:=` takes `e`'s exact scope, unchanged) |
| `x := e` or `x T& = e`, `e` fresh at site `s` | `x ≡ s`; floor of `s` is `x`'s block |
| `x = e` into a reference local | `x ≡ term(e)` (O25b) |
| a value local copied from existing storage (`t := a[i]`) | `refs(t) ≡ refs(a)` (O25h: a copy keeps its references where its source's are) |
| a store into a field or element through a reference `r` (container field) | `term(e) ⊒ at(r)`, whole or view as `e` is; exact where `st` |
| a store into a part of a value local `x` | `term(e) ⊒ refs(x)`; exact where `st` |
| a store into a field with its own binding (2.6) | `term(e) ⊒ bind(base)[f]`, never exact (C2d) |
| a store into a global or anything reached from one | `term(e) ⊒ P` (O1b) |
| a slice, a borrow of an inline field, element or value-array field | the view's term is the base's storage class; its flows are **view** edges on it (E16a) |
| a borrow of a whole value local (`E12c`) | the borrow's term is the local's storage class; its flows are **whole** edges |
| an argument `a` for parameter `p` of `g` (variable `v`) | existing: `β(v) := term(a)`; fresh: `s ≡ β(v)`; split values by LEND (model 3.3) |
| a call's result | a class `ρ_c ≡ β(R_g)`; its uses bound it from below |
| each obligation `u ≥ w` of the callee (`Γ_g`), translated | `β(u) ⊒ β(w)`, exact where the obligation is, whole or view as the summary records |
| `return e` | `term(e) ⊒ R`, exact where `st`; a returned local's storage `σ_x ⊒ R` (O26a) |
| a lambda capturing `c` (closure site `s`) | `term(c) ⊒ s` (D16c: the closure lives no longer than what it captured), whole for a reference or a whole array, view for a slice |
| a constructor's argument stored in a container field | `term(a) ⊒ s`; exact where `st` (C2d) |
| a constructor's argument kept in a field with its own binding | `bind(s)[f] := term(a)`, `term(a) ⊒ s` (C2d) |
| a spawn's argument, capture, clause or target | `term ⊒ B(join)` (P2) |
| `yield e` | as `return e` of the generator's `Next` (D18b), against its element variable (4.2) |
| a callee may build into `β(v)` | `β(v)` must solve to a run-time term (O25e, O12, O23a) |

These are exactly the premises the judgment checks: every row is a FIT, a placement or a CALL of the model. To keep the
two in step by construction, the constraint walk is **the judge itself in a gathering mode** - the same walk,
`fit`/`build`/`markTerm` recording an edge where a class is involved instead of judging - as `scope.olang` already runs a
body quietly first to gather what its assigned locals are given (`lateGather`).

### 2.4 Solving one body

1. **Unify** every exact edge (union-find). A class unified with a fixed term takes it; with two different fixed terms,
   a relation between them is recorded - an obligation where both are relatable (`V`, `D`, `P`; O10b), an error
   where a block is one of them (O10d, which with liftable classes arises only from storage that cannot move: section 3).
2. **Propagate** whole edges to the least fixed point: a class's term is the join of its floor and of the terms of
   everything it must outlive. The join is taken in the order of model 2.2:
   - blocks lie on one chain (each encloses the uses that bound it), so their join is the outermost;
   - a block and a scope variable join at the scope variable (every `V` outlives every block, O10a);
   - anything joined with `P` is `P`;
   - two scope variables the body's obligations do not order join at a **hidden variable** `W` of the body, with the
     obligations `W ⊒ V(a)` and `W ⊒ V(b)`: the site is built where `W` says, and each caller binds `W` to a scope of
     its own outliving both arguments (one `W` per distinct set; its run-time word is passed only where the body builds
     there, `MayBuild`). This is region polymorphism (Tofte and Talpin) restricted to where it is needed: today such a
     site is written `x T&a`, which forces `V(a) ⊒ V(b)` on every caller; `W` forces nothing.
3. **Check view edges** against the solution: a view edge `a ⊒ b` must already hold. One that does not is O27 (2.5).
4. **Judge** the body with the solution as its claims (the model's section 3, today's code), recording its summary.

Termination: classes, terms and hidden variables are finite per body; every step only lengthens a class's term.

### 2.5 The no-extension rule (O27)

> A site is built in a scope that outlives the block evaluating it only because its whole value is kept there. A view
> of storage kept where the storage does not already live - past the loop turn or the block that built it, or past the
> function, through a `&` result - is a compile-time error naming a copy of what the view shows: `$x`, `x.Clone()`.

- **Why only whole flows lift.** A whole value kept longer is needed longer: building it there from the start is what
  a person writes (`x T&keep = ...`, O18c's landing) and costs nothing more. A view kept longer needs only the part it
  shows; lifting the storage would keep all of it, once per loop turn - memory growing with the number of turns, with
  no diagnostic and no fix to write. That is the leak which made whole-program region inference wrong here in
  2026-10 (HISTORY.md, "Scopes stop being variables": "region inference never fails, it just picks a longer region").
  O27 makes inference fail exactly there, with the fix a person would write.
- **The function's own body is a block like any other.** A `&` result that is a view of a local the function built
  (`return t[1:4]` with `t` made here, through a `String&` result) is O27: a caller keeping the result whole would
  otherwise lift the callee's whole `t`, every turn of its loop. A value result copies (T7b), so `fn f() String {
  ...; return t[1:4] }` is correct as written; under QCC a `&` result is for handing back an existing instance.
- **Through calls.** A callee's summary records, for each relation it adds between an argument and its result or
  another argument, whether it is a view of the argument's storage (Trim, Split, a slice returned). The caller's edge is
  then a view edge, so `k := buf.Trim(); keep.Push(k)` with `buf` made in the turn is O27 at the `Push`, as written by
  hand it would be today.
- **Tasks.** A spawn's whole arguments are built at the join's level (P2 today); a view of a turn's storage handed to a
  task is O27.

**Theorem (no worse than markers).** Let a program be accepted today. Delete its markers. Then either (a) it is
accepted, with every site built in a scope no longer-lived than today's and the same obligations or weaker; or (b) it
is refused by O27 at a view a marker had lifted storage for; or (c) by T22a for a function value whose type wrote a
relation (4.3); or (d) by a field whose inferred binding differs from its written `&q` (2.6).
*Sketch.* Today's claims satisfy every edge of 2.3 plus the markers' own equalities. Removing the markers' equalities
removes constraints, so the least solution of the rest exists and is pointwise no longer-lived; every whole edge holds by
construction; view edges held today only where a marker lifted the storage, which is (b). Callers see weaker
obligations, so the induction over the call graph (callees first) goes through. Peak memory is then no higher than
today's, and lower wherever a marker placed something longer than its uses needed (`x mut Exec&c` when `x` is not kept).

**Destructor timing** (the other 2026-10 objection: "a file handle closes whenever unification decided"). An instance
with a destructor is built in its class's solution, which is no shorter than the block declaring the local holding it
(2.2's floor) and no longer than where it is kept. So its destructor runs at the close of its declaring block, or of the
scope of what keeps it - no later than today, earlier only where a marker kept it beyond every use. To keep a guard
alive longer, declare it in the block that should hold it. The migration lists every destructor-bearing site whose scope
changed (section 5). A summary change in a callee (it starts keeping an argument) lengthens the caller's placement:
needed for soundness, and shown by `explain`.

### 2.6 Fields: the container's scope, or one of their own

A reference field (or one holding references) lives in its **container's** scope (O5, O20: today's bare field), or it
has a **binding of its own** per instance (today's field written `&q`: C2d, O23a - reads at the binding, a derived scope
`D` through a parameter, never built into where the binding is not known). The inference decides per field, over the
whole program:

1. Start with every field in its container's scope.
2. Judge the program. Collect each refused flow of a value read from a field `x.f` that would be accepted reading at the
   argument the instance was given (its binding is known at the read or derived, and outlives the slot).
3. Give each such field a binding of its own and judge the affected components again. A field is only ever promoted.
4. A promoted field that some function builds through where no binding is known (O23's unverifiable store, C2d's
   `BuildThroughUnknownScope`) is demoted back for good and the read in step 2 keeps its error (section 3, O20).

Promotions are bounded by the number of fields, so the loop ends; one or two rounds are expected. This is the type's
region parameters inferred (in the ML Kit's sense), static only: an instance carries its bindings in the checker, as
O23a's per-instance bindings are carried today, never at run time. Round 1 measures it against std's 24 written `&q`
fields (each should come out promoted, and nothing else).

### 2.7 Results, calls, function values and `any`

- **One result form.** A function whose result is or holds a reference has a result variable `R` (O13). A `return`
  of a fresh value builds it in `R`; one of existing storage at `t` is the obligation `t ⊒ R` (exact where `st`).
  Today's built result is the first, a borrowed one (`T&p`) the second with `t = V(p)`; O13c's derived-scope result is
  the second with `t = D(p, w)`; O14a-O14c are the second for function values, type variables and by-value parameters.
  O14's error ("a parameter's data returned through a built result") goes: there is nothing to have written wrongly. A
  caller binds `R` to the class of where the result lands, so `x := l.First(); keep.Push(x)` needs only that the list
  outlive `keep` - O13c's reading, now from the body for every function.
- **What a summary holds** (extending `scope.olang`'s `summary`): the body's hidden variables (`R`, each `W`, a bare
  parameter's storage variable, 2.10); its obligations, each marked exact or not and whole or view; what it may build
  into, keep, store and put (`Builds`, `Keeps`, `Stores`, `Puts`, as today); what each result may hand back of each
  argument (whole, view, or a derived scope; `ResBind`); the permission facts of 2.8; the storage types it may write
  (2.10). All only grow over a component's rounds; each is finite.
- **Direct calls** translate the callee's summary through the call's bindings (CALL, unchanged).
- **Generic instances** are judged per instance (G16), as today.
- **Function values** cannot carry a summary: a call through one sees only its type. A function type therefore carries
  a fixed contract - today's T22a rules, unchanged: a call through a value keeps nothing of its arguments beyond the
  call except in its result; a result written as a type variable may hand back an argument (O14b, the callback rule);
  `&` parameters may be written and built into, bare ones not. A function or lambda becomes a value only where its
  summary fits that contract: no obligation between its parameters, no hidden variable `W`, a result handing back an
  argument only through a type-variable result. Section 4.3 has what this costs.
- **`any`** calls go through the trait's method signature, with the same fixed contract as a function type, and the
  receiver's permission as the trait writes it (4.4). A method whose summary says more is not in a table (T32a,
  unchanged).
- **Externs and export fns.** An extern's signature is C's contract (X1a, unchecked): `&` parameters C may write, bare
  ones it does not, nothing kept. An export fn whose inferred summary has obligations stays an error (`exports()`).

### 2.8 Permission, inferred by origin

QCC removes `mut` from parameters, receivers and references. What the checker needs of permission is unchanged: what may
be written through, and `st` for exactness (O25g). It is inferred as scopes are - per level, fixed only where a
declaration says.

**Fixed levels.**

| place | permission |
|---|---|
| a bare parameter `p T` | its own storage the callee's (written only at the cost of a copy, 2.10); everything reached through its references, and every view of its storage, **read-only**, at every level |
| a `&` parameter `p T&` | writable at its top; its inner levels as its argument's (below) |
| constant data (text and array literals reaching what writes nothing, T25d), an immutable global and its reach | read-only |
| a mutable global (`G mut T`) | writable at its top |
| a fresh value (a constructor's instance, `$x`, a literal copied, `Array<T>(n)`) | writable at its top |

**Inferred levels.** Every other level is a permission variable: a reference level of a local's type (from the meet of
what it is given - read-only if any value given is), a result's (from the body's returns, summarized, read-only at a
call where the summary says it follows an argument that is), a fresh instance's reference field (a **permission
binding** fixed where it is constructed and carried with the instance as O23a carries scope bindings), a fresh array's
elements, a closure's captures, a generator's frame. A parameter's inner levels are as its argument's: the body's
summary records which levels it writes through, keeps writable, or stores read-only values into, and a call passing a
read-only level there is refused - T25c's generic-parameter rule ("as read-only as the argument") applied to every
parameter, since none writes its inner levels any more.

**Refused** (T25b, T25c, reworded in section 3): a write through a read-only level; a read-only value stored where its
level would become writable - an existing instance's field bound writable, an element of an existing writable
container, a global, a capture written through; a read-only value passed where the callee's summary writes through or
keeps that level writable. A written type declares writable levels, so `x Vec<String&> = t.Split(" ")` from a bare `t`
is refused and `x := t.Split(" ")` is the read-only-element array (T25c's rule today, kept).

**Methods of an instance with read-only bindings** are allowed exactly where their summaries write nothing through a
read-only-bound field: a map's key iterator made from a bare map advances (it writes its own plain fields) but cannot
write the map. So `for k in m.Keys()` works on a bare `m`, and `words := t.Split(" "); words.Sort()` sorts the array
(its slots) without writing the text.

```olang
fn firstWord(t String) String {
    words := t.Split(" ")          # a writable array of read-only views of t
    words.Sort()                   # writes the array's slots, not the text
    return words[0]                # a value result: handed over by pointer where nothing changes t, copied otherwise
}
```

**The three checks** (QCC, decided; worded in section 3):
- **D9d** - a `&` parameter the body never writes through (at any level), never passes to a `&` parameter whose summary
  writes or keeps, never keeps (stores its reference anywhere, hands out a writable view through a result) is an error
  naming `p T`. Handing out a view in a result is keeping: `fn (l List<T>&) Grab() T&` gives a writable element, `fn (l
  List<T>) First() T&` a read-only one - both legal, the author's choice, as `T&l` and `mut T&l` are today.
- **D9e** - a bare parameter, or a view of it, stored into an **existing** place (one reached through a `&` parameter, a
  global, a captured reference, an instance this function did not make) is an error naming `p T&` (share the caller's)
  or `p.Clone()` (keep a copy). Kept inside a value the function makes - its result, an instance it builds, a closure,
  a generator - it is not: that value holds it read-only (the permission binding), so the promise holds and nothing is
  copied. A bare parameter the function also writes is copied on entry (2.10), so a view of it kept anywhere beyond the
  call is D9e too: it would keep the copy.
- **D9f** - a write to a bare parameter's own storage that nothing reads afterwards (no read of the parameter, or the
  part written, on any later path; nothing keeping it) is an error naming `p T&` - the forgotten `&`. For a type with no
  reference form (a number, a `Bool`, a function value: no primitive references, T11) it names returning the value.

**Sound.** Permission is not memory safety by itself, but `st` is: an inferred read-only level is one through which
nothing is stored, so FIT asks only `⊒` of it (O25g). Every write is through a place whose level is solved, and every
way a read-only level could become writable - a store into an existing writable level, a pass to a body that writes it,
a written type - is refused; fresh values carry their bindings, and existing places keep the bindings they were made
with (no write can falsify one, as O23a's rule for scope bindings). It is T25c's argument, which already covered
read-only copies, generic parameters and by-value parameters, with the fixed levels of the table above in place of
written `mut`.

### 2.9 Blocks stay scopes, and tiny ones fold

A block is a scope (O2, the user, 2026-10-31): what it built that nothing outside keeps is freed at its close - by the
no-extension rule, a kept value was built where it is kept from the start, and a kept view is O27. **Folding**
(decided, mine): a block is folded into the nearest enclosing scope with no loop between them - no header, no close,
its memory freed when that scope closes - when (1) every site in it has a size known while compiling and their total is
at most 256 bytes (to be set by round 1's measurement of a header and a close against the memory held), (2) no call in
it builds into its scope (summaries: no callee result lands there with a size not known), and (3) nothing built in it
has a destructor (folding must not move a destructor). The guarantee reads: freed at the block's close, or for a folded
block at the enclosing scope's, never later and never by more than the bound per activation. A block nothing allocates
in costs nothing already (O2b's idle scopes).

### 2.10 Passing bare parameters

A bare parameter is the callee's value (D9). The compiler passes small ones in registers and the rest by pointer to the
argument's storage, and makes the copy only where it can be observed missing:

- **On the callee's entry**, where its body may write the parameter's own storage (D9b's `paramWritten`, now for every
  aggregate, not only a generic's run-time array).
- **At the call**, where something the call reaches may write storage of the parameter's type while it runs - a `&`
  argument of that type, a mutable global reaching it, a function value or an `any` (whose bodies are not known, so
  taken to write every type). The caller decides, since it knows the arguments, the lambdas written at the call
  included. A **storage-type write summary** per body gives it: the storage types a body may write, through any route,
  callees included (a declared type's storage is its base's, T29a; `Name(x)` names the same storage). It is
  `views.olang`'s summary of what a body may grow below its parameters, made general.
- **Once per outermost call.** An argument that is itself a bare parameter of the caller needs no new check: the
  caller's own caller established that nothing writes that storage for the whole of the caller's call, inner calls
  included. So a bare parameter passed down through layers is one pointer.
- **A view handed back** of a bare parameter's storage (Trim's result) must be of the caller's storage, so such a
  parameter is never copied on entry; a body that both hands back a view of it and may write storage of its type is
  refused (section 3), naming `p T&`. Such a parameter has a **storage variable** (2.7): where the argument's storage
  lives, bound at each call to the argument's storage term, which the result's obligation names.
- **Tasks.** A task runs beside its spawner, so a bare argument is copied at the spawn unless the join block and every
  task in it write no storage of its type (P8's happens-before edges make that the whole window).
- **Generators.** A generator's body runs at each `Next`, after its call has returned and while its caller runs, so
  nothing proves its bare arguments unwritten: they are copied into the generator's home, as a value array is today
  (D18b). D18e's walk made and finished in one place is the exception: where nothing in the loop writes storage of the
  argument's type, the argument is read where it is.

The evaluator copies every bare parameter on entry (value semantics). Since a pointer is passed only where the copy's
absence cannot be seen, the evaluator and the run time agree by construction, as T7b's returns agree today.

D9c's 128-byte cap goes: a large by-value parameter costs a pointer, and a copy only where the body writes it or the
caller cannot rule out a write. D9a's per-length instances (G29) stay for arguments of a known length that fit 128
bytes - the bound is now an instance bound, not an error; a longer or run-time length uses the one run-time-length
instance, where `a.Len()` is read at run time (decided, mine: G29's constant lengths are worth keeping for small arrays,
and the bound stops a length growing by value, D9c's other job).

### 2.11 Values guarantee their own copy

QCE allows a value array held by value inside a structure: a struct field `name String`, an element of `Array<String>`
or `Vec<String>`, a type argument `Map<String, V>`, an enum payload (T7a relaxed).

- **Layout.** Fixed storage stays as T7d lays it out (a declared length, in place). Any other value array is held as a
  run-time array local is today: its length beside a pointer to its elements, which live **where the container
  lives** (O6: "a nested slot's scope is never independent of its immediate container's") - a value local's block, an
  instance's scope, a Vec's record's scope, a map's. Such a struct is not plain data for C (X3a): an extern refuses it,
  as it refuses references.
- **Copies.** A store into such a slot copies the elements into the container's scope - in place where the length is
  the same (T11b), else into new storage there, the old let go of (O8d). Copying the containing value copies the
  elements into the target's scope (`b := a`, a struct passed by value and written, an element pushed). A read by value
  copies out (`x := v[i]` gives `x` its own text); a read by reference does not (`x String& = v[i]`). Moves inside the
  prelude (Vec's growth and swaps, Map's removals) move the length and pointer with `vacate()`, never the elements.
  The compiler elides a copy where neither side is written while both live (the write summary of 2.10, unobservable).
- **Scopes.** A view of a value-array part is a view of its container's storage (2.3): it lives where the container
  does, and kept beyond that it is O27. Storing into a value-array part through a place whose scope is not known
  (a set, a derived scope) is O12's error, since the copy must be built there.
- **`==`, Hash, `$`** compare, hash and render the elements (E10, as for every array). Reflection: `T.Size` counts the
  length and pointer, `f.Offset` the slot.
- **Early freeing.** A value-array part is sole by construction - nothing but views can name its storage - so a
  replaced field, a removed `Map<String, V>` key or a popped `Vec<String>` element is freed at its let-go wherever no
  view of it is in use (O8d condition 6). Value-keyed maps free their keys; `Map<String&, V>` could not.
- **`Map<String, V>`** keeps its own key text: `Put` of a new key copies it into the map's scope (an update or a
  lookup copies nothing: `Get(key K)` reads its bare key by pointer). `Map<String&, V>` shares the caller's text, which
  the `&` says. So the hole QCE found closes where the program asks:

```olang
m := Map<String, I64>()
k := $"abc"
m.Put(k, 1)              # the map's own copy of a new key
k[0] = 'x'
assert m.Has("abc")      # decided while compiling where m is a baked global (K2), at run time otherwise
```

### 2.12 Each old rule, and what replaces it

| rule | today | after the rework |
|---|---|---|
| O1, O1b, O2, O2a, O2b, O8-O8d | scopes, nesting, the program's scope, cost, reclaiming | unchanged; O2 gains folding (2.9) |
| O3 | scope variables: reference parameters, the result | kept, never written; plus hidden `W`s and bare parameters' storage variables |
| O4, O4a | what a marker means | gone: no markers |
| O4b | every reference parameter, and a bare one holding references, has a variable | kept |
| O5, O20 | a field lives with its container | kept: the default for every field (2.6) |
| O6, O7, O18-O18c | where a temporary is built, where a call lands | the solver (2.4): a site is built in its class's term |
| O9, O10, O10a | FIT and the order | kept: they judge the solution |
| O10b, O10c | obligations, discharged at calls | kept; computed by the same walk, with `W`s and view marks |
| O10d | a block cannot outlive a scope variable | kept as an order fact; its error only for storage that cannot move (section 3) |
| O11, O12, O13b | untraced; sets; merged bindings | kept |
| O13 | built or borrowed result | one form: `R` with obligations (2.7) |
| O13a, O13c | what a returned value carries | kept |
| O14, O14a-c | what a return may hand back | O14's error goes; the exceptions are the general case |
| O15, O16, C9a, C11 | destructors | kept; placement inferred (2.5) |
| O17, O17a, O17b | lending split values | kept (round 5 may replace them, 6.2) |
| O22, O23, O23a, C2d | derived scopes, `&q` fields | kept, for fields the inference gives a binding of their own (2.6) |
| O25, O25a-h | exactness | kept as the solver's equalities; "a local's type says where it lives" goes, `:=` unchanged |
| O26 | `&return` | gone: a local flowing into the return is in `R` (the solver; O26a) |
| O26a | a returned local lives in the result scope | the solver: a whole flow into the return |
| new O27 | | the no-extension rule (2.5) |
| E25 | scope arguments | gone: a call's result lands where its uses say |
| C2c, C2g | a constructor's instance scope and top level | kept |
| T22a | a function with obligations is no value | kept; function types can no longer write a relation (4.3) |
| T32a | an `any`'s table | kept |
| P2 | a task's arguments outlive the join | kept; whole values built at the join's level, views O27 |
| D18c | a generator's three element forms | inferred from its yields (4.2) |
| E11c | `Str` builds nothing where its receiver lives | kept |
| E16a | a slice borrows its base | kept; a slice is a view edge |
| T25b | permission written in reference types | inferred by origin and per level (2.8) |
| T25c | converting permission; read-only copies | kept as the general rule (2.8) |
| T25d | static literals | kept |
| D9 | `&` says whose instance, `mut` whether it may be written | `&` says it may be written (QCC) |
| D9a | by-value arrays: a run-time length an error | goes; G29 bounded by 128 bytes (2.10) |
| D9b | a generic's run-time array copied where written | generalized to every bare parameter (2.10) |
| D9c | 128-byte by-value parameters | goes |
| new D9d-D9f | | QCC's three checks (2.8) |
| T7a | an array inside a value is `&` unless fixed | relaxed: by value anywhere (2.11) |
| T7b, T7c, T7d | returns copy; known lengths; fixed storage | kept |
| E12, E12b, E12c | fits; arrays copied only into by-value parameters; borrows | E12c kept; E12b's 128-byte note goes |

## 3. Every error a user can still see

Wordings follow B11 (`path:line:col: error[RULE]: message`, a fix after the dash). `x`, `T` and the rest stand for the
program's own names and types.

| rule | when | message |
|---|---|---|
| O27 | a view of a turn's storage kept past the turn | `this keeps a view of 'buf', which this loop builds each turn, where it outlives the turn - keep a copy of what it shows: '$k' or 'k.Clone()'` |
| O27 | ... of a block's storage past the block | `this keeps a view of 'buf', built in this block, past its end - keep a copy: '$k'` |
| O27 | a `&` result viewing storage the function built | `this returns a view of 't', which this function builds - return the value ('fn f() String' copies it), or a copy: '$t[1:4]'` |
| O27 | a yield viewing storage made for one value | `this yields a view of 'v', built for this value - yield a copy: '$v'` |
| O27 | a task given a view of a turn's storage | `this hands a task a view of 'b', built in this loop turn, which ends before the join - hand it a copy: '$v'` |
| O27 | a view of a for-in's copy, or of a by-value element read, kept past the turn | `this keeps a view of 'x', this loop's copy of an element, past the turn - keep the element itself ('a[i]'), or a copy` |
| O10d | storage that cannot move (a parameter's own, a bare parameter's copy) kept where it does not live | `this keeps a view of 'p', this function's own copy, beyond the call - take it as 'p T&', or keep a copy: 'p.Clone()'` |
| O10c | a callee needs two existing storages in one scope, and they are in two | `'link' keeps what 'b' refers to in 'a''s instance, so they must live in one scope - here 'a' is a parameter's and 'b' this turn's view: pass a copy ('b.Clone()'), or values made for this call` |
| O25b | a reference local given storage of two scopes | `'r' refers to storage in two scopes - here, and at line 12 - a reference local names one place: use a second local, or copies` |
| O12 | building through a place whose scope is not known | `nothing new is built where this lives: it is 'a' or 'b', in two scopes - build in each branch: 'if c { a.next = N() } else { b.next = N() }'` |
| C2d, O23 | building or storing through a field with its own binding, not known here | `this builds through 'of', which keeps where its instance was given it, not known here - build in the function that made the instance` |
| O20 | a field read at its container's scope kept longer, where the field cannot have a binding of its own (2.6, step 4) | `'it.cur' lives where 'it' does, which closes first - keep a copy ('$x'), or keep what 'it' was made from` |
| O17, O17a | a split value lent to a callee storing through it, or held by reference | `this value's references live where its own storage does not (a copy of 'a[i]'), and the callee stores through it - work on the element itself, or on 't T& = a[i]'` (and O17a's two, unchanged) |
| T22a | a function whose summary relates its arguments made a value | `'link' keeps what one argument refers to in another, which a call through a function value cannot check - call it directly` |
| T22a | a lambda keeping an argument beyond the call | `this lambda keeps 'x' beyond the call, which a call through a function value cannot check - keep a copy instead` (unchanged) |
| T32a | an implementation saying more than its trait method | unchanged |
| E11c | a `Str` building where its receiver lives | unchanged |
| D9d | a `&` parameter never written or kept | `'p' is never written, handed where it may be written, or kept - take it as 'p T'` |
| D9e | a bare parameter kept in an existing place | `this keeps 'p' where the caller's other values can reach it, and a bare parameter is this function's own value - take it as 'p T&' to share the caller's, or keep a copy: 'p.Clone()'` |
| D9f | a dead write to a bare parameter | `this writes 'c', this function's own copy, and nothing reads it after - take it as 'c Circle&' to change the caller's` (a number: `... - return the new value instead`) |
| D9, 2.10 | a view of a bare parameter handed back while the body may write storage of its type | `this returns a view of 's', read where the caller holds it, and 'w' may write text while this runs - take 's String&'` |
| T25b | a write through a read-only level | `this writes through a view of 's', a bare parameter, which this function only reads - take 's String&', or write a copy of its own: 't := $s'` (constant data: `this writes text written in the program - write a copy: 't := $x'`; an immutable global: `'G' is immutable - write a copy, or declare it 'G mut T'`) |
| T25c | a read-only value passed where the callee writes or keeps it writable | `'Fill' writes through its parameter 't', and this is read-only (a view of 's', a bare parameter) - pass a copy of its own: '$x'` |
| T25c | a read-only value stored where it would become writable | `this stores a read-only view (of 's', a bare parameter) where it can be written through - store a copy: '$x' or 'x.Clone()'` |
| T25c | a written type over a read-only value | `this copies a read-only value, and a written type declares a writable one - declare it with ':=', or make one of its own: 'x.Clone()'` (today's, kept) |
| T7d | a run-time or other length into fixed storage | unchanged |
| X12 | an export fn whose inferred summary has obligations | unchanged (`ExportObligation`) |

**Errors that go**, with their reason: O3 `ScopeDecl`, O4a `UnknownScopeName`, O26 `ReturnScopeNone`, O12
`TagUnknownScope`, O25e `ScopeArgsDisagree`, E25's three (no markers, scope names or scope arguments); O14
`ReturnBorrowAsBuilt` (one result form); O26 `ReturnOwnStorage`, O10 `ScopeMayNotOutlive`, O25 `ReferenceNarrowed` and
`ReferenceNarrowedLocal`, O25c's two, O25h `ValueRefsOutlived`, O1b `GlobalHoldsShorter`, O20 `StoredRefOutlived`
for whole values, C2d's two `InstanceOutlives...`, P2's two (a whole value is built where it is kept; what is left is
O27); D18c's three (no written element scope); D9a's two and D9c `ParamTooLarge`; T7a's held-by-reference error;
`MutOnValueType`, `MutOnValueParam`, T25b's "drop the 'mut'" (no `mut` but on globals); eight of T25c's eleven fold into
the three above. A removed spelling is simply gone (principle 4): `&x` after a type, `f&x(`, `outlives`, `mut` before a
parameter's or a field's type are parse errors like any unknown form, with no diagnostic of their own.

## 4. What else the rework reaches

### 4.1 Early freeing (O8d, `compiler/free.olang`)

Its contract does not change: it reads the plans after the scope pass and judges again with a region term per read of a
candidate place (model 5.4). Hidden `W`s are scope variables to it, like `R`. The rework helps it: placements are as
short as uses allow, so less sits in long-lived scopes; value-array parts are sole by construction (2.11); and a bare
parameter read by pointer is a read, never a store, so it keeps nothing. Its gates (`OLANG_DEADREGIONS=1` over the
suite, the suite under `-sanitize`, `fuzz free`) run in every round.

### 4.2 Generators (D18, D18c)

The element form is inferred from the yields (decided, mine), choosing what never extends a fresh value past the walk:
- **per value** where no yield is existing storage - each value built in its `Next`'s result scope, reclaimed per turn
  (today's `Iterator<T>`);
- **borrowed from a `&` parameter `p`** where every yield is existing storage living at `p`'s referent and none is fresh
  - elements live as long as what `p` refers to (today's `Iterator<T&p>`, a `ViewGenerator`);
- **kept by its walk** otherwise - existing yields outlive the generator's home, fresh ones are built there (today's
  `Iterator<T&return>`, a `ViewGenerator`).

The form changes the call's type (`Generator` or `ViewGenerator`, T32a), read off the body as an inferred error set is,
and `explain` shows it. A bare parameter of a generator is copied into its home (2.10), so its elements live with the
walk; `fn words(t String&) Iterator<String&>` borrows the caller's text instead, and since that `&` only keeps `t` in
the generator (a value the call makes), a read-only argument is accepted and the generator holds it read-only (2.8).
D18e's elision and the walk dropped with its loop are unchanged.

### 4.3 Function types (T22, T22a)

A function type writes its parameters (`&` or bare), results and errors; it cannot write a relation between scopes,
since nothing can. So the contract of 2.7 is all a call through a value relies on, and a function whose inferred
summary relates its parameters (`link(a, b)` storing `b` in `a`) is no value - today it is one of a type saying `b N&a`
(T22, 2026-10-18). Measured: one such function type in compiler/, one in tests/. A bare parameter fits a `&` one in a
function type (the stronger promise), with an adapter where the hidden scopes passed differ (E31's). Open point 6.1.

### 4.4 `any` and traits (T30-T35)

A trait method has no body, so its receiver's permission must be written; `mut Next()` cannot stay. Decided (mine): a
trait method that may write its receiver is written with `&` before its name, the receiver clause's `&` with the
receiver left implicit - `type Iterator<T ? E> trait { &Next() T ? E, Exhausted }` - and one without may not. An
implementation satisfies it whatever its own receiver (a bare one is the stronger promise). A call through an `any`
takes the receiver as the trait says, so `for c in w.children { c.Draw() }` over a bare `w` works where `Draw` is
written without `&`. Writing every trait method as possibly writing would refuse that loop - the GUI shape principle 5
names - so the spelling is worth its one character. Generic calls use the instance's own method, as today.

### 4.5 Tasks (P1, P2)

Unchanged in meaning: what a task is handed lasts until its join. Whole values are built at the join's level by the
solver; views of a turn's storage are O27; bare arguments are copied at the spawn unless nothing in the join block
writes their storage type (2.10). Races stay the program's (`-race`).

### 4.6 C interop (X1-X22)

- An extern's `&` parameter is one C may write, a bare array or text one C may not (a `const` pointer); a bare plain
  struct is passed by value as C passes it (X11). C's promises are unchecked (X1a). Emit marks bare pointer parameters
  `readonly nocapture` for LLVM, which it could not do before.
- Header imports and `olang bindgen` map `const T *` to a bare parameter and `T *` to `&` (they map it to `Array<T>`
  and `mut Array<T>&` today); a pointer to a struct is `T&` either way, a `const` one included, since a bare struct is
  C's by-value struct (decided, mine).
- A struct holding a run-time value array is no plain data (2.11). Extern types stay outside section 8 (X10).

### 4.7 The compile-time evaluator and `interpret` (K1, B3e)

Compile-time decisions run before the scope pass (lowering's stand-in places everything in the program's scope), so
inference changes nothing there. `interpret` runs main placed by the plans and follows whatever the solver placed,
passing hidden `W`s as it passes every scope variable. The evaluator always copies a bare parameter on entry and a
value-array part on every store and copy, which agrees with the run time because the run time's omitted copies are
unobservable (2.10, 2.11). Permission is the checker's only. The checklist's evaluator tests (CLAUDE.md, step 3): a
baked global built through functions whose scopes are inferred; a top-level assert over a bare parameter written in
the callee (the caller's value unchanged); the `Map<String, I64>` key copy of 2.11, decided while compiling.

### 4.8 Tools and smaller rules

- `olang explain`, `doc` and the hover show what the inference found under each signature: its obligations as today
  (`[b outlives a]`, `return` the result scope), a hidden scope (`# builds where 'a' and 'b' both live`), what a result
  hands back (`# result: a view of 't', read-only`), the permission facts (`# writes 'p'`, `# keeps 's' read-only`), a
  field's own binding (`# 'of': where its instance was given it`), the copies made at a call (2.10).
- `-memory` (B18) also lists the copies the compiler makes for aliasing (2.10), so a cost the code does not show is
  shown somewhere (open point 6.2).
- `olang format` drops nothing (it only moves whitespace); the old spellings simply stop parsing.
- `become` (S21): an argument that would be storage of a closing scope is lifted to the result scope where it is a
  whole value, O27 where it is a view.
- M19g (`views.olang`): unchanged; `View()` has a bare receiver and gives a read-only view, `ViewMut()` a `&` one.
- E31b, S4d, D13c-D13e, D18e: unchanged.
- Arrays gain `Clone()` in the prelude (decided, mine), so O27's and D9e's fix is one spelling for every container.

## 5. Migration

### 5.1 What `olang fix` rewrites mechanically

Two new tools join `fix.olang`'s table, in its two phases (B17):

| tool | phase | what it does |
|---|---|---|
| `tools/scope_migrate.olang` | text | deletes a scope marker after a type (`Node&l` to `Node&`, `T&return` to `T&`), scope arguments (`f&x(` to `f(`, by E25's adjacency), `outlives` items and a contract block they empty; idempotent |
| `tools/param_migrate.olang` | text, then driven | **text**: records every reference parameter and receiver written without `mut` (the read-only ones), then deletes `mut` before every reference type but at the top of a global, and turns a trait method's `mut` into `&` (4.4). **Driven**: rewrites each recorded read-only parameter to bare `p T` unless the compiler's summary says its body keeps it in an existing place (D9e); then runs the compiler and rewrites every D9d (`&` never written or kept) to bare, until none is left (a change can make a caller's `&` unwritten); lists every other new error for a person |

So `p mut T&` becomes `p T&`, `fn (s mut Scoper&)` becomes `fn (s Scoper&)` (and `fn (s Scoper)` where D9d says it is
never written), read-only `p T&` becomes `p T`, read-only `T&` locals and type arguments lose nothing (they are
inferred), and `x T&y = e` becomes `x T& = e`. What D9a, D9c and T7a forced (`a Array<F64>&` for a long array, `p Big&`
for a big struct) was read-only and becomes bare, which is what was meant.

### 5.2 What needs a person

- O27's errors: a copy (`$x`, `x.Clone()`) or a restructure; round 1 counts them.
- T22a's: a function relating its arguments made a value (one in compiler/).
- D9e's that cascade: a caller's bare parameter handed to a callee that keeps it in an existing place - `&` up the
  chain, or a copy.
- T25c's: read-only data (constant text, an immutable global, a bare parameter's view) handed to a `&` parameter that
  writes or keeps it in an existing place - `$x`.
- D9f's: a write to a by-value parameter today's code never reads again - most likely a bug the check found.
- Destructor-bearing sites whose inferred scope is shorter than their marker said: the tool lists each (it compares the
  old plan with the new) for a person to confirm or to move the declaration outward.
- QCE's choices: which fields and keys should be held by value (`name String`, `Map<String, V>`): a guarantee costs a
  copy, so it is the author's. Decided (mine): std moves the maps and records whose text a caller could change under
  them (json's objects, flags' names, csv's headers, the prelude's text-keyed helpers); the compiler keeps `String&`
  views of source text it never writes.

### 5.3 The corpus, checks and seed

- `tests/`, `std/`, `compiler/`, `tools/`, `bench/`, `fuzz/` migrated by `olang fix`, the rest by hand; old tests are
  kept where the language still means them (the user's rule), migrated where it does not.
- `checks/cases`: each of the 238 expecting a section-8 or permission error is classified by a script: still refused
  (its expected text reworded), now accepted (it becomes a `check: run` case, read back after an arena churn and run
  under `-sanitize`, so the use-after-free shape it guarded is still exercised), or about a removed spelling (one
  parse-error case per spelling is kept; the rest go with the rule they tested). New cases for O27, D9d-D9f, the field
  inference, `W`s, value arrays and the trait spelling.
- `fuzz/scopegen.olang` writes marker-free programs (its `&x` and scope-argument choices become plain declarations),
  so the scope fuzzer tests the solver.
- Goldens (`diag.txt`, tokens, trees, layout) are recaptured where the round changes them.
- **Bootstrap order.** A round changing what the compiler's own source may say is built in two steps: the compiler
  learns the new meaning behind a switch (built from the old seed, its old source unchanged), the source is migrated
  and built by it with the switch on, the default flips, the seed is regenerated from the compiler built by itself
  (stage 2 == stage 3), and the switch is deleted. QAQ's rule holds: the seed is regenerated only where the round needs
  it (rounds 2 and 4).

## 6. The build plan

Every round on branch `wt-rework`, with a hand-off note; master is merged in at each round's start; `make quick` while
building, one `make verify` at the end. A round is verified on its own; the branch merges once, after round 4 and the
bulk review. Code rule for every round: at most three nested blocks, four on a special occasion.

**Round 1: scopes inferred beside the markers, and measured** (opus, xhigh: new section-8 design).
- `compiler/scope.olang`: classes and the gathering walk (the judge's `fit`, `build`, `markTerm` recording edges), the
  solver (union-find, whole-edge propagation, joins to hidden `W`s, view-edge checks - O27), the judge re-run on the
  solution; the field inference's outer loop; summaries extended (`W`s, view marks, what results hand back); the
  current path kept beside it, chosen by `OLANG_SCOPES=infer`, which reads every written marker, scope argument and
  `outlives` as bare.
- `compiler/typed.olang` (`ScopeVar.Hidden`, a body's final variables after the pass), `compiler/types.olang` (calls
  read a callee's variables from its body, not only from its signature), `compiler/lower.olang`, `compiler/emit.olang`,
  `compiler/interp.olang` (passing `W`s), `compiler/free.olang` (`W`s as scope variables), `compiler/msgs.olang`
  (O27, T22a and O10c reworded), `compiler/explain.olang`, `doc.olang`, `session.olang` (the inferred facts shown).
- Verify: `make verify` unchanged; then under `OLANG_SCOPES=infer` - every test file, std's tests, the checks' run
  cases, the compiler building itself (the fixed point), the suite under `-sanitize`, `OLANG_DEADREGIONS=1`, the scope
  fuzzer and `fuzz free`.
- Measure: peak RSS of the self-build and of every `bench/` program, infer against today; the programs refused under
  infer, by cause (O27 by shape, T22a, field inference); the fields promoted against std's 24 written `&q`; the `W`s
  made; destructor sites placed shorter; the scope pass's time (`OLANG_TIMES`); the fold bound (2.9) from a header's
  and a close's cost. The round's report decides round 4's migration effort and brings the conditional open points.

**Round 2: `&` means may write** (opus, high). Revised by the user, 2026-10-31 ("read-only is said by a value"): every `&`
a signature shows is writable and shared, and read-only is always said by a value. A result `T&` hands back only storage
reached through a `&` parameter, a global or a shared field; a view into a bare parameter returned as `T&` is an error
naming the value result `T`, and a value result is handed over by pointer where the caller only reads it and nothing
changes the source (a copy only of what may change otherwise). Views of a bare parameter stay read-only inside the body
and never leave it as references; functions like `Split`, `Trim`, `First` take `&` or return values. So 2.8's
`firstWord` returning `words[0]` through `String&` is that error: it is `fn firstWord(t String) String`, or takes
`t String&`. Round 1 keeps today's permissions meanwhile (KeptPerm, section 9).
- `compiler/parse.olang` and `types.olang` (under `OLANG_PARAMS=new`: `mut` before a reference type accepted and
  ignored, one reference type per referent, bare parameters of any size), `compiler/check.olang` (permission by origin
  and per level, 2.8; D9d-D9f; D9a's run-time error and D9c off; T22's bare-fits-`&`), `compiler/scope.olang` (`st`
  from the inferred permission; bare parameters' storage variables; summaries' permission facts), `compiler/views.olang`
  (its growth summary generalized to storage-type writes, 2.10), `compiler/lower.olang` and `emit.olang` (bare
  aggregates by pointer, entry copies, the caller's aliasing copies, `readonly nocapture`), `compiler/eval.olang`
  (entry copies), `compiler/bindgen.olang` (`const T *`), `compiler/msgs.olang`, `tools/param_migrate.olang`,
  `compiler/fix.olang`; then std/, compiler/, tests/, checks/ migrated, the default flipped, the seed regenerated.
- Verify: `make verify`; the bootstrap fixed point; `bench/` against round 1 (no regression from pointer passing; every
  aliasing copy listed by `-memory` and counted). Measure: former read-only parameters left `&` because they are kept,
  and the calls that then need a copy (open point 6.3); the aliasing copies (6.2).

**Round 3: values guarantee their own copy** (opus, high).
- `compiler/check.olang` (T7a relaxed, G29 bounded by 128 bytes, the run-time-length instance), `compiler/types.olang`
  (layout of value-array parts), `compiler/lower.olang` and `emit.olang` (copies into a container's scope, deep copies
  of values holding value arrays, moves by `vacate()`), `compiler/scope.olang` (a value-array part's storage is its
  container's), `compiler/free.olang` (value-array parts as sole places), `compiler/eval.olang` and `interp.olang` (deep
  copies), `compiler/definit.olang` (an empty array as such a field's zero), `compiler/cabi.olang` (no plain data),
  `std/prelude/map.olang`, `vec.olang`, `array.olang` (`Clone()`), and std's maps and records named in 5.2.
- Verify: `make verify`; the key-copy run case and its evaluator twin; `bench/` (text-keyed maps, regex, json) and
  `-memory` on a long-running map of text keys (QF's shape) staying flat.

**Round 4: the old spellings removed, and the migration** (opus, high; sonnet, medium for the corpus and checks).
- `compiler/parse.olang`, `ast.olang`, `names.olang`, `check.olang`, `typed.olang` (`Mark` reduced to a reference or
  not), `types.olang`, `scope.olang` (the old path deleted), `fmt.olang`, `unparse.olang`, `msgs.olang` (old messages
  deleted), `explain.olang`, `doc.olang`; `tools/scope_migrate.olang`, `compiler/fix.olang`, `tools/README.md`;
  `SPEC.md` (section 8 restated in the model's form, as QAE asked: the run-time model, terms, FIT, the solver, O27,
  results, fields, permission; the grammar without markers, scope arguments, `outlives` or `mut` but on globals; T22a,
  T23-T25d, D9-D9f, T7a, E12-E12c, D18c, T32a, P2, C2c-C2g, method signatures); `checks/cases` classified (5.3); the
  goldens; the seed; `docs/scope-model.md` marked superseded where this note differs, `docs/memory.md`; CLAUDE.md and
  HISTORY.md.
- Verify: `make verify`; `make bootstrap` from the new seed; the `fix` scenario taking a program from before the rework
  to the rework's language and running it.

**Then a bulk review** (opus, xhigh for the solver and O27, high for the rest) over all four rounds: soundness of the
solution's judgment, the field inference, `W`s, permission inference and its laundering points, pointer passing and its
aliasing summary, value-array copies; beside it the scope fuzzer, `fuzz free`, the suite under `-sanitize`, the
dead-region evaluator and the differential fuzzer. Then the merge.

**Round 5, optional** (after the merge, its own soundness review): the model's 6.3 - two scope variables per reference
parameter (its referent's and what that holds), inferred like `W`s, which turns O17's lending conditions into ordinary
obligations and removes O17's error. It changes no program that compiles; it accepts more.

### 6.1 Load

Round 1 touches `scope.olang` almost alone and can run beside other batches; rounds 2-4 rewrite `check.olang`,
`parse.olang` and every signature in the repository, so they run when no other batch edits those files (CLAUDE.md's
"touches-everything changes"). Each round's full verify is one at a time.

## 7. Decided here (details, mine - to object to)

1. The constraint walk is the judge's own walk in a gathering mode, so the two cannot disagree (2.3).
2. A site whose bounds are two unordered scope variables gets a hidden variable `W`, not an obligation between them
   (2.4): it forces nothing on callers, at a word's cost where it is built into.
3. O27 applies to the function's own body: a `&` result viewing a local is refused, a value result copies (2.5).
4. A field gets a binding of its own only where a read needs it and no build through it does; promotion only (2.6).
5. Permission is per level and inferred everywhere but at parameters' top levels, constant data and globals; fresh
   instances carry permission bindings as they carry scope bindings (2.8).
6. D9e refuses keeping a bare parameter in an existing place only; kept in a value the function makes, it is held
   read-only (2.8).
7. Aliasing copies are the caller's decision, once per outermost call, from a storage-type write summary (2.10).
8. Generators copy bare arguments into their home; `&` borrows (4.2). The element form is inferred so that a fresh
   value is never extended past the walk.
9. G29's per-length instances stay up to 128 bytes; longer or run-time lengths use one instance (2.10).
10. Folding: at most 256 bytes of compile-time-known sites, no loop between, nothing building there by a call, no
    destructor; the bound set by measurement (2.9).
11. Trait methods that may write their receiver are written `&Name()` (4.4).
12. `const T *` imports bare; a struct pointer `T&`, `const` or not (4.6).
13. Arrays gain `Clone()` (4.8).
14. std holds by value the text a caller could change under it; the compiler keeps views of its source (5.2).

## 8. Open points

Only what a person must decide; each with a recommendation. The rest is section 7.

1. **Function values relating their arguments.** Today a function type can write `b N&a`, so `link(a, b)` (storing `b`
   in `a`'s instance) can be a function value. With no scope syntax, no function type can say it, so such a function
   is no value (4.3) - a capability removed, measured at one function type in compiler/ and one in tests/. The other
   way is to infer a function type's relations from every function value that flows into it (a whole-program closure
   analysis, with function types gaining hidden relations), which is costly and fragile under separate compilation.
   **Recommended: accept the loss**; a callback relating its arguments is called directly or restructured.
2. **Aliasing copies against principle 2.** QCC decided passing by pointer is unobservable, so the compiler copies a
   bare argument where a write to its storage type is possible during the call (2.10). Where a call passes an opaque
   function value or an `any`, that copy is a cost the code does not show. The alternatives: refuse such calls (an
   error naming a copy or `&`, false alarms in most generic code), or let a bare argument be read where it is even then
   (observable only by a program writing the same storage through a callback while passing it by value). **Recommended:
   keep the copies as decided, list each in `-memory` and the hover, and bring round 2's count**; refusing or reading
   in place is the fallback if the count is not small.
3. **The read-only stored reference** (QCC: "accepted; revisit if code wants it"). With permission bindings on fresh
   values (2.8) the loss shrinks to references stored into *existing* structures, which can only be writable. Round 2
   counts where code wanted more: former read-only parameters left `&` only because they are kept in an existing
   place, and the calls that then need a copy of constant or read-only data. **Recommended: nothing now; decide with
   round 2's numbers** - if they are many, a way for a struct field to stay read-only for every holder is the
   question to bring.
4. **Field bindings with no fix to write.** If round 1 finds real code where a field must be read at its argument's
   scope and is also built through where no binding is known (2.6, step 4), the program has no spelling left to say
   which (today it writes `&q` and builds elsewhere). **Recommended: nothing now; bring the cases round 1 finds**, each
   with the restructure it needs; a run-time binding (the instance carrying its field's scope, a word per instance) is
   the fallback if they recur. The user (2026-10-31): no run-time binding; round 1 lists the cases - section 9.6.
5. **Function values handing back an argument's storage** (found by round 1). 2.7's contract also makes a function
   whose result is a view of its argument no value - `fn first(a Array<I64>&) Array<I64>&a`, made a value today of a
   type writing `Array<I64>&a`; measured at two checks scenarios, none in std or compiler/. **Recommended: with round
   2's rule** (a `T&` result hands back only storage reached through a `&` parameter, a global or a shared field), read
   a function type's `T&` result as borrowed from its `&` parameters - one fixed convention, no syntax - so such a
   function fits; until then, call it directly.

## 9. Round 1, measured

Built on `wt-rework` behind `OLANG_SCOPES=infer` (2026-10-31); without the switch the compiler is today's (9.2). `OLANG_SCOPESTATS=1` prints what the inference did (or, given a directory, writes it there per build);
`OLANG_INFERDUMP=1` lists every lift with its line.

### 9.1 What was built, and where it departs from sections 2 and 6

- **The switch** (`source.InferScopes`): the parser reads every written marker as bare (`&x`, `&return`), a scope
  argument `f&x()` as a plain call and an `outlives` chain as nothing; the module key holds the mode, so objects of the
  two never mix. check reads a local named only by an erased marker as read (D3b).
- **The solver is the judge, iterated** (decision 7.1 taken literally; 2.3-2.4's union-find not built). Each component
  is judged quietly; every refusal that a longer placement would meet proposes one - a failed FIT lengthens the claim of
  the local the value comes from (through `:=`, match bindings, held subjects and tuples, conditionals' and matches'
  arms), a callee obligation failing at a call lengthens the argument's local or lands the call's result there (then
  existing storage, as O18c's landing), a task's argument and a part of a call's result likewise - each proposal the
  join on 2.4's order (outermost block; a block and a scope variable at the variable; anything and `P` at `P`). Lifts
  only grow and terms are finite, so the rounds end; then the unchanged judgment runs on the result and reports. Value
  locals borrowed whole move their own storage too (a run-time array's elements into an outer block, by
  `plan.Stored`/`lower.storageOf`); nothing is lifted into a generator's per-Next result scope (D18b); a result that may
  hold a destructor is never landed longer for what its callee requires (2.5's destructor timing).
- **`W` was not needed.** A join of two scope variables no obligation orders keeps today's behaviour (the first, with
  an obligation between them - what `x T&a` forces) and is counted: **0** in std, the corpus, the checks' run cases and
  the compiler. So no hidden parameter was built (lowering, emit, interp and free.olang unchanged).
- **One result form** (2.7): existing storage returned is the obligation `t ⊒ R`. A result written borrowed (`T&p`)
  is read as built for section 8 but keeps its written permission at calls (`types.KeptPerm`; check reads the erased
  name from the source span) - a stand-in until round 2's permission rule, which replaces it.
- **O27** (SPEC, provisional, under the switch only): summaries mark a relation that keeps a view (`rel.View`); a view
  kept past its storage's block or returned through `&` is `ViewKept`/`ViewReturned`, never lifted.
- **O20 under the inference**: a part (a field, an element) of what a local's constructor built, kept longer, never
  lifts the local - its field gets a binding of its own, or the read is refused (`PartKept`: "'p.last' lives where 'p'
  does, which closes first - keep a copy ('$p.last'), or keep what 'p' was made from"). Lifting would build the whole
  instance longer, every loop turn (9.6's `Later`).
- **The field inference** (2.6) as an outer loop over dry whole-program judgings (at most 16 rounds). Promotion
  is asked (a) by a read out of a field, or an O17 split lend, refused in a converged judging; (b) in every judging, by
  an instance required to live as long as what it holds - a bare field storing its argument exactly (`st`), `R ⊒ V(a)` -
  at a constructor's call, or passed up from a constructor building it into its own field or a function returning it:
  met by the field's binding, never by landing the instance longer (regex's `machine`, `List.Iter()`'s `Iter`); (c) by a
  callee's value result that must outlive something, refused in a converged judging (`Map.Iter()`). A field is given the
  binding of the parameter its initializer reads (else the constructor's one reference parameter); a field the
  constructor builds (`m mut machine& = machine(...)`) lives with its instance and is never promoted. **Give-back**: a
  promoted field built through, stored into, claimed or read through by a refusal where its binding is not known
  (O23a, C2d's unknown-binding errors, a failed fit or obligation at a derived term) goes back to its container's scope
  for good.
- **`st` closes a hole under the switch**: a read-only reference to a structure holding writable references is exact
  where it is stored (9.7). Without the switch it is unchanged (closing it there refuses seven places in compiler/).
- **Not built**: folding (2.9) - counted only (9.4); D18c's element forms (a generator yielding borrowed elements is
  refused, 9.5); `explain`/`doc`/hover showing inferred scopes; the scope fuzzer's own inference cases.

### 9.2 Today's path unchanged

Without the switch: the IR of all 15 `bench/` programs is byte-identical to master's (31a1a8b, built from its own
sources), and the compiler built by both is the same binary (`-quick`). The one change on this path is 9.7's second
hole: a program that read freed storage is refused.

### 9.3 Under the switch

| run | result |
|---|---|
| std's tests (54 files) | 54 pass |
| tests/ (37 files) | 36 pass with four lines of shared.olang changed by hand (below); generators.olang refused (D18c) |
| the compiler building itself | 0 errors; the inferred compiler rebuilds itself to the same binary (fixed point) |
| compiler/'s and tools/' test files (82) | 79 pass; 3 fail only because the front end they test reads the switch too, on snippets that write markers (scope.olang's plans and C2d/P1g tests, generic.olang's function types, olang.olang's explain) - built under the switch and run without it, all pass |
| std's and tests/' files under `-sanitize` (90, shared.olang as above) | 90 pass |
| checks/checks.olang | 66 of its 70 tests pass; the four: the cases (below), `-i` running a program the build refused (it is accepted now), the import-alias scenario (T22a, 9.5) and generators (D18c) |
| the 102 must-fail cases that compile, run under `-sanitize` | 101 clean; `c2downfieldread` stops at a null it reads on purpose (`h0.kid!`), before anything scopes decide (T2b) |
| the checks' 255 run cases interpreted, `OLANG_DEADREGIONS=1` | 253 as today (status and output); the 2 others refused (T22a, 9.5) |
| scope fuzzer (200 programs, 1,046 scenarios) | 0 findings |
| `fuzz free` (120 programs, 911 scenarios, 1,494 places freed early) | 0 findings, as today |

Of checks/cases' must-fail programs, 102 compile under the switch, 22 more fail only on an unread local (D3b - the
error they were written for is gone), and 50 fail with another rule's message: 20 T25c (the permission readings round 2
replaces), 9 D18c or T22a, 2 O27, 19 another section-8 rule saying the same. Of the run cases and scenarios, only
9.5's fail: `t22sharedscopegeneric`, `vec20byname`, n2 (T22a) and `views` (D18c).

shared.olang's four lines: two `words.Push(t)` of a slice of a turn's text kept past the turn (O27 - `$t`), a test
asserting a signature's marker spelling (`rdPick(a RdNode&, b RdNode&a) RdNode&a`, which no longer exists), and
`t22sLink` passed as a function value (T22a, open point 1).

### 9.4 Memory and time

- **The compiler itself**, one cold `-quick` build of compiler/ by each compiler, peak RSS: today's compiler 1.902 GB;
  the compiler built under the inference, doing the same build, 1.920 GB (+0.9%); the build under the switch 2.158 GB,
  its scope phase 1.26 s -> 6.43 s (`OLANG_TIMES`, a loaded machine): the field loop judges the whole program again per
  round. In the compiler the inference lifts 242 locals (11 with their own storage, 2 for a part of them kept - claims
  on existing storage, nothing built longer), lands 69 calls and needs no `W`.
- **bench/**: all 50 rows built under the switch give today's output; peak RSS within 276 KB of today's in every row
  (3.674 GB against 3.675 GB summed; fannkuch 1.95 -> 1.72 MB).
- **Folding (2.9)** would reach 2,233 of the 4,099 blocks something is built in, in the compiler (plain blocks:
  branches, arms, `{ }`); not built, and the bound not measured - the plan holds no site sizes yet.

### 9.5 Programs refused, by cause

- **O27** (a view kept past its storage): shared.olang's two `words.Push(t)` (9.3) and two checks cases that expected
  another rule there.
- **T22a, function values**: `t22sLink` (tests/), and the checks' `t22sharedscope*`, `vec20byname` and `vecalias`'s n2 -
  the last two a function returning a view of its argument (`fn first(a Array<I64>&) Array<I64>&a`) made a value. 2.7's
  contract refuses those too: no function type can say that its result is its argument's, so this is open point 1's
  loss widened from "relating two arguments" to "handing back an argument's storage" - section 8, point 5.
- **D18c**: generators yielding borrowed elements (`Iterator<String&t>`, `Iterator<T&return>`) - tests/generators.olang,
  the checks' `views` scenario and its D18c cases; their element forms are read from the written marker today.
- **Tests of a marker's spelling**: shared.olang's `RdSig`, generic.olang's "function types carry what their markers
  say", olang.olang's explain test of a signature's obligations.
- **O20**: nothing in the repository; 9.6's `Later` is the shape.

### 9.6 Fields

Promoted where some program needed it, of std's 23 written `&q` fields: **14** - `MapIter` (3), `MapKeyIter` (2),
`MapValueIter` (2), std/list's `Iter` (2), regex's `machine` (2), `dfa` (2), `searcher` (1). Needed by no program
measured, so left in their containers' scope (each compiles there): csv's `Rows.text`, deque's `Iter.d`, `ArrayIter`,
`ReversedIter`, `CycleIter`, `LineIter.text`, regex's `parser.t` and `Match.t`, utf8's `RuneIter.t` (9). Promoted with
no `&q` written: the prelude's `IndexIter`, `ReversedIndexIter`, `CycleIndexIter`, json's `ObItemsIter` and four of
the corpus's types (these hold read-only references to structures of writable ones, which `st` now makes exact). The
compiler's own build promotes 15 fields - `MapIter`'s and `MapKeyIter`'s, and `Eval` (4), unparse's `writer` (3),
`printer`, `DtorWalk`, definit's `Walker` - after 34 given back on the way.

**Fields round 1 cannot place** (open point 4 - the user: no run-time binding; list them). None in std, the corpus or
the compiler is refused for it. A field cannot be given a binding where its initializer reads no parameter and the
constructor has none or several reference parameters - it is set after construction: 15 such fields in compiler/ of
declarations a refusal once asked about (emit's `Emitter` 8 and `fnEm` 3, such as `tagAt String& = ""`, load's
`Loader` 3, lsp's `worker` 1) and a checks case's `Node.next`, all compiling in their containers' scope. The shape
that is refused:

```
type Later struct(a String&, b String&) {
    x String&a = a
    y String&b = b
    last String&a = ""          # set by a method, to a view of what 'a' names
}
fn (p mut Later&) take() { p.last = p.x[0:1] }
fn main() {
    kept := Vec<String&>()
    for _ in range 3 {
        p mut Later& = Later("hello", "world")
        p.take()
        kept.Push(p.last)       # O20: 'p.last' lives where 'p' does, which closes first
    }
}
```

Today `last String&a` says where it lives. With `last String& = a` the inference gives it `a`'s binding and the
program compiles; as written, nothing can say it, and the fix is `kept.Push($p.last)`.

### 9.7 Found on the way

- **A hole on master** (pre-existing, section 8): a read-only reference to a structure holding writable references,
  stored in a bare field, lets a callee build through an element read out of it at the container's shorter scope -
  `checks/cases/derivedcopybuild.olang` with its `&ns` deleted runs into freed storage under `-sanitize` on master:

  ```
  type View struct(ns Array<mut Node&>&) {
      at Array<mut Node&>& = ns
  }
  fn grow(x mut Node&) { x.next = Node(x.v + 100) }
  fn visit(w View&) {
      x := w.at[0]
      grow(x)                   # builds where w's instance lives, which closes before the node's
  }
  fn work(a Array<mut Node&>&) { visit(View(a)) }
  ```

  `storeThrough` called a read-only reference not exact whatever it reached. Under the switch it is exact where what it
  reaches holds writable references; on master it is left (seven refusals in compiler/ would follow) for round 2, whose
  permission rule replaces this reading anyway.
- **A second hole, fixed in both paths**: a lambda capturing an instance built through the instance's `&p` field -
  inside the lambda the instance's bindings are not tracked, and the store fell to the scope pass's one gap ("a
  temporary stored where its slot's scope is not known here"), which nothing reported: the new node lived in the frame
  and was read after it closed (`checks/cases/c2dcapturebuild.olang`, now C2d's `BuildThroughUnknownScope`; found
  because the inference promoted the field of `strstorelocal.olang`). section 8's gaps now stop a build as the
  checker's, lowering's and emission's do. bench's IR and the compiler's binary are unchanged by it.
- **Inference placing less than a marker did**: a reference local holding a constructor's instance whose field is
  returned (`h mut Holder& = Holder(a, b); return h.x`, called 2M times) takes 82 MB today - the instance outlives the
  call - and 1.8 MB inferred, the instance in the frame.

### 9.8 What this decides for round 4

- **std and compiler/ migrate mechanically.** Under the switch both compile with every marker read as bare and run as
  before, so round 4's tool only deletes spellings there; what needs a person is the corpus's four lines (9.3), the
  borrowed-element generators (until 9.1's D18c forms are inferred), and the function values of 9.5.
- **The checks are mostly a reclassification**: of today's must-fail cases, 102 compile under the switch (each run
  under `-sanitize` clean - 9.3) and 22 more fail only on an unread local, so they become run cases or go where
  they test a marker; 50 more fail with another rule's message, most of them T25c's permission readings (round 2) and
  D18c's.
- **Two holes go with round 2**: the `st` reading of read-only references (9.7) is the permission rule's to replace,
  and KeptPerm with it.
- **Left for later rounds**: a part kept through a callee - a constructor reading its argument's field
  (`checks/cases/c2downfieldread.olang`) - still lifts the whole local, where O20 should refuse or promote (one case);
  the field loop's cost (cache the judgings of components no promotion touches); folding; inferred scopes shown by
  `explain`, `doc` and hover.

## 10. Round 2, as far as built

Built on `wt-rework` behind `OLANG_PARAMS=new` (`source.NewParams`, in the module key, beside round 1's switch);
without it the compiler is today's (10.3). Not flipped: std is part migrated (10.4), compiler/ not (10.5).

### 10.1 What was built

- **Spelling.** A written `&` is writable everywhere (`generic.writtenRef`); `mut` before a reference is read and
  ignored, so old and new spellings both parse while the corpus moves (the grammar change waits for the flip). A trait
  method that may write its receiver is written `&Name()` (parse). A variadic's elements are read-only references.
- **A bare parameter is passed by pointer** (2.10) where it is a struct or an array, text included
  (`generic.BareRef`): its signature's type is a read-only reference written bare, so the caller lends its argument as
  it lends one to a read-only reference today (E12c - an lvalue in place, a temporary where the parameter's scope is),
  section 8 sees a reference parameter with a scope variable of its own (2.10's storage variable), and lowering, emit,
  the evaluator and `interpret` needed nothing. Numbers, enums, function values and a type variable's binding stay by
  value; an extern's and an export fn's struct keep C's by-value convention (X11). Lambdas' written parameters and
  function types are wrapped alike, so a function fits its own type. Constructors' parameters are not (a pun field
  takes its parameter's type, which would become a reference): they stay by value, a view of one kept in the instance
  is refused by section 8 as today - `&` there (10.6).
- **Read through as the value it names.** A bare parameter so passed is marked (`check.bareLocals`) and, where its
  type holds writable references, a read-only copy at every level (T25c's `roCopies`, deep under the switch). A
  read-only reference parameter follows its argument in an instance as T25c's generic rule always said (`roByArg`),
  so `At`, `First` and the walks give their element as writable as the collection they are called on.
- **The copy on entry** (2.10, D9b generalized). A body that writes a bare parameter's own storage - assigns it or a
  part (names, syntactically: `load.BareWritten`), or lends it or a part where it may be written (the checker:
  `wantCopy`, after which the program is checked again, as R1a does when a set grows) - gets a hidden parameter and a
  value local of the parameter's name initialized from it (`typed.Stmt.Let` before the body; `check.bareByPointer`).
  Never for a generator's (its walk holds the parameter). `-memory` lists each (`FILE:LINE: copied on entry: p T`).
- **The three checks.** D9d (`&` never written, passed on writably, stored or handed out - `refSettle` over the call
  graph; not for `?&`, `any`, extern and destructor types, type variables, externs, export fns, and never for a
  generic's parameters, since which `match T` arm writes differs per program); D9e is section 8's refusal of a kept
  view (O26/O17, worded as today); D9f (names: a write to a bare parameter nothing reads after). T25d's constant data
  handed to a `&` parameter names `$t` or `.Clone()`. New wordings: `ReadOnlyHere` with the note `NoteBareParam`.
- **Permission bindings, coarse** (2.8): an instance a constructor builds from read-only arguments is a read-only copy
  (Rule P - `argCtor`, `roCallCopy`); a written reference local takes read-only from its value; a for-in's borrowed
  collection and a membership test's operand are as read-only as what they read; a read-only copy lent to a `&`
  parameter whose body writes only its own plain parts is allowed (`lendLater`, settled with D9d).
- **`Array.Clone()`** in the prelude (a value array of its own), named by the new diagnostics.
- **`tools/param_migrate.olang`**: a text phase (`mut T&` to `T&`, a read-only `&` parameter bare unless `?&`, `any`,
  a function type, a variadic or marker-named; a trait's `mut Name(` to `&Name(`; a global's `mut` kept; an extern's
  or export fn's only for text and arrays) and a driven phase (up to 60 rounds over the compiler's diagnostics: a note
  "is a bare parameter" makes the parameter `&`, D9d makes it bare unless pinned, T25d gives `$`/`.Clone()`, O26 on a
  call's result makes that call's bare arguments' parameters `&`). Not yet in `olang fix`'s table (it is for the flip).

### 10.2 Decided here (mine, to object to)

1. **Every bare array passes by pointer, numbers' included** - no bare parameter makes G29's instances per length.
   2.10 kept them for arrays of at most 128 bytes; but old `xs Array<I64>&` and old `xs Array<I64>` both migrate to
   `xs Array<I64>`, and keeping G29 made every function taking bytes one instance per literal length a program passes
   (`w.Write("...")`). A length is still known where an array is made; a function's asserts on `a.Len()` run where they
   are called (contracts and S18c decide what they can).
2. **Constructors' parameters stay by value** (10.1); a constructor keeping a view of its parameter takes it `&`.
3. **D9d never judges a generic's parameters** (as S3 judges no generic's body).
4. **Split and Lines keep `&` receivers** (their result's elements are views of the text, and a fresh array holding
   read-only views has no permission level to say so - 10.6); `Trim`, `TrimStart`, `TrimEnd` stay views for now:
   giving a value copied in the turn broke old-mode code storing the trimmed text in a longer-lived map
   (checks.olang), so the source keeps today's form until the flip, when the rule (a view of a bare parameter returned
   as `T&` is an error naming the value result) and the "handed over by pointer" result land together.
5. **A written bare parameter's copy is found by the checker and the program checked again** (10.1) rather than
   predicted from names' syntax alone: a method with a `&` receiver called on it, or an argument lent where it may be
   written, is only known with types. One more attempt per program that has such a body.

### 10.3 Today's path

Without the switch the compiler checks as before; `make quick` passes (10.7). Two pre-existing bugs found and fixed on
the way, both reachable without the switch: B7a's test keys were kept from one attempt to the next, so a program
checked twice (R1a) reported every named test twice; and names resolved the base of a part assigned (`wk.G = v`)
as a bare value once D9f's walk looked at targets (introduced and fixed here).

### 10.4 std under the switch

`build/r2/cycle.sh`-style runs: std copied, migrated by the tool (text phase 43 files; driven phase converges in two
or three rounds), then every std test file and prelude test file checked and run under the switch.

| | files | tests |
|---|---|---|
| compile and pass | 19 of 40 | 106, all passing |
| refused | 21 of 40 | ~190 distinct errors |

The refusals by cause (distinct lines): T25c read-only here or read-only copy lent (~85) - nearly all one cause,
10.6; containers keyed or filled by read-only text (`Map<String&, V>` given a literal or a view: `$` copies, which
the tool writes); C pointers (`CVoid?&`) given a bare buffer (X22 - the tool does not move those to `&` yet); a few
D9d by-hand cases where the tool's rounds cascade (a `&` added for one caller, then unused); the `Str`/`Eq` receivers
(E11c, E10a) where what they call takes `&`.

### 10.5 compiler/ under the switch

The text phase alone over a copy of compiler/ (67 files changed) leaves **1,904 errors**: D9d ~600 (functions whose
`c mut Checker&`, `s mut Scoper&` receivers only read - the tool makes them bare mechanically), T25c ~830 (what those
bare receivers then reach through their references - the same cause as std's, 10.6), section 8 ~140 (O17, O10c: a
receiver now passed by pointer that was by value), and 50 E35 (a `!` on what std's migrated signatures no longer make
fallible). The driven phase was not run over compiler/ (each round checks the compiler, ~2 s, and the rounds cascade
through 10.6's cause); the self-build, bench and the seed under the switch are therefore not measured.

### 10.6 What is missing: per-level permission (2.8's inferred levels)

The cause behind most refusals left is one: **a fresh container cannot hold read-only references**. Every written `&`
is writable at every level, so `Vec<String&>`, `Map<String&, V>` and `Array<Node&>` hold writable references; a value
read through a bare parameter, constant data or an immutable global is read-only; and the only read-only level the
checker can give a fresh value is all of it (a read-only copy - T25c's granularity), which also refuses the
container's own growth (`Push` writes through the record). 2.8 describes the fix: every inferred level a permission
variable - a local's type argument read-only where a read-only value is stored into it, a result's level following
the argument it came from. Built, Split, Clone, ToVec, Map/Filter, a map keyed by literals and the compiler's tables of
views all migrate as written; without it each needs a `&` cascade or a copy. **This is the next piece of round 2**,
before the compiler can migrate.

Also not built: function types' `T&` results read as borrowed from their `&` parameters (open point 5), "not a value"
reasons beyond today's, the caller-side copy of 2.10 (a bare argument read in place while the same call writes the
same storage through another argument, a function value or an `any` - observable, not unsound; open point 2), the
"handed over by pointer" value results, `KeptPerm`'s replacement and the `st` hole (they need the flip's permission
reading; under round 1's switch alone they are as section 9 left them), the scope phase's field loop cost (9.8), SPEC,
`olang fix`'s table, the flip, the seed.

### 10.7 Measured

- Value semantics hold: a bare struct written in the callee is the callee's (`moved(a)` leaves `a`), built, under
  `interpret`, and in a global the evaluator bakes with a top-level assert decided while compiling.
- Copies on entry in std's own code under the switch: one (`StringBuilder.ToString`, which lends its record to a `&`
  `ToArray` - a by-hand D9d left by the tool).
- Check time, std/prelude/tests/text.olang: 28 ms without the switch, 102 ms with it (the extra attempt the copy on
  entry asks for, and D9d's settling).

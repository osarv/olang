# A writable reference field pins its instance (for decision)

**Decided 2026-11-23 (the user: "Yes, build this"), built on wt-fieldscopes.** Found tracing why the compiler's lower
and emit phases grow from 2.5 to 4.3 GB on a cold self-build. Option B is written out in full below ("Option B in
full"); what was built - O23b at the declaration's grain rather than per instance, then (wt-o23bi, 2026-11-26) B.1's
per-instance equality for instances held in elements - and what it measured are in HISTORY.md (2026-11-23, "a shared
field has a binding of its own"; 2026-11-26, "O23b per instance") and SPEC's C2d, O28 and O23b.

## What holds the memory

`explain compiler/lower.olang Lowerer.LowerKey` says both "lw outlives return" and "return outlives lw": a caller must
place each lowered function where the `Lowerer` lives, so every function's MIR is kept until lowering ends. Two
statements of `Lowerer.lowerAs` cause it:

1. `b := lw.Bodies[id]`. `Vec<mut typed.Body&>.At` holds its result exactly to its receiver's scope (O25g: a
   writable reference to storage holding references). The local `b` is kept where the result goes (O26a), so the call's
   result was bound there and the callee's exactness asked the vector's scope to be the result's. That is more than
   §8 needs: the local can name the element where the vector lives, which outlives the result, and only "lw outlives
   return" follows. Fixed on branch `wt-lwplace-exactlocal` (scope.olang: `bindResult`, `callValue`, `letMoved`; a reference
   result only - HISTORY, 2026-11-23), validated by tests/heldexact and checks' o25gheld* cases. With item 2 left, it
   changes nothing measurable here.
2. `ln mut lowering& = lowering(lw, b, lw.P.T, f)`. `lowering` holds `L mut Lowerer&` and `T mut types.Table&`, bare
   fields. A bare field lives in the instance scope, and where something can be stored through it the instance must
   live exactly where its referent does (C2d, O25g; the constructor's summary says "I outlives L" and "L outlives I").
   So every `lowering` - with the `mir.Fn` it holds by value, which `lowerAs` returns - lives as long as the `Lowerer`.
   `emit`'s `fnEm(E mut Emitter&, F mir.Fn&, ...)` is the same shape: each function's emitter lives as long as the
   `Emitter`, and the `mir.Fn` it reads must live that long too.

Item 2 follows from the rules. The exactness is needed. A method of `lowering` reads `ln.L` at the receiver's scope
(O20). If the instance lived in a shorter scope than the `Lowerer`, a method could store into the `Lowerer` something
built in that shorter scope. The compiler's code cannot avoid this short of not keeping the output in the helper.
`lowering`'s hundreds of methods would then have to take the `mir.Fn` as a parameter, and `fnEm`'s likewise.

## Question 1: where does a writable reference field's referent live?

A struct that keeps a writable reference to long-lived shared state (a context, a table, an arena owner) beside its own
short-lived work is the usual shape of a pass, a parser, a builder or a GUI handler. Today its instance lives as long as
the shared state.

- **A (default, in effect): keep C2d/O25g as they are.** Such a helper lives where its shared state does. A program
  keeps its per-item output out of it: the output is passed to each method, or built by the caller and handed in.
  Nothing changes in the language. Here, lower.olang and emit.olang are restructured that way (large, mechanical).
- **B: give such a field a binding of its own.** C2d's "binding of its own" (O28, read at a derived scope through
  O23a) today goes only to a field kept longer than its instance. B also gives one to a field something can be stored
  through, whenever being exact would make the instance live longer than its other uses need. The instance is then
  placed by its uses (`ln` in `lowerAs`'s result scope, or its frame). Building through the field goes to the field's
  own binding: callers that know the construction pass it as a hidden scope argument, as they do for O23a. Where a
  binding is not known (an instance read out of a collection), the scope is found from the referent's address at run
  time (O29). Cost: hidden scope arguments on such methods, and a run-time lookup only where no caller knows the binding.
- **C: scope parameters in struct types.** Each reference field has a scope variable in the struct's type, inferred and
  never written, carried wherever the type goes, like Rust's lifetime parameters but inferred. There is no run-time
  cost and no lookup. It is the largest change: types gain scope arguments, and generics, `any`, function types, the
  scope records and the evaluator all carry them.

**Recommendation: B.** It reuses the field bindings and derived scopes §8 already has, so it is a change of one rule in
the inference and leaves the language as it is (principle 4). It frees the per-item storage of every pass-shaped
helper, not only the compiler's (principle 1, "free when we can"). The run-time lookup it can fall back on is O29's,
which already exists for the same reason. Before B is built, measure how often that fallback fires on the compiler, oann
and the corpus. C is the clean form if B's fallback turns out common.

## Option B in full

Nothing below is built. Section numbers are SPEC's §8 rules. Two scopes are named throughout: **I**, where an instance
lives (its instance scope, C2c), and **V**, where the referent of one of its reference fields lives.

### B.1 The rule

**Which fields.** A *shared field*: a reference field of a constructor-bearing struct that holds what a reference
parameter of its constructor was given (a bare pun such as `lowering`'s `L`, or a field initialized from the parameter),
where something can be stored through it (O25g: `L mut Lowerer&`, the `Lowerer` holding references). A read-only
field, or a writable one to plain data (`mut Array<F32>&`), is not one: it only has to outlive I, and is not pinned
today.

**What changes.** Today C2d asks of the argument stored in a shared field that it live *exactly* where the instance
does: I = V. Under B the field instead gets a **binding of its own** (O28, O23a) - its tag is V, the scope the argument
lives in - and C2d asks only that V outlive I. The exactness O25g needs is kept, but moved from the instance to the field:
existing storage stored through the field must live exactly in V (O25c), and what is built through it is built in V
(E12c). The instance is then placed by its other uses, as any value is (O28): `ln` in `lowerAs` goes where its result is
put.

**When.** The field inference (`scope.inferFields`, O28's "binding of its own, decided over the whole program") already
promotes a declaration's fields where a quiet judging finds a refusal that needs it. B adds one reason to promote: an
instance the C2d equality lifted above the scope its other uses need. A declaration no placement gains from keeps its
fields in the instance scope, so a program that gains nothing gets the same code as today (no hidden arguments).

**What a read is.** Where the instance is named, the field reads at V:
- a local the function built (or initialized from a call's result carrying the binding, O13c, or a `for ... in`'s
  element, S9a): V is that binding, known while compiling;
- a parameter `p` (a method's receiver included): the **derived scope** D(p, L) - "where the argument for `p` bound
  `L`" - which behaves as one of the function's scope variables (O23a). A relation between D(p, L) and another scope is
  an obligation every caller discharges with the binding it knows (O22, O25f, O10c).

**What callers pass.** A function that builds into D(p, L) - directly, or by passing `p` or `p.L` on to a callee that does
- takes it as a hidden scope parameter after its type's (O23a, as built 2026-11-09: `typed.Plan.DerivedP`,
`VarKind.Derived`). A direct call passes the binding it knows, or its own derived scope passed on. A call that knows
none - through a function value or an `any`, a task's callee, the runtime running a destructor (O16), a lambda's,
generator's or `export fn`'s body - passes none, and the body finds V while the program runs from the address of the
referent it builds through (O29, `__olang_scope_or`). Only builds are found at run time; every judgment about existing
storage stays at compile time (O29's last sentence).

**The one new rule, O23b (an instance leaving its named paths).** O23 reads a field reached through an unnamed path -
an element, a field of another instance, a global, an `any` - at its container's scope, and today that is exact for a
shared field, because I = V. B keeps it exact: storing an instance with a promoted shared field, a copy of it, or a
reference to it into such a place (a field, an element, a payload, a global, an `any`, a function value's capture that is
not followed, T22c) asks that its V be exactly its I - an equality, placed by lifting I to V (O28) or refused with
C2d's error. For an instance that is a parameter, the equality is D(p, L) = p's scope, a derived obligation its callers
discharge (O22). So a `Vec<Pass>` of handlers, a widget in `Vec<any Widget&>`, an instance in a global behave exactly
as today; B relaxes only instances held by locals, parameters and results.

### B.2 Why it is sound

What §8 needs of a shared field, whatever I is:

1. **The field never outlives its referent**: V outlives I. Kept (C2d).
2. **What is built through it lives where its referent does**: in V, not I - else it is stored into the `Lowerer` from a
   scope that closes first. Under B the field's tag is V, so E12c builds there: a scope passed or found from the
   referent's own address, which lies in V.
3. **Existing storage stored through it lives exactly where its referent does**: exactly V (O25g, O25c). Under B the
   comparison is against V (or D(p, L), discharged by every caller), not against I.
4. **A reference read out of it is tagged where it really is**: V. Under B, `x := ln.L` takes V exactly (O25a).

Today's rule gets 2-4 by tagging the field with I and making I = V. That equality is two facts: "V outlives I" (1) and
"I outlives V" - in `explain`'s words for `lowering`'s constructor, "L outlives I" and "I outlives L". Once the tag is V,
nothing in 2-4 refers to I, so "I outlives V" protects nothing: it is the over-approximation, and it is the only thing B
drops. Its one remaining use is O23's container-scope reading, which O23b keeps exact.

**Every instance B relaxes is reachable only through named paths.** A value is reached through a local, a parameter, a
call's result, a slot (field, element, payload), a global, a capture, a task's argument or an `any`/function value.
Locals, results and `for ... in` elements carry the binding (O23a, O13c); a parameter's is passed or found; every slot,
global, `any` and unfollowed capture is a store O23b equates; a lambda reads a local where it is made (D16c) and finds
builds at run time; a task's arguments are judged at the spawn as a call's (P2) and its body finds builds (O29).

Case by case:
- **Storing through the field** (`ln.L.Gaps.Push(g)`, `ln.L.last = x`): 2 and 3 above, against V or D(ln, L).
- **Reading it back**: 4; a result handed back from the field lives where D resolves (O13c, second bullet).
- **Repointing the field** (`ln.L = other`): held to the binding, exactly (O23a's last sentence, O25h) - `other` must live
  where every reader believes the field points.
- **Returning the struct**: a value carries V (O13c); V a block of the returning function is O13a's error, as today. A
  reference into the instance returned (`return ln.F`) puts the instance in the result scope, and V must outlive that.
- **Methods on the receiver**: read at D(receiver, L), passed down the call chain; `lowering`'s methods calling each other
  pass it on unchanged.
- **Lambdas and tasks**: a lambda capturing `ln` reads it where it is made (D16c); its body takes no hidden scopes and
  finds V for builds (O29). A task is judged at its spawn; its callee finds V. Neither stores existing storage on a
  guess: a store whose V is not known while compiling is refused, as today.
- **Generics**: whether a field is shared depends on its type (O25g), so it is decided per instantiation - a
  `Pass<mut Graph&>` may be promoted where a `Pass<mut Array<F32>&>` is not shared at all. Generic bodies are
  monomorphized per instance already, each with its own plan.
- **The compile-time evaluator** (K1, `eval.olang`): it runs the lowered MIR, which already holds the hidden scope
  arguments and `ScopeOr`, so it gets B's semantics with no change; its arenas give every allocation a generation, so a
  read of storage whose scope closed stops the evaluation (`WhyClosed`) - a run-time oracle for every case B relaxes.

**B accepts a superset, never placing anything later.** Today's placement (I = V everywhere) satisfies every constraint
B states, since B only replaces C2d's equality by its first half plus O23b's equality at unnamed paths. The inference
takes the least placement all uses allow (O28), so under B an instance lives at most as long as today, and a program
accepted today is accepted.

### B.3 Where the run-time lookup happens, and what it costs

Nothing is stored per instance (O29): a struct's size and layout are unchanged. The costs, all per call or per
allocation, none per operation (PRINCIPLES 2):
- **A hidden scope argument** on each function that builds into D(p, L) or passes it on: one pointer in a register per
  call, as a reference parameter's scope is passed today (O4b).
- **A null test per build into D(p, L)** (`__olang_scope_or`): one compare and branch beside an arena allocation that
  is already paid.
- **A lookup only where the caller passed none**: `__olang_scope_of`, the chunk header found from the aligned address
  (a mask and a few loads; a table search only for allocations over 128 KB). Storage on a stack is found as the program's
  scope, so a referent held in a stack slot through such a call has its builds kept to the program's end: never a
  dangling reference, possibly a longer life (fnvalues.md 11.1's shape).

**In the compiler.** `lowerAs` builds `ln` as a local, so V is known (the binding of `lw`, `lowerAs`'s own receiver
scope); all 434 methods of `lowering` are called directly and pass it on - no lookup. `emit.writeBody` builds `fe` the
same way; `fnEm`'s 181 methods likewise. Lookups can happen only inside lambdas capturing `ln` or `fe` that build
through `L`, `T` or `E` and are not followed into their callee (T22c): lower.olang writes 25 lambdas, emit.olang 8, most
emitting into the instance's own `F`, which is not a build through the field. Neither file spawns tasks.

**In oann-style code.** 50 oann structs hold a `mut X&`; those over a referent holding references (`Descent`,
`GpuAdamW`, `Projector` over `mut graph.Graph<T>&`, `Mirror` over `mut gdev.Device&`, `Passing` over `mut Edges&`) are
B's, those over arrays of numbers (`slot`, `Batch`, `batchRun`) are not pinned today. A lookup needs an allocation
through the field from a body no caller passed the scope to (a rule called through `any`, a lambda); the settle and
training loops are pinned allocation-free (`assert not f.Allocates`), so they never look up.

To be measured before anything is built (the recommendation's condition): `OLANG_SCOPESTATS` counts of builds placed
`Found` and run-time lookups taken, on the self-build, oann's `make test` and the corpus, with and without B.

### B.4 Worked examples

**`lower.lowering`** (lowerAs, with item 1's fix from `wt-lwplace-exactlocal` beside it):

| | today | under B |
|---|---|---|
| `lowering(lw, b, lw.P.T, f)` asks | I = scope(lw), I = scope(Table) | scope(lw) outlives I, scope(Table) outlives I |
| `ln` (scratch, the `mir.Fn` it holds) lives in | the `Lowerer`'s scope | `lowerAs`'s result scope (`return ln.F`) |
| `LowerKey`'s summary | "lw outlives return", "return outlives lw" | "lw outlives return" |
| `f mir.Fn& = e.Lw.LowerKey(k)` in `Emitter.function` | kept until Analyze returns | freed when `function` returns |
| `fnEm(e, f, k)` in `writeBody` | `fe` in the `Emitter`'s scope, and `f` must outlive it | `fe` in `writeBody`'s frame |

So each function's MIR and both helpers' scratch are reclaimed per function instead of per build. Another statement of
`lowerAs` (a plan copied from `lw` into `ln`, say) could still equate I with V; `explain Lowerer.LowerKey` names any such
equality left, and the cure there is ordinary (copy it, or keep it out of the helper).

**Built through, accepted and safe.** Under today's rule `p` lives where `c` does; under B in `run`'s frame. Had the
exactness simply been dropped with the field still tagged I, `$i` would be built in `run`'s frame and pushed into `c`
- a dangling reference after `run` returns. Under B it is built in V, the scope `run`'s caller passes for D(p, C):

```
type Ctx struct() {
    names Vec<String&> = Vec<String&>()
}
type Pass struct(C mut Ctx&) {
    C
}
fn (p mut Pass&) note(i I64) { p.C.names.Push($i) }
fn run(c mut Ctx&, i I64) {
    p := Pass(c)
    p.note(i)
}
```

**Must still be refused** (refused today, O10c at `p.link(h.n)`, checked 2026-11-23). `h` is a by-value parameter with a
destructor, so its storage stays in `attach`'s frame (O28), and `link` stores it through the field:

```
type Node struct() {
    next mut Node?& = null
}
type Pass struct(C mut Node&) {
    C
}
fn (p mut Pass&) link(x mut Node&) { p.C.next = x }

drops mut I64 = 0

type Held unique struct() {
    n := Node()
} destruct { drops += 1 }

fn attach(root mut Node&, h Held) {
    p := Pass(root)
    p.link(h.n)
}
```

`link`'s obligation is "x exactly D(p, C)"; at the call D(p, C) is `root`'s scope, a scope variable of `attach`, and
`h.n` lives in its frame, so the call is refused with the same error. Dropping the exactness without B would have
compared `h.n` with I - `attach`'s frame, where `p` would live - and accepted a `root.next` that dangles once `attach`
returns. That is the difference between B and weakening the rule.

**Kept as today** (O23b). `hook` reaches the instance through an element it did not build; today `explain hook` says
"x outlives ps", "ps outlives x" (checked 2026-11-23), and under B the same, because the instance pushed into `ps` has
V = I:

```
fn hook(ps Vec<Pass>&, x mut Node&) { ps[0].C.next = x }
```

### B.5 What would change

**SPEC.**
- C2d: the bare-pun bullet and the paragraph "An argument the instance stores in an instance-scoped field ... be exactly
  it when something can be stored through the argument": a shared field the inference promotes keeps the argument's own
  scope, exact for what is stored through it, and the instance need only be outlived by it.
- O28's constructor-field bullet: the second reason for a binding of its own (an instance lifted by the equality).
- O23b, new: the equality at unnamed paths. O23 gains a sentence: for a promoted shared field, the container's scope is
  exact (O23b).
- O25g's list of rules asking only outliving, and O25h's "a field viewing its constructor argument's referent", reworded
  to cover bare puns.
- O23a, O29, O13c unchanged: they already cover "a field written `&p`, or a bare one".

**Checker** (scope.olang). `promoteDecl` gains the lift reason: in the quiet judging, a C2d equality (`scope.fit`'s
exact obligation for a constructor argument `storeThrough` admits) that raised an instance's placement records its
declaration in `wantDecl`. The stores O23b names record the V = I equality. Lowering and emit need nothing new: derived
scopes, hidden arguments and `ScopeOr` exist. `explain`, `doc` and hover print the new summaries.

**Tests.**
- `checks/cases`, run cases read back after an arena churn: the `Pass`/`Ctx` loop above (builds through the field
  survive the helper's scope); the same through a method called by an `any`, a function value, a lambda and a task (the
  lookup path, O29); a repointed shared field (as `o25gfieldreassign`, a bare pun over a referent holding references);
  a returned reference into the helper (the `lowerAs` shape); a helper with a destructor reading the field (as
  `o25gfieldreassigndtor`); a generic helper instantiated with a shared and a non-shared referent.
- `checks/cases`, failing cases naming their diagnostic: `attach` above (O10c); an instance stored into a `Vec` while
  its referent is a parameter of a different scope (O23b, C2d's error); repointing the field to a shorter-lived
  parameter's referent (O23a).
- `explain` goldens: `Lowerer.LowerKey` with "lw outlives return" alone; `hook` unchanged.
- Each run case under `OLANG_EVALUATE=1` (`interp@FILE`), and in `scopesan` (run-time scope checks) and `scopefuzz`
  (new scenarios: helpers with shared fields built in inner blocks and loop turns).
- Memory: `-memory -check` on the run cases (the helper reclaimed with its block), and the self-build's lower+emit peak
  (`OLANG_TIMES`), expected back near 2.5 GB; the self-build fixed point.

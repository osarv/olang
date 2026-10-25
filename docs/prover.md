# The prover: a design note

**History only (2026-10-25): the prover is removed from the plans** (the user's decision). Contracts are now
requirements checked on entry in every build, failing with `ArgumentError.INVALID` (SPEC D17), and `checked` is gone;
nothing below is planned. The note is kept as the record of what was weighed.

Status: written 2026-10-24 for the user's review. Nothing here is built. Contracts themselves are built (SPEC D17-D17g):
what the compile-time evaluator decides - requirements at calls whose arguments it computes, guarantees at calls it
runs - and the rest unchecked unless the caller writes `checked`, which is the "neither" of section 0. It proposes how the compiler decides contract conditions it cannot decide by running them, and what
it decides first. Section 10 holds the direction questions.

Sources: the contract decisions of 2026-10-24 (`.claude/memory/decisions.md`, "CONTRACTS ..."); `direction.md`,
"Contracts and proving"; SPEC E6a, E6c, E8a, E15a, E16, E26a, S16d, S18c, K1, K1a, O10b, B3i; `compiler/DESIGN.md`
1.7 and 1.8. Outside work is cited in section 11. `CheckError` is QAI's name for what was `BuiltinError`.

## 0. Summary

- **The rule does not move.** Every condition is decided as **proved**, **refuted** or **neither**. Proved needs no
  check, even under `checked`. Refuted is a compile-time error. Neither stays as it is today: unchecked, or checked at
  run time where the caller wrote `checked`. A stronger prover only moves conditions out of "neither", so what a
  program does never depends on how good the prover is.
- **Two things must be pinned down before building.** First, what "refuted" means (section 1.3). I recommend:
  - a requirement, an `assert` or an `unreachable` is refuted only when it fails **on every run that reaches it**;
  - a guarantee is refuted by **one** input meeting the requirements, confirmed by running the function while
    compiling.

  Second, what a call with a false requirement does when nothing checks it. I recommend it runs as written, so
  requirements are never assumptions the optimizer may exploit (question 1).
- **The logic is bit-vectors.** olang integers wrap (E6c), and fixed-width bit-vector arithmetic is exactly that, so
  the prover is precise where most verifiers are not. Lengths are 64-bit values. Arrays are read and write terms.
  `for x in a: c` items are a decidable quantifier fragment. Floats are mostly left alone at first. Scopes and
  `outlives` stay entirely the scope pass's job.
- **Proofs are per function.** A function is proved against its own contract and its callees' contracts, never
  their bodies, except for small evaluable functions that may be unfolded. That keeps proofs separate and
  incremental, exactly like objects.
- **Loop invariants are written as `assert`s** at the top of the loop body, with no new syntax. The simple ones are
  inferred.
- **The solver is our own, written in olang**: abstract interpretation first, then a CDCL SAT core with a
  bit-blaster, roughly 10-12k lines. Each UNSAT answer carries a proof that a small checker verifies. Each
  counterexample is replayed by the compile-time evaluator. Z3, cvc5 and Bitwuzla are used only as test oracles and
  through an SMT-LIB dump, never in a build. Reasons: determinism across machines, independence, the bootstrap, and
  the fact that our queries are small.
- **Budgets are counted in solver steps, never seconds**, so a result is the same on every machine. Running out of
  budget is "neither". Results are cached under the hash of the query itself.
- **A first useful version** decides integer, `Bool` and length conditions:
  - requirements at calls;
  - guarantees in bodies;
  - asserts;
  - checks under `checked`;
  - counted loops.

  It reports, but never errors on, possible out-of-range indexes, divisions, shifts and conversions.

## 1. What the prover must decide

### 1.1 The conditions

Contracts are one bracket block after the error set, right before the body. A condition that mentions a named result
or `return` is a **guarantee**; any other is a **requirement**.

```
fn percent(part I64, whole I64) p I64 [whole > 0, 0 <= part <= whole, 0 <= p <= 100] {
    return part * 100 / whole
}

fn (l mut List<T>&) Push(x T) [return l.Len() == l.Len() + 1] { ... }
```

| kind | where it is judged | what it claims |
|---|---|---|
| requirement | at each call | "whenever this call runs, the condition holds" |
| guarantee | in the function's body | "for every input meeting the requirements, a normal return makes it hold" |
| `assert c` | where written | "whenever this runs, c holds" (S18c already decides some) |
| `unreachable` | where written | "control never gets here" (S16d) |
| a check under `checked` | at the operation | "this index is in range / this sum does not overflow / ..." (E15a) |
| an unchecked partial operation | at the operation | "index in range" (E16), "divisor not zero" (E6a), "shift amount in range" (E8a), "the float fits" (E26a) |

The last row is the language's own implicit contracts: `a[i]` behaves as if it were `At(i)` with `[0 <= i < a.Len()]`.
Proving those is what SPARK calls the "Silver" level, absence of run-time errors. It changes no program's behaviour.
It only tells the programmer where undefined behaviour cannot happen (section 6.3).

Scope conditions are not on the list. `a outlives b`, and the obligations the compiler infers (O10b), are decided
exactly by the scope pass at every call. That pass is complete for its own algebra, so a solver has nothing to add
there (section 2.5).

### 1.2 Examples, one per kind

**Requirements at calls.** Today's rule already decides a call whose condition reads only what is known while
compiling. The prover covers the rest:

```
percent(3, 4)              # the evaluator: true            (today)
percent(5, 4)              # the evaluator: false -> error  (today)
percent(n, m)              # nothing known -> neither: unchecked
checked percent(n, m)      # neither -> checked at run time, CheckError.CONTRACT
if 0 <= n <= m and m > 0: percent(n, m)    # proved: no check, even under checked
if n < 0: percent(n, 10)   # '0 <= part' is false whenever this runs -> refuted: error
```

**Guarantees in bodies, and wrapping arithmetic.** The guarantee on `percent` is false. `part * 100` wraps when
`part > 92233720368547758` (E6c), and the result goes negative:

```
error: guarantee '0 <= p <= 100' does not hold
note: for example part = 92233720368547759, whole = 92233720368547759: percent returns -92
```

A verifier that reasons in unbounded mathematical integers, as Dafny does for `int`, cannot find this bug. Bit-vector
reasoning finds it. The same happens with the classic midpoint:

```
fn mid(lo I64, hi I64) m I64 [0 <= lo <= hi, lo <= m <= hi] {
    return (lo + hi) / 2           # refuted: lo = hi = I64's maximum gives -1
}                                  # 'lo + (hi - lo) / 2' is proved
```

Signed `/` and `%` truncate toward zero, which is a common surprise:

```
fn divmod(a I64, b I64) q I64, r I64 [b > 0, 0 <= r < b] {
    return a / b, a % b            # refuted: a = -1, b = 2 gives q = 0, r = -1
}
```

**Lengths and indexes.**

```
fn first3(a Array<I64>&) I64 [a.Len() >= 3] {
    return a[0] + a[1] + a[2]      # each index proved in range from the requirement
}
```

**Checks under `checked`.** A proved check is not emitted:

```
fn total(a Array<I64>&) I64 ? CheckError {
    s := 0
    for i in range a.Len() {
        s += checked a[i]          # 0 <= i < a.Len() from the loop: no bounds check emitted
    }
    return s
}
```

The signature still says `? CheckError`. A proof never changes a signature: the signature is what callers are written
against, and it must not depend on the prover.

**Loops.** This guarantee needs a fact that holds on every turn:

```
fn count(a Array<I64>&, x I64) c I64 [0 <= c <= a.Len()] {
    n := 0
    for i, v in a {
        assert 0 <= n <= i         # the invariant, written as an assert
        if v == x: n++
    }
    return n
}
```

**Quantified items.** These come in a later stage:

```
fn sum4(a Array<I64>&) s I64 [
    a.Len() <= 1000
    for x in a: 0 <= x < 4
    0 <= s < 4000
] { ... }
```

### 1.3 What "refuted" means

Today, deciding a condition while compiling means running it, and a false one is false on the only run there is. With
inputs that are not known, "false" splits into two cases:

- **must-fail**: the condition is false on every run that reaches it;
- **may-fail**: some run reaching it makes it false.

Which of these is a compile error decides what kind of language olang becomes. If every may-fail requirement at a
plain call were an error, every call whose arguments are not proved would have to be written `checked` or be
preceded by an `if`. That is verification by default, the Dafny model. olang's design so far says the opposite: an
undecided call is unchecked unless the caller asks.

| condition | refuted (an error) when | may-fail is |
|---|---|---|
| requirement at a plain call | must-fail | reported (section 7), not an error |
| requirement under `checked` | never: a known run-time failure is allowed, as `checked a[5]` on a shorter array is (E16) | the run-time check |
| `assert`, `unreachable` | must-fail, as S18c's false assert | the run-time check that is already there |
| guarantee | one counterexample input meeting the requirements, replayed by the evaluator | an error, since the function's own statement is false |
| unchecked partial operation | never in the first version (section 6.3) | reported only |

Guarantees differ from the others because a guarantee claims something for **all** valid inputs. One input breaks
that claim, and the function's author made it. An `assert`, by contrast, is often written precisely because some
input might break it.

A refutation is always confirmed by running the code: the evaluator replays the counterexample. A must-fail claim
also carries the solver's proof that no run reaching the point makes the condition true. So an error never rests on
trusting the solver alone (section 4.4).

### 1.4 What "proved" may assume

A proof says that a condition follows from facts. Which facts may a proof use? That depends on question 1, what a
call with a false requirement does when nothing checks it.

- **If it runs as written** (recommended): a function's own requirements are not established facts. An unchecked
  caller may have broken them. So there are two strengths of proof:
  - **proved**: from established facts only. These are the program's own semantics, the guarantees of callees whose
    requirements were themselves proved at that call, and conditions of enclosing `if`s and loops. Only this removes
    a check.
  - **proved given the requirements**: what a guarantee's proof is by definition. It is also what is reported for a
    check inside a body that depends on the function's own requirements.

  Example: in `fn at(a Array<I64>&, i I64) [0 <= i < a.Len()] { return checked a[i] ... }`, the check stays, because
  an unchecked caller may pass `i = 99`. It is reported as "proved given the requirements". For a private (lowercase)
  function, every caller is in the module. When every one of its calls has its requirements proved, those
  requirements are established, and the check goes. That is still module-local, so separate compilation holds.

- **If a false unchecked requirement is undefined behaviour**, as an out-of-range index is: every proof may assume
  the function's own requirements. More checks go, and the optimizer could use requirements as facts. The price is a
  new and large class of undefined behaviour. It would also contradict the decided meaning of conversions, which
  wrap unchecked: `I32(x)` with `[x fits I32]` must stay defined.

## 2. The logic

### 2.1 Integers: bit-vectors

Every integer type is a bit-vector of its width. `+`, `-`, `*`, `<<` and unary `-` wrap (E6c), exactly as SMT-LIB's
`bvadd`/`bvmul` do. Signed and unsigned comparison, division and remainder are separate operators, as in the
language. Conversions are extensions and truncations. `x fits T` is a range comparison, and E30's comparison chains
expand to conjunctions.

The undefined cases (E6a's zero divisor and `MIN / -1`, E8a's shift amount) are not values. They become side
conditions of the operation: the "partial operation" row in section 1.1.

Where this is expensive: multiplying and dividing two unknown 64-bit values bit-blasts to tens of thousands of
clauses. Most conditions in real code are linear (bounds, counts, offsets). The first tier (section 4.1) decides many
of those with no solver at all, and nonlinear ones that exceed the budget are "neither".

### 2.2 Floats: what is feasible

IEEE arithmetic can be bit-blasted too. Bitwuzla and cvc5 do it through SymFPU. But an `F64` multiply or divide makes
large formulas, and proofs about them are slow and brittle. For a first version, that is not worth building. Instead:

- **Intervals with outward rounding** and a "may be NaN" flag decide ranges, such as `0.0 <= x <= 1.0` after a clamp.
  NaN is where most float conditions actually fail: `sqrt(v * v)` does **not** prove `x >= 0.0`, because `v` may be
  NaN, and `NaN >= 0.0` is false. Saying so is correct, not a weakness.
- **Exhaustive evaluation for small domains**: a condition over a single `F16`, `BF16`, `I8`, `U8` or `I16` input, or
  two 8-bit inputs, has at most 65,536 cases. The evaluator can run all of them. That decides the condition
  completely, and it agrees with the run time by construction.
- Bit-blasted `F32`/`F64` is later work, kept for simple cases (comparisons, `+`, `-`) if code needs it.

### 2.3 Arrays and lengths

- An array reference is a term. `a.Len()` is an `I64` term attached to the object, constant for its life (arrays never
  resize, T11b), and `0 <= a.Len()` holds always.
- Elements are SMT-style array terms: `select` reads and `store` writes. The solver handles read-over-write
  lazily, by adding the lemmas a model needs.
- `Array<T, N>`'s length is the constant `N`. A slice `a[lo:hi]` has length `hi - lo`, and its element `k` is `a`'s
  element `lo + k`.
- `List`, `Map` and `String` methods are ordinary functions with contracts: `Push`'s guarantee says what
  `Len()` becomes. Once std carries its contracts, they feed every caller.

### 2.4 Quantifiers from `for` items

`for x in a: c` in a contract means: for every `k` in `0 .. a.Len()`, `c` holds with `x = a[k]`.

- **As a fact (an assumed requirement)**, it is instantiated at the indexes the query actually reads. If the code
  reads `a[i]` and `a[j]`, the prover adds `c(a[i])` and `c(a[j])`. Bradley, Manna and Sipma showed this
  instantiation is complete for the "array property fragment": conditions whose index terms are compared only with
  `<=` and `=`. So it needs no heuristic matching, and that keeps it deterministic. Heuristic quantifier matching
  (E-matching) is what makes Dafny and F* proofs fragile (section 5.1).
- **As a claim (a guarantee to prove)**, it becomes "for a fresh `k` in range, `c(a[k])`". Nothing in the claim needs
  instantiating.
- **Nested `for` items and `if a: b`** are the same thing nested. An implication is a disjunction.
- A loop that **establishes** a quantified fact needs a quantified invariant, for example "every element before `i`
  is zero". That is later work (section 9, P5).

### 2.5 References, memory and scopes

The prover reasons about **values in memory**. The scope pass already guarantees that no reference outlives its
referent (scope-model.md's invariant I1). So the prover may treat every reference as either `null` or a live object
of its type. It never asks where a value lives, and the scope pass never asks what a value is.

`outlives` items and inferred obligations are decided by the scope pass alone. A function with scope conditions
cannot be a value (decided). The two passes share nothing but the program.

**The memory model** is one array per type: a "heap" mapping objects of type `T` to their contents. This
Burstall-Bornat model is sound in olang for a reason C cannot offer. T36 holds: there are no casts, unions or
reinterpretations, so an access of one type never overlaps an access of another. That is the same fact TBAA rests on.
Two references of one type may alias, and the solver splits on whether they name one object where that matters.

**What a call may change (the frame).** Permission (T25b) gives a frame rule for free. A call may change only what is
reachable through the writable references it receives, its captures, and the mutable globals its body may write.
Everything else is unchanged across the call. The prover computes "may write the heap of `T`" per function as a
fixed point, as the compiler already computes what a callee may build into. Two cases are coarse but sound:

- a call through a function value is unknown, and may write every heap it could reach;
- a task's writable arguments are unknown after its join. Data races are undefined (P8b), so a single task is
  reasoned about sequentially.

**Two states for guarantees.** A guarantee reads plain names at entry and `return e` at return. A function's
condition therefore relates the heap at entry to the heap at return, as Push's
`[return l.Len() == l.Len() + 1]` does.

### 2.6 Calls inside conditions

A condition may call any function that the compile-time evaluator can evaluate (decided). K1a then gives a valuable
fact for free: such a function writes no global and has no effects, so it is a mathematical function of its
arguments and immutable globals. The prover treats it in one of two ways:

- as an uninterpreted function constrained by its own contract;
- or, when it is small and not recursive, by **unfolding its body** one level. Dafny and F* call this "fuel", and
  Liquid Haskell calls it "reflection".

Unfolding is what makes `l.Len()` in Push's guarantee usable. `Len` reads the list's state record.

## 3. How proofs are made

### 3.1 From the MIR

Verification conditions are generated from the **MIR**, the same control-flow graph the evaluator runs and the
emitter lowers. DESIGN.md 1.8 calls this "agreement by construction", and it extends to the prover:

- evaluation order (S4), temporaries, catch dispatch, deferred code and checked operations are already explicit
  there;
- the `Overflows` rvalue and the check statements are exactly the side conditions of section 1.1.

The typed core would be closer to the source, but every rule MIR makes explicit would then have to be modelled a
second time, and a second model is where disagreements come from.

The method is the standard one (Flanagan and Saxe; Boogie):

1. Put each function instance in single-assignment form.
2. Cut its loops at their heads.
3. Build one formula per condition, linear in the function's size, so that branches do not multiply.

Contract conditions are lowered into MIR as **ghost statements**: `Require`, `Ensure` and `Assume`, each with its
site. Emission ignores them unless a check is kept, and the evaluator runs them exactly where the run time would.

Proofs are made **per instance**: a generic is proved once for each set of type arguments, exactly as it is checked
(G16) and compiled. Identical instances produce identical queries, and the cache (section 5.3) shares them.

### 3.2 Loop invariants

A loop is proved by induction. A fact is proved at the loop's head, then shown to survive one turn, and then used
after the loop. The hard part is finding the fact. Every system answers this differently:

| system | invariants |
|---|---|
| Dafny, Verus, Why3, Prusti | written by the user (`invariant e`), with some inference |
| SPARK | `pragma Loop_Invariant`, written as a statement in the loop body; GNATprove infers simple bounds |
| Liquid Haskell | inferred, by abstract interpretation over refinement templates |
| Kani, CBMC | none: loops are unrolled to a bound, or a loop contract is written |

I propose this for olang:

- **Inferred**, needing nothing written:
  - a counted loop's index is in range (`for i in range n`: `0 <= i < n`; `for i, x in a`: `0 <= i < a.Len()`), which
    the lowering knows;
  - intervals and differences of counters (`n <= i`, `j - i <= 3`), by abstract interpretation (section 4.1);
  - `k`-induction for short facts, with `k` up to 2 or 3.
- **Written as an `assert` at the top of the loop body**, as in `count` in section 1.2, which is SPARK's design. The
  prover tries each such assert as an invariant:
  - inductive: it is proved, its run-time check goes, and it is a fact for the rest of the loop and after it;
  - not inductive: it is an ordinary assert, judged as asserts are.

  This needs no new syntax and no new rule: an assert already states a fact that holds wherever it is reached. The
  prover just uses that fact. A wrong invariant costs nothing but the proof.

A contract block is per function, so it is not the place for a loop's facts. A separate `for ... [invariant]`
bracket would be a second way to write what an assert already says (question 3).

### 3.3 Function summaries

The contract **is** the summary. A call is proved against its callee's requirements, and the result is known through
the callee's guarantees. The callee's body is never read, except when it is unfolded under section 2.6's limits. So:

- A function's proofs depend on its own body, the contracts of what it calls, and the unfolded bodies. Those are
  hashed into the cache key (section 5.3), so nothing has to track dependencies.
- Separate compilation holds unchanged. A module's proofs need only its imports' signatures and contracts, plus the
  small bodies it unfolds, and B2a already reads imports from source.
- Recursion needs no special rule. A recursive call is proved against the contract being proved, which is the
  standard induction on calls. That gives partial correctness: nothing is ever claimed about termination. A function
  that never returns violates no guarantee, and no condition here needs termination.
- A function without a contract has, as far as its callers' proofs are concerned, nothing beyond its type, unless it
  is small enough to unfold. The decided `olang explain` shows a function's conditions. It could also show what the
  prover proved about it.

## 4. The solver

### 4.1 The tiers

Each condition goes to the cheapest decider that can settle it:

| tier | decider | decides | cost |
|---|---|---|---|
| 0 | the compile-time evaluator (exists) | conditions reading only known values; small domains run exhaustively (2.2) | microseconds to milliseconds |
| 1 | abstract interpretation over MIR: intervals that respect wrapping, known bits, differences between pairs of integers, NaN flags | most bounds, counts and ranges; inferred loop invariants | linear in the function, with widening at loops |
| 2 | the query bit-blasted to a CDCL SAT solver, with array and function lemmas added lazily | anything else in the logic, up to the budget | milliseconds per query, mostly |
| 3 (later) | incremental SAT across a function's queries, `k`-induction, IC3/PDR for invariants | harder loops | budgeted |

The wrapping intervals in tier 1 are the "signedness-agnostic" intervals of Navas et al. A plain interval domain over
signed values is unsound under wrapping, so the published one is used, not an invented one.

### 4.2 Our own, or an existing solver?

| | our own, in olang | Z3 / cvc5 / Bitwuzla, linked through std/ffi | the same, run as a process (SMT-LIB2 text) |
|---|---|---|---|
| licence | none needed | MIT / BSD-3 / MIT: permissive, not the obstacle | the same |
| dependency | none: part of the compiler | a C++ library in every compiler install; GMP for cvc5 and Bitwuzla | an installed program, whose version varies |
| bootstrap | built by the seed chain like the rest of the compiler | a C++ toolchain to build the compiler | none to build, but needed to compile programs |
| determinism | by construction: no randomness, fixed tie-breaks, insertion-ordered tables, step budgets | rlimit (Z3) or steps are deterministic only per solver version; Mariposa found newer Z3 versions less stable | the same, plus whatever version the machine has |
| a program compiles the same everywhere | yes | only if every machine has the same solver version | no: an absent solver means fewer refutations |
| speed on hard queries | a MiniSat-class core is 10-100x behind CaDiCaL or Kissat on hard instances | the state of the art | the same, plus process start-up of about 10 ms |
| speed on our queries | most are small; tiers 0-1 take most of them | the same | the same |
| size | about 10-12k lines of olang (section 9) | about 500k lines of C++ (Z3) | none of ours |
| trust | small: a proof checker for UNSAT, the evaluator for counterexamples | the solver's code, about 500k lines | the same |

The decisive row is "a program compiles the same everywhere". Refutations are compile errors. If they depended on
which solver, which version, or whether one is installed, the same source would compile on one machine and fail on
another. That breaks the language's basic property: what is built depends only on the source, the compiler and the
build's options (B3). Only a solver that ships inside the compiler, pinned, keeps that property.

Long-term independence from other companies (the user's direction for oagent) points the same way, and it costs
little here, because olang's logic is the decidable, mechanical part of SMT: bit-vectors bit-blast to SAT. The hard,
heuristic part of SMT is quantifiers and nonlinear real arithmetic, and olang's contracts avoid both by design.

**Recommendation: our own solver.** External solvers serve two roles that never touch a build:

- **a test oracle**: a `checks` scenario, skipped when the solver is not installed, sends the same queries to Bitwuzla
  or Z3 and requires the same answers;
- **an SMT-LIB dump**: `olang prove -dump DIR` writes every query, to compare solvers or to debug a slow proof.

### 4.3 What the SAT core is

It is the standard CDCL design, MiniSat 2's in substance:

- watched literals, conflict analysis to the first unique implication point, clause minimization;
- EVSIDS variable activity, Luby restarts, phase saving;
- clause-database reduction;
- an assumptions interface, so one function's queries can share a solver instance in tier 3.

The bit-blaster sits on top: adders and comparators as gate circuits, with shared structure (an and-inverter graph
with hashing), and word-level rewriting before blasting (`x + 0`, constant propagation, `x < x`). The result is about
2-4k lines for SAT and 1.5-2k for the bit-blaster. It is roughly a tenth of a contemporary solver, which is the price
of the speed gap above. Section 5.2 shows why that gap is affordable.

### 4.4 Trusting its answers

A prover bug would change meaning: it could remove a check that should have failed, or reject a correct program. So
each answer is certified independently of the solver.

- **UNSAT** ("no run makes the condition false", which means proved; or "no run makes it true", which means
  must-fail): the SAT core writes an LRAT proof. A checker of a few hundred lines verifies it. The checker runs on
  every proof in test builds and under `-debug`, and on a sample otherwise. LRAT checking is what SAT competitions
  require, and verified checkers for it exist (cake_lpr).
- **SAT** (a counterexample): the model gives concrete arguments. The evaluator runs the function on them and must
  reach the failure. A refutation is reported only after that replay. Where the function cannot be evaluated (an
  extern, for example), the model is checked against the formula instead.
- **Tier 1** has no certificate. Its domains are tested exhaustively against the evaluator on small types (section
  9, P1).

The trusted part is then the translation from MIR to formulas. It is tested by the oracle that matters most:
functions over 8- and 16-bit types run over **all** their inputs. Every "proved" must never fail, and every
"refuted" must fail where the counterexample says.

## 5. Determinism and speed

### 5.1 Budgets, never clocks

A timeout in seconds makes the result depend on the machine and its load. The verifiers learned this the hard way:

- F* moved from timeouts to Z3's machine-independent rlimit, "because timeouts were very much influenced by the speed
  of the machine, the current workload, power-saving features".
- IronFleet's README warns that its wall-clock limits give extra failures on slow machines.
- Mariposa measured instability across six verification projects: on the newest Z3, 2.6% of 17,043 queries gave a
  different answer for a change that did not alter their meaning (renaming, reordering), and up to 5% per project.

So every tier counts **steps** (conflicts and propagations in SAT, iterations in tier 1, evaluation steps in tier 0),
and a budget exhausted is simply "neither". Because the meaning of "neither" is "as today", running out of budget never
changes what a program does. It only leaves a check in place.

There are fixed budgets per condition and per function, one value for every build, so `-quick`, `-debug` and the
default build reach the same conclusions. Instability in the Mariposa sense comes almost entirely from heuristic
quantifier instantiation and solver randomization. The design here has neither: its quantifiers are instantiated
completely (2.4), and its solver is seeded by nothing. Building the query deterministically is part of the contract:
stable numbering, and no iteration over hash tables whose order depends on addresses.

### 5.2 Cost per build

Measured costs of comparable systems:

| system | what it proves | reported cost |
|---|---|---|
| Dafny (IronFleet, 2015) | full functional correctness, Z3 | about 6 hours for a serial build; 1-10 s per method while editing; 60 s wall-clock limit per proof |
| Verus (SOSP 2024) | full functional correctness, Z3 | 3-61x faster than the state of the art on the same examples |
| Liquid Haskell (2025 study) | refinement types, Z3 | 11 s in the solver against 3 min end to end for one example; about 1 s per 10 lines in an older talk |
| Kani (2026) | bit-precise bounded checking, SAT | CI runs of 1-69 minutes per project; 16,748 harnesses for Rust's std, made tractable by contracts and caching |
| SPARK (Silver level) | absence of run-time errors | step limits and replayed sessions; cost not quoted here |

Those systems prove much more per function, mostly full functional correctness with quantifiers. That is why they cost
seconds per method. The first version here decides mostly linear, quantifier-free conditions. Tiers 0-1 settle most
of them in microseconds, and the rest go to SAT queries of a few thousand clauses, which take milliseconds.

An estimate for compiling `compiler/` (60k lines), to be measured in P2:

| what | cost |
|---|---|
| explicit conditions (contracts, asserts) | a few thousand once std carries contracts; a fraction of a second |
| `checked` sites (to remove checks) | hundreds |
| possible undefined behaviour (report mode only) | about 10-20k sites; 2-10 s of CPU, split across modules |

The self-build takes about 108 s today, and compile speed is the first approved item (direction.md). So the target is
**under 5% on a clean build, and close to zero on a cached one**. The mode split of section 6.4 keeps the expensive
part out of ordinary builds.

### 5.3 Caching

The cache key is the **query itself**: a hash of the canonical formula, together with the prover's version and the
budget. Anything that matters to a proof changes the query, and nothing else does. So there is no dependency tracking
to get wrong. It is more precise than B3i's per-module key: editing one function re-proves only the conditions whose
formulas changed. Results go in `build/proofs/`, and in a shared directory under `OLANG_OBJECTS`'s rules (B3j).

Building the formula costs a fraction of solving it. Since results are deterministic, the cache only saves time: a
cold build and a warm build reach the same conclusions. A test checks this, building with and without the cache and
comparing the results.

## 6. The first useful version

### 6.1 What it decides

- **Requirements at calls**, over integers, `Bool`, `Char`, enum tags (`is`), `null` tests, lengths and
  `x fits T`, using the enclosing `if`s, loops, guarantees and asserts as facts.
- **Guarantees in bodies**, for the same kinds of value, including `return e` through references where the frame
  rule (2.5) and unfolding (2.6) are enough.
- **Asserts and `unreachable`**, beyond what S18c's evaluator decides.
- **Checks under `checked`**: bounds, overflow, `fits` and contract requirements. A proved check is not emitted.
- **Loops**: counted loops with their inferred invariants, and invariants written as asserts.
- **Wrapping arithmetic** exactly.

### 6.2 What it leaves (as "neither")

- floats beyond intervals and small exhaustive domains;
- quantified `for` items needing a quantified loop invariant;
- nonlinear arithmetic past the budget;
- calls through function values and `any` values;
- conditions over a task's writable arguments while the task runs;
- deep heap reasoning that unfolding does not reach.

None of these are errors. Each one is just "as today".

### 6.3 Possible undefined behaviour: a report, not an error

The unchecked partial operations (E16, E6a, E8a, E26a) are analysed in a report mode, `olang prove -ub FILE`, which
lists each site as proved safe, must-fail, or unknown. This is the "Silver" report. A must-fail site there is a real
bug, but in the first version it is **not** a compile error, because finding it costs a pass over every index in every
build. The errors that exist today for constant indexes, literal zero divisors and literal shift amounts stay as they
are.

### 6.4 What each build runs

| what | `build`, `test`, `-debug` | `-quick` | `olang prove` |
|---|---|---|---|
| explicit conditions: proved, refuted or neither, and errors from refutations | yes | yes, identical | yes, with the report |
| removing proved checks under `checked` | yes | no: the checks stay, so meaning is unchanged | - |
| possible undefined behaviour | no | no | `-ub` |
| LRAT checking of every proof | `test`, `-debug` | no | yes |

Errors are the same in every build, because acceptance must not depend on the mode. Skipping check removal under
`-quick` changes speed, never meaning.

## 7. Diagnostics

A refutation shows the failing condition, a concrete counterexample, and that the counterexample was run:

```
src/stats.olang:4:44: error[...]: guarantee '0 <= r < b' does not hold
    fn divmod(a I64, b I64) q I64, r I64 [b > 0, 0 <= r < b] {
                                                 ^~~~~~~~~~
src/stats.olang:4:44: note: for a = -1, b = 2 the function returns q = 0, r = -1 (run while compiling)
src/stats.olang:5:5: note: returned here
```

A must-fail requirement names the call and gives one run that reaches it:

```
src/main.olang:12:9: error[...]: requirement '0 <= part' of 'percent' is false whenever this call runs
        percent(n, 10)
        ^~~~~~~~~~~~~~
src/main.olang:11:8: note: this call runs only when 'n < 0'
src/report.olang:2:44: note: required here
```

The rule numbers come with the spec. Notes follow B11's style: the line where a fact came from, and what to write.
For example, `write 'checked percent(n, 10)' to check it at run time`.

The report mode (`olang prove FILE`) lists each condition with its outcome and the reason for it: the tier, the facts
used, and the steps spent. For "neither", it says what was missing, such as "nothing says `whole > 0` here". `olang
explain FILE NAME` shows a function's contract with each condition's outcome. In an editor, these become hovers later.

## 8. How it fits with the rest

- **The compile-time evaluator.** It stays the first decider (tier 0). The prover never contradicts it, because a
  condition the evaluator decides is decided. The evaluator replays every counterexample, so the prover can never
  claim a failure the program would not have. The prover reasons over the same MIR the evaluator runs, so the two
  agree by construction, and the exhaustive tests of 4.4 check it. The prover only needs `eval` to evaluate one
  function on given arguments, which it already does for S18c.
- **`checked`.** A proved condition needs no check, even under `checked`. Its error path is gone from the code, but
  not from the signature. A refuted requirement under `checked` compiles, and fails at run time with
  CheckError.CONTRACT, as a known-false `checked a[5]` compiles today.
- **Asserts.** S18c judges an assert by evaluation. The prover extends that judgement: proved means no run-time
  check, must-fail means an error. S18c's "reached or not" stays: an assert in code the prover proves unreachable is
  proved, vacuously.
- **`-i`.** It behaves as the build does: conditions are unchecked unless `checked` is written. The prover's
  decisions remove checks only where a proof shows they cannot fail, so `-i` and the built program agree whether or
  not the prover ran.
- **The optimizer.** Proved facts are **not** given to LLVM as assumptions in the first version. A removed check is
  local and auditable in the report. An `llvm.assume` turns any prover bug into a miscompile far from its cause.
  This could be revisited once the prover has a record.
- **Dead branches.** A branch the prover finds unreachable is not an error. S8a's dead-branch error stays as the
  evaluator decides it, because otherwise acceptance would grow with the prover's strength for no gain in safety.

## 9. Plan

Each stage ends with `make verify` and its own acceptance tests, and each stage that changes what is accepted gets a
soundness review before it merges.

| stage | builds | acceptance |
|---|---|---|
| P0 (prerequisite) | contracts as decided: spec, parse, check, the evaluator deciding known calls, `checked` at run time, `olang explain` | the contract decisions' examples; `checks/cases` for each error |
| P1 | ghost statements in MIR; queries from MIR; tier 1; `olang prove` as a report only, with no effect on builds | exhaustive oracle: every function in a generated corpus over `I8`/`U8`/`I16`/`F16` arguments, with "proved" never failing over all inputs and "refuted" always failing where shown; std's contracts reported |
| P2 | decisions take effect: proved removes checks under `checked` and proved asserts, refutations are errors (replayed); the cache | the whole suite unchanged; the examples of 1.2 give the errors shown; identical results cold and warm and across `-quick`/default/`-debug`; clean self-build overhead measured, target under 5% |
| P3 | the SAT core, bit-blaster, LRAT output and checker; tier 2 | every UNSAT certified in test builds; differential runs against Bitwuzla or Z3 where installed; `percent`, `mid` and `divmod` refuted, their fixes proved |
| P4 | loops: asserts tried as invariants, difference inference, `k`-induction | `count` proved; std's List, Map and sort index facts proved |
| P5 | `for` items (array property fragment), array contents, frames through permissions | `sum4`; std guarantees such as Push's and Sort's "same length" |
| P6 | `olang prove -ub`; float intervals; small exhaustive domains | a Silver report for std and `compiler/`, every must-fail looked at |
| later | IC3/PDR, bit-blasted `F32`/`F64`, facts given to LLVM, a strict mode (question 5) | measured first |

Sizes, estimated in olang lines:

| piece | lines |
|---|---|
| query generation and ghost lowering | 2-3k |
| tier 1 | 1.5-2k |
| SAT | 2-4k |
| bit-blaster and rewriting | 1.5-2k |
| LRAT checker | 0.3k |
| arrays, functions, quantifiers | 1-1.5k |
| report, diagnostics, cache | 1k |
| total | about 10-14k, beside the compiler's 60k |

Modules: `prove` (queries and tiers 0-1), `sat` (the core and its checker), and `bv` (the bit-blaster). Each is a
real boundary, so these splits do not go against the rule "only split where modularisation is a thing".

**When.** After P0. The plan puts compile speed first among approved items, so I suggest P1 starts once the current
compile-speed round lands. Its oracle tests can be written before anything depends on them (question 6).

## 10. Direction questions

1. **What does a call with a false requirement do when nothing checks it?** Recommended: it runs as written. A
   requirement is a statement and an opt-in check, never an assumption, so the language's list of undefined behaviour
   stays as short as it is (index, division, shift, float conversion, extern, races). The cost: a check inside a body
   can only be removed by a proof that does not lean on the function's own requirements (1.4). The other option:
   undefined behaviour. Every proof could then assume the requirements and the optimizer could use them, but every
   contract becomes a new way to have undefined behaviour, and `I32(x)` with `[x fits I32]` stops wrapping.

2. **Which refutations are compile errors?** Recommended:
   - a requirement at a plain call, an `assert` or an `unreachable`: only when it fails on every run reaching it;
   - a guarantee: one counterexample meeting the requirements, replayed;
   - possible failures: reported, never errors.

   The other option is Dafny's: any requirement not proved at a plain call is an error. That makes olang a verified
   language by default, with `checked` or an `if` at most calls.

3. **Loop invariants as `assert`s** at the top of the loop body, tried as invariants (SPARK's design, no new syntax)?
   Recommended yes. The other option is a bracket on the loop, `for i in range n [n <= i] { }`, which says it is an
   invariant but is a second way to state a fact.

4. **Our own solver, in olang**, with Z3/cvc5/Bitwuzla only as test oracles and through an SMT-LIB dump? Recommended
   yes, for determinism across machines (a compile error must not depend on an installed program), the bootstrap, and
   independence. The other option, linking Bitwuzla, is stronger on hard queries but ties every compiler install to a
   C++ library and a pinned version.

5. **A strict mode**, a way to demand that conditions are proved, not just "neither"? Recommended: later, and as an
   option of `olang prove` for CI (failing on any "neither"), not as language syntax. Then a program's meaning still
   never depends on the prover, and a project can still hold itself to SPARK's Gold level.

6. **Order.** Recommended: P0 (contracts themselves), then the compile-speed round, then P1-P3, with P1's exhaustive
   oracle tests written first. The other option is to start the prover beside P0, which would give contracts their
   decisions sooner.

## 11. Sources

- F* wiki, "rlimits: Machine Independent Resource Limits for Deterministic Execution":
  https://github-wiki-see.page/m/FStarLang/FStar/wiki/rlimits:-Machine-Independent-Resource-Limits-for-Deterministic-Execution
- Z3 resource limits, discussed for clang's analyzer: https://discourse.llvm.org/t/analyzer-rfc-taming-z3-query-times/79520
- Y. Zhou et al., "Mariposa: Measuring SMT Instability in Automated Program Verification", FMCAD 2023:
  https://www.microsoft.com/en-us/research/?p=1055466
- A. Lattuada et al., "Verus: A Practical Foundation for Systems Verification", SOSP 2024 (3-61x):
  https://cs.ubc.ca/news/2024/11/dr-achermann-and-co-authors-win-distinguished-artifact-award-top-systems-conference
- IronFleet: the README (several hours; wall-clock limits): https://github.com/microsoft/Ironclad/blob/master/ironfleet/README.md;
  summary of build times: https://blog.acolyer.org/2015/10/15/ironfleet-proving-practical-distributed-systems-correc/
- "Refinement-Types Driven Development: A study" (Liquid Haskell timings), 2025: https://arxiv.org/pdf/2509.15005;
  "LiquidHaskell: Liquid Types for Haskell" (1 s per 10 lines): https://goto.ucsd.edu/~nvazou/compose16/_site/01-index.html
- "Kani: A Model Checker for Rust", 2026: https://arxiv.org/abs/2607.01504
- AdaCore and Thales, "Implementation Guidance for the Adoption of SPARK" (the levels):
  https://www.adacore.com/uploads/books/pdf/ePDF-ImplementationGuidanceSPARK.pdf;
  SPARK command line (`--steps`, `--replay`): https://docs.adacore.com/spark2014-docs/html/ug/en/appendix/command_line_invocation.html
- A. Niemetz and M. Preiner, "Bitwuzla", CAV 2023 (MIT licence): https://sources.debian.org/src/bitwuzla/0.8.2-2/README.md
- CaDiCaL (MIT): https://sources.debian.org/src/cadical/2.1.3-2/README.md
- Classics, cited by title: C. Flanagan and J. Saxe, "Avoiding Exponential Explosion: Generating Compact Verification
  Conditions", POPL 2001; A. Bradley, Z. Manna and H. Sipma, "What's Decidable About Arrays?", VMCAI 2006; J. Navas
  et al., "Signedness-Agnostic Program Analysis: Precise Integer Bounds for Low-Level Code", APLAS 2012; N. Eén and
  N. Sörensson, "An Extensible SAT-solver" (MiniSat), SAT 2003; L. Cruz-Filipe et al., "Efficient Certified RAT
  Verification" (LRAT), CADE 2017; R. Bornat, "Proving Pointer Programs in Hoare Logic", MPC 2000.

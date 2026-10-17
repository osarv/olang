# Review: the typed-tree contract (master 45c14e6)

Read-only. Scope of the review: `compiler/DESIGN.md` (1.6, 1.6.1, 1.7, 1.8, 2, 4, 6), `compiler/typed.olang`,
`compiler/types.olang`, `compiler/generic.olang` and SPEC, with stage 0 (`bootstrap/semantic.c`, `codegen.c`,
`comptime.c`) as the behaviour reference. Reproducers are in `repro/`.

**Verdict.** The shape is right: places kept apart from values, sites, a plan beside the body, and elaboration to about
40 node kinds. But M5b should not start until the 17 required items below are settled. Most of them are fields that
check must fill (marks, sites, ids, body kinds). Two are design points:
- S4d's copy decision depends on a §8 summary, so check would depend on scope.
- A function type's scope shape is lost when types are interned, so the hidden-argument ABI and T22a are not
  derivable from the type.

The second point is already a stage-0 bug (below).

## A stage-0 bug found on the way

`repro/sharedscopevalue.olang` and `repro/sharedscopestore.olang` segfault when built (`-b`, and `-b -d -s`). `-i`
prints the right answer (`8 7`, and `4950000` then `42`).

The shape: `fn link(a mut N&, b N&a)` used as a value of `fn(a mut N&, b N&)`. Under O4b, `link` has one scope
variable, because `b` shares `a`'s. The function type has two, one per reference parameter.

- The call through the value passes `(env, s0, s1, a, b)`.
- `@link.fvt` takes `(env, s0, a, b)`, so it reads a scope pointer as `a`.

Even with the ABI fixed, the value is unsound. The function needs `b` to live where `a` does (an O17 equality), and a
call through `fn(a mut N&, b N&)` checks nothing of it. So `put(f, x, 42)` would store a node built in `put`'s block
into `x`. The fix is for T22a to refuse `&x`-sharing parameters in a function made a value, as it refuses other
obligations. (Stage 0 takes fixes only, QB.) See required item 3 for the port.

## 1. Can every SPEC construct be expressed? (the 18/8/15 kinds and the Plan)

Almost every construct can. What cannot be expressed, or is ambiguous, by rule:

1. **O4a/E25, `&G` and `f&G(...)`.** `Mark.Of(local)` cannot name a global (the program's scope, O1b). A
   `Mark.Global(module, name)` or `Mark.Program` is needed.
2. **O4b.** `Mark.None`'s comment says every parameter has a scope variable of its own. A parameter written `b N&a`
   shares `a`'s. Parameters need their marks as written (`Bare`, `Of(a)`, `None`), and `Vars` must follow them.
3. **O25a (`acc U = init`) and O14b (a result written `T`).** Both depend on the type having been written as a bare
   type variable. After instantiation the `TypeId` is concrete (`String&`), so a local would read as `Bare` (its
   block) and a result as built. Both need a mark of their own: `Infer` for the local, and a `TypeVar` result mark.
4. **T22a, a function type whose result is written as a type variable.** A call through a `Fold` callback is held to
   "each reference argument outlives the result scope". That fact lives on the function type in stage 0
   (`resultViaTypeVar`, `scopeObligations`). types.olang interns function types with no scope information, so after
   substitution `fn(acc String&, x String&) String&` cannot be told from a built result. The same gap holds `&x`
   sharing between parameters (the bug above). See required item 3.
5. **O20, O23a, C2d: field marks.** §8 needs each struct field's tag: bare (the instance's scope), `&p` (the
   argument's, a derived scope), or `&f`. `types.body.Fields` holds types only. The contract does not say that marks
   are read from the constructor body's field locals (`Body.Fields` -> `Local.Marked`). Enum payload parameters (T17c)
   have no constructor body, so their marks have no home.
6. **G10d twins.** Twins share one `TypeId`, but each binding has a constructor of its own. `BodyOf.Ctor(t)` cannot
   tell them apart.
7. **T29d constructors over primitives.** The result is the parameter's final value, and there is no `return` (C2b).
   The contract should say that check ends such a body with a synthesized `Return(Read(param))`. A struct
   constructor's implicit assembly from `Fields` is stated; this one is not.
8. **S12b/S13/S13a, `Match.NoMatch` set to null.** Null currently means two different things:
   - "no clause matched, nothing happens": a statement match over a non-enum subject;
   - "cannot happen, aborts": an exhaustive match that a null enum reference reaches, which is `unreachable`.
   Check should always fill `NoMatch`.
9. **S4d (copy the old value).** No node or plan entry expresses "this Borrow takes the place's old value". Stage 0
   sets `copiesOld` from `calleeMayKeepArg`, a body summary (`semantic.c:20522`). See section 4, risk 1.
10. **O32/O33: a borrow's region read at run time.** In C, `cgOwnBorrowHeader` records the region from the object
    header where the borrow is read, and `regionArgs` reads it again after the arguments. `Scope.Region(site)` names
    only a new region made at a site. A `Read` of an own slot has no site the plan could name.
11. **E16a and T7c, `Place.Temp`.** It has no site, but its storage is placed: the block it is written in, and the
    arena when over 64 KB. The plan cannot say where.
12. **D14b and E15a: `Make(Fill)` has no `Check`.** A negative length aborts; under `try` it fails with
    `OUT_OF_BOUNDS`.
13. **T25d: static arrays of text.** A read-only literal like `String&["a", "b"]`, as walked by for-in, is constant
    data whose elements are addresses of other constants. `Data(bytes)` cannot hold an address. Data's identity is
    also unstated: E10c `is`, and K2b's "one instance per written literal per module" across instances and per-call
    defaults.
14. **D8a defaults.** "The default's tree", with "any part may be shared", is wrong once the tree holds a `SiteId` or
    a `LocalId`. Those index one body's tables, and stage 0 had to rebuild defaults per call (decision 48's review and
    tonight9).
15. **E10a/E10b and `Helper(Equal|Hash)`.** Is a helper allowed to reach a declared `Eq`/`Hash` in a part? In stage 0
    it never does. `buildEquality` elaborates any Eq-consulting comparison into calls, through the prelude's
    `Equal`/`HashElements`, and `cgDeepEq` is pure data. If a helper could call `Eq`, nobody places that call's
    scopes.
16. **E11b: what Render's operand is.** "An array as the array it names (T7b)": a value-array operand must be a
    `Borrow`, read when the piece renders, not a copying `Read`. Otherwise `$a $bump(a)` renders the old elements.
17. **Smaller points, each unstated:**
    - `Raise`'s word for the default error (R15/R19);
    - a `Seq` with no value (R21's `try x[i] += v` as a statement);
    - `Spawn` order: target places, then the task's arguments (P1g, S4);
    - a `TaskClause` handler's result: the targets' default(s), a tuple for several (P4a);
    - a destructor body's `Params[0]` is the instance (C8);
    - `Callee.Body` for a lambda called where written only when it captures nothing (D16b);
    - `IsCase` on a null reference is false (E32, T17d);
    - a `Lit` of an aggregate means all-zero bits only (D13c).

Everything else is expressible, checked against the C lowerings: E31/E31a/E31b, R21, S9a-S9f (`Jump` naming an outer
body serves S9f's `breakOuter`), E27, E28-E30, D16/E31 adapters, P4-P4d, S19, G13/G26/S8b chosen branches, E32/E32b,
T29a, D8c/D8d, own `Take`/`Promote`/owned results, and K1's operations.

## 2. Does M6 get what it needs? Is the Plan the right shape for M7? Does M8 get what it needs?

**M6 inputs.** The inputs are there except items 1-6 and 9-10 above: marks for globals, parameters, type variables
and fields; function-type shape; twins; S4d; the borrow region.

Missing besides those:
- **Hidden-local intent.** The parts of a D8d call, E29's operand, E30's chain values, S4c's held values (each "lands
  at its target before it is held") and E31b's held place are all `Hidden`. Some must be built where their single use
  puts them. E31b's handle copy, by contrast, is storage of its own, lent as its reference. Scope cannot tell these
  apart.
- **Instance provenance.** G16b reports §8's errors once per generic, with notes up to the program's own use. That
  needs each instance's first request (site, requesting instance).

As a separate pass, scope can compute everything from typed bodies with SCC fixed points. One exception is S4d (risk
1), which check needs before scope runs.

**Plan shape.** `Built`, `Stored`, `Passed` and `MayBuild` cover most of stage 0's `cgWhereBuilt` and
`cgBoundScopeArg`. Missing:
- **`Scope.Region` for regions read at run time** (item 10).
- **A "nothing is built here" scope.** It is passed where a callee only reads: O12 values lent for reading, and
  `$`'s per-call scope for Str's receiver. Lowering must pass a live scope (str3 N1/N2 crashed on null), and the MIR
  verifier must reject any build into it. `Unset` cannot serve, since it means Program.
- **Capture scopes.** The scopes of a `FnVal.Lambda`'s Capture variables, and an `Adapter`'s instance scope, have
  nowhere to go (decision 48). Suggest that `Passed` at the Lambda/Adapter site lists them.
- **What `Block(root)` means in a constructor and a destructor.** In a constructor it is either the frame scope (T7c,
  E16a temporaries) or the instance (C2g). In a destructor it is either the private scope for own locals (F4) or the
  closing scope (C9a). Suggest root = the frame scope, with the instance/closing scope as `Var`.
- **Lowering's own allocations.** The verifier needs a list of what lowering allocates by its own fixed rules: text
  builder scratch, Str's scratch scope, hold slots, stand-ins, try-default slots. Every other allocation into a body's
  scope variable must come from a site the plan placed; that is what keeps `MayBuild` computable from the tree.

**M8.** M8 needs four things the contract does not give:
- **A body per global initializer.** K2 bakes globals one by one. G21, T29d, B9c and S18c ask for single globals on
  demand. B5a orders them by call summaries (Q3.3).
- **Keys for its decisions.** Nodes are immutable, so S18c asserts, K2 globals, T29d literal results and D13c
  zero-value decisions need keys. Stage 0 mutates the operand (`ctProven`, `codegen.c:7562`).
- **An invariant: the plan never changes a value.** Evaluation during checking lowers without placement, so any
  value-relevant decision in the plan would make check-time results differ from run-time ones. That rules out
  plan-carried S4d, D9b and implicit moves.
- **Value-changing summaries on demand during check.** K1a (with "incomplete" while a body is still being checked) and
  D9b's "the body writes its by-value array parameter" are both observable. `permSee(a, a)` read 5 baked against 70 at
  run time until the evaluator shared.

`-i` gets what it needs from MIR plus `Callee.Extern` and the extern's declaration (X3 write-back).

## 3. The six open questions

1. **Own loan check over the typed tree: change it.**
   - Run O39-O41's liveness conflicts (release or move under a live loan, spawned tasks) on MIR, as rustc's NLL does.
     Releases and holds are placed by lowering (question 2). Defer, joins, try exits, evaluation order (O33's
     arguments, O38's join pieces) and F3/N3 holds are explicit only there. On the tree, scope would have to derive
     all of them a second time, and decision 49's lesson was exactly that two derivations of one fact drift.
   - Keep these in scope, over the tree: confinement (O38's "where may a derived value go"), regions and reach
     (O33/O34) as placement, and the effect summaries.
   - This makes no cycle: the plan comes before MIR, and loans only produce errors.
   - If the tree is kept anyway, one CFG builder (tree to blocks, with releases, defer, joins and holds) must be shared
     by scope and lower.
2. **Releases, holds and destructor registration in lowering: agree,** if the tree states every ownership event:
   - every move is a `Take`, including `return x` of an owner local and `x := take p`;
   - every owner or destructor-bearing temporary that no slot receives has a site (str round 1's P2: an unreceived
     `Wrap(x)` was never destructed);
   - holds follow "may leave", which depends on the build mode (test builds hold on guaranteed checks, F3).
3. **One Init body per module in B5a order: disagree.** Use one body per global (`BodyOf.Global`) plus a per-module
   order computed as a summary once bodies are checked. Reasons:
   - B5a orders "after the globals each reads, directly or through calls", so it needs callee summaries that check
     does not have while it checks;
   - K2 bakes and refuses globals one by one;
   - a `:=` global's type, G21 lengths, B9c conditions and S18c asserts each ask for one global on demand;
   - B5a's cycle error is per global.
4. **Text rendering helpers made by lowering: agree, with conditions.**
   - Only Text calls user code from a helper. `Helper(Equal|Hash)` stay pure data (item 15).
   - The scope passing for Str is a fixed rule in the contract: the receiver's variables get `$`'s per-call scope, and
     Str's result scope is the builder's.
   - Scope checks each Str body for noBuild (the `MayBuildInto` walk; E11c's error) as a property of the body.
   - The MIR verifier holds lowering to that rule.
5. **Order of hidden scope arguments.** Derive it from the function type alone, through one function
   (`ScopeVarsOf(fnType)`) that check, scope, lower and eval share:
   - for each parameter in order, the receiver first, its own variable when it has one (bare reference, or by-value
     holding references; none when written `&x`);
   - then the result (the instance, for a constructor);
   - `Closing` only for destructors, supplied by the runtime;
   - captures never.

   A function made a value whose own `Vars` differ from its type's must be adapted or refused. Refusal (T22a) is
   correct for `&x` sharing (the bug above).
6. **`and`/`or` as Cond, compound assignment through `Place.Target`, loops as body plus post with `Jump` naming the
   block: agree.** To state:
   - `Target` names the nearest enclosing `Assign`'s place;
   - a `Borrow(Target)` is an S4d candidate (S4d covers `+=`);
   - E31b and R21 use `Seq` with hidden locals, not `Target`;
   - `continue` runs `post`;
   - `do ... for c` is `post = if not c { break }`;
   - S9e's one-shot loop is a body ending in `Jump(Break)`.

## 4. What would force backtracking

1. **S4d needs a §8 summary inside check.** This contradicts DESIGN 1.7's "no typing decision depends on a scope". A
   copy decided by the plan would make check-time evaluation (no plan) differ: `is` inside the callee sees the copy.
   Decide S4d by types in check (a spec change, see required item 8).
2. **D9b, K1a and B5a are value-changing summaries.** If they are computed "after every body", evaluation during
   checking cannot use them. They must be demand-driven over SCCs.
3. **Function types without their scope shape.** M7's ABI and M6's T22a would have to be reworked later. This is
   already a crash in stage 0.
4. **Shared default trees carrying sites.** Their placements collide, as in stage 0's decision-48 review (a second
   caller crashed codegen).
5. **A per-module Init body.** Its order cannot be fixed until check is done, and it blocks per-global baking.
6. **Loans on the tree.** This builds a second release and evaluation-order model beside lowering's (question 1).
7. **Decisions written back onto nodes.** S18c, K2, T29d and D13c need keys; nodes cannot be mutated.
8. **S8c fixed locals computed over typed bodies.** Check would have to check a body twice before an S8b local `if`
   inside it is decided (stage 0 retries). Compute "nothing writes it" over the resolved AST instead; D3a makes names
   exact there.
9. **Data as bytes.** It cannot hold T25d's static arrays of text.
10. **`NoMatch` null** (item 8) and **G10d twins** (item 6). Lower and eval would have to recompute S13a, and twins
    would be merged.

There is no M6/M7 cycle as long as the plan carries placement only and loans move to MIR, or share one CFG builder.

## Required before M5b

1. Add `Mark.Global` (or `Program`) for `&G` and `f&G()`. Parameters carry their marks as written: `Bare`, `Of(x)`
   shares x's variable, `None`. Fix the `Mark.None` comment.
2. Add marks for "written as a bare type variable": locals take their initializer's scope (O25a), and results get a
   `TypeVar` mark (O14b).
3. Keep a function type's scope shape with it (sharing between parameters; result built, borrowed from parameter i,
   or written as a type variable). Intern it beside the type, outside T22's identity, so that `ScopeVarsOf(fnType)`
   gives the ABI and T22a's obligations. A function whose own variables differ from its type's is adapted, or refused
   (T22a refuses `&x` sharing).
4. Say where §8 reads field marks (the constructor body's `Fields` locals), and give enum payload parameters' marks a
   home. Fill both for instances and twins.
5. `BodyOf`: one body per global initializer, with B5a's order computed after check, and `Ctor(t, instance)` for
   G10d twins.
6. A subtree holding a `SiteId` or `LocalId` is never shared. A default (D8a) is built per call with fresh ids,
   checked in its declaration's context (`Away` marks its file).
7. Tell transparent hidden locals (built where their use puts them: D8d, E29, E30, S4c, the E31b place) from storage
   locals (E31b's handle copy). Use a `LocalKind` or a `Mark`.
8. Decide S4d in check by types: copy the old value where what is built can hold the argument's type (an enum
   payload, a constructor field, an array literal element, a callee whose declared result type can hold a reference
   of that type). This needs a spec change to S4d. The candidate `Borrow` then becomes `Promote(Read(place), site)`.
9. Add sites to a `Read` of an own slot (`Scope.Region(site)` = the region made or read there) and to `Place.Temp`.
10. Add a `Check` to `Make` for `Fill`'s length (D14b, or `OUT_OF_BOUNDS` under try), and to `Collect`'s
    reservation.
11. `Data` becomes a constant aggregate whose elements may be constants (T25d's text arrays). Its identity is its
    written position (file, span).
12. `Match.NoMatch` is never null: an empty arm where nothing happens, `Exit(Unreachable)` where S13a holds.
13. `Helper(Equal|Hash)` is pure data. Any Eq- or Hash-consulting comparison or hash is elaborated into calls by
    check.
14. A Render operand that names an array (T7b) is a `Borrow`, read when rendered (E11b).
15. DESIGN 1.6/1.7 lists every interprocedural summary and its owner:
    - **value-changing, demand-driven over SCCs** (evaluation during checking needs them): D9b's written parameter,
      K1a, B5a;
    - **error- or placement-only, after check:** T25c/QC's by-value need, `roByArg`/`roToResult`, O17/O17b regions
      and handles, `MayBuild`/`MayBuildInto` and Str's noBuild, own effects O39-O41, borrowed own results O37,
      freshness O38, C2d's may-hold, the O26a/O18c "may keep", obligations O10b.

    The E31b handle exemption (G2) is scope's error; check elaborates every case the same way.
16. Write the invariant into the contract: the plan holds placement only, and nothing in it changes a value.
17. Write down the shapes listed in section 1, item 17: the default error's word, a valueless `Seq`, `Spawn`'s order,
    the task-clause handler's result, a destructor's `Params[0]`, `Callee.Body` for capture-free lambdas only,
    `IsCase` on null, zero `Lit`s of aggregates, and T29d's synthesized `Return`.

## Recommended

1. Run O39-O41's liveness on MIR. Keep confinement, regions and reach in scope (question 1).
2. Plan: add a "nothing built here" scope, carry Lambda/Adapter capture scopes in `Passed`, define `Block(root)` in
   constructors and destructors as their own frame scope, and list the verifier's exemptions.
3. Key S18c decisions by `(BodyId, Assert span)`, or give `Assert` a site. Key K2 by global, T29d by call site, and
   D13c's zero value by type.
4. D13c: check emits the constructor `Call`. Eval decides per type after check (all zero bits, the call, or "no zero
   value"), so check does not evaluate a constructor at every declaration.
5. Compute S8c's fixed locals over the resolved AST, so S8b local ifs are decided in one checking pass.
6. Record each function and type instance's first request (site, requesting instance) for G16b notes and §8's
   once-per-generic errors.
7. Cache MIR lowered without a plan apart from MIR lowered with one, and check (a debug mode) that their evaluations
   agree. That makes the invariant in required item 16 testable.
8. Leave room for `any Trait&` (planned, PRINCIPLES 5) in `Callee`: a dispatch through a table.
9. The stage-0 bug above: T22a should refuse `&x` sharing in a function made a value. This is a fix, allowed under
   QB.

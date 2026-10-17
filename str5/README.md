# Soundness review of 1268a8d (decision 49, round 5)

The tip was built in `/home/user/wt/rvstr5`. For comparison, `bbf115f` (round 4) and `e27b83b` (round 3) were extracted
with `git archive` into the scratchpad and built there. No worktree was added or edited.

- Reproducers are in `repro/`. Each starts with a comment giving what it shows and what each mode printed.
- Every other probe is kept under `s/`, `t/`, `u/` and `f/`. `q.sh` runs a program built `-b -s` and under `-i`;
  `run.sh` runs any set of modes.

## 1. The str4 reproducers

Every one is now refused, or runs correctly in every mode tried:

| Reproducers | Outcome |
|---|---|
| c1, c1b, c3, c5a, c7, c9, o1, pe2, pe3 | refused (E11c/O12 or C2d) |
| c8, pe1a, pe1b | refused with the new `error[T22a, E31]` |
| c2, c4, c5b, c7b | right answer under `-b`, `-b -s`, `-b -d`, `-b -r` (no TSan report) and `-i` |
| c6, under `-t` and `-t -d` | `1 passed, 1 failed`, no hang |
| every `held_*` | as before, including the two task ones under `-r` |

The str4 generators were re-run on this compiler:

- 372 Str callback programs: all refused.
- 20 mutation programs: all refused.
- 68 task programs: 66 run with no race, 2 refused.

## CONFIRMED

### C1. A call in a `catch default` takes the try's result scope; the walk never asks about it (use-after-free)

This was introduced in round 4 (`bbf115f`) and kept in round 5. The checked-index form (c1c) also fails on round 3.

Repros:

- `c1_trydefault_landing_call`
- `c1b_trydefault_mapget`
- `c1c_trydefault_index`
- `c1d_trydefault_in_helper`
- `c1e_trydefault_fnvalue`
- `c1f_trydefault_spawned_lambda`

```
fn f(n mut Node&) mut Node&n ? { if n.v > 0 { error }  return n }
fn g(v I64) mut Node& { return Node(v) }
fn (b Bag&) Str() String {
    b.head.next = try f(b.head) catch default g(5)      # or: try b.m.Get(7) / try b.arr[b.k]
    ...
```

**Codegen.** `cgTryDefaultStore` sets `targetScopeOverride` to where the try's result lives. That is
`op->cgResultScope`, or `cgWhereBuilt` for a checked index. A call in the default whose result scope is still landing is
handed that scope (`cgCallTargetAndArgs`: `SemanticBindingIsLanding && targetScopeOverride`). Here that scope is the one
`$` opened for the receiver.

**The walk.** `mbiCall` asks a callee only about variables `mbiBound` reports. A landing binding is not reported, and
`tgt`, which `mbiOperand` does pass as `dt`, is never consulted for it. That applies both to known callees and to the
`!known` branch, which reads only `b->boundTo`.

Results (`-i` prints `5` in every case):

| Form | `-b` / `-b -d` | `-b -s` |
|---|---|---|
| borrowed result (c1) | `100` | `use after scope closed`, exit 134 |
| `Map.Get` (c1b) | `100` | `use after scope closed`, exit 134 |
| checked index (c1c) | `99` | `use after scope closed`, exit 134 |

**The holding check does not catch it.** In c1d the miss sits in an ordinary helper. The helper's memo for `&n` says
"no" and is relied on, but the helper allocates nothing itself: it only passes `&n` to `g` as `g`'s landing result scope.
`cgCheckMayBuild` sees only allocations made in the body being emitted, so it stays silent.

The same failure was reproduced through each of these:

- a default that is a conditional, or `id(g(5))`;
- a method;
- a generic;
- a call cycle;
- a function value;
- a clause with a block;
- an assignment;
- `defer`;
- an argument;
- a transient lambda;
- a spawned lambda (c1f; `-r` shows no race, because the task builds in its own part, but `-s` shows the use-after-free).

Not affected:

- a spawned try's own default, which C9's rule refuses;
- a constructor default, which `mbiPlaced` catches.

**Suggested fix:** in `mbiCall`, in both the known and the `!known` paths, count a variable as bound when
`tgt && SemanticBindingIsLanding(op, w)`.

### C2. A local O26a moves into a borrowed result's home: its slot is not a build to the walk (internal compiler error)

This was introduced in round 4; `e27b83b` refused it.

Repros: `c2_moved_local_slot_ice`, `c2b_moved_local_slot_kept_ice`.

```
fn h(n mut Node&) mut Node&n {
    p := P2(n)
    return p.n
}
fn (b Bag&) Str() String {
    x := h(b.head)
    ...
```

- `cgVarDecl` allocates `p`'s slot in `valueHome`, which is `&n` (`storeInResult`).
- The walk's `STATEMENT_VAR_DECL` counts only what the initializer builds at `mbiDeclIs`, never the slot itself.

So `-b`, `-b -s` and `-b -d` all stop with:

```
internal compiler error: 'h' builds where '&n' lives
```

`-i` runs. The holding check is what stops c2b, where a borrow of `p` is kept in the receiver's node, from being a
use-after-free.

**Suggested fix:** a site in `STATEMENT_VAR_DECL` when `storeInResult` and the home - `valueHome`, else the result
scope, as `cgVarDecl` reads it - is the variable asked about.

## PLAUSIBLE

None beyond C1's family.

C1's root - an outer `targetScopeOverride` reaching a landing call - was looked for at every other site that sets the
override. Every other site builds into the scope itself (a promotion, fresh text, a constructor's `%here`), so the walk
already refuses there. Conditional and match arms, nested `id(g(5))`, and arguments outside a default were all refused
(`s/s84`-`s/s86`, `s/s116`-`s/s119`).

## Pre-existing

Only the checked-index form of C1 (c1c), which also fails on `e27b83b`.

## What held

**Question 2.** About 105 targeted Str shapes, in `s/`. Each was refused, or (two) accepted and running correctly:

- direct stores, aliases and cursors;
- conditional, match and try targets, and constructor defaults;
- `defer` and catch blocks;
- lambdas: frame, transient, stored, returned by a helper, nested, spawned;
- named function values, global ones and computed callees;
- Call adapters;
- spawn: call, lambda, target, clause default, borrowed result into a local;
- generics, a generic Str, `match T`;
- trait defaults. A default named Str is not consulted by `$`; it runs the default rendering.
- call cycles, with the head or a member building;
- destructors, building through bare and `&p` fields, a call, or a spawn;
- E31b, through handle elements and a field write-back;
- by-value, private, enum and declared-array receivers;
- value calls under conditional, match, parallel and destructuring;
- parameter defaults.

**The join builder** (`u/`, under `-t`, `-t -d` and `-t -s`). The unwind chain stays intact after:

- a failed check, `done` or `fail` inside a Str mid-build;
- a helper that grew a builder;
- leaving a Str-reaching join by `return`, by an error, or by `continue` from a piece.

**Question 3: nothing half-removed.**

- `adapterHere`, `mbiDeps`/`mbiOwnFnParam`/`mbiFnArgBuilds`, `SemanticTaskBuildsInto` and `settleTaskStandins` are gone.
- Every non-`%here` task binding goes through `cgSpawnSubScope`.
- The only frame closures left are `cgEnvOnStack`: transient arguments, and frame locals decided by
  `settleFrameLambdas`.
- No runtime function is orphaned, and the SPEC and CLAUDE.md wording matches the reverts.
- Lambdas kept by a constructor pun or field, an enum payload, or `List.Push` all get heap environments (`f/`).

**Question 4: PE2.** 39 shapes, in `t/pe2_*`, are all refused with C2d (or O25/O25c):

- a local, a copy chain, a for-in element, a slice, a nested view, a by-value view;
- a frame or transient capture, a spawned capture, `defer`;
- a lambda parameter, a method;
- a borrowed result (`pick`), a generic `id`;
- conditionals, a match binding, `as`;
- holders (field, by value, by reference), a constructor field, a Call adapter, `List.Push`;
- an index store into a derived array.

**Scope fuzzer.** 450 programs (seeds 9100-9249 and 20000-20299): 2,141 scenarios run, 3,259 refused, 0 findings. Its
generator writes no Str, so it says nothing about C1 or C2.

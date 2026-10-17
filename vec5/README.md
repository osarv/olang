# Soundness review: own / Vec after the fourth fix round (7f1a37a)

This is a read-only review of `wt-own` at 7f1a37a: 98b7c74 (the vec4 fixes), 66007f8 (docs), 7f1a37a (fuzz record).
It was built in `/home/user/wt/rvvec5` with `make -j2 build/out`. Comparison compilers were built from `git archive` in
this directory: `base-1bcfb72` (the previous tip) and `base-8548b56` (master). Done 2026-10-11 between 18:58 and 20:10
CEST.

```
cd /home/user/review/vec5 && ./runall.sh            # every repro; output in runall.out
./run.sh FILE.olang                                # one program
```

Each run builds the program three ways with 7f1a37a:

- `-b -d -s` (scope sanitizer)
- `-i` (the reference answer)
- `-b`

It then asks 1bcfb72 and 8548b56 whether they accept the program. Every repro churns the arena between the release and
the read.

## Verdict

**The round's own changes hold, and add no hole. Own is still not sound: three classes remain, all older than this
round.**

What this round added held against every evasion I tried:

- F1': the shared walker, checked field by field below;
- S17: assert messages;
- the global value copy.

The R fix ("a local built in an own region holds a loan") closes vec4's six repros. It is incomplete in two ways that
were already on 1bcfb72 and master:

| | Finding | Severity | Introduced in | Repros |
|---|---|---|---|---|
| R2a | A constructor field built in a parameter's scope (`y String&x = <new>`, `y := mk&x(n)`, or a local typed `&x`) is not "held" by C2d. The instance outlives the argument's storage | **high**: silent wrong output under `-b`. A §8 hole on master, without own too | older (C2d's hold analysis); with own, also an O38 loan miss | 7 |
| R2b | Naming a borrow as a scope (`d mut String&x`, `mk&x(5)`) after its owner released it. The borrow `x` is never *read* again, so the release is accepted, and the build goes into the freed region | **high**: silent when the freed memory is reused, a crash otherwise | older (own's first cut); R's fix does not cover it | 4 |
| O33 | The argument-order check (`setN(Node(9), s.cur)`, O33) is skipped where the later argument reads the region inside a match value. It is also skipped for a spawned call. The temporary is built into a region slot that has never been set | medium: a deterministic crash (null scope) at the call site's first run | older (own1's O33 fix) | 2 |

Recommendation:

- Merging 7f1a37a is an improvement over 1bcfb72: it closes F1', R as reported, and X, and it regresses nothing I
  found.
- R2a and R2b are silent use-after-frees. Fix them, and O33, before own is called sound.
- R2a should be fixed on master as well, since it needs no own.

---

## CONFIRMED

### R2a (older, on master; a §8 C2d hole and, with own, an O38 miss). A constructor field built in a parameter's scope

Repro without own: `repro/r2a_ctor_field_no_own_block.olang`.

```
type H struct(x String&, n I64) {
    y String&x = $n "-new-text-in-x's-scope"     # new text, built where the argument lives
}
fn main() ? {
    h := H("outer", 1)
    for i in range 2 {
        t := $i "-inner-block-text"
        h = H(t, 5 + i)                          # y built in the loop body's arena; h outlives it
    }
    churn()
    println(h.y)
}
```

Results:

| Run | Output |
|---|---|
| `-b -d -s` | "use after scope closed", status 134 |
| `-i` | `6-new-text-in-x's-scope` |
| `-b` | `uvwxyz0123456789s-scope` (the churn's text, silently) |

1bcfb72 and master accept it.

**Cause.** C2d's hold analysis (`ctorComputeHeld`: `holdStmt`, `holdMentions`, semantic.c ~26320-26440) groups
variables by the values that *mention* them. A field whose **written type** names a parameter's scope (`y String&x`)
puts new storage in that parameter's scope, but its initializer does not mention `x`, so `y` and `x` are never joined.
As a result:

- `ctorHeld[x]` is false and `ctorScopeUnheld` says x's binding "says nothing about the instance";
- §8 lets the instance outlive the argument's block;
- with own, `calleeMayKeepArg(ctor, x)` is false, so `ownLoansIn` spares the argument's loans, and the instance holds
  no loan on the region.

Variants, all confirmed the same way (sanitizer stop, `-i` right, `-b` silent garbage):

| Repro | Shape |
|---|---|
| `r2a_ctor_field_no_own_function.olang` | through a plain function `fn mk(p String&) H { return H(p, 5) }` |
| `r2a_ctor_scope_argument_no_own.olang` | `y := mk&x(n)`, an E25 scope argument naming the parameter |
| `r2a_ctor_local_typed_no_own.olang` | a constructor local `t String&x = ...` then `y := t` |
| `r2a_ctor_field_in_param_scope_own.olang` | `h := H(c.text)`, an own slot's borrow; `c.text = ...` releases the region h.y lives in |
| `r2a_ctor_field_via_function_own.olang` | the same through `mk(c.text)` |
| `r2a_ctor_field_global_own.olang` | a global `G H = H(Docs.title)`, the global-copy path (`T String = Docs.title` relaxed this round): kept loans are empty, so it is accepted |

`work/r_ctorfield2.olang` is the same through `l.Push(H(c.text, 5))`, read after the release. The sanitizer stops it.

Over a Vec view (`work/r_ctorfield4.olang`, `H(v.View())`) it runs clean, because a result region is built
elsewhere.

**Fix.** In the hold walk, building in a parameter's scope should count as a mention of that parameter. That means
joining:

- a declaration whose written scope (`var.type.scopeParam`, or its `valueHome`) is a constructor parameter's scope
  variable, with that parameter;
- a call given a scope argument naming one (E25), with that parameter.

`ctorHeld` then says the instance holds x:

- without own, C2d holds the instance to x's scope;
- with own, `calleeMayKeepArg` keeps the argument and the loan is made.

This sits in the same analysis as vec4's fix to `holdStmt`. Building into x's scope is a mention of it.

### R2b (older: own's first cut; R's fix does not cover it). A borrow named as a scope after its release

The main repro: `repro/r2b_after_release_region_reused_silent.olang`.

```
c := CB()                         # text own mut String&
x := c.text                       # a borrow; never read again
c.text = $2 "-zzzz..."            # releases x's region: accepted, x is not live
e := CB()                         # malloc reuses the freed region's block
d mut String&x = $5 "-new-text-in-a-reused-region"   # built through x's stale region slot: into e.text's region
e.text = $3 "-wwww..."            # frees what d points at
churn()
println(d)
```

Results:

| Run | Output |
|---|---|
| `-b -d -s` | "use after scope closed", status 134 |
| `-i` | `5-new-text-in-a-reused-region` |
| `-b` | `2999abcdefghijklmnopqrstuvwxy` (silent) |

Variants:

| Repro | Shape | Result |
|---|---|---|
| `r2b_typed_local_after_release.olang` | `d mut String&x` right after the release | segfault, status 139, in `-b -d -s` and `-b`; `-i` correct |
| `r2b_scope_argument_after_release.olang` | `d := mk&x(5)` right after the release | segfault, 139 |
| `r2b_typed_local_loop_after_release.olang` | the natural form: `d mut String&x` in a loop that replaces `c.text` at the end of each turn. The second turn builds into the region the first released | the first line prints, then a segfault; `-i` prints all three |

valgrind on the `-d` build of `r2b_typed_local_after_release` shows the cause. It reports "Invalid read of size 8 in
`__olang_scope_alloc_a` ... inside a block of size 81 free'd by `__olang_own_free`" (line 9).

**Cause.**

- `ownHomeLoan` gives `d` a loan on the region *from its declaration on*, but nothing checks that the region is still
  alive at that point.
- A `:=` borrow's loan starts at a slot read, which is always current. `&x` instead names the region of a read made
  earlier.
- The liveness scan (`ownStmtReads`/`ownReadsOp`) counts only `READ_VAR`/call reads of `x`. A written scope `&x`, or a
  scope argument `f&x()`, is no read of `x`, so `x`'s holder is dead at the release.
- Codegen builds through the region's slot (`cgRegionSlot`), which still holds the freed region.

All three compilers accept every variant.

**Fix.** A statement that builds into region R should count as a use of every holder with a loan on R, in
`ownHolderLive`. Building into R means declaring or assigning a local whose scope (type, `valueHome`, `refsHome`) is R,
or a scope argument binding R. The simplest form: `ownReadsOp`/`ownStmtReads` treat a `VAR_DECL` whose
`var.type.scopeParam`/home is x's region, and a call whose scope argument names x, as reading x. The other option is to
refuse naming a borrow's region unless the borrow is live there.

### O33 (older: own1's O33 fix). The argument-order check misses two shapes

Repro: `repro/o33_order_match_value_argument.olang`. It is `checks/cases/o33order.olang` with the region read moved
into a match value:

```
setN(Node(9 + i), match k { case 7 { unreachable } case _ => s.cur })
```

The second shape is `repro/o33_order_spawned_call.olang`:

```
join { spawn setN(Node(9 + i), s.cur) }
```

Results, both:

| Run | Output |
|---|---|
| `-b -d -s` | segfault, status 139, at the first iteration |
| `-b` | segfault |
| `-i` | `9 10 11 12` (match) and `9 10 11` (spawn) |

1bcfb72 and master accept both. The plain `setN(Node(9), s.cur)` is refused (O33), as before.

**Cause.**

- `ownArgOrder` asks `ownOpContains(laterArg, R->regionSlot)`, which walks `args`, `chainOperands` and `callee` only.
  It does not walk `comprBody` (a match value, a SEQ), nor catch clauses. It is one of the hand-kept walkers left in
  the own pass.
- `ownArgOrder` runs from `ownOpWalk(call)`. The `STATEMENT_SPAWN` case of `ownStmtWalk` walks the call's arguments and
  callee but never the call node itself, so for a spawned call the check never runs.

In the IR (`o33_order_match_value_argument`): `Node(9+i)` is allocated with `__olang_scope_alloc_a(load %loc.96)`
before the match evaluates `s.cur` and stores the region into `%loc.96`. `%loc.96` is null at entry, so the first call
crashes.

The slot is per read site, so a call site's first run always sees null. The result is a deterministic crash, not a
silent use-after-free. I could not make a later run reuse a stale region without the first one crashing.

**Fix.**

- `ownOpContains` should use `CodeDeepOp`, so that a match value's clauses, a SEQ's statements and catch clauses are
  searched.
- The spawn case should call `ownArgOrder(call)`.

PLAUSIBLE, not reproduced: a later argument's catch default reading the slot is missed the same way. I could not make
a program bind the parameter's scope through one: two reads of a slot are two regions, which leaves the binding
ambiguous.

## PLAUSIBLE

Only the catch-default form of O33, above.

## What held

### F1': the walker, checked field by field

I checked `StmtEachChild`/`OpEachChild` (semantic.c ~1563-1673) against `semantic.h` field by field.

**`struct statement`**:

- Every field that holds code is visited: `target`, `spawnTargets` (NULL-safe), `op`, `fillValue`, `assertMsg`,
  `forInit`, `forPost`, `block`, `elseStmnt` (an `else if`'s condition is its `op`), `caseAlts` (`test`, each
  `binds[].from`), `caseGuard`, `matchHold`, `matchCases`, `nomatchBlock`, `nomatchValue`, and `catchClauses` (`block`,
  `dflt`, `taskCall`).
- These hold no code:
  - `var`, whose initializer is `op`; a FOR's is `forInit`;
  - `caseBindings` (vars) and `joinErrors` (types);
  - the flags, `line` and `file`;
  - a clause's `matches`, `taskFn` and `givesValue` (`taskFn`'s body is a lambda, its own function).

**`struct operand`**:

- Visited: `args`, `chainOperands`, `callee`, `comprBody`, `catchClauses`.
- These hold no code of their own:
  - `checkRoot` (an ancestor);
  - `landsWith` (its entries are added from `args`, ~11310);
  - `placeOf` (the statement's target, reached as `ROLE_TARGET`);
  - the spread members (each reads the source through `args[0]`);
  - `scopeBindings`, `lambdaCapScopes`, `ownCopyReads`, `ownResultRegions` and `tryDefaultType` (data);
  - the `cg*`/`ct*` fields;
  - `pendingLambda`.

**`struct var`**: `initExpr` (a global's initializer) is walked by `ownForEachBody` as a `VAR_DECL`, and `declInit` is
the statement's `op`. A lambda's or a function's `codeBlock` is a body of its own.

`CodeDeep*`'s `stop` handling is right in all four users:

- `ownFreshReturns` returns `CodeDeepBlock`;
- `stmtsWrite`, `ownOpReads` and `ownStmtReads` return its negation.

Roles:

- Lambda bodies are never walked as inline code, which is correct for returns and writes. Reads go through
  `lambdaCaptures` of a `READ_VAR` or call of the lambda, including a task clause's `taskCall`.
- Deferred code is walked in place by the deep scans, which is conservative for reads, writes and returns. Liveness
  treats defers separately (`ownHolderLive` scans each frame's earlier `DEFER`s, which run at block exit), and
  `ownTaskLoans` rewalks them.
- `ownStmtWalksRole` names every role each case walks. The `SPAWN` case names `CATCH_*`/`TASK_CALL`, so a task's
  clauses are not walked as the spawner's code.

In `ownFreshValue` I tried, and found refused or correct:

- a local repointed by a `for` post clause, a parallel assignment, a destructuring or a `take`;
- a for-loop variable or a match binding as the returned local (no `declInit` or `decls != 1`, so not fresh);
- recursion (least fixed point).

Every vec4 repro is refused (`f1a`-`f1h`, `r1*`, `x1`).

Other walkers in the own pass that are not on the helper:

- `ownLoansIn`: operand-level by design. Catch blocks are walked as statements, and a default cannot see its block's
  locals (`work/dflt_blocklocal`: "unknown name").
- `ownOpWalk`: complete.
- `ownOpCalls`: conservative.
- `ownLoansOfStmt`: shallow by design.
- `ownOpContains`: incomplete, giving O33 above.
- `mbiStmt` (decision 49's walk): complete for statement fields, and held by codegen.

### R: evasions that are refused (O39) or run clean

| Work file | What it tries |
|---|---|
| `r_chain` | a chain of `:=` locals |
| `r_param` | a callee building `String&p` and returning it |
| `r_ctorscopearg` | `H&x(5)` |
| `r_destruct` | `d, k := two&x(5)` |
| `r_spawn` | `spawn d = mk&x(5)` |
| `r_spawnlambda` | a spawned lambda typing a local `&x` while the spawner releases |
| `r_lambda` | a lambda over a value holding the borrow (C2d/O14) |
| `r_valuearray`, `r_valuetext` | value results given `&x` (built in the block: clean) |
| `r_resultregion_inner*`, `r_viewregion_push` | locals typed in a Vec view's result region, assigned in loops and kept across `Push`: built in the function's scope, clean |

### X (S17)

Each of these gives the same output and status under `-b`, `-b -d -s` and `-i`:

- a lambda in a message, returning (`x_lambda`) or letting its own error out (`x_lambda2`);
- deferred code in a message's catch block (`x_defer`);
- `done` (`x_done`) and `fail` (`x_fail`) in a message;
- a `join` with a spawn in a message (`x_spawn`).

`try join` (`x_tryjoin`) and an R21 checked store (`x_r21`) letting an error out of a message are refused, S17.

### The global value copy

All of these are refused, O38 or O10c:

- `Pair<String&, I64>`;
- a `List` from a helper, or pushed at run time;
- `Map.Put` of a borrow;
- an enum with a `String&` payload;
- `type Names extends Array<String&>`;
- `Array<String&, 2>`;
- `Box<String&>`;
- a copy of a global's own `Pair`;
- a function value returning a borrow (O10).

The files are `work/glob/g1`-`g6`, `g9`-`g12`. The one exception is R2a's constructor field (`g7`).

### Regressions

- vec4's 72 work programs: 57 refused, and the 15 accepted all run clean and agree with `-i`.
- vec1-vec3 repros: all 23 refused.
- own4-own7 repros: 20 refused. The 6 accepted (leak fixes and controls) run with `made == dropped`.

## Fuzz

The scope fuzzer in own mode was run on fresh seeds 800-1000 in `fuzz/`, built from the worktree's `fuzz/*.olang`,
with `OLANG=/home/user/wt/rvvec5/build/out`:

```
build/fuzz.debug scope 800 201 2 12 own
```

Result: **201 programs, 589 scenarios run, 1823 refused, 0 findings** (`fuzz/fuzz800.log`).

The generator writes none of this round's findings:

- no constructor field typed in a parameter's scope;
- no `&x` naming after a release;
- no region-reading match value or spawn behind a temporary argument.

## Over-rejections (secondary)

None new found. Two checks:

- An assert message in a constructor calling `show(name, n)` does not make the instance hold `name`
  (`work/or_assertmsg_ctor`, accepted). The deeper hold walk joins more, but only through fields that can carry
  references.
- vec4's over-rejections 2 and 3 stand as recorded there. Its `o1`-`o3` are accepted and run.

## Files

| Path | What it holds |
|---|---|
| `repro/` | the confirmed findings (r2a\*, r2b\*, o33\*) |
| `work/` | everything tried, held or not; `*_accept.txt` are the re-runs of older reviews' programs |
| `runall.out` | the last full run |
| `run.sh` | one program, three ways plus the older compilers |
| `runall.sh` | all the repros |
| `q.sh` | compile only (accept/refuse) |
| `diff-semantic.patch` | this round's semantic.c diff |

`base-1bcfb72/build/out` and `base-8548b56/build/out` are the comparison compilers, and `fuzz/build/fuzz.debug` is the
fuzzer. Their object files and the fuzzer's work tree were deleted.

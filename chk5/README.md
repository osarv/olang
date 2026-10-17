# chk5 - soundness review of 771a922 (base c2a38f0)

"O26a/O18c: a view's function keeps nothing it cannot hand back, a field of a call's result passed on, one error for an
unknown member, study 6's checker findings."

Built `/home/user/wt/rv10` at 771a922 ("new"), and c2a38f0 in a scratch worktree ("base", since removed - to run
`repro/run.sh` again: `git -C /home/user/olang worktree add --detach /home/user/wt/chk5base c2a38f0 && make -C
/home/user/wt/chk5base`). Each program was built with `-b` and `-b -s` and run, and run under `-i`, on both compilers;
the concurrent ones under `-r` too. A third, instrumented copy of 771a922 (also removed) printed every O26a decision,
`calleeMayHoldArg` answer with the callee's obligations, `landDeclByObligations` landing, `projLanded` site and pre-pass
landing, so that "the local stayed in its block" was observed, not inferred. Reproducers are in `repro/` (each file
starts with what it shows and the output); `repro/run.sh` builds and runs them all with both compilers and prints peak
RSS for the growth ones. Scratch programs are in `work/`.

**No use-after-free was found.** Every relaxation that let a value go somewhere was either refused at the call site by
an obligation it was missing, or built in a scope the checker had agreed to. Two regressions against base did turn up:
the r05 change makes some loops grow memory without bound, and the dotted-call release refuses some correct recursive
programs.

## Confirmed

**1. NEW: r05 makes loops grow memory without bound, the resultgrowth class the commit set out to remove**
(`repro/r05_projection_growth.olang`, `repro/r05_projection_growth_value.olang`). A `:=` from a field of a call's result
(`t := lx.next().text`, `x := mk(base, 64).p`) now lands that call by its obligations (`projLanded` ->
`landDeclByObligations`). That means the shortest scope that must outlive the result scope - here the lexer's, or
`base`'s, both outside the loop. Everything the callee builds fresh in its result scope lands there too: a rendered
token text, or a new `Array<I64>(64)`. It stays there until that scope closes. On base the call was landed in the loop
body (`landCall(rhs, NULL, blockDepth)`) and reclaimed each turn.

Measured peak RSS, same output on both compilers:

| reproducer | new | base |
|---|---|---|
| lexer, 30M tokens | 206-239 MB | 1.6 MB |
| `mk(base, 64).p`, 2M iterations | 1,032,928 kB | 1,592 kB |

Sound: `-s` is clean, and pushing such a `t` into a list kept with the lexer gives the right text (`work/r5uaf`). But it
breaks principle 1 for an ordinary lexer/parser loop, and `resultviews` under `ulimit -v` does not catch it.

The whole-call form (`tk := lx.next(); t := tk.text`) already grew on base, 239 MB
(`repro/r05_wholecall_growth_preexisting.olang`): O18c's `landDeclByObligations` puts the fresh part of a call's result
wherever its existing part lives. r05 extends that to a field read off the call. Only three corpus sites take the new
path (shared.olang 10986, 15615, 15636), and none in std.

**2. NEW over-rejection: the dotted-call release reads a callee's obligations before a cycle's late ones exist**
(`repro/o26a_cycle_overreject.olang`, minimal form `repro/o26a_cycle_overreject_min.olang`). A parser whose `term` and
`expr` call each other keeps its token through the cycle:

- `term` is checked first and checks `expr` on demand.
- `expr` calls `term` while `term` is still in progress, so `expr`'s obligation "t outlives the result" is only added
  later, by `dischargeLateObligations`.
- `parse`'s `t := Tok("tok" $k, 0); return p.expr(t)` asks `calleeMayHoldArg(expr)`. It sees no obligation, so it
  leaves `t` in the block.
- The late re-hold of `p.expr(t)` then reports O10c at 28:14, with a note pointing into `expr` and no usable fix.

Base took every dotted call to keep its arguments, moved `t` into the result scope, and builds and runs it clean under
`-b`, `-b -s` and `-i` ("e tok3").

The late re-hold refuses it in every position tried - a conditional, a match value, through a local, wrapped in a
constructor, a spawn target (`work/cyc4*`, `work/cyc5`) - so this is never a use-after-free. Plain calls had the same
problem on base already, through `calleeMayKeepArg` (`repro/o26a_cycle_plain_preexisting.olang`, refused by both). The
commit carries it over to methods and module functions, which are the parser's natural spelling.

**3. NEW, diagnostics: the C2d error for `x := Env&c(local)` is reported twice at the same token**
(`repro/c2d_e25_duplicate_error.olang`). This comes from the r07 change: the declaration now judges the instance where
the scope argument puts it, and the following assignment's check reports the same thing. Base reports it once. Both
refuse the program, which is correct. B11's one-error-per-cause rule is broken.

## Pre-existing, found on the way (same on c2a38f0)

- **The whole-call growth** (finding 1).
- **Late obligations and `calleeMayKeepArg`** (finding 2).
- **O10d over-rejection: borrowing an element of an array held in a reference field of a reference parameter**
  (`repro/preexisting_o10d_element_receiver.olang`). `sizeFn(g.arr[0])` and `g.arr[0].size()` are refused as "lives in
  this function's own scope". The same through a local (`a := g.arr; a[0].size()`) or in `main` compiles.
- **The commit's own example shape cannot be written.** HISTORY and the commit message cite `g.infos[k].size(i)` as the
  shape `calleeThroughDot` resolves. With `infos` an array field and `g` a reference parameter, the receiver borrow is
  O10d, on both compilers (`repro/preexisting_o10d_history_example.olang`). That branch of `calleeThroughDot` is reached
  only through a local or a by-value receiver, and no corpus test exercises it.
- **Code nit:** in `callAround`, `bool isMethod;` is read (`*idx = commas + (isMethod ? 1 : 0)`) even when
  `calleeThroughDot` returned NULL before setting it. This is harmless, since the index is unused then, but it is an
  uninitialized read.

## Plausible (traced, not reproduced)

- **The r05 growth also applies to reference results.** `n := mkNode(t).val`, with `mkNode` returning a fresh `Node&`
  that holds `t`, follows the same `projLanded` path for a reference call. The node of every iteration should land
  where `t` lives. Same class as finding 1; not measured separately.
- **The pre-pass could grow memory the same way, but this is no regression.** It lands a never-stored call by its
  obligations, so a user `At` that both builds something fresh and is tied exactly to its collection would put what it
  builds where the collection lives, each time a condition reads it in a loop. Base refused such a call (study 6's
  `$mods[i].name`), so nothing that compiled before changes. In the corpus the pre-pass lands only prelude `At` copies,
  which build nothing.

## What held

**Item 1, O26a's dotted-call release.** Each channel was tried in the O26a shape: a local passed through a method or
an imported module's function into what the function returns or into its receiver. Every one either moved the local
(the callee's obligations said it keeps it) or was refused at the call:

- a global: O1b, in the callee;
- a lambda the callee calls: T22a;
- a capturing lambda stored or spawned: T22a and O10c;
- a task storing into the receiver;
- a field of a field;
- an `&p` field of the receiver, which gives the derived obligation `[&i > &c.p]`;
- an `&p` field reached through another field: O23;
- a generic instantiation's method (`Box<Info&>.set`);
- an E31b write-back (`h.items[0].ref = i`);
- an operator method, `+` or by name: left in the block and refused at the call, the same as base;
- a by-value receiver writing through its reference field;
- a `&p` cursor result: `cur` holds `[&i > &result]`;
- a returned capturing lambda;
- a foreign type's method now found by `exprReadsName` (`l.Iter()`, `l.ToArray()` on a local List): moved, and the
  results run clean.

Argument indices were right with commas inside written type arguments, a constructor's arguments and a lambda's body
(`work/cm1`, `work/cm2`). Unresolvable receivers stay conservative (keep): call results, List indexing, alias chains,
`Call` fields, trait defaults. Externs are "keep nothing", as O17 already says. Numbers and Bools cannot be referenced
(T24), so never moving them is sound. A Plus that keeps its argument behind an assignment to a number field
(`h.n = h + i`) leaves the local in the block on both compilers and is refused, so it is no regression.

**Item 2, `landedCallRefsScope`.** All of these were refused where the source is shorter than the target, on both
compilers (`work/i2a`, `work/o20*`):

- an element of an array result;
- a payload through `as`;
- a conditional over two calls;
- a `try ... catch default`: R11 keeps existing storage out of the default (`work/td1`).

Where they compile they run clean under `-s`:

- field chains;
- a never-stored `$...` read;
- tasks: `work/tsan1` is clean under `-r` and `-s`.

The scope it reports, where the result scope landed, is a lower bound on everything a value result holds, because the
callee's return required each argument it holds to outlive it. A late obligation that breaks that is re-held and
refused.

**Item 3, r05 and the pre-pass.** For a field, element, slice or `as` payload of a landed call - including a fresh array,
an enum payload and constructor fields - the checker's claim and codegen's placement agree. The IR passes the landed
scope as the callee's result scope, and the programs run clean under `-s` and `-d -s` (`work/r5uaf`, `work/sl1`,
`work/ct1`). The `&p` per-instance case was refused (`work/p1`). The match-subject case was refused on both compilers
(`work/m1`). The pre-pass lands only calls that are still landing at the statement's end, at a scope that outlives the
block.

**Item 4, r04.** All of these were refused:

- a struct value holding a Map of itself, put into a longer map (`work/r4a`);
- a user generic `Box<Value>` (`work/r4b`);
- a Map value reaching a loop-local environment, directly and through a local (`work/r4c`);
- a plain constructor whose by-value parameter's type is declared after it (`work/o4c`).

`assignImplicitParamScopes` skips parameters that already have a scope, and an instantiation's constructor body is
never built early (`ensureCtorBodyBuilt` returns for an instantiation), so no checked body misses the new variable.

**Item 5, r07.** Holding a block's local through `Env&c(...)` is refused, whether it can be stored through
(`c2de25blocklocal`) or not. The latter was accepted at the declaration on base (`work/e25a`, `work/e25b`). The scope
argument is where codegen builds, so judging there is exact.

**Also:** the commit's five new corpus tests pass under `-t -d -s` (`work/c5`).

# Review of the lang25 batch (wt-lang25 @ 43f1754)

Read-only review of `git diff origin/master...43f1754` (merge base 9b044c4), built in /home/user/wt/rvl25 by
`make build/olang` (bootstrap fixed point reached). Master's behaviour is from /home/user/wt/merge/build/olang (b7dcfc1, a
memory-only commit on master). Reproducers are in `repro/`, each a script taking the new compiler and, where it compares,
master's: `repro/NN_*.sh NEW_OLANG [MASTER_OLANG]`. `repro/run3.sh OLANG FILE` runs a program built plainly, built
`-debug -sanitize` and interpreted.

## Findings, ranked

### 1. CONFIRMED - a `Call` with a contract passed as an infallible function value miscompiles (`repro/06_call_adapter_errors.sh`)

`check.olang`'s `adapter` (the instance-as-function-value path of E31, ~line 5733) compares the parameters and the result
with the function type but never the error sets, though its comment says "errors in order". Pre-existing, but the batch
makes it reachable from correct code: D17b gives every function with conditions `? ArgumentError`, so a master program
passing an instance whose `Call` has a contract where `fn(x I64) I64` is wanted - which compiled and printed `run 1` on
master - compiles after `olang fix` and prints `run 0` (built, and under `-debug -sanitize`; `interpret` prints `run 1`).
The other direction (an infallible `Call` where `fn(...) ? E` is wanted) reads the result as an error code at run time
(`run2 -1`) and as a value under `interpret` (`run2 101`): the evaluator and the run time disagree.

### 2. CONFIRMED - `olang fix` silently changes what pre-batch code computes (`repro/01_fix_changes_meaning.sh`)

On a file written for master:

```
x := 2 * checked a[n] + 1     # master 5   -> fix writes "2 * try a.Get(n) + 1"   -> 6
y := -try f(n) + 1            # master 0   -> fix leaves it                        -> -2
```

The file compiles after the fix and `fix` prints only the file's name. Three causes compound:
- `checked_migrate` writes `2 * try a.Get(n) + 1` for `2 * checked a[n] + 1`: old `checked` bound as tightly as old
  `try`, so the faithful rewrite is `2 * (try a.Get(n)) + 1`. It emits the new reading of an old construct.
- `try_migrate` wraps such sites only with `--old`, and `olang fix` runs it without (decision 13 of PROGRESS.md), so
  every "try after an operator, followed by one" in code of any earlier time takes the new meaning; the tool only lists
  it ("by hand: ... a try read on past '+'").
- That listing is never shown: see 3.

So `fix`'s promise ("a file from any earlier time reads in the language of today") does not hold for this change.
`not try g() or h`, `-try f() + 1` and `2 * try f() + 1` all change value with no diagnostic anywhere.

### 3. CONFIRMED, pre-existing - `x.Len()` on a type with no `Len` compiles with no diagnostic (`repro/02_fix_hides_listing.sh`)

`x.Len()` where `x`'s type declares no `Len` (and is no array) gets no error. Inside an `or` it lowers to `false`
(`x.n > 5 or x.Len() > 1` prints `false`, built and interpreted); alone it fails in lowering ("the self-hosted compiler
cannot build this yet ... unknown type"). `compiler/fix.olang` decides whether to show a tool's output with
`r.Status > 1 or body.Lines().Len() > 1`, and `LineIter` has no `Len`, so the second half is always false: **`olang fix`
never shows what a tool left for a person** - try_migrate's "by hand" list, checked_migrate's checked arithmetic and
stores, contracts_migrate's dropped items. Present on master since aaf1793 (fix's introduction); the batch's migrations
are the first to rely on the listing. (`x.Nope()` is correctly an M19 error; only `Len` is let through.)

### 4. CONFIRMED - comparison chains read as type-argument calls (`repro/07_chain_read_as_type_args.sh`)

G12's C#-rule (`Parser.typeArgsCall`) takes `<`, names, `>` then `(` as type arguments whatever precedes, and ignores
whitespace, so valid master code is refused:
- `k < m > (0)` with `k` a local: **no diagnostic at all**, and a lowering gap ("cannot build this yet"), at
  `parse.olang:2701` (`p.oracle.fns.Has(name) or p.typeArgsCall(1)`);
- `p.n < m > (d)`: G7, "'n' is not generic";
- `two(p.n < m, m > (d))` (two arguments): G7 plus "expected 2 arguments, found 1".
HISTORY.md says "`(` directly after the `>`"; the code takes `> (` with a space too, which is how the formatter writes a
chain. Parentheses are type tokens, so `f(p.n < g(m), m > (d))` goes the same way. The differential fuzzer writes such
chains (gen.olang:684, E30): 2 of its first 40 programs fail on them.

### 5. CONFIRMED - an `as` under a try aborted on master and is caught now (`repro/05_as_under_try.sh`)

On master `try (x as C) catch default v` aborted when `x` held another case (only `checked` made `as` fail). Now `as`
fails into the try, so an item-less `catch default` (or the caller of a bare-`?` function) takes it: the same program
aborts (134) on master and prints `radius -1` after `olang fix`. `as_migrate` is driven by E32's "no try covers this
as", so it never sees an `as` a try already covered, and `try_migrate` only takes the parentheses off. The same holds,
by design, for an old requirement (unchecked at run time on master, `ArgumentError.INVALID` into the try now). Not a
bug of the new semantics, but `fix` does not preserve meaning here and says nothing; worth one line in the docs, or
`as_migrate` writing `(x as C)!` inside a try's reach too.

### 6. CONFIRMED - `checked_migrate` drops the checks inside a converted or indexed expression (`repro/04_checked_migrate_drops_checks.sh`)

E15a's `checked` checked every operation of its operand, a call's arguments included. `checked I32(x * x)` becomes
`try (x * x).Narrow<I32>()`, and `checked a[i - K]` becomes `try a.Get(i - K)`: the multiplication and the subtraction
wrap now. With `x = 2^32` and `i - K` overflowing, master gives `-1 -1` (both defaults), the migrated program `0 2`. Nothing
is listed for these (the tool lists only bare checked arithmetic and stores). In the repository the one such site
(tests/shared.olang, `checked a[2:n + 5]`, commented "n + 5 is checked too") was rewritten by hand and its point lost.

### 7. CONFIRMED - `try_migrate --old` misses an operator on the next line (`repro/03_try_migrate_misses.sh`)

It reads the rest of the try's own line only (`after`), but inside brackets a line may begin with `and`, `or`, `xor`
(L18a): `y := (not try g(n > 5)\n or true)` is `true` on master, `false` after `try_migrate --old`, which changes and
lists nothing. The master tree and oann's tree hold no such site (checked), so this is a tool gap, not a repository one.

### 8. CONFIRMED - the differential fuzzer's generator was migrated wrongly (`repro/08_fuzz_gen.sh`, `repro/08_fuzz_gen.patch`)

- gen.olang:559 writes `(try (e as E.C) catch ...)`: E24's "parentheses group nothing";
- gen.olang:1976 (`viewElement`) writes `(try (x[0:n]).Get(i) ...)`: the slice was under `checked` and is outside any
  check now, so it aborts when `n` passes the array (K2 refuses the baked global);
- gen.olang:684's chains (finding 4).
Seeds 7100-7139: 4 findings, all these. With the patch (a copy of fuzz/): 0 findings on 7100-7139 and on 8000-8149
(190 programs, 5700 cases). Pre-existing, on master too: `make fuzz` runs `fuzz_fuzz.debug run seed 100 ...` (`make -n fuzz`) - makefile:191's
`SEED = seed` (the bootstrap's) wins over makefile:428's `SEED ?= 1`, so the fuzz targets' default seed is the text "seed".

## Design observations (PLAUSIBLE, not bugs against the spec)

- **D17e rejects handled calls.** A call whose arguments are all closed and whose condition is false is a compile error
  "whatever handles the call's failure": `try pick(5, 1) catch ArgumentError.INVALID default -1` is refused in a branch
  that never runs and in a `test` block (`assert (try pick(5, 1) catch ... default -1) == -1`, the natural test of a
  failure path), while the same call through a one-line wrapper (`dkTryHalf(7)`) is accepted, and a closed call whose
  condition *fails with an error* (`[try t.ParseInt() > 0]` on `"abc"`) is not refused either.
- **A trait's contract holds through `any` only.** D17f: generic code calls the type's own method, so `viaGen(b, -1)`
  succeeds and `viaGen(a, -1)` with `a any Sized&` - which T32c lets be the same `T` - fails. Generic code cannot rely on
  a trait's contract; and a trait method with a contract makes every implementation declare one (or `ArgumentError`) to
  fit, since the trait's signature carries `ArgumentError`.
- **`arith.Rem(T.Min, -1)` fails with OVERFLOW** though the remainder, 0, fits; the error's own comment says "a result
  the type cannot hold". Either the word or the comment.

## What held up

- **Narrow** (E26b): 19 edge cases (signs both ways, U64 max, NaN and infinities to integers and floats, F64 to F32
  rounding and underflow, F16/BF16 overflow, -2^63, fractions truncated) equal master's `checked T(x)` exactly, and the
  three builds agree; baked globals agree with the run time.
- **std/arith**: Add/Sub/Mul/Div/ShiftLeft checked exhaustively over every I8 and U8 pair against the exact result, built
  and interpreted, 0 mismatches; Pow's square-skipping is right; float checks; closed constraints (Number/Integer) keep
  declared types out, so the `match T` dispatch cannot fall to the integer path for a float; baked globals of Narrow,
  Mul, ShiftLeft, Rem agree with the run time in all three builds.
- **Requirement blocks**: checked in order, later conditions not evaluated after a false one; defaults applied first;
  side-effecting condition calls left to run time and run once; constructors (and D13c zero values refused); a spawned
  call with clauses; named functions as values (checked through; T22 refuses an infallible type); `any` dispatch checks
  the trait's conditions with arguments evaluated once; per-instance conditions in generics; a condition's own error
  leaving as itself; `mut` parameters read-only in conditions (T25c); a self-recursive condition does not hang the
  compiler. Built, `-debug -sanitize` and `interpret` agree on all of these.
- **try's new reach**: comprehensions (element and filter), list items, `$` joins, R21 stores and field/local
  assignments under try, catch defaults as one term, conditions - all give master's values.
- **commutes**: left operand evaluated first, both orders of declaration and across modules give E31c's error, generic
  receivers work, evaluator agrees.
- **Tools**: `olang fix` on master's std/json, std/linalg and std/http gives byte for byte the batch's files and is
  idempotent; the text tools on the batch's own tree change only the must-fail `checks/cases/e24tryparens.olang`.
  oann's tree: nothing listed by try_migrate, no `checked`.
- **Scope fuzzer**, fresh seeds 9100-9139 and 9200-9399: 240 programs, 1456 scenarios run, 0 findings.

Logs: `fuzz.log` (unpatched), `fuzz_patched.log`, `fuzz_patched2.log`, `scopefuzz.log`, `scopefuzz2.log`, `build.log`.

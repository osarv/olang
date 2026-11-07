# own6: soundness review of `own` phase 2a at 79bf11c

Read-only review of /home/user/wt/rvown6 at 79bf11c (own5's fixes on top of e3ded09). Compiler:
`/home/user/wt/rvown6/build/out`; the e3ded09 compiler, built from `git archive` for comparison, is
`scratch/oldtree/build/out`. Oracles: `-b -s` (scope sanitizer), plain `-b` after an arena churn, valgrind on a
`-b -a x86-64-v3` build, `-i`. Every reproducer is in `repro/`, runnable as `olang -b FILE` (`n3b` with `-t`);
`scratch/runrepros.sh` runs them all and `scratch/repros.log` holds the outputs quoted below.

## CONFIRMED

### N1 (new in 79bf11c): a borrow handed back as one of several results carries no loan

`ownKeptOnly` (own5) makes a call's result carry only the arguments `calleeMayKeepArg` says the callee may keep in its
result. `calleeMayKeepArg` (semantic.c 19252) asks `rt.scopeParam` and then `m->type.resultScope`; a multi-result
(D8c) result is an anonymous tuple struct with neither - its elements carry the scope variables - so for
`fn two(x Inner&) (Inner&x, I64)` it returns false ("borrowed from another parameter") and every loan on the argument
is dropped. Every own check downstream of the loans then sees nothing. Four shapes, all accepted by 79bf11c:

| repro | shape | 79bf11c `-b -s` | `-b` | valgrind | `-i` | e3ded09 |
|---|---|---|---|---|---|---|
| `n1a_tuple_borrow_no_loan` | `c, k := two(h.cur); h.cur = null; c.deep.text` | use after scope closed, 134 | segfault 139 | invalid read 80 bytes inside a 96-byte block freed by `__olang_own_free` | `1 leaf5` | refused, O39 |
| `n1b_tuple_borrowed_copy` | `b := v; a, n := b.Two(); v.o = null; a.x.o.deep.text` | use after scope closed, 134 | 139 | same | `1 leaf5` | refused, O39 |
| `n1c_tuple_kept_in_list` | the same `a` pushed to a `List` (O38) | use after scope closed, 134 | 139 | same | `1 leaf5` | refused, O38 |
| `n1d_tuple_returns_owner_borrow` | `a, b := v.Two(); return a` (own5's F2 through a tuple) | `baked K=6`, `true`, segfault 139 | same | null read | `baked K=6`, `false`, `run time: 6` | segfault (F2, not fixed there) |

`n1d` is own5's F2 again - the return check `ERR_OWN_RETURNS_OWNER_BORROW` keys on the loans `a` carries, and has
none: `v`'s storage is moved to the result scope by O26a while its owners are released as the block ends, so the
caller reads a nulled slot (and `K` is baked 6 while the program crashes; the assert is decided while compiling). The
single-result forms are refused on 79bf11c (`control_o5b_single_result_refused`, `control_n1d_single_result_refused`).
The plain-reference version of n1d (no `own`) is correct on both compilers (`scratch/t2/plain1.olang`), so this is the
own walk only.

Fix direction: `calleeMayKeepArg` should answer true when any reference in the result type - every element of a tuple,
at any depth - is borrowed from the parameter (`scopeIsParams` on each scope variable the result type names), not only
the outermost `scopeParam`. Tuples with a built element (the result scope), array results and closure results are
already caught. The scope fuzzer's own mode writes no multi-result functions, which is why it is silent; worth a
shape.

### N2 (pre-existing, also on e3ded09): a conditional of owner value locals promoted into a writable reference

`n2_cond_owner_value_into_ref`: `r mut Outer& = v if c else w` (and the `match` form), then `r.o = null`, then
`v.o.k`. Codegen promotes the conditional - a temporary, so a copy of `v` is built where `r` lands (E28/E12c) - while
the own walk treats it as a borrow of `v` (an `ownValueBorrow` "by" loan), under which a release through `r` is "the
borrow's own". So `r.o = null` frees the `Inner` that `v.o` still points to, and `v`'s block release would free it again (the run crashes before it gets there).

- `-b -s`: use after scope closed, 134; `-b`: segfault 139.
- valgrind: invalid read 88 bytes inside a 96-byte block freed by `__olang_own_free`, then a read at 0x8.
- `-i`: `8` `8`. e3ded09: segfault 139.

The read-only form (`q1`: `r Outer& = v if c else w; v.o = null`) is refused by O39. Either the conditional is a
borrowed copy (read-only, owning nothing - `r mut` refused), or it borrows the chosen local's storage rather than
copying it; today it is checked as the second and built as the first.

### N3 (pre-existing, outside tests): an owned value discarded by a failing `try join` is never released

`n3_join_failure_drops_owned_result`: `return Res(1)` (an owned result) or `return h` (an owner value local, moved into
the result) inside a `try join` whose task fails. P4b replaces the return by the join's failure and discards the
value; nothing releases what it owns. Output `made 6 dropped 0` on 79bf11c and e3ded09; valgrind `--leak-check`:
two records of 264 bytes in 3 blocks definitely lost, allocated by `__olang_own_new`. Destructors of the owned objects
never run. `control_j2_join_ok` (owners local to the join, an owner handed to a call in the `return`) prints
`made 9 dropped 9`. `-i` refuses destructors (stage 1).

### N3b (pre-existing, tests only): deferred code failing after an owned result is made

`n3b_defer_check_after_owned_return` (`-t`): `defer { println($a[lo:hi].Len()) }` with bounds out of range, after
`return Res(1)` or `return h`. The test is abandoned (S18) with the result in flight, held in no scope: `made 2
dropped 0`, the third test's assert fails, on 79bf11c (`-t`, `-t -s`) and e3ded09. own5's F3 holds owners past
guaranteed checks in arguments; this is the same leak through a returned value and deferred code.

## PLAUSIBLE

None beyond the above.

## What held

- Every reproducer of own1-own5 (`scratch/prev/prev.log`): own1-own4 are all refused with the rule each review
  asked for; own5's F1/F2 refused, its F3 fixture prints `made 3 dropped 3`.
- (a) O26a moving owner value locals: `return v`, a borrowed result through `&p`, inner-block returns, `defer` reading
  the moved local (O34: write `return take v`), `try`/`catch default` (O34 refuses an owning default), conditionals and
  matches of owners (O34), `return try v.MeF()`, `return v.Me() if c else w.Me()`, a match of `v.Me()` - all refused
  or correct; no double free after `return v` (valgrind clean). The only bypass found is N1d.
- (b) loans on an owner value local's storage meet releases through other names: releases through `r` while `c := v.o`
  is live (`a1`), through a callee given `r` (`f1`), a task (`d2`, O41), `take v` under a borrow (`d1`), derived fields
  (`f1`/`f2`), two references (`o8`, `o9`), the read-only conditional (`q1`) - all refused. The holes are N1 (the loan
  is never made) and N2 (the borrow is really a copy).
- (c) owners made from such a borrow: `K2(v)` moved out of `v`'s block is O34's error (`c5`), `v.me = v` is O34
  (`a2`), a destructor-bearing holder is refused, constructors keeping the reference (`c1`, `c2`, `c4`, `c6`) are C2d.
- F1's `scopeIsParams` at O17, the O26a can-keep question, T22a (`l1`), C2d (`g10`, `o7`) and borrow effects: no
  hole found apart from tuple results (N1), which is the same function.
- F3's `cgMayLeave` whitelist: read in codegen.c 5575-5597; every operation it admits cannot leave outside `try`.
- Scope fuzzer, own mode, on 79bf11c: seeds 8000-8059, 60 programs, 156 scenarios run, 564 refused, 0 findings;
  seeds 8100-8339, 240 programs, 629 run, 2,251 refused, 0 findings.

## Over-rejections (brief)

- Regressions from F2's by-loans: `return b.buf.Len()` on a borrowed copy, and `return r.buf.Len()` /
  `return r.o.deep.text.Len()` through `r Outer& = v` (`over_return_len_through_borrow`; e3ded09 prints `4 4 5`) - the
  return check ignores that the result is an `I64`, and a built-in method's call carries every argument.
- `x := u.Me(); x = v.Me()` into a local (`scratch/t2/ov1.olang`, e3ded09 prints `4 5`): only `:=` holds a borrow
  (O33), and F2 made `v.Me()` one.
- C2d refuses an own-reference owner made from a reference to an owner value local even where O34's reach would allow
  it (`c1`, `c2`, `c4`, `c6`).
- `e3`: O10c's note "the index is held here" points at the wrong cause.

## Summary

Four confirmed defects. N1 is new in 79bf11c and the one to fix first: `ownKeptOnly` relies on `calleeMayKeepArg`,
which does not see a borrow returned as one element of a multi-result function, so the loan is dropped and O39, O38
and own5's F2 return check all pass - three use-after-frees (sanitizer and valgrind confirm freed `__olang_own_free`
blocks) and a nulled-slot crash while the evaluator bakes 6. N2 (pre-existing): a conditional of owner value locals
given to a writable reference is checked as a borrow but built as a copy - a use-after-free. N3
(pre-existing): owners in a `return` value discarded by a failing `try join` leak, destructors unrun; N3b the same
through deferred code abandoning a test. The three deliberate relaxations held otherwise, every earlier reproducer
stays fixed, and the own-mode fuzzer found nothing (it writes no multi-result shapes). Over-rejections: numbers
returned through a borrow, and reassigning a local to a borrow.

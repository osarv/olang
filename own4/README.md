# own4: follow-up soundness review of `own` phase 2a fixes (67cb5b1)

Compiler: /home/user/wt/rvown4 @ 67cb5b1 (`build/out`). Baseline for "pre-existing": 079921e, built from `git archive`
at scratch/old. Oracles: `-b -s` (scope sanitizer), `-b` (after an arena churn), valgrind on `-a x86-64-v3`, `-i`
(never frees, runs no destructors), `-r` where tasks are involved. Driver: scratch/run.sh, peak RSS: scratch/peak.sh.

## CONFIRMED

### N1 - use-after-free: a destructor reads a borrowed copy after the block released its owner (O15 vs O35/O38)
repro/n1_dtor_reads_copy_after_block_release.olang. `w := Watch()` (destructor), then `v := Outer()` (owner value local)
in the same block, `b := v`, `put(w, b)` (or a field store `w.x = b`). F2 holds `b`'s loans to the end of `w`'s block -
but the block's close runs its nodes in reverse registration order (O15): `v`'s owners are released first (registered at
its declaration, after `w`), then `Watch`'s destructor reads `x.o.deep.text`.
- `-b -s`: `use after scope closed`, abort 134. `-b`: segfault 139. valgrind: invalid read in the destructor of a block
  freed by `__olang_own_free`. `-i`: refuses (destructors). Also on 079921e.
- Root cause: O38 holding "until the end of the destination's block" (`ownDestFrame`/`ownHoldUntil`) treats the block's
  end as one instant; inside it, `cgVarDecl`'s owner-value-local release (`cgOwnReleaseScope`, codegen.c 6791) runs
  before any destructor registered earlier in the block. A destination with a destructor reaching it needs its holds to
  outlive the releases of the same block (or the release registered before the destructor-bearing value).

### N2 - use-after-free: spawn targets take no loans of the task call's result (O38/O41)
repro/n2_spawn_target_keeps_copy.olang. `spawn r = id(b)` (borrowed result of a borrowed copy), a value holding one,
several targets, a closure capturing `b`: after the join `v.o = Inner(2)` is accepted while `r` still names the copy.
The same as an assignment (`r = id(b)`) is refused.
- `-b -s`: `use after scope closed` (each of the four), `-b`: segfault, `-i`: `1 leaf5` (never frees).
  Also on 079921e.
- Root cause: semantic.c `ownStmtWalk` case STATEMENT_SPAWN (27923) walks the targets and calls `ownCallKeeps`, but
  never `ownHold`/`ownHoldMore` the targets with the call's loans as STATEMENT_ASSIGN does; the task's borrow effect
  (O41) ends at the join.

### N3 - leak of regions and destructors: F3's hold misses checked operations under `try` (O35/O16)
repro/n3_checked_op_leaves_past_owner.olang. An owner made for an owning parameter, a constructor's region, or an own
array's buffer, with a later argument `try a[i]`, `try a[lo:hi]`, `try (x / y)`, `try I32(x)`, `try (e as E.C)` that
fails: the owner is released by nobody.
- `-b`, `-b -s`: `made 5 dropped 0` (expected 5 and 5); valgrind: regions definitely lost from `__olang_own_new`.
  079921e gives the same (it had no hold at all); F3 holds the owner while a later argument makes a call, not for these.
- Root cause: codegen.c `cgRunsCode` (5505) - written for E11a's joins - treats INDEX, SLICE, arithmetic,
  NUMERIC_CONVERT, AS, BOUNDS as running no code; under `try` (`checkRoot`) each can leave the expression. The three F3
  sites (owning-param hold ~3652, own-array fill heldBuf ~4224, ctor region argsRun ~6614) skip the hidden slot.

### N4 - use-after-free: an owner local or an owning parameter carries a borrowed copy's loans to nothing (O38)
repro/n4_owned_result_carries_copy.olang. An owned result (own array) whose elements hold `Box(b)`, `b := v` a
borrowed copy: (1) declared `arr own mut Array<Box&>& = mk(b)`, (2) assigned into an owner local, (3) handed to an
owning parameter `keepFirst(take arr, g)` which keeps an element in `g`. Then `v.o = Inner(...)` is accepted.
- `-b -s`: `use after scope closed` (all three), `-b`: segfault, `-i`: prints the values. Also on 079921e.
- Root cause: semantic.c `ownHold` (27734) returns at once for `v->type.refOwn` (an owner local is never a holder, by
  declaration or assignment - `ownHoldMore`'s `ownerInto` likewise); `ownCallKeeps` (27641) skips an argument passed
  to an owning parameter ("an owner moved into an owning parameter holds no borrow") - but what the owner OWNS can hold
  borrows of other objects.

### N5 - use-after-free: F2's destination block for a handle copy is the copy's block, not where the state lives (O38)
repro/n5_handle_copy_inner_block_keep.olang. `l := List<Box&>()` in the outer block; in an inner block `l2 := l` (or a
for-in element of a `List<List<..>>`, a `Map` copy, a struct copy holding a `List`), `keep(l2, b)`. The hold ends with
the inner block; `v.o = Inner(2)` after it is accepted; `l[0]` reads the stale copy.
- `-b -s`: `use after scope closed` (all three), `-b`: segfault, `-i`: prints the values. Also on 079921e.
- Root cause: semantic.c `ownDestFrame` (27618) returns `ownHolderOf(v)->frame` - the frame the local was declared in.
  A handle's copy names state that lives where the original was made (or, for an element/entry, where the collection
  lives); its own block is not where the storage is.

### N6 - leak of regions and destructors: a constructor failing after making an own field (O35)
repro/n6_failed_ctor_own_fields_leak.olang. `a own mut Leaf& = Leaf(n)` in a constructor body, then `k := try
check(n)` failing, or the constructor's own `error`.
- `-b`, `-b -s`: `made 2 dropped 0`; valgrind: 2 x 88 bytes definitely lost in `__olang_own_new`; `-i`: refuses
  (destructors). Also on 079921e.
- Root cause: codegen.c `cgOwnDecl` (6724: `if (s->ctorField) return;`) and the owner-value-local path in
  `cgVarDecl` (6791: `&& !s->ctorField`) register no release for a constructor field - the assembled instance releases
  it (`cgOwnDropFn`). A body that fails before assembly leaves it to nobody. F4 reached frames and destructors, not
  constructors.

## PLAUSIBLE / minor

- **M1, growth in a loop condition** (repro/m1_owner_hold_in_loop_condition_grows.olang): F3's hidden owner slot in a
  `for` condition (`take2(Leaf(i), try ok(i)) < n`) registers a release node on the enclosing block's scope at every
  evaluation (`__olang_scope_register_dtor` in `for.cond`), freed only when the function returns: 4M turns 92 MB peak.
  Bounded by the loop, not unsound. The same shape exists before phase 2a for a destructor-bearing temporary in a
  condition (O2: a condition has no block of its own).

## What held

- All 46 reproducers of own1/own2/own3 (scratch/prev/prev.log): the unsound ones are refused with O39/O41/O17/O32/O40,
  the rest run with the right output (fr04/fr05 destructors at the release, f3 `made 4 dropped 4`, f4 2000).
- F2's exemptions: function values (T22a refuses keeping callbacks), Call adapters, constructor instances and
  borrowed results hold their loans; an owner moved into an own slot under a live loan is refused; prelude paths
  (`Push`, `SetAt`, `Has`, `Plus`, `Map.Put`) keep their loans.
- F1: own-array borrows lent to storing callees, generics, lambdas capturing them, tasks and slices are refused; a
  callee only reading compiles.
- F3/F4 with `break`/`continue`/`return`/`done`/a failing assert in a test/`try join`/`defer`, and destructors with
  their own control flow: owners released once (valgrind clean).
- Region builds by tasks and closures: valgrind and `-r` (TSan) clean.
- Evaluator agreement: a baked global over own objects equals the run time and `-i` (`7091073551263` three ways).
- Scope fuzzer own mode on 67cb5b1: seeds 1000-1039 (122 run, 358 refused), 2000-2079 (257 / 703), mixed 3000-3039
  (184 / 296) - no findings. It generates none of N1-N6's shapes (destructors beside owner value locals, spawn targets
  of borrowed results, owner locals or owning parameters holding borrows, handle copies in inner blocks, failing
  constructors with own fields, checked operations as later arguments).

## New over-rejections (brief)

- `g(Names())` - a constructor call of an owning type passed to an owning parameter - is O34's error, while
  `x own mut Names& = Names()` then `g(take x)` compiles.
- Storing existing text into an own array's elements in a callee (`setAll(arr, s)`) is F1-refused even where the
  text lives in the program scope.
- An own struct result holding a parameter's reference (`return Box(x)` for `own mut Box&`) is C2d's error, while
  the own-array form of the same compiles.
- Borrowed copies cannot reach a generic's `<T>` (T25c) - known.

## Summary

Six confirmed defects. Four are use-after-frees the compiler accepts:
- N1: a destructor in the same block reads a borrowed copy after the owner is released;
- N2: spawn targets take no loans;
- N4: owner locals and owning parameters carry no loans;
- N5: a handle copy's hold ends with the inner block.

Two are leaks of regions and destructors:
- N3: F3 misses checked operations under `try`;
- N6: a failing constructor's own fields are released by nobody.

All six reproduce on 079921e too. N3 is the edge of F3's fix; the other five are shapes that phase 2a's fixes did not
reach.
One minor growth (M1): a hold in a loop condition. Everything from own1-3 still holds, and the fuzzer finds nothing in
its current shapes.

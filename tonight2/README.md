# Review of the evening's three merges (0a1b122), 2026-10-09 ~22:50-23:40 CEST

Compiler: `/home/user/wt/s3c/build/out` (0a1b122). "Previous compiler" is `/home/user/wt/oannc2/build/out` (472373d).
Some findings were also run on the rvfix build (`/home/user/wt/rvfix/build/out`, 794af4e, the fixes for the first
review), to tell what that batch already covers. Reproducers in `repro/`, scratch programs in `work/`
(`work/t.sh FILE [b d i v]` builds and runs one under `-b`, `-d`, `-i`, and valgrind on a `-d` build for
`-a x86-64-v2` - valgrind cannot run the native AVX-512 code). Every reproducer churns the arena (allocates and drops
arrays and text) before reading back. Valgrind sees nothing in most of these: a dead block's chunk goes back to the
pool, not to malloc, so the reads land in live, reused memory. The tell is `-b`/`-d` disagreeing with `-i`.

## CONFIRMED, by severity

### 1. O17: a callee storing its parameter's own storage into the lent region counts as no store - use-after-free (`repro/01-o17-self-store-uaf.olang`, `repro/01b-o17-self-view-uaf.olang`)
wt-s3scope, `readFromRegion` (semantic.c:8935), used by `buildAssignCore`'s O17 marking (semantic.c:15591). The value is a
copy whose storage and references live in different scopes (`b := src.b`: storage in bump's block, references where
src's are). It is lent to `tie(b mut Box&) { b.head.owner = b }`. The value stored is rooted at the parameter, so
readFromRegion calls it "read out of the region" and sets no regionStored. The `rr != r` guard then also skips the
hand-out marking, both being b's variable. The lend is accepted, and src's node keeps a reference into bump's dead
block. `-b` prints 1048576, `-d` 0, `-i` 42; valgrind reports uninitialised reads. 01b stores a view of the value's own
inline array (`b.head.view = b.data`): `-b` prints 32768. The previous compiler rejects both with error[O17].

Fix: what is read out of the region must be reached through at least one reference after the parameter itself. A
reference value must not be the parameter (`b`); a value borrowed (promoted) must have a reference step on its path
(`b.head.data`, not `b.data`). Anything else is the lent value's own storage, which is where the split lives.

### 2. O17: settleRegions never revisits a known-body caller of a function whose flag changed later - use-after-free (`repro/02-o17-settle-stale-uaf.olang`)
wt-s3scope, `bindCallScopeVars` (semantic.c:9142) and `settleRegions` (semantic.c:8970). When the callee's body is already checked, the
call reads `regionStored` right then and records no edge. The `ERR_BORROW_SPLIT_SCOPES` decision at a known-body call
is likewise made right then. But a checked body's flag can still turn true later: it may call into a cycle whose body
was in progress, and that edge is only settled at the end. In the reproducer, ys (in progress) causes xs to be
checked; xs calls ys (an edge) and stays false for now. ys then causes zs to be checked; zs calls xs (known, false),
so zs is false and records nothing. settleRegions makes xs true but never touches zs. bump's split lend to zs is
accepted, and ys builds the node in bump's block. `-b`/`-d` print -7, `-i` 42. The previous compiler rejects it.

Fix: record a regionEdge for every call that binds one of the caller's own scope variables, known body or not, and
make every lend decision (lendChecks) only after settleRegions. The fixed point then covers everything.

### 3. O17: a spawn with several targets stores into the region without counting as a store - use-after-free (`repro/03-o17-spawn-targets-uaf.olang`)
wt-s3scope. `buildSpawnStmnt` (semantic.c:18834) routes a single target through `buildAssignCore`, which marks the store.
Several targets go only through `landAtTargets`, so `join { spawn b.head.next, k = two() }` in the callee sets no
regionStored, and the split lend is accepted. `-b`/`-d` print -7; the previous compiler rejects it. A destructuring
`b.head.next, k = two()` and a single-target spawn are both refused correctly.

Fix: apply the same O17 marking (target region stored, source region handed out) to each spawn target, or check
each one as the assignment it is, as the single-target case does.

### 4. Borrowing a split value into a reference local, or by a for-in, is unchecked - use-after-free (`repro/07-split-value-borrowed-into-ref-local-uaf.olang`, `repro/07b-split-value-forin-borrow-uaf.olang`)
Pre-existing (472373d gives the same), and not fixed by the rvfix build. It is the declaration-side twin of O17.
`b := src.b; br mut Box& = b; br.head.next = Node()`: br takes b's storage scope (bump's block), so the node is built
there and hung off src's node. 07b is the same through for-in's hidden borrow of the collection:
`for x in b.items { x.next = Node() }` over an inline `Array<mut Node&, 2>` of a split value. Both print -7 in
`-b`/`-d` and 42 in `-i`. On the rvfix build, the direct forms `br := b` (a copy) and `b.items[0].next = Node()` are
correct. So the hole is specifically a borrow - a reference local, or the for-in's hidden one - of a value whose
references live elsewhere than its storage.

Fix: wherever such a value is borrowed into a reference, apply the test O17 applies at a call (valueRefsScope against
the storage scope). Then either refuse it where stores through it are possible, or give the reference the references'
scope. The for-in lowering could instead read the elements through the value itself, not through a borrow of it.

### 5. `spawn h.f()` - a closure read from a field is never held to P2 - wrong answers, segfault (`repro/04-spawn-field-closure-wrong.olang`)
Pre-existing (472373d gives the same), in the area wt-cgfix3 extended. The P2 check on the function value
(`buildSpawnStmnt`, semantic.c:18820-18829) covers two cases: a callee variable with a block depth (`spawn fs[0]()`,
`spawn (f if c else g)()` are refused), and a temporary callee (`spawn id(f)()`, new tonight). A field read is
neither, so a closure built in the loop body, capturing the loop body's array, is spawned through `h.f()`. The body
closes, and its arena is reused, while the task runs. `-b` prints "0 4 0 4", `-d` "0 0 0 4" (it varies; expected
1 2 3 4). With more allocation in the loop body it segfaults, and valgrind shows an invalid read in `lambda$1` on the
task thread.

Fix: apply the P2 test to any callee expression that is not a declared function - the function value's exact scope
(RefExactScope, or the lambda's home) must last until the join, as for an argument.

### 6. `x[i]++` through At/SetAt evaluates the index twice and calls At once more (`repro/05-incdec-at-index-twice.olang`)
wt-s3scope, `buildIncDec` (semantic.c:12169). The spec says it is `x[i] += 1` with x and i evaluated once. The
SetAt statement is right, but the SEQ keeps the original At call in `seq->args`, and codegen (codegen.c:5141, `return
cgValue(ctx, args[0])`) and the evaluator evaluate it again as the statement's value. Expected 11110, got 22110 in
`-b`, `-d` and `-i` (next() twice, At twice). `x[i] += 1` evaluates the index once.

Related and pre-existing (472373d gives the same): `a[next()]++` on a built-in array of a type with `Plus` or `Inc`
evaluates the index three times (`work/incplus.olang`), because it is built as `target = target.Plus(1)` plus the
same `seq->args`. With an index that changes, that reads one element and writes another.

Fix: give the SEQ a value that does not re-evaluate anything. An increment is a statement only (S3a), so nothing
reads that value - a literal or a hidden local will do. Build the derived forms on the held place, as buildSetAt's
compound path does.

### 7. T22: a read-only parameter does not fit a written `mut` one (`repro/06-t22-mut-param-variance.olang`) - over-rejection
wt-s3scope, `funcFitsByPermission` (semantic.c:7493). After raising b's permission it still compares the binding flags
(`va->mut != vb->mut`), and a written `n mut P&` sets the flag while `n P&` does not. So `apply(r, p)` with
`apply(f fn(n mut P&) I64, ...)` and `r(n P&)`, and the same with a lambda, are error[E12]. The corpus test passes
only because its parameter is a type variable bound to `mut T&`. Not unsound.
Fix: when both parameters are permission references, compare the `mut` flags only through the types (or skip the flag
comparison for them). semantic.c:7322 (Call adapters) has the same comparison.

### 8. G4 for a constant: a generic function's body is still checked, adding a misleading G21 error (`repro/08-g4-const-generic-body-cascade.olang`)
wt-s3scope. For a plain function, `sigUninferable` keeps the body unchecked. A function that also has a type variable
is instantiated at its call, and the instantiation's body is checked: a third error, `error[G21]: a constant argument
must be computable while compiling ...` at the body, plus "instantiated here". Diagnostics only.
Fix: carry `sigUninferable` to instantiations (or do not instantiate such a function), so the call stays silent.

## PLAUSIBLE (traced, not reproduced)

None worth listing apart. Everything traced was then tried, and is either a numbered finding or clean below.

## Pre-existing, outside these merges, noted

- `x := E.Lit(5); x = E.Neg(x)` (`work/selfborrow.olang`) builds a cycle - a borrow of x, then the value written over
  x in place (T11b), so the payload refers to x itself. `eval` recurses forever in all modes, and the previous
  compiler does the same. It is arguably T11b's in-place rule meeting E12c's borrow, a direction question rather than
  a bug in tonight's code. A Python or Rust reader expects the old x.
- The basic O25h case - `b := src.b; b.head.next = Node()` in a callee (`work/splitref2.olang`) - is a use-after-free
  on 0a1b122 and on 472373d. It is the same root cause as the first review's #2 (codegen's `cgValueHomeVar` and
  `cgResolveEffectiveScope` never read refsHome), and the rvfix build fixes it (prints 42). Finding 4 is what is left.

## What was checked and found clean, per area

1. **wt-chk4.**
   - G10d twins:
     - instances of twins of F32/I64/String&/Node& graphs mixed in one List;
     - a `&g`-scoped field built through in the twin's body;
     - C2d holding text, and its errors, per twin;
     - a shared destructor running once per instance (1110);
     - zero values refused.
   - E31 by shape: ordinary `Eq(b, tol)`, `Hash(seed)`, `Str(prec)` and `Less(b, c)` beside `==`, `!=`, `in`, `$`, a
     nested struct `==` and a baked global - all agree in `-b`/`-d`/`-i`. A Map key with an ordinary Hash is refused.
   - O26a through keeping calls: `return Node.Many(l.ToArray())` and a borrowed result `wrap(b)` from a local Bag,
     read back after churn, valgrind clean.
   - D13c's location: diagnostics only.
2. **wt-cgfix3.**
   - BF16 narrowing, every one of the 2^32 F32 patterns: `BF16(x).Bits()` hashes identically under `-b`, under `-d`
     and on the previous compiler (`work/bfn.olang`).
   - BF16 `+ - * /` on 20M random pairs equal the correctly rounded F64 result, new and old, once NaNs are made
     canonical. The raw hashes differ only in NaN payload bits, which E33a leaves unspecified.
   - Compares and negation agree with F32 (20M pairs, `-b` and `-d`).
   - F16 and BF16 bits crossed both ways (`h.Bits().BF16FromBits()`, back, then converted) agree with the previous
     compiler and the baked global.
   - Function values as two words: Call adapters, named-function adapters, generics bound to function types, D8d
     spread, operator methods, defaults, returned compositions and tasks taking function values. All agree with a baked
     global and with `-i` (`work/fv2.olang`, `work/fv3.olang`).
   - Spawned called lambdas: arguments and captures from the loop body refused (P2); join-level captures correct
     under the relaxed home, valgrind clean; with targets; baked = run time.
   - D16b in a global, a comprehension, a generic, under `try`, and with the wrong argument count.
   - The evaluator's try-statement fix: baked = run = `-i` (`work/tryst.olang`).
   - linalg's direct path stays out of the narrow types. `m*n*k` cannot overflow at sizes that fit in memory.
3. **wt-s3scope.**
   - O26a reference locals: Pratt-style `lhs = E.Add(lhs, rhs)` in a loop, inside a lambda, through parallel
     assignment and several results, and spawn targets in result-scope locals - all read back after churn, valgrind
     clean.
   - The flow scan's misses only ever over-reject: O14/O26/O10c then report them. Returned lambdas capturing locals
     are refused. Over-approximated flows only move locals outward, consistently (`work/o26over*.olang`).
   - O17 refuses the split lend for stores through:
     - a lambda (made and called directly, or handed to another function);
     - a returned lambda;
     - for-in elements;
     - match bindings and `as`;
     - a constructor;
     - user SetAt;
     - `defer`;
     - a borrowed local;
     - destructuring;
     - a single-target spawn.
   - C2d mixed exactness: a context of a loop-body List and an outer writable Diag sink, written and replaced through
     the instance, correct in all modes. The disagreeing case is refused.
   - `x[i]++`: multi-index, `try` through TrySetAt, F64 elements, Dec, and a type with only At (refused) - values right
     in all modes, apart from finding 6.
   - G9a lambda types first never binds `mut` from a lambda against a read-only receiver or array; an extra argument
     is refused before it is used.
   - T22: the unsafe direction is refused (`fn(n mut P&)` as `fn(n P&)`).
   - R11: a default capturing a block-local reference in a lambda is refused.
   - Map Keys/Values: the same entries and order as Iter(), keys kept in a caller's List, baked = run. Yielding a
     removed entry mid-walk is allowed by the spec (Map: changes during a walk leave the rest unspecified), and MapIter
     does the same.

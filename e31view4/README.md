# e31view4 - soundness review of 906e292 (round 4 of the view-lend work: O17 split values + E16a try-value slices)

"new" is /home/user/wt/rve31d/build/out at 906e292. "pre" is /home/user/review/e31view4/pre/build/out at dffba58^ (the
state just before this round's fix commit). "fix" is /home/user/review/e31view4/fix/build/out at dffba58 (the round-4
fix commit, before its master merge). "base" is /home/user/review/e31view/base/build/out (d05c915). `t.sh FILE` builds
and runs with new `-b` and `-b -d -s`, interprets with new `-i`, and (unless NOOLD=1) builds and runs with base `-b`.
repro/ holds the confirmed reproducers; work/ the probes.

## Verdict

One CONFIRMED use-after-free, HIGH, and it is a ROUND-4 REGRESSION: the round-4 fix commit (dffba58) turns a class of
programs that pre-round-4 ran correctly and deterministically into silent use-after-frees. Everything else the round
added or relaxed held under pushing: O17 refuses the storing/handing-out shapes, O10c the loop-local ones, R11 a
try-default that is existing storage, O38 the `own` cases, and O25 exactness makes value-result ref scopes precise.
U1/U2/U3 from the previous review (/home/user/review/e31view3) are all fixed. No new over-rejections found.

## F1 - CONFIRMED, HIGH, ROUND-4 REGRESSION: a split (or handle) value lent to a reference parameter the callee captures in an escaping lambda is a use-after-free

The round binds a split/handle value's scope variable to where its REFERENCES live (`tempRefsScope` -> `hv`), while its
own COPY is built in the block the call stands in (`splitLent`/`handleLent` -> `scopeOverride = block` in
`cgCallTargetAndArgs`, and `mbiCall`'s new `at = false`). That is correct for a callee that reaches only the value's
references. But a callee that captures the whole PARAMETER in a lambda it returns (or stores) captures the block-local
COPY's own storage - and the lifetime check for the escaping lambda (landReturnedLambda / O14a / T22a) reads the
parameter's scope variable, which is now `hv` (where the references are, e.g. main), not where the copy actually lives
(the block). So the escape passes the check, and the lambda is left holding storage freed when the block closes.

Minimal, `repro/split_call_result_lambda_capture_uaf.olang`:

```
fn idBox(seed mut Box&) Box { return seed }                 # Box = { head mut Node&; tag I64 }  (a non-handle value)
fn leak(b Box&) fn() I64 { return fn() I64 { return b.head.v } }   # captures the parameter b, returns the closure
fn main() ? {
    seed := Box()
    fs := List<fn() I64>()
    for i in range 3 {
        fs.Push(leak(idBox(seed)))   # idBox(seed) is a SPLIT value: copy in the loop block, refs in main
        churn()
    }
    ... for f in fs { t = t + f() }  # each f reads its block-local copy, long freed
}
```

Command and result on new (906e292):
```
cd /home/user/review/e31view4/repro && NOOLD=1 /home/user/review/e31view4/t.sh split_call_result_lambda_capture_uaf.olang
```
- `new -b`: exit 139 (segfault)
- `new -b -d -s`: exit 134, "use after scope closed: storage a closed scope gave back was read or written"
- `new -i`: exit 0 (keeps everything alive; the assert `t == 21` passes - the correct answer)

Expected: a compile error (as `O17` already gives when the callee STORES the copy, below), or the copy built where it
survives. Actual: accepted, then a UAF.

**It is a round-4 regression, not just a latent hole:**
- `pre` (dffba58^) builds and runs this **exit 0, deterministically** - even stressed to 50 iterations with a 2000x256
  churn (`work/d03pre_big.olang`): pre built the copy in a surviving scope, so the program was sound.
- `fix` (dffba58, the round-4 commit) segfaults it. The regression is the splitLent binding plus the block copy
  placement (and `mbiCall`'s new `at = false` line, which also regressed the handle shape - see below).

**Same mechanism, every shape (all CONFIRMED on new: `-b` 139, `-s` reports, `-i` the correct value):**
- `repro/split_call_result_lambda_capture_uaf.olang` - a call's value result (`idBox(seed)`), a non-handle Box.
- `repro/split_conditional_lambda_capture_uaf.olang` - a conditional of two places (`b1 if i >= 0 else b2`); pre runs
  exit 0, new segfaults.
- `repro/handle_call_result_lambda_capture_uaf.olang` - a `List<I64>` handle a call gives (`idList(base)`); pre runs
  exit 0, `fix`/new segfault (this shape reuses the pre-existing handleLent copy placement, so its regression is the
  `mbiCall` change in dffba58).
- `repro/split_callcycle_lambda_capture_uaf.olang` - the capturing callee reached through a mutually-recursive call
  cycle (`even`/`odd`): the escape is still missed, because capturing the parameter in a lambda is never recorded as
  the callee "keeping" the argument.

**Why the existing O17 backstops do not catch it.** When the callee STORES a reference to the parameter
(`out.Push(b)` into a `List<Box&>`, `work/d07.olang`) or hands it out, `calleeStoresRegion` sees it and O17 fires
(error, verified for both an ordinary call and a `spawn`, `work/d07.olang`/`work/d08.olang`). A lambda CAPTURE of the
parameter is not a store into the region, so it is invisible to that check; it is checked instead by the escaping-lambda
lifetime rule, which trusts the scope variable now pointing at `hv`.

**Controls (safe, establishing the contrast):**
- `leak(seed)` - a direct lvalue in main (`work/d03b.olang`): built where seed lives, fine (prints 126).
- `leak(Box())` - a fresh constructor temporary (`work/d05.olang`, Box() variant): the compiler lands the fresh temp
  where the escaping lambda needs it (the result scope), so it survives - fine. Only the split/handle value, whose copy
  is forced into the block, is wrong.
- `own` (`work/d10.olang`): a borrowed `own` result captured the same way is correctly refused by O38.
- A NON-escaping lambda over a split value (used within the call, `work/g01.olang`): correct (42) - the escape (the
  lambda outliving the block) is the necessary condition.

Fix direction (for the implementer): a reference parameter whose argument is a split/handle value, captured in a
lambda (or otherwise having its own storage escape the call), must be built where the escape needs it - as a fresh
temporary already is - or the program refused, as the store/hand-out shapes already are. Binding the scope variable to
the references' scope is right for the references but misrepresents where the copy itself lives, and any check that
reads that variable to reason about the copy's STORAGE (the escaping-lambda check) is defeated.

## What held (attacked, sound)

- A split/handle value lent to a callee that STORES it, HANDS it back, or keeps a reference to it: O17 / T25c error
  (`work/a01`-`a04`, `work/c01`, `work/d07`, `work/d08`).
- A split value lent to a callee that only READS or writes scalars: accepted and correct, copy a block temporary
  (checks/cases `o17tempreadsonly`, re-run exit 0 under `-d -s`).
- A loop-local built-in array whose handle a callee keeps into an outer list: O10c (`work/c02`).
- A try-default that is existing storage holding references: R11 refuses it (`work/b01`, `work/b02`).
- A value whose references come from two different scopes: the producing call's own obligations force them into one
  scope first (O10c, `work/d01`).
- A value result referencing a global/longer-lived thing: O25 exactness forbids narrowing a reference into a shorter
  value's field, so `landedCallRefsScope` is precise, not a lower bound (`work/d02` -> O25 error).
- Relaxation A (`try a[i] catch default v` on a built-in array, a handle, as its reference): the default is landed where
  the element's references live; the storing variant is refused (`work/c01`), the kept-inner-ref variant where the array
  is loop-local is O10c (`work/c02`), the sound case runs (checks `o17btrydefaultarray`, `o17btrydefaultkept`).
- Relaxation B (a Str reading a two-level List field through `x[i]`): accepted and correct (checks `e11ctwolevelfield`).
- U3 (E16a): a slice of a `try ... catch` value is a block temporary - returned (checks `e16atrydefaultslice` -> O10d)
  or stored into an outer list (`work/e01` -> O10c). Sound and conservative (the default could be block-local).

## Previous review's repros (e31view3), re-run on new

All fixed:
- U1/U2 (`funcresult_nonhandle_ref_param_uaf`, `funcresult_readonly_shallow_mut_uaf`, `cond_readonly_shallow_mut_uaf`,
  `cond_array_readonly_shallow_mut_uaf`): now `error[O17]` (`work/`).
- U3 (`trydefault_field_slice_return_uaf`): now `error[O10d]`.
- The handle try-default (`trydefault_array_handle_readonly_uaf`): now runs correctly (relaxation A, matching the List
  spelling).

## Over-rejections

None found that are new to this round. The O17 errors on the storing/handing shapes are the intended conservative
refusals (and `b.head.next = Node(...)` through a split value is refused because building a new node into the region
counts as a store - conservative, documented, not a soundness issue).

## Fuzz runs (scope fuzzer, fuzz/scopegen.olang via build/fuzz_fuzz, `-b -d -s` vs `-i`, one process at a time)

- scope mode seeds 500-649 (150 programs): 839 scenarios run, 1261 refused, 0 findings.
- scope mode seeds 650-799 (150 programs): 799 scenarios run, 1301 refused, 0 findings.
- own mode seeds 81-200 (120 programs): 0 findings so far (run still in progress at hand-off, 0 found in its run
  directory); own seeds 1-80 were clean in the previous review.

The fuzzer is silent on F1 for the reason the previous review noted of U1/U2: it does not generate the shape "a callee
that returns (or stores) a lambda capturing its own reference parameter, fed a split/handle value", so nothing drives
the capture-the-copy path.

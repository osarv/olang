# Soundness review: Vec phase 2a's fix round (c7099f6)

Read-only review of a69dce6, 57fd996 and c7099f6 on top of d5ddcda (vec6's findings R1, D, L1 and x1, fixed). Built in
`/home/user/wt/rvvec7` with `make build/out`. The base d5ddcda was built from `git archive` in `base-d5ddcda/`.
Done 2026-10-12 02:20 - 03:30 CEST.

```
cd /home/user/review/vec7 && ./runall.sh   # every repro; output in runall.out
./run.sh FILE.olang                        # c7099f6 -b -d -s, -i, -b; then whether d5ddcda accepts it
./q.sh FILE.olang                          # compile only (accept/refuse)
```

## Verdict

**Fix first.** Each of the two holes below is a silent use-after-free in plausible code: a scope-sanitizer stop
under `-b -d -s`, the right answer under `-i`, and churn text under `-b`.

| | Finding | Severity | New or older | Repros |
|---|---|---|---|---|
| F1 | The "same path" relaxation (`ownSamePath` in `ownValueTakeReach`) trusts the variable name. A reference local, a reference parameter or a global reference repointed between the two reads gives two different objects | **high**: silent UAF. Natural form: a cursor walking a chain | new (relaxation 1) | 4 |
| F2 | R1 is not closed when the instance is reached through a call that gives a borrowed own result (`p.Lx().toks`), or a local holding one. Its reach is read off the call's `&p` tag (p's scope), not the region | **high**: silent UAF. Natural form: a getter | R1, unfixed for this base (accepted on d5ddcda too) | 3 |
| F3 | The same root as F2, for building: `p.Lx().toks.Push(x)` builds `x` in p's scope, not the region. It is held until p's block closes | low: memory only, unbounded in a loop | older (on d5ddcda) | 1 |
| N1 | T29a's in-place retype also applies to a conditional or a match of array references. Returned through a borrowed result, it is "error[D8]: this function returns String&, found String&" | low: over-rejection, self-contradicting message | new (relaxation 3) | 1 |
| X1b | x1's remainder: a conversion of a call that gives a **fixed-length** array reference (`String(view(b))`, `Array<Char, 4>&`) is still a copy at run time and a name under `-i` and in a baked global | low: not memory safety | older (x1's class) | 1 |
| N2 | Past `VALUE_WALK_LIMIT`, `typeHasBareOwningStructAt` answers "owning". A field typed 66+ levels of nested *array references* (no owner anywhere) is refused with a wrong O31: "...owns objects - a field of it is 'own'", suggesting `T&&` | very low: over-rejection, message wrong (60 levels pass) | new (the safe-answer change) | 1 |
| V1 | A generic type holding itself by value (`type N<T> struct() { x N<T> = N<T>() }`) crashes the compiler: `TypeGetAlign` recurses until the stack ends, before T16 | low: a crash on an invalid program | older (on d5ddcda), not own | 1 |

Relaxation 2 (O26a follows `take`) held: every shape tried is either refused or runs clean (below). D and L1 hold. The
safe answers past `VALUE_WALK_LIMIT` hold: they over-reject only.

---

## CONFIRMED

### F1 (new). "The same path" is the same variable, not the same object

`repro/f1b_samepath_cursor_chain.olang` (natural form):

```
c mut Parser& = first
prev := c.lx              # a borrow of first's lexer
c = c.next                # the cursor moves on: 'c.lx' is now the second parser's lexer
prev.more = take c.lx.toks   # accepted: 'prev' and 'c.lx' are "the same path" (variable c, then lx)
c.lx = null               # releases the second lexer's region, where the words live
println(first.lx.more[0]) # first's lexer holds them
```

| Run | Output |
|---|---|
| `-b -d -s` | "use after scope closed", status 134 |
| `-i` | `0-word-in-the-second-lexer` |
| `-b` | `2999abcdefghijklmnopqrstuv` (churn text, silent) |

The same holds:

- `f1a`: a plain reference local repointed;
- `f1c`: a reference parameter used as a cursor (S4a), in a callee;
- `f1d`: a mutable global reference repointed.

With two differently named roots (`q := a.lx; q.more = take b.lx.toks`, `work/s7`) the move is refused, so only the
relaxation lets this through.

**Cause.**

- `ownValueTakeReach` accepts a move between two regions when `ownSamePath(from->regionSlot, to->regionSlot)` holds.
- `ownSamePath` compares a `READ_VAR` root by `canonicalVar` alone.
- 26.1's argument is "the loans keep the slot from changing between the two reads". That is true of the own slots on
  the path. It is not true of the root variable, which a repoint changes without releasing anything, so no loan sees
  it.
- The existing O39 users of `ownSamePath` (`ownLoanBesidePlace`, the chain test in `ownLoanHits`) stay sound under
  the same aliasing, since own trees are disjoint and conflating two objects only skips a conflict between different
  trees. The new use is the first one that grants a lifetime from path identity.

**Fix.** Use the same-path test in `ownValueTakeReach` only when the root cannot be repointed between the two reads:

- an owner value local, an own reference local, a `:=` borrow local, or a global holding the owning struct by value;
- or both region reads made in the statement being checked.

Otherwise fall through to the ordinary reach check, which refuses. Add the cursor shape to the fuzzer's own mode.

### F2 (R1 unfixed for a call base). The reach of a Vec field of an instance reached through a borrowed own result

`repro/f2a_take_via_borrowed_result_call.olang`:

```
fn (p mut Parser&) Lx() mut Lexer&p { return p.lx }   # a borrowed own result (O37)
...
for i in range 3 { p.lx.toks.Push($i "-word-built-in-the-lexer's-region") }
d := Parser()
d.lx = Lexer()
d.lx.toks = take p.Lx().toks   # accepted
p.lx = null                    # frees the region the words live in
println(d.lx.toks[0])
```

Sanitizer stop, `-i` correct, `-b` churn text. The same holds:

- `f2b`: through a borrow local, `q := p.Lx()` then `take q.toks`;
- `f2c`: on a global, `G2 = take GP.Lx().toks`. The call's `&p` binding is the program's scope here, so
  `ownValueTakeReach` returns at `regionReachUnnamed` without checking anything.

Taking into a local or a result is refused (the loan O38/O39 give the call's result), as is going through a callee
(`work/r12`, O38 at the caller).

**Cause.**

- 26.1's fix finds the region by `ownRegionOf(b)` or by `RefExactScope(b)`.
- A call giving a borrowed own result is neither: its result is tagged with the parameter's scope variable bound to
  p's scope.
- Whether a callee gives a borrowed own result is only known once `ownBorrowResultsSettle` has run after every body,
  while the take's reach is fixed when the take is built.
- So `ownValuePlaceReach` falls to `ownReachOfBase`, which answers p's scope (or the program's).

**Fix.** Either of:

- In `ownValuePlaceReach`, answer "not known" (`SCOPE_AMBIGUOUS`, which O34 refuses) for a field of an instance reached
  through a call's reference result. That covers a local holding one, through slices and conversions.
- Re-check such takes after `ownBorrowResultsSettle`, with the call taken as the region of the slot it borrows.

The first is a small over-rejection (a take through any getter), and sound. Add the getter shape to the fuzzer.

### F3 (older, the same root). Building through a borrowed own result builds in the parameter's scope

`repro/f3_build_via_borrowed_result_leaks.olang`. In the loop `p.lx = Lexer(); p.Lx().toks.Push($i ...)`, each
release of `p.lx` frees nothing the words were built in. They sit in p's block.

| Iterations | Peak RSS (KB) |
|---|---|
| 100,000 | 29,896 |
| 400,000 | 152,692 |
| 400,000, written `p.lx.toks.Push` | 1,700 |

d5ddcda measures the same (156,336 KB). It is not a UAF: the object's own reach is p's storage, so O34 never lets it
outlive the words. It falls out of F2's fix if the call is made the region for building too.

### N1 (new, low). A converted conditional or match is retyped but its values are not

`repro/n1_conversion_of_conditional_returned_d8.olang`:

```
fn pickc(k I64, a Array<Char>&) String&a { return String(a if k > 0 else a[0:1]) }
```

The new condition `arg->type.structMAlloc && arg->type.arrMalloc` in `OperandNominalConversion` retypes any array
reference, not only "a reference a call gives". The conditional's values keep `Array<Char>&`, and D8 reports "returns
String&, found String&". d5ddcda accepts it. As a local or an argument, the form is accepted and agrees built,
interpreted and baked (`work/c22`).

**Fix.** Limit the retype to `OPERATION_FUNCCALL` (what 26.4 describes), or retype the values too.

### N2 (new, very low). The safe answer past the walk limit says "owns objects" of a type that owns nothing

`repro/n2_deep_array_type_spurious_o31.olang`: a field typed as 70 nested `Array<...>&` levels gets O31's "... owns
objects - a field of it is 'own'", with a suggested spelling ending in `&&`. 60 levels pass, and d5ddcda accepts it.

This is the over-rejection 26.2 accepts. Only the message is wrong. Report it as a type too deep to check, not as
O31.

### X1b (older, x1's class, low). A conversion of a call giving a fixed-length array reference

`repro/x1b_conversion_of_fixed_ref_call.olang`: `String(view(b))`, with `view` giving `Array<Char, 4>&a`. It prints
`1 0` built (the baked global says "named", the run time "copied") and `1 1` under `-i`. That call is not `arrMalloc`,
so it still reaches `OPERATION_NOMINAL_CONVERT`. `String(a as Array<Char, 4>&)` agrees (`work/x2`).

### V1 (older, outside own, low). A generic holding itself by value crashes the compiler

`repro/v1_generic_selfhold_crash.olang`: `type N<T> struct() { x N<T> = N<T>() ... }`. It segfaults in
`TypeGetAlign`, recursing without end, on d5ddcda too. The non-generic forms report T16 once (`work/v2`-`v4`, `v6`,
`v8`, `v9`).

## PLAUSIBLE

None.

## What held

The programs are in `work/`.

### Relaxation 1, besides F1

All refused (O34/C2d/O25):

- two different roots (`s7`);
- words moved into a child object's region and the child moved out (`s5`);
- words moved into the parent's field (`s6`);
- a derived `&s` field as the target or as the build path (`p4`, `p5`);
- a bare field pointing out of the region (`p6`, `p7`);
- a parallel assignment releasing the object before the second target (`p1`, `p2`);
- a conditional base (`r7`);
- between parameters (`r6`).

`p.lx.toks = take p.lx.toks` runs clean (`p3`).

### Relaxation 2, O26a follows `take`

Run clean (sanitizer, `-i`, `-b` agree):

- a take in a branch (`t1`), in a loop (`t2`), or in an inner block (`t4`);
- block text pushed, then taken (`t3`);
- from a reference local made from a temporary (`t6`);
- two sources (`t7`);
- loop-body text (`t11`, as `return v` does, `t12`);
- into a borrowed result's home (`t9`: `h.v = take l.toks; return h` with `Holder&h`).

Refused: the same without `return h` (`t10`), through a reference to an owner value local (`t5`), and from an own
reference local's object (`t8`; accepted on d5ddcda, so another R1 shape that is now closed).

### Relaxation 3, T29a names a call's reference

Refused (O39/O38/O41/O20/O1b/O10c/T25c):

- a push while the converted view lives, directly (`c1`), in a struct (`c3`), captured (`c5`), in a payload (`c13`)
  or in an array literal (`c14`);
- given to a task (`c6`);
- returned (`c2`);
- pushed into an outer List (`c4`);
- stored in an outer field (`c11`) or a global (`c12`);
- a Map key (`c15`);
- of a conditional, try or match of views (`c7`-`c9`);
- of an owned object's Vec field, directly or via a getter, then released (`c16`, `c17`);
- through a borrowing call (`c23`).

A converted fresh call result lands where it is put (`c10`: a List, a field, an outer local, a function's result).

### D, L1, the walk limit

Refused: depth 20 (`d2`), and L1 through a parallel assignment, a destructuring, a `for` post clause and a Vec part
(`l1`-`l4`, the last two accepted on d5ddcda).

A 70-level plain struct holds: copied, pushed, captured, spawned and in a global, it runs clean (`v1`). The only
change is an over-rejection, R11 on its `catch default`. Self-holding types (T16) report once.

### Older programs

All of vec6's repros are refused, except x1, which now agrees.

The 697 older programs (vec1-vec6, own1-own7, repro and work) were built `-b -d -s`, run and interpreted:


- 582 refused.
- 98 give the same output built under `-b -d -s` and interpreted.
- 17 differ only where `-i` refuses a destructor (13), or a growth loop times out or runs out of memory under `-i`
  (4).
- No sanitizer report.
- Accepted now and refused on d5ddcda: only `vec6/work/s04` and `s06`, relaxation 2's own cases, both clean.

(`regress.sh`, `regress.out`.)

### Scope fuzzer

Own mode, seeds 2000-2199, 12 scenarios each: 200 programs, 557 scenarios run, 1843 refused, **0 findings**.

Plain scope mode, seeds 3000-3099: 100 programs, 458 run, 742 refused, **0 findings**. The generator writes neither F1's repointed root nor
F2's getter.

# own7 - soundness review of own phase 2a, round 5 (d8c942b)

Compiler: /home/user/wt/rvown7/build/out @ d8c942b. Reproducers in `repro/` (run each with `repro/run.sh FILE`;
outputs in `repro/oracles.txt`), scratch work in `scratch/`.

## CONFIRMED

### F1. A by-value part of an owned object, borrowed in place, carries no loan (use-after-free)

The old code had this before the first cut was reviewed: e3ded09 accepts `f1a` too. An inline struct field or inline
fixed array of an owned object can be borrowed in place, by E12c, a slice, a view, for-in or a task. The check takes
no loan on the object for it, so releasing the owner under that borrow is accepted.

| repro | shape | -b -s | -b | valgrind (-b) | -i |
|---|---|---|---|---|---|
| `f1a_ref_arg` | `f(h, h.cur.pl)` / `g(h, h.cur.data)` to `mut Plain&` / `mut Array<I64>&`; receiver `h.cur.pl.Bump(h)`; the same inside a function. The callee does `h.cur = null`, then reads | use after scope closed, 134 | 5 33 7 7 (by luck) | invalid reads 56/120 bytes inside a 128-byte block freed by `__olang_own_free` | 5 33 7 7 |
| `f1b_local_view` | `s := h.cur.data[0:8]`, `v := h.cur.data as Array<I64, 8>&`, `c := h.cur; s := c.data[0:8]`, then `h.cur = null` | 134 | 41 51 61 | invalid reads in freed 120-byte blocks | 41 51 61 |
| `f1c_forin` | `for x in h.cur.data { h.cur = null ... }` | 134 | 43 | invalid read | 43 |
| `f1d_ownarray_elem` | `buf own mut Array<Plain>&`, `f(h, h.buf[3])`; the callee does `h.buf = null` | 134 | 9 | silent (the buffer is an arena chunk) | 9 |
| `f1e_task` | `join { spawn useP(h.cur.pl, out); h.cur = null; churn() }` | 134 | **segfault 139** | invalid reads on both threads | 5 |

Under `-r`, `f1e` reports a heap-use-after-free in `useP`, and a second one in `__olang_join_tasks`. The join reads 24
bytes into the freed 64-byte region block. This appears to be the task's stand-in being folded into the freed region.
It is the same cause, but it means the release check is all that keeps a task's fold target alive.

`f1d` is the hazard `Vec<Plain>` will have: an element lent to a function that grows or replaces the buffer.

**Root cause.** The fault is in `ownLoansIn` (semantic.c ~27035). The `OPERATION_MEMBER` case walks the base with
`transient = !place && (transient || !typeCarriesScopes(op->type))`. `OPERATION_INDEX` does the same through
`!typeCarriesScopes(op->type)`, with `outside` true only for references and function values.

The rule says "a part whose type holds no reference carries nothing of its base". That is right when the part is
read, meaning copied: `r := h.cur.pl` and a number are both correct and stay accepted. It is wrong when the part's own
storage is borrowed in place:
- an lvalue argument to a reference parameter or receiver (E12c);
- the base of a slice or of an `as` view;
- a for-in source;
- a task's argument.

So `h.cur` is walked as transient and no loan on the `In3` reaches the statement's loans, O39 or P2.

Item 5's early return (kept-only mode, a type that can hold no reference) is the same idea one level up. On its own it
is right, because such a value cannot point into a region. The slices, views and borrows above are references, so they
pass item 5 and lose the loan at the MEMBER/INDEX below them.

**Fix direction.** Let the consumer decide. Where an operand is borrowed in place - an E12c argument or receiver, a
slice or view base, a for-in source, a spawn argument - walk it as a place, without MEMBER/INDEX turning the base
transient, so it loans the object. Only a value read stays transient.

**The scope fuzzer misses it.** Its own mode never lends an inline plain part of an owned object, or a plain element of
an own array, to a reference parameter, receiver, slice, view, for-in or task that releases the owner. Add those shapes.

## PLAUSIBLE

None.

## What held

1. **Item 5 at the type level.** A closure in a struct, enum or fixed-array field is refused. A value-array result is
   a copy, correct under every oracle (`scratch/t/r`). The String conversion of an own array is refused. Every
   value-typed copy out of a region (`r := h.cur.pl`) is correct.
2. **`cgLeavesToProgram` (production hold).**
   - Refused: a fallible constructor into an own slot (O34); tasks with owned results or owning parameters (O41).
   - Leak runs: try/continue in constructor and owning-parameter arguments (1M turns), match-value continue and
     comprehensions (300k turns). Each had made == dropped, with a flat peak RSS of 1.6-1.9 MB (`scratch/t4`).
3. **`cgRetHold` in test builds.** `scratch/t3/hold1.olang` (13 tests that leave by a failed check, done, fail or
   deferred code around owned results) gave made 19 dropped 19. `hold2.olang` (owning parameters) gave made 3
   dropped 3. Both were clean under `-t`, `-t -s` and `-t -d`, and under valgrind.
4. **`resultScopeVarsOf`.** All of these were refused (O10c/O39/C2d/O14):
   - Pair results;
   - tuples holding a Pair, a closure or an array;
   - closures capturing a parameter or a borrowed copy;
   - a generic id and a generic tuple;
   - `Box<T>`, enum payloads, arrays of references, a struct with an `&p` field;
   - a function result returning a capture.
5. **`ERR_OWN_VALUE_IN_COND`.**
   - Refused: conditionals and matches of owning values; of non-owning constructors into an own slot; catch defaults
     (an owned result takes only `null`, an owning value is refused); generic `pick` (O39).
   - Also refused: parallel assignment of owner value locals, and conditionals mixing a value and a reference (E28).
   - An array literal or comprehension of owner values is refused (O31/E27).
6. **Root and place precision.** Releases through another slot or root aimed at a live loan (`scratch/t6/e1-e4`)
   were all refused.
7. **Earlier reproducers.** I reran all 67 in `review/own1-own6/repro` (`scratch/prev/prev.log`):
   - 49 refused;
   - 16 run clean under `-b -s` and valgrind (`-i` stops at destructors, as stage 1 does);
   - the 2 test files release every owner made under `-t` and `-t -s` (made 3/3, 2/2).
8. **Scope fuzzer, own and mixed modes.** No findings in any run:

   | seeds | programs | run | refused |
   |---|---|---|---|
   | 11000-11119 | 120 | 340 | 1100 |
   | 12000-12239 | 240 | 700 | 2180 |
   | 13000-13119 (mixed) | 120 | 519 | 921 |

## Over-rejections (brief)

- `a, b = take b, take a` and `x.c, x.d = take x.d, take x.c`: a take swap is refused (O34).
- `return pass(a, 0, take x)` is O10c: an owner local's reach is its block.
- `h.cur = Inner(1) if c else Inner(2)` is refused correctly, but the message calls `Inner` an owning value.

## Summary

One confirmed use-after-free class, F1, older than this round. A by-value part of an owned object takes no loan when
borrowed in place: an inline field or array lent to a reference parameter or receiver, sliced or viewed into a local,
walked by for-in, or handed to a task, and likewise an own array's plain element. The owner can then be released under
it: five reproducers, `-s` aborts on each, valgrind and TSan confirm, and `f1e` segfaults under `-b`. The cause is
`ownLoansIn` treating a MEMBER/INDEX base as transient whenever the part's type holds no reference. Everything this
round added held: item 5 at the type level, both holds, `resultScopeVarsOf` and the conditional rule. So did all 67
earlier reproducers and 480 fuzz programs.

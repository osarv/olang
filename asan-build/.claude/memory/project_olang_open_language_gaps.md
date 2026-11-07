---
name: project-olang-open-language-gaps
description: "Historical record of deferred olang gaps - all resolved as of 2026-09-29; open questions moved to the pending-decisions ledger"
metadata:
  node_type: memory
  type: project
  originSessionId: 7f2a5325-2cc9-4c97-9679-ec83bcdf63a5
  modified: 2026-09-09T00:00:00.000Z
---

Deliberately deferred, each verified to exist as of 2026-09-07 (`72cbcfe`):

1. **Multiple return values.** olang can return one value or one error, never two values. The user hit
   this asking whether `int32&` should be allowed; it stays rejected (olang's `&` bundles heap
   indirection, a scope tag AND identity - `==` on a reference is pointer identity - and the third is
   wrong for a primitive). So there is no out-parameter for a primitive and no tuple. **The user asked me
   to remember this as a future problem.** Fix the missing feature, not the reference model.
2. ~~**Per-level array reference markers.**~~ **RESOLVED** - a type with `k` array suffixes now has `k+1`
   marker positions pairing with levels inside-out; `int32[2]&[3]&` parses and runs. Verified 2026-09-17.
3. ~~`p = q` through a `mut Point&` parameter~~ **RESOLVED 2026-09-07 (`a72d120`)**: kept as-is and
   documented as S4a. `=` on a reference overwrites the *pointer* in every position; on a parameter that
   is this call's own cursor. Write-through was rejected because `x = y` must imply `x == y` and E10
   compares references by identity.
4. ~~**Zero-initialization of arrays**~~ **RESOLVED** by `null` (T2a) plus D13/D13a/D13b: a declaration with
   no initializer is its zero value, a declared-size local array is uninitialized, and `= v` fills, so
   `b mut byte[64] = 0` is declarable and passable. Verified 2026-09-17. Original note follows.
   **It was parked on 2026-09-09**, deliberately, after
   I proposed relaxing D13. The measured state: `byte[n]&` is allowed and `byte[64]&` is rejected, because
   `buildVarDeclStmnt`'s runtime-sized branch checks `typeContainsReference(*declType.arrElem)` (elements
   only) while its compile-time-length branch checks `typeContainsReference(declType)` (including the type's
   own outermost level). So a zero-filled fixed-size buffer that can be passed to a function is not
   declarable, since D9a requires array parameters to be references - which is why `io.olang`'s own test
   sizes its buffer at runtime for a length it knows statically. **The user's decision: leave it, "we will
   get to eventually"; for now, no init.** They also settled the nested case in the same message: an array
   *of* references (`Point&[N]`, `Point&[N]&`) should stay rejected "since we can't guarantee the values of
   the ptrs" - and named this as where a growable/dynamic array will earn its keep. So the eventual fix is
   about the *container* being a reference, never the elements.

**Why:** all of these were found by writing real code (the stdlib) or by the user questioning the model, and
all were consciously left rather than forgotten. A fourth entry, the byte-literal gap, was found the same
way on 2026-09-09 and fixed immediately (`46b6fbd`) rather than deferred - see [[project-olang-next-steps]].
The generic-inference literal gap (2026-09-21) is **RESOLVED** as G9a (2026-09-24, `27d99f0`).

5. **RESOLVED 2026-09-28 as O25 (`2379c87`): references never narrow.** Was: writing through a narrowed reference (found 2026-09-24, `58d0ff8`).** `a mut N& = p`
   (p is `N&s`) then `a.next = N(5)` allocates the temporary into `a`'s narrowed own scope and stores it in
   the caller's node: a use-after-free, reproduced by churning the arena. Same one hop further via O17
   (narrowed local determines a callee's scope var). O24 closes it only for bare-& params. Fix needs a
   design decision - provenance ("exact" tags) vs invariance of mutable refs under narrowing - so it was
   raised with the user, not patched. O5's blanket rejection (which over-rejects `a.next = b` for two
   same-block locals) stays until then.
6. **RESOLVED as G8b** (`<T>` everywhere, `List<<T>>`). Was: a generic type's method whose signature mentions `T` only in the receiver
   must write `List< <T> >` (G8a: bare names in type-args resolve, never introduce). Go's answer is that a
   receiver's type args always introduce.

**Status 2026-10-08:** historical - every item here is resolved, item 1 as D8c (multiple returns). O10e (the scope order) was itself removed
later by O4b. Nothing in this file is open.
**Status 2026-09-29:** item 1 RESOLVED as D8c (multiple returns, `be0f44d`); scope order RESOLVED as O10e;
the "grow builtin" question resolved (no such builtin; user satisfied). Everything still awaiting the user is
in [[project-olang-pending-decisions]]. Older status line follows.
**Status 2026-09-28:** open is item 1 (multiple returns). Pending user answers: implicit scope ORDER
(shortest first) - I flagged over-constraint of unrelated scopes (e.g. ToArray's return scope); and
whether primitives become referenceable (`int32&`) - the user floated it because everything has methods.
**How to apply:** raise the relevant one when its area comes up; do not silently work around them.
See [[project-olang-next-steps]].

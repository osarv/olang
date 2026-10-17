# Soundness review: `own` references and `take` (first cut)

Branch tip 42efc87 (detached in /home/user/wt/rvown1), base b6af0af. Read-only. The compiler was built with
`make` there; reproducers are in `repro/` and run against `/home/user/wt/rvown1/build/out`.

Tools used: `-s` (scope sanitizer), `-r` (ThreadSanitizer, with libclang-rt-18-dev installed for the session),
`-i` (interpreter), the scope fuzzer (`fuzz_fuzz.debug scope`), and destructor counters. `-s` is the oracle: a
read of released region storage aborts with `use after scope closed`. The author's own suite is clean under it
(`build/out -t -s shared.olang`: 0 `use after scope closed`), so `-s` is not false-positiving — the findings
below are genuine escapes.

## Summary

Two independent use-after-free holes, both of which the borrow check **accepts**:

1. **Kept-reach move + root confusion (single-threaded, the serious one).** `take` of an own slot into another
   owner's slot of the same reach (`ownKeptReach`) transplants the object into a new owning tree without
   re-rooting the loans on it. A release through the new owner does not see a loan rooted at the old owner, so
   the still-borrowed object is freed. Corrupts memory in a plain `-b -O3` build.

2. **A task borrows internally from a shared reference while the spawner releases (concurrent, race-free).**
   The first cut computes per-function *release* effects but no *borrow* effects, and only treats borrows passed
   **directly** as task arguments as loans-to-the-join. A task that reads an owned object through a shared
   non-own mutable reference argument is invisible to the spawner's release check. Channel-synchronised, so
   TSan reports no race — yet it is a deterministic UAF.

A third item (a destructor-bearing child built into a reference field is not released) is **pre-existing**
(reproducible with no `own` at all) but undercuts O30's "closing the region runs the destructors registered in
it", so it is recorded as PLAUSIBLE.

---

## CONFIRMED

### C1 — `take` across owner-local trees drops a loan's root (UAF, single-threaded)

`repro/r01b_kept_move_root_corrupt.olang`, `repro/r01_kept_move_roots.olang`,
`repro/r02_kept_move_param_to_local.olang`, `repro/r03_kept_move_local_to_param.olang`.

```olang
o1 own mut Holder& = Holder()
o1.cur = Node(5)
o2 own mut Holder& = Holder()
c := o1.cur              # loan on the Node, rooted at o1
o2.cur = take o1.cur     # kept-reach move: the Node is now owned by o2; c's loan still roots at o1
o2.cur = null            # release through o2 — the o1-rooted loan is not seen
println(c.name)          # reads freed, reused memory
```

Accepted by the compiler. Observed:
- `-b` (`-O3`): prints garbage (`)       ` instead of `the node name is 5`) after a `churn()` reuses the chunk.
- `-b -s`: `use after scope closed`, abort (exit 134).

**Root cause.** O39's root model (decision 3) assumes an owner local's tree is reachable only through that
local, so a release rooted at local `o2` meets only loans rooted at `o2` (or unrooted ones) — `ownLoanHits`:

```c
if (root == OWN_ROOT_LOCAL && (!local || (lr == OWN_ROOT_LOCAL && local != l->R->regionRootLocal) || lr == OWN_ROOT_PARAM))
    return false;
```

`ownKeptReach` (decision 6, `buildOwnAssign`) makes `o2.cur = take o1.cur` a pure move that registers **no**
release — correct, a move frees nothing. But the move transplants the object from o1's tree into o2's tree while
the loan `c` keeps its original root `o1` (the loan's root is fixed at the read, `ownRegionNew`'s
`regionRootLocal`). The later release through `o2` (`local == o2`) then misses `c` (`rootLocal == o1 != o2`).
The invariant "an owner local alone reaches what it owns" is broken by a cross-local move.

The symmetric param↔local variants fail the same way (`r02`: loan rooted at parameter `p`, object moved into a
local `o`, released through `o`; `r03`: the reverse). Each is accepted and aborts under `-s`.

The same-path exemption (decision 4) is *not* the cause and is itself sound: `repro/sp01.olang`
(`head.next = take head.next.next` with a loan on `head.next`) is correctly refused.

### C2 — a task's internal borrow is invisible to the spawner's release (UAF, race-free)

`repro/k02_task_borrow_spawner_frees.olang` (minimal), `repro/k03_task_borrow_spawner_frees_corrupt.olang`
(visible corruption).

```olang
fn work(h Holder&, a mut chan.Chan<I64>&, b mut chan.Chan<I64>&) {
    c := h.cur               # a borrow of the owned Node, derived inside the task
    chan.Send(a, 1)
    r := try chan.Recv(b) catch { return }
    println(c.name)          # read AFTER the spawner freed the Node
}
fn main() ? {
    s := Holder()
    s.cur = Node(3)
    # (channels a, b created and chan.Init'd)
    join {
        spawn work(s, a, b)
        r := try chan.Recv(a) catch { return }
        s.cur = null         # free, ordered strictly before work's read via channel b
        chan.Send(b, 1)
    }
}
```

Accepted by the compiler. Observed:
- `-b -s`: `use after scope closed`, abort (exit 134).
- `-r` (TSan): **no race reported**, 3 runs — the channels establish happens-before, so it is a correctly
  synchronised program.
- `k03` in a plain `-b` build: the spawner reuses the freed chunk (a `List<String&>`) before releasing the task,
  and the task's `$c.name` reads a corrupted String length → `out of memory`.

**Root cause.** The borrow pass computes `OwnEffects` (what a call may *release*) and, for a spawned call,
either rejects it if it may release (O41 strict, `ERR_OWN_TASK_RELEASE`) or, for borrows passed as **arguments**,
adds them as loans held until the join (`STATEMENT_SPAWN`, the `ow.cur` → always-live holder). The directly-
passed-borrow case is caught (`repro/k04.olang`: `spawn look(s.cur)` + `s.cur = null` → O39). But here the task
argument is `s` — a plain `Holder&` reference that carries **no loan** (`ownLoansIn` of a non-own reference read
is empty) — and the borrow `c` is created *inside* `work`. There is no "borrow effect" dual to the release
effect, so the spawner's `s.cur = null` is checked only against loans live in `main` (none). The task's borrow,
live until the join, is never seen.

O41's justification does not cover this. The spec frames cross-thread owner sharing as "a data race (P8b),
undefined as every data race is", and specifically about "a task **releasing** an object another thread uses".
Here the task only *borrows* and the *spawner* releases, with full channel synchronisation — TSan confirms no
race. So within the race-free programs the guarantee is supposed to hold for, §8.8's and O39's unconditional
"nothing still in use is freed" is violated.

Scope: needs a task that (a) receives a shared non-own mutable reference through which the owned object is
reachable, (b) derives a borrow of the object internally, and (c) is ordered against the spawner's release by
synchronisation. Narrower than C1, but it is the network-loop shape the feature is partly aimed at.

---

## PLAUSIBLE

### P1 — a destructor-bearing value built into a reference field is not released (pre-existing)

`repro/fr04_region_child_dtor_skipped.olang` (via an own region), `repro/fr05_field_assign_dtor_skipped.olang`
(no `own`).

```olang
a mut Node& = Node(1)     # Node has a destructor
a.kid = Node(5)           # a.kid is a plain `mut Node&` field — Node(5) built into a's scope
# at scope close: Dropped == 1, not 2  — Node(5)'s destructor never runs
```

Two sibling locals (`repro` fr06, inline) drop 2 correctly; a value assigned into a reference **field** drops
only itself. The codegen diff does not touch the non-own reference-promotion path (`cgStoreInto`/`cgAssign` only
gained an early `if (s->target->type.refOwn)` branch), and `fr05` uses no `own`, so this is **pre-existing**, not
introduced by the cut. It is recorded here because it directly weakens O30 ("closing the region runs the
destructors registered in it"): an own object whose fields hold destructor-bearing values through plain
references (`fr04`) leaks those destructors when the region closes. It is a resource leak, not a UAF or
double-free. Worth confirming against base b6af0af and fixing in the reference-field assignment path regardless.

---

## Over-rejections (brief, all safe)

- `best Node& = s.cur` — a **typed** borrow local from a single own-slot read — is rejected `error[O10]` at the
  declaration, though O33 says it "takes that read's region, as a `:=` local takes its initializer's scope". The
  `:=` form (`best := s.cur`) works. `repro/or02.olang` (rejected) vs `repro/or03.olang` (accepted). O25a's
  "take the initializer's scope" is applied only to the bare-`&`/`:=` path, not to a written reference type.
- `best = s.alt` reassigning a typed borrow local to a different read (the doc's `best = c` walk idiom, O33/O12
  "not known") is rejected and the error points at the *declaration* line, not the reassignment.

---

## What held

Extensively probed and sound:

- **Single-threaded releases** across every form: assignment, `= null`, `take`, block end, `return`/`break`/
  `continue`/`error` early exits, loops, `if` branches, `defer` (both orderings — a borrow used before a
  deferred release is allowed; a borrow used *in* deferred code after a release is caught), `match`, conditional
  values, comprehensions. All releases-under-a-loan caught (`repro` l02/l03/l06/df01, inline).
- **Releases through calls**: direct, two-deep, mutual recursion settled late, constructor bodies, generics
  (`fn rel(h mut <T>&)`), trait default methods — all caught via the `OwnEffects` fixed point (`repro` g01/c01/
  c02/t01, inline).
- **O40/O41 strict**: a named function, a lambda, a `Call` adapter, and a generic function value that may
  release are rejected where they become a value; a destructor releasing through a global is rejected; a
  spawned call that may release is rejected (`repro` f01/f02/f04/d01/k06, inline).
- **The directly-passed-borrow-to-task** case is caught (`k04`), in contrast to C2.
- **Owner reach on moves (O34)**: moving a block-reach owner into a program-reach slot, and building an owner
  holding a `&p` ref to a shorter-lived scope into a longer-lived slot, are both rejected (C2d/O34) (`repro`
  rc01/rc02, inline).
- **Borrows are confined**: a borrow cannot be stored in an enum payload (T17c), a `&p` struct field (C2d), a
  result (returning the owned object's own borrow, or a part of it, is O10 — O37 not implemented), a global, or
  anything outliving its region (`repro` m01/l04/rh01/rh02, inline).
- **Runtime**: move-then-close does not double-free (`fr01`); null-then-close does not double-free (`fr02`); a
  self-reading overwrite `s.cur = Node(s.cur.n + s.cur.kid.n)` computes correctly before releasing the old
  region (`fr03`); the region-argument re-read (decision 10) and `ERR_OWN_BUILT_BEFORE_BORROW` work, and the
  region header is read correctly after reassignments in a loop (shared.olang's O30/O33 churn test, and a
  task building into a region through a stand-in).
- **Evaluator / K2**: `take` nulls the slot and `= null` releases it with the same observable result while
  compiling as at run time; baked globals computed through owners (built, moved, released) agree with run time
  (`repro` ev01/ev02, inline, and shared.olang's `OwnSumBaked`).
- **Scope fuzzer**: 750 programs / ~3770 scenarios across two seed ranges (mixed mode, own is ~1/12 of
  scenarios), 0 findings. It does not generate the channel-synchronised task shape of C2, which is why C2 was
  found only by hand; and it does not generate the cross-owner-local `take` of C1 in a form whose `-s`/`-i`
  comparison would flag it.

(Inline reproducers not copied to `repro/` were run from the scratch worktree during the review; the copied set
covers the two confirmed findings, the pre-existing one, and the over-rejections.)

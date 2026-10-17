# Soundness review: `own` references after the first review's fixes (second cut)

Worktree `/home/user/wt/rvown2`, detached at **252c3bc** ("the own review's fixes"). Read-only; compiler
`/home/user/wt/rvown2/build/out`. Oracles used: `-b -s` (scope sanitizer; a read of a released region aborts
`use after scope closed`), `-i`, `-b`, destructor counters, and the scope fuzzer (`fuzz scope`). Reproducers in
`repro/`; scratch in `scratch/`.

## Verdict

**No confirmed use-after-free, double-free, lost destructor, or data-race-free cross-thread free that the
compiler ACCEPTS.** Every hand-written attack on the two relaxations (R1, R2) and on C1/C2's families is refused,
with the right diagnostic; the first review's reproducers are all refused; a fuzz of ~265 clean seeds (16
scenarios each) finds nothing. The feature is sound within what it implements (own on fields/locals/globals; all
of parameters, results, own elements, `Vec`, owning-structs-by-value, and releases through function
values/destructors/tasks are still T25e/O40/O41 compile-time errors, so those avenues are closed, not holes).

One important caveat about method: the scope fuzzer, run with multiple jobs, initially reported 36-70 "findings".
**All were a harness artifact, not real bugs** - see "A fuzzer false-alarm" below. Once the stray process was
killed, clean runs report 0.

## PLAUSIBLE / out of scope

Nothing own-specific. (The fuzzer's non-own Str-scenario "disagreements" were the same harness artifact.)

## What held (reproduced; all correctly refused or correct)

R1 - a store's value may use a borrow of what the store releases:
- `s.cur = Conn(c.fd + 1)` with `c := s.cur` and `c` used **after** the store -> O39 (repro/r1a.olang).
- the value-only use (`s.cur = Conn(c.fd + 1)`, c not used after) compiles, and `ownBeside`/`O39` baked tests agree.

R2 - a release/move "beside" a borrow (through a different own slot of one object) leaves it alone, but a
release/move that actually reaches the loan is caught:
- parent released while a child is borrowed: `s.cur = null` with `c := s.cur.sock` -> O39 (repro/r2a.olang);
- the whole parent moved (holding the borrowed child) to a sibling: `s.other = take s.cur` -> O39 "...moves the
  Sock borrowed..." (repro/r2b.olang);
- a borrow through an array element inside an owned object (`c := s.cur.arr[0]`), owner released -> O39
  (repro/r2d.olang);
- inner own-field released directly (`s.cur.sock = Sock(9)`, `d := s.cur.sock`) -> O39 (repro/in1.olang);
- release through a method on the owner (`s.cur.close()` frees the sock while it is borrowed) -> O39 (repro/mc1.olang);
- release through a borrow local (`c := s.cur; c.sock = null`, d := c.sock) and through a borrowed-result base
  (`pick(s).cur = null`) -> O39 (repro/ib1.olang, ib2.olang).

C1 - a move never drops a loan's root (first review's reproducers r01/r01b/r02/r03, sp01 all refused), including
deeper trees and a move into a region nested two owners down.

C2 - a task's internal borrow reaches the spawner's release:
- a task reading `h.cur` through a shared reference, spawner releases -> O41 (first review k02/k03/k04 refused);
- a borrow local handed to a task -> O39 (repro/tk3 in scratch);
- a nested spawn whose sub-task borrows the outer spawner's data -> O41 (repro/tk1.olang);
- a task that borrows a sub-object (`c.sock`) while main releases that sub-object -> O41 (repro/tk4.olang);
- a task rendering (`$`) an owned object while main releases it -> O41 (repro/tk5.olang);
- the loop-rewalk: a loop in a join block releasing what a previous turn's task may borrow -> O41 (repro/lr1.olang);
- deferred code before a join releasing under a task borrow -> O39/O41 (repro/df1.olang family).

Other:
- release/move/take-statement/return/early-exit under a live loan (incl. across a 3-deep call chain and a method)
  -> O39 (repro/ce1.olang, ts1.olang);
- returning a borrow of an owner local -> O10 (repro/ex1.olang);
- storing a borrow into a sibling's plain-reference field -> O10/O33 (scratch r2c);
- double ownership (`s.b = s.a` without `take`) -> O34; a 3-`take` swap destructs each object exactly once
  (repro/ds1.olang);
- release through a function value / RunOnStack lambda / a lambda capturing an owner local -> O40/O32
  (repro/fv1.olang, o32.olang);
- conditional/match yielding a borrow: both branches tracked, releasing either -> O39 (repro/cm1.olang);
- a nested owner released through an outer plain-reference chain (`s.o.inner.cur`, `s.o = null`) -> O39
  (repro/a01.olang, a02.olang);
- **evaluator vs run time**: a baked global and a decided assert computed through owner locals, `take`, releases
  and a recursive sum agree with the run time (repro/ev2.olang), as do shared.olang's OwnSumBaked/OwnBesideBaked.

## A fuzzer false-alarm (method note, not a finding)

Running `fuzz scope ... JOBS>=1` produced 36-70 "`-d -s` disagrees with `-i`" findings. On inspection every one
was spurious: the snapshotted `build/fz/scope/<seed>/p.olang` re-run under `-b -s` and `-i` AGREES, while the
recorded `s.txt`/`i.txt` came from a DIFFERENT program (different scenario values and even different scenario
sets). The cause was a **stray `fuzz_fuzz.debug` process** (a backgrounded earlier run) still writing into the
shared `build/fz` tree and racing on the per-worker `p.olang`/output files and the global counters. After
`pkill -9 -f fuzz_fuzz`, clean runs give **0 findings**: seeds 1-90, 400-509, 600-639 and 1-25 (16 scenarios
each, ~265 programs) all report `0 findings`. The one scope scenario whose *body* used own and was flagged
(seed 225) agrees perfectly in isolation (both print `41`). Recommendation: run `fuzz scope` only after
confirming no other `fuzz_fuzz` process is alive (it does not isolate its working tree per run).

## Over-rejections (brief, all safe, already documented in docs/own.md section 12)

- a typed borrow local (`c mut Conn& = s.cur`) is O10 ("only `:=` holds a borrow"); use `c := s.cur`.
- a `:=` borrow local cannot be reassigned to another read (`c = s.alt`) - O10 at the reassignment.
These block the natural "walking cursor over an owned linked structure" idiom (you cannot reassign a borrow
local), so a loop that borrows-then-releases must re-`:=` a fresh borrow each turn. Not a soundness issue.

## Not yet implemented (correctly rejected, so not holes)

`own` as a parameter/result/element, `List<own T&>`/`Map` of owners, an owning struct by value, and any release
through a function value/destructor/task are T25e/O40/O41 compile-time errors on this cut.

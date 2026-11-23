---
name: decisions
description: "Ledger of every olang decision I flagged for the user that is still unanswered - question, default in effect meanwhile, my recommendation; re-raise when the area comes up"
metadata:
  node_type: memory
  type: project
  originSessionId: 7f2a5325-2cc9-4c97-9679-ec83bcdf63a5
  modified: 2026-10-17
---

Every question I put to the user goes here the moment I ask it, and leaves only when they answer - the answer then goes
into CLAUDE.md/HISTORY.md as any design decision does. Unanswered is not consent: the default stays in effect and the
entry is re-raised when its area comes up or at the end of a report. One decision per number, each with the default in
effect and my recommendation. See rules.md, "How to decide and record". Rebuilt 2026-10-08 after an audit of
CLAUDE.md, HISTORY.md and the old ledger (the full old ledger is in git at bc9f9c9). Slimmed 2026-10-17: answered questions and the numbered decisions 1-51 are in archive/decisions_log.md (not imported). Recorded future work that asks
nothing of the user is in plan.md, not here.


(Every answered, decided, confirmed or superseded entry - their answers are in CLAUDE.md and HISTORY.md - was moved verbatim to
archive/decisions_log.md on 2026-11-08, to keep the context every session and agent loads small.)

Open questions:

1. (2026-11-22, asked via the Orchestrator) Freeing a joined task's results early: a value a task builds (a Vec grown by Push on the task's thread) can be freed by the spawner only if a region made on one thread may be released on another; today the pools are per thread. Options in docs/freeing.md 2.4 question 1: (a) keep as is (task results never freed early); (b) the spawner makes the result's regions before the spawn and the task's growth into them takes a lock; (c) hand the task's result regions to the spawner at the join's wait, pools taking releases from other threads via a lock-free return list. Default in effect: (a). Recommendation: (c) - no cost in the task, one step per join; section-8 design (Opus xhigh).

2. (2026-11-23, asked via the Orchestrator) A writable reference parameter's referent held whole by the call, beside tasks: O43
   already writes an exclusive `mut T&` parameter `noalias`; LLVM keeps its lanes in registers through a loop only
   with `writable` too, which O43 adds only where no task can run beside the call - since by P8b another task may write
   a part of the referent the call does not touch, and the stores LLVM adds would race with it. Measured: oann's
   kernels/gemm groupWide accumulating into its `mut tile&` runs 130 GOPS vs 254-360 with a local accumulator at
   512^3-1024^3 (a program with a task: 79-104 ms vs 26-36; without one, equal). Options: (a) keep - a local
   accumulator copied out is the idiom; (b) extend P8b: while a call runs, the whole referent of each writable
   reference parameter is the call's, another task touching any part of it is a data race - then `writable` goes on
   every exclusive parameter. Default in effect: (a). Recommendation: (a) - (b) makes programs that are race-free
   today undefined, against "unless the compiler proves we are the only one" (2026-11-18), for a cost the local
   accumulator already avoids at no price.

2. (2026-11-23, asked via the Orchestrator; review10 Q) A view of one Vec<T> keeps every Vec<T>'s growth program-wide: the freeing analysis's place for a library collection's buffer covers the whole type, so -memory -check (now reporting it, review10 F1) accepts it. Options: (a) keep as is (reported, not a gap); (b) count such a keep as a gap unless the view could be the let-go's own old storage (the free pass's value origins decide) - honest, more programs flagged; (c) (b) plus per-value buffer places so the keep goes away. Default in effect: (a). Recommendation: (b) now, (c) as section-8 work after.

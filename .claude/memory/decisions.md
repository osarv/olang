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

3. (2026-11-23, asked via the Orchestrator; docs/fieldscopes.md question 1; the user, 2026-11-23, via the Orchestrator: "can we make B actually work?", worried it weakens memory safety - next: docs/fieldscopes.md for option B with a soundness argument (the field still cannot outlive its referent; only the exact-equality over-approximation goes), where the run-time lookup happens and its cost; no building until the user has seen it) A struct holding bare `mut X&` fields (the compiler's lower.lowering, emit.fnEm) gets its instance scope equal to X's (C2d/O25g), so what it holds and returns lives as long as X - the compiler's lower+emit peak 2.5 -> 4.3 GB. Options: (A) keep the rule, restructure lower/emit (output passed to every method); (B) a field that can be stored through gets a binding of its own (O28/O23a), passed by callers and found at run time (O29) only where no caller knows it; (C) scope parameters in struct types. Default in effect: (A). Recommendation: (B). Section-8 design.

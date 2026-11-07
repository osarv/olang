# Round "dropord" - hand-off (wt-dropord, from dafb690)

Brief: /home/user/review/rounds/dropord-brief.md; rules of work: /home/user/review/rounds/finish-rules.md (no full
verify, one `make quick` at the end through /home/user/vlock).

Phases, in order, a commit series each, a design section written before each is built:
1. Drop order computed from references (QCZ): holders ended before what they hold, cycles an error.
2. Unique Part C: storage freed where a destructor runs (free.olang, O8d).
3. Reuse in place (Perceus-style, no counts), only where measured.
4. The sharper C-call rule (effects.olang Unknown/Back, free.olang condition 3).

Development compiler: build/olang, first built by /home/user/wt/merge/build/olang (build/olang.base, the merged
master's) from these sources, then by itself (`build/olang build -output build/olang.next compiler/olang.olang`).

## Phase 1 - design (drop order from references)

- The order: a block's deferred code runs last registered first, but a by-value holder's drop that some other holder
  of the block holds waits until every such holder's drop has run (lowering `runOrder`). Only held drops move, and only
  later. Pulling the holder earlier instead would end it before deferred code registered after it, which may read it.
- "Holds" (`typed.DropHolds`): flow-insensitive points-to over the body - by local, the locals whose storage its value
  may refer into; grown by stores, Lets, bindings, spawn targets, yields, and by every call: storage reachable writably
  from what a call is given may come to hold any reference reachable from what it is given (callee never read: one
  decision with and without the scope pass, since the evaluator lowers before it); lambdas capturing both likewise;
  each step filtered by `types.RefInto`. H holds V iff V is in H's transitive closure.
- Soundness: a destructor reads, through references, only storage its value's references reach; the walk
  over-approximates every way a reference into V's storage can reach H's storage within the body (assignments; calls,
  which are the only way code elsewhere can write H - a callee storing into H must be given a writable path to H, and
  can store only references it is given or reaches from what it is given; captures) - the types filter only removes
  what no value of the type could hold. So when H's destructor runs, every V it may read is still alive, unless H and
  V hold each other - the cycle, an error. Parameters end with the body's block; a parameter cannot hold a body local
  (section 8: a by-value parameter's references live where the caller's do).
- Test builds: guards re-registered so the unwinding ends holders first. Registered values (O16) and interpret's stop
  cleanups keep their order (recorded limits).

## Phase 2 - design (unique Part C)

- A destructor body is walked as a call where a holder ends its value (Drop/Destroy in the code; its parts' destructors
  too), its let-goes judged there - only where no value of its type (or one holding it by value) is ever registered with
  a scope (O16: held calls, reference-only instances, escapedHome holders) and not in a test build. Otherwise it stays a
  hidden let-go, which keeps.
- A holder's drop at block end is a let-go of its leaves, judged from the block's end; lowering releases them after the
  destructor. A QCE copy stored into a part held in place is the leaves' value made at its site (a region of its own).
- Soundness: a release at a drop frees only a sole place's value - built for the place in a region of its own, no
  reference to it stored elsewhere, no view in use after the drop (judged where the drop runs, the block's end, after
  every holder of it has ended - phase 1). The destructor reading the value runs before the release; any other code
  that could read it at a point no call is written (a scope close's registered destructors, a test guard) makes the
  type unmodelled, so the place keeps.

## Status

- Phase 1 built (types.RefInto, typed.DropHolds/DropHolder, lower runOrder/guardAgain, check.settleDropOrder,
  msgs.DropCycle, SPEC O15, tests/drops.olang `holders` (24 pass, -sanitize too), checks o15dropcycle,
  o15dropcyclestep; CLAUDE.md, HISTORY.md). Bug found in my own first cut: DropHolds returned no Held rows on its early
  exit (crash in settleDropOrder) - fixed before commit.

- Phase 2 built partly: destructors modelled as calls (never registered, not test builds), holder drops releasing their
  leaves, QCE copies at stores made for their leaves. Vec pushed + truncated 260 MB -> 1.9 MB; the Map patterns unchanged
  (517/260/517 MB): every by-value hand-on of a unique value is a copy whose source is never released, and moving instead
  read freed storage (valueArg tried and reverted - section 8 places a by-value parameter's parts as the frame's own);
  tracking the copies instead exposed a viewCtor gap (an array leaf's D9h copy at a store is no recorded store) - also
  reverted. checks earlyfree `dropvec`. Records: SPEC O8d (let-go at a holder's end, condition 4), CLAUDE.md limit,
  HISTORY "Unique Part C, built".

- Phase 3 (reuse in place) measured, not built: early freeing already reclaims the shape it could reach (field Vec
  reassigned: 0.5 s / 1.8 MB vs 3.1 s / 4.1 GB kept); ~45% of what is left is the allocator (a malloc'd region per
  allocation) - cheaper regions (a per-thread free list) would gain more, for a runtime round; the text and tree shapes
  are not sole places, so neither freeing nor reuse reaches them. HISTORY "Reuse in place: measured, not built".
- Phase 4 built: Loader.HandedToC (check, X13), Loader.SharedLib (-library), Loader.LinksOwnC, typed.NoCallbackExtern;
  effects.cMayCallBack, free.handedToC; SPEC O8d condition 3, G42, B11b line; CLAUDE.md G42/F6; cases g42exportback
  (rewritten), g42exportquiet, g42exportkept, e31bexportback (rewritten), e31bexportquiet; earlyfree exportquiet.

## Decisions (mine)

1. "Holds" read off the function itself: any call given storage H reaches writably and a reference reaching V counts,
   its callee never read (one decision with and without the scope pass; a callee's edit never reorders a caller).
2. Every step filtered by types (types.RefInto); function values, anys, type variables hold anything.
3. The held one's end moves later (push back), never the holder's earlier.
4. A cycle is an error at the later declaration, naming both; said by check after the last attempt.
5. Test builds re-register holders' guards after a held value's; interpret's stop cleanups and O16-registered values
   keep their order (limits).

6. Part C: destructors modelled only where provably run at a written point; registration propagated through by-value
   parts; a value moved out of a place then held where its call lands keeps the place.
7. Part C: the unique hand-on move NOT built (it needs section 8's obligation for a by-value parameter's parts) - for
   the section-8 round, with the viewCtor array-leaf gap.

8. Reuse in place not built (measured: only where early freeing already works, and there the region per allocation is
   the cost).
9. The sharper C rule: C of the program's own (a `.c` import or any `link`) counts as handing every export fn - C can
   call an export fn by its name; the no-callback list is the C library's I/O, text, memory and time functions.

## Quick (one run, 2026-11-07)

- `make quick` through /home/user/vlock: everything passed but the goldens (tokdiff, astdiff, layoutdiff, diaggold - every
  difference this round's files and fields: recaptured, 0a99778) and two test files the out-of-memory killer ended
  beside other rounds' builds (compiler/lower.olang, compiler/lsp.olang - both pass alone, through /home/user/blk).

## Next

- Nothing left in this round; for the section-8 round: the unique hand-on move with its obligation, viewCtor's array
  leaves; for a runtime round: cheaper regions.

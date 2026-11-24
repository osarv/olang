# Hand-off: "OLang Debts" (the Orchestrator's olang child), stopped 2026-11-24 ~11:40 CET, queue empty

Read first: CLAUDE.md (+ memory), `.claude/memory/claims.md` (bottom lines), this file. Report to the Orchestrator
(session_01DLX3UBHd8HMF7FDnor8uCz) by send_message.

## Done 2026-11-24 (all merged to master/pushed; details in HISTORY.md)
- wt-e73finds (bee87cb62): M19 Array method by element type; std Array.Permutations.
- oann wt-bf16gemm (oann eaa9b08): BF16 pair-dot micro-kernel, on only for znver4/5 (Workspace.Pairs); loses to widened
  F32 on SPR. TODO on the PC (Ryzen): `make bf16bench` in oann to confirm it pays there.
- wt-copyonce (ad0147dbe) + wt-copyonce2 (c8f897633): fresh conditional arms, try-wrapped calls, try with a default and
  call results into early-freeing regions (function fact StartsAlloc) built where they go.
- wt-slicehoist (01587e657): no change - O44 already hoists slice checks; finding in HISTORY.
- wt-evaltriage (5255306c8), wt-arrayeval (738ea9ff9): none of OLang Cloud's golden/eval findings reproduced; evaldiff names
  a stale run.txt; tok/ast goldens recaptured.
- Full make verify on 1cc282a15: failures all closed (taskvals by OLang Cloud's cond3, cf42abcac).
- wt-gaps1719 (c71ce26dd): freeing gaps 17 and 19 reproduced as fixtures - for OLang Cloud (gap 19: -memory -check misses it).
- wt-fieldborrow (485d39816): `d := f.data` reads in place unless a call in the block may write a global (D9h, DecideWrites);
  wt-writesfact (7915f3904): DecideWrites conforms to B3i (33 ms, +4 MB on the self-build).

## Left (none mine to start unasked)
- For OLang Cloud: `h.last = f()!` still copies twice (free.redirect stops at the try); gaps 17/19.
- `f.Allocates` still counts the copy D9h now avoids (safe side).
- The mutable-globals fact (2026-11-21) recompiles unrelated modules when a global of a new type appears (HISTORY, 7915f3904).
- Ledger 1 (C union accessors) waits on the user.

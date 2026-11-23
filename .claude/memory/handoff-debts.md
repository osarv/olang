# Hand-off: the Orchestrator's olang child ("OLang Debts"), stopped 2026-11-24 ~00:45 CET at the weekly usage guard

Read first: CLAUDE.md (+ memory), `.claude/memory/claims.md` (bottom lines), this file. Report to the Orchestrator
(session_01DLX3UBHd8HMF7FDnor8uCz) by send_message; findings from other sessions are triaged like bugs (rules.md).

## In progress (not merged)
- **wt-e73finds** (pushed branch, 2 commits, verify NOT finished): 581742466 M19 - an Array method picked by its element
  type (`Array<String>["a"].Join(" ")` was refused with E12, the `Array<String&>` overload always chosen; Vec was fine);
  bbf8bf9d2 std `Array.Permutations` (in-place lexicographic walk). To finish: rebuild, `make fixedpoint`, the touched
  tests and prelude tests, OLANG_EVALUATE=1, goldens (tok/ast/run), records (SPEC/settled/HISTORY), merge; then tell
  e73 (session_01DLX3UAd4eQzhKeE6Wqgqpc) the commit. Found by e73: R23a refusing nextPerm stays deliberate.

## Open question (ledger 1, asked via the Orchestrator as its 7)
- An anonymous C union's own members (gpio_v2_line_attribute.flags/debounce_period_us) - copy-based get/set accessors
  or leave to C. Default: C's. If yes: generate accessors in compiler/bindgen.olang (X18), tell home/
  (session_01DLX3U7kkfPnv219zp4wSrU).

## Done today (all on master; details in HISTORY.md 2026-11-22/23)
M13 import order; checks for early must-not-compile shapes; types.HeldParts; O43 measured (writable kept, the user's
call); build memory (Analyze's own diagnostics, plans by Ref, objects spilled, fresh values built where a reference goes);
compile speed (views/emit/records); M9 unknown qualified type; S9a loop names as values; T25c literals (IterMut) and
Map walks (IterRef/IterMut); E39 BF16 pair dot (vdpbf16ps); tile.AddDot (AMX, bit-exact, model in HISTORY);
TargetHasTileDot; blocking waits (no PollNs); UTF-8 in literals/comments; emitdiff retired; time.LocalOffset, tls pin,
DialToLearn, Fingerprint; X17 one C type per tag; X18 anonymous C members.

## Queue / known leftovers
- Build memory: the compiler gets no early freeing (condition 3: a function value handed to C) - routed to OLang Cloud;
  a conditional given to a reference and a call result placed elsewhere still copy twice (plan.md).
- oann: kernels/gemm register blocking for the BF16 pair dot (22 vs C's 40 GMAC/s - bounds-checked slices per K step);
  AddDot only where TargetHasTileDot (its fallback is ~10 GMAC/s).
- OLang Cloud owns scope.olang/free.olang work (copy-back leak, spawn release, per-instance buffers, field scopes).

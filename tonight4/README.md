# Soundness review of the study-4 checker batch (wt-s4sem @ 096df0f vs master d97ae2b)

Built `/home/user/wt/rv4/build/out`; master rebuilt from the merge-base archive at
`/home/user/review/tonight4/master/build/out`. Compared accept/reject and ran the accepted programs
with `-b`, `-b -d` and `-i`, reading kept references back after an arena churn. One confirmed new
use-after-free; the rest of the relaxations held up.

## CONFIRMED (new) — O17b lends a handle as its reference when the callee stores the handle's own address

`repro/b1_backlink.olang`. O17b decides whether a `List`/`Map`/handle argument is used by the callee
"only through its reference" by scanning the callee's body tokens (`handleThroughParam`,
`handleThroughAt` in `bootstrap/semantic.c`). The scan at line 9364 skips any occurrence of the
parameter name that is preceded by `&` — `btIs(&toks, i - 1, TOK_BTWSE_AND)` — because `&name` is the
scope-marker syntax. But `&` is also the bitwise-and token: a handle type with a user `BitAnd(b) ... &b`
operator that returns its argument lets a method write `h.c.kept = h.c.kept & h`, storing a reference
to the handle's **own storage** into the map's long-lived `Cell`. The scan skips the `& h` operand,
sees only the LHS member chain (which it stops at the first reference field, treating it as a read),
and declares the method "through"; the call site (`bindCallScopeVars`) then sets `handleLent` and skips
the borrow-lifetime check (`borrowLifetimeFits` returns OK on `op->handleLent`). The handle is a copy
`c := try m.Get(1)` living in a loop block, so after the function returns, the map's `kept` field
dangles into the reclaimed block. rv4 accepts and the `-d` build segfaults (reading `b.c.kept.c.v`
after a churn); the `-b` build reaches not-yet-clobbered memory and prints a stale `102`/`42`; `-i`
prints `102`. Master cannot even express it (Map.Get's cursor was read-only there — the batch's own
T25c reconciliation made it `mut`, which is what first admits `c := try m.Get(1)`). Controls:
`repro/b2_nonhandle.olang` (a 2-field, non-handle Box — correctly rejected O17) and
`repro/b3_noand.olang` (the same store written `h.c.kept = h` directly — correctly rejected O17) prove
the acceptance hinges on the O17b handle path and on the `&`-laundering specifically. The batch's own
must-fail `o17bkeeps.olang` uses the direct bare store and so does not cover this. Trigger is contrived
(needs a user `BitAnd` on the handle type returning a reference to its operand), but it is a genuine
soundness hole: the token scan cannot tell the scope-marker `&` from the binary `&`, so it cannot
rely on "no bare occurrence stored" to prove a handle is used only through its reference.

## Checked and holding

- **O17b, ordinary laundering attempts** — all rejected: handing the handle whole to another
  function/constructor that keeps it (fixed-point sees the inner store), a method `me()` returning the
  receiver, `catch default h`, `h as Box&`, the handle passed to a cross-module call or a function value
  (conservatively not resolved → not "through"), and a task argument that is a handle copy in a join
  loop (`P2`, rejected). The direct back-link and hand-out are the batch's own must-fail cases and still
  fail.
- **T25c / Map.Get's mut cursor + read-only globals** — a `List` read out of a read-only `Map` (an
  immutable global, or through a read-only reference) is still writable, so `G.Get(k)` then `Push`
  mutates the global. This is the batch's own recorded QC/shallow-permission limit (noted in CLAUDE.md
  and the Map.Get commit), not new breakage — and master, lacking the mut cursor, simply rejected these
  programs; it is a consistency gap, not a UAF. Flagged as the one place a "read-only" `Map` of handles
  is mutable by design.
- **O26a (flow follows only references; borrowable locals moved to result scope)** — the broadening
  only *extends* lifetimes (moves more locals to the result scope); a missed move leaves the local in
  its block and is caught by the ordinary return scope check, so it cannot UAF. Verified: numbers
  computed from a line do not pin the line (`o26nScan`), text assigned in an inner block and returned
  via a constructor lives with the result (`repro/c4_inline.olang` and the corpus `o26bCheck`), and a
  slice returned inline is moved. Over-rejection (safe direction), not soundness:
  `repro/c3_o26keep.olang` binds the slice to a local (`s := a[1:4]; return V(s)`) and is rejected O26
  where the inline `return V(a[1:4])` is accepted — the flow scan does not follow the slice through the
  intermediate local.
- **E16 (constant OOB index under `try`)** — `repro`-style `try a[5] catch default -1` on a fixed
  array and a slice compiles and fires the default at run time (`-1`/`-9`), no miscompile; master
  rejected it at compile time. Correct opt-in check per the no-per-operation-checks policy.
- **T20** (error type as a value type) is a new restriction, not a relaxation — cannot UAF.
- **L9a / S12b** are syntax/typing (keyword field names; array literals in a match value) with no
  scope effect; the different-length match-literal into fixed storage is soundly rejected (T7d).

## Follow-up (2140794)

The batch rewrote O17b: "handle used only through its reference" is now decided from the CHECKED
body, not a token scan. `OperandReadVar` records every read of a handle-typed parameter in
`var->paramReads`; `handleThroughAt` walks the checked `codeBlock` (`htOp`/`htStmt`) accepting a read
only as a reference-field read-out or as an argument to a same-handle-type parameter of a declared
function/method/constructor that is itself "through", and then REQUIRES every recorded `paramRead` to
have been accounted for in the walk — so a read left in a part of the tree the walk does not visit
makes the answer "no". A lend decided inside a cycle is trusted and re-verified by
`settleHandleLends()` after all bodies are checked. This closes my prior finding and I could not break
it. **Nothing found** — no new UAF, no permission laundering.

**My prior finding is fixed.** `repro/f0_bitand_recheck.olang` (the `h.c.kept = h.c.kept & h`
laundering via a user `BitAnd`) is now rejected O17: the RHS `& h` is an ordinary FUNCCALL operand, the
walk asks `handleThroughAt(BitAnd, …)`, `BitAnd` returns its argument so it is not "through", and the
recorded read of `h` is unaccounted → rejected.

**Attacks on the paramReads accounting — all rejected O17** (reads the walk might miss but the
accounting catches): lambda capturing the handle and storing its address (`f1_lambda`), `defer`-ed
store (`f2_defer`), a local copy then store (`f3_copy`), an `id(h,h)` function returning its arg
(`f4_idfn`), a generic callee that keeps it (`f10_generic`), a spawned callee that keeps it
(`f12_spawn`), and a `try … catch default h` where the callee returns the parameter (`f13_trydefault`,
rejected O14). A direct field reassignment of the handle (`h.c = x`) is caught by `htOwnStorage`; a
deeper store of a reference to `h` is caught because the RHS read of `h` is a recorded paramRead the
walk must account for.

**Cycle path — rejected** (`f8_pending`, the batch's own must-fail, and `f11_methcycle`, a
method-receiver cycle): when a callee keeps the handle only reachable through the cycle,
`settleHandleLends` re-asks after all bodies are checked and errors the earlier caller's lend. The
legitimate cycle (`f16_cycleok`) still runs.

**View-flow relaxation (O26a follows a view of a borrowable local) — sound.** The relaxation only
extends a local's lifetime to the RESULT scope; every escape of the view to a longer-lived place is
still guarded. A view returned normally (`c4_inline`, `f6_viewchain` through two locals, `f9_viewparam`
a view of a parameter) runs correctly after an arena churn across `-b`/`-d`/`-i`; a view returned while
the base is reassigned to a different length (`f7_reassign`) is sound (the old buffer lives in the same
result scope). A view both returned AND stored into a `mut` global (`f15_both`), or stored into a
global without returning (`f14_viewglobal`), is rejected O1b — moving the local to the result scope
does NOT launder a program-lifetime store. A view returned while also pushed into an outer-scope List
across a loop (`f5_viewescape`) is rejected O10c (the List must outlive the result scope the local now
lives in). The over-rejection I noted before (`c3_o26keep`: `s := a[1:4]; return V(s)`) is now the
intended-accepted case and runs.

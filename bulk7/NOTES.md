# Bulk review 7 (11b8d38..db71837), checkout /home/user/wt/review7 @ db71837

## Progress
- Build: done (build/olang in review7). Scratch programs in work/. An 11b8d38 compiler is built at old/build/olang (for pre-existing checks).
- Areas done: D9i moves (aliasing, captures, slices, loops); O15 drops (join, returns/any/closures, hand-on + leaving args, contracts, Destroy/defer, failed test, store-over, gaps); T13b unique (generics, collections, landings in loops/comprehensions/do, function values, variadic); T13a immut (writes via globals, generics, conversions, extends); S4c (SetAt swaps); E31d Copy sites
- Areas done also: E31b two-phase (evaluator agrees), D9h stackArg (F12), turn copies returned, S4c index order, generics binding destructor types (G9c ref - fine)
- Also done: store-over through fields/payloads/references (order correct, d23), errors escaping main, constructor failing before/after a pun (d25), generic T bound to a destructor type (G9c binds the reference - fine).
- Not reached: free.olang (early freeing) x by-value holders; scope-pass homing of unique references in depth; `any` of unique holders across modules (B3i); views pass x RefMut through E31b two-phase; the fuzzers.
- In the middle of: nothing - review finished (handed back). Findings F1-F16 below; every repro is a top-level fNN_*.olang here.

## Findings
- **F1 (unsound acceptance / wrong result + 3-way disagreement; NEW, D9i f61fd13 - 11b8d38 prints "1 1")** `peek(t, t)` with
  `fn peek(r Buf&, own Buf)`: the by-value argument's copy of `t` is moved at t's last use although the same call lends
  `t` by reference - the callee's write to its own copy shows through `r` (99 instead of 1). Also `t.Peek(t)`
  (receiver) and `part(t.a, t)` (a part lent). Built 99, interpret 99, baked global 1, `olang test` 1.
  Repro f1_move_aliased_arg.olang. (Captures, slices, `r Vec& = v`, `.View()` before a move are handled - no bug.)
- **F2 (use after release; NEW, O15 48a4e5b)** a by-value holder `x Res = Res(..)` declared in a join block and
  borrowed by `spawn n = use(x)`: its drop is deferred code, which runs before the join's wait (S19), so the destructor
  runs while the task still uses x. Repro f2_drop_before_join_wait.olang (built and interpret agree on the wrong order).
- **F3 (wrong result: destructor never runs; NEW, O15)** `wrap(r, try num(bad))` with `r` a by-value Res parameter:
  r's flag is cleared where the argument is read, then the later argument leaves (error or a clause's return) before
  the call - Res(1) is never ended. Also with a constructor and `catch ... { return }`. Repro f3_handon_then_leave.olang.
- **F4 (use after release; NEW, O15)** `fn mk(n I64) Res& { x Res = Res(n); return x }` (also a returned
  `any Named&` of x, and `return Ref(x)` with a reference field): x lives where the result goes (O26a) but is still
  dropped at mk's end - the caller reads a value whose destructor ran. Repro f4_drop_returned_view.olang; f4b_drop_stored_ref.olang (x pushed into `b mut Box&`'s Vec<Res&>), f4c_drop_captured.olang (a returned closure capturing x).
- **F6 (unsound acceptance; NEW, T13b)** `Array<Token>(3, t)` / `Array<Token>(2, Token(5))` / generic
  `Array<T>(3, x)` duplicate a unique value (n independent copies) - accepted. Repro f6_unique_array_fill.olang,
  f6b_unique_array_fill_generic.olang. (Checked and refused: T[x,x], comprehensions, Repeat, ToVec, Copy, Get, Last,
  Partition, Cycle's Next, dup returning x twice.)
- **F5 (low; NEW, O15)** a test ended by a failed check runs the registered (O16) destructors (P1d/S19c "destructors
  included") but not a by-value holder's (`x Res = Res(1)`): its drop is deferred code, which a failed check skips.
  Repro f5_failed_test_skips_drop.olang (`olang test`: "after" sees Ended == 2, expected 21).
- (low, over-rejection?) `y.Destroy(); y = Res(8)` - re-assigning a destroyed by-value variable is C9b's "mentioned
  after" (work/d12.olang). Rust allows re-initialisation; SPEC C9b's wording counts any mention. Not filed as a bug.
- **F7 (wrong result; PRE-EXISTING - same output at 11b8d38)** parallel declaration/assignment of a value owning storage
  makes no copy: `m, n := g, g` - g, m, n share one array; Vecs share a buffer with separate counts. check.multi stores
  the held value with no storeCopy. Repro f7_parallel_no_copy.olang.
- **F8 (wrong result vs D16c/E31d; the shallow capture PRE-EXISTING at 11b8d38, the skipped declared Copy new with E31d)** a capture of a struct owning an array, or of a Vec, is shallow - the lambda sees
  later writes to the array/buffer; and no capture runs a declared Copy (E31d lists captures). Repro
  f8_capture_copy.olang, f8b_copy_skipped.olang (also shows F7's `p, q := a, a` skipping Copy).
- **F9 (over-rejection; NEW, O15)** `x Res = Res(id); defer x.Destroy(); return x.id` refused (C9b mentioned after);
  `errdefer x.Destroy(); ... return x` refused (C9b + T13b). The `x := Res(id)` form compiles. Repro
  f9_defer_destroy_refused.olang.
- **F10 (wrong result: destructor never runs; NEW, O15)** a by-value Res parameter of a function/constructor whose
  contract (D17) fails is never ended. Repro f10_contract_fail_skips_drop.olang.
- **F11 (interpret disagrees; NEW, O15 gap)** `get(b).a = Res(3)` (store over a value with destructors reached through
  a call): build stops with the O15 gap message, interpret runs it and never ends the old Res(1). Repro
  f11_gap_store_through_call.olang. (Does interpret ignore check gaps in general? not checked.)
- **F12 (use of reused storage / wrong result, HIGH; NEW in range - 11b8d38 correct)** `join { for k in range 8 {
  spawn out[k] = slow(pts[k]) } }` with `slow(p Pt&)`: every task reads the last element (built, -sanitize,
  interpret). The argument's temporary is one slot overwritten each turn while tasks run (likely D9h's stackArg).
  Also `spawn out[k] = slow(Pt(k, k * 2))` (a constructor temporary). Repro f12_spawn_arg_slot_reused.olang.
- **F13 (diagnostic, low; NEW)** `type Box<T> immut struct(x T)` with T = a unique Token: the instance is accepted, then
  `c := b` says "nothing of Box<Token> changes after its constructor (it is immut) - make a new one". Repro
  f13_generic_immut_unique_diag.olang.
- **F14 (over-rejection; NEW, O15)** `x = try mk(bad)` / `x = mk(bad)!` / `x = try mk() catch E default Res(0)` over a
  by-value holder of a destructor type: T13b "held elsewhere"; `x = mk2()`, `x = Res(try num())` and the same for a
  unique type without a destructor compile. Repro f14_store_over_try_refused.olang.
- **F15 (unsound acceptance; NEW, T13b)** `both(s, s)` with `fn both(r Res&, x Res)` and s a by-value parameter: s
  is lent and handed on in one call; r and x are two copies of one unique value - x destroyed, r still reads it (and a
  write through x is not seen through r). Same root as F1 (a move/landing judged by last mention while the same call
  holds a borrow). Repro f15_unique_lent_and_handed_on.olang.
- **F16 (unsound acceptance / use after release; NEW, T13b)** `alias := t` (a reference) then `Holder(t)` hands the
  by-value parameter t on at its last mention; alias still reads the old copy after the holder ended the value.
  Landings sees only t's mentions, not its aliases'. Repro f16_unique_alias_after_handon.olang; f16b_unique_capture_after_handon.olang (a capture).

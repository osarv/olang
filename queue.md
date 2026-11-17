
## Queued 2026-11-16: drop attributes (the user's decisions)
- Function types stay without defaults (the user: "Keep function types without defaults for now").
- Attributes (G39/G40, Attr/HasAttr, AttrError, `@` on declarations) are removed (the user: "They're not used enough, and they're kind of messy").
- Replacement: a key enum declared on the type as a type member, `type Account.Json enum { UserID = "id", Name }`. A case names a field and its text value is the key (default: the case name); an unlisted field is skipped and on decode keeps its default (no default -> error); case order is the CSV column order; a case naming no field is a compile-time error. Naming policy is a call argument (`json.Encode(a, naming = json.Snake)`).
- flags: `type Options.Flags enum { Count = "how many to print", Verbose = "print more" }`, the text value is the help text. Comments never carry meaning (the user: "comments are never anything ... nothing to the compiler").
- Migrate std json/csv/flags, tests/attrs*, checks/cases/attr*, oann io/checkpoint.olang + dyn/settle.olang; olang fix tool turning attributes into the enum; PRINCIPLES.md's "attributes are library data" clause goes.
- Waits on wt-sumnarrow (type members, T.Accumulator) merging.

## Queued 2026-11-16 (from oannsum): Sum<I32> lane lowering slow at short depth
- oann kernels/gemm.olang dot4I8: `(x * w).Sum<I32>()` is slower than four plain sums below depth 256 (1x128x128: 1.9 us vs 1.1 us); oann keeps a threshold (i8SumDepth). Look at compiler/check.olang laneMethod's LaneDot 256-lane blocks: the tail/setup cost for short arrays. Fix in olang, then drop oann's threshold.

## Queued 2026-11-16: defaults in function types (the user: "Yes, build this", reversing "keep function types without defaults for now")
- A function type may declare defaults (`fn&(x F32, k F32 = 1.0) F32`); a call through a value of that type fills them in while compiling (D8a: the caller supplies), and arguments by name work through it (E14b).
- Assignment is refused only on conflict: a named function or a lambda that declares a default for the same parameter with a different value. A type without defaults accepts any function, as now. A value assigned between function types follows the target type's defaults.
- Equal defaults compared as compile-time values; a default that cannot be compared (a lambda) counts as different unless it is the same declaration.
- Full checklist: SPEC (function types, D8a, E14), checker, evaluator, tests, checks/cases (the conflict error naming both values), settled/HISTORY.
- Order: after wt-sumnarrow merges (both touch the checker's generic/type-argument code); can run beside the attribute removal (std-side).
- (from oannvnni, same area) Packed INT8 needs a 4-lane group Sum or LaneDot keeping a vector accumulator across its 256-lane blocks: a per-lane sum of four adjacent U8xI8 products lowers to vpmaddwd, never vpdpbusd (repro oann repro/vnnitile.olang). A vector accumulator across blocks would also fix the short-depth slowdown above. oann pads depth to 256 meanwhile (kernels/gemm dots/dotsPay). Also: oann's depth-9 INT8 convolution runs 7x slower than F32 (unprofiled).
- (2026-11-16) `make quick` in a worktree whose build/olang predates a seed rewrite rebuilds with the stale compiler and fails on the new syntax (wt-merge, members merge); it should notice seed/ newer than build/olang and boot fresh (BOOT_FRESH=1 make boot) itself. Small Makefile fix.
- (2026-11-17, from oannsettle) Function facts: in a function pinned `assert not f.Allocates`, `x, y := p.rate(0).U, p.rate(1).U` (two Array references bound in one statement) counts as allocating; two separate lines do not. No repro yet (oann dyn/settle.olang context).
- (2026-11-17, wt-lanesum) Done: LaneDot vector accumulator (short depths fast). Future: a grouped lane total into a vector (per-lane groups of four) lowering to `vpdpbusd acc, broadcast(a), b` would let oann's packed micro-kernel use VNNI (repro oann repro/vnnitile.olang); a language question only if it needs syntax. After wt-lanesum merges: oann drops the pad-to-256 path (kernels/gemm dots/dotsPay) if plain Sum is as fast.
- (2026-11-17, HIGH, freeing guarantee) A `join` with one spawn keeps ~113 B per join for the rest of the run: oann repro/spawnleak.olang (and the older repro/joinleak.olang, queued in plan.md 2026-11-15 and still open). Next olang agent after the members/lanesum fixes merge.
- (2026-11-17) Three container restarts overnight; the third found the disk 99% full (worktree builds 7-9 GB each, /tmp 3 GB). Keep at most 2 olang builds at once, remove merged worktrees promptly, and consider capping build/ size (build/rec). joinleak restarts after the members merge (wt/joinleak exists, empty but for scratch/).

## From wt-noattr (2026-11-17)
- oann hand migration after noattr installs: io/checkpoint.olang `@Name("c_proj")` (line 655, read by fieldName/HasAttr at 255); dyn/neuron.olang `@Keep` (line 26, read at dyn/settle.olang:320, comments in dyn/system.olang 336/1186). LifCell<T> is generic: alias member over a module-level enum.
- olang bug: indexing a reflected text (`f.Name[0]`) is a lowering gap (std/flags works around it with a helper).

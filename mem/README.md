# Stage 0's memory when it compiles the port

What `build/out` (bootstrap/*.c) uses to compile the self-hosted port, why, and how to fix it. Measured on wt-check's
commit 86d47f8 (worktree /home/user/wt/memchk); the fixes were also checked against master 8238cce
(/home/user/wt/mem). Nothing under bootstrap/ was changed in either worktree. The experiments ran on copies of
bootstrap/ in the scratch area, built into `memchk/build/{base,exp1,exp3,...}`.

**Summary.** Almost all of the memory comes from two one-line defects, not from the arena design or the B9c attempts.

- **`TypeValueChildren` leaks.** Five type walkers copy every field or case of a type, as a 624-byte `struct type`
  each, into a fresh list and never free it. The port's `Diag` enum has 570 cases, so every walk of a type holding a
  `Msg` allocates about 360 KB, and the walk is made millions of times.
- **Every list starts with room for 16 elements.** A block with one statement takes 16 x 1,648 bytes, about 26 KB.
  A syntax node with one child takes 16 x 56 bytes.

With both fixed, the emitted IR is byte-for-byte the same, and the memory falls as follows:
- `-c compiler/check.olang`: more than 8.3 GB (OOM-killed) down to **0.58 GB**.
- `-b compiler/tools/checkdump.olang`: more than 6 GB (killed by the limit at 6 GB; the port agent saw 13.6 GB) down
  to **0.57 GB**.

The min-capacity change exposed latent use-after-realloc bugs, which ASan finds. Each is a real bug today, hidden
below 16 elements. Three are fixed in the patches. The cap change must ship together with an ASan pass over the
whole suite.

## 1. Measurements

Peak RSS and peak virtual size were measured by `tools/peak.py`, which polls `/proc/PID/status` of the compiler
process itself, not clang. `nice -n 19` was used throughout. The full data is in `peaks*.tsv`.

The columns:
- **base**: stage 0 as it is at 86d47f8 (`-O2` build; the same heap as `build/out`'s `-O0`).
- **fix 1**: free the walkers' lists (patch 01).
- **fix 1+2+3**: also list min capacity 1, and the latent use-after-free it exposed (patches 02, 03).

| `-c` of | own lines | base RSS | base VM | fix 1 RSS | fix 1+2+3 RSS | fix 1+2+3 VM |
|---|---:|---:|---:|---:|---:|---:|
| token | 364 | 123 MB | 1.2 GB | 102 MB | 49 MB | 1.16 GB |
| source | 130 | 165 MB | 1.4 GB | 146 MB | 72 MB | 1.16 GB |
| scan | 720 | 193 MB | 1.4 GB | 121 MB | 62 MB | 1.16 GB |
| ast | 330 | 243 MB | 1.5 GB | 165 MB | 81 MB | 1.23 GB |
| fetch | 322 | 242 MB | 1.4 GB | 217 MB | 132 MB | 1.23 GB |
| types | 1,169 | 277 MB | 1.5 GB | 220 MB | 112 MB | 1.23 GB |
| typed | 916 | 411 MB | 1.7 GB | 254 MB | 130 MB | 1.23 GB |
| msgs (no imports) | 2,340 | **2,588 MB** | 5.6 GB | 164 MB | 81 MB | 1.23 GB |
| diag | 783 | 2,789 MB | 5.9 GB | 265 MB | 118 MB | 1.23 GB |
| cond | 830 | 3,136 MB | 6.5 GB | 334 MB | 160 MB | 1.30 GB |
| parse | 2,799 | 4,592 MB | 8.6 GB | 450 MB | 208 MB | 1.24 GB |
| load | 903 | 4,997 MB | 9.2 GB | 600 MB | 305 MB | 1.38 GB |
| names | 1,313 | 5,414 MB | 9.9 GB | 672 MB | 337 MB | 1.38 GB |
| generic | 2,221 | 5,929 MB | 10.6 GB | 858 MB | 429 MB | 1.57 GB |
| check | 5,150 | **>8,347 MB** (OOM-killed) | >14.5 GB | 1,169 MB | **581 MB** | 1.71 GB |
| tools/dump | 890 | - | - | - | 461 MB | 1.57 GB |
| tools/checkdump | 67 | - | - | - | 561 MB | 1.71 GB |
| **`-b` tools/checkdump** | (whole port) | **>6,017 MB** (killed at the limit; 13.6 GB reported) | >10.4 GB | 1,158 MB | **572 MB** | 1.71 GB |
| `-t` check (in-process, `phases-*`) | | - | - | - | 1,262 MB | |
| master: `-c shared.olang` (corpus) | 17,689 | 3,964 MB | 7.1 GB | - | 1,941 MB | 3.0 GB |

Notes:
- **The cost was not in proportion to the program.** msgs.olang imports nothing and holds 570 one-line functions, yet
  it took 2.6 GB. Cutting it to N functions (`scale/`) gives 105 MB at 0, 540 MB at 100 and 1,851 MB at 400: 4.4 MB
  per one-line function, because each function walks the 570-case `Diag` enum several times. Every module that
  imports msgs pays this for each function that mentions a `Msg`.
- **Virtual size is RSS plus about 1.1 GB.** The compiler thread reserves a 1 GB stack (main.c), and the rest is
  malloc. Before the fixes, VM was 1.7 to 1.9 times RSS: realloc'd giant lists keep untouched capacity mapped. So
  the 7 GB virtual cap failed at about 3.6 GB RSS. After the fixes, VM is 1.2 to 1.7 GB everywhere.
- **B9c is not a factor for the port.** Every module and tool, `-c`, `-b` and `-t`, makes exactly **one** attempt
  (`attempts.txt`, counted by an instrumented build).
- **B9c is a factor for the corpus.** `shared.olang` makes **4** attempts, and none is freed. Each takes about
  330 MB, so three discarded attempts are about 1.0 GB of its 1.9 GB (`phases-shared-master-fix.txt`). This is fix 9
  below; it does not matter for the port today.
- **The work is in the checker.** CPU time of the analysis, after the fixes (`-t check`): 3.2 s. Most of the wall
  time is clang.

Phases of `-c compiler/check.olang` are taken from in-process instrumentation (mallinfo2 in use, and RSS), in
`phases-check-exp1.txt` and the `-t` run:

| phase | fix 1 only | fix 1+2+3 | fix 1+2+3, `-t` |
|---|---:|---:|---:|
| prelude loaded | 50 MB | 13 MB | 15 MB |
| all modules tokenized + parsed | +337 | +77 | +78 |
| signatures, globals | +91 | +30 | +29 |
| bodies + instantiations checked | +740 | +356 | +380 |
| settle (regions, read-only, may-build) | +1 | 0 | 0 |
| own-borrow settle | +80 | +6 | +6 |
| compile-time evaluation (baked globals, S18c asserts, D13c zero values) | +58 | +57 | **+744** |
| codegen of the module (IR text is freed) | +35 | +21 | +7 |
| **total in use** | **1,398 MB** | **560 MB** | **1,255 MB** |

## 2. Where the bytes go: top consumers, by allocation site

Measured with heaptrack. The profiles are in `ht/*.gz`. `tools/agg.py` folds heaptrack's peak-cost stacks by the first
frame that is not an allocator wrapper (`ht/*.agg.txt`).

At base (cond.olang, peak 5.3 GB heap):

1. **`TypeValueChildren` (semantic.c:4555): 4,893 MB, 92%** of the peak.
   - It is called from `typeHoldsReferencesAt` (1,898 MB via `TypeHoldsReferences`; 806 MB via `typeCarriesScopes`;
     371 MB via `calleeMayKeepArg`; 353 MB via `bindHereFrom`; 210 MB via `partAdmitsStores`), from
     `typeHoldsWritableRefsAt` (758 MB), from `valueRefsAdmitStoresAt` (360 MB), and from
     `typeHasBareDestructStructAt`/`typeHasBareOwningStructAt` (28 MB).
   - These five walkers return without `ListDestroy(kids)`. Four other walkers (`ownMayReferTo`,
     `ownMayReferToPart`, and master's `ownIsPartOf` and `ownReachesIn`) already free theirs.
   - Counted on `-c check` after the fix: 9.4 M calls copying 8.6 M `struct type`s (5.1 GB memcpy'd). That costs
     about 0.3 s of CPU now, instead of RSS.

With fix 1 (check.olang, 1.34 GB heap; `ht/check-exp1d.agg.txt`):

2. **List over-allocation from `LIST_ALLOC_MIN_CAP 16` (util.c:200): about 590 MB, 52%.**
   - The first `ListAdd` of every list allocates 16 elements. This gives:
     - `buildStatementsInto`: 195 MB. These are statement lists, 16 x 1,648 B, about 26 KB per block, even an `if`
       body with one statement.
     - `addSntx` (193 MB) and `addTok` (131 MB): syntax parts, 16 x 56 B per node. A node with one child takes 896 B.
     - The rest of the list sites: `resolveParamList`, `TypeTuple`, `TypeUnify`, `bindCallScopeVars`,
       `ownStmtWalk`, ...
   - The memoized parser makes nodes on failed attempts too (`attempt`/`memoized`), so this costs extra there.
   - The tokens-and-parse phase alone fell from 337 MB to 77 MB.

With fixes 1 and 2 (check.olang, 552 MB heap; `ht/check-exp3d2.agg.txt` and `ht/checkt-exp3d.agg.txt`):

3. **Operands: 205 MB (`-c`) or 219 MB (`-t`), about 40% of what is left.**
   - `struct operand` is **1,840 bytes**, and every operand is a separate malloc: about 117 k operands for check.olang.
     `OperandReadVar` alone accounts for 61 MB, since every read of a variable is an operand.
   - Of the 1,840 bytes, 1,248 are two embedded `struct type`s: `type`, and `tryDefaultType`, which only R9a's
     try-defaults use (8 uses in the C).
4. **The compile-time evaluator's values: 61 MB (`-c`) and 722 MB (`-t`), 56% of a test build.**
   - `struct ctVal` is **704 bytes**, of which 624 are an embedded `struct type`, and no value is ever freed.
   - A test build evaluates every S18c assert. In this profile, `ctInt`/`ctBool`/`ctCopy`/`ctFit` alone made about
     1 M nodes: `ctEvalOp;ctLiteral;ctInt` 119 MB, `ctFit;ctCopy` 111 MB, `ctVarDecl;ctCopy` 87 MB, `ctText` 78 MB.
5. **Statements: 34 MB in lists, plus each statement's embedded `struct var` (1,312 of 1,648 bytes).** The var is
   meaningful only for VAR_DECL and FOR. `VarAllocSetOrigin` adds 24 MB (vars, 1,312 B each).
6. **Smaller items**:
   - the parser memo (`memoSlotAt`): 13.5 MB;
   - tokens (`tokenizeTokensFromChars`): 13 MB. The prelude is tokenized twice per attempt, once for
     `ScanTopLevelDecls`.
   - `recordCall`: 11 MB;
   - `valueAdmitsStores`: 10 MB;
   - codegen's per-function buffers (`cgBodyEnd`, `CodegenModule`): 24 MB at peak, freed per module.

Codegen is not a consumer: it writes the IR into memstreams and frees them per function and per module. Neither are
the instantiations (`TypeSubstitute` 6 MB, `checkInstantiationBody` 64 MB inclusive, ordinary body checking) or B9c
(one attempt).

## 3. Latent bugs found

These are use-after-realloc bugs. Each is real on master today: it fires whenever the list involved grows past 16, 32,
.... Each was found by ASan once the minimum capacity was 1.

- **a.** `scopeObligationAdd` (semantic.c:7234 at 86d47f8, 7260 on master). It iterates a by-value `snapshot` of
  `func->type.scopeObligations` while the recursive `scopeObligationAdd` appends to the live list. Once the list
  reallocs, `snapshot.ptr` is freed. This crashed `-c check.olang` under heaptrack.
- **b.** `buildSpawnStmnt` (master semantic.c:25860). It assigns `blk.block = pre`, appends to `blk.block`, then reads
  `pre`'s element 0.
- **c.** `buildPrimCtorBody` (master semantic.c:27012). `bodyEnd(ctx.bodyId, f->codeBlock)` stores a copy of the list
  header in `bodyRecs`, and then the closing `return` is appended to `f->codeBlock`.
  - `fixedLocalInit` -> `stmtsFindDecl` then reads the stale copy.
  - The other five `bodyEnd` call sites store a header copy in the same way. Each is safe only while nothing is
    appended to that body afterwards. Better: store a pointer, or a list the bodyRec owns.

With (a), all the port's modules and tools are ASan-clean (86d47f8). With (a)-(c) on master:
- `-c` of worker.olang, runner.olang and shared.olang is ASan-clean;
- `-t shared.olang` is ASan-clean and passes **740 of 740** tests (`asan-shared.txt`).

The checks/ cases, the std tests and the other test files were not swept. More such sites are likely in code no test reaches with a
long list. The pattern to look for is a `struct list x = y.someList` header copy that outlives a `ListAdd` to the
original.

## 4. Fixes, ranked by saving per effort

All of these keep the IR byte-for-byte identical. `tools/irsame.sh` compares the `.ll` and the diagnostics.

How it was run:
- The object and the `.ll` are deleted before each run, because B7 reuses an object newer than the compiler binary
  and then writes no IR. This defeated the first comparison, which was redone.
- For the 19 port files, where base fits in memory, fix 1 and fix 1+2+3 were each compared against base. For the
  large ones, fix 1 was compared against fix 1+2+3.
- On master, fixes 1-3 and b-c were compared against master's base on worker.olang, runner.olang and shared.olang.

All of them are the same (`irsame.txt`). The patches are listed under Files, below.

| # | fix | saving (check.olang `-c` / `-b` checkdump) | effort | risk |
|---|---|---|---|---|
| 1 | `ListDestroy(kids)` on every way out of the five leaking `TypeValueChildren` walkers (patch 01; on master the same five, `typeHasBareOwningStructAt` now returning int) | >8.3 GB -> 1.17 GB; checkdump >6 GB (13.6) -> 1.16 GB; msgs 2.6 GB -> 164 MB; also 3-5x faster on msgs-heavy modules | 15 lines | none: the lists are locals, never read after; IR identical on all 19 |
| 2 | `LIST_ALLOC_MIN_CAP` 16 -> 1 (patch 02), together with an **ASan pass over `make verify`**, fixing each stale-header bug it shows (3 found: patch 03, and b, c in section 3) | 1.17 GB -> 0.58 GB (-50%); parse phase 337 -> 77 MB; `-t` check 1.26 GB with it | 1 line + the ASan pass (each bug is a 2-5 line fix) | medium: lowering the cap only exposes bugs that already exist, but each needs ASan to find. Without the sweep, a release build may silently read freed memory. Middle grounds: cap 4 gives 0.66 GB, or a rule such as "1 for elements of 256 bytes or more" (statement, var, type lists); both still need the sweep |
| 3 | `struct ctVal` holds `struct type*` instead of a copy (types the evaluator assigns point into operands, never freed, or into a small intern table); or the evaluator's transient nodes go into an arena reset after each top-level `CtEvaluate` that keeps nothing (S18c asserts, D13c, T29d) | `-t`: about 650 MB (722 MB -> about 90 MB), so a test build of check goes from about 1.26 GB to about 0.6 GB; `-c`: about 50 MB | type pointer: ~190 `->type` sites in comptime.c, mechanical (watch the sites that modify `v->type` - copy before writing). Arena: small code, but it must be proven that nothing transient is kept in `constVal`/`bakeVal`/the global cache | low (pointer) / medium (arena) |
| 4 | `operand.tryDefaultType` becomes a pointer, set only for R9a | about 70 MB (616 of 1,840 B per operand) | 8 uses | low; an operand copied by value then shares it - check that nothing mutates it after a copy |
| 5 | Operand diet: move the rarely used lists (`catchClauses`, `comprBody`, `chainOperands`, `lambdaCapScopes`, `ownResultRegions`, `ownCopyReads`, `landsWith`...) into a side record allocated on demand | about 30-40 MB more | moderate (many fields) | low-medium |
| 6 | `statement.var` (1,312 B) becomes a pointer for VAR_DECL/FOR only | about 20-40 MB (statements in lists, 34 MB after fix 2, and copies) | ~77 uses | medium (statements are copied by value; a decl's var is mutated in place) |
| 7 | Memoize `TypeHoldsReferences`/`TypeHoldsWritableRefs`/`valueRefsAdmitStores` per declared non-generic struct or enum (key: canonical type plus `structMAlloc`), or walk `t.vars` in place instead of copying into a list | CPU only once fix 1 is in: 9.4 M calls and 5.1 GB copied per check `-c`, about 0.3 s; grows with (number of walks) x (cases in `Diag`) | small (in-place walk) | low |
| 8 | Tokenize the prelude once per attempt rather than twice (`ScanTopLevelDecls` then `semaLoadModule`) | about 5 MB | small | low |
| 9 | Free a discarded B9c attempt, or build each attempt in an arena released when the next one starts, after copying out the decisions it made (condition decisions, `constArgDecisions`) | the corpus: shared.olang 1.9 GB -> about 0.6 GB (3 of 4 attempts); the port: nothing today (1 attempt) | high: nothing in the checker is owned, so first find everything that outlives an attempt | medium |

Considered and not worth it: freeing IR text (it is already freed per function and per module), and sharing instead of copying instantiation bodies
(TypeSubstitute 6 MB, instantiation body checks about 64 MB inclusive - an ordinary share of body checking).

## 5. Does it get checkdump under 4 GB?

**Yes, with fix 1 alone.** `-b compiler/tools/checkdump.olang` drops from more than 6 GB (13.6 GB reported) to
1.16 GB, and `-c check.olang` to 1.17 GB. Fixes 1 and 2 bring both to **0.57-0.58 GB**, with virtual size 1.7 GB, so
the 7 GB cap no longer bites.

Projection to the 25k-line port, with fixes 1 and 2:
- What is left scales with the number of operands and statements in the program the root reaches: port plus std,
  about 30k lines today, giving about 560 MB.
- At about 40k lines, `-b` checkdump and `-c` of the root would be about 0.75 GB.
- A `-t` of the root would be about 1.7 GB, or about 0.8 GB with fix 3.

Fix 1 is the one to make now: it is risk-free and identical by construction. Fix 2 halves what is left, but only
together with the ASan sweep. Fix 3 matters for test builds.

## Files

- `peaks.tsv`, `peaks-exp1.tsv`, `peaks-exp3.tsv`, `peaks-scale.tsv`, `peaks-master.tsv`: every run (binary, RSS, VM,
  seconds).
- `attempts.txt`: the B9c attempts per module. `phases-check-exp1.txt`: the phase table with fix 1 only.
- `irsame.txt`: the IR and diagnostics comparison for all 19 files.
- `asan-shared.txt`: the ASan pass on master's corpus with fixes 1-3 and b-c.
- `ht/`: the heaptrack profiles (`*.gz`; open with `heaptrack_print` or `heaptrack --analyze`), and their aggregation (`*.agg.txt`). The folded stacks were
  deleted for size; `heaptrack_print -f X.gz -F X.collapsed --flamegraph-cost-type peak` remakes them:
  - `msgs100`, `cond`, `check-exp1`/`check-exp1d`: base and fix 1;
  - `check-exp3d2` and `checkt-exp3d`: fixes 1-3, for `-c` and `-t`.
- `scale/`: msgs.olang cut to 0/50/100/200/400 functions.
- `patches/`: the fixes as diffs.
  - Against 86d47f8: `01` (fix 1), `02` (fix 2), `03` (bug a).
  - Against master 8238cce: `master-01+03-semantic.patch` (fix 1 on all nine walkers, plus bug a);
    `master-semantic-all.patch` (that, plus bugs b and c); `master-util-mincap.patch` (fix 2).
  - All of them `git apply --check` cleanly.
- `tools/`:
  - `peak.py`: peak RSS/VM of the compiler and its forked children, with a kill limit (`MAXRSS_MB`).
  - `agg.py`: folds heaptrack stacks.
  - `irsame.sh`: IR identity between two builds.
  - `asanloop.sh`, `asanm.sh`: ASan sweeps.

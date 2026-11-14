# The suite's memory (2026-11-14)

`make verify` had begun to get `olang` processes OOM-killed on the 4-core, 15 GB container: several of the compiler's
test builds ran side by side and one was killed at 5.4 GB. This note measures what each test build holds at its peak,
where in the compiler the peak is set, what was changed to lower it, and how the suite now keeps its builds within
whatever machine it runs on.

## How it was measured

Each `olang test FILE` of the suite ran in a memory cgroup of its own, its process tree's resident memory (the
compiler, its clang compiles, the link and the test binary) sampled every 0.1 s; the compiler's own high-water mark
per phase is what `OLANG_TIMES=1` prints (VmHWM). The 247 files ran two at a time, the largest first, in one shared
`build/` as the suite does - so a file's build reuses the records and objects the files before it left (B3i).

## Where the peak is

The compiler's own memory is the peak; clang's compiles add 300-600 MB beside it (four at once, B3m), and the front
end holds everything it built until the build ends, through the compiles and the link. By phase, `compiler/jupyter.olang`'s
test build (fresh `build/` but for a small program's records - the suite's usual case):

| phase ends | before | after |
|---|---|---|
| load | 150 MB | 150 MB |
| check | 755 MB | 755 MB |
| evaluate | 1092 MB | 1092 MB |
| scope (judged, records, placement) | 1911 MB | 1911 MB |
| lower+emit | **5297 MB** | **3272 MB** |
| compile, link (the compiler's own) | 5325 MB | 3300 MB |
| the process tree at most | 5909 MB | 3877 MB |

lower+emit was the whole difference, for two reasons:

1. **The emission made twice.** A program whose objects are cut into parts (B3d: 8 MB of IR or more - every test build
   of a module importing most of the compiler) that reused a record cut otherwise - the prelude's, written by the
   small program built before it - found that only after emitting everything, threw the emission away and made it
   again (`Redo`, compiler/olang.olang), the first emission's memory still held. Now the cut is guessed before
   emitting, from the program's sources (`cutLikely`: a program's own IR runs 8-15 bytes per byte of source; over the
   suite every program of more than 1,033,000 bytes of source was cut and none below 924,000; the line is drawn at
   1,000,000), and only the records cut as guessed are reused at first. A wrong guess costs what every mismatch cost
   before; the objects are the same whatever the guess. jupyter: 5.3 -> 3.7 GB, and lower+emit 9.7 -> 5.2 s.
2. **Every function's emission kept until the build ended.** A function's emitter state (`fnEm`: its three text
   builders, maps of labels and sites, ~1 KB of fields) was placed where the `Emitter` lives, not in `writeBody`'s
   frame, so the builders of all ~12,000 functions - each grown by doubling - stayed. The cause was eight `fnEm`
   methods that reached storage the emitter holds otherwise than through one of the emitter's own methods: the
   lowerer's `GenInfo` through `fe.E.Lw.Gen()` (its maps grown in the fnEm's scope), the emitter's fields through a
   local copy of `fe.E`, `genDropFn` handing back the very symbol the emitter keeps (now a copy is kept). Found by
   delta debugging: every `fnEm` method's body stubbed, then put back half by half, compiling `compiler/emit.olang`
   alone and reading in `writeBody`'s IR which scope the 1072-byte fnEm is allocated in. 3.7 -> 3.3 GB.

The emitted IR is byte for byte the same (328 `.ll` files of the jupyter and `tests/shared.olang` test builds compared
with the base compiler's).

## The test builds, after

The five largest, each built after a small program in an otherwise empty `build/` (the process tree at most):

| file | before | after |
|---|---|---|
| `compiler/olang.olang` | 7518 MB | 5250 MB |
| `compiler/notebook.olang` | 5924 MB | 3890 MB |
| `compiler/jupyter.olang` | 5909 MB | 3877 MB |
| `compiler/prompt.olang` | 5662 MB | 3689 MB |
| `compiler/lsp.olang` | 5555 MB | 3611 MB |

The suite's run, the largest 24 of 247 (MB; the tree, and the compiler alone; checks/checks.olang's tree is its own
child builds, four at a time):

| file | tree | compiler |
|---|---|---|
| `compiler/olang.olang` | 5078 | 4660 |
| `compiler/notebook.olang` | 3652 | 3310 |
| `compiler/lsp.olang` | 3610 | 3044 |
| `compiler/prompt.olang` | 3473 | 3132 |
| `compiler/mcp.olang` | 3382 | 3038 |
| `compiler/api.olang` | 3367 | 3024 |
| `compiler/cells.olang` | 3365 | 3018 |
| `compiler/doc.olang` | 3320 | 2963 |
| `compiler/jupyter.olang` | 3281 | 3281 |
| `compiler/explain.olang` | 3271 | 2926 |
| `compiler/emit.olang` | 3221 | 2863 |
| `compiler/interp.olang` | 3173 | 2831 |
| `compiler/session.olang` | 3120 | 2776 |
| `compiler/lower.olang` | 3008 | 2635 |
| `compiler/records.olang` | 2875 | 2530 |
| `compiler/free.olang` | 2750 | 2404 |
| `compiler/scope.olang` | 2600 | 2205 |
| `compiler/needs.olang` | 2269 | 1928 |
| `compiler/views.olang` | 2255 | 1906 |
| `compiler/check.olang` | 2144 | 1767 |
| `checks/checks.olang` | 2112 | 422 |
| `tests/shared.olang` | 1751 | 1382 |
| `compiler/effects.olang` | 1433 | 1068 |
| `tests/any.olang` | 1432 | 1052 |

21 files peak above 2 GB, 217 below 1 GB. Every figure is in `compiler/tools/peaks.txt`.

## What is left, largest first

- **Every function's lowering is kept until the build ends** (about 1 GB of the 3.3). `Lowerer.lowerAs` has the
  obligations "lw outlives return" and "return outlives lw", so each function's MIR and the whole `lowering` state are
  placed where the Lowerer lives. Delta debugging (stubbing `lowering` methods, `olang explain` giving the
  obligations in 4 s) found the causes are many: reading a body out of `Lowerer.Bodies` (writable references) rather
  than through a read-only accessor, the plan copied into the lowering (its arrays are writable references the
  Lowerer holds), `RaiseWhat` texts pushed into the function uncopied, the lowering returning a part of itself, and
  then more than seventeen `lowering` methods that keep a local copy of `ln.L` or `ln.L.P` or build into the function
  from inside the lowering (the same pattern as fnEm's). The fix is the fnEm one applied method by method; left for its
  own round.
- **evaluate** in `compiler/olang.olang`'s test build: +1.27 GB (the values and asserts its tests decide while
  compiling).
- The front end's memory is never given back before clang runs (the compiles and the link run beside the 3 GB).

## The suite's parallelism: the memory gate

The two fixed lanes (at most two of a hand-picked list of heavy builds at once) were not enough: fifteen other test
builds of 3-4 GB each ran freely beside them. They are replaced by a gate in front of every test build, interpreted
run and heavy tool build (`compiler/tools/memgate.olang`, the makefile's `GATE`): `make` still runs a job per core,
but each job waits until the machine has room for it:

- what it will take is its key's peak - measured by its last run here (`build/memgate/peaks.txt`), else
  `compiler/tools/peaks.txt`, else 1 GB;
- what the machine has is read as it asks, never configured: `MemAvailable` (or `vm_stat` on macOS), lowered to the
  headroom of every cgroup the process is in (v2 `memory.max - memory.current`, v1's limit less its usage and
  inactive file pages) - so a 15 GB container, a 16 GB WSL machine showing 7.4 GiB and a large server each get what
  they actually have;
- a job starts when what is available, less what each running job may still grow by (its expected peak less what its
  process tree holds now, which every gate writes as it runs), leaves its peak and a margin (10% of the memory in play,
  at least 512 MB) - or at once when no job runs, so a build larger than the machine still runs, alone;
- each run's peak (its process tree sampled every 250 ms) is written for its key when it ends, so the next run plans
  with this machine's own figures; `memgate -table` prints them to refresh `compiler/tools/peaks.txt`.

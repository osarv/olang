# Profiling an olang program

Where a program spends its time, measured. The built-in profiler first - `olang profile` (SPEC.md B20) - then the
machine's own tools, perf and callgrind, and which build to give them.

## 1. `olang profile`

```
olang profile FILE.olang [ARGUMENT...]          # build with the sampler, run, report, write a flame graph
olang profile -output fg.html FILE.olang ...    # the flame graph written to fg.html
olang profile -quick FILE.olang ...             # profile the -O2 build without link-time optimization
```

The program is built as `build` builds it (`-O3`, link-time optimization), its objects apart from every other build's
(`.prof`), with three things more: every function keeps a frame pointer on every path (shrink-wrapping off), the debug
information holds each function's lines and its name as source writes it (`LineTablesOnly`), and the runtime's sampler
(`std/runtime/prof.ll`) is linked in. Then it runs with the arguments, its own input, output and exit status. Each thread
the runtime runs - main, every task's worker, an `os.RunOnStack` thread - has a timer of its own CPU time that signals it
each millisecond; the handler walks the thread's frame pointers into a buffer reserved before the program starts (it
allocates and locks nothing). At the end - `main` returning, `os.Exit`, an error leaving `main`, a failed check, an
interrupt - the samples go to `build/profile/NAME.samples`, the compiler names every address with `llvm-symbolizer`
(inlined frames included: at `-O3` most of a program is inlined into a few functions, and each inlined function is still
reported for itself, at its own lines) and prints:

```
$ olang profile checks/fixtures/profile/hot.olang
-3069106747300918900

olang profile: hot - 121 samples, 0.481 s of CPU time on 2 threads

   self   total  function
   65.7%  65.7%  burn
   27.4%  27.4%  Counter.Tick
    6.9%   6.9%  spin

   self  line          function
   64.9%  hot.olang:9   burn
   27.4%  hot.olang:21  Counter.Tick
    6.9%  hot.olang:29  spin
    0.8%  hot.olang:8   burn

  called from (the five hottest functions)
  burn  <-  main 100.0%
  Counter.Tick  <-  main 100.0%
  spin  <-  task 100.0%
flame graph: ./build/profile/hot.html
```

**self** is the time in the function itself, **total** the time it is on the stack (once a sample). Names are as source
writes them outside the module: `io.PutLine`, `Vec<I64>.Push`, `check.Checker.Expr`; the root's own and the prelude's
bare; `startup` the program's entry, `task` a spawned call's trampoline. The flame graph is one HTML file with nothing
loaded from elsewhere: the thread's first frame at the bottom, each function over its caller, as wide as its share; a
frame's tooltip gives its name and time, a click zooms to it, a click on the bottom bar goes back.

What it measures, and what it does not:
- **CPU time, per thread** - a thread waiting (a lock, a pipe, a sleep) takes no samples. A kernel ticking at 250 Hz
  delivers a sample each 4 ms standing for four periods (the weights add up to the CPU time; measured on an 8.6 s run:
  8.575 s reported, 8.579 s of user time).
- A thread C code starts is not sampled; a C library function shows as itself, but its caller is lost where it keeps no
  frame pointer (glibc's do not).
- A crash (a segmentation fault) writes no samples; `SIGINT`, `SIGTERM` and `SIGHUP` do, when the program leaves them to
  end it (a background job of a non-interactive shell ignores `SIGINT`, so it is not interrupted at all).
- `interpret` is not profiled - its time is the evaluator's.
- Allocation profiling (bytes per allocating site, which the arena could count) is future work.

**What it costs** (`bench/`, best of five, 2026-10-27; plain build / profile build not sampling / sampling):

| program | plain | profile build | sampling |
|---|---|---|---|
| nbody 10000000 | 545 ms | 538 ms | 540 ms |
| spectral 3000 | 507 ms | 521 ms | 510 ms |
| mandelbrot 3000 | 632 ms | 629 ms | 645 ms |
| fannkuch 10 4 | 1181 ms | 1195 ms | 1199 ms |
| binarytrees 18 | 414 ms | 513 ms | 512 ms |

The sampling itself costs at most ~2.5% (mandelbrot); the profile build's code costs what frame pointers cost - nothing
measurable on loops, ~20% on binarytrees, whose time is short recursive calls into the arena (the same build with the
frame pointers taken out: 439 ms). A build that is not a profile build has none of it: the IR of every other build is
the same as before the profiler existed (checked on nbody and regex - their binaries identical but for the symbol
table's temporary file names, which differ between any two builds).

## 2. perf and callgrind

Which build keeps what:
- the default build (`-O3`, LTO): fastest, but no frame pointers and no lines - perf sees everything inlined into `main`
  and reports addresses;
- `-quick` (`-O2`, no LTO): functions stay apart across modules, still no lines;
- `-debug` (`-O0`, DWARF): lines and variables, at several times slower than `-O3` (7x on the fixture above), so a
  profile of it says where unoptimized code is slow;
- a profile build (`olang profile`, its binary `build/NAME.prof`): `-O3` with frame pointers and line tables, so perf's
  own `-g` (frame-pointer call graphs) and `perf annotate` work on the optimized code. Run it with `OLANG_PROFILE` unset
  and the sampler stays off.

```
perf record -g ./build/hot.prof           # frame-pointer stacks (the default --call-graph fp)
perf report --stdio --inline              # by function, inlined frames named from the line tables
perf report -g folded --stdio             # stacks folded one a line, for any flame-graph renderer
valgrind --tool=callgrind ./build/hot.prof
callgrind_annotate callgrind.out.*        # instructions per function; per line with --auto=yes
```

Found here: this container's `perf` wrapper names no tools for its kernel - the installed binary works by its path
(`/usr/lib/linux-tools-6.8.0-147/perf`) - and the virtual machine exposes no hardware counters (`perf stat` gives
task-clock alone), which is one reason `olang profile` samples by CPU-time timers rather than by perf events.

## 3. A function's code: `olang explain -asm` and `-ir`

Where the profile names a hot function, `explain -asm` shows what it compiled to (SPEC.md B11d):

```
olang explain -asm FILE.olang NAME      # NAME's machine code as build compiles it, its source lines and LLVM's remarks
olang explain -ir FILE.olang NAME       # its optimized LLVM IR, the same way
olang explain -asm -quick FILE.olang NAME              # the -O2 code of a -quick build
olang explain -asm -target aarch64-linux-gnu FILE.olang NAME   # another machine's (clang 19 or newer)
```

`NAME` is a function or `Type.Method`; a generic one's code is shown for each instance the program makes. The program
is built as `build` builds it - `-O3`, link-time optimization - with its objects apart (`.listing`): their debug
information holds each function's lines and names, as a profile build's does, and nothing else, so the code is the
code a plain build makes (its IR is byte-identical with line tables taken out). Each object's compile keeps LLVM's
optimization remarks beside it (`clang -fsave-optimization-record`, `NAME.HASH.listing.yaml`). The code is final only
once the program is linked - the link inlines across modules, vectorizes and generates the code - so the objects are
then linked by the linker's LTO plugin told to write, in place of a program, the assembly it generates
(`-plugin-opt=emit-asm`) or the IR it generates it from (`-plugin-opt=emit-llvm`, turned back into text by clang), with
its own remarks (`-plugin-opt=opt-remarks-filename`), into `build/listing/NAME/`. Nothing more than the clang a build
uses is needed - no `llvm-objdump`, no `llvm-dis` - and LLVM 18, 19 and 20 all do it. Under `-quick` each module is
compiled again to assembly or IR with its remarks. Then the function's code is found by its symbol and written with each
run of instructions headed by the line of source it comes from (`.loc` in assembly, `!dbg` in IR - the innermost
place, so a line of a function inlined into it is that function's own), and beneath a line the remarks made there:

```
$ olang explain -asm checks/fixtures/listing/prog.olang scale
# fn scale(a mut Array<F32>&, b Array<F32>&)
# prog.olang:10 - x86_64 machine code as build compiles it: -O3, optimized again as the program is linked, for sapphirerapids
# no code of its own: inlined at every call, into scale as a function value, whose code follows
# 113 instructions; inlined into it: twice, scale
prog_2escale_fv_fn_28mut_20Array_3cF32_3e_26_2c_20Array_3cF32_3e_26_29: # @prog_2escale_fv_...
# %bb.0:
# prog.olang:11  for i in range a.Len() { a[i] = twice(b[i]) }
#    passed   inline: 'twice' inlined into 'scale' with (cost=-25, threshold=375)
#    passed   loop-vectorize: vectorized loop (vectorization width: 16, interleaved count: 4) (x2)
#    passed   loop-unroll: unrolled loop by a factor of 8 with run-time trip count (x2)
#    missed   gvn: load of type float not eliminated because it is clobbered by store (x14)
...
.LBB2_6:                                # =>This Inner Loop Header: Depth=1
	vmovups	(%rax,%rdi,4), %zmm1
...
# prog.olang:7  fn twice(x F32) F32 { return x * 2.0 + 1.0 }
	vaddps	%zmm1, %zmm1, %zmm1
	vaddps	%zmm0, %zmm1, %zmm1
# prog.olang:11  for i in range a.Len() { a[i] = twice(b[i]) }
	vmovups	%zmm1, (%r8,%rdi,4)
```

The remarks are those of the passes a reader of a function's code asks about - the inliner, the loop and SLP
vectorizers, the unrollers, LICM, GVN, loop idioms and deletion, tail calls, the register allocator's spills and the
stack frame - `passed` for what a pass did, `missed` for what it declined and why, `analysis` for what it found, each
said once with how many times it was made. A remark on a line the final code no longer holds (a loop deleted, a value
computed while compiling) is listed after the code. A function with no code of its own says so: inlined at every call
- named, and where that is one function its code is shown in its place (`main` is inlined into the program's entry,
`startup`) - or never called. What costs: a listing build compiles as a plain build does, its remarks some megabytes
beside the objects (17 MB for the fixture, std included); asked again with nothing changed, 0.47 s - a stamp of what
the link was given skips it. The compiler itself: ~160 s, ~130 of them its ThinLTO link; asked again, 21 s.

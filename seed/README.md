# seed/ - the bootstrap seed

The olang compiler as LLVM IR, written by the compiler of itself: one xz-compressed `.ll` per object of
`compiler/olang.olang` built for baseline x86-64 Linux - each module's own (`compiler_check.ll.xz`, `std_os.ll.xz`, ...),
the root's with `main` (`compiler_olang.main.ll.xz`), the generics' instances (`compiler_olang.inst.ll.xz`), and the
runtime filled in for that target (`olang_runtime.ll.xz`, `olang_dyncall.ll.xz`). Nothing here is written by hand.

It is how the compiler is rebuilt from nothing (`compiler/DESIGN.md`, section 5): no binary is committed, and no other
compiler is needed - only clang and xz.

```
make bootstrap  # clang makes the seed into build/olang.seed; it builds compiler/olang.olang into build/olang.1, which
                # builds it again into build/olang.2; the two must be byte for byte equal; build/olang.2 is installed
                # as build/olang (about 6 minutes on 4 cores, 1.6 GB at most)
make seed       # writes the seed again from the current source (compiler/tools/seed.olang): a file whose IR did not
                # change is left as it is
```

**Why baseline x86-64.** The seed runs on any x86-64 Linux machine; the compilers it builds are built for the machine
they are built on, as every olang build is (B12). The standard library is named relatively while the seed is written,
so no path of the checkout that wrote it is in it.

**When it is written again.** The seed need not be current: an older seed builds the current source as long as that
source uses nothing the seed's compiler cannot build - `make bootstrap` shows it does. It must be written again
(`make seed`, committed with the change) in the commit that first makes `compiler/` or the std it uses need something
the seed's compiler lacks, and may be at any other time. `make seed` run with the compiler `make bootstrap` installed
writes the same seed byte for byte, so the seed can always be checked against the source it says it is.

**Why compressed, one file per object.** As written the IR is about 48 MB; xz makes it 3.5 MB. A change to a module
changes that module's file (and usually the instances'), so one file per object keeps what a new seed adds to the
repository's history to the files that changed. Measured over three seeds a few commits apart, the history grew by 0.6
and 2.5 MB for each new seed stored this way, and by 1.4 and 5.1 MB stored as plain text, which git packs poorly at
this size.

# olang

A release of the olang compiler for Linux. It is the README of the release's tarball (`make release` writes it there).

## What is in it

| path | what it is |
|---|---|
| `bin/olang` | the compiler, built for the architecture's baseline CPU, so it runs on every machine of that architecture |
| `std/` | the standard library and the prelude, found beside the compiler |
| `SPEC.md` | the specification, which `olang explain RULE` reads |
| `editors/` | the Neovim plugin and editor notes (`olang lsp`, `olang mcp`) |
| `tools/` | the migration tools `olang fix` runs |
| `llvm/` | clang (and LLVM's libraries) the compiler builds with: found before any clang on `PATH` |

## Installing

Unpack it anywhere and put its `bin/` on `PATH`:

    tar -xJf olang-VERSION-x86_64-linux.tar.xz
    export PATH="$PWD/olang-VERSION-x86_64-linux/bin:$PATH"

The machine needs what any C toolchain needs besides the compiler itself: a linker (`binutils`), the C library's
development files and GCC's runtime files (Debian and Ubuntu: `binutils libc6-dev libgcc-13-dev`, or
`build-essential`), and glibc as new as the one the release was built against. A program calling C through `std/ffi`
also needs `libffi-dev`.

## Using it

    olang hello.olang            # build and run
    olang build hello.olang      # build ./build/hello
    olang test file.olang        # run a file's tests
    olang help                   # every mode and option

## Which clang is used

The first of: the one `OLANG_CLANG` names (a path, or a name on `PATH`); the release's own, in `llvm/`; and the newest
of `clang-20`, `clang-19`, `clang-18` and `clang` on `PATH`. Any of LLVM 18, 19 and 20 builds for this machine;
building for another architecture (`-target aarch64-linux-gnu`) takes clang 19 or newer, that architecture's C library
(Debian: `libc6-dev-arm64-cross libgcc-13-dev-arm64-cross binutils-aarch64-linux-gnu`, or `OLANG_SYSROOT` naming one),
and, to run its programs and tests here, qemu-user (`qemu-user-static`, or `OLANG_EMULATOR`). SPEC.md, B12-B12d.

# Building for Windows

olang builds native Windows programs for 64-bit x86 from Linux, with clang, LLVM's linker and mingw-w64's C runtime -
desktop programs included, calling Win32 directly with no C of your own. SPEC B12f is the rule; this page says how to
use it.

## What you need

| What | Package (Debian, Ubuntu) | Used for |
|---|---|---|
| clang 18 or newer, with lld | `clang`, `lld` | every build (the same clang as for Linux, B12d) |
| mingw-w64 | `mingw-w64` | the C runtime's headers and import libraries (`/usr/x86_64-w64-mingw32`) |
| Wine (tests only) | `wine64` | `olang test` and `olang run` for Windows, here |
| a virtual X display (the example only) | `xvfb` | `make windows-example` runs the desktop program's check under it |

`OLANG_SYSROOT` names a mingw-w64 installed somewhere clang does not look; `OLANG_EMULATOR` another way of running a
Windows program than Wine.

## Programs

```
olang build -target x86_64-windows hello.olang          # build/hello.exe
olang build -target x86_64-windows -output app.exe app.olang
olang run -target x86_64-windows hello.olang            # built, then run under Wine
olang test -target x86_64-windows tests.olang
```

`x86_64-windows`, `x86_64-windows-gnu`, `x86_64-w64-windows-gnu` and `x86_64-w64-mingw32` all name the target, and
`:CPU` after it names a CPU as for any target (`x86_64-windows:x86-64-v3`). `TargetOs` is `"windows"`, so a program
says `if TargetOs == "windows"` where it must do something its own way there - in a function, or at the top level around
imports and declarations (B9).

A program is one `.exe`: its own code, the runtime and the C runtime's static parts linked into it, and the system's
DLLs - `msvcrt.dll`, `kernel32.dll`, `ws2_32.dll`, and the libraries its `extern link` blocks name (`user32`, `gdi32`,
`opengl32`, ...) - imported. Nothing else needs installing on the machine it runs on. Under Wine, run it with
`wine64 build/hello.exe` (or `olang run`), which the tests do with `WINEDEBUG=-all` so Wine's own notes stay out of
what the program writes.

## Calling Windows

Win32 is reached as any C library is (§11): functions declared in an `extern link "user32" { ... }` block (the import
library the link takes), handles as `U64`, structures as olang structs laid out as the headers lay them out (a struct
holding an export fn's C entry for a window procedure, X13a). Calls use the Win64 convention: a structure of 1, 2, 4 or 8
bytes goes as an integer, any other by a pointer to a copy. C imports (`import x "windows.h"` and the like) read
mingw-w64's headers, on which C's `long` is 32 bits (`I32`), as Windows has it.

examples/windows is a whole desktop program: a window and its message loop, OpenGL through a WGL context, and the
clipboard ([its README](../examples/windows/README.md)). `make windows-example` builds it and runs its check under Wine.

## The standard library on Windows

- The prelude, `io`, `os` (files, directories, the environment, `Run`, `Exec`, `Process`), `time`, `sync`, `chan`,
  `cancel` and the rest of std that is plain olang work as on Linux.
- `os` starts programs with CreateProcess, each argument quoted as Windows programs take their command line apart; a
  program named without a path is found as Windows finds it (PATH, `.exe` added). `os.Run` runs a command through
  `cmd.exe` (C's `system`) and gives the command's exit code. `os.ExecInPlace` runs the program and ends this one with
  its status: Windows never puts another program in a process's place. `os.ReadLink` fails with `Failed`. A temporary
  directory (`os.MkTemp`) is made in `TMPDIR`, else `TEMP` or `TMP`.
- `time.LocalOffset` reads Windows' own time zone (`TZ` as Windows reads it, not the POSIX zone names).
- Not on Windows yet: `net`, `tls` and `zmtp` (sockets: mingw-w64 has no `sys/socket.h`; Winsock is to come), `prop`
  (it runs each property in a forked process), `ffi` (no libffi for Windows here). A program importing them does not
  build for Windows.

## The runtime on Windows

The runtime (std/runtime/runtime.ll) is the x86-64 one with a Windows part (std/runtime/windows.ll) standing in for
what it asked of glibc:

- memory is reserved and committed with VirtualAlloc (Windows has no lazily committed mapping, so the slot range is
  reserved and each slot committed as it is carved);
- threads are CreateThread's, and pthread's mutexes, condition variables and read-write locks are SRW locks and
  condition variables - each one word, zero when ready. A C import of `pthread.h` in a Windows build reads the runtime's
  own header (std/runtime/windows/pthread.h), which declares exactly these; a read-write lock is held exclusively by
  readers too;
- the clocks are the system time (precise) and the performance counter; `nanosleep` sleeps whole milliseconds;
- the standard streams are in binary mode from the start (no `\r` added, no end at a 0x1A byte), and files `os` opens
  are opened in binary mode;
- a crash runs `os.OnCrash`'s message from the filter for an exception nothing handles;
- a test's recovery point is msvcrt's `_setjmp` with no frame, so a failed check jumps back restoring registers alone,
  as on Linux;
- LLVM's conversions to and from `F16` and `BF16` are the runtime's own (mingw-w64's libgcc passes the 16-bit value
  otherwise than clang does), and floats are printed and read by mingw-w64's C99 functions, so `$x` and `F64.Parse`
  give what they give on Linux;
- `errno`'s numbers are msvcrt's, read into the same classes `os.Error` names.

## Tests

`make windows-test` builds the corpus's, std's and the prelude's tests for Windows and runs them under Wine (it says it
skipped where Wine or mingw-w64 is missing). `WINDOWS_SKIP` leaves out what has no Windows form: std/os's own tests (they
run `sh`, `printf` and the like, and open `/dev/ptmx`), std/time's (POSIX zone names), `net`, `tls`, `zmtp`, `prop` and
`ffi` (above), tests/canon (`linux/gpio.h`), tests/pty (`pty.h`) and tests/cimport (mingw-w64's `snprintf` is an inline
function of a variable number of arguments, which no C import reaches). `CHECKS_TARGET=x86_64-windows olang test
checks/checks.olang` builds the checks' cases for Windows and runs the run cases under Wine.

`build -library` is not built for Windows: a DLL's exports are not given yet.

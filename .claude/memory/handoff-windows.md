# Hand-off: olang's Windows target (OLang Windows session, 2026-11-24)

State: merged to master (wt-windows kept). Details: docs/windows.md, docs/settled.md "Windows (B12f)", HISTORY.md 2026-11-24.

- `-target x86_64-windows` (x86_64-w64-windows-gnu): clang + lld + mingw-w64 headers/import libraries, static NAME.exe,
  8MB stacks; `test`/`run` under Wine. Packages: mingw-w64 wine64 xvfb libgl1-mesa-dri libclang-rt-18-dev (apt, fresh
  containers need them).
- Runtime: std/runtime/windows.ll replaces glibc namesakes (VirtualAlloc, CreateThread, SRW locks/condvars, clocks,
  CreateProcess); C imports of pthread.h read std/runtime/windows/pthread.h. Win64 C ABI in cabi; C long is I32.
- std: io, os (files, dirs, processes), time, locks; net over Winsock (ws2_32 declared by hand - winsock2.h's COM
  declarations defeat bindgen; WSAStartup per socket/lookup, counted; no SO_REUSEADDR on Windows); zmtp; tls over
  Schannel (secur32 + crypt32, chain checked by crypt32, `ca` file as sole anchor when given). API change on all targets:
  tls.Conn.Read/Write take `mut Conn&` (oagent callers may need `mut`). HTTPS GET to example.com verified under Wine.
- Win32 interop: examples/windows/window.olang - CreateWindowEx, message loop with an export fn as window procedure,
  WGL/OpenGL, clipboard; `make windows-example` checks it under Wine on Xvfb. This is the pattern for the app's layer.
- Tests: `make windows-test` passes; skipped (WINDOWS_SKIP): std/os's own tests (sh, /dev/ptmx), time (POSIX TZ),
  prop (fork), ffi (no libffi), canon, pty, cimport. Checks: CHECKS_TARGET=x86_64-windows, WindowsSkip lists the
  glibc-only cases.
- Not done: DLL output (`build -library`), -sanitize/-race/-profile on Windows, os.ReadLink, read-write locks held
  exclusively by readers, libffi.

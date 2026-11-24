# examples/windows - a Windows desktop program in olang

A Win32 program with no C: `window.olang` registers a window class whose window procedure is an olang export fn,
creates the window with `CreateWindowExA`, runs a message loop (`GetMessageA`, `TranslateMessage`, `DispatchMessageA`),
draws with OpenGL through a WGL context (`ChoosePixelFormat`, `wglCreateContext`, `SwapBuffers`), and writes and reads
the clipboard (`OpenClipboard`, `SetClipboardData`, `GetClipboardData` with `CF_TEXT`). A click changes the background's
colour; Ctrl+C puts the colour's name on the clipboard and Ctrl+V prints what the clipboard holds.

| File | What it is |
|---|---|
| `window.olang` | the program: the Win32 and OpenGL functions it calls, declared in `extern link` blocks, and `-check` |

Build it from the repository's root (docs/windows.md says what to install):

```
olang build -target x86_64-windows -output window.exe examples/windows/window.olang
```

and run `window.exe` on Windows. `make windows-example` builds it as `build/windows/window.exe` and runs
`window.exe -check` under Wine on a virtual X display (`xvfb-run`): it opens the window, draws one frame and reads a pixel
of it back, makes a clipboard round trip and closes, printing each step and ending with status 0 where all worked.

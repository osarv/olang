# editors/nvim - olang for Neovim

A plugin directory: put it on the runtime path and `.olang` files (and scripts beginning `#!/usr/bin/env olang`) get

- syntax highlighting (`syntax/olang.vim`) - keywords, types, literals, `#` and `## ... ##` comments, rule names; olang's own palette, the interpreter's too, readable on a dark background with no dark blue or black (`let g:olang_palette = 0` keeps your colorscheme's);
- indentation as `olang format` writes it (four spaces), `#` comments for `gc`;
- `:make` through the compiler (`compiler/olang.vim`: `olang compile %` and an `errorformat` for its one-row
  diagnostics, `path:line:col: error[RULE]: headline`, with their `note:` and `help:` rows), so `:copen` lists them;
- `K` on a rule name in a diagnostic or a comment (`T6b`) shows that rule of the specification (`olang explain`);
- format on save - through the language server when it runs, else `olang format` on a copy of the buffer;
- the language server, `olang lsp`: diagnostics as you type, hover (`K`), go to definition (`gd` / `CTRL-]`), document
  symbols, completion, formatting (`vim.lsp.buf.format()`). Completion is Neovim's own (0.11+,
  `vim.lsp.completion`): the menu opens by itself after `.` (`io.`, `p.`, `a.b.`) with the import's exports or the
  value's fields and methods, and `CTRL-X CTRL-O` asks anywhere; `setup({ completion = false })` turns it off. With
  [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) or [blink.cmp](https://github.com/Saghen/blink.cmp) loaded the plugin
  leaves completion to them: give nvim-cmp the `nvim_lsp` source (`cmp-nvim-lsp`, and its `default_capabilities()`) -
  blink.cmp's `lsp` source is on by default - and both trigger on the server's `.`.
- commands on `.olang` buffers (Neovim wants capitals): `:OlangRun [args]` saves and runs `olang FILE args` in a
  terminal split at the bottom, reused by the next run; `:OlangBuild` (`olang build FILE`) and `:OlangTest [words]`
  (`olang test FILE words`) fill the quickfix list through `:make`; `:OlangFormat` formats the buffer, keeping the
  cursor; `:OlangExplain` shows `olang explain FILE WORD` for the word under the cursor in a floating window;
  `:OlangRepl` opens plain `olang`, the interactive prompt, in a terminal split; `:OlangFormatOnSave [on|off]`
  toggles format on save (no argument) or sets it, and remembers the choice (`stdpath("state")/olang/format_on_save`),
  which then wins over the default and `setup()`.
  Keymaps under `<localleader>` - `r` run, `b` build, `t` test, `f` format, `F` format on save, `e` explain, `i` repl, `d` debug - are set where
- `gf` on an import opens the module's file (`std/...` in the standard library, found through `OLANG_STD` or beside the `olang` on the PATH; anything else beside the importing file), and `[i`/`[I` follow imports too.
- `gd` on a bracket jumps to its partner (as `%`), anywhere else to the definition; diagnostic signs (`E`, `W`) are drawn in a sign column always reserved beside the line number (`signcolumn=yes:1`), so a diagnostic appearing never adds a column or shifts and rewraps the text.
  nothing is mapped already; `vim.g.olang_no_maps = 1` turns them off.

Code blocks fenced as ```` ```olang ```` in Markdown are highlighted as olang (`ftdetect/olang.lua`, through Neovim's classic markdown syntax); `vim.g.olang_markdown = 0` leaves them alone.

Everything but the last works without the server; all of it needs `olang` on `PATH`.

## Debugging

With [nvim-dap](https://github.com/mfussenegger/nvim-dap) and `lldb-dap` installed (LLVM 18 and later; `lldb-vscode`
before; Ubuntu's `lldb-18` package ships `lldb-dap-18`, which is found too):

- `:OlangDebug [args]` saves the buffer, builds it with `olang build -debug -output build/NAME.debug FILE` (errors into
  the quickfix list) and starts it under the debugger with the arguments;
- `:OlangDebugTest [words]` saves it, builds and runs its tests with `olang test -debug FILE words` (a failing test is
  no reason to stop), then starts the test binary, `build/NAME_test.debug`, under the debugger running the tests the
  words name - each test is a function of its own, `test TARGET: DESCRIPTION` in the call stack;
- `<localleader>d` is `:OlangDebug`; nvim-dap's own commands do the rest (`:DapToggleBreakpoint`, `:DapContinue`,
  `:DapStepOver`, `:DapStepInto`, `:DapStepOut`, `:DapTerminate`, `require("dap.ui.widgets")` for scopes).

Values show as olang writes them - `Point(x = 3, y = 4)`, `Shape.Rect(w = 5, h = 6)`, `"hello"`, `[10, 20, 30]` for a
`Vec`, `["a": 1]` for a `Map`, each expandable - through `editors/debug/olang_lldb.py`, which the adapter loads (found
beside this plugin in a checkout, else beside the `olang` on `PATH`, where `make install` puts it). Breakpoints and the
line stopped at are drawn in the line-number column, as diagnostics are: `●` a breakpoint, `◆` a conditional one, `◇` a
log point, `○` one the debugger refused, `▶` the line stopped at (highlighted as `CursorLine`), coloured through the
groups `DapBreakpoint`, `DapStopped`, ... linked to the diagnostic signs' colours - signs you defined yourself are kept.
Nothing of this loads without nvim-dap. The plugin sets up an adapter named `olang` and, unless you made one, a
configuration for olang buffers (`:DapContinue` builds and runs the file). Another adapter is one line:

```lua
require("olang").setup({ debug = { adapter = { "/path/to/lldb-dap" } } })
```

Keymaps many nvim-dap users add:

```lua
local dap = require("dap")
vim.keymap.set("n", "<F5>", dap.continue)
vim.keymap.set("n", "<F9>", dap.toggle_breakpoint)
vim.keymap.set("n", "<F10>", dap.step_over)
vim.keymap.set("n", "<F11>", dap.step_into)
vim.keymap.set("n", "<F12>", dap.step_out)
```

Without Neovim: `lldb build/NAME.debug` with `command script import editors/debug/olang_lldb.py`, or `gdb -x
editors/debug/olang_gdb.py build/NAME.debug` (editors/debug/README.md).

## Installing

`make install` in the checkout installs it as a Neovim package, `~/.local/share/nvim/site/pack/olang/start/olang`
(under `XDG_DATA_HOME` where that is set), which Neovim loads by itself with the defaults below; `make uninstall`
removes it. It installs the Vimscript parts - the syntax, `:compiler olang` and a filetype rule - for plain Vim too, in
`~/.vim/pack/olang/start/olang`. `EDITORS=none` leaves both out.

With lazy.nvim, from a checkout of olang:

```lua
{ dir = "/path/to/olang/editors/nvim", config = function() require("olang").setup({}) end }
```

or by hand, in `init.lua`:

```lua
vim.opt.runtimepath:append("/path/to/olang/editors/nvim")
require("olang").setup({
  cmd = { "olang", "lsp" },   -- nil: no language server
  format_on_save = true,
})
```

The plugin starts the server itself (`vim.lsp.start`, rooted at the directory holding `olang.lock` or `.git`). With
nvim-lspconfig instead - the plugin's own start then left off with `cmd = nil`:

```lua
local configs = require("lspconfig.configs")
if not configs.olang then
  configs.olang = {
    default_config = {
      cmd = { "olang", "lsp" },
      filetypes = { "olang" },
      root_dir = require("lspconfig.util").root_pattern("olang.lock", ".git"),
      single_file_support = true,
    },
  }
end
require("lspconfig").olang.setup({})
```

Neovim 0.11 and later need neither: `vim.lsp.config("olang", { cmd = { "olang", "lsp" }, filetypes = { "olang" },
root_markers = { "olang.lock", ".git" } })` and `vim.lsp.enable("olang")`.

# editors/nvim - olang for Neovim

A plugin directory: put it on the runtime path and `.olang` files (and scripts beginning `#!/usr/bin/env olang`) get

- syntax highlighting (`syntax/olang.vim`) - keywords, types, literals, `#` and `## ... ##` comments, rule names;
- indentation as `olang format` writes it (four spaces), `#` comments for `gc`;
- `:make` through the compiler (`compiler/olang.vim`: `olang compile %` and an `errorformat` for its one-row
  diagnostics, `path:line:col: error[RULE]: headline`, with their `note:` and `help:` rows), so `:copen` lists them;
- `K` on a rule name in a diagnostic or a comment (`T6b`) shows that rule of the specification (`olang explain`);
- format on save - through the language server when it runs, else `olang format` on a copy of the buffer;
- the language server, `olang lsp`: diagnostics as you type, hover (`K`), go to definition (`gd` / `CTRL-]`), document
  symbols, completion, formatting (`vim.lsp.buf.format()`).
- commands on `.olang` buffers (Neovim wants capitals): `:OlangRun [args]` saves and runs `olang FILE args` in a
  terminal split at the bottom, reused by the next run; `:OlangBuild` (`olang build FILE`) and `:OlangTest [words]`
  (`olang test FILE words`) fill the quickfix list through `:make`; `:OlangFormat` formats the buffer, keeping the
  cursor; `:OlangExplain` shows `olang explain FILE WORD` for the word under the cursor in a floating window;
  `:OlangRepl` opens plain `olang`, the interactive prompt, in a terminal split; `:OlangFormatOnSave [on|off]`
  toggles format on save (no argument) or sets it, and remembers the choice (`stdpath("state")/olang/format_on_save`),
  which then wins over the default and `setup()`.
  Keymaps under `<localleader>` - `r` run, `b` build, `t` test, `f` format, `F` format on save, `e` explain, `i` repl - are set where
  nothing is mapped already; `vim.g.olang_no_maps = 1` turns them off.

Everything but the last works without the server; all of it needs `olang` on `PATH`.

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

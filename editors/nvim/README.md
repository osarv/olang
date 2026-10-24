# editors/nvim - olang for Neovim

A plugin directory: put it on the runtime path and `.olang` files (and scripts beginning `#!/usr/bin/env olang`) get

- syntax highlighting (`syntax/olang.vim`) - keywords, types, literals, `#` and `## ... ##` comments, rule names;
- indentation as `olang format` writes it (four spaces), `#` comments for `gc`;
- `:make` through the compiler (`compiler/olang.vim`: `olang compile %` and an `errorformat` for its one-row
  diagnostics, `path:line:col: error[RULE]: message`), so `:copen` lists them;
- `K` on a rule name in a diagnostic or a comment (`T6b`) shows that rule of the specification (`olang explain`);
- format on save - through the language server when it runs, else `olang format` on a copy of the buffer;
- the language server, `olang lsp`: diagnostics as you type, hover (`K`), go to definition (`gd` / `CTRL-]`), document
  symbols, completion, formatting (`vim.lsp.buf.format()`).

Everything but the last works without the server; all of it needs `olang` on `PATH`.

## Installing

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

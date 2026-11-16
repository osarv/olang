-- olang buffers: indentation as "olang format" writes it, comments, :make through the compiler, K on a rule (olang
-- explain), format on save, and the language server where the "olang" setup asked for it
if vim.b.did_ftplugin then return end
vim.b.did_ftplugin = true

vim.bo.expandtab = true
vim.bo.shiftwidth = 4
vim.bo.softtabstop = 4
vim.bo.tabstop = 4
vim.bo.commentstring = "# %s"
vim.bo.comments = ":#"
vim.bo.keywordprg = "olang explain"
-- diagnostic signs drawn inside the line-number column (olang.statuscol): the E/W takes the number's free leftmost cell, or
-- replaces the number when it fills the column - never an added column, so the text never shifts
vim.wo.signcolumn = "number"
vim.wo.statuscolumn = "%{%v:lua.require'olang'.statuscol()%}"
-- gf, [i and friends follow an import to its file
vim.bo.include = [[^\s*import\s\+\(\w\+\s\+\)\=]]
vim.bo.includeexpr = "v:lua.require'olang'.include(v:fname)"
vim.bo.suffixesadd = ".olang"
vim.cmd("compiler olang")

local olang = require("olang")
olang.attach(0)
olang.commands(0)
-- diagnostics in the terminal's colours (red errors, yellow warnings - syntax/olang.vim's olangDiag groups), in olang
-- windows only, unless g:olang_palette = 0 keeps the colorscheme's
if vim.g.olang_palette ~= 0 then
  local map = {}
  for _, kind in ipairs({ "Error", "Warn" }) do
    for _, part in ipairs({ "", "Sign", "VirtualText", "Floating" }) do
      map[#map + 1] = "Diagnostic" .. part .. kind .. ":olangDiag" .. (part == "Sign" and "Sign" or "") .. kind
    end
    map[#map + 1] = "DiagnosticUnderline" .. kind .. ":olangDiagUnderline" .. kind
  end
  vim.wo.winhighlight = table.concat(map, ",")
end
vim.b.undo_ftplugin = "setlocal et< sw< sts< ts< cms< com< kp< makeprg< errorformat< signcolumn< statuscolumn< inc< inex< sua< winhighlight<"

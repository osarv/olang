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
vim.cmd("compiler olang")

local olang = require("olang")
olang.attach(0)
vim.b.undo_ftplugin = "setlocal et< sw< sts< ts< cms< com< kp< makeprg< errorformat<"

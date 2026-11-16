-- Markdown read comfortably: olang's documents are wrapped at 120 columns, so a narrower window wraps them at word
-- boundaries with list items' indentation kept, and the ** and ` around text are hidden; vim.g.olang_markdown = 0
-- leaves Markdown alone
if vim.g.olang_markdown == 0 then return end
vim.opt_local.wrap = true
vim.opt_local.linebreak = true
vim.opt_local.breakindent = true
vim.opt_local.conceallevel = 2

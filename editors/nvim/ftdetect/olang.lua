-- .olang files, and scripts starting "#!/usr/bin/env olang"
vim.filetype.add({
  extension = { olang = "olang" },
  pattern = {
    [".*"] = {
      function(_, bufnr)
        local first = vim.api.nvim_buf_get_lines(bufnr, 0, 1, false)[1] or ""
        if first:match("^#!.*%f[%w]olang%f[%W]") then return "olang" end
      end,
      { priority = -math.huge },
    },
  },
})

-- ```olang blocks in Markdown highlighted with olang's syntax (Neovim's classic markdown syntax reads this when it
-- loads, so it is set here, at startup); vim.g.olang_markdown = 0 leaves Markdown alone
if vim.g.olang_markdown ~= 0 then
  local fenced = vim.g.markdown_fenced_languages or {}
  if not vim.tbl_contains(fenced, "olang") then table.insert(fenced, "olang") end
  vim.g.markdown_fenced_languages = fenced
end

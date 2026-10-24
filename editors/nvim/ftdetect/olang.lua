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

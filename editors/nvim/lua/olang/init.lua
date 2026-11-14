-- olang for Neovim: format on save with "olang format", and "olang lsp" as the language server.
--
--   require("olang").setup({
--     cmd = { "olang", "lsp" },  -- the server (nil to leave the server off)
--     format_on_save = true,     -- through the server when it runs, else "olang format" on a copy of the buffer
--   })
--
-- Without setup the defaults hold. The parts that need no server - filetype, syntax, :make, K, format on save - work
-- without it.
local M = {}

M.config = { cmd = { "olang", "lsp" }, format_on_save = true }

function M.setup(opts)
  M.config = vim.tbl_extend("force", M.config, opts or {})
end

-- the directory a file's project is rooted at: the nearest holding olang.lock or .git, else the file's own
local function root(bufnr)
  local name = vim.api.nvim_buf_get_name(bufnr)
  local found = vim.fs.root and vim.fs.root(name, { "olang.lock", ".git" })
  return found or vim.fs.dirname(name)
end

-- the buffer formatted by "olang format", on a copy beside the file (so its imports resolve as the file's do); the
-- buffer is left as it is where the text does not parse, and the compiler's diagnostics shown
function M.format(bufnr)
  bufnr = bufnr or 0
  local name = vim.api.nvim_buf_get_name(bufnr)
  if name == "" or vim.fn.executable("olang") == 0 then return end
  local dir, base = vim.fs.dirname(name), vim.fs.basename(name)
  local copy = dir .. "/." .. base:gsub("%.olang$", "") .. ".fmt.olang"
  local lines = vim.api.nvim_buf_get_lines(bufnr, 0, -1, false)
  if vim.fn.writefile(lines, copy) ~= 0 then return end
  local out = vim.fn.system({ "olang", "format", copy })
  if vim.v.shell_error == 0 then
    local formatted = vim.fn.readfile(copy)
    if not vim.deep_equal(formatted, lines) then
      local view = vim.fn.winsaveview()
      vim.api.nvim_buf_set_lines(bufnr, 0, -1, false, formatted)
      vim.fn.winrestview(view)
    end
  else
    vim.notify((out:gsub(vim.pesc(copy), name)), vim.log.levels.WARN)
  end
  os.remove(copy)
end

-- the server started (or reused) for a buffer, and format on save
function M.attach(bufnr)
  local cfg = M.config
  if cfg.cmd and vim.lsp.start and vim.fn.executable(cfg.cmd[1]) == 1 then
    vim.lsp.start({ name = "olang", cmd = cfg.cmd, root_dir = root(bufnr) }, { bufnr = bufnr })
  end
  if cfg.format_on_save then
    vim.api.nvim_create_autocmd("BufWritePre", {
      buffer = bufnr,
      group = vim.api.nvim_create_augroup("olang_format_" .. bufnr, { clear = true }),
      callback = function(ev)
        local clients = (vim.lsp.get_clients or vim.lsp.get_active_clients)({ bufnr = ev.buf, name = "olang" })
        if #clients > 0 then
          vim.lsp.buf.format({ bufnr = ev.buf, name = "olang", timeout_ms = 3000 })
        else
          M.format(ev.buf)
        end
      end,
    })
  end
end

-- a terminal split at the bottom running cmd; the split of the last run is reused
local function term(cmd)
  local w = M.term_win
  if w and vim.api.nvim_win_is_valid(w) then
    vim.api.nvim_set_current_win(w)
    vim.cmd("enew")
  else
    vim.cmd("botright 12new")
  end
  M.term_win = vim.api.nvim_get_current_win()
  vim.fn.termopen(cmd)
  vim.cmd("startinsert")
end

-- run olang with a makeprg of its own, so the errors land in the quickfix list
local function make(prog, args)
  local old = vim.bo.makeprg
  vim.bo.makeprg = prog
  local ok, err = pcall(vim.cmd, "silent make! " .. args)
  vim.bo.makeprg = old
  if not ok then vim.notify(err, vim.log.levels.ERROR) end
  vim.cmd("cwindow")
end

-- the buffer-local commands and keymaps (vim.g.olang_no_maps = 1 leaves the keymaps off)
function M.commands(bufnr)
  local function cmd(name, fn, nargs)
    vim.api.nvim_buf_create_user_command(bufnr, name, fn, { nargs = nargs or 0 })
  end
  cmd("OlangRun", function(o)
    vim.cmd("silent write")
    term(vim.list_extend({ "olang", vim.fn.expand("%:p") }, o.fargs))
  end, "*")
  cmd("OlangBuild", function()
    vim.cmd("silent write")
    make("olang build %:S", "")
  end)
  cmd("OlangTest", function(o)
    vim.cmd("silent write")
    make("olang test %:S", o.args)
  end, "*")
  cmd("OlangFormat", function() M.format(bufnr) end)
  cmd("OlangExplain", function()
    local word = vim.fn.expand("<cword>")
    local out = vim.fn.systemlist({ "olang", "explain", vim.fn.expand("%:p"), word })
    vim.lsp.util.open_floating_preview(out, "olang", { border = "rounded", focus_id = "olang_explain" })
  end)
  cmd("OlangRepl", function() term({ "olang" }) end)
  if vim.g.olang_no_maps == 1 then return end
  local keys = { r = "OlangRun", b = "OlangBuild", t = "OlangTest", f = "OlangFormat", e = "OlangExplain", i = "OlangRepl" }
  for k, c in pairs(keys) do
    local lhs = "<localleader>" .. k
    if vim.fn.maparg(lhs, "n") == "" then
      vim.keymap.set("n", lhs, "<Cmd>" .. c .. "<CR>", { buffer = bufnr, desc = c })
    end
  end
end

return M

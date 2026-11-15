-- olang programs under a debugger: nvim-dap with lldb-dap (lldb-vscode before LLVM 18), olang's values shown as olang
-- writes them by the formatters of editors/debug. Loaded by :OlangDebug and :OlangDebugTest, and by setup() where
-- nvim-dap is installed; nothing here is needed without it.
--
--   require("olang").setup({ debug = { adapter = { "lldb-dap" } } })   -- the adapter's command (default: found on PATH)
local M = {}

-- the adapter's command: the one place naming it, so that another (olang's own) can stand in for it
function M.adapter()
  local want = (require("olang").config.debug or {}).adapter
  if want then return want end
  local names = { "lldb-dap", "lldb-vscode" }
  for v = 30, 14, -1 do
    table.insert(names, "lldb-dap-" .. v)
    table.insert(names, "lldb-vscode-" .. v)
  end
  for _, n in ipairs(names) do
    if vim.fn.executable(n) == 1 then return { n } end
  end
  return nil
end

-- editors/debug/olang_lldb.py: beside this plugin in a checkout, else beside the olang on the PATH (make install
-- copies it there)
function M.formatters()
  local here = debug.getinfo(1, "S").source:sub(2)
  local places = { vim.fn.fnamemodify(here, ":p:h:h:h:h") .. "/debug/olang_lldb.py" }
  local exe = vim.fn.exepath("olang")
  if exe ~= "" then
    table.insert(places, vim.fn.fnamemodify(vim.fn.resolve(exe), ":h:h") .. "/editors/debug/olang_lldb.py")
  end
  for _, p in ipairs(places) do
    if vim.fn.filereadable(p) == 1 then return p end
  end
  return nil
end

-- the signs nvim-dap draws, made to fit the line-number column (signcolumn=number): one character each, coloured by
-- highlight links. A definition the user made is kept; nvim-dap's own defaults (B, C, L, R, an arrow) are replaced
local signs = {
  DapBreakpoint = { "●", "DiagnosticSignError", "B" },
  DapBreakpointCondition = { "◆", "DiagnosticSignWarn", "C" },
  DapLogPoint = { "◇", "DiagnosticSignInfo", "L" },
  DapStopped = { "▶", "DiagnosticSignOk", "→" },
  DapBreakpointRejected = { "○", "DiagnosticSignHint", "R" },
}
function M.signs()
  for name, s in pairs(signs) do
    local old = vim.fn.sign_getdefined(name)[1]
    if old == nil or vim.trim(old.text or "") == s[3] then
      vim.api.nvim_set_hl(0, name, { default = true, link = s[2] })
      vim.fn.sign_define(name, { text = s[1], texthl = name, linehl = name == "DapStopped" and "CursorLine" or "" })
    end
  end
end

-- the directory to build in and the root's identity there, as the compiler takes it (load.rootIdentity, M22a): its
-- path from the working directory where the file is under it, else its name (built from its own directory)
local function where(file)
  local real = vim.loop.fs_realpath
  file = real(file) or file
  local cwd = real(vim.fn.getcwd()) or vim.fn.getcwd()
  local dir, rel = cwd, nil
  if file:sub(1, #cwd + 1) == cwd .. "/" then
    rel = file:sub(#cwd + 2)
  else
    dir, rel = vim.fn.fnamemodify(file, ":h"), vim.fn.fnamemodify(file, ":t")
  end
  return dir, (rel:gsub("%.olang$", ""):gsub("[^%w_%-]", "_"))
end

-- a command run in dir; its output, its errors into the quickfix list on failure
local function run(cmd, dir)
  local out = vim.fn.systemlist("cd " .. vim.fn.shellescape(dir) .. " && " .. table.concat(vim.tbl_map(vim.fn.shellescape, cmd), " ") .. " 2>&1")
  local status = vim.v.shell_error
  if status ~= 0 then
    vim.fn.setqflist({}, " ", { title = table.concat(cmd, " "), lines = out, efm = vim.bo.errorformat })
  end
  return status, out
end

-- a program to start, its arguments and its directory, under nvim-dap
local function launch(program, args, dir)
  local ok, dap = pcall(require, "dap")
  if not ok then
    vim.notify("olang: debugging needs nvim-dap (editors/nvim/README.md)", vim.log.levels.ERROR)
    return
  end
  if not M.setup_dap() then return end
  dap.run({
    name = "olang: " .. vim.fn.fnamemodify(program, ":t"),
    type = "olang",
    request = "launch",
    program = program,
    args = args,
    cwd = dir,
    stopOnEntry = false,
    initCommands = M.init,
  })
end

-- where nvim-dap is installed, the adapter and configuration made when an olang buffer opens (so :DapContinue works)
function M.attach()
  if M.attached then return end
  local rt = vim.api.nvim_get_runtime_file
  if not package.loaded.dap and #rt("lua/dap.lua", false) + #rt("lua/dap/init.lua", false) == 0 then return end
  M.attached = M.setup_dap(true)
end

-- the dap adapter "olang", the signs, and a configuration for olang buffers; false where no adapter is installed
function M.setup_dap(quiet)
  local ok, dap = pcall(require, "dap")
  if not ok then return false end
  local cmd = M.adapter()
  if not cmd then
    if not quiet then vim.notify("olang: no lldb-dap on PATH (editors/nvim/README.md)", vim.log.levels.ERROR) end
    return false
  end
  local py = M.formatters()
  M.init = py and { "command script import " .. py } or {}
  dap.adapters.olang = { type = "executable", command = cmd[1], args = vim.list_slice(cmd, 2), name = "olang" }
  dap.configurations.olang = dap.configurations.olang or {
    {
      name = "olang: build -debug and run this file",
      type = "olang",
      request = "launch",
      program = function() return M.build(vim.api.nvim_buf_get_name(0)) or dap.ABORT end,
      args = {},
      cwd = "${workspaceFolder}",
      initCommands = function() return M.init end,
    },
  }
  M.signs()
  return true
end

-- FILE built by "olang build -debug" into build/NAME.debug; its path, or nil (the errors in the quickfix list)
function M.build(file)
  local dir, id = where(file)
  local out = dir .. "/build/" .. id .. ".debug"
  local status = run({ "olang", "build", "-debug", "-output", out, file }, dir)
  if status ~= 0 then
    vim.cmd("cwindow")
    vim.notify("olang: build -debug failed", vim.log.levels.ERROR)
    return nil
  end
  return out, dir
end

-- :OlangDebug [args]: the buffer saved, built -debug, and started under the debugger with args
function M.debug(args)
  vim.cmd("silent write")
  local out, dir = M.build(vim.api.nvim_buf_get_name(0))
  if out then launch(out, args or {}, dir) end
end

-- :OlangDebugTest [words]: the file's tests built by "olang test -debug" (which runs them once - a failure is no reason
-- to stop) into build/NAME_test.debug, then that binary started under the debugger running the tests the words name
function M.debug_test(words)
  vim.cmd("silent write")
  local file = vim.api.nvim_buf_get_name(0)
  local dir, id = where(file)
  local bin = dir .. "/build/" .. id .. "_test.debug"
  local cmd = vim.list_extend({ "olang", "test", "-debug", file }, words or {})
  local status, out = run(cmd, dir)
  -- a test failing is no reason to stop; a program that does not compile (no "N passed" row) is
  if vim.fn.getftime(bin) < 0 or (status ~= 0 and not table.concat(out, "\n"):match("%d+ passed")) then
    vim.cmd("cwindow")
    vim.notify("olang: test -debug built no test binary", vim.log.levels.ERROR)
    return
  end
  launch(bin, words or {}, dir)
end

return M

require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- Debug
map({ "n", "t" }, "<A-o>", function()
  require("dap").step_out()
end, { silent = true, desc = "step out" })
map({ "n", "t" }, "<A-i>", function()
  require("dap").step_into()
end, { silent = true, desc = "step into" })
map({ "n", "t" }, "<A-j>", function()
  require("dap").step_over()
end, { silent = true, desc = "step over" })
map({ "n", "t" }, "<A-h>", function()
  require("dap").continue()
end, { silent = true, desc = "continue" })
map({ "n", "t" }, "<A-k>", function()
  require("dap.ui.widgets").hover()
end, { silent = true, desc = "caculate expr" })
map("n", "<F5>", function()
  require("dap").toggle_breakpoint()
end, { silent = true, desc = "toggle breakpoint" })

map("n", "<leader>du", '<cmd>lua require"dapui".toggle()<CR>', { desc = "DAP toggle UI" })
map(
  "n",
  "<leader>dt",
  "<cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>",
  { desc = "Toggle Condition Breakpoint" }
)
map("n", "<leader>dk", "<cmd>lua require'dap'.up()<CR>", { desc = "Stack up" })
map("n", "<leader>dj", "<cmd>lua require'dap'.down()<CR>", { desc = "Stack down" })
map("n", "<leader>dn", "<cmd>lua require'dap'.run_to_cursor()<CR>", { desc = "Run To Cursor" })
map("n", "<leader>dq", "<cmd>lua require'dap'.terminate()<CR>", { desc = "Terminate" })

-- cmake
map("n", "<leader>cc", "<cmd>CMakeGenerate<CR>", { desc = "Generate" })
map("n", "<leader>cb", "<cmd>CMakeBuild<CR>", { desc = "Build" })
map("n", "<leader>cx", "<cmd>CMakeRun<CR>", { desc = "Run" })
map("n", "<leader>cd", "<cmd>CMakeDebug<CR>", { desc = "Debug" })
map("n", "<leader>ct", "<cmd>CMakeSelectBuildType<CR>", { desc = "Select Build Type" })
map("n", "<leader>cu", "<cmd>CMakeSelectBuildTarget<CR>", { desc = "Select Build Target" })
map("n", "<leader>cl", "<cmd>CMakeSelectLaunchTarget<CR>", { desc = "Select Launch Target" })
map("n", "<leader>ceo", "<cmd>CMakeOpenExecutor<CR>", { desc = "Open CMake Executor" })
map("n", "<leader>cec", "<cmd>CMakeCloseExecutor<CR>", { desc = "Close CMake Executor" })
map("n", "<leader>cro", "<cmd>CMakeOpenRunner<CR>", { desc = "Open CMake Runner" })
map("n", "<leader>crc", "<cmd>CMakeCloseRunner<CR>", { desc = "Close CMake Runner" })
map("n", "<leader>ci", "<cmd>CMakeInstall<CR>", { desc = "Intall CMake target" })
map("n", "<leader>cn", "<cmd>CMakeClean<CR>", { desc = "Clean CMake target" })
map("n", "<leader>cs", function()
  vim.cmd [[CMakeStopRunner]]
  vim.cmd [[CMakeStopExecutor]]
end, { desc = "Stop CMake Process" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

---@type MappingsTable
local M = {}

M.general = {
  n = {
    ["<C-u>"] = { "<C-u>zz", "Move middle up" },
    ["<C-d>"] = { "<C-d>zz", "Move middle down" },
    ["<leader>y"] = {"+y", "Copy to clipboard"},
    ["<leader>Y"] = {"+y", "Copy to clipboard"},
    -- Neotest
    ["<leader>tr"] = {"<cmd>lua require('neotest').run.run()<CR>", "Run test"},
    ["<leader>tf"] = {"<cmd>lua require('neotest').run.run(vim.fn.expand('%'))<CR>", "Run file tests"},
    ["<leader>ts"] = {"<cmd>lua require('neotest').summary.toggle()<CR>", "Toggle summary"},
    ["<leader>tk"] = {"<cmd>lua require('neotest').run.stop()<CR>", "Stop test"},
    -- Buffers
    ["<leacer>gn"] = {"<cmd>:bn<CR>", "Open next buffer"},
    ["<leader>gp"] = {"<cmd>:bn<CR>", "Open previous buffer"},
    ["<leader>gd"] = {"<cmd>:bd<CR>", "Close buffer"},
  },
  v = {
    ["<leader>p"] = {"_dP", "Paste vithout saving"},
    ["<leader>y"] = {"+y", "Copy to clipboard"},
  },
}

return M

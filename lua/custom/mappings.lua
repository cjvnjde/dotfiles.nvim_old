---@type MappingsTable
local M = {}

M.general = {
  n = {
    ["<C-u>"] = { "<C-u>zz", "Move middle up" },
    ["<C-d>"] = { "<C-d>zz", "Move middle down" },
    ["<leader>y"] = {"+y", "Copy to clipboard"},
    ["<leader>Y"] = {"+y", "Copy to clipboard"},
  },
  v = {
    ["<leader>p"] = {"_dP", "Paste vithout saving"},
    ["<leader>y"] = {"+y", "Copy to clipboard"},
  },
}

return M

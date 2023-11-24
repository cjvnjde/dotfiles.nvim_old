---@type MappingsTable
local M = {}

M.neotest = {
  n = {
    ["<leader>tr"] = { "<cmd>lua require('neotest').run.run()<CR>", "Run test" },
    ["<leader>tf"] = { "<cmd>lua require('neotest').run.run(vim.fn.expand('%'))<CR>", "Run file tests" },
    ["<leader>ts"] = { "<cmd>lua require('neotest').summary.toggle()<CR>", "Toggle summary" },
    ["<leader>tk"] = { "<cmd>lua require('neotest').run.stop()<CR>", "Stop test" },
  },
}

M.luasnip = {
  n = {
    ["<leader><leader>r"] = { "<cmd>source ~/dotfiles/nvim/lua/custom/configs/snip.lua<CR>", "Source luasnip file" },
  },
  i = {
    ["<C-k>"] = {
      function()
        local ls = require "luasnip"
        if ls.expand_or_jumpable() then
          ls.expand_or_jump()
        end
      end,
      "Expand item or jumb to the next item within the snippet",
      opts = { silent = true },
    },
    ["<C-j>"] = {
      function()
        local ls = require "luasnip"
        if ls.jumpable(-1) then
          ls.jump(-1)
        end
      end,
      "Moves to the previous item within snippet",
      opts = { silent = true },
    },
    ["<C-l>"] = {
      function()
        local ls = require "luasnip"
        if ls.choice_active() then
          ls.change_choice(1)
        end
      end,
      "Selecting withing a list of choices",
    },
  },
  v = {
    ["<C-k>"] = {
      function()
        local ls = require "luasnip"
        if ls.expand_or_jumpable() then
          ls.expand_or_jump()
        end
      end,
      "Expand item or jumb to the next item within the snippet",
      opts = { silent = true },
    },
    ["<C-j>"] = {
      function()
        local ls = require "luasnip"
        if ls.jumpable(-1) then
          ls.jump(-1)
        end
      end,
      "Moves to the previous item within snippet",
      opts = { silent = true },
    },
  },
}

M.general = {
  n = {
    ["<C-u>"] = { "<C-u>zz", "Move middle up" },
    ["<C-d>"] = { "<C-d>zz", "Move middle down" },
    ["<leader>y"] = { "+y", "Copy to clipboard" },
    ["<leader>Y"] = { "+y", "Copy to clipboard" },
    -- Buffers
    ["<leacer>gn"] = { "<cmd>:bn<CR>", "Open next buffer" },
    ["<leader>gp"] = { "<cmd>:bn<CR>", "Open previous buffer" },
    ["<leader>gd"] = { "<cmd>:bd<CR>", "Close buffer" },
    ["<leader>tb"] = { "<cmd>:b#<CR>", "Swap Buffers" },
  },
  v = {
    ["<leader>p"] = { '"_dP', "Paste vithout saving" },
    ["<leader>y"] = { "+y", "Copy to clipboard" },
  },
}

return M

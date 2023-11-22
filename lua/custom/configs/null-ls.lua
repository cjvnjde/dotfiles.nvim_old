local null_ls = require "null-ls"

local b = null_ls.builtins

local sources = {

  -- webdev stuff
  -- b.formatting.deno_fmt, -- choosed deno for ts/js files cuz its very fast!

  -- Lua
  b.formatting.stylua,

  -- cpp
  -- b.formatting.clang_format,

  b.diagnostics.eslint.with({
    condition = function()
      return require"null-ls.utils".root_pattern(
        "eslint.config.js",
        ".eslintrc",
        ".eslintrc.js",
        ".eslintrc.cjs",
        ".eslintrc.yaml",
        ".eslintrc.yml",
        ".eslintrc.json"
      )(vim.api.nvim_buf_get_name(0)) ~= nil
    end
  }),

  b.formatting.prettier.with({
    condition = function()
      return require"null-ls.utils".root_pattern(
        ".prettierrc",
        ".prettierrc.json",
        ".prettierrc.yml",
        ".prettierrc.yaml",
        ".prettierrc.json5",
        ".prettierrc.js",
        ".prettierrc.cjs",
        ".prettierrc.toml",
        "prettier.config.js",
        "prettier.config.cjs"
      )(vim.api.nvim_buf_get_name(0)) ~= nil
    end
  }),
}

null_ls.setup {
  debug = true,
  sources = sources,
}

local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

local servers = { "html", "cssls", "tsserver", "clangd", "tailwindcss" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

lspconfig.emmet_ls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {
    "css",
    "html",
    "javascript",
    "javascriptreact",
    "typescriptreact",
    "less",
    "sass",
    "scss",
    "pug",
    "vue",
  },
  init_options = {
    html = {
      options = {
        ["output.selfClosingStyle"] = "xhtml",
      },
    },
  },
}

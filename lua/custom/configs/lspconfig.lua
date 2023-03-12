-- custom.plugins.lspconfig
-- local on_attach = require("plugins.configs.lspconfig").on_attach
-- local capabilities = require("plugins.configs.lspconfig").capabilities
--
-- local lspconfig = require "lspconfig"
-- local servers = { "rust_analyzer", "pyright" }
--
-- for _, lsp in ipairs(servers) do
--   lspconfig[lsp].setup {
--     on_attach = on_attach,
--     capabilities = capabilities,
--   }
-- end
local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities
local lspconfig = require "lspconfig"

lspconfig.pyright.setup { on_attach = on_attach, capabilities = capabilities }
lspconfig.rust_analyzer.setup {
  on_attach = on_attach,
  settings = { 
    ["rust-analyzer"] = {
      cargo = { 
        extraArgs = { "-r" } 
      } 
    } 
  },
}

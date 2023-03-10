-- custom.plugins.lspconfig
local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = { "rust_analyzer", "pyright" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
  if lsp == "rust_analyzer" then
    lspconfig.rust_analyzer.setup {
      on_attach = on_attach,
      settings = {
        ["rust-analyzer"] = {
          check = {
            extraArgs = { "-r" },
          },
        },
      },
    }
  end
end

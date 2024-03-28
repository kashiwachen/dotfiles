local config = require("plugins.configs.lspconfig")

local on_attach = config.on_attach
local capabilities = config.capabilities
local util = require("lspconfig/util")

local lspconfig = require("lspconfig")

-- python
lspconfig.pyright.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {"python"},
})
-- rust
lspconfig.rust_analyzer.setup({
  on_attach = on_attach,
  filetypes = {"rust"},
  settings = {
    ["rust-analyzer"] = {
      on_attach = on_attach,
      capabilities = capabilities,
      filetypes = {"rust"},
      root_dir = util.root_pattern("Cargo.toml"),
      settings = {
        ["rust-analyzer"] = {
          cargo = {
            allFeatures = true,
          },
        },
      },
    }
  }
})

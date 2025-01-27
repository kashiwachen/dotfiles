local lspconfig = {
  "neovim/nvim-lspconfig",
  config = function()
    local lspconfig = require("lspconfig")
    local util = require("lspconfig/util")
    lspconfig.gopls.setup({
      cmd = { "gopls" },
      root_dir = util.root_pattern("go.work", "go.mod", ".git"),
      filetypes = { "go", "gomod", "gowork", "gotmpl" },
    })
  end,
}
return lspconfig

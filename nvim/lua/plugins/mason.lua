local mason = {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "stylua",
        "gopls",
        "lua-language-server",
      },
    },
  },
}
return mason

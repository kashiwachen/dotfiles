local plugins = {
  {
    "stevearc/conform.nvim",
    opts = {
      default_format_opts = {
        timeout_ms = 1000,
      },
      formatters_by_ft = {
        go = { "gofmt", "goimports-reviser" },
      },
    },
  },
}
return plugins

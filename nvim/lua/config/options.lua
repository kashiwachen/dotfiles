-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Diable mouse
vim.opt.mouse = ""

-- Undercurl
vim.cmd([[let &t_Cs = "\e[60m"]])
vim.cmd([[let &t_Cs = "\e[24m"]])
-- Default Indention
vim.opt.expandtab = true -- Use space instead of tab
vim.opt.autoindent = true -- press o on the current line, the next line align with the current line
vim.opt.tabstop = 4
-- Indention for Go
vim.api.nvim_create_autocmd("FileType", {
  pattern = "go",
  callback = function()
    vim.bo.shiftwidth = 4
    vim.bo.tabstop = 4
    vim.bo.expandtab = false
  end,
})
vim.opt.listchars = { lead = "·", tab = ">~", trail = "·" }

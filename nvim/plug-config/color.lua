--- colors
-- set termguicolors
-- set t_Co=256

--- themes
vim.cmd[[colorscheme tokyonight]]
--- tokyonight them config 
vim.g.tokyonight_style = "storm" --available: night, storm 
vim.g.tokyonight_enable_italic = 1
-- vim.cmd[[colorscheme onedark]]
-- vim.cmd[[colorscheme darcula]]

--- this forces transparent bg
vim.cmd[[autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE]]

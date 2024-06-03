-- The following is wezterm module code snippet
local wezterm = require 'wezterm'
local module = {}

function module.apply_to_config(config)
    config.font = wezterm.font { family = 'ComicCodeLigatures Nerd Font' }
    config.font_size = 14
end

return module

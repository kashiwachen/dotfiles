local wezterm = require 'wezterm'
local module = {}

function module.apply_to_config(config)
    config.window_background_opacity = 0.95
    config.window_padding = {
        left = 12,
        right = 12,
        top = 12,
        bottom = 15,
    }
    config.window_frame = {
        font = wezterm.font { family = "JetBrains Mono", weight = 'Bold' },
        font_size = 12,
        active_titlebar_bg = '#333333',
    }
end

return module

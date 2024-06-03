-- Pull in the wezterm API
local wezterm = require 'wezterm'
local color_module = require 'color_helper'
local window_module = require 'window_helper'
local pane_module = require 'pane_helper'
local keys_module = require 'keymap_helper'
local text_module = require 'text_helper'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices
color_module.apply_to_config(config)
window_module.apply_to_config(config)
pane_module.apply_to_config(config)
keys_module.apply_to_config(config)
text_module.apply_to_config(config)

-- and finally, return the configuration to wezterm
return config

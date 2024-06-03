-- Pull in the wezterm API
local wezterm = require("wezterm")
local module = {}

local function get_appearance()
	if wezterm.gui then
		return wezterm.gui.get_appearance()
	end
	return "Dark"
end

local function scheme_for_appearance(appearance)
	if appearance:find("Dark") then
		return "Tokyo Night Storm"
	else
		return "Ocean (dark) (terminal.sexy)"
	end
end

function module.apply_to_config(config)
	config.color_scheme = scheme_for_appearance(get_appearance())
	config.colors = {
		tab_bar = {
			inactive_tab_edge = "#575757",
		},
	}
end

-- return our module table
return module

local wezterm = require("wezterm")
local act = wezterm.action

wezterm.on("update-right-status", function(window, pane)
	local name = window:active_key_table()
	if name then
		name = "TABLE: " .. name .. "  "
	end
	window:set_right_status(name or "")
end)

local leader = { key = "Space", mods = "SHIFT" }
local keys = {
	{ key = "d", mods = "CMD", action = act.SplitHorizontal({ domain = "CurrentPaneDomain" }) },
	{ key = "d", mods = "CMD|SHIFT", action = act.SplitVertical({ domain = "CurrentPaneDomain" }) },
	{ key = "w", mods = "CMD", action = act.CloseCurrentPane({ confirm = true }) },

	{ key = "[", mods = "CMD", action = act.ActivatePaneDirection("Prev") },
	{ key = "]", mods = "CMD", action = act.ActivatePaneDirection("Next") },

	{ key = "r", mods = "LEADER", action = act.ActivateKeyTable({ name = "resize_pane", one_shot = false }) },
}
local key_tables = {
	resize_pane = {
		{ key = "j", action = act.AdjustPaneSize({ "Left", 5 }) },
		{ key = "k", action = act.AdjustPaneSize({ "Right", 5 }) },
		{ key = "h", action = act.AdjustPaneSize({ "Up", 5 }) },
		{ key = "l", action = act.AdjustPaneSize({ "Down", 5 }) },
		{ key = "Escape", action = "PopKeyTable" },
	},
}

local config = {
	color_scheme = "Tomorrow Night (Gogh)",
	font = wezterm.font("0xProto Nerd Font Mono"),
	font_size = 14,
	line_height = 1.3,

	enable_tab_bar = true,
	use_fancy_tab_bar = false,
	tab_bar_at_bottom = false,
	tab_max_width = 99999,
	hide_tab_bar_if_only_one_tab = true,

	window_decorations = "RESIZE",
	window_padding = {
		left = 30,
		right = 30,
		top = 30,
		bottom = 30,
	},

	window_background_opacity = 0.95,
	macos_window_background_blur = 7,

	status_update_interval = 1000,

	inactive_pane_hsb = {
		brightness = 0.7,
	},

	front_end = "OpenGL",
	max_fps = 120,
	prefer_egl = true,

	leader = leader,
	keys = keys,
	key_tables = key_tables,
}

return config

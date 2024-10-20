local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.font = wezterm.font("0xProto Nerd Font")
config.font_size = 13

config.enable_tab_bar = true
config.window_decorations = "RESIZE"

config.window_background_opacity = 0.7
config.macos_window_background_blur = 7

return config

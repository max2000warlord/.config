-- Pull in the wezterm API
local wezterm = require("wezterm")
local act = wezterm.action
-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices
config.mouse_bindings = {
	-- Right click sends "woot" to the terminal
	{
		event = { Down = { streak = 1, button = "Right" } },
		mods = "NONE",
		action = act.SendString("woot"),
	},
	-- Change the default click behavior so that it only selects
	-- text and doesn't open hyperlinks
	{
		event = { Up = { streak = 1, button = "Left" } },
		mods = "NONE",
		action = act.CompleteSelection("ClipboardAndPrimarySelection"),
	},

	-- and make CTRL-Click open hyperlinks
	{
		event = { Up = { streak = 1, button = "Left" } },
		mods = "CTRL",
		action = act.OpenLinkAtMouseCursor,
	},
	-- NOTE that binding only the 'Up' event can give unexpected behaviors.
	-- Read more below on the gotcha of binding an 'Up' event only.
}
-- For example, changing the color scheme:
config.font_size = 14
config.default_cursor_style = "BlinkingBar"
config.animation_fps = 1
config.font = wezterm.font("Hack Nerd Font")
config.hide_tab_bar_if_only_one_tab = true
config.window_background_opacity = 0.65
config.text_background_opacity = 1.0
config.window_close_confirmation = "NeverPrompt"
-- and finally, return the configuration to wezterm
return config

require("animation")
require("autostart")
local colors = require("colors")
require("env")
require("idle")
require("keybinds")
require("plugins")
require("rules")
------------------
---- MONITORS ----
------------------

hl.monitor({
	output = "DP-2",
	mode = "3840x2160@144",
	position = "auto-right",
	scale = 1.5,
	bitdepth = 10,
	cm = "hdredid",
	supports_hdr = true,
	supports_wide_color = true,
	sdrbrightness = 1.2,
	sdrsaturation = 0.98,
	sdr_min_luminance = 0.35,
	sdr_max_luminance = 200,
	min_luminance = 0.35,
	max_luminance = 500,
	max_avg_luminance = 350,
})

hl.monitor({
	output = "HDMI-A-3",
	mode = "preferred",
	position = "-1920x0",
	scale = "1",
	cm = "auto",
})

hl.monitor({
	output = "HDMI-A-2",
	mode = "3840x2160@60",
	position = "auto-left",
	scale = "1.5",
	bitdepth = 10,
	cm = "hdredid",
	supports_hdr = true,
	supports_wide_color = true,
	sdrbrightness = 1.2,
	sdrsaturation = 0.98,
	sdr_min_luminance = 0.05,
	sdr_max_luminance = 200,
	min_luminance = 0.05,
	max_luminance = 500,
	max_avg_luminance = 220,
	disabled = false,
})

-- See https://wiki.hypr.land/Configuring/Advanced-and-Cool/Environment-variables/

hl.config({

	animations = { enabled = true },
	decoration = {
		rounding = 15,
		rounding_power = 2,
		active_opacity = 1.0,
		inactive_opacity = 1.0,

		shadow = {
			enabled = false,
			range = 4,
			render_power = 3,
			color = 0xee1a1a1a,
		},

		blur = {
			enabled = true,
			size = 5,
			passes = 5,
			vibrancy = 0.1696,
			ignore_opacity = true,
			new_optimizations = true,
		},
	},
	dwindle = { preserve_split = true }, -- You probably want this

	general = {
		-- Set to true to enable resizing windows by clicking and dragging on borders and gaps
		resize_on_border = false,
		-- Please see https://wiki.hypr.land/Configuring/Advanced-and-Cool/Tearing/ before you turn this on
		allow_tearing = false,
		layout = "dwindle",
		gaps_in = 5,
		gaps_out = 10,
		border_size = 3,
		col = {
			active_border = { colors = { colors.source_color, colors.primary_container }, angle = 45 },
			inactive_border = { colors = { colors.surface_variant }, angle = 45 },
		},
	},

	input = {
		kb_layout = "us",
		follow_mouse = 1,
		sensitivity = 0, -- -1.0 - 1.0, 0 means no modification.
		scroll_method = "on_button_down",
		scroll_button = 274,
		touchpad = {
			natural_scroll = true,
		},
	},

	master = { new_status = "master" },

	misc = {
		force_default_wallpaper = -1, -- Set to 0 or 1 to disable the anime mascot wallpapers
		disable_hyprland_logo = false, -- If true disables the random hyprland logo / anime girl background. :(
	},
	render = {
		direct_scanout = 1,
		cm_auto_hdr = 2, -- auto-enable HDR for fullscreen HDR content
		use_shader_blur_blend = true,
	},
	scrolling = {
		fullscreen_on_one_column = true,
	},
	xwayland = {
		force_zero_scaling = true,
	},
})

-- hl.windowrule({
-- 	name = "hyprglass-ghostty",
-- 	tag = "+hyprglass_preset_blurry",
-- 	match = { class = "^(com.mitchellh.ghostty)$" },
-- })

-- hl.gesture({
--     fingers = 3,
--     direction = "horizontal",
--     action = "workspace"
-- })

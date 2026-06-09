--------------------------------
---- WINDOWS AND WORKSPACES ----
--------------------------------

-- See https://wiki.hypr.land/Configuring/Basics/Window-Rules/
-- and https://wiki.hypr.land/Configuring/Basics/Workspace-Rules/

-- Example window rules that are useful

local suppressMaximizeRule = hl.window_rule({
	-- Ignore maximize requests from all apps. You'll probably like this.
	name = "suppress-maximize-events",
	match = { class = ".*" },

	suppress_event = "maximize",
})
-- suppressMaximizeRule:set_enabled(false)

hl.window_rule({
	-- Fix some dragging issues with XWayland
	name = "fix-xwayland-drags",
	match = {
		class = "^$",
		title = "^$",
		xwayland = true,
		float = true,
		fullscreen = false,
		pin = false,
	},

	no_focus = true,
})

hl.window_rule({
	match = { title = "Volume Control" },
	float = true,
})

hl.window_rule({
	match = { title = "File Operation Progress" },
	float = true,
})

hl.window_rule({
	match = { class = "org.pulseaudio.pavucontrol" },
	float = true,
	size = "monitor_w*0.4 monitor_h*0.3",
})

hl.window_rule({
	match = { class = "blueman-manager" },
	float = true,
	size = "monitor_w*0.4 monitor_h*0.4",
})

hl.window_rule({
	match = {
		class = "zen",
		title = "Library",
	},
	float = true,
})

hl.window_rule({
	match = { class = "waypaper" },
	float = true,
	size = "1000 1000",
})

--hl.window_rule({
--	workspace = "9 silent",
--	monitor = "HDMI-A-2",
--	match = { initial_class = "gamescope" },
--})

local float = {
	"1password",
	"Grub-customizer",
	"kdeconnect.app",
	"xfce-polkit",
	"nwg-look",
	"org.cachyos.hello",
	"sddm-conf",
	"solaar",
	"swayimg",
}

for _, fl in ipairs(float) do
	hl.window_rule({
		match = { class = fl },
		float = true,
		center = true,
	})
end

hl.window_rule({
	match = { class = ".*" },
	suppress_event = "maximize",
})

hl.window_rule({
	match = { title = "jetbrains-toolbox" },
	float = true,
	center = true,
})

-- No border: Ghostty, Neovide, GLava
local noborders = { "com.mitchellh.ghostty", "neovide" }

for _, nb in ipairs(noborders) do
	hl.window_rule({
		border_size = 0,
		match = { class = nb },
	})
end
local noshadows = { "waybar", "com.mitchellh.ghostty", "neovide" }

for _, nsh in ipairs(noshadows) do
	hl.window_rule({
		match = { class = nsh },
		no_shadow = true,
	})
end

local lr = { "rofi", "waybar" }

for _, ns in ipairs(lr) do
	hl.layer_rule({
		match = { namespace = ns },
		blur = true,
	})
end

for i = 1, 9 do
	hl.workspace_rule({ workspace = tostring(i), monitor = "DP-2" })
end

hl.workspace_rule({ workspace = "11", monitor = "HDMI-A-2" })
hl.workspace_rule({ workspace = "10", monitor = "HDMI-A-3" })

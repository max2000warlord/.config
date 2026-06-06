if hl.plugin.hyprglass then
	local hg = hl.plugin.hyprglass

	hg.config({
		default_theme = "dark",
		default_preset = "glass",
		tint_color = 0x8899aa22,

		brightness = 0.9,
		dark = { brightness = 0.82 },
		light = { adaptive_boost = 0.5 },

		layers = { enabled = 1 },
	})

	-- Layer surfaces: each call whitelists the namespace and configures it
	-- hg.layer("waybar", { preset = "subtle", mask_threshold = 0.05 })
	hg.layer("ghostty", { preset = "subtle", mask_threshold = 0.05 })
	hg.layer("neovide", { preset = "subtle", mask_threshold = 0.05 })
	hg.layer("rofi", { preset = "subtle", mask_threshold = 0.05 })
	hg.layer("quickshell:bezel", { preset = "ui", mask_threshold = 0.3 })

	-- Presets
	hg.preset("clear", {
		glass_opacity = 0.5,
		blur_strength = 1.5,
		blur_iterations = 5,
		dark = { brightness = 0.7 },
		light = { brightness = 1.2 },
	})

	hg.preset("contrasted", {
		inherits = "high_contrast",
		contrast = 1.2,
		adaptive_dim = 1.5,
		dark = { tint_color = 0x02142aa9 },
	})
end

if hl.plugin.hyprexpo then
	local he = hl.plugin.hyprexpo

	hl.bind("SUPER + g", function()
		he.expo("toggle")
	end)
	hl.define_submap("hyprexpo", function()
		hl.bind("h", function()
			he.kb_focus("left")
		end)
		hl.bind("l", function()
			he.kb_focus("right")
		end)
		hl.bind("k", function()
			he.kb_focus("up")
		end)
		hl.bind("j", function()
			he.kb_focus("down")
		end)
		hl.bind("return", function()
			he.kb_confirm()
		end)
		hl.bind("escape", function()
			he.expo("cancel")
		end)
	end)
end

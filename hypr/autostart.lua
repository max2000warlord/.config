-------------------
---- AUTOSTART ----
-------------------

-- See https://wiki.hypr.land/Configuring/Basics/Autostart/

-- Autostart necessary processes (like notifications daemons, status bars, etc.)
-- Or execute your favorite apps at launch like this:

hl.on("hyprland.start", function()
	hl.exec_cmd("/usr/lib/hyprpolkitagent/hyprpolkitagent")
	hl.exec_cmd("pipewire & pipewire-pulse")
	hl.exec_cmd("waybar & awww-daemon &")
	hl.exec_cmd("$HOME/.config/hypr/inits/wallust.sh")
	hl.exec_cmd("nm-applet & blueman-applet & dunst")
	hl.exec_cmd("hypridle")
	hl.exec_cmd("1password")
end)

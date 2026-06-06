-- keybinds.lua
---------------------
---- MY PROGRAMS ----
---------------------

-- Set programs that you use
local term = "ghostty"
local fileManager = "thunar"
local menu = "rofi -show drun"
local browser = "zen-browser"
local editor = "neovide"
local logout = "wlogout"
local lock = "hyprlock"
local mail = "proton-mail"
local pw = "1password"

local mainMod = "SUPER" -- Sets "Windows" key as main modifier
local comboMod = "SUPER + SHIFT" -- Sets "Windows" + "Shift" as combo modifier
local altComboMod = "ALT + SUPER" -- Sets "Alt" + "Windows" as combo modifier
local ctrlMod = "SUPER + CTRL"
--------------------
--- KEYBINDINGSS ---
--------------------

-- Example binds, see https://wiki.hyprland.org/Configuring/Binds/ for more
hl.bind(mainMod .. " + X", hl.dsp.exec_cmd(term))
hl.bind(mainMod .. " + L", hl.dsp.exec_cmd(logout))
hl.bind(mainMod .. " + M", hl.dsp.exit())
hl.bind(mainMod .. " + C", hl.dsp.exec_cmd(browser))
-- hl.bind(mainMod .. "F", hl.dsp.fullscreen())
-- hl.bind(mainMod .. "S", hl.dsp.exec_cmd("signal-desktop"))
hl.bind(comboMod .. " + Q", hl.dsp.window.close())
hl.bind(
	mainMod .. " + Z",
	hl.dsp.exec_cmd("zoom --use-tray-icon --enable-features=UseOzonePlatform --ozone-platform=wayland")
)
hl.bind(mainMod .. " + B", hl.dsp.exec_cmd("pia-toggle"))
hl.bind(mainMod .. " + P", hl.dsp.exec_cmd(pw))
hl.bind(mainMod .. " + V", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + D", hl.dsp.exec_cmd(menu))
hl.bind(mainMod .. " + J", hl.dsp.layout("togglesplit")) -- dwindle only
hl.bind(mainMod .. " + W", hl.dsp.exec_cmd("killall -SIGUSR1 waybar"))
hl.bind(comboMod .. " + W", hl.dsp.exec_cmd("pkill waybar && sleep 0.3 && xc waybar"))
hl.bind(comboMod .. " + F", hl.dsp.exec_cmd(fileManager))
hl.bind(comboMod .. " + V", hl.dsp.window.pseudo()) -- dwindle
hl.bind(comboMod .. " + X", hl.dsp.exec_cmd(editor))
hl.bind(comboMod .. " + Z", hl.dsp.exec_cmd(logout))
hl.bind(comboMod .. " + L", hl.dsp.exec_cmd(lock))
hl.bind(ctrlMod .. " + P", hl.dsp.exec_cmd(mail))

-- screencapping with Hyprshot
hl.bind(mainMod .. " + S", hl.dsp.exec_cmd("hyprshot -m window --clipboard-only"))
hl.bind(comboMod .. " + S", hl.dsp.exec_cmd("hyprshot -m region --clipboard-only"))
hl.bind(ctrlMod .. " + S", hl.dsp.exec_cmd("hyprshot -m output --clipboard-only"))
hl.bind(ctrlMod .. " + PRINT", hl.dsp.exec_cmd("hyprshot-border --clipboard-only"))

-- Move focus with mainMod + arrow keys
hl.bind(mainMod .. " + left", hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + up", hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + down", hl.dsp.focus({ direction = "down" }))

-- Swap tiles
hl.bind(comboMod .. " + left", hl.dsp.window.move({ direction = "left" }))
hl.bind(comboMod .. " + right", hl.dsp.window.move({ direction = "right" }))
hl.bind(comboMod .. " + up", hl.dsp.window.move({ direction = "up" }))
hl.bind(comboMod .. " + down", hl.dsp.window.move({ direction = "down" }))

-- Swap tiles
hl.bind(comboMod .. " + left", hl.dsp.window.move({ direction = "left" }))
hl.bind(comboMod .. " + right", hl.dsp.window.move({ direction = "right" }))
hl.bind(comboMod .. " + up", hl.dsp.window.move({ direction = "up" }))
hl.bind(comboMod .. " + down", hl.dsp.window.move({ direction = "down" }))

hl.bind(mainMod .. " + SPACE", hl.dsp.workspace.toggle_special("magic"))
hl.bind(altComboMod .. " + SPACE", hl.dsp.window.move({ workspace = "special:magic" }))
-- Scroll through existing workspaces with mainMod + scroll
hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up", hl.dsp.focus({ workspace = "e-1" }))
-- Move/resize windows with mainMod + LMB/RMB and dragging
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

for i = 1, 10 do
	local key = i % 10 -- 10 maps to key 0
	hl.bind(mainMod .. " + " .. key, hl.dsp.focus({ workspace = i }))
	hl.bind(mainMod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
end

-- Hyprscrolling keybinds
hl.bind(mainMod .. " + period", hl.dsp.layout("move +col"))
hl.bind(mainMod .. " + comma", hl.dsp.layout("move -col"))
hl.bind(comboMod .. " + period", hl.dsp.layout("movewindowto r"))
hl.bind(comboMod .. " + comma", hl.dsp.layout("movewindowto l"))
hl.bind(comboMod .. " + up", hl.dsp.layout("movewindowto u"))
hl.bind(comboMod .. " + down", hl.dsp.layout("movewindowto d"))

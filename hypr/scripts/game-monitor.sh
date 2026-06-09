#!/usr/bin/bash
# Wait for the window to appear, then move it
while ! hyprctl clients | grep -q "steam_app_1245620"; do
  sleep 0.2
done
hyprctl dispatch movewindow mon:HDMI-A-2 class:steam_app_1245620
hyprctl dispatch movetoworkspace 11 class:steam_app_1245620

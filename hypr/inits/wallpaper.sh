#!/bin/sh

LAST_WALLPAPER=$(swww query | grep "DP" | awk -F 'image: ' '{print $2}')

while true; do
  CURRENT_WALLPAPER=$(swww query | grep "DP" | awk -F 'image: ' '{print $2}')

  if [ "$CURRENT_WALLPAPER" != "$LAST_WALLPAPER" ]; then
    LAST_WALLPAPER="$CURRENT_WALLPAPER"

    wal -i "$CURRENT_WALLPAPER"

  fi
  sleep 2
done

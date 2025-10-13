#!/bin/sh

CURRENT_WALL_FILE="$HOME/.cache/current_mpvpaper"
LAST_WALLPAPER=""

while true; do
  if [ -f "$CURRENT_WALL_FILE" ]; then
    CURRENT_WALLPAPER=$(cat "$CURRENT_WALL_FILE")

    if [ "$CURRENT_WALLPAPER" != "$LAST_WALLPAPER" ]; then
      LAST_WALLPAPER="$CURRENT_WALLPAPER"
      echo "Wallpaper changed to: $CURRENT_WALLPAPER"
      wal -i "$CURRENT_WALLPAPER"
    fi
  fi
  sleep 2
done

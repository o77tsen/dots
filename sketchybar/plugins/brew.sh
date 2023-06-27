#!/bin/bash

source "$CONFIG_DIR/colors.sh"

COUNT=$(brew outdated | wc -l | tr -d ' ')

COLOR=$RED

case "$COUNT" in
  [3-5][0-9]) COLOR=$RED
  ;;
  [1-2][0-9]) COLOR=$ACCENT_COLOR
  ;;
  [1-9]) COLOR=$ACCENT_COLOR
  ;;
  0) COLOR=$TRANSPARENT_WHITE
     COUNT=􀆅
  ;;
esac

sketchybar --set $NAME label="$COUNT updates" icon.color=$COLOR label.color=$COLOR
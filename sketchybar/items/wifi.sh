#!/bin/sh

wifi=(
    script="$PLUGIN_DIR/wifi.sh"
    icon=􀙇
    icon.font="$FONT:Bold:13.0"
    icon.padding_right=4
    icon.padding_left=4
    icon.y_offset=0
)

wifi_dot=(
  icon=􀀁
  icon.color=$TRANSPARENT_ACCENT
  icon.font="$FONT:Black:6.0"
  icon.padding_right=10
  icon.padding_left=10
  icon.y_offset=0
)

sketchybar --add item wifi right \
           --set wifi "${wifi[@]}" \
           --add item wificon right \
           --set wificon "${wifi_icon[@]}" \

sketchybar --add item wifi_dot right \
           --set wifi_dot "${wifi_dot[@]}"
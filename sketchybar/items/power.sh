#!/bin/bash

power_icon=(
  icon=􀆨
  icon.color=$ACCENT_COLOR
  icon.padding_left=2
  icon.padding_right=15
  icon.y_offset=0
  click_script="pmset displaysleepnow;"
)

power_dot=(
  icon=􀀁
  icon.color=$TRANSPARENT_ACCENT
  icon.font="$FONT:Black:6.0"
  icon.padding_right=10
  icon.padding_left=10
  icon.y_offset=0
)

sketchybar --add item power right       \
           --set power "${power_icon[@]}" \

sketchybar --add item power_dot right \
           --set power_dot "${power_dot[@]}"
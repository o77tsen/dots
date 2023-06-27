#!/bin/bash

volume_slider=(
  script="$PLUGIN_DIR/volume.sh"
  updates=on
  label.drawing=off
  icon.drawing=off
  slider.highlight_color=$BLUE
  slider.background.height=5
  slider.background.corner_radius=3
  slider.background.color=$TRANSPARENT_ACCENT
  slider.knob=􀀁
  slider.knob.drawing=off
  slider.knob.y_offset=-2
)

volume_icon=(
  click_script="$PLUGIN_DIR/volume_click.sh"
  padding_left=12
  icon.color=$ACCENT_COLOR
  icon=$VOLUME_100
  icon.width=0
  icon.align=left
  icon.color=$GREY
  icon.font="$FONT:Regular:13.0"
  icon.y_offset=0
  label.width=25
  label.align=left
  label.font="$FONT:Regular:13.0"
  label.y_offset=0
)

vol_dot=(
  icon=􀀁
  icon.color=$TRANSPARENT_ACCENT
  icon.font="$FONT:Black:6.0"
  icon.padding_right=2
  icon.padding_left=10
  icon.y_offset=0
)

sketchybar --add slider volume right            \
           --set volume "${volume_slider[@]}"   \
           --subscribe volume volume_change     \
                              mouse.clicked     \
                              mouse.entered     \
                              mouse.exited      \
                                                \
           --add item volume_icon right         \
           --set volume_icon "${volume_icon[@]}"

sketchybar --add item vol_dot right \
           --set vol_dot "${vol_dot[@]}"
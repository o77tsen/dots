#!/bin/bash

brew=(
  icon=􀐛
  icon.color=$TRANSPARENT_WHITE
  icon.padding_left=15
  icon.padding_right=10
  icon.y_offset=0
  label="? updates"
  label.color=$TRANSPARENT_WHITE
  label.font="Fira Code:Medium:13.0"
  label.y_offset=0
  padding_right=4
  script="$PLUGIN_DIR/brew.sh"
)

right_bracket=(
  background.color=$PRIMARY_1
  background.corner_radius=6
  background.border_width=2
  background.border_color=$PRIMARY_1
  background.height=28
  background.y_offset=2
)

sketchybar --add event brew_update \
           --add item brew right   \
           --set brew "${brew[@]}" \
           --subscribe brew brew_update

sketchybar --add bracket right_bracket volume battery github.bell mail time power brew \
           --set right_bracket "${right_bracket[@]}"
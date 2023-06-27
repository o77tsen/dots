#!/usr/bin/env bash

source "$CONFIG_DIR/colors.sh"

args=()
if [ "$NAME" != "space_template" ]; then
  args+=(--set $NAME label=$NAME \
                     icon= \
                     icon.font="Hack Nerd Font:Regular:14.5" \
                     icon.color=$TRANSPARENT_WHITE
                     icon.y_offset=0
                     )
fi

if [ "$SELECTED" = "true" ]; then
  args+=(--set spaces_$DID.label label=${NAME#"spaces_$DID"})
  args+=(--set $NAME icon=  icon.color=$ACCENT_COLOR icon.font="Hack Nerd Font:Regular:13.0" icon.y_offset=0)
else
  args+=(--set $NAME)
fi

sketchybar -m --animate tanh 20 "${args[@]}"
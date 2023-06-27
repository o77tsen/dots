#!/usr/bin/env sh

sketchybar --add item mail right                   \
           --set mail update_freq=120              \
                      script="$PLUGIN_DIR/mail.sh" \
                      background.padding_left=5    \
                      icon.font="$FONT:Bold:12.0"  \
                      icon=$MAIL                   \
                      icon.y_offset=0              \
                      label=0                      \
                      label.padding_left=6         \
                      label.padding_right=6        \
                      label.y_offset=0
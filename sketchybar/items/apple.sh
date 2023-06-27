#!/bin/sh

POPUP_OFF="sketchybar --set apple.logo popup.drawing=off"
POPUP_CLICK_SCRIPT="sketchybar --set \$NAME popup.drawing=toggle"

apple_dot=(
  icon=􀀁
  icon.color=$TRANSPARENT_ACCENT
  icon.font="$FONT:Black:6.0"
  icon.padding_right=10
  icon.y_offset=0
)

sketchybar --add item           apple.logo left                             \
           --set apple.logo     icon=$APPLE                                 \
                                icon.font="$FONT:Black:15.0"                \
                                icon.color=$BLUE                            \
                                icon.y_offset=0                             \
                                icon.padding_left=6                         \
                                icon.y_offset=0                             \
                                padding_right=15                            \
                                padding_left=4                              \
                                label.drawing=off                           \
                                click_script="$POPUP_CLICK_SCRIPT"          \
                                                                            \
           --add item           apple.prefs popup.apple.logo                \
           --set apple.prefs    icon=$PREFERENCES                           \
                                icon.font="$FONT:Regular:12.0"              \
                                icon.padding_right=20                       \
                                icon.padding_left=10                        \
                                label="Settings"                            \
                                label.font="Hack Nerd Font:Bold:12.0"       \
                                click_script="open -a 'System Preferences';
                                              $POPUP_OFF"                   \
                                                                            \
           --add item           apple.activity popup.apple.logo             \
           --set apple.activity icon=$ACTIVITY                              \
                                icon.font="$FONT:Regular:12.0"              \
                                icon.padding_right=20                       \
                                icon.padding_left=10                        \
                                label="Activity"                            \
                                label.font="Hack Nerd Font:Bold:12.0"       \
                                click_script="open -a 'Activity Monitor';
                                              $POPUP_OFF"                   \
                                                                            \
           --add item           apple.lock popup.apple.logo                 \
           --set apple.lock     icon=$LOCK                                  \
                                icon.font="$FONT:Regular:12.0"              \
                                icon.padding_right=20                       \
                                icon.padding_left=10                        \
                                label="Lock Screen"                         \
                                label.font="Hack Nerd Font:Bold:12.0"       \
                                label.padding_right=20                      \
                                click_script="pmset displaysleepnow;
                                              $POPUP_OFF"


sketchybar --add item apple_dot left \
           --set apple_dot "${apple_dot[@]}"
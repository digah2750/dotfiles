#!/usr/bin/env bash

# make sure it's executable with:
# chmod +x ~/.config/sketchybar/plugins/aerospace.sh

if [ "$1" = "$FOCUSED_WORKSPACE" ]; then
  sketchybar --set $NAME background.drawing=on
  sketchybar --set $NAME label.color=0xfff2f2f2
else
  sketchybar --set $NAME background.drawing=off
  sketchybar --set $NAME label.color=0xff70dbc1
fi

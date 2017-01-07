#!/bin/bash
export WALLPAPER=source/epor4k.jpg # TODO: use a loop
if [ "$(uname)" == "Darwin" ]; then
  osascript -e "tell application \"Finder\" to set desktop picture to POSIX file \"$WALLPAPER\""
fi
if [ "$(which gnome-session)" ]; then
  gsettings set org.gnome.desktop.background picture-uri "file://$PWD/$WALLPAPER"
fi

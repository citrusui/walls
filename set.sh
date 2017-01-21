#!/bin/bash
arr[0]="epor4k.jpg"
arr[1]="Lakeside_Sunrise_3840x2160.jpg"
rand=$[ $RANDOM % 2 ]
export WALLPAPER=source/${arr[$rand]}
if [ "$(uname)" == "Darwin" ]; then
  osascript -e "tell application \"Finder\" to set desktop picture to POSIX file \"$WALLPAPER\""
fi
if [ "$(which gnome-session)" ]; then
  gsettings set org.gnome.desktop.background picture-uri "file://$PWD/$WALLPAPER"
fi

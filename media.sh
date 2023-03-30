#!/bin/sh

choices="kodi\nmusic\ncalibre"

chosen=$(echo -e "$choices" | rofi -dmenu -i -p "Media")

if [ $chosen = "kodi" ]; then
	kodi
elif [ $chosen = "music" ]; then
	wezterm start --always-new-process "ncmpcpp"
elif [ $chosen = "calibre" ]; then
	calibre
else
	exit 0
fi

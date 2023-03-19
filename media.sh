#!/bin/sh

choices="kodi\nmusic\ncalibre"

chosen=$(echo -e "$choices" | dmenu -i -p "Media")

if [ $chosen = "kodi" ]; then
	kodi
elif [ $chosen = "music" ]; then
	alacritty -e "ncmpcpp"
elif [ $chosen = "calibre" ]; then
	calibre
else
	exit 0
fi

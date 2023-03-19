#!/bin/sh

choices="steam\nretroarch\nminecraft\n0ad"

chosen=$(echo -e "$choices" | dmenu -i -p "Games")

if [ "$chosen" = "steam" ]; then
	steam
elif [ "$chosen" = "retroarch" ]; then
	retroarch
elif [ "$chosen" = "minecraft" ]; then
	minecraft-launcher
elif [ "$chosen" = "0ad" ]; then
	0ad
else
	exit 0
fi

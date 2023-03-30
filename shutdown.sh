#!/bin/sh

choices="poweroff\nreboot\nlog_out\nsuspend\nsleep"
chosen=$(echo -e "$choices" | rofi -dmenu -i -p "Execute:")

if [ $chosen = "poweroff" ]; then
	poweroff
elif [ $chosen = "reboot" ]; then
	reboot
elif [ $chosen = "log_out" ]; then
	awesome-client 'awesome.quit()'
elif [ $chosen = "suspend" ]; then
	systemctl suspend
elif [ $chosen = "sleep" ]; then
	systemctl hybrid-sleep
else
	exit 0
fi


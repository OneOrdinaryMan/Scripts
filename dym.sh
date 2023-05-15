#!/bin/sh
search_term=$(cat /dev/null | rofi -dmenu)
dict=$(dym -c "$search_term" | rofi -dmenu)
echo $dict | xclip -selection clipboard 

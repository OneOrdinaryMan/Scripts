ffmpeg -i "$1" -map 0 -c:a copy -c:v libx265 -c:s copy -c:s:t copy -b:v 2259k -s 1920x1080 -metadata title="$4" "$2 - $3 - $4.mkv"

artist="$(pwd)"
artist="${artist/#*\/}"
echo $artist

mkdir "$artist"

for i in *
do
	if [ "$i" == "$artist" ] ; then
		continue;
	fi
	mkdir "$artist/$i"
	cd "$i"
	pwd
	for j in *.flac
	do
		ffmpeg -i "$j" -ab 320k -map_metadata 0 -id3v2_version 3 -vsync vfr "../$artist/$i/${j/flac/mp3}"
	done
	cp cover.jpg "../$artist/$i"
	cd ..
done

mv "$artist" "../mp3 Version" 

metaflac --import-tags-from=tags.txt *.flac

for i in *.flac
do
	printf "\n"
	trk_no=${i:0:2}
	echo $trk_no

	trk_name=${i/#* - }
	trk_name=${trk_name/%\.flac}
	echo $trk_name

	if [ $trk_no -le "15" ]; then
		dsc_no='1'
	#elif [ $trk_no -lt "18" ]; then
	#	dsc_no='2'
	#elif [ $trk_no -lt "25" ]; then
	#	dsc_no='3'
	else
		dsc_no='2'
	fi
	echo $dsc_no

	metaflac --set-tag="TITLE=$trk_name" --set-tag="TRACKNUMBER=$trk_no" --set-tag="DISCNUMBER=$dsc_no" "$i"
done

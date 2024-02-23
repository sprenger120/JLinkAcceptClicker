#!/bin/bash

for (( ; ; ))
do
	WID=$(xdotool search --sync --name "J-Link\sV\w\.?\w{1,4}\s\-\sTerms\sof\suse")
	# echo found $WID
	if [ -n "$WID" ]; then
		if xdotool windowfocus --sync $WID; then
			xdotool key --window $WID "alt+a"
			xdotool keyup	 "alt+a"	# Sometimes remains pressed when some error occurs
		fi
	fi
done

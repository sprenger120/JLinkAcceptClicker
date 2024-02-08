#!/bin/bash

for (( ; ; ))
do
	WID=$(xdotool search --sync --name "J-Link\sV\w\.?\w{1,4}\s\-\sTerms\sof\suse")
	#echo $WID
	if [ -n "$WID" ]; then
		xdotool windowfocus $WID
		xdotool key --window $WID "alt+a"
		echo "found"
		sleep 0.5
	fi
done

#!/bin/bash

for (( ; ; ))
do
	WID=$(xdotool search --name "J-Link\sV\w\.?\w{1,4}\s\-\sTerms\sof\suse")
	#echo $WID
	if [ -n "$WID" ]; then
		sleep 0.5
		xdotool windowfocus $WID
		xdotool key --window $WID "alt+a"
		echo "found"
		sleep 0.5
	fi
	sleep 0.1
done

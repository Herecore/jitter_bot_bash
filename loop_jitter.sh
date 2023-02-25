#!/usr/bin/sh

# Default values
DISTANCE=4

# Config values
. ./jitter.conf

while true; do
	# Go down
	i=1
	while [ $i -le $DISTANCE ]; do
		ydotool mousemove -x 0 -y 5
		((i++))
	done

	# Go right
	i=1
	while [ $i -le $DISTANCE ]; do
		ydotool mousemove -x 5 -y 0
		((i++))
		sleep 0
	done

	# Go up
	i=1
	while [ $i -le $DISTANCE ]; do
		ydotool mousemove -x 0 -y -5
		((i++))
	done

	# Go left
	i=1
	while [ $i -le $DISTANCE ]; do
		ydotool mousemove -x -5 -y 0
		((i++))
		sleep 0
	done
done

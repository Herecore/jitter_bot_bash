#!/usr/bin/sh

# Default values
DISTANCE=10
SLEEPTIME=0.000002

# Config values
. ./jitter.conf

while true; do
	# Go down
	i=1
	while [ $i -le $DISTANCE ]; do
		ydotool mousemove -x 0 -y 1
		((i++))
		sleep $SLEEPTIME
	done

	# Go right
	i=1
	while [ $i -le $DISTANCE ]; do
		ydotool mousemove -x 1 -y 0
		((i++))
		sleep $SLEEPTIME
	done

	# Go up
	i=1
	while [ $i -le $DISTANCE ]; do
		ydotool mousemove -x 0 -y -1
		((i++))
		sleep $SLEEPTIME
	done

	# Go left
	i=1
	while [ $i -le $DISTANCE ]; do
		ydotool mousemove -x -1 -y 0
		((i++))
		sleep $SLEEPTIME
	done
done

#!/bin/sh

monitor=$(xrandr | grep " connected " | awk '{print $1}')

for i in $monitor
do
	xrandr --output "$i" --brightness "$(cat /var/custom/brightness | awk '{print "scale=2;" $0 "/ 100"}' | bc)"
done

#!/bin/sh

b_lvl=$(cat /var/custom/brightness)

monitor=$(xrandr | grep " connected " | awk '{print $1}')

if [ $1 = "+" ] && [ $b_lvl -le 90 ]; then
	n_b_lvl=$((b_lvl + 10))
elif [ $1 = "+" ] && [ $b_lvl -gt 90 ]; then
	n_b_lvl=100
elif [ $1 = "-" ] && [ $b_lvl -ge 20 ]; then
	n_b_lvl=$((b_lvl - 10)) 
elif [ $1 = "-" ] && [ $b_lvl -lt 20 ]; then
	n_b_lvl=10
fi

b_val=$(echo "scale=2;$n_b_lvl/100" | bc)

for i in $monitor
do
	xrandr --output "$i" --brightness "$b_val"
done

echo "$n_b_lvl" > /var/custom/brightness
dunstify --urgency=LOW -h string:x-dunst-stack-tag:brightness "Brightness:" -h int:value:$n_b_lvl

#!/bin/bash

while true
do
	battery_percent=$(upower -i `upower -e | grep 'BAT'` | grep -E 'percentage' | grep -P -o '[0-9]+(?=%)')
	if on_ac_power
	then
		if (($battery_percent >= 95))
		then
			notify-send -i "$PWD/full-battery.png" "Battery full." "Level: ${battery_percent}%"
			paplay $PWD/complete.oga
		fi
	fi
	sleep 5m
done

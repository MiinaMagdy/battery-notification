#!/bin/bash

while true
do
	currentPath="/usr/bin/battery-notification"
	battery_percent=$(upower -i `upower -e | grep 'BAT'` | grep -E 'percentage' | grep -P -o '[0-9]+(?=%)')
	if on_ac_power
	then
		if (($battery_percent >= 95))
		then
			notify-send -i "$currentPath/full-battery.png" "Battery full." "Level: ${battery_percent}%"
			paplay $currentPath/complete.oga
		fi
	fi
	sleep 300s
done

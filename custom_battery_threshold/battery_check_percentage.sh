#!/bin/bash

battery_level=`upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep -E percentag | grep -P -o '[0-9]+(?=%)'`;

battery_status=`cat /sys/class/power_supply/BAT0/status`;

hyprland_active=`ps aux | grep hyprland | wc -l`;

if [ $battery_level -le 25 ] && [ $battery_status == "Discharging" ] && [ $hyprland_active -eq 1 ]
then
	DISPLAY=:0 DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/bus notify-send -u critical "Plug the charger" "Low level battery\nBattery level:\t$battery_level%" -a "Battery Pop-Up" -i /usr/share/icons/BeautyLine/devices/scalable/xfpm-battery-000.svg;
fi

if [ $battery_level -gt 82 ]  && [ $battery_status == "Charging" ]
then
	DISPLAY=:0 DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/bus notify-send -u critical "Unplug the charger" "Battery fully charge\nBattery level:\t$battery_level%" -a "Battery Pop-Up" -i /usr/share/icons/BeautyLine/apps/scalable/battery.svg;
fi
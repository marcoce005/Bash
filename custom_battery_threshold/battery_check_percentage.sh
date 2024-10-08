#!/bin/bash

# script for bash shell and KDE desktop enviroment [tested on Garuda linux]

battery_level=`acpi -b | grep -P -o '[0-9]+(?=%)'`;

battery_status=`acpi -b | grep -P -o '[A-Za-z]+(?=,)'`;

if [ $battery_level -gt 82 ] && [ $battery_status == "Charging" ]
then
	DISPLAY=:0 DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/bus notify-send "Unplug the charger" "Battery fully charge\nBattery level:\t$battery_level%" -a "Battery Pop-Up" -i battery
fi

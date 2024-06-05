#!/bin/zsh
output=$(powerprofilesctl get)

if [ $output = "power-saver" ]
then
	echo "Switched to balanced"
	powerprofilesctl set balanced
elif [ $output = "performance" ]
then
	echo "Switched to power-saver"
	powerprofilesctl set power-saver
else
	echo "Switched to performance"
	powerprofilesctl set performance
fi

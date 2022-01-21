#!/bin/sh
location="$HOME/Pictures/Screenshots/"
filename="$(date +%F\ %T).png"
geometry="$(slurp)"
fullpath="$location$filename"
mkdir -p "$location"
if [ ! "$geometry" ]; then
    sleep 1
    grim -c "$fullpath"
else
    grim -g "$geometry" "$fullpath"
fi
notify-send "Screenshot saved to '$fullpath'"

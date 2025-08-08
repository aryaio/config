#!/bin/sh

v=$(pactl get-sink-volume @DEFAULT_SINK@ | grep -o "[0-9]\+%" | head -1 | tr -d "%")

if [ "$v" -lt 100 ]; then
    pactl set-sink-volume @DEFAULT_SINK@ +1%
fi

v=$(pactl get-sink-volume @DEFAULT_SINK@ | grep -o "[0-9]\+%" | head -1)

dunstify -r 91190 -t 1000 -i audio-volume-high "Volume: $v"


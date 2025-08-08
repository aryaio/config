#!/bin/bash
export XDG_RUNTIME_DIR=/run/user/$(id -u)

# Toggle mute
pactl set-sink-mute @DEFAULT_SINK@ toggle

# Check if muted
mute=$(pactl get-sink-mute @DEFAULT_SINK@ | awk '{print $2}')

if [ "$mute" = "yes" ]; then
  dunstify -r 91190 -t 1000 -i audio-volume-muted "Muted"
else
  # Get volume percentage
  vol=$(pactl get-sink-volume @DEFAULT_SINK@ | grep -oP '\d+%' | head -1)
  dunstify -r 91190 -t 1000 -i audio-volume-high "Volume: $vol"
fi


#!/bin/bash

# Get the current volume
current_volume=$(pactl list sinks | awk '/^\s*Volume:/{print $5; exit}' | tr -d '%')

# Calculate the new volume, ensuring it doesn't exceed 125%
new_volume=$((current_volume + 5))
if [ $new_volume -lt 125 ]; then
    # Set the new volume
    pactl set-sink-volume @DEFAULT_SINK@ +5%:
fi


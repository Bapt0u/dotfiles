#!/bin/bash

# Get the internal monitor name (usually eDP-1 or eDP1)
INTERNAL_MONITOR=$(xrandr --query | grep "connected" | grep "eDP" | cut -d" " -f1)
# Get the first connected external monitor
EXTERNAL_MONITOR=$(xrandr --query | grep " connected" | grep -v "eDP" | head -n 1 | cut -d" " -f1)

if [ -n "$EXTERNAL_MONITOR" ]; then
    # Enable external monitor to the left of the internal one
    xrandr --output "$INTERNAL_MONITOR" --auto --primary --output "$EXTERNAL_MONITOR" --auto --left-of "$INTERNAL_MONITOR"
else
    # Only internal monitor
    xrandr --output "$INTERNAL_MONITOR" --auto --primary
fi

#!/bin/bash

# Create screenshot folder if it doesn't exist
mkdir -p ~/Pictures/Screenshots

# Set file name
FILE=~/Pictures/Screenshots/screenshot_$(date +%Y-%m-%d_%H-%M-%S).png

# Take screenshot
grim -g "$(slurp)" "$FILE"

# Copy to clipboard
wl-copy < "$FILE"

# Optional: Show notification (requires libnotify or dunst)
notify-send "📸 Screenshot taken" "$FILE"

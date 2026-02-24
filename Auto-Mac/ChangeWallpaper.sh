#!/bin/bash

# Get current day name
DAY=$(date +"%A")

# Path to wallpaper folder
WALLPAPER_PATH="$HOME/Desktop/DailyWallpapers/$DAY.jpg"

# Change wallpaper
osascript -e "tell application \"System Events\" to tell every desktop to set picture to \"$WALLPAPER_PATH\""
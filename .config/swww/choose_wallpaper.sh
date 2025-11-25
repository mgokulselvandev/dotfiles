#!/bin/bash

# Folder with wallpapers
WALLPAPER_DIR="$HOME/Wallpapers"

# Use rofi to select a wallpaper
WALLPAPER=$(ls "$WALLPAPER_DIR" | rofi -dmenu -p "Select Wallpaper:")

rm -f ~/.config/rofi/wallpaperPath.rasi
touch ~/.config/rofi/wallpaperPath.rasi
printf "*{ \n		wallpaperPath:url( \"$WALLPAPER_DIR/$WALLPAPER\" ,height);\n} " > ~/.config/rofi/wallpaperPath.rasi
chmod 444 ~/.config/rofi/wallpaperPath.rasi

# Set the wallpaper using swww
[ -n "$WALLPAPER" ]&& swww img -t random "$WALLPAPER_DIR/$WALLPAPER" 


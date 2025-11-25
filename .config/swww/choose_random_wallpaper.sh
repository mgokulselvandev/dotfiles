#!/bin/bash

# Folder with wallpapers
WALLPAPER_DIR="$HOME/Wallpapers"

WALLPAPER=$(ls "$WALLPAPER_DIR" | shuf -n1)

rm -f ~/.config/rofi/wallpaperPath.rasi
touch ~/.config/rofi/wallpaperPath.rasi
printf "*{ \n		wallpaperPath:url( \"$WALLPAPER_DIR/$WALLPAPER\" ,height);\n} " > ~/.config/rofi/wallpaperPath.rasi
chmod 444 ~/.config/rofi/wallpaperPath.rasi

[ -n "$WALLPAPER" ] && swww img -t random "$WALLPAPER_DIR/$WALLPAPER" 

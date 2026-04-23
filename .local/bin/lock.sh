#!/bin/bash
grim /tmp/lockscreen.png
magick /tmp/lockscreen.png -blur 0x8 /tmp/lockscreen_blur.png
gtklock -b /tmp/lockscreen_blur.png -s ~/.config/gtklock/style.css
rm -f /tmp/lockscreen.png /tmp/lockscreen_blur.png
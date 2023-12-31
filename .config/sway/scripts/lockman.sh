#!/bin/sh
# Times the screen off and puts it to background
swayidle \
    timeout  300 'swaymsg "output * power off"' \
    resume 'swaymsg "output * power on"' &
# Locks the screen immediately
swaylock --screenshots --clock --indicator-idle-visible --effect-blur 8x2 --effect-pixelate 10 --grace 3
# Kills last background task so idle timer doesn't keep running
kill %%

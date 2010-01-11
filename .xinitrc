#!/bin/sh
#
# ~/.xinitrc

unclutter &

xset -b
xrdb -merge ~/.Xresources
setxkbmap -model pc105 -layout "us,ru(winkeys)" -option "grp:caps_toggle,grp_led:caps"

xsetroot -cursor_name left_ptr
exec ck-launch-session xmonad


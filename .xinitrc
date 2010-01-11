#!/bin/sh
#
# ~/.xinitrc

unclutter &

setxkbmap -model pc105 -layout "us,ru(winkeys)" -option "grp:caps_toggle,grp_led:caps"
xset -b
xrdb -merge ~/.Xresources

xsetroot -cursor_name left_ptr
exec ck-launch-session xmonad


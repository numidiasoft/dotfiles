#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

xmobar &
xsetroot -cursor_name left_ptr
exec ck-launch-session xmonad > ~/.xmonad/pipe


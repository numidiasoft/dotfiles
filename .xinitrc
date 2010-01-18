#!/bin/sh
#
# ~/.xinitrc

xset -b
xrdb -merge ~/.Xresources
setxkbmap -model pc105 -layout "us,ru(winkeys)" -option "grp:caps_toggle,grp_led:caps"

xmodmap -e 'remove Lock = Caps_Lock'
xmodmap -e 'keysym Caps_Lock = Control_L'
xmodmap -e 'add Control = Control_L'

tmux new-session -d -s default vifm
tmux new-window -t default:1
tmux select-window -t default:1
urxvt -e tmux -2 attach-session -t default &

gvim &
firefox &
unclutter &

xsetroot -cursor_name left_ptr
exec ck-launch-session xmonad

#!/bin/sh

setxkbmap -option caps:escape
xmodmap -e 'clear Lock'
xmodmap -e 'keycode 0x42 = Control_L'

synclient TouchpadOff=1

firefox-sync&

wicd-client --tray&
bin/autolocker 840& #15 min
bin/autosuspend 2700& #45 min
unclutter&
yeahconsole&
dropboxd&

wmname LG3D
exec awesome

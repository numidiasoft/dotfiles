#!/bin/sh

setxkbmap -option caps:escape
xmodmap -e 'clear Lock'
xmodmap -e 'keycode 0x42 = Control_L'

synclient TouchpadOff=1

wicd-client --tray&
bin/autolocker 420& #7 min
bin/autosuspend 1800& #30 min
unclutter&
yeahconsole&
dropboxd&
skype&

wmname LG3D
exec awesome

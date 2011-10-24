#!/bin/sh

setxkbmap -option caps:escape
xmodmap -e 'clear Lock'
xmodmap -e 'keycode 0x42 = Control_L'

firefox&
yeahconsole&
dropboxd&
skype&

wmname LG3D
exec awesome

#!/bin/sh

setxkbmap -option caps:escape
xmodmap -e 'clear Lock'
xmodmap -e 'keycode 0x42 = Control_L'

yeahconsole&
dropboxd&

wmname LG3D
exec awesome

#!/bin/sh

setxkbmap -option caps:escape

firefox&
yeahconsole&
dropboxd&
skype&

wmname LG3D
exec awesome

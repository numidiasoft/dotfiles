#!/bin/sh
setxkbmap -option caps:escape
firefox&
yeahconsole&
dropboxd&
skype&
exec awesome

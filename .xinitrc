#!/bin/sh
firefox &
yeahconsole &
exec ck-launch-session dbus-launch awesome

#!/bin/sh
firefox&
yeahconsole&
dropboxd&
exec ck-launch-session dbus-launch awesome

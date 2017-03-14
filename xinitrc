#!/bin/sh

# Start a D-Bus session
# source /etc/X11/xinit/xinitrc.d/30-dbus
# eval $(dbus-launch --sh-syntax)
eval $(dbus-launch --sh-syntax --exit-with-session)
# /usr/bin/start-pulseaudio-x11
# start i3wm
# exec i3 -V >> ~/.i3/logfile 2>&1
exec i3

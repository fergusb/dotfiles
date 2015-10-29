#!/bin/sh

# init stuff
eval $(ssh-agent)
eval $(gpg-agent --daemon)
if which dbus-launch >/dev/null && test -z "$DBUS_SESSION_BUS_ADDRESS"; then
  eval `dbus-launch --sh-syntax --exit-with-session`
fi

# source X settings
xrdb -merge ~/.Xresources

# start i3wm
exec i3

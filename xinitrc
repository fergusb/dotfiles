#!/bin/sh

# source X settings
xrdb -merge ~/.Xresources

# start i3wm
exec i3

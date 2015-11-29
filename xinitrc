#!/bin/sh

## ~/.xinitrc
#
## Executed by startx (run your window manager from here)
# if [ -d /etc/X11/xinit/xinitrc.d ]; then
  # for f in /etc/X11/xinit/xinitrc.d/*; do
    # [ -x "$f" ] && . "$f"
  # done
  # unset f
# fi

# source X settings
xrdb -merge ~/.Xresources

# run local xhost
xhost local:root

# run Xmodmap
# [ -f ~/.Xmodmap ] && xmodmap ~/.Xmodmap

# start ssh-agent & gpg-agent
eval $(ssh-agent)
eval $(gpg-agent --daemon)

# start i3wm
# exec i3 -V >> ~/.i3/logfile 2>&1
exec i3

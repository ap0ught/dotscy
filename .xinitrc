#!/bin/sh

# Needed for crappily configured xdms which keep an xconsole open.
# (I'm looking at you, Gentoo!)
which killall >/dev/null 2>&1 && killall xconsole

# More recent X servers don't terminate on C-A-Backspace anymore.
# This enables it again.
setxkbmap -option terminate:ctrl_alt_bksp

# Load my favorite keyboard layout.
xmodmap "$HOME/res/neo_de.xmodmap"

# Configure external monitors.
"$HOME/bin/autovga.sh"

# If available, load private configuration data.
[ -e "$HOME/.sh/private" ] && . "$HOME/.sh/private"

# Start the right window manager etc. depending on the host.
case "$(hostname)" in
	*)
		WM='i3'
		;;
esac
exec "$WM" >/dev/null

#!/bin/bash
# gives info on which local config files are different from repo version

cd `dirname $0`

# diff two files and print info
function mydiff () {
	diff $1 $2 >/dev/null 2>/dev/null
	status=$?
	if [ "$status" = 0 ]; then echo "$1 matches $2"
	elif [ "$status" = 1 ]; then echo "$1 differs from $2"
	else echo "No local copy of $1 found at $2"; fi
}

# diff config files
mydiff vimrc ~/.vimrc
mydiff zshrc ~/.zshrc
mydiff xinitrc ~/.xinitrc
mydiff pentadactylrc ~/.pentadactylrc
mydiff xorg.conf.desktop /etc/X11/xorg.conf
mydiff ncmpcpp.config ~/.ncmpcpp/config
mydiff ssh.config ~/.ssh/config
mydiff xmonad.hs ~/.xmonad/xmonad.hs

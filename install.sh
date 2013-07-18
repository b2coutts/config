#!/bin/bash
# copies the config files in this directory to their appropriate locations

if [ "$1" = "--help" ]; then
	echo "Usage: $0 [ -f ]

The -f option will cause this script to not prompt you before each overwrite"
	exit
fi

cd `dirname $0`

opt="-i"
[ "$1" = "-f" ] && opt=""

# copy config files to homedir
cp $opt vimrc ~/.vimrc
cp $opt zshrc ~/.zshrc
cp $opt xinitrc ~/.xinitrc
cp $opt pentadactylrc ~/.pentadactylrc
echo "Overwrite /etc/X11/xorg.conf? (needs sudo) [yn]"
read
if [ "$REPLY" = "y" ]; then
	echo "Asking for sudo to write /etc/X11/xorg.conf:"
	sudo cp $opt xorg.conf.desktop /etc/X11/xorg.conf
fi

# create directories as needed
mkdir -p ~/.ncmpcpp && cp $opt ncmpcpp.config ~/.ncmpcpp/config
mkdir -p ~/.ssh && cp $opt ssh.config ~/.ssh/config
mkdir -p ~/.xmonad && cp $opt xmonad.hs ~/.xmonad/xmonad.hs

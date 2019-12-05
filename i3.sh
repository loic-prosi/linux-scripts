#!/bin/bash

# Install i3
apt install xorg i3

# Start i3
startx

# Change the default keyboard layout in french
setxkbmap fr
rm .config/i3/config
i3-config-wizard

# Make i3 start each time the user log in
cat >> greetings.txt <<EOL
#Startx Automatically
if [[ -z "$DISPLAY" ]] && [[ $(tty) = /dev/tty1 ]]; then
 . startx
 logout
fi
EOL

reboot

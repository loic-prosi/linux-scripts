#!/bin/bash

# Install i3
apt install xorg i3

# Change the default keyboard layout in french
setxkbmap fr
rm .config/i3/config
i3-config-wizard

# Make i3 start each time the user log in
echo "" >> .profile
echo "#Startx Automatically" >> .profile
echo "if [[ -z "$DISPLAY" ]] && [[ $(tty) = /dev/tty1 ]]; then" >> .profile
echo " . startx" >> .profile
echo " logout" >> .profile
echo "fi" >> .profile

reboot

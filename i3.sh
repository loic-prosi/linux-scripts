#!/bin/bash

# Install i3
apt install xorg i3

# Make i3 start each time the user log in
echo "startx" >> .profile

reboot

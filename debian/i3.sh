#!/bin/bash

# Install i3
sudo apt install xorg i3 i3lock-fancy

# Make i3 start each time the user log in
echo "startx" >> $HOME/.profile

sudo reboot

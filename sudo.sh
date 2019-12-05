#!/bin/bash

# Install sudo and add one user in the sudo group
# Launch this script in root with this command: ./sudo.sh username

USER=$1

apt install sudo
usermod -aG sudo $USER
reboot

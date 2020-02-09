#!/bin/bash

# Virtualbox "Guest Additions" installation for Debian
# Launch this script with: ./vb_guests_additions.sh 6.0.14 /media/cdrom

VERSION_VIRTUALBOX=$1
MOUNT_PATH=$2

sudo apt install linux-headers-`uname -r`
wget download.virtualbox.org/virtualbox/$VERSION_VIRTUALBOX/VBoxGuestAdditions_$VERSION_VIRTUALBOX.iso
sudo mount VBoxGuestAdditions_$VERSION_VIRTUALBOX.iso $MOUNT_PATH
sudo $MOUNT_PATH/VBoxLinuxAdditions.run
rm VBoxGuestAdditions_$VERSION_VIRTUALBOX.iso
sudo reboot

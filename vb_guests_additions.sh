#!/bin/bash

# Virtualbox "Guest Additions" installation for Debian
# Launch the script in root with this command: ./vb_guests_additions.sh 6.0.14 /media/cdrom

VERSION_VIRTUALBOX=$1
MOUNT_PATH=$2

wget download.virtualbox.org/virtualbox/$VERSION_VIRTUALBOX/VBoxGuestAdditions_$VERSION_VIRTUALBOX.iso
mount VBoxGuestAdditions_$VERSION_VIRTUALBOX.iso $MOUNT_PATH
$MOUNT_PATH/VBoxLinuxAdditions.run
rm VBoxGuestAdditions_$VERSION_VIRTUALBOX.iso
reboot

#!/bin/bash

sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#Changing the shell with chsh command
#Enter root password then type /bin/bash

#Changing the default shell to zsh can cause the auto starting commands in the .profile file not working anymore
#To make it work again create a .zprofile file and move the commands in it


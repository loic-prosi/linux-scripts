#!/bin/bash

# Add Visual Studio Code repository to sources.list then install it

curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
install -o root -g root -m 644 packages.microsoft.gpg /usr/share/keyrings/
sh -c 'echo "deb [arch=amd64 signed-by=/usr/share/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
apt-get update
apt-get install code

# Install extensions

code --install-extension --force Compulim.vscode-clock file-icons.file-icons whtouche.vscode-js-console-utils dbaeumer.vscode-eslint esbenp.prettier-vscode fabiospampinato.vscode-monokai-night
humao.rest-client msjsdiag.debugger-for-chrome ms-vsliveshare.vsliveshare-pack


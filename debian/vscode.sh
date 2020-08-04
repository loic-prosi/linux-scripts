#!/bin/bash

# Add Visual Studio Code repository to sources.list then install it
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /usr/share/keyrings/
sudo sh -c 'echo "deb [arch=amd64 signed-by=/usr/share/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt-get update
sudo apt-get install code

# Install extensions
code --install-extension Compulim.vscode-clock
code --install-extension file-icons.file-icons
code --install-extension fabiospampinato.vscode-monokai-night
code --install-extension whtouche.vscode-js-console-utils
code --install-extension dbaeumer.vscode-eslint
code --install-extension esbenp.prettier-vscode
code --install-extension humao.rest-client
code --install-extension msjsdiag.debugger-for-chrome
code --install-extension ms-vsliveshare.vsliveshare-pack
code --install-extension jock.svg
code --install-extension cssho.vscode-svgviewer

# Launch Visual Studio Code
code

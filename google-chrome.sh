#!/bin/bash

# Add Google Chrome repository to sources.list then install it

wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo apt update
sudo apt install google-chrome-stable

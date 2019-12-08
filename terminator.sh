#!/bin/bash

# Install terminator and add custom config file to /.config/terminator/config

sudo apt install terminator
cp $HOME/linux-scripts/config-files/terminator $HOME/.config/terminator/config

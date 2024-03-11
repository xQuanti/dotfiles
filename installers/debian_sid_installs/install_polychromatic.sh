#!/bin/bash

echo "deb [signed-by=/usr/share/keyrings/polychromatic.gpg] http://ppa.launchpad.net/polychromatic/stable/ubuntu focal main" | sudo tee /etc/apt/sources.list.d/polychromatic.list
curl -fsSL 'https://keyserver.ubuntu.com/pks/lookup?op=get&search=0xc0d54c34d00160459588000e96b9cd7c22e2c8c5' | sudo gpg --dearmour -o /usr/share/keyrings/polychromatic.gpg
sudo apt-get update

# Full installation
sudo apt install polychromatic


sudo apt install openrazer-meta

# Or, selectively install components
sudo apt install polychromatic-controller polychromatic-tray-applet polychromatic-cli

#!/bin/bash
sudo apt install papirus-icon-theme -y
#Set icon theme after install
xfconf-query -c xsettings -p /Net/IconThemeName -s Papirus-Dark

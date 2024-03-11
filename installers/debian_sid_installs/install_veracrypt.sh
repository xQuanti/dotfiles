#!/bin/sh
cd $HOME
wget -q --show-progress -O veracrypt.deb https://launchpadlibrarian.net/674243941/veracrypt-1.25.9-Debian-12-amd64.deb
sudo dpkg -i veracrypt.deb

#Fix broken install
#dpkg: error processing package portmaster (--install): dependency problems
sudo apt-get install -f -y

rm veracrypt.deb

#!/bin/bash
cd $HOME
wget -q --show-progress -O portmaster.deb https://updates.safing.io/latest/linux_amd64/packages/portmaster-installer.deb
sudo dpkg -i portmaster.deb
rm portmaster.deb

#Fix broken install
#dpkg: error processing package portmaster (--install): dependency problems
sudo apt-get install -f -y

#Fix Module Core error
sudo apt install iptables -y

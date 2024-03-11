#!/bin/bash
sudo apt install zram-tools -y
#To allow up to 60% of the RAM to be used as a zstd compressed swap space:
#echo -e "ALGO=zstd\nPERCENT=60" | sudo tee -a /etc/default/zramswap
#sudo service zramswap reload

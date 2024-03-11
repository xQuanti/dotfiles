#!/bin/bash
sudo apt install fonts-hack -y
#Set font
xfconf-query -c xsettings -p /Gtk/FontName -s "Hack Regular"

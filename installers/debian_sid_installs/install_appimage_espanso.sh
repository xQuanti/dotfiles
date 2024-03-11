#!/bin/bash
#Install info from:
#https://espanso.org/docs/install/linux/

if ! command -v fuse &> /dev/null
then
    echo "fuse could not be found"
    sudo apt install fuse -y
fi

# Create the $HOME/opt destination folder
mkdir -p ~/opt
# Download the AppImage inside it
wget -O ~/opt/Espanso.AppImage 'https://github.com/federico-terzi/espanso/releases/download/v2.1.8/Espanso-X11.AppImage'
# Make it executable
chmod u+x ~/opt/Espanso.AppImage
# Create the "espanso" command alias
sudo ~/opt/Espanso.AppImage env-path register


# Register espanso as a systemd service (required only once)
espanso service register

# Start espanso
espanso start

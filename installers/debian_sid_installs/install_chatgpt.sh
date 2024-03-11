#!/bin/bash

mkdir -p ~/AppImages

if ! command -v fuse &> /dev/null
then
    echo "fuse could not be found"
    sudo apt install fuse -y
fi

wget -O ~/AppImages/superProductivity.AppImage 'https://github.com/johannesjo/super-productivity/releases/download/v7.14.3/superProductivity-7.14.3.AppImage'

chmod +x ~/AppImages/superProductivity.AppImage

#Download icon
mkdir -p ~/AppImages/icons
wget -O ~/AppImages/icons/superProductivity.png 'https://github.com/johannesjo/super-productivity/blob/master/src/assets/icons/favicon-192x192.png?raw=true'

#Create desktop entry
cat > ~/.local/share/applications/superProductivity.desktop <<EOL
[Desktop Entry]
Name=Super Productivity
Exec=/home/$(whoami)/AppImages/superProductivity.AppImage
Icon=/home/$(whoami)/AppImages/icons/superProductivity.png
Terminal=false
Type=Application
Categories=Office;
EOL








#!/bin/bash

mkdir -p ~/AppImages

if ! command -v fuse &> /dev/null
then
    echo "fuse could not be found"
    sudo apt install fuse -y
fi

wget -O ~/AppImages/mqttExplorer.AppImage 'https://github.com/thomasnordquist/MQTT-Explorer/releases/download/0.0.0-0.4.0-beta1/MQTT-Explorer-0.4.0-beta1.AppImage'

chmod +x ~/AppImages/mqttExplorer.AppImage

#Download icon
mkdir -p ~/AppImages/icons
wget -O ~/AppImages/icons/mqttExplorer.png 'https://github.com/thomasnordquist/MQTT-Explorer/blob/master/res/icon.png?raw=true'

#Create desktop entry
cat > ~/.local/share/applications/mqttExplorer.desktop <<EOL
[Desktop Entry]
Name=MQTT-Explorer
Exec=/home/$(whoami)/AppImages/mqttExplorer.AppImage
Icon=/home/$(whoami)/AppImages/icons/mqttExplorer.png
Terminal=false
Type=Application
Categories=Office;
EOL


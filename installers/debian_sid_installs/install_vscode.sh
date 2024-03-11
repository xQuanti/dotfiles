#!/bin/bash
cd $HOME
wget -q --show-progress -O vscode.deb https://az764295.vo.msecnd.net/stable/6c3e3dba23e8fadc360aed75ce363ba185c49794/code_1.81.1-1691620686_amd64.deb
sudo dpkg -i vscode.deb
rm vscode.deb

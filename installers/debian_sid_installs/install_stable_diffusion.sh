#!/bin/bash
mkdir $HOME/AI
git clone https://github.com/AUTOMATIC1111/stable-diffusion-webui.git $HOME/AI/stablediffusion/
pyenv install 3.10.6
sudo apt install wget git python3 python3-venv libgl1 libglib2.0-0
$HOME/AI/stablediffusion/webui.sh

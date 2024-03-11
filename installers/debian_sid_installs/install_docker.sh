#!/bin/bash
#Install docker for debian 12 bookworm (Works in sid too)

#Install Prerequisites
sudo apt update
sudo apt install apt-transport-https ca-certificates curl gnupg -y

#Step 2: Add Docker’s GPG Repo Key
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker.gpg

#Step 3: Add the Docker Repo to Debian 12
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker.gpg] https://download.docker.com/linux/debian bookworm stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null


sudo apt update

sudo apt install docker-ce docker-ce-cli containerd.io docker-buildx-plugin -y

sudo systemctl is-active docker

#Step 5: Verify the Docker Installation

sudo docker run hello-world


#Enabling Non-root Users to Run Docker Commands
sudo usermod -aG docker ${USER}
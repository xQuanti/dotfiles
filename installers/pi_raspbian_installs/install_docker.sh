#!/bin/bash
# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl gnupg
sudo apt install curl
curl -sSL https://get.docker.com | sh
sudo usermod -aG docker $USER
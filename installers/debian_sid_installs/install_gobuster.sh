#!/bin/bash
sudo apt install gobuster -y
mkdir -p $HOME/Security/wordlist/
git clone https://github.com/00xBAD/kali-wordlists.git $HOME/Security/wordlist/

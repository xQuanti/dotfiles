#!/bin/bash
sudo apt-get install -y make build-essential libssl-dev zlib1g-dev \
libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses-dev \
xz-utils tk-dev libffi-dev liblzma-dev python3-openssl
curl https://pyenv.run | bash


# Load pyenv automatically by appending
# the following to 
#~/.bash_profile if it exists, otherwise ~/.profile (for login shells)
#and ~/.bashrc (for interactive shells) :

#export PYENV_ROOT="$HOME/.pyenv"
#command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
#eval "$(pyenv init -)"


#!/bin/bash

#Check if git is installed, if not install it
if ! [ -x "$(command -v git)" ]; then
    echo "Git is not installed. Installing..."
    sudo apt install git -y
fi

# Define the target folder for cloning
installers_folder="$HOME/installers"

# Define the GitHub repository URL
repository_url="https://github.com/xquanti/dotfiles.git"

# Check if the target folder already exists
if [ -d "$installers_folder" ]; then
    # The directory already exists, so update it
    echo "The repository already exists. Updating it..."
    cd "$installers_folder"
    git pull
else
    # The directory doesn't exist, so clone it
    echo "The repository doesn't exist. Cloning..."
    git clone "$repository_url" "$installers_folder"
    cd "$installers_folder"
fi

# Check if dialog_installer.sh exists and is executable
if [ -f "dialog_installer.sh" ] && [ -x "dialog_installer.sh" ]; then
    # Execute the dialog_installer.sh script
    ./dialog_installer.sh
else
    echo "The 'dialog_installer.sh' file could not be found or executed."
    exit 1
fi


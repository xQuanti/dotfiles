#!/bin/bash

# Check if dialog is installed
if ! [ -x "$(command -v dialog)" ]; then
  echo 'Error: dialog is not installed.' >&2
  echo 'Installing dialog...'
  sudo apt install dialog -y
fi

# Create a dialog menu to select the system (Raspberry Pi or Debian Sid)
target_system=$(dialog --menu "Select system:" 10 40 2 1 "Raspberry Pi" 2 "Debian Sid" --stdout)

# Determine the installation folder based on the selected system
if [ "$target_system" == "1" ]; then
  # Raspberry Pi
  installation_folder="pi_raspbian_installs"
elif [ "$target_system" == "2" ]; then
  # Debian Sid
  installation_folder="debian_sid_installs"
else
  echo "Invalid selection. Exiting..."
  exit 1
fi

# Get all file names in the selected installation folder
files=("$installation_folder"/*.sh)

#remove install_dialog.sh from the array
files=(${files[@]/install_dialog.sh})

#remove dialog_installer.sh from the array
files=(${files[@]/dialog_installer.sh})

#remove debian_installer.sh from the array
files=(${files[@]/debian_installer.sh})

#remove install_ from all files in the array
files=(${files[@]/install_/})

#remove .sh from all files in the array
files=(${files[@]/.sh/})

#remove debian_sid_installs/ from all files in the array
files=(${files[@]/$installation_folder\//})

#remove pi_raspbian_installs/ from all files in the array
files=(${files[@]/$installation_folder\//})




# Remove file extension and folder path
options=()
for file in "${files[@]}"; do
  filename=$(basename "$file")
  options+=("$filename" "$filename" off)
done

# Create a dialog with the selectable list of files
dialog --checklist "Select the programs you want to install:" 40 80 10 "${options[@]}" 2>results

# Read the results of the dialog into an array
results=($(<results))

# Loop through the results array and run the corresponding install script
for result in "${results[@]}"; do
  echo "Installing $result"
  "./$installation_folder/install_$result.sh"
done

rm results

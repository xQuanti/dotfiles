#!/bin/bash

#Check if dialog is installed
if ! [ -x "$(command -v dialog)" ]; then
  echo 'Error: dialog is not installed.' >&2
  echo 'Installing dialog...'
  sudo apt install dialog -y
fi

sudo apt install dialog -y

#Get all file names in the current directory and save them in an array
files=(*.sh)

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

echo ${files[@]}

#Create a selectable list of all files in the array as dialog options
options=() #declare an empty array
for i in "${files[@]}"; do

    options+=($i "$i" off) #add each element as an option

done

#Sort the options array alphabetically
#IFS=$'\n' options=($(sort <<<"${options[*]}"))
#unset IFS




#Create a dialog with the selectable list of files
#dialog --checklist "Select the programs you want to install:" 20 40 10 "${options[@]}" 2>results
#Large dialog box
dialog --checklist "Select the programs you want to install:" 40 80 10 "${options[@]}" 2>results

#Read the results of the dialog into an array
results=($(<results))

#Loop through the results array and run the corresponding install script
for i in "${results[@]}"; do
    echo "Installing $i"
    ./install_$i.sh
done

rm results






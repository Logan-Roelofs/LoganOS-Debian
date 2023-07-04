#!/bin/bash

# Functions
check_sudo() {
  if [ "$(id -u)" -ne 0 ]; then
    echo "This script requires sudo permissions. Please run it with sudo." >&2
    exit 1
  fi
}

change_background() {
  # Specify the path to your desired background image
  background_image="/home/$username/Pictures/backgrounds/bg.jpg"

  # Check if the image file exists
  if [ ! -f "$background_image" ]; then
    echo "Background image not found: $background_image" >&2
    exit 1
  fi

  # Use feh to set the background image
  feh --bg-fill "$background_image"

  # Optional: Print a success message
  echo "Background changed successfully!"
}

# Call the function to check for sudo permissions
check_sudo

# Retrieve the username of the current user
username=$(id -u -n 1000)
builddir=$(pwd)

# Add Klai Linux repos to apt source 
echo "deb http://http.kali.org/kali kali-rolling main contrib non-free" | tee /etc/apt/sources.list.d/kali.list
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 44C6513A8E4FB3D30875F758ED444FF07D8D0BF6
apt-key --keyring /etc/apt/trusted.gpg.d/kali-archive-keyring.gpg adv --keyserver keyserver.ubuntu.com --recv-keys 44C6513A8E4FB3D30875F758ED444FF07D8D0BF6

# Update packages list and update system
apt update
apt upgrade -y

# Install other package managers
apt install flatpak
apt install gnome-software-plugin-flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# Install packages with apt 

# Install packages with Flatpak

# Change bckground 
mkdir -p /home/$username/Pictures
mkdir -p /home/$username/Pictures/backgrounds
cp bg.jpg /home/$username/Pictures/backgrounds/
change_background


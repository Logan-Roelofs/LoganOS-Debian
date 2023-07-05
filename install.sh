#!/bin/bash

GREEN='\033[0;32m'
NC='\033[0m' # No Color

# Update system
echo "${GREEN}Updating system...${NC}"
apt update > /dev/null 2>&1

echo "${GREEN}Upgrading system...${NC}"
apt upgrade -y > /dev/null 2>&1

# Add Kali Linux repos to apt source
echo "${GREEN}Adding Kali Linux repositories...${NC}"
echo "deb http://http.kali.org/kali kali-rolling main contrib non-free" | tee /etc/apt/sources.list.d/kali.list > /dev/null
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 44C6513A8E4FB3D30875F758ED444FF07D8D0BF6 > /dev/null 2>&1
apt-key --keyring /etc/apt/trusted.gpg.d/kali-archive-keyring.gpg adv --keyserver keyserver.ubuntu.com --recv-keys 44C6513A8E4FB3D30875F758ED444FF07D8D0BF6 > /dev/null 2>&1

# Update system
echo "${GREEN}Updating system...${NC}"
apt update > /dev/null 2>&1

# Hold back all packages that are ready to be upgraded

#echo "${GREEN}Holding back kali's default packages...${NC}"
#packages=$(apt list --upgradable 2>/dev/null | tail -n +2 | cut -d'/' -f1)
#for package in $packages; do
#    apt-mark hold "$package"
#done

# Hold back specific packages
echo "${GREEN}Holding back specific packages...${NC}"
apt-mark hold base-files
apt-mark hold bluez
apt-mark hold bluez-obexd
apt-mark hold desktop-base
apt-mark hold firmware-misc-nonfree
apt-mark hold gir1.2-adw-1
apt-mark hold gir1.2-gtk-4.0
apt-mark hold gir1.2-polkit-1.0
apt-mark hold gnome-control-center
apt-mark hold gnome-control-center-data
apt-mark hold gnome-shell
apt-mark hold gnome-shell-common
apt-mark hold gnome-shell-extension-prefs
apt-mark hold gnome-shell-extensions
apt-mark hold gnome-terminal
apt-mark hold gnome-terminal-data
apt-mark hold init
apt-mark hold init-system-helpers
apt-mark hold libadwaita-1-0
apt-mark hold libbluetooth3
apt-mark hold libglib2.0-0
apt-mark hold libglib2.0-bin
apt-mark hold libglib2.0-data
apt-mark hold libgtk-4-1
apt-mark hold libgtk-4-bin
apt-mark hold libgtk-4-common
apt-mark hold libnautilus-extension4
apt-mark hold libpolkit-agent-1-0
apt-mark hold libpolkit-gobject-1-0
apt-mark hold linux-image-amd64
apt-mark hold mutter-common
apt-mark hold nautilus
apt-mark hold nautilus-data
apt-mark hold nautilus-extension-gnome-terminal
apt-mark hold pkexec
apt-mark hold polkitd

# Update system
echo "${GREEN}Updating system...${NC}"
apt update > /dev/null 2>&1

echo "${GREEN}Upgrading system...${NC}"
apt upgrade -y > /dev/null 2>&1

# Get the current directory using pwd
current_directory=$(pwd)

# Hide SSH message form kali devs 
touch ~/.hushlogin

echo "${GREEN}All steps completed successfully.${NC}"


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

# Add Microsoft repos & install a few dependencys & install vscode

apt install software-properties-common apt-transport-https wget -y
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt-key export BE1229CF | sudo gpg --dearmour -o /usr/share/keyrings/microsoft.gpg
add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
apt install code

# Update system
echo "${GREEN}Updating system...${NC}"
apt update > /dev/null 2>&1

# Hold back specific packages from kali's repos
echo "${GREEN}Holding back specific packages...${NC}"
apt-mark hold base-files
apt-mark hold bluez
apt-mark hold bluez-obexd
apt-mark hold desktop-base
apt-mark hold firmware-misc-nonfree
apt-mark hold gir1.2-adw-1
apt-mark hold gir1.2-gtk-4.0
apt-mark hold gir1.2-polkit-1.0
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

# Change background image
mkdir /usr/local/share/backgrounds/

# Move image to file:///usr/local/share/backgrounds/wallpaper.jpg
mv configs/bg.jpg /usr/local/share/backgrounds/wallpaper.jpg

# Hide SSH message form kali devs 
touch ~/.hushlogin

# Install software
apt-get install -y tilix zsh

# Make zsh default 
chsh -s $(which zsh)

# Install Oh my zsh 
wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
sh install.sh.1

# Install zsh for hummans 
if command -v curl >/dev/null 2>&1; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/romkatv/zsh4humans/v5/install)"
else
  sh -c "$(wget -O- https://raw.githubusercontent.com/romkatv/zsh4humans/v5/install)"
fi

# remove automatically installed programs that are no longer required
apt autoremove -y 


echo "${GREEN}All steps completed successfully.${NC}"


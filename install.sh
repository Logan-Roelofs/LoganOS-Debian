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
# Hold back specific packages from kali's repos
echo "${GREEN}Holding back specific packages...${NC}"
apt-mark hold base-files > /dev/null 2>&1
apt-mark hold bluez > /dev/null 2>&1
apt-mark hold bluez-obexd > /dev/null 2>&1
apt-mark hold desktop-base > /dev/null 2>&1
apt-mark hold firmware-misc-nonfree > /dev/null 2>&1
apt-mark hold gir1.2-adw-1 > /dev/null 2>&1
apt-mark hold gir1.2-gtk-4.0 > /dev/null 2>&1
apt-mark hold gir1.2-polkit-1.0 > /dev/null 2>&1
apt-mark hold init > /dev/null 2>&1
apt-mark hold init-system-helpers > /dev/null 2>&1
apt-mark hold libadwaita-1-0 > /dev/null 2>&1
apt-mark hold libbluetooth3 > /dev/null 2>&1
apt-mark hold libglib2.0-0 > /dev/null 2>&1
apt-mark hold libglib2.0-bin > /dev/null 2>&1
apt-mark hold libglib2.0-data > /dev/null 2>&1
apt-mark hold libgtk-4-1 > /dev/null 2>&1
apt-mark hold libgtk-4-bin > /dev/null 2>&1
apt-mark hold libgtk-4-common > /dev/null 2>&1
apt-mark hold libnautilus-extension4 > /dev/null 2>&1
apt-mark hold libpolkit-agent-1-0 > /dev/null 2>&1
apt-mark hold libpolkit-gobject-1-0 > /dev/null 2>&1
apt-mark hold linux-image-amd64 > /dev/null 2>&1
apt-mark hold mutter-common > /dev/null 2>&1
apt-mark hold nautilus > /dev/null 2>&1
apt-mark hold nautilus-data > /dev/null 2>&1
apt-mark hold nautilus-extension-gnome-terminal > /dev/null 2>&1
apt-mark hold pkexec > /dev/null 2>&1
apt-mark hold polkitd > /dev/null 2>&1
# Update system
echo "${GREEN}Updating system...${NC}"
apt update > /dev/null 2>&1
echo "${GREEN}Upgrading system...${NC}"
apt upgrade -y > /dev/null 2>&1


# Add Microsoft repos & install a few dependencys & install vscode
echo "${GREEN}Adding VS code repositories...${NC}"
apt-get install wget gpg
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg
apt install apt-transport-https -y
# Update system
echo "${GREEN}Updating system...${NC}"
apt update > /dev/null 2>&1

echo "${GREEN}Upgrading system...${NC}"
apt upgrade -y > /dev/null 2>&1


# Moving background to correct place
mkdir /usr/local/share/backgrounds/
mv configs/bg.jpg /usr/local/share/backgrounds/wallpaper.jpg

# Hide SSH message form kali devs 
touch ~/.hushlogin

# Install software
echo "${GREEN}Installing programs...${NC}"
apt-get install -y tilix zsh tree code enum4linux neofetch smbclient net-tools gzip metasploit-framework ffuf hydra netcat-traditional curl john hash-identifier tldr ftp
echo "${GREEN}Installing programs that requier interaction...${NC}"
#apt-get install -y wireshark

# Past the following into the terminal 
echo "${GREEN}gsettings set org.gnome.desktop.background picture-uri file:///usr/local/share/backgrounds/wallpaper.jpg && gsettings set org.gnome.desktop.background picture-uri-dark file:///usr/local/share/backgrounds/wallpaper.jpg && gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark' ${NC}"
# gsettings set org.gnome.desktop.background picture-uri file:///usr/local/share/backgrounds/wallpaper.jpg && gsettings set org.gnome.desktop.background picture-uri-dark file:///usr/local/share/backgrounds/wallpaper.jpg && gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark' 

# remove automatically installed programs that are no longer required

echo "${GREEN}All steps completed successfully.${NC}"


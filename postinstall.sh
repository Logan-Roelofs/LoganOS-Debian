#!/bin/bash

GREEN='\033[0;32m'
Yellow="\033[0;33m]" 
NC='\033[0m' # No Color



# Update system
echo "${GREEN}Updating system...${NC}"
apt update > /dev/null 2>&1
echo "${GREEN}Upgrading system...${NC}"
apt upgrade -y > /dev/null 2>&1

# Install software
echo "${GREEN}Installing programs...${NC}"
apt-get install -y tilix zsh tree enum4linux neofetch smbclient net-tools gzip metasploit-framework ffuf hydra netcat-traditional curl john hash-identifier tldr ftp
echo "${GREEN}Installing code...${NC}"
apt-get install -y code
echo "${GREEN}Installing programs that requier interaction...${NC}"
apt-get install -y wireshark

# Past the following into the terminal 
echo "${GREEN}Copy and past the following into the terminal...${NC}"
echo "${Yellow}gsettings set org.gnome.desktop.background picture-uri file:///usr/local/share/backgrounds/wallpaper.jpg && gsettings set org.gnome.desktop.background picture-uri-dark file:///usr/local/share/backgrounds/wallpaper.jpg && gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'${NC}"
echo "${GREEN}Copy and past the following into the terminal... one last time${NC}"
echo "${Yellow}gsettings set org.gnome.shell favorite-apps "['com.gexperts.Tilix.desktop', 'com.brave.Browser.desktop', 'md.obsidian.Obsidian.desktop', 'com.spotify.Client.desktop', 'code.desktop']"${NC}"

# remove automatically installed programs that are no longer required
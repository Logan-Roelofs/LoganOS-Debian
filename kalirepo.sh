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
echo "${GREEN}Holding back kali's default packages...${NC}"
packages=$(apt list --upgradable 2>/dev/null | tail -n +2 | cut -d'/' -f1)
for package in $packages; do
    apt-mark hold "$package"
done

# Get the current directory using pwd
current_directory=$(pwd)

# Remove programs from apt hold using the directory variable
echo "${GREEN}Removing programs from apt hold...${NC}"
apt-mark unhold $(cat "$current_directory/unhold.txt")

# Hide SSH message form kali devs 
touch ~/.hushlogin

echo "${GREEN}All steps completed successfully.${NC}"


# LoganOS

This repository is ment to change the default installation of Debian to a more custamized version that I can Logan OS.

# Clone this repository 
First make sure that you have git isntalled with the following command 
```bash
sudo apt install git
```
Now clone this github repository & change directories to the installed Repo 
```bash
git clone https://github.com/Logan-Roelofs/Debian-Logan/ && cd Debian-Logan
```
# Install
To install this repo simply run the install.sh command with sudo as follows (NOTE: this can take some time to run)
```bash
sudo sh install.sh
```
Now that the script is installed do a reboot the run these following commands-
```bash 
gsettings set org.gnome.desktop.background picture-uri file:///usr/local/share/backgrounds/wallpaper.jpg && gsettings set org.gnome.desktop.background picture-uri-dark file:///usr/local/share/backgrounds/wallpaper.jpg && gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark' && gnome-extensions enable clipboard-indicator@tudmotu.com
```

# LoganOS

This repository is ment to change the default installation of Debian to a more custamized version that I call Logan OS.

# Clone this repository 
First make sure that you have git isntalled with the following command 
```bash
sudo apt install git -y
```
Now clone this github repository & change directories to the installed Repo 
```bash
git clone https://github.com/Logan-Roelofs/LoganOS/ && cd LoganOS
```
# Install
To install this repo simply run the install.sh command with sudo as follows (NOTE: this can take some time to run)
```bash
sudo sh install.sh
```
Now that the script is installed do a reboot the run these following commands-
```bash 
gsettings set org.gnome.desktop.background picture-uri file:///usr/local/share/backgrounds/wallpaper.jpg && gsettings set org.gnome.desktop.background picture-uri-dark file:///usr/local/share/backgrounds/wallpaper.jpg && gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark' 
```


# Install zsh4hhummans

```bash 
chsh -s $(which zsh) && 
if command -v curl >/dev/null 2>&1; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/romkatv/zsh4humans/v5/install)" && 
else
  sh -c "$(wget -O- https://raw.githubusercontent.com/romkatv/zsh4humans/v5/install)"
fi
```

# Post install 

- Change Tilix theme to linux and enable dark mode and terminal title style to none
- 

# To do...

- configure terminal with zsh and titlx
- configure vscode
- 


List of all browser extentions to isntall in brave- 

https://chrome.google.com/webstore/detail/read-aloud-a-text-to-spee/hdhinadidafjejdhmfkjgnolgimiaplp

https://chrome.google.com/webstore/detail/hack-tools/cmbndhnoonmghfofefkcccljbkdpamhi

https://chrome.google.com/webstore/detail/dark-reader/eimadpbcbfnmbkopoojfekhnkhdbieeh

https://chrome.google.com/webstore/detail/foxyproxy-standard/gcknhkkoolaabfmlnjonogaaifnjlfnp

https://chrome.google.com/webstore/detail/gnome-shell-integration/gphhapmejobijbbhgpjhcjognlahblep

https://chrome.google.com/webstore/detail/cookie-editor/hlkenndednhfkekhgcdicdfddnkalmdm

https://chrome.google.com/webstore/detail/colorpick-eyedropper/ohcpnigalekghcmgcdcenkpelffpdolg

https://chrome.google.com/webstore/detail/auto-hd4k8k-for-youtube-y/fjdmkanbdloodhegphphhklnjfngoffa


# LoganOS

This repository is ment to change the default installation of Debian to a more custamized version that I call Logan OS.

### Clone this repository 
To install this on Debian we first have to make sure we have git installed to copy this repo. Then we have to copy the repo. after that we will move into the repo. Then we will exicute the install script with sudo permision.

All in one linner -  
```bash
sudo apt install git -y > /dev/null 2>&1 && git clone https://github.com/Logan-Roelofs/LoganOS/ > /dev/null 2>&1 && cd LoganOS && sudo sh install.sh 
```
The script will reboot itself after running the install script

Now that the computer has booted back up we will need to run the seconed install script (sh postinstall.sh)

one linner-
```bash 
sudo sh postinstall.sh
```

### Post install 

<details>
  <summary>Change Tilix settings</summary>
    Change Tilix theme to linux and enable dark mode and terminal title style to none
</details>  

<details>
  <summary>customize vs code</summary>
    - customize vs code
</details>  

<details>
  <summary>Install Brave extentions</summary>
    List of all browser extentions to isntall in brave- 

    https://chrome.google.com/webstore/detail/read-aloud-a-text-to-spee/hdhinadidafjejdhmfkjgnolgimiaplp

    https://chrome.google.com/webstore/detail/hack-tools/cmbndhnoonmghfofefkcccljbkdpamhi

    https://chrome.google.com/webstore/detail/dark-reader/eimadpbcbfnmbkopoojfekhnkhdbieeh

    https://chrome.google.com/webstore/detail/foxyproxy-standard/gcknhkkoolaabfmlnjonogaaifnjlfnp

    https://chrome.google.com/webstore/detail/gnome-shell-integration/gphhapmejobijbbhgpjhcjognlahblep

    https://chrome.google.com/webstore/detail/cookie-editor/hlkenndednhfkekhgcdicdfddnkalmdm

    https://chrome.google.com/webstore/detail/colorpick-eyedropper/ohcpnigalekghcmgcdcenkpelffpdolg

    https://chrome.google.com/webstore/detail/auto-hd4k8k-for-youtube-y/fjdmkanbdloodhegphphhklnjfngoffa

</details>

<details>
  <summary>Install zsh4hummans</summary>

  ### Code to install zsh4hummans
    ```bash 
    chsh -s $(which zsh) && 
    if command -v curl >/dev/null 2>&1; then
      sh -c "$(curl -fsSL https://raw.githubusercontent.com/romkatv/zsh4humans/v5/install)" && 
    else
      sh -c "$(wget -O- https://raw.githubusercontent.com/romkatv/zsh4humans/v5/install)"
    fi
    ```
</details>

### To do...

- configure terminal with zsh and titlx
- configure vscode
- 





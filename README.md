# LoganOS

This repository is met to change the default installation of Debian or Ubuntu to a more personalized version that I call Logan OS.

### Install
To install this on Debian we first have to make sure we have git installed to copy this repo. Then we have to copy the repo. After that, we will move into the repo. Then we will excite the install script with sudo permission.

All in one line -  
```bash
sudo apt install git -y > /dev/null 2>&1 && git clone https://github.com/Logan-Roelofs/LoganOS/ > /dev/null 2>&1 && cd LoganOS && sudo sh install.sh 
```
The computer will reboot after it is done installing. Now that the computer has booted back up we will need to run the second install script (sh postinstall.sh)

one-liner-
```bash 
sudo sh postinstall.sh
```
That is it!

### Post install 

<details>
  <summary>Change Tilix settings</summary>
    Change Tilix theme to Linux and enable dark mode and terminal title style to none
</details>  

<details>
  <summary>customize vs code</summary>
    - customize vs code
</details>  

<details>
  <summary>Install Brave extensions</summary>
    List of all browser extensions to install in Brave- 

    https://chrome.google.com/webstore/detail/copyfish-%F0%9F%90%9F-free-ocr-soft/eenjdnjldapjajjofmldgmkjaienebbj

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
  <summary>Install zsh4humans</summary>

  ### Code to install zsh4humans
    ```bash 
    chsh -s $(which zsh) && 
    if command -v curl >/dev/null 2>&1; then
      sh -c "$(curl -fsSL https://raw.githubusercontent.com/romkatv/zsh4humans/v5/install)" && 
    else
      sh -c "$(wget -O- https://raw.githubusercontent.com/romkatv/zsh4humans/v5/install)"
    fi
    ```
</details>

<details>
  <summary>Install Burp</summary>
    Go to https://portswigger.net/burp/releases and download the file then 

    ```bash
    cd ~/Downloads/
    chmod +x file
    ./file
    
    ```
</details>

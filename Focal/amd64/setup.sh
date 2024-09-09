#!/bin/sh
sudo su
echo 'Adding Linux Mint Repository...'
sudo wget http://packages.linuxmint.com/pool/main/l/linuxmint-keyring/linuxmint-keyring_2016.05.26_all.deb && sudo dpkg -i linuxmint-keyring_2016.05.26_all.deb && sudo rm linuxmint-keyring_2016.05.26_all.deb
sudo echo 'deb http://packages.linuxmint.com una upstream' >> /etc/apt/sources.list.d/linuxmint.list
echo 'Adding Mozilla Repository'
sudo echo 'deb [arch=amd64 signed-by=/etc/apt/keyrings/packages.mozilla.org.asc] https://packages.mozilla.org/apt mozilla main' >> /etc/apt/sources.list.d/mozilla.list
wget -q https://packages.mozilla.org/apt/repo-signing-key.gpg -O- | sudo tee /etc/apt/keyrings/packages.mozilla.org.asc > /dev/null
echo 'Configuring APT Pinning...'
sudo echo 'Package: *
Pin: origin packages.linuxmint.com
Pin-Priority: 1

Package: *
Pin: origin packages.mozilla.org
Pin-Priority: 1001

Package: chromium
Pin: origin packages.linuxmint.com
Pin-Priority: 1000

Package: thunderbird
Pin: origin packages.linuxmint.com
Pin-Priority: 1000

Package: firefox
Pin: release o=Ubuntu
Pin-Priority: -1

Package: thunderbird
Pin: release o=Ubuntu
Pin-Priority: -1

Package: chromium-browser
Pin: release o=Ubuntu
Pin-Priority: -1' >> /etc/apt/preferences.d/nativeapt
sudo apt update
echo 'Done'
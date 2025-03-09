#!/bin/sh
echo 'Adding Linux Mint Repository...'
sudo wget http://packages.linuxmint.com/pool/main/l/linuxmint-keyring/linuxmint-keyring_2016.05.26_all.deb && sudo dpkg -i linuxmint-keyring_2016.05.26_all.deb && sudo rm linuxmint-keyring_2016.05.26_all.deb
sudo echo 'deb http://packages.linuxmint.com una upstream' >> /etc/apt/sources.list.d/linuxmint.list
echo 'Configuring APT Pinning...'
sudo echo 'Package: *
Pin: origin packages.linuxmint.com
Pin-Priority: 1

Package: chromium
Pin: origin packages.linuxmint.com
Pin-Priority: 1000

Package: chromium-browser
Pin: release o=Ubuntu
Pin-Priority: -1' >> /etc/apt/preferences.d/nativeapt
sudo apt update
echo 'Done'

#!/bin/sh
sudo su
echo 'Adding Linux Mint Repository...'
sudo wget http://packages.linuxmint.com/pool/main/l/linuxmint-keyring/linuxmint-keyring_2022.06.21_all.deb && sudo dpkg -i linuxmint-keyring_2022.06.21_all.deb && sudo rm linuxmint-keyring_2022.06.21_all.deb
sudo echo 'deb http://packages.linuxmint.com wilma upstream' >> /etc/apt/sources.list.d/linuxmint.list
echo 'Configuring APT Pinning...'
sudo echo 'Package: *
Pin: origin packages.linuxmint.com
Pin-Priority: 1

Package: firefox
Pin: origin packages.linuxmint.com
Pin-Priority: 1000

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

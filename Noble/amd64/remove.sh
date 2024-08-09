#!/bin/sh
sudo su
echo 'Removing Additional Repository...'
sudo apt remove linuxmint-keyring_2022.06.21_all.deb
sudo rm /etc/apt/preferences.d/linuxmint.list
sudo rm etc/apt/preferences.d/mozilla.list
sudo rm /etc/apt/keyrings/packages.mozilla.org.asc
echo 'Removing APT Pinning...'
sudo rm /etc/apt/preferences.d/nativeapt
sudo apt update
echo 'Done.'

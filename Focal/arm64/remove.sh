#!/bin/sh
sudo su
echo 'Removing Additional Repository...'
sudo apt remove debian-keyring -y
sudo rm /etc/apt/preferences.d/debian.list
sudo rm etc/apt/preferences.d/mozilla.list
sudo rm /etc/apt/keyrings/packages.mozilla.org.asc
echo 'Removing APT Pinning...'
sudo rm /etc/apt/preferences.d/nativeapt
sudo apt update
echo 'Done.'

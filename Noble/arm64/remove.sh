#!/bin/sh
echo 'Removing Additional Repository...'
sudo apt remove debian-keyring -y
sudo rm /etc/apt/sources.list.d/debian.list
sudo rm /etc/apt/sources.list.d/mozilla.list
sudo rm /etc/apt/keyrings/packages.mozilla.org.asc
sudo apt-add-repository ppa:mozillateam/ppa -r
echo 'Removing APT Pinning...'
sudo rm /etc/apt/preferences.d/nativeapt
echo 'Done.'

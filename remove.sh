#!/bin/sh
echo 'Removing Additional Repository...'
sudo apt remove debian-keyring -y
sudo rm /etc/apt/preferences.d/debian.list
echo 'Removing APT Pinning...'
sudo rm /etc/apt/preferences.d/nativeapt
sudo rm /etc/apt/preferences.d/nosnap
sudo apt update
echo 'Done.'

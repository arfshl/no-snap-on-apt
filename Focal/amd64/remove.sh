#!/bin/sh
echo 'Removing Additional Repository...'
sudo apt remove linuxmint-keyring
sudo rm /etc/apt/preferences.d/linuxmint.list
echo 'Removing APT Pinning...'
sudo rm /etc/apt/preferences.d/nativeapt
sudo apt update
echo 'Done.'

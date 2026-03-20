#!/bin/sh
echo 'Removing APT Pinning...'
sudo rm /etc/apt/preferences.d/nosnap
sudo apt update
echo 'Done.'

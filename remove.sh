#!/bin/sh
echo 'Removing APT Pinning...'
sudo rm /etc/apt/preferences.d/nosnap
sudo rm /etc/apt/sources.list.d/mozilla.sources
sudo add-apt-repository ppa:mozillateam/ppa -r -y
sudo apt update
echo 'Done.'

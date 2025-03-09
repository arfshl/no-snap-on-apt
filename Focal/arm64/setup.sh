#!/bin/sh
echo 'Adding Debian Repository...'
sudo apt install debian-keyring
sudo echo 'deb https://deb.debian.org/debian/ buster contrib main non-free
deb https://security.debian.org/debian-security/ buster/updates contrib main non-free' >> /etc/apt/sources.list.d/debian.list
echo 'Configuring APT Pinning...'
sudo echo 'Package: *
Pin: origin deb.debian.org
Pin-Priority: 1

Package: *
Pin: origin security.debian.org
Pin-Priority: 1

Package: chromium
Pin: origin deb.debian.org
Pin-Priority: 1000

Package: chromium-common
Pin: origin deb.debian.org
Pin-Priority: 1000

Package: chromium-sandbox
Pin: origin deb.debian.org
Pin-Priority: 1000

Package: chromium-browser
Pin: release o=Ubuntu
Pin-Priority: -1' >> /etc/apt/preferences.d/nativeapt
sudo apt update
echo 'Done'

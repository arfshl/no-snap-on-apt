#!/bin/sh
echo 'Adding Debian Repository...'
sudo wget -q http://ftp.us.debian.org/debian/pool/main/d/debian-archive-keyring/debian-archive-keyring_2023.3+deb12u2_all.deb
sudo dpkg -i debian-archive-keyring_2023.3+deb12u2_all.deb
sudo rm debian-archive-keyring_2023.3+deb12u2_all.deb
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

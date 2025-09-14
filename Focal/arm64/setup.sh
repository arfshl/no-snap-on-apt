#!/bin/sh
echo 'Adding Debian Repository...'
wget -q http://ftp.us.debian.org/debian/pool/main/d/debian-archive-keyring/debian-archive-keyring_2023.3+deb12u2_all.deb
sudo dpkg -i debian-archive-keyring_2023.3+deb12u2_all.deb
rm debian-archive-keyring_2023.3+deb12u2_all.deb
sudo cat <<EOF > /etc/apt/preferences.d/nativeapt
deb https://archive.debian.org/debian/ buster contrib main non-free
deb https://archive.debian.org/debian-security/ buster/updates contrib main non-free' >> /etc/apt/sources.list.d/debian.list
echo 'Configuring APT Pinning...'
sudo echo 'Package: *
Pin: origin archive.debian.org
Pin-Priority: 1

Package: chromium
Pin: origin archive.debian.org
Pin-Priority: 1000

Package: chromium-common
Pin: origin archive.debian.org
Pin-Priority: 1000

Package: chromium-sandbox
Pin: origin archive.debian.org
Pin-Priority: 1000

Package: chromium-browser
Pin: release o=Ubuntu
Pin-Priority: -1' >> /etc/apt/preferences.d/nativeapt
EOF

sudo apt update
echo 'Done'

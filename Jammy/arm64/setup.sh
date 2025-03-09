#!/bin/sh
echo 'Adding Debian Repository...'
sudo apt install debian-keyring
sudo echo 'deb https://deb.debian.org/debian/ bullseye contrib main non-free
deb https://security.debian.org/debian-security/ bullseye-security contrib main non-free' >> /etc/apt/sources.list.d/debian.list
echo 'Adding Mozilla Repository...'
wget -q https://packages.mozilla.org/apt/repo-signing-key.gpg -O- | sudo tee /etc/apt/keyrings/packages.mozilla.org.asc > /dev/null
sudo echo 'deb [arch=arm64 signed-by=/etc/apt/keyrings/packages.mozilla.org.asc] https://packages.mozilla.org/apt mozilla main' >> /etc/apt/sources.list.d/mozilla.list
echo 'Configuring APT Pinning...'
sudo echo 'Package: *
Pin: origin packages.mozilla.org
Pin-Priority: 1001

Package: *
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

Package: firefox
Pin: release o=Ubuntu
Pin-Priority: -1

Package: chromium-browser
Pin: release o=Ubuntu
Pin-Priority: -1' >> /etc/apt/preferences.d/nativeapt
sudo apt update
echo 'Done'

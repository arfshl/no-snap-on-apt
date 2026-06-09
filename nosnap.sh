#!/bin/sh
echo 'Adding Mozillateam PPA...'
sudo add-apt-repository ppa:mozillateam/ppa -y
echo 'Adding Mozilla Firefox Official Repo...'
sudo tee /etc/apt/sources.list.d/mozilla.sources > /dev/null << EOF
Types: deb
URIs: https://packages.mozilla.org/apt
Suites: mozilla
Components: main
Signed-By: /etc/apt/keyrings/packages.mozilla.org.asc
EOF 
echo 'Configuring APT Pinning...'
sudo cat <<EOF > /etc/apt/preferences.d/nosnap
Package: *
Pin: origin deb.debian.org
Pin-Priority: 1

Package: *
Pin: origin security.debian.org
Pin-Priority: 1

Package: thunderbird
Pin: release o=LP-PPA-mozillateam
Pin-Priority: 1000

Package: *
Pin: origin packages.mozilla.org
Pin-Priority: 1001

Package: chromium
Pin: origin security.debian.org
Pin-Priority: 1000

Package: chromium-common
Pin: origin security.debian.org
Pin-Priority: 1000

Package: chromium-sandbox
Pin: origin security.debian.org
Pin-Priority: 1000

Package: firefox
Pin: release o=Ubuntu
Pin-Priority: -1

Package: thunderbird
Pin: release o=Ubuntu
Pin-Priority: -1

Package: chromium-browser
Pin: release o=Ubuntu
Pin-Priority: -1
EOF

echo 'Done'

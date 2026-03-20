#!/bin/sh
sudo cat <<EOF > /etc/apt/preferences.d/nosnap
Package: snapd
Pin: release o=Ubuntu
Pin-Priority: -1
EOF

# no-snap-on-apt
Redirect snap transitional package to real native package on ubuntu

[List of "snapified" package](https://github.com/arfshl/no-snap-on-apt/blob/main/LIST.md)

### How you get those 'real native' package?
- Firefox and Thunderbird from [Ubuntu Mozilla Team PPA](https://launchpad.net/~mozillateam/+archive/ubuntu/ppa)
- Chromium from [Debian Repository](https://packages.debian.org/chromium)
### Script for setup and removal
[26.04 LTS Resolute](https://github.com/arfshl/no-snap-on-apt/tree/main/resolute)

[24.04 LTS Noble](https://github.com/arfshl/no-snap-on-apt/tree/main/Noble)

[22.04 LTS Jammy](https://github.com/arfshl/no-snap-on-apt/tree/main/Jammy)

[20.04 LTS Focal](https://github.com/arfshl/no-snap-on-apt/tree/main/Focal)

# Fully block snapd installation from apt

### Setup
    wget https://github.com/arfshl/no-snap-on-apt/raw/main/nosnap.sh && sudo sh nosnap.sh && rm nosnap.sh
### Removal
    wget https://github.com/arfshl/no-snap-on-apt/raw/main/remove-nosnap.sh && sudo sh remove-nosnap.sh && rm remove-nosnap.sh
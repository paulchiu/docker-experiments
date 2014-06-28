#!/usr/bin/env bash

# Set up and install salt-minion, instructions taken from: http://docs.saltstack.com/en/latest/topics/installation/ubuntu.html

# Add salt repo, update and install minion
echo ""
echo "Installing salt-minion"
echo deb http://ppa.launchpad.net/saltstack/salt/ubuntu `lsb_release -sc` main | sudo tee /etc/apt/sources.list.d/saltstack.list
wget -q -O- "http://keyserver.ubuntu.com:11371/pks/lookup?op=get&search=0x4759FA960E27C0A6" | sudo apt-key add -
sudo apt-get -qqy update
sudo apt-get -qy install salt-minion 2>&1

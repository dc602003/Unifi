#!/bin/sh
# Ensure that the current session has sudo rights
# sudo apt update
# This command will add the Ubiquiti Unifi package sources into Apt
echo 'deb http://www.ui.com/downloads/unifi/debian stable ubiquiti' > /etc/apt/sources.list.d/100-ubnt-unifi.list
# This section will add in the required packages for servers running 18.04 or aobve
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 0C49F3730359A14518585931BC711F9BA15703C6
echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.4 multiverse" > /etc/apt/sources.list.d/mongodb-org-3.4.list
# Get the trusted GPG Keys
wget -O /etc/apt/trusted.gpg.d/unifi-repo.gpg https://dl.ui.com/unifi/unifi-repo.gpg
# Install Apt HTTPS, and update
apt update && apt install --yes apt-transport-https unifi
# Thanks
service unifi status &
echo "Unifi Controller installed. If the status above shows 'active', then try to connect to https://<<ServerIP>>:8443"
echo "It may take a few minutes for the service to start fully. Have a nice day. Coops."

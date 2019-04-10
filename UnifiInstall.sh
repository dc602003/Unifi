# Ensure that the current session has sudo rights
sudo apt update
# This command will add the Ubiquiti Unifi package sources into Apt
echo 'deb http://www.ui.com/downloads/unifi/debian stable ubiquiti' | sudo tee /etc/apt/sources.list.d/100-ubnt-unifi.list
#This section will add in the required packages for servers running 18.04 or aobve
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 0C49F3730359A14518585931BC711F9BA15703C6
echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.4.list
sudo apt update
# Get the trusted GPG Keys
sudo wget -O /etc/apt/trusted.gpg.d/unifi-repo.gpg https://dl.ui.com/unifi/unifi-repo.gpg
# Install Apt HTTPS, and update
sudo apt install apt-transport-https
sudo apt update
# Install unifi controller
sudo apt install unifi
# Thanks
echo "All done. Have a nice day"
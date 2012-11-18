#!/bin/sh
#
# Packages to be installed.
#
# Based on an Ubuntu 12.10 fresh install
#
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install aptitude apt-file
sudo aptitude update
sudo aptitude upgrade
sudo aptitude install git 
sudo aptitude install build-essential
sudo aptitude install build-essentials
sudo aptitude install libapr1-dev
sudo aptitude install libssl-dev
sudo aptitude install apache2-threaded-dev
sudo aptitude install xinetd
sudo aptitude install unzip

# Get the YUI library and install it.
pushd /tmp
wget http://yui.zenfs.com/releases/yui2/yui_2.6.0r2.zip
sudo unzip yui_2.6.0r2.zip -d /var/www/
sudo chmod 777 /var/www/yui/
sudo mv /var/www/yui/ /var/www/yui-2.6.0
popd

echo "You may want to reboot at this point"

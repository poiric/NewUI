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

echo "You may want to reboot at this point"

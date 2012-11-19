#!/bin/bash

# 
# wget http://sourceforge.net/projects/fis-gtm/files/GT.M%20Installer/v0.12/gtminstall
# /bin/sh ./gtminstall
#

wget -q -N http://sourceforge.net/projects/fis-gtm/files/GT.M-amd64-Linux/V5.5-000/gtm_V55000_linux_x8664_pro.tar.gz
mkdir fisgtm-v55000
cd fisgtm-v55000
tar -xzf ../gtm_V55000_linux_x8664_pro.tar.gz


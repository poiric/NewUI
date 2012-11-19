#!/bin/bash

# 
# wget http://sourceforge.net/projects/fis-gtm/files/GT.M%20Installer/v0.12/gtminstall
# /bin/sh ./gtminstall
#

wget -q -N http://sourceforge.net/projects/fis-gtm/files/GT.M-amd64-Linux/V5.5-000/gtm_V55000_linux_x8664_pro.tar.gz
mkdir fisgtm-v55000
cd fisgtm-v55000
tar -xzf ../gtm_V55000_linux_x8664_pro.tar.gz
sudo ./configure

#
#  Make larger the size of blocks that can be manged.
#  This is required by EWD settings.
#
sudo echo "kernel.shmmax = 134217728" >> /etc/sysctl.conf
sudo sysctl -w kernel.shmmax=134217728



######################################################################
#
#
#                             LOG OF AN INSTALLATION
#
#
#
#                            GT.M Configuration Script
#       Copyright 2009, 2012 Fidelity Information Services, Inc. Use of this
#       software is restricted by the provisions of your license agreement.
#
#       What user account should own the files? (bin) root
#       What group should own the files? (bin) root
#       Should execution of GT.M be restricted to this group? (y or n) n
#       In what directory should GT.M be installed? /usr/lib/fis-gtm/V5.5-000_x86_64     
#
#       Directory /usr/lib/fis-gtm/V5.5-000_x86_64 does not exist. Do you wish to create it as part of
#       this installation? (y or n) y
#
#       Installing GT.M....
#
#       Should UTF-8 support be installed? (y or n) n
#
#       All of the GT.M MUMPS routines are distributed with uppercase names.
#       You can create lowercase copies of these routines if you wish, but
#       to avoid problems with compatibility in the future, consider keeping
#       only the uppercase versions of the files.
#
#       Do you want uppercase and lowercase versions of the MUMPS routines? (y or n)n
#
#       Compiling all of the MUMPS routines. This may take a moment.
#
#
#       GTM>
#       %GDE-I-GDUSEDEFS, Using defaults for Global Directory 
#         /usr/lib/fis-gtm/V5.5-000_x86_64/gtmhelp.gld
#
#       GDE> 
#       GDE> 
#       GDE> 
#       %GDE-I-VERIFY, Verification OK
#
#       %GDE-I-GDCREATE, Creating Global Directory file 
#         /usr/lib/fis-gtm/V5.5-000_x86_64/gtmhelp.gld
#
#       GTM>
#       %GDE-I-GDUSEDEFS, Using defaults for Global Directory 
#         /usr/lib/fis-gtm/V5.5-000_x86_64/gdehelp.gld
#
#       GDE> 
#       GDE> 
#       GDE> 
#       %GDE-I-VERIFY, Verification OK
#
#       %GDE-I-GDCREATE, Creating Global Directory file 
#         /usr/lib/fis-gtm/V5.5-000_x86_64/gdehelp.gld
#
#       Object files of M routines placed in shared library /usr/lib/fis-gtm/V5.5-000_x86_64/libgtmutil.so
#       Keep original .o object files (y or n)? n
#
#
#       Installation completed. Would you like all the temporary files
#       removed from this directory? (y or n) y
#
#
######################################################################


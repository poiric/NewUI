#!/bin/sh
#
# Copy the .m sources to the subroutines directory
#
cp /home/ewder/src/EWD/*.m /home/ewder/ewd-instance/r/

cp -r /home/ewder/src/EWD/ewdMgr /home/ewder/ewd-instance/apps/

sudo cp -r /home/ewder/src/EWD/ewdMgr/resourceFiles/ /var/www/resources

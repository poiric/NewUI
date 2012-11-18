#!/bin/sh
export EWD_DIR=/home/ewder/ewd-instance/
export gtm_dist=/usr/lib/fis-gtm/V6.0-000_x86_64
export gtmprofilefile=$gtm_dist/gtmprofile
source $gtmprofilefile
export gtmgbldir=$EWD_DIR/g/database
export gtmroutines="$EWD_DIR/o($EWD_DIR/r) $gtm_dist/libgtmutil.so"
export gtm_tmp=/tmp
alias GDE="$gtm_dist/mumps -r GDE"
alias LKE="$gtm_dist/mumps -r LKE"
alias gtm="$gtm_dist/mumps -direct"
alias mupip="$gtm_dist/mupip"
alias rundown='$gtm_dist/mupip rundown -r "*"'

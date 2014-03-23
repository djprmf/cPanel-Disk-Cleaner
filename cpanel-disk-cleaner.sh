#!/bin/bash

# Just a quick and simple cpanel cleaning script by @DJ_PRMF
# Homepage: http://tugatech.com.pt and http://djprmf.com

# This script is intended to clean some trash from cpanel servers.
# All the content removed should be safe for standard cpanel installations.
# IM NOT RESPONSIBLE FOR ANY DAMAGE, INCLUDING DATA LOST - except trash -, NUCLEAR WAR OR EXPLOSIONS
# But again, should be safe...

## Shows the usage before cleaning the house
df -h

## Lets clean the YUM
yum clean all

## Remove /var/logs compressed logs and remove any variations (most of the times archived and useless) 
rm -f /var/log/*.gz
rm -f /var/log/*.?

## Now moving on to /home
# Remove all the Core files - Not needed
rm -rf /home/core.*
# Remove Easy Apache update archives - Not needed
rm -rf /home/cpeasyapache
# Remove old MySQL install files
rm -rf /home/MySQL-install

# This will clean all the backup files generated under the users accounts.
# Useful if the backup feature in cPanel is enabled and users are not deleting old backups
# Probably you wanna alert the users before, so it will not run by default.
# for user in `/bin/ls -A /var/cpanel/users` ; do rm -fv /home/$user/backup-*$user.tar.gz ; done;

# Remove more useless files in /home
rm -f /home/latest
rm -rf /home/cprubygemsbuild
rm -rf /home/cprubybuild
rm -rf /home/cprestore
#rm -rf /usr/local/cpanel/src/3rdparty/* -> Use with caution. May be needed depending of the server usage. By default not running in the cleaning.
cd /tmp
for files in `ls`; do rm -f $files; done;

# restart MySQL
/scripts/restartsrv_mysql

# restart Apache
/scripts/restartsrv_apache

## Output again the space after the cleaning
df -h

## The End
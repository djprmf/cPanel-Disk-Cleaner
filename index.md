cPanel Disk Cleaner
========

cPanel Disk Cleaner is a simple bash script to clean some "trash" from cPanel servers, reducing the disk space usage.
This script remove:
- Trash from YUM
- Archived and compressed log files
- Useless files in /home

## PLEASE READ THIS BEFORE RUN THE SCRIPT!

This script is NOT intended to ALL cPanel servers, or at least all the commands in it.

The brain must be used before run the script "just for fun".

This should be safe for standard cPanel instalations, in CentOS 5/6/7 and Cloudlinux. 
Also should be safe for ALL the cPanel versions.

## How Run the script

**(Recommended)**

Open the cpanel-disk-cleaner file and use the commands one by one.
Don't use ALL the commands without know what each one does.

OR

**(NOT RECOMMENDED AT ALL)**

```
wget https://raw.githubusercontent.com/djprmf/cPanel-Disk-Cleaner/master/cpanel-disk-cleaner
sh cpanel-disk-cleaner
```


This is intended to be a simple and quick script.
IM NOT RESPONSIBLE FOR ANY DAMAGE, INCLUDING DATA LOST - except trash -, NUCLEAR WAR OR EXPLOSIONS!

[TugaTech][1]

[DJPRMF][2]


  [1]: http://tugatech.com.pt
  [2]: http://djprmf.com

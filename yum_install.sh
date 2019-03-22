#!/bin/sh
set -x
line=`cat /etc/fstab | grep cdrom | wc -l`
mkdir -p /mnt/cdrom	
rm -rf /etc/yum.repos.d/* 
cat > /etc/yum.repos.d/CentOS-DVD.repo  << eof
[dvd]
name=CentOS-7 - DVD
baseurl=file:///mnt/cdrom
gpgcheck=0
enabled=1
eof
if [ $line  -eq 0 ]; then
	echo "yum repo is not install ,begin install..."
	echo "/dev/cdrom /mnt/cdrom auto exec 0 0" >>  /etc/fstab
	mount -a
	df -h	
else
         echo "yum repo is already install !"
fi
yum repolist
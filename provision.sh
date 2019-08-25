#!/bin/bash
sudo rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
sudo yum installhttps://centos7.iuscommunity.org/ius-release.rpm
sudo yum update -y && sudo yum install -y git2u-all curl gcc kernel-devel kernel-headers dkms make bzip2 perl wget net-tools vim
export KERN_DIR=/usr/src/kernels/`uname -r`

#wget http://download.virtualbox.org/virtualbox/6.0.10/VBoxGuestAdditions_6.0.10.iso
#sudo mkdir /media/VBoxGuestAdditions
#sudo mount -o loop,ro VBoxGuestAdditions_6.0.10.iso /media/VBoxGuestAdditions
# This will fail because the running kernel will not match the installed kernel
# you need to reboot first to continue with that setup
#sudo sh /media/VBoxGuestAdditions/VBoxLinuxAdditions.run
#rm VBoxGuestAdditions_6.0.10.iso*
#sudo umount /media/VBoxGuestAdditions
#sudo rmdir /media/VBoxGuestAdditions

# Cleanup
#echo "==> Clean up yum cache of metadata and packages to save space"
#sudo yum -y --enablerepo='*' clean all
#echo "==> Clear core files"
#sudo rm -f /core*

#echo "==> Removing temporary files used to build box"
#sudo rm -rf /tmp/*


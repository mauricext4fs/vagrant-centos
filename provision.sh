#!/bin/bash
sudo yum groups mark convert
sudo rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
sudo yum update -y
sudo yum groupinstall -y "Development Tools"
sudo yum remove -y  git
sudo yum install -y https://centos7.iuscommunity.org/ius-release.rpm
sudo yum install -y git2u-all curl bzip2 perl wget net-tools vim rsync bind-utils whois bash-completion openssl-devel psmisc

# Cleanup
echo "==> Clean up yum cache of metadata and packages to save space"
sudo yum -y --enablerepo='*' clean all
echo "==> Clear core files"
sudo rm -f /core*

echo "==> Removing temporary files used to build box"
sudo rm -rf /tmp/*


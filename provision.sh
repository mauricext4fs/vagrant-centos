#!/bin/bash
sudo yum groups mark convert
sudo rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
sudo yum update -y
sudo yum groupinstall -y "Development Tools"
sudo yum remove -y  git
sudo yum install -y https://centos7.iuscommunity.org/ius-release.rpm
sudo yum install -y git2u-all curl bzip2 perl wget net-tools vim rsync bind-utils whois bash-completion* openssl-devel psmisc nc

# Special config for vim and yml
echo '" add yaml stuffs' > /home/vagrant/.vimrc
echo "au! BufNewFile,BufReadPost *.{yaml,yml} set filetype=yaml foldmethod=indent" >> /home/vagrant/.vimrc
echo "autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab" >> /home/vagrant/.vimrc
chown vagrant:vagrant /home/vagrant/.vimrc

# Cleanup
echo "==> Clean up yum cache of metadata and packages to save space"
sudo yum -y --enablerepo='*' clean all
echo "==> Clear core files"
sudo rm -f /core*

echo "==> Removing temporary files used to build box"
sudo rm -rf /tmp/*


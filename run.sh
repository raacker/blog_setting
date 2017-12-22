#!/bin/bash

if [[ $EUID -ne 0 ]]; then
   echo "Please run with sudo"
   exit 1
fi

curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
apt-get install -y nodejs

cd ~
wget -O $HOME/atom.deb https://atom.io/download/deb
dpkg -i $HOME/atom.deb

apt-get install -y jekyll

sudo -u haven git clone https://github.com/raacker/raacker.github.io $HOME/raacker.github.io

echo "alias runblog='cd $HOME/raacker.github.io && sudo jekyll serve -b /'" >> ~/.bashrc

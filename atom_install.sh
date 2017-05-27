#!/bin/bash

apt-get install -y build-essential libgnome-keyring-dev fakeroot
apt-get install -y npm
apt-get install -y nodejs

npm install -g npm
cd ~

git clone https://github.com/atom/atom
cd atom

update-alternatives --install /usr/bin/node node /usr/bin/nodejs 1

script/build
script/grunt install

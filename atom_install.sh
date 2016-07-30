#!/bin/bash

apt-get install -y build-essential libgnome-keyring-dev fakeroot

apt-get install nodejs

cd ~

git clone https://github.com/atom/atom
cd atom

git fetch -p
git checkout $(git describe --tags 'git rev-list --tages --max-count=1')

script/build
script/grunt install

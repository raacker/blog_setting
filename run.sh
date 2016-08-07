#!/bin/bash

apt-get install -y curl
apt-get install -y nodejs

gpg --keyserver hkp://keys.gnupg.net --recv-keys D39DC0E3

\curl - sSL https://get.rvm.io | bash -s stable

source ~/.rvm/scripts/rvm

rvm install ruby-2.3.0

gem install jekyll
gem install bundler
gem install jekyll-paginate

git clone https://github.com/raacker/raacker.github.io ~/raacker.github.io

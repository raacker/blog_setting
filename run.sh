#!/bin/bash

apt-get install curl
apt-get install nodejs

gpg --keyserver hkp://keys.gnupg.net --recv-keys D39DC0E3

\curl - sSL https://get.rvm.io | bash -s stable

rvm install ruby-2.3.0

gem install jekyll
gem install redcarpet
gem install bundler

git clone https://github.com/raacker/raacker.github.io

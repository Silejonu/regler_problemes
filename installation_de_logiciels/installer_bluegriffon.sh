#!/usr/bin/bash

cd $(mktemp -d)
wget http://bluegriffon.org/freshmeat/3.1/bluegriffon-3.1.Ubuntu18.04-x86_64.deb
sudo apt install -y ./bluegriffon-3.1.Ubuntu18.04-x86_64.deb

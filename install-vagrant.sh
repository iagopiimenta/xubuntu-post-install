#!/usr/bin/env bash

if [[ $(getconf LONG_BIT) == "64" ]]
then
  echo "64bit Detected"
  echo "Installing Vagrant"
  wget https://releases.hashicorp.com/vagrant/1.8.1/vagrant_1.8.1_x86_64.deb
  sudo dpkg -i vagrant_1.8.1_x86_64.deb
  rm -f vagrant_1.8.1_x86_64.deb
else
  echo "32bit Detected"
  echo "Installing Vagrant"
  wget https://releases.hashicorp.com/vagrant/1.8.1/vagrant_1.8.1_i686.deb
  sudo dpkg -i vagrant_1.8.1_i686.deb
  rm -f vagrant_1.8.1_i686.deb
fi

sudo apt-get install -f

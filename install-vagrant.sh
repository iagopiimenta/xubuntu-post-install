#!/usr/bin/env bash

echo 'Installing Vagrant'

dpkg_install vagrant \
  'https://releases.hashicorp.com/vagrant/1.8.1/vagrant_1.8.1_x86_64.deb' \
  'https://releases.hashicorp.com/vagrant/1.8.1/vagrant_1.8.1_i686.deb'

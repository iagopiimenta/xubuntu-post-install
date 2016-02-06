#!/usr/bin/env bash

echo 'Updating system'

sudo apt-get -qq -y update
sudo apt-get -qq -fy upgrade
sudo apt-get -qq -y dist-upgrade

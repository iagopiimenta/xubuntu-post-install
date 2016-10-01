#!/usr/bin/env bash

echo 'Updating system'

sudo apt-get -y update
sudo apt-get -fy upgrade
sudo apt-get -y dist-upgrade

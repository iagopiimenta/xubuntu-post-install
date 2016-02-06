#!/usr/bin/env bash

echo 'Adding repositories'

sudo add-apt-repository -y ppa:openjdk-r/ppa >/dev/null 2>&1
sudo add-apt-repository -y ppa:git-core/ppa >/dev/null 2>&1
sudo add-apt-repository -y ppa:webupd8team/sublime-text-3 >/dev/null 2>&1
sudo add-apt-repository -y ppa:chris-lea/redis-server >/dev/null 2>&1

# MongoDB
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927 >/dev/null 2>&1
echo "deb http://repo.mongodb.org/apt/ubuntu trusty/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list >/dev/null 2>&1

# Spotify
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886 >/dev/null 2>&1
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list >/dev/null 2>&1

# PostgreSQL
echo "deb http://apt.postgresql.org/pub/repos/apt/ $(lsb_release -cs)-pgdg main" | sudo tee /etc/apt/sources.list.d/pgdg.list >/dev/null 2>&1
wget -qO - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add - >/dev/null 2>&1

# VirtualBox
echo "deb http://download.virtualbox.org/virtualbox/debian $(lsb_release -cs) contrib" | sudo tee /etc/apt/sources.list.d/virtualbox.list >/dev/null 2>&1
wget -qO - https://www.virtualbox.org/download/oracle_vbox.asc | sudo apt-key add - >/dev/null 2>&1
sudo add-apt-repository -y ppa:mc3man/trusty-media >/dev/null 2>&1

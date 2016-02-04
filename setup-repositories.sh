#!/usr/bin/env bash

echo 'Adding repositories'

sudo add-apt-repository -y ppa:openjdk-r/ppa >/dev/null 2>&1
sudo add-apt-repository -y ppa:git-core/ppa >/dev/null 2>&1
sudo add-apt-repository -y ppa:webupd8team/sublime-text-3 >/dev/null 2>&1

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927 >/dev/null 2>&1
echo "deb http://repo.mongodb.org/apt/ubuntu trusty/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list >/dev/null 2>&1

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886 >/dev/null 2>&1
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list >/dev/null 2>&1

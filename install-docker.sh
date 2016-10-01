#!/usr/bin/env bash

echo 'Installing Docker & Docker Compose'

install 'docker dependencies' apt-transport-https ca-certificates

sudo apt-get purge lxc-docker

apt-cache policy docker-engine

sudo apt-get install -y linux-image-extra-$(uname -r) linux-image-extra-virtual

sudo apt-get install -y docker-engine

curl -L https://github.com/docker/compose/releases/download/1.8.0/docker-compose-`uname -s`-`uname -m` > ~/docker-compose
chmod +x ~/docker-compose
sudo mv ~/docker-compose /usr/local/bin/docker-compose

# https://docs.docker.com/engine/installation/linux/ubuntulinux/
# Cannot connect to the Docker daemon. Is 'docker daemon' running on this host?
sudo usermod -aG docker $USER

echo 'Move /var/lib/docker to ~/.docker-data'
# https://forums.docker.com/t/how-do-i-change-the-docker-image-installation-directory/1169
sudo service docker stop
mkdir -p ~/.docker-data
echo 'DOCKER_OPTS="-g /home/iago/.docker-data"' | sudo tee -a /etc/default/docker
sudo mv /var/lib/docker/ ~/.docker-data/
sudo ln -s ~/.docker-data/ /var/lib/docker

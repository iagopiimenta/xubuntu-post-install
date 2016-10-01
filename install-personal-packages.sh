#!/usr/bin/env bash

echo ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true | sudo debconf-set-selections

install restricted-extras ubuntu-restricted-extras xubuntu-restricted-extras

# See ./add-repositories.sh
install 'Essentials programs(vlc gimp rar skype spotify-client transmission)' vlc gimp rar skype spotify-client transmission gnome-system-monitor gparted

# See ./add-repositories.sh
install 'OpenJDK - Java 8' openjdk-8-jdk openjdk-8-jre

install 'Codecs' ffmpeg libav-tools

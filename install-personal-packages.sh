#!/usr/bin/env bash

install restricted-extras ubuntu-restricted-extras xubuntu-restricted-extras

# See ./add-repositories.sh
install 'Essentials programs(vlc gimp rar skype spotify-client transmission)' vlc gimp rar skype spotify-client transmission

# See ./add-repositories.sh
install 'OpenJDK - Java 8' openjdk-8-jdk openjdk-8-jre

install 'Codecs' ffmpeg gstreamer0.10-ffmpeg libav-tools

#!/usr/bin/env bash

install restricted-extras ubuntu-restricted-extras xubuntu-restricted-extras

# See ./add-repositories.sh
install 'Essentials programs(vlc gimp rar skype spotify-client transmission)' vlc gimp rar skype spotify-client transmission

# See ./add-repositories.sh
install 'OpenJDK - Java 8' openjdk-8-jdk openjdk-8-jre

echo 'Installing Dropbox'
dropbox_path=$(which dropbox)

sudo apt-get -y install python-gpgme >/dev/null 2>&1

if ((${#dropbox_path} < 4))
then
  dropbox_url='https://www.dropbox.com/download?dl=packages/ubuntu/dropbox_2015.10.28_amd64.deb'
  if [[ $(getconf LONG_BIT) != "64" ]]
  then
    drop_box_url='https://www.dropbox.com/download?dl=packages/ubuntu/dropbox_2015.10.28_i386.deb'
  fi

  dropbox_file='dropbox_2015.10.28.deb'
  wget $dropbox_url -qO $dropbox_file
  sudo apt-get -y install python-gpgme >/dev/null 2>&1
  sudo dpkg -i $dropbox_file
  rm $dropbox_file

  echo 'after run: dropbox start -i'
fi

#!/usr/bin/env bash

echo 'Installing Dropbox'

sudo apt-get -y install python-gpgme

dropbox_path=$(which dropbox)
if ((${#dropbox_path} > 4))
then
  return
fi

url=$2
if [[ $(getconf LONG_BIT) != "64" ]]
then
  wget -O - "https://www.dropbox.com/download?plat=lnx.x86" | tar xzf - -C ~/
else
  wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf - -C ~/
fi

# rm -r ~/Documents/
# ln -s ~/Dropbox/machine/Documents/ ~/Documents

# rm -r ~/Pictures/
# ln -s ~/Dropbox/machine/Pictures/ ~/Pictures

~/.dropbox-dist/dropboxd &

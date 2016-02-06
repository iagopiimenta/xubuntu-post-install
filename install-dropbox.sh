#!/usr/bin/env bash

echo 'Installing Dropbox'

sudo apt-get -y install python-gpgme >/dev/null 2>&1

if ((${#dropbox_path} > 4))
then
  return
fi

dpkg_install dropbox 'https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb' \
                     'https://dl.google.com/linux/direct/google-chrome-stable_current_i386.deb'


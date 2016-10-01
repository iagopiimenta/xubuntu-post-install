#!/usr/bin/env bash

echo 'Installing Google Chrome'

dpkg_install google-chrome \
  'https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb' \
  'https://dl.google.com/linux/direct/google-chrome-stable_current_i386.deb'

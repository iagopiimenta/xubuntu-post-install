#!/usr/bin/env bash

# See https://packagecontrol.io/docs/syncing#dropbox-linux
if [ ! -d $HOME/.config/sublime-text-3/Packages/User ]
then
  mkdir -p $HOME/.config/sublime-text-3/Packages/User
fi

user_symlinks=$(find $HOME/.config/sublime-text-3/Packages/User -type l -ls | wc -l)
if (($user_symlinks == 0))
then
  packages_folder=$HOME/.config/sublime-text-3/Packages/
  rm -r $packages_folder/User

  if [ ! -d $HOME/Dropbox/Sublime/User ]
  then
    mkdir -p $HOME/Dropbox/Sublime/User
  fi

  ln -s $HOME/.config/sublime-text-3/Packages/User $HOME/Dropbox/Sublime/User
fi

#!/usr/bin/env bash

function install {
  echo Installing $1
  shift
  sudo apt-get -y install "$@" >/dev/null 2>&1
}

function dpkg_install {
  package_path=$(which $1)
  if ((${#package_path} > 4))
  then
    # return  
    echo 'fooo'
  fi

  # 64bit
  url=$2
  if [ -z "$3" ] && [[ $(getconf LONG_BIT) != "64" ]]
  then
    # 32bit
    url=$3
  fi

  echo $url

  package_file="$1.deb"
  wget -c $url -qO $package_file
  sudo dpkg -i $package_file
  # rm -f $package_file
}
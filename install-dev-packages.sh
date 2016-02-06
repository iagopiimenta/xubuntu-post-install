#!/usr/bin/env bash

# See ./add-repositories.sh
install 'Sublime text 3' sublime-text-installer

install Vim vim

# See ./add-repositories.sh
install Git git

# https://github.com/rbenv/ruby-build/wiki
install 'ruby-build dependencies' autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm3 libgdbm-dev libssl-dev libreadline-dev

install 'useful dependencies(nokogiri, sqlite, ssl)' curl libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libxml2 libgmp-dev zlib1g-dev liblzma-dev

install 'my projects dependencies(charlock_holmes, ldap, spamassassin, sshpass)' libicu-dev libldap2-dev libsasl2-dev spamassassin sshpass

install Redis redis-server

install 'Mongodb 3' mongodb-org

install 'imagemagick & graphicsmagick' imagemagick graphicsmagick

install PostgreSQL postgresql postgresql-contrib libpq-dev

install VirtualBox virtualbox-5.0 dkms

install SQLite sqlite3 libsqlite3-dev

install memcached memcached

install MySQL mysql-server libmysqlclient-dev

# echo 'Installing standalone ruby'
# sudo apt-get -y install ruby2.0 ruby2.0-dev

rbenv_folder="$HOME/.rbenv"
if [ ! -d $rbenv_folder ];
then
  echo 'Installing rbenv'
  git clone https://github.com/rbenv/rbenv.git $rbenv_folder
  echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
  echo 'eval "$(rbenv init -)"' >> ~/.bashrc
fi

rupdate_folder="$HOME/.rbenv/plugins/rbenv-update"
if [ ! -d $rupdate_folder ];
then
  echo 'Installing rbenv-update'
  git clone https://github.com/rkh/rbenv-update.git $rupdate_folder
fi

rbuild_folder="$rbenv_folder/plugins/ruby-build/"
if [ ! -d $rbuild_folder ];
then
  echo 'Installing ruby-build'
  git clone https://github.com/rbenv/ruby-build.git $rbuild_folder
fi

install tmux tmux

tmuxinator_path=$(which tmuxinator)
if ((${#tmuxinator_path} < 4))
then
  echo 'Installing tmuxinator'
  sudo gem install tmuxinator
fi

install OpenVPN openvpn easy-rsa lzop

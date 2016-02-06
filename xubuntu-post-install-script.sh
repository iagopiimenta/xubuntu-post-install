#!/usr/bin/env bash

# require sudo
# [ "$UID" -eq 0 ] || exec sudo bash "$0" "$@"
sudo apt-get > /dev/null

source ./functions.sh
source ./install-vagrant.sh
source ./setup-repositories.sh
source ./update-system.sh

source ./install-personal-packages.sh
source ./install-dev-packages.sh
source ./install-google-chrome.sh
source ./install-vagrant.sh
source ./install-templates.sh

echo "Cleaning Up"
sudo apt-get -qq -f install
sudo apt-get -qq autoremove
sudo apt-get -qq -y autoclean
sudo apt-get -qq -y clean


echo -e "\n**************************\n"
echo -e 'Post install:\n'
echo 'Install Package Control(Sublime Text):'
echo '  See: https://packagecontrol.io/installation'
echo -e '\nConfigure git:'
echo '  git config --global user.email your@email.com'
echo '  git config --global user.name "Your name"'
echo '  ssh-keygen # yes to all'
echo -e '\ncat ~/.ssh/id_rsa.pub # your public key, put on github/bitbucket'
echo -e "\nAdd vagrant box:"
echo -e "  vagrant box add ubuntu/trusty$(getconf LONG_BIT)"
echo -e "\nInstall Dropbox:"
echo -e "  dropbox start -i\n"

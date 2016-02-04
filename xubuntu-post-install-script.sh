#!/usr/bin/env bash

# require sudo
# [ "$UID" -eq 0 ] || exec sudo bash "$0" "$@"
sudo apt-get > /dev/null

function install {
  echo Installing $1
  shift
  sudo apt-get -y install "$@" >/dev/null 2>&1
}

# sudo add-apt-repository main
source ./setup-repositories.sh
source ./update-system.sh

source ./install-personal-packages.sh
source ./install-dev-packages.sh

chrome_path=$(which google-chrome)
if ((${#chrome_path} < 4))
then
  source ./install-google-chrome.sh
fi

cp ./templates/my_bashrc "$HOME/.my_bashrc"
cp ./templates/tmux.conf "$HOME/.tmux.conf"
sed -i '/source \$HOME\/\.my_bashrc/d' ~/.bashrc
echo 'source $HOME/.my_bashrc' >> ~/.bashrc

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
echo -e '\ncat ~/.ssh/id_rsa.pub # your public key, put on github/bitbucket\n'

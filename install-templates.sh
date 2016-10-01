#!/usr/bin/env bash

echo 'Installing templates'

cp ./templates/my_bashrc "$HOME/.my_bashrc"
# cp ./templates/tmux.conf "$HOME/.tmux.conf"
sed -i '/source \$HOME\/\.my_bashrc/d' ~/.bashrc
echo 'source $HOME/.my_bashrc' >> ~/.bashrc

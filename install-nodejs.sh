#!/usr/bin/env bash

echo 'Installing Nodejs using NVM'

node_path=$(which node)
if ((${#node_path} > 4))
then
  return
fi

curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.30.2/install.sh | bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# update nvm
# git --git-dir=$HOME/.nvm/.git --work-tree=$HOME/.nvm pull

nvm install node
nvm alias default node

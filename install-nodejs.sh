#!/usr/bin/env bash

echo 'Installing Nodejs using tj/n'

node_path=$(which node)
if ((${#node_path} > 4))
then
  return
fi

curl -L https://git.io/n-install | bash

export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"

n lts

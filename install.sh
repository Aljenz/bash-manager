#!/bin/bash

# git promt
# curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh > ~/.git-prompt

\cp bashrc-emstel ~/.bashrc-emstel

if [ -a ~/.bashrc ]
then
  grep -q -F 'source ~/.bashrc-emstel' ~/.bashrc || echo 'source ~/.bashrc-emstel' >> ~/.bashrc
else
  echo "ERROR: No .bashrc found!"
fi

mkdir -p ~/.emstel-scripts
mkdir -p ~/.emstel-scripts/scripts
mkdir -p ~/.emstel-scripts/packages

cp scripts/eyo ~/.emstel-scripts/scripts/
chmod 755 ~/.emstel-scripts/scripts/eyo



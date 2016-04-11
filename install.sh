#!/bin/bash
\cp bashrc-emstel ~/.bashrc-emstel

if [ -a ~/.bashrc ]
then
  grep -q -F 'source ~/.bashrc-emstel' ~/.bashrc || echo 'source ~/.bashrc-emstel' >> ~/.bashrc
else
  echo "ERROR: No .bashrc found!"
fi

mkdir -p ~/.bash-manager
mkdir -p ~/.bash-manager/scripts
mkdir -p ~/.bash-manager/packages
mkdir -p ~/.bash-manager/bash-manager

cp scripts/eyo ~/.bash-manager/scripts/
chmod 755 ~/.bash-manager/scripts/eyo



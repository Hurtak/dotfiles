#!/bin/bash

echo '1. starting installation script'

cd "$(dirname "$0")"
cat .bash_aliases > ~/.bash_aliases
cat .gitconfig > ~/.gitconfig
cat .vimrc > ~/.vimrc
echo -e '\n' >> ~/.bashrc
cat .bashrc >> ~/.bashrc

echo '2. reloading .bashrc'

source ~/.bashrc

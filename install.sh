#!/bin/bash
echo '1. starting installation script'

echo -e '\n' >> ~/.bash_aliases
cat .bash_aliases >> ~/.bash_aliases

echo -e '\n' >> ~/.gitconfig
cat .gitconfig >> ~/.gitconfig

echo -e '\n' >> ~/.bashrc
cat .bashrc >> ~/.bashrc

echo -e '\n' >> ~/.vimrc
cat .vimrc >> ~/.vimrc

mkdir ~/bin

echo '2. reloading .bashrc'
source ~/.bashrc

echo '3. installation script finished'

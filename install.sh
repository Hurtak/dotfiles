#!/bin/bash
echo 'starting installation script'

echo -e '\n' >> ~/.bash_aliases
cat .bash_aliases >> ~/.bash_aliases

echo -e '\n' >> ~/.gitconfig
cat .gitconfig >> ~/.gitconfig

echo -e '\n' >> ~/.bashrc
cat .bashrc >> ~/.bashrc

echo 'reloading .bashrc'
source ~/.bashrc

echo 'installation script finished'

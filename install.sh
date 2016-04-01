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

echo '3. install packages into ~/bin directory'

mkdir -p ~/bin
mkdir -p ~/node_modules
npm install --prefix ~/ tldr # better manual
npm install --prefix ~/ cloc # count lines of code
npm install --prefix ~/ npm-check # management of outdated dependencies
ln -sf ~/node_modules/.bin/tldr ~/bin/
ln -sf ~/node_modules/.bin/cloc ~/bin/
ln -sf ~/node_modules/.bin/npm-check ~/bin/

echo '4. installation script finished'

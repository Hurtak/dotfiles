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

echo '2. reloading .bashrc'
source ~/.bashrc

echo '3. install packages into ~/bin directory'

mkdir ~/bin
mkdir ~/node_modules
npm install --prefix ~/ tldr # better manual
npm install --prefix ~/ cloc # count lines of code
ln -sf ~/node_modules/.bin/tldr ~/bin
ln -sf ~/node_modules/.bin/cloc ~/bin

echo '4. installation script finished'

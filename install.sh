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

# check if npm is installed
if hash npm 2>/dev/null ; then
  mkdir -p ~/bin
  mkdir -p ~/node_modules

  npm install --prefix ~/ tldr # better manual
  npm install --prefix ~/ cloc # count lines of code
  npm install --prefix ~/ npm-check # management of outdated dependencies
  npm install --prefix ~/ gzip-size-cli
  npm install --prefix ~/ http-server

  ln -sf ~/node_modules/.bin/tldr ~/bin/
  ln -sf ~/node_modules/.bin/cloc ~/bin/
  ln -sf ~/node_modules/.bin/npm-check ~/bin/
  ln -sf ~/node_modules/.bin/gzip-size ~/bin/
  ln -sf ~/node_modules/.bin/http-server ~/bin/
else
	echo 'CANNOT FIND NPM, SKIPPING PACKAGE INSTALLATION'
fi

echo '4. installation script finished'

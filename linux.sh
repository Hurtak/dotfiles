#!/bin/bash -e

cd "$(dirname "$0")"
source install.sh

echo 'DOTFILES INSTALATION START'
write_or_append linux/.bash_aliases ~/.bash_aliases comment_hash
write_or_append linux/.gitconfig ~/.gitconfig comment_hash
write_or_append linux/.vimrc ~/.vimrc comment_quote
write_or_append linux/.bashrc ~/.bashrc comment_hash
echo 'DOTFILES INSTALATION SUCCESFULLY FINISHED'

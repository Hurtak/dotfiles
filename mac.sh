#!/bin/bash -e

cd "$(dirname "$0")"
source install.sh

echo 'DOTFILES INSTALATION START'
write_or_append mac/.bash_profile ~/.bash_profile comment_hash
write_or_append mac/.gitconfig ~/.gitconfig comment_hash
write_or_append mac/.vimrc ~/.vimrc comment_quote
echo 'DOTFILES INSTALATION SUCCESFULLY FINISHED'

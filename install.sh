#!/bin/bash -e

function write_or_append () {
    if [ -f $2 ]; then
        echo >> $2
        $3 >> $2
        echo >> $2

        cat $1 >> $2
    else
        cat $1 > $2
    fi
}

function comment_hash () {
    echo '#################### NEW ####################'
}

function comment_quote () {
    echo '"""""""""""""""""""" NEW """"""""""""""""""""'
}

cd "$(dirname "$0")"

echo 'DOTFILES INSTALATION START'

write_or_append src/.bash_aliases ~/.bash_aliases comment_hash
write_or_append src/.gitconfig ~/.gitconfig comment_hash
write_or_append src/.vimrc ~/.vimrc comment_quote
write_or_append src/.bashrc ~/.bashrc comment_hash

echo 'DOTFILES INSTALATION SUCCESFULLY FINISHED'

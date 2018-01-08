#!/bin/bash -e

function write_or_append () {
    # $1 copied config path
    # $2 target config path
    # $3 comment separator

    if [ -f $2 ]; then
        # if file exists, add comment separator and append new config
        echo >> $2
        $3 >> $2
        echo >> $2

        cat $1 >> $2
    else
        # if file does not exists, create it
        cat $1 > $2
    fi
}

function comment_hash () {
    echo '#################### NEW ####################'
}

function comment_quote () {
    echo '"""""""""""""""""""" NEW """"""""""""""""""""'
}

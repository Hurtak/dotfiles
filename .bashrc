# alias definitions
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# add new line after each command output
PS1="\n$PS1"

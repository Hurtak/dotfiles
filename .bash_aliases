# ls
alias ll="ls -lahF --group-directories-first --color=auto"

# cd
alias cd..="cd .."
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# mv, rm, cp
alias rm="rm -Iv --preserve-root"
alias mv="mv -v"
alias cp="cp -v"
alias mkdir="mkdir -pv"

# safety
alias chown="chown --preserve-root"
alias chmod="chmod --preserve-root"
alias chgrp="chgrp --preserve-root"

# diff: use git diff instead of diff
alias diff="git diff --no-index --"

# git
alias gs="git status -s"
alias ga="git add"
alias gc="git commit -m"
alias gd="git diff --color --color-words --abbrev"
alias gl="git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --"


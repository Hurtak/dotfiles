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

# git
alias gs="git status"
alias gs.="gs ."
alias ga="git add -Av"
alias ga.="ga ."
alias gc="git commit -m"
alias gd="git diff --color --color-words --abbrev"
alias gd.="gd ."
alias gl="git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --"
alias gp="git push"
alias gu="git pull"

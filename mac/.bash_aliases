# local only
alias notes="code ~/hello/notes"
alias tldr="tldr --theme=ocean"

# ls
alias ll="gls -lahF --group-directories-first --color=auto"

# cd
alias cd..="cd .."
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# mv, rm, cp
alias rm="grm -Iv"
alias mv="gmv -v"
alias cp="gcp -v"
alias mkdir="gmkdir -pv"

# git
alias gs="git status"
alias gs.="gs ."
alias ga="git add -Av"
alias ga.="ga ."
alias gc="git commit --no-verify -m"
alias gd="git diff --color --color-words --abbrev"
alias gd.="gd ."
alias gl="git log --color --graph --date=short --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr, %ad)%Creset %C(bold blue)<%an>%Creset' --abbrev-commit --"

alias gp="git push"
alias gu="git pull"

# other
alias grep="grep --color"
alias brewup='brew update && brew upgrade && brew prune && brew cleanup && brew doctor'

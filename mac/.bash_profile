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
alias gc="git commit -m"
alias gd="git diff --color --color-words --abbrev"
alias gd.="gd ."
alias gl="git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --"
alias gp="git push"
alias gu="git pull"

# other
alias grep="grep --color"
alias brewup='brew update && brew upgrade && brew prune && brew cleanup && brew doctorgs'

# Terminal
parse_git_branch() {
    branch="$(git rev-parse --abbrev-ref HEAD 2>/dev/null)"
    if [ "${branch}" != "" ]; then
        echo "(${branch}) "
    fi
}

export CLICOLOR=1 # Enable colors in terminal
export HISTFILESIZE=10000

color_green="\[\033[32m\]"
color_blue="\[\033[34m\]"
color_yellow="\[\033[33m\]"
color_reset="\[\033[m\]" # Text Reset
# \h   The hostname, up to the first . (e.g. deckard)
# \u   The username of the current user.
# \w   The current working directory.
# \W   The basename of $PWD.
# \$   If you are not root, inserts a "$"; if you are root, you get a "#"  (root uid = 0)
# \n   A newline.
export PS1="\n${color_blue}\u@\h${color_reset}:${color_yellow}\w ${color_green}\$(parse_git_branch)${color_reset}\$ "

# Add ~/bin directory into path so locally installed packages are
# easily avaliable by creating symlink in bin directory
export PATH="~/bin:$PATH"

# Used in debian changelog
export DEBEMAIL="petr.hurtak@gmail.com"
export DEBFULLNAME="Petr Huřťák"

# Default editor
export VISUAL="vim"
export EDITOR="$VISUAL"

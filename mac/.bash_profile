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

# other
alias grep="grep --color"

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

# Terminal
parse_git_branch() {
    branch="$(git rev-parse --abbrev-ref HEAD 2>/dev/null)"
    if [ "${branch}" != "" ]; then
        echo "(${branch}) "
    fi
}

export CLICOLOR=1 # Enable colors in terminal

color_green='\e[0;32m'
color_blue='\e[0;34m'
color_yellow='\e[0;33m'
color_reset='\e[0m' # Text Reset
# \h   The hostname, up to the first . (e.g. deckard)
# \u   The username of the current user.
# \w   The current working directory.
# \W   The basename of $PWD.
# \$   If you are not root, inserts a "$"; if you are root, you get a "#"  (root uid = 0)
# \n   A newline.
export PS1="\n${color_blue}\u@\h${color_reset}:${color_yellow}\w ${color_green}\$(parse_git_branch)${color_reset}\$ "

# Add ~/bin directory into path so locally installed packages are
# easily avaliable by creating symlink in bin directory
export PATH="~/bin/:$PATH"

# Used in debian changelog
export DEBEMAIL="petr.hurtak@gmail.com"
export DEBFULLNAME="Petr Huřťák"

# Default editor
export VISUAL="vim"
export EDITOR="$VISUAL"
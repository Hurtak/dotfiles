################################################################################
################################################################################
################################################################################

#
# Aliases
#

# ls
alias ll="ls -lahF --group-directories-first --color=auto"

# cd
alias cd..="cd .."
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# mv, rm, cp
alias rm="rm -Iv"
alias mv="mv -v"
alias cp="cp -v"
alias mkdir="mkdir -pv"

# git
alias gs="git status"
alias gs.="gs ."
alias ga="git add -Av"
alias ga.="ga ."
alias gc="git commit -m"
alias gcn="git commit --no-verify -m"
alias gd="git diff --color --color-words --abbrev"
alias gd.="gd ."
alias gl="git log --color --graph --date=short --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr, %ad)%Creset %C(bold blue)<%an>%Creset' --abbrev-commit --"
alias gp="git push"
alias gu="git pull"

#
# Terminal
#

parse_git_branch() {
    branch="$(git rev-parse --abbrev-ref HEAD 2>/dev/null)"
    if [ "${branch}" != "" ]; then
        echo "(${branch}) "
    fi
}

color_green="\[\033[32m\]"
color_blue="\[\033[34m\]"
color_yellow="\[\033[33m\]"
color_reset="\[\033[m\]" # Text Reset
# \h   The hostname, up to the first . (e.g. deckard)
# \u   The username of the current user.
# \w   The current working directory.
# \W   The basename of $PWD.
# \$   If you are not root, inserts a "$"; if you are root, you get a "#" (root uid = 0)
# \n   A newline.
export PS1="\n${color_blue}\u@\h${color_reset}:${color_yellow}\w ${color_green}\$(parse_git_branch)${color_reset}\$ "

# Terminal history
export HISTSIZE=10000
export HISTFILESIZE=20000
export PROMPT_COMMAND='history -a; history -r'

# Add ~/bin directory into path so locally installed packages are
# easily avaliable by creating symlink in bin directory
export PATH="~/bin:$PATH"

#
# Project specific stuff
#

# Alice/Java
export JAVA_HOME="/usr/lib/jvm/java-8-openjdk-amd64"
export JDK_HOME=$JAVA_HOME

################################################################################
################################################################################
################################################################################

#
# Aliases
#

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
alias gss="git stash --include-untracked"
alias ga="git add -Av"
alias gc="git commit -m"
alias gcn="git commit --no-verify -m"
alias gd="git diff --color --color-words --abbrev"
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

# https://www.csse.uwa.edu.au/programming/linux/zsh-doc/zsh_13.html
t_color_blue=$'%F{blue}'
t_color_yellow=$'%F{yellow}'
t_color_green=$'%F{green}'
t_color_reset=$'%F{reset}'
t_newline=$'\n'
t_username=$'%n'
t_hostname=$'%m'
t_path=$'%~'
t_user_type=$'%(!.#.$)' # root has #, non-root has $

setopt PROMPT_SUBST
PROMPT="${t_newline}${t_color_blue}${t_username}@${t_hostname}${t_color_reset}:${t_color_yellow}${t_path} ${t_color_green}\$(parse_git_branch)${t_color_reset}${t_user_type} "

# Terminal history
export HISTSIZE=100000
setopt SHARE_HISTORY

# Add ~/bin directory into path so locally installed packages are easily avaliable by creating symlink in bin directory
path+=("$HOME/bin")

#
# ZSH/GPG
#

# Fixes https://stackoverflow.com/questions/39494631/gpg-failed-to-sign-the-data-fatal-failed-to-write-commit-object-git-2-10-0
export GPG_TTY=$(tty)

#
# Project specific stuff
#

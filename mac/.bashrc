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

# Autocomplete
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

# MacOs
export BASH_SILENCE_DEPRECATION_WARNING=1 # Silence warnint that ZSH is default shell

# Used in debian changelog
export DEBEMAIL="petr.hurtak@gmail.com"
export DEBFULLNAME="Petr Huřťák"

# Default editor
export VISUAL="vim"
export EDITOR="$VISUAL"

# React Native stuff
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools

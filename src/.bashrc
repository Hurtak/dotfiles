# add new line after each command output
PS1="\n$PS1"

# add ~/bin directory into path so locally installed packages are
# easily avaliable by creating symlink in bin directory
export PATH="~/bin/:$PATH"

# add new line after each command output
PS1="\n$PS1"

# add ~/bin directory into path so locally installed packages are
# easily avaliable by creating symlink in bin directory
export PATH="~/bin/:$PATH"

# used in debian changelog
export DEBEMAIL="petr.hurtak@firma.seznam.cz"
export DEBFULLNAME="Petr Huřťák"

# default editor
export VISUAL="vim"
export EDITOR="$VISUAL"

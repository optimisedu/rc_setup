# cd to home and one path up directly
# cdpath=(~ .. ~/space)

# Added aliases for finding and editing readme files

alias -g read="nano README.md"
alias -g bread="bat README.md"
alias -g fread="fzf $dir/**/README.md"

## search for various types or README file in dir and display them in $PAGER

readme ()
{
    local files
    files=(./(#i)*(read*me|lue*m(in|)ut)*(ND))
    if (($#files))
    then $PAGER $files
    else
    print 'No README files.'
    fi
}

# If nonnegative, commands whose combined user and system execution times
# (measured in seconds) are greater than this value have timing
# statistics printed for them.
REPORTTIME=2
# This is the default TIMEFORMAT string, but with a bell. Ding ding. :)
TIMEFORMAT="%J  %U user %S system %P cpu %*E total"$'\a'

function cs() { cd "$1" && lsd -a }
function mkcd() { mkdir "$1" && cd "$1"; }

function hex2dec { awk 'BEGIN { printf "%d\n",0x$1}'; }
function dec2hex { awk 'BEGIN { printf "%x\n",$1}'; }

autoload -U zargs
autoload -U zmv

# add less -F capabilities to grep
# hm. doesn't work as expected...
# grep() {
    # command grep "$@" | less -F
# }

autoload -U :h

# load datetime, stat and mathfunc modules
# zmodload zsh/datetime
# zmodload zsh/stat
# zmodload zsh/mathfunc

######################################
### general configurations
### created by: Yuhui Lin
######################################

### colorful prompt
PS1='\[\e[31;47m\]\u:\w$\[\e[m\] '

### import general alias
source ~/.dotfiles/bashrc/alias.sh

### command case insensitive
bind "set completion-ignore-case on"
bind "set show-all-if-ambiguous on"

### set Vi mode in bash
set -o vi

#### extract function
## the if statement cause error
function extract {
if [ -z "$1" ]; then
   # display usage if no parameters given
   echo "Usage: extract <path/file_name>.<zip|rar|bz2|gz|tar|tbz2|tgz|Z|7z|xz|ex|tar.bz2|tar.gz|tar.xz>"
else
   if [ -f "$1" ] ; then
       NAME=${1%.*}
       #mkdir $NAME && cd $NAME
       case "$1" in
         *.tar.bz2)   tar xvjf ./"$1"    ;;
         *.tar.gz)    tar xvzf ./"$1"    ;;
         *.tar.xz)    tar xvJf ./"$1"    ;;
         *.lzma)      unlzma ./"$1"      ;;
         *.bz2)       bunzip2 ./"$1"     ;;
         *.rar)       unrar x -ad ./"$1" ;;
         *.gz)        gunzip ./"$1"      ;;
         *.tar)       tar xvf ./"$1"     ;;
         *.tbz2)      tar xvjf ./"$1"    ;;
         *.tgz)       tar xvzf ./"$1"    ;;
         *.zip)       unzip ./"$1"       ;;
         *.Z)         uncompress ./"$1"  ;;
         *.7z)        7za x ./"$1"        ;;
         *.xz)        unxz ./"$1"        ;;
         *.exe)       cabextract ./"$1"  ;;
         *)           echo "extract: '$1' - unknown archive method" ;;
       esac
   else
       echo "'$1' - file does not exist"
   fi
fi
}


### virtualenvwrapper
if hash virtualenvwrapper_lazy.sh 2>/dev/null; then
    export WORKON_HOME=$HOME/work/py-envs
    # export PROJECT_HOME=$HOME/work
    # this source is slow. use lazy source!
    # source /usr/local/bin/virtualenvwrapper.sh
    # export VIRTUALENVWRAPPER_SCRIPT=/usr/local/bin/virtualenvwrapper.sh
    source /usr/local/bin/virtualenvwrapper_lazy.sh
fi


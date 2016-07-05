# this file keeps all handy functions

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


### conda shortcuts
# conda path is specified in .bashrc!, don't check conda directly
if hash pip 2>/dev/null; then
    function if_conda {
        if hash conda 2>/dev/null; then 
            $@
        else 
            echo "error: cannot found 'conda'"; 
        fi
    }
    alias clis='if_conda conda env list'
    alias cact='if_conda source activate'
    alias cdea='if_conda source deactivate'
fi

### conda
# make `which python` shows correct conda py
# this variable can be overwritten in local bashrc
CONDA_PATH=$HOME'/work/miniconda3/bin'
function condaenv {
    if ! hash conda 2>/dev/null; then
        if [ -d $CONDA_PATH ] ; then
            # alias getconda='export PATH="$CONDA_PATH:$PATH" && echo "enable conda at $CONDA_PATH"'
            # alias anaconda='export PATH="~/work/anaconda3/bin:$PATH" && echo "enable anaconda"'
            export PATH="$CONDA_PATH:$PATH" 
            echo "enable conda at $CONDA_PATH"
        else
            echo "error: CONDA_PATH doesn't exits: $CONDA_PATH"
        fi
    else
        echo "conda command already exists, do nothing"
    fi
}


######################################
### general configurations
### created by: Yuhui Lin
######################################
# this script using sh, not bash!

### colorful prompt
PS1='\[\e[31;47m\]\u:\w$\[\e[m\] '

### configurations home, for neovim/bashrc/...
XDG_CONFIG_HOME="~/.config"

### config dir
MY_CONFIG_DIR=~/.config

### import general alias
source $MY_CONFIG_DIR/bashrc/alias.sh
### import general functions
source $MY_CONFIG_DIR/bashrc/func.sh

### command case insensitive
bind "set completion-ignore-case on"
bind "set show-all-if-ambiguous on"

### set Vi mode in bash
# set -o vi

### virtualenvwrapper
# By default, vew is enabled, conda is not.
enable-vew

# svn editor
SVN_EDITOR=vi


### import platform specific configurations
# above general conf can be overwritten by following conf.
if [[ "$OSTYPE" == "linux-gnu" ]]; then
    # linux distibution
    source $MY_CONFIG_DIR/bashrc/linux.sh
elif [[ "$OSTYPE" == "darwin"* ]]; then
    # Mac OSX
    source $MY_CONFIG_DIR/bashrc/mac.sh
elif [[ "$OSTYPE" == "cygwin" ]]; then
    # POSIX compatibility layer and Linux environment emulation for Windows
    echo "cannot import platform specific conf: ", $OSTYPE
elif [[ "$OSTYPE" == "msys" ]]; then
    # Lightweight shell and GNU utilities compiled for Windows (part of MinGW)
    echo "cannot import platform specific conf: ", $OSTYPE
elif [[ "$OSTYPE" == "win32" ]]; then
    # I'm not sure this can happen.
    echo "cannot import platform specific conf: ", $OSTYPE
elif [[ "$OSTYPE" == "freebsd"* ]]; then
    # ...
    echo "cannot import platform specific conf: ", $OSTYPE
else
    # Unknown.
    echo "cannot import platform specific conf: ", $OSTYPE
fi

### things after platform specific configurations


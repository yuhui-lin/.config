######################################
### Mac only - .bash_profile
######################################

###only for mbp_start
# MacPorts Installer addition on 2014-09-11_at_11:23:56: adding an appropriate PATH variable for use with MacPorts.
#export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

# Setting PATH for Python 3.4
# The orginal version is saved in .profile.pysave
#PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}"
#export PATH
###only for mbp_end


### mac colorful ls result
export CLICOLOR=1
export LSCOLORS=HxFxBxDxCxegedabagacad

### mac alias
alias vim='/Applications/MacVim.app/Contents/MacOS/Vim'
alias v='/Applications/MacVim.app/Contents/MacOS/Vim'
# print prompt before overwritting
alias mv='mv -i'
alias cp='cp -i'
# brew install trash, don't use rm anymore
alias del='trash'
alias rm='echo Error: Use \"del\" command instead, OR use /bin/rm'

###set system editor variable
export EDITOR=/Applications/MacVim.app/Contents/MacOS/Vim

### virtualenvwrapper: overwrite env directory
if hash virtualenvwrapper_lazy.sh 2>/dev/null; then
    export WORKON_HOME=$HOME/work/py-envs/
fi




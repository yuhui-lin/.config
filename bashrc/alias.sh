#"enable alias in vim
shopt -s expand_aliases

#go back
alias .-='cd -'
alias .='cd ..'
alias ..='cd ../..'
alias ...='cd ../../..'
alias ....='cd ../../../..'
alias .....='cd ../../../../..'

alias sysl='less -Nim /var/log/messages'

alias le='less -Nim'
alias ll='ls -Alh'
alias la='ls -A'
alias llg='ls -Alh | grep -i'
alias psg='ps aux | grep -i'
alias cl='clear'
alias fd='find -iname'
alias ic='ifconfig | grep inet'
alias fr='free -th'
alias df='df -hT'
alias gr='grep -irn'
alias se='service'
alias pi='ping -c 5'
alias os='head -n 1 /etc/issue'
alias v='vim'
alias ex='exit'
alias td='tcpdump -nXS'

# run clojure, act like python
# only allaw one version under ~/Downloads
alias clj='java -cp ~/Downloads/clojure-?.?.?/clojure-?.?.?.jar clojure.main'

# python alias
alias py3='python3'
alias py='python'

# tensorFlow
alias tsbd='tensorboard --logdir'


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

# alias for nvim
if hash nvim 2>/dev/null; then
    alias nv='nvim'
fi


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


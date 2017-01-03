######################################
### Linux only - .bashrc
######################################

### linux alias
alias ls='ls --color=auto'
alias ll='ls -Alh --color=auto'
alias la='ls -A --color=auto'
alias llg='ls -Alh --color=auto | grep -i'
alias sl='less -im /var/log/messages'

## change color of director with ls
export LS_COLORS=$LS_COLORS:'di=1;34:'

# trash
if hash trash-put 2>/dev/null; then
    alias del='gvfs-trash'
    alias del-dir='trash-list'
    alias del-empty='trash-empty'
else
    alias del='gvfs-trash'
    # See the content of the trash:
    # under ~/.local/share/Trash/files/
    # alias del-dir='gvfs-ls trash://'
    alias del-dir='ll -Alh --color=auto ~/.local/share/Trash/files/'
    # Empty the trash:
    # gvfs-trash --empty
fi
if hash gvfs-trash 2>/dev/null; then
    alias rm='echo Error: Use \"del\" command instead, OR use /bin/rm'
fi

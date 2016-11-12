if has('nvim')
    runtime 'local/neomake.local.vim'
else
    runtime 'contrib/syntastic.vim'
endif

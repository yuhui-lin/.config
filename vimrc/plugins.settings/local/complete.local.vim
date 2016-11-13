if has('nvim')
    exe 'source' g:MY_CONFIG_DIR.'/vimrc/plugins.settings/contrib/deoplete.vim'
else
    exe 'source' g:MY_CONFIG_DIR.'/vimrc/plugins.settings/local/neocomplete.local.vim'
endif

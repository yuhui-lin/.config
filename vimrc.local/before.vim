" overwrite vimrc/.vimrc
" change sh to bash to enable alias
if !WINDOWS()
    set shell=/bin/bash
endif

" set indent for no extension file 
" this will be overwritten by .editorconfig
set tabstop=4 softtabstop=0 expandtab shiftwidth=4

""" enable only these plugins, for debugging
" let b:plugins = ['colorscheme.local', 'ctrlp', 'tcomment']
if exists('b:plugins')
    let g:bundles = []
    for plugin in b:plugins
        call add(g:bundles, g:MY_CONFIG_DIR.'/vimrc/plugins.d/'.plugin.'.vim')
    endfor
endif

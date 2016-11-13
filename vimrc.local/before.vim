" overwrite vimrc/.vimrc
" change sh to bash to enable alias
if !WINDOWS()
    set shell=/bin/bash
endif

" set indent for no extension file 
" this will be overwritten by .editorconfig
set tabstop=4 softtabstop=0 expandtab shiftwidth=4

""" enable only these plugins, for debugging
let g:enable_settings = 1
let g:enable_plug_settings = 1
let g:enable_local_vim = 1
" let b:enabled_plugins = ['markdown']
" let b:enabled_plugins  = ['colorscheme.local', 'ctrlp', 'tcomment', 'markdown']
if exists('b:enabled_plugins ')
    let g:bundles = []
    for plugin in b:enabled_plugins 
        call add(g:bundles, g:MY_CONFIG_DIR.'/vimrc/plugins.d/'.plugin.'.vim')
    endfor
endif

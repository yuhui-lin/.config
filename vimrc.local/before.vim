" overwrite vimrc/.vimrc
" change sh to bash to enable alias
if !WINDOWS()
    set shell=/bin/bash
endif

" set indent for no extension file 
" this will be overwritten by .editorconfig
set tabstop=4 softtabstop=0 expandtab shiftwidth=4


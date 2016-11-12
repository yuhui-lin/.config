function! StartNeomake()
    autocmd! BufWritePost * Neomake

    " to be continue...
endfunction

call PlugOnLoad('neomake', 'call StartNeomake()')

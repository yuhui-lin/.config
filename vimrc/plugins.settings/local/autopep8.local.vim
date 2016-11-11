function! StartAutopep8()
let g:autopep8_max_line_length=79
endfunction

autocmd! User vim-autopep8 call StartAutopep8()

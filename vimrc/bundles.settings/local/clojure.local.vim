function! StartFireplace()
    autocmd FileType clojure noremap <buffer> <F5> <ESC>:w<CR>:exec '!clear; clj' shellescape(@%, 1)<cr>
    autocmd FileType clojure noremap <buffer> <F6> :%Eval<CR>
    autocmd FileType clojure nmap <leader>r cpp
    autocmd FileType clojure nnoremap <leader>e :Eval<CR>
endfunction

autocmd! User vim-fireplace call StartFireplace()

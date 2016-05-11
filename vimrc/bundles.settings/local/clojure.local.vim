function! StartFireplace()
    autocmd FileType clojure noremap <buffer> <F5> <ESC>:w<CR>:exec '!clear; clj' shellescape(@%, 1)<cr>
    autocmd FileType clojure nnoremap <localleader>r d2d<CR>
    autocmd FileType clojure nnoremap <localleader>y dd
    autocmd FileType clojure nnoremap <leader>t cpp
    autocmd FileType clojure nnoremap <leader>e :Eval<CR>
endfunction

autocmd! User vim-fireplace call StartFireplace()

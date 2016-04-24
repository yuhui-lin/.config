"run clojure by F5
autocmd FileType clojure nnoremap <buffer> <F5> <ESC>:w<CR>:exec '!clear; clj' shellescape(@%, 1)<cr>

" enable rainbow while starting clojure
autocmd FileType clojure execute ":RainbowToggle"


function! StartFireplace()

endfunction

autocmd! User vim-fireplace call StartFireplace()

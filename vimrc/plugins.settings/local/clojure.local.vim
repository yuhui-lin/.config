function! StartFireplace()
    " run/evaluate clojure
    autocmd FileType clojure noremap <buffer> <F5> <ESC>:w<CR>:exec '!clear; clj' shellescape(@%, 1)<cr>
    autocmd FileType clojure noremap <buffer> <F6> :%Eval<CR>
    autocmd FileType clojure nmap <leader>r cpp
    autocmd FileType clojure nnoremap <leader>e :Eval<CR>

    " venantius/vim-cljfmt
    " :Cljfmt
    " autosave is on by default
    " let g:clj_fmt_autosave = 0

    " Eastwood
    " install: write stuff in $HOME/.lein/profiles.clj
    " version number must be changed munaully when updated ??
    " see venantius/vim-eastwood

endfunction

autocmd! User vim-fireplace call StartFireplace()

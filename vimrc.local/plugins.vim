"""""""""""""""""""""""""""""""""""""""""""""""""""""
" This config file only for supplement plugins config
" Keep this as simple as possible.
"""""""""""""""""""""""""""""""""""""""""""""""""""""



"""""""""""""""""""""""""""""""""""""""""""""""""""""
" riv.vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:riv_disable_folding=0
let g:riv_fold_level=0
let g:riv_todo_levels="o, ,X"

" map F5 to preview rst
autocmd BufEnter *.rst exe 'noremap <F5> :Riv2HtmlAndBrowse<CR>' 

" shortcut for toggle all folding
autocmd FileType rst map <leader>o <C-E><Space>a

" disable stupid indent
" autocmd FileType rst :setl noai nocin nosi inde=
autocmd FileType rst :setl inde=




"""""""""""""""""""""""""""""""""""""""""""""""""""""
" ctrlp.vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""
"Set this to 0 to enable cross-session caching by not deleting the cache files upon exiting Vim: >
"use ``F5`` in ctrlp to get new cache!!!!!
let g:ctrlp_clear_cache_on_exit = 0

" it is diabled in framework. why?
nnoremap <silent> <space>m :<C-u>CtrlPMRU<CR>



"""""""""""""""""""""""""""""""""""""""""""""""""""""
" autopep8.vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:autopep8_disable_show_diff=1
let g:autopep8_aggressive=3
"Number of spaces per indent level (default: 4)
" let g:autopep8_indent_size=4
let g:autopep8_max_line_length=79




"""""""""""""""""""""""""""""""""""""""""""""""""""""
" dahu/EditorConfig
"""""""""""""""""""""""""""""""""""""""""""""""""""""
" autocmd BufReadPre *.py :EditorConfig '~/.dotfiles/vimrc.local/.editorconfig'
" autocmd FileType python,clojure,vim :EditorConfig g:VIMRC_LOCAL 
" autocmd FileType python,clojure,vim :EditorConfig /Users/yuhuilin/.dotfiles/vimrc.local
autocmd FileType python,clojure,vim,rst execute ":EditorConfig ".g:VIMRC_LOCAL 




"""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""

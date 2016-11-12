function! StartRiv()
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

  " autocmd FileType rst nnoremap <leader>w <C-E>EE
  " let g:riv_global_leader=<Leader>
  autocmd FileType rst map <leader>t :RivTodoToggle<CR>
  autocmd FileType rst map <leader>e1 :RivTodoToggle<CR>
  autocmd FileType rst map <leader>e2 :RivTodoToggle<CR>:RivTodoToggle<CR>
  autocmd FileType rst map <leader>e3 :RivTodoToggle<CR>:RivTodoToggle<CR>:RivTodoToggle<CR>
endfunction

call PlugOnLoad('riv.vim', 'call StartRiv()')

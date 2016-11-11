function! StartJedi()

  """""""""""""""""""""""""""""""""""
  "work with neocomplete config in neocomplete.local.vim
  " !!!!!!!!!!!!!!!!!!!!!
  """""""""""""""""""""""""""""""""""

  " let g:jedi#goto_command = "<leader>d"
  let g:jedi#goto_assignments_command = "<leader><leader>g"
  let g:jedi#goto_definitions_command = "<leader><leader>d"
  " let g:jedi#documentation_command = "K"
  let g:jedi#usages_command = "<leader><leader>n"
  " let g:jedi#completions_command = "<C-Space>"
  let g:jedi#rename_command = "<leader><leader>r"

endfunction

autocmd! User jedi-vim call StartJedi()

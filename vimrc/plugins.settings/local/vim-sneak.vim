function! StartVimSneak()
  " use f, disable s
  nmap f <Plug>Sneak_s
  nmap F <Plug>Sneak_S
  xmap f <Plug>Sneak_s
  xmap F <Plug>Sneak_S
  omap f <Plug>Sneak_s
  omap F <Plug>Sneak_S 

  " case non-sensitive
  let g:sneak#use_ic_scs = 1
endfunction

" autocmd! User vim-sneak call StartVimSneak()
call StartVimSneak()

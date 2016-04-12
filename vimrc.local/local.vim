" My supplement vim configurations to tony/vim-config-framework.

" source local plugins config
source ~/.dotfiles/vimrc.local/plugins.vim


"#########################################
" main config
"#########################################
"clorscheme desert
set nu

"enable alias in vim
let $BASH_ENV="~/.dotfiles/bash/bash_alias"

"diable beep and flash
set noerrorbells visualbell t_vb=
if has('autocmd')
  autocmd GUIEnter * set visualbell t_vb=
endif

"command-line case insensitive
"set wildignorecase


" MAC OSX {
    if OSX()
          """mac font
          "it's not system font, but it fits best
          "other font: lucida console, monaco, Consolas
          set guifont=Menlo:h22 
          set linespace=4
    endif
" }
" windows  {
    if WINDOWS()
          set guifont=Consolas:h22
    endif
" }
" linux {
    if LINUX()
          set guifont=Monaco:h22
    endif
" }



"#########################################
" autocmd config
"#########################################
"SuperRetab: change leading whitespaces to tab
:command! -nargs=1 -range=% SuperRetab <line1>,<line2>s/\v%(^ *)@<= {<args>}/\t/ge
"change spaces to tab, format py when update, and remove ending ^M
" don't use tab in python !! follow pep8!
" use :retab command to convert existing tab
:augroup autoFormatGroup
" :    autocmd BufWrite *.py :SuperRetab 4
" :    autocmd BufWrite *.py :retab
:    autocmd BufWritePre *.py :%s/\r\+$//e
:    autocmd BufWritePost *.py :Autopep8
:augroup END

"run python by F5
"noremap <F5> <ESC>:w<CR>:silent execute "!python %"<CR><CR>
"autocmd FileType python nnoremap <buffer> <F5> :exec '!python' shellescape(@%, 1)<cr>
autocmd FileType python nnoremap <buffer> <F5> <ESC>:w<CR>:exec '!clear; python' shellescape(@%, 1)<cr>


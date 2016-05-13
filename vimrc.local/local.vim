" My supplement vim configurations to tony/vim-config-framework.

" my global variables
let g:VIMRC_LOCAL   = $HOME.'/.dotfiles/vimrc.local'


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



""""""""""""""""""""""""""""""""""
" colorscheme
" overwrite contrib/color.vim
" always use molokai, even in terminal
if ColorSchemeExists('molokai')
  colorscheme molokai
  " molokai: for 256 colors
  let g:rehash256 = 1

  " make visual and comments more obvious
  if has('gui_running')
    " guibg not guifg
    " hi Visual guibg=#585858
    hi Visual guibg=#00875f
    hi VisualNOS guibg=#00875f

    " hi Comment guifg=#767676
    hi Comment guifg=#808080

    "#5f87af or #5f87d7
    hi FoldColumn      guifg=#5f87d7 guibg=#000000
    hi Folded          guifg=#5f87d7 guibg=#000000
  else
    " hi Visual ctermbg=240
    hi Visual ctermbg=29

    " hi Comment ctermfg=243
    hi Comment ctermfg=244

    " 67 or 68
    hi FoldColumn      ctermfg=68  ctermbg=16
    hi Folded          ctermfg=68  ctermbg=16

    " 208 is similat to terminal cursor color.
    " hi MatchParen      ctermfg=233  ctermbg=208 cterm=bold
    hi MatchParen      ctermfg=233  ctermbg=158 cterm=bold
  endif

else
  colorscheme desert
endif

" overwrite color.vim, I don't want transparent.
if has('gui_running')
  set transparency=0        " set transparent window
endif
""""""""""""""""""""""""""""""""""


"#########################################
" autocmd config & global keymapping
"#########################################
" SuperRetab: change leading whitespaces to tab
" :command! -nargs=1 -range=% SuperRetab <line1>,<line2>s/\v%(^ *)@<= {<args>}/\t/ge
"change spaces to tab, format py when update, and remove ending ^M
" don't use tab in python !! follow pep8!
" use :retab command to convert existing tab
autocmd FileType python nnoremap <silent> <leader>y :0,$!yapf --style pep8<Cr>
:augroup autoFormatGroup
" :    autocmd BufWrite *.py :SuperRetab 4
" :    autocmd BufWrite *.py :retab
:    autocmd BufWritePre *.py :%s/\r\+$//e
" :    autocmd BufWritePost *.py :Autopep8
:augroup END

"run python by F5
"noremap <F5> <ESC>:w<CR>:silent execute "!python %"<CR><CR>
"autocmd FileType python nnoremap <buffer> <F5> :exec '!python' shellescape(@%, 1)<cr>
autocmd FileType python noremap <buffer> <F5> <ESC>:w<CR>:exec '!clear; python' shellescape(@%, 1)<cr>
" python3 run
autocmd FileType python noremap <buffer> <F6> <ESC>:w<CR>:exec '!clear; python3' shellescape(@%, 1)<cr>


" press f to toggle the current fold open/closed. However, if the cursor is not in a fold, move to the next line
" autocmd FileType python,markdown nnoremap <silent> <CR> @=(foldlevel('.')?'za':"<CR>")<CR>
autocmd FileType python,markdown nnoremap <silent> <CR> @=(foldlevel('.')?'za':'j')<CR>
" autocmd FileType python,markdown nnoremap <silent> <Enter> @=(foldlevel('.')?'za':'j')<CR>
" autocmd FileType python,markdown nnoremap <CR> za


" maximize a windows
" when <CR> is mapped for folding, <C-m> serves as <CR>
" cannot use <C-m> anymore.
nnoremap <leader>m <C-W>_


" unmap these in keymapping.vim
" to enable vim-sneak ; operation
" use <leader>[] instead
:unmap ;[
" :unmap! ;[
:unmap ;]
" :unmap! ;]

" "move to next char in insert mode
" cannot use c-;
" don't use C-i, it'll cause tab problem
inoremap <S-Tab> <ESC>la
" inoremap <C-'> <C-o>a


" overwrite keymapping.vim, don't put into blackhole
" use <leader>4+v+s to paste
" nnoremap d d
:unmap d


" Don't copy the replacement part to system clipboard.
vnoremap c "_c
nnoremap c "_c
nnoremap cc "_cc
nnoremap C "_C
" nnoremap s "_s
" nnoremap ss "_ss
" " cc and S are synonyms
" nnoremap S "_S


"#########################################
" system specific settings, keep it at the end of local.vim
"#########################################
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


" source local test config
" only for testing, should be emmpty otherwise.
source ~/.dotfiles/vimrc.local/test.vim

" http://stackoverflow.com/questions/9990219/vim-whats-the-difference-between-let-and-set
" Borrows from https://github.com/terryma/dotfiles/blob/master/.vimrc
" Borrows from https://github.com/klen/.vim

"" -------------------
" Look and Feel
" -------------------

let g:SESSION_DIR   = $HOME.'/.cache/vim/sessions'


" Environment {

    " Identify platform {
        silent function! OSX()
            return has('macunix')
        endfunction
        silent function! LINUX()
            return has('unix') && !has('macunix') && !has('win32unix')
        endfunction
        silent function! WINDOWS()
            return  (has('win16') || has('win32') || has('win64'))
        endfunction
        silent function! FREEBSD()
          let s:uname = system("uname -s")
          return (match(s:uname, 'FreeBSD') >= 0)
        endfunction
    " }

    " Basics {
        set nocompatible        " Must be first line
        if !WINDOWS()
            set shell=/bin/sh
        endif
    " }

    " Windows Compatible {
        " On Windows, also use '.vim' instead of 'vimfiles'; this makes synchronization
        " across (heterogeneous) systems easier.
        if WINDOWS()
          set runtimepath=$HOME/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,$HOME/.vim/after
        endif
    " }

" }

" Function to source only if file exists {
function! SourceIfExists(file)
  if filereadable(expand(a:file))
    exe 'source' a:file
  endif
endfunction
" }

" Function to source all .vim files in directory {
function! SourceDirectory(file)
  for s:fpath in split(globpath(a:file, '*.vim'), '\n')
    exe 'source' s:fpath
  endfor
endfunction

" Use before config if available {
    call SourceIfExists("~/.vimrc.before")
" }

""""""""""""""""""""""""""""
" added by Yuhui
""""""""""""""""""""""""""""
if !empty($MY_CONFIG_DIR)
    let g:MY_CONFIG_DIR = $MY_CONFIG_DIR
else
    let g:MY_CONFIG_DIR = $HOME.'/.config'
endif 

" my global variables
let g:VIMRC_LOCAL = g:MY_CONFIG_DIR.'/vimrc.local'

" Use local vimrc folder if available {
    call SourceIfExists(g:VIMRC_LOCAL."/before.vim")
" }
""""""""""""""""""""""""""""
" added by Yuhui
""""""""""""""""""""""""""""

" Don't reset twice on reloading - 'compatible' has SO many side effects.
if !exists('s:loaded_my_vimrc')

  """"""""""""""""""""""""""""""""""""
  " added by Yuhui, add if condition
  """"""""""""""""""""""""""""""""""""
  if g:enable_settings == 1
    call SourceDirectory('~/.vim/quirks')

    call SourceIfExists("~/.vim/ignore.vim")
    call SourceIfExists("~/.vim/rice.vim")

    call SourceDirectory('~/.vim/settings')
  endif

  call SourceIfExists("~/.vim/plugin_loader.vim")

  """"""""""""""""""""""""""""""""""""
  " added by Yuhui, add if condition
  """"""""""""""""""""""""""""""""""""
  if g:enable_plug_settings == 1
    call SourceDirectory('~/.vim/plugins.settings')
  endif
endif


"===============================================================================
" Local Settings
"===============================================================================

call SourceIfExists("~/.vim/colors.vim")

" Use fork vimrc if available {
    call SourceIfExists("~/.vimrc.fork")
" }

" Use local vimrc if available {
    call SourceIfExists("~/.vimrc.local")
" }


""""""""""""""""""""""""""""
" added by Yuhui
""""""""""""""""""""""""""""
  if g:enable_local_vim == 1
  " Use local vimrc folder if available {
    call SourceIfExists(g:VIMRC_LOCAL."/local.vim")
  " }
endif
""""""""""""""""""""""""""""
" added by Yuhui
""""""""""""""""""""""""""""



" FreeBSD-specific terminal fixes
if FREEBSD()
  call SourceIfExists("~/.vim/compat/freebsd.vim")
  call SourceIfExists("/usr/src/tools/tools/editing/freebsd.vim")
end

" Use local gvimrc if available and gui is running {
    if has('gui_running')
      call SourceIfExists("~/.gvimrc.local")
    endif
" }

if !exists('s:loaded_my_vimrc')
  let s:loaded_my_vimrc = 1
endif

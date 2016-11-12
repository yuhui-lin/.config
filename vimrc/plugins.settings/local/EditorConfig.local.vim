function! StartEditorConfig()
    " augroup editorconfig
    " autocmd! editorconfig
    " autocmd editorconfig BufNewFile,BufReadPost * call EditorConfig()
    " autocmd editorconfig BufNewFile,BufRead .editorconfig set filetype=dosini

    "" my own EditorConfig settings
    " autocmd BufReadPre *.py :EditorConfig '~/.dotfiles/vimrc.local/.editorconfig'
    " autocmd FileType python,clojure,vim :EditorConfig g:VIMRC_LOCAL 
    " autocmd FileType python,clojure,vim :EditorConfig /Users/yuhuilin/.dotfiles/vimrc.local

    " autocmd FileType python,clojure,vim,rst execute ':EditorConfig ".g:VIMRC_LOCAL 
    execute ":EditorConfig ".g:VIMRC_LOCAL 
endfunction

call PlugOnLoad('EditorConfig', 'call StartEditorConfig()')


function! StartEditorConfigVim()
  let g:EditorConfig_exec_path = g:VIMRC_LOCAL.'/.editorconfig'
endfunction

call PlugOnLoad('editorconfig-vim', 'call StartEditorConfigVim()')

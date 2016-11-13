if has('nvim')
  " Plug 'Shougo/deoplete.nvim' | Plug 'Shougo/context_filetype.vim'
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'Shougo/context_filetype.vim'
else
  Plug 'Shougo/neocomplete.vim'
endif

Plug 'Shougo/echodoc'

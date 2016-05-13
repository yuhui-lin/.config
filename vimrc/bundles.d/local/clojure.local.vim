if executable('java') && (executable('lein') || executable('boot'))

    Plug 'tpope/vim-fireplace', {
      \ 'for': ['clojure']
      \ }

    " Static Vim support for Leiningen and Boot.
    " Plug 'tpope/vim-salve', {
    "   \ 'for': ['clojure']
    "   \ }

endif


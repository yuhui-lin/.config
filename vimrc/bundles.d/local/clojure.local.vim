if executable('java') && (executable('lein') || executable('boot'))

    Plug 'tpope/vim-fireplace', {
      \ 'for': ['clojure']
      \ }

    " Static Vim support for Leiningen and Boot.
    " Plug 'tpope/vim-salve', {
    "   \ 'for': ['clojure']
    "   \ }

    " these two sexp plugins should be together!
    " tutorials see bookmark cheat sheet
    Plug 'guns/vim-sexp', {
      \ 'for': ['clojure']
      \ }

    Plug 'tpope/vim-sexp-mappings-for-regular-people', {
      \ 'for': ['clojure']
      \ }
endif


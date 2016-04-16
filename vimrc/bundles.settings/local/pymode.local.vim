" copied from contrib because the flake8 error

function! StartPymode()
    let g:pymode_virtualenv=1 " Auto fix vim python paths if virtualenv enabled        
    let g:pymode_folding=1  " Enable python folding 
    let g:pymode_rope = 0

    " it was exists in contrib, but it should be executable
    " check falke8 and vim-flake8 installed
    if executable('flake8') && exists('*Flake8')
      " Flake8 is a wrapper around PyFlakes, PEP8, Ned's MacCabe script
      let g:pymode_lint_checkers = []
      " let g:pymode_lint = 0
      autocmd BufWritePost *.py call Flake8()

    else
      " use less checker to speed up when save
      " let g:pymode_lint_checkers = ['pylint', 'pep8', 'pep257', 'pyflakes', 'mccabe']
      " this three is the default of pymode.
      let g:pymode_lint_checkers = ['pyflakes', 'pep8', 'mccabe']
    endif
    let g:pymode_lint_ignore = 'C0111,D100,D101,D102,D103'
    let g:pymode_lint_sort = ['E', 'C', 'W', 'R', 'I', 'F', 'D']
    let g:pymode_lint_unmodified = 1

endfunction

autocmd! User python-mode call StartPymode()

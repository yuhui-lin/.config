function! StartVimJson()
    au BufRead,BufNewFile,BufReadPost *.json set syntax=json
    hi! def link jsonKeyword Identifier
    hi! def link jsonString	Type

    " hi def link jsonPadding	Operator
    " hi def link jsonString	String
    " hi def link jsonTest	Label
    " hi def link jsonEscape	Special
    " hi def link jsonNumber	Delimiter
    " hi def link jsonBraces	Delimiter
    " hi def link jsonNull	Function
    " hi def link jsonBoolean	Delimiter
    " hi def link jsonKeyword Label
endfunction

autocmd! User vim-json call StartVimJson()

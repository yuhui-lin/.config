function! StartMarkdown()
    """""""""""""""""""""""""""""""""""""""""""""
    "configuration for plasticboy/vim-markdown
    """""""""""""""""""""""""""""""""""""""""""""
    " let g:vim_markdown_folding_disabled = 1
    " set foldenable
    " "
    " " " this diable the folding_level
    " python style looks better
    " let g:vim_markdown_folding_style_pythonic = 1
    "
    " "Folding level is a number between 1 and 6. By default, if not specified, it
    " "is set to 1.
    " let g:vim_markdown_folding_level = 1
    "
    " let g:vim_markdown_no_default_key_mappings = 1


    """""""""""""""""""""""""""""""""""""""""""""
    " general vim markdown config
    """""""""""""""""""""""""""""""""""""""""""""
    " 3. Open markdown files with Chrome markdown plugin, unsually diable
    " plugin
    " autocmd BufEnter *.md exe 'noremap <F4> :! /Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome %:p<CR>'
    " 1. github parser
    " autocmd BufEnter *.md exe 'noremap <F5> :!github-markup %:p > /tmp/%.html<CR>:! /Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome /tmp/%.html<CR>'
    " 2. another version: rtfd/CommonMark-py
    " autocmd BufEnter *.md exe 'noremap <F6> :!cmark.py %:p -o /tmp/%.html<CR>:! /Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome /tmp/%.html<CR>'
    "4. github redcarpet
    autocmd BufEnter *.md exe 'noremap <F6> :!redcarpet --parse tables --parse fenced_code_blocks --parse autolink --parse disable_indented_code_blocks --parse strikethrough --parse lax_spacing --parse superscript --parse underline --parse highlight --parse quote --parse footnotes --render prettify %:p > /tmp/%.html<CR>:! /Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome /tmp/%.html<CR>'

    " map for fold and unfold all
    autocmd Filetype markdown noremap <leader>o zR
    autocmd Filetype markdown noremap <leader>c zM

    " this from sensible.vim
    " make hgiht more correct, hide the *sth*
    " syntax enable

    """""""""""""""""""""""""""""""""""""""""""""
    " config from tpope/vim-markdown
    """""""""""""""""""""""""""""""""""""""""""""
    " autocmd BufNewFile,BufReadPost *.md set filetype=markdown
    let g:markdown_fenced_languages = ['html', 'python', 'bash=sh', 'vim', 'javascript']


    """""""""""""""""""""""""""""""""""""""""""""
    " config of nelstrom/vim-markdown-folding
    """""""""""""""""""""""""""""""""""""""""""""
    "cannot diable fold.....
    "no other good config
    " nested or stacked
    let g:markdown_fold_style = 'stacked'

    """""""""""""""""""""""""""""""""""""""""""""
    " config of gabrielelana/vim-markdown
    """""""""""""""""""""""""""""""""""""""""""""
    " let g:markdown_enable_folding = 1


    """""""""""""""""""""""""""""""""""""""""""""
    " config of vim-instant-markdown
    """""""""""""""""""""""""""""""""""""""""""""
    " let g:instant_markdown_autostart = 0
    " nmap <F4> :InstantMarkdownPreview<CR>

endfunction

call PlugOnLoad('vim-markdown', 'call StartMarkdown()')


function! StartLivedown()
  nmap <F5> :LivedownToggle<CR>

  " should markdown preview get shown automatically upon opening markdown buffer
  let g:livedown_autorun = 0

  " should the browser window pop-up upon previewing
  let g:livedown_open = 1 

  " the port on which Livedown server will run
  let g:livedown_port = 1337

  " the browser to use
  " this causes no preview !!
  " let g:livedown_browser = "chrome"
endfunction

call PlugOnLoad('vim-livedown', 'call StartLivedown()')

todo
====
- [o] figure out how to add local pluging settings, like markdown.local
- rst open error: E403: syntax sync: line continuations pattern specified
  twice
- [o] rst config, return add list, [o]first
- [o] delimiter.vim, ctrp jump out of parenthesis? use auto-pairs
  instead, looks better.
- [o] is rainbow enabled?? for clojure, command not working, not
  necessary. remove it
- [o] neocomplete + jedi improve, C-N?, autoshow?, tab choose? C-space for
  complete, not c-n.done!
- terminal scheme? change molaka?
- [o] map return to unfold za in py and md, can't do this
- [o] autopep8: max line length? for comment not work? add option?
- [o] c-m maximize windows
- [o] python formatter: yapf and autopep8 both have flake warnings, I can only
  try to remove those warning by pymode. or yaph max line. use yaph now!
  it looks better!!
- [o] c-d and c-u to move?? or easymotion shortcut? or other HML....best: f&t
  for easymotion, learn more original motion. sneak ; not working.
  keymapping.vim affects sneak ; operation. use f, case insensitive. ``t``
  is still empty.
- [o] map f to toggle folding, OK?? <CR> is the best!!! riv.vim, check
  fastFold.
- [o] better way to jump out pairs, auto-pairs??? for all? ctrlp? C-;!
- PlugUpdate: python-mode: error: pathspec 'master' did not match any file
- [o] startify.vim:provides a start screen for Vim. only config, no import.
- tagtar.vim was removed because of error. don't use this!! cause ctrlp
  problem.
- [o] finish key mapping table

- remove warnings of python save.
- hl pymode folding font
- [o] remove vim-flake8
- [o] fix py string to long problem, can only do this manually
- [o] don't use editorconfig/editorconfig-vim, it needs to install
  editorconfig-core-c binary. use dahu/EditorConfig which in VimL but in
  alpha version, not stable. add my EditorConfig under vinrc.local. set
  autocmd to py,clj,vim
- [o] clojure: split rainbow, set clj <F5> to run clojure single file. use
  fireplace.vim plugin.
- [o] comment: return don't auto comment!
- [o] comment: won't indent >>
- python: syntax highlight wrong, argument name
- md: tab too long
- markdown folding: nips-paper, too much text cause folding error??
- clojure wrapping: take a look at jiangmiao/auto-pairs, guns/vim-sexp,
tpope/vim-sexp-mappings-for-regular-people, vim-scripts/paredit.vim.
- [o] change no extension file: change indent to 4 space, not tab
- add shortcut to insert date or time
- md folding: indent, toggle all, toggle current all level, toggle one
level, toggle N level
- markdown: mimic rst features to markdown, moving all notes to md.
    - before this, stick rst with notes !!!!
    A. markdown or all: add shortcut to insert date or time
    B. use plasticboy/markdown, mimic rst! add - highlight, add [o] hl, make
    heading indent by level!! copy rst code to markdown! like table create,hl, 
    A. markdown: highlight code block comment
    B. learn vimscript! support lua, python!
- rst: heading indent? space line between folding?? 
- [X] 2016-07-02 todo: use vitalk/vim-simple-todo plugin, combine rst and todo.txt
format! add more convenient shortcuts!


colorscheme
===========
remove base16 plugin.
remove molokai.vim, add to local.
add colorscheme.local.vim.

potential good colorscheme
--------------------------
tomasr/molokai: vauge selected area and comment.
hukl/Smyck-Color-Scheme: contrasts are tuned
altercation/vim-colors-solarized: dark and light, too blue.
google/vim-colorscheme-primary: wierd but instereting.
freeo/vim-kalisi: nice, v0.8, config.
AlessandroYorba/Alduin: dark colorscheme that combined warm yet soft colors for high readability
joshdick/onedark.vim: neovim, airline, good inspired by the excellent One Dark syntax theme for the Atom text editor.
romainl/Apprentice: dark, low-contrast colorscheme
jordwalke/flatlandia:Vim colorscheme based on flatland with Airline integration. Intended for use in MacVim. Based on the excellent
KabbAmine/yowish.vim: Yowish is a vim dark theme similar to outlander,with some yellow in it


# attention
- markdown: don't put too much stuff in code block. it'll cause folding
error. just use normal text.

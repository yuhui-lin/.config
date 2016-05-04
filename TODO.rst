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
- don't use editorconfig/editorconfig-vim, it needs to install
  editorconfig-core-c binary. use dahu/EditorConfig which in VimL but in
  alpha version, not stable. add my EditorConfig under vinrc.local. set
  autocmd to py,clj,vim
- clojure: split rainbow, set clj <F5> to run clojure single file. use
  fireplace.vim plugin.
- markdown folding: nips-paper, too much text cause folding error??

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

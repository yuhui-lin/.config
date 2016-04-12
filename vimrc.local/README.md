This is my supplement vim configurations to tony/vim-config-framework.

# Modules
``local.vim``: This file will override the tony/vim-config-framework. Most of personal conf should be placed here.

``before.vim``: Apply this conf before tony/vim-config-framework.

``vimrc.basic``: Minimalist vimrc without any plugins.


# My key mapping
For original keymappings, please refre to [Tony/Keymappings](https://github.com/tony/vim-config-framework/tree/master/settings/contrib).

| Keybinding	| Filetype	| Action	|
| ------------- | ------------- | ------------- |
|<leader>	||Is ,. Used before any shortcut with <leader>.
|<leader> <tab>	||Toggle File Tree.
|<leader> 2	||Open source code tags (classes, methods, functions).
|<leader> 4||	Toggle paste
|<leader> 6	||Toggle relative line numbers.
|<leader> 7||	Toggle all line numbers.
|<leader> f||	Indent all code in buffer gg=G
|<leader> g||	Go to Implementation or Declaration (split)
|<leader> d||	Delete window + go to previous buffer
|<space>||	`ctrlp.vim`_ leader key.
|<space> + <space>||	Launch unite with Buffers, files.
|<space> + g||	NO:Grep (file contents) in current file.
|<space> + G||	NO: Grep (find inside file) all files in CWD.
|<space> + n||	Find files relative to CWD by file name.
|<space> + m||	Most recent files
|<space> + o||	Search tags (class, methods, functions) in current buffer. ctrlFunky = ctags
|ctrl-h/j/k/l||	Move between window panes
|q or ctrl-c	 
|(inside file tree,	Close pane
|tagbar or unite)	 
|ctrl-x||	Explore files from CWD
|ctrl-c||	Delete buffer (close file) go to last file a.k.a :BB.
|;[||	Cycle backwards through buffers (previous)
|;]||	Cycle forward through buffers (next)
|ctrl-i||	CtrlP prompt: doesn't work, move to next char in insert mode
|ctrl-_	||tcomment: main toggle
|gc(motion)||	tcomment: toggle
|gcc	||tcomment: toggle current line
|ctrl-p	||insert mode: pass one char
|f	||normal mode: =<C-d>
|t	||normal mode: =<C-u>
|J	||easymotion: move line
|;	||easymotion: move word
|ctrl-m	||maximize current window
|tab	||neocomplte move down
|S-tab	||ultisnips main expand sneppits
|c-n c-p	||neocomplete select item
|c-g||	neocomplte undo complte
|c-l	||neocomplte complte common string
|F5 for .md||	preview md file by Chrome plugin
|za||	toggle one line folding
|C-e for .rst	||rst key
|<C-E><Space>a .rst	||Toggle all folding
|<C-E>s0~6 .rst	||create title
|<C-E>cdd .rst	||Insert Current Date
|<C-E>2hh or F5 .rst	||Convert to html and browse current file
|F5 inside Ctrlp	||get new cache, wait for seconds
|<leader>o .rst	||toggle all folding
|<leader>o and c .md	||open and close all folding

# My modifications to tony/vim-config-framework
Any modifications will be surrounded by 
```bash
""""""""""""""""""""""
modified by Yuhui
""""""""""""""""""""""
```
- ``.vimrc``: call function to source all local .vim files
- ``settings``, ``bundles.settings``, ``bundles.d``: add ``local/`` folder under these directories. ``local/`` folders contain my .vim config files which can be used in the same way as ``contrib/`` community settings.
- ``.gitignore``: comment out three /*.vim to upload my symbolic links


# Potential plugins
- tagbar.vim: some errors.
- ag.vim: file search plugin which is better than grep.
- clang*.vim, vim-syntax-extra.vim: for c, cpp
- coffeescript.vim: tags
- cpp-enhanced-highlight.vim
- fastfold.vim: folding
- git.vim
- i3.vim: windows manager. need to install i3
- java.vim: not enough for java.
- posix.vim
- rst2ctags.vim: for python and tag bar, don't use it now.
- templates.vim: templates. not necessary now.
- snippets.vim : not necessary now.
- vim-hardtime.vim: practive. reduce use of jk.
- vim-markdown-folding.vim: markdown.vim already fold the file.
- sleuth.vim: This plugin automatically adjusts 'shiftwidth' and 'expandtab' heuristically based on the current file.
- vim-multiple-cursors.vim: sublime stuff, no import, only config.


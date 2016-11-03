This repository keeps all my dotfiles.

# Install

```bash
mv .config .config-tmp
git clone https://github.com/yuhui-lin/.config.git
mv .config-tmp/* .config/
rm -rf .config-tmp/

# non-neovim:
cp ~/.config/dotfiles/.vimrc ~/.vimrc
# inside vim, install plugins
:PlugUpdate
# backup .vim
mv .vim .vim-backup
ln -s ~/.config/vimrc/ ~/.vim
# vimrc.basic
cp ~/.config/dotfiles/.vimrc.basic ~/.vimrc

## bashrc:
# Mac
cp ~/.config/dotfiles/.bash_profile ~/.bash_profile
# Linux
cp ~/.config/dotfiles/.bashrc ~/.bashrc

```

# Prerequisite

- github redcarpet for markdown
- rst2html: see Note_rst
- yaph: pip install yaph 
- jedi: pip install jedi

## optional:
- flake8: pip install flake8

# Modules
``vimrc/``: This is a fork from [tony/vim-config-framework](https://github.com/tony/vim-config-framework). I try not to modify the original configuration. Instead, symbolic links and local vimrc are used to add my own configurations. The .git folder of ``vimrc/`` is kept elsewhere to update it in the future.

``vimrc.local/``: My supplement vim configuration files.

``bash/``: my bash configuration for mac and linux.

``ssh/``: ssh template.

``misc/``: miscellaneous stuff.

# Note
- use terminal.app under Mac, use Terminator in Linux. iTerm for advanced features under mac.
- vim cursor cannot change shape between different mode in Terminal.app. iTerm could.

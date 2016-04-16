This repository keeps all my dotfiles.

# Install

```bash
git clone https://github.com/yuhui-lin/.dotfiles.git ~/.dotfiles
cp ~/.dotfiles/.vimrc ~/.vimrc

# backup .vim
mv .vim .vim-backup
ln -s ~/.dotfiles/vimrc/ ~/.vim
# Mac
cp ~/.dotfiles/.bash_profile ~/.bash_profile
# Linux
cp ~/.dotfiles/.bashrc ~/.bashrc

# vimrc.basic
cp ~/.dotfiles/.vimrc.basic ~/.vimrc
```

# Prerequisite

- github-markdown parser OR commanMark python implement
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


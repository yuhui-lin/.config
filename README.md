This repository keeps all my dotfiles.

# Install
```bash
git clone https://github.com/yuhui-lin/dotfiles.git
mv ~/dotfiles ~/.dotfiles
cp ~/.dotfiles/.vimrc ~/.vimrc
ln -s ~/.dotfiles/vimrc/ ~/.vim
# Mac
cp ~/.dotfiles/.bash_profile ~/.bash_profile
# Linux
cp ~/.dotfiles/.bashrc ~/.bashrc

# vimrc.basic
cp ~/.dotfiles/.vimrc.basic ~/.vimrc
```

# Modules
``vimrc/``: This is a fork from [tony/vim-config-framework](https://github.com/tony/vim-config-framework). I try not to modify the original configuration. Instead, symbolic links and local vimrc are used to add my own configurations.

``vimrc.local/``: My supplement vim configuration files.

``bash/``: my bash configuration for mac and linux.

``ssh/``: ssh template.

``misc/``: miscellaneous stuff.


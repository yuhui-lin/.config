######################################
### ~/.profile or ~/.bash_profile
######################################

######################################
### Mac only - .bash_profile
######################################

# do not use cp ~/.dotfiles/ to replace this file!!!
# since there may be costumized settings!

### import the general config
# it can be overwritten.
source ~/.config/bashrc/main.sh

###colorful prompt
# overwrite @machine-name
# \e[light:1/0; font_color;background_m\]]
# 0	Black; 1 Red; 2	Green; 3 Yellow; 4 Blue; 5	Magenta; 6	Cyan; 7	White;
# +30 is font color; +40 is background color
#PS1='\[\e[31;47m\]\u@iMac:\w$\[\e[m\] '

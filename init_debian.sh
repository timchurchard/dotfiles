#!/bin/bash

BASEDIR=~/dotfiles.git

# ensure system setup
# sudo apt-get install -y git python3 python3-pip python3-flake8 python-flake8
# sudo pip install powerline

if [ -d $BASEDIR ]
then
    cd $BASEDIR
    git pull origin master
else
    git clone https://github.com/timchurchard/dotfiles.git $BASEDIR
fi

#
cd $BASEDIR

# Initilize the Reop.
git submodule init
git submodule update

# Got to home.
cd

# gitconfig idea
# cat ~/.gitconfig_head gitconfig > ~/.gitconfig

# Check the file exists or not.
if [ ! -d ~/.vim ]
then
    ln -s $BASEDIR/vim-files/vim ~/.vim
fi

if [ ! -e ~/.vimrc ]
then
    ln -s $BASEDIR/vimrc ~/.vimrc
fi

if [ ! -e ~/.tmux.conf ]
then
    ln -s $BASEDIR/tmux.conf ~/.tmux.conf
fi

if [ ! -e ~/.bash_aliases ]
then
    ln -s $BASEDIR/bash_aliases ~/.bash_aliases
fi

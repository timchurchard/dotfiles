#!/bin/bash

BASEDIR=~/dotfiles.git

# ensure system setup
sudo apt-get install git python3 python3-pip python3-flake8 python-flake8 vim build-essential tmux

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

# build powerline
cd vim-files/vim/bundle/powerline/
python setup.py build
sudo python setup.py install

# Got to home.
cd

# Check the file exists or not.
if [ ! -e ~/.gitconfig ]
then
    cat $BASEDIR/gitconfig >> ~/.gitconfig
fi

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

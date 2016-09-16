#!/bin/bash

BASEDIR=~/dotfiles.git

# ensure system setup
# Note: ubuntu 16.04 (And rename python to python3 in vimrc for powerline import)
# sudo apt-get remove vim
# sudo apt-get install vim-nox
sudo apt-get install git python3 python3-pip python3-flake8 python-flake8 vim build-essential tmux ctags exuberant-ctags

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
git submodule update --init --recursive

## note: system install python-powerline works better
sudo apt-get install powerline python-powerline
## build powerline
#cd vim-files/vim/bundle/powerline/
#python setup.py build
#sudo python setup.py install

# Got to home. (and make vim tmp dir)
cd
mkdir -p .vim-tmp
cd $BASEDIR

# Check if global flake8 file exists
if [ ! -e ~/.config/flake8 ]
then
    cp flake8 ~/.config/flake8
fi

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

# Add the fancy git pager
# https://github.com/stevemao/diff-so-fancy
# git config --global core.pager "diff-so-fancy | less --tabs=1,5 -R"

# Setup you complete me
sudo apt-get install python-dev cmake
cd vim-files/vim/bundle/YouCompleteMe/
python install.py

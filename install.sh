#!/bin/bash
# usage:
# install.sh [install directory: default $HOME]

# setup install directory
home=$HOME
cp='cp -b'    # backup existing files
if [ $# -ge 1 ]; then
    home=$1
fi

# set pwd to script directory
cd $(dirname $(readlink -f $0))

# install cscope plugin
mkdir -p $home/.vim
mkdir -p $home/.vim/plugin
$cp cscope_maps.vim ~/.vim/plugin

# config files
$cp .zshrc $home/
$cp .vimrc $home/
$cp .tmux.conf $home/

# setup .git config
$cp global_gitignore $home/global_gitignore
git config --global core.excludesfile $HOME/global_gitignore
#git config --global user.name '<full name here>'
#git config --global user.email '<email here>'

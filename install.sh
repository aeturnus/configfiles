#!/bin/bash
# usage:
# install.sh [install directory: default $HOME]

# setup install directory
home=$HOME
cp='cp -i'    # backup existing files
if [ $# -ge 1 ]; then
    home=$1
fi

# set pwd to script directory
cd $(dirname $(readlink -f $0))/files

# install cscope plugin
mkdir -p $home/.vim
mkdir -p $home/.vim/plugin
$cp cscope_maps.vim ~/.vim/plugin

# config files
$cp .zshrc $home/
$cp .vimrc $home/
$cp .tmux.conf $home/
$cp .Xresources $home/

# i3
mkdir -p $home/.config
mkdir -p $home/.config/i3
mkdir -p $home/.config/i3status
$cp i3config $home/.config/i3/config
$cp i3statusconfig $home/.config/i3status/config

# setup .git config
$cp global_gitignore $home/global_gitignore
git config --global core.excludesfile $HOME/global_gitignore
#git config --global user.name '<full name here>'
#git config --global user.email '<email here>'

# nethack
$cp .nethackrc $home/

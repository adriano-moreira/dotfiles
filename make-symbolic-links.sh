#!/bin/bash
set -e

ln -s -f `pwd`/.vimrc_base.vim  ~/.vimrc_base.vim 
mkdir -p ~/.config/nvim
ln -s -f `pwd`/.config/nvim/init.vim  ~/.config/nvim/init.vim
ln -s -f `pwd`/.ideavimrc  ~/.ideavimrc

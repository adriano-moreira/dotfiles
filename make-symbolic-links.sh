#!/usr/bin/env bash
set -ex

ln -s -f `pwd`/.vimrc_base.vim  ~/.vimrc_base.vim 
ln -s -f `pwd`/.vimrc  ~/.vimrc
ln -s -f `pwd`/.ideavimrc  ~/.ideavimrc

#nvim
mkdir -p ~/.config
ln -s -f `pwd`/.config/nvim  ~/.config

#tmux
ln -s -f `pwd`/.tmux.conf ~/.tmux.conf


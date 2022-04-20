#!/usr/bin/env bash
set -ex

BASE=`dirname $(readlink -f $0)`
echo $BASE

ln -s -f $BASE/.ideavimrc  ~/.ideavimrc

mkdir -p ~/tools
ln -s -f $BASE/.bin  ~/tools

#tmux
ln -s -f $BASE/.tmux.conf ~/.tmux.conf


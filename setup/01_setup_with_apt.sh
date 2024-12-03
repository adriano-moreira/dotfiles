#!/bin/bash
set -ex

sudo apt update
sudo apt upgrade -y

sudo apt install zsh htop -y
sudo apt install wget curl jq -y
sudo apt install neovim -y

sudo apt install git gitk -y
git config --global user.name 'Adriano Moreira da Silva'
git config --global user.email adri3d@gmail.com

sudo apt install tilix -y

if ! command -v tldr; then
  sudo apt install tldr -y
  tldr --update
fi

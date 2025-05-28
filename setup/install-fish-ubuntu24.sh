#!/bin/bash
set -ex

# install from PPA
sudo add-apt-repository ppa:fish-shell/release-4
sudo apt update -y
sudo apt install fish -y

# set to login shell
sudo apt install fish -y

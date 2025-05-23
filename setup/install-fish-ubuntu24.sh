#!/bin/bash
set -ex

sudo add-apt-repository ppa:fish-shell/release-4
sudo apt update -y
sudo apt install fish -y

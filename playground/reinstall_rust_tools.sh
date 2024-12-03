#!/bin/bash
set -ex

if command -v rustup; then
    rustup update
else
    #install some cammons rust project dependences
    sudo apt install build-essential llvm clang -y

    #install rustup
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

    #load env for this script
    . "$HOME/.cargo/env"

    echo "export RUSTFLAGS='-C target-cpu=native'" >> ~/.zshenv
fi

export RUSTFLAGS='-C target-cpu=native'

cargo install bat
cargo install exa
cargo install starship
cargo install bottom
cargo install zellij

sudo apt install pkg-config libssl-dev -y
cargo install nu --locked

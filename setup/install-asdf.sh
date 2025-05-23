#!/bin/bash
set -ex

## config area
ASDF_VERSION='v0.17.0' #see: https://github.com/asdf-vm/asdf/releases
FILE="asdf-$ASDF_VERSION-linux-amd64.tar.gz"


## script area
mkdir -p ~/.local/bin
cd ~/.local/bin

curl -LO "https://github.com/asdf-vm/asdf/releases/download/$ASDF_VERSION/$FILE"

tar xf $FILE

echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bash_profile
echo 'export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"' >> ~/.bash_profile
echo '. <(asdf completion bash)' >> ~/.bashrc


if [ -f ~/.zshrc ]; then
	echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.zshenv
	echo 'export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"' >> ~/.zshenv

	mkdir -p "${ASDF_DATA_DIR:-$HOME/.asdf}/completions"
	./asdf completion zsh > "${ASDF_DATA_DIR:-$HOME/.asdf}/completions/_asdf"

	echo 'fpath=(${ASDF_DATA_DIR:-$HOME/.asdf}/completions $fpath)' >> ~/.zshrc
	echo 'autoload -Uz compinit && compinit' >> ~/.zshrc
fi

if [ -f ~/.config/fish/config.fish ]; then
	echo '
# ASDF configuration code
if not contains "$HOME/.local/bin" $PATH
    set -gx --prepend PATH "$HOME/.local/bin"
end
if test -z $ASDF_DATA_DIR
    set _asdf_shims "$HOME/.asdf/shims"
else
    set _asdf_shims "$ASDF_DATA_DIR/shims"
end

# Do not use fish_add_path (added in Fish 3.2) because it
# potentially changes the order of items in PATH
if not contains $_asdf_shims $PATH
    set -gx --prepend PATH $_asdf_shims
end
set --erase _asdf_shims
' >> ~/.config/fish/config.fish 
	
	mkdir -p ~/.config/fish/completions
	./asdf completion fish > ~/.config/fish/completions/asdf.fish
fi

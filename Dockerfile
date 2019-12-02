FROM archlinux/base

RUN pacman -Sy --noconfirm neovim \
	awk \
	curl \
	fish \ 
	git \
	htop \
	nodejs \
	tldr \
	tmux \
	zsh 

WORKDIR /root

COPY . dotfiles

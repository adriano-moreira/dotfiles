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

RUN curl https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh | zsh || true

WORKDIR /root

COPY . dotfiles

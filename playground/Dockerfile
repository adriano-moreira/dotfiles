FROM archlinux

RUN pacman -Sy --noconfirm neovim \
	awk \
	curl \
	fish \ 
	git \
	htop \
	nodejs \
	tldr \
	tmux \
	neofetch \
	zsh 

RUN useradd adriano

WORKDIR /home/adriano
RUN chown -R adriano /home/adriano

RUN su - adriano -c 'curl https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh | zsh'


COPY . dotfiles
RUN chown adriano -R dotfiles

USER adriano

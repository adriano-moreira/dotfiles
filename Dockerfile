FROM archlinux/base

RUN pacman -Sy --noconfirm neovim tmux zsh fish awk htop curl git nodejs

WORKDIR /root
COPY . dotfiles

CMD ["zsh"]

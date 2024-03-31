FROM ubuntu:22.04

RUN apt update
RUN apt upgrade -y

RUN apt install -y zsh fish htop

RUN apt install -y wget apt-transport-https software-properties-common
RUN wget -q https://packages.microsoft.com/config/ubuntu/22.04/packages-microsoft-prod.deb
RUN dpkg -i packages-microsoft-prod.deb
RUN rm packages-microsoft-prod.deb
RUN apt update
RUN apt install -y powershell

RUN useradd -ms /bin/bash adriano
USER adriano
WORKDIR /home/adriano

#!/bin/bash

user="jph"

apt -y install neovim nginx neofetch fzf

apt update
apt upgrade

cp motd /etc/motd
# mv sshd_config /etc/ssh/sshd_config
cp .bashrc /home/"$user"
cp .inputrc /home/"$user"
cp .profile /home/"$user"

useradd "$user"
adduser "$user" sudo
passwd "$user"



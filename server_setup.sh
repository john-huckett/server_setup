#!/bin/bash

user="jph"
apps=""

apt update
apt upgrade

apt -y install neovim nginx neofetch fzf

cp motd /etc/motd
# mv sshd_config /etc/ssh/sshd_config
cp .bashrc /home/"$user"
cp .inputrc /home/"$user"
cp .profile /home/"$user"

useradd "$user"
adduser "$user" sudo
passwd "$user"



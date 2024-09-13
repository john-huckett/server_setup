#!/bin/bash

user="jph"

apt install neovim neofetch

apt update
apt upgrade

useradd "$user"
adduser "$user" sudo

cp motd /etc/motd
# mv sshd_config /etc/ssh/sshd_config
cp .bashrc /home/"$user"
cp .inputrc /home/"$user"
cp .profile /home/"$user"


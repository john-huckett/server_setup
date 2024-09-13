#!/bin/bash

user="jph"

apt update && apt upgrade

apt -y install git neovim neofetch fzf nginx &&

# useradd -m "$user" &&
# adduser "$user" sudo &&

# passwd "$user" &&

cp motd /etc/motd &&
# mv sshd_config /etc/ssh/sshd_config
cp .bashrc /home/"$user" &&
cp .inputrc /home/"$user" &&
cp .profile /home/"$user"




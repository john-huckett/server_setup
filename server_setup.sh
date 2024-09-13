#!/bin/bash

user="jph"
apps="git exa neofetch"

apt update
apt upgrade
apt install "$apps"
useradd "$user"
adduser "$user" sudo
mv motd /etc/motd
# mv sshd_config /etc/ssh/sshd_config
mv .bashrc /home/"$user"
mv .inputrc /home/"$user"
mv .profile /home/"$user"


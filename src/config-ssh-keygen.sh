#!/bin/bash
source ~/.bashrc
sshEmail="alan.hee@outlook.com"

if [ ! -z $USER_EMAIL ]; then
	sshEmail=$USER_EMAIL
fi

read -p "Generate ssh keys with email (default $sshEmail): " ssh_email
if [ ! -z $ssh_email ]; then
	sshEmail=$ssh_email
fi

ssh-keygen -t rsa -C "$sshEmail"
echo "SSH keys generated."

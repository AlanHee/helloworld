#!/bin/bash
echo 'hello termux!';

apt update -y

scripts=(
	termux-change-repo
	termux-get-tools
	termux-config-full-screen
	termux-config-remote-ip
	termux-config-storage
	config-git
	config-neovim
	ssh-key-gen
	ssh-push-pub
	vpn-set-client
)

for script in ${scripts[@]}
do
  bash $script.sh
done
termux-reload-settings

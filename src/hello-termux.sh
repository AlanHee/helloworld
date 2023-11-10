#!/bin/bash
scripts=(
	termux-change-repo
	termux-get-tools
	termux-config-full-screen
	termux-config-storage
	config-profile-settings
	termux-config-remote-ip
	config-git
	config-neovim
	config-ssh-keygen
	config-ssh-push-pub
	get-vpn-client
)

for script in ${scripts[@]}; do
	$script.sh
done

termux-reload-settings

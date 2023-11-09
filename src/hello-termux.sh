#!/bin/bash

scripts=(
	termux-change-repo
	termux-get-tools
	termux-config-full-screen
	termux-config-storage
	config-profile-settings
	config-git
	config-neovim
	config-ssh-keygen
	config-ssh-push-pub
	config-vpn-client
)

for script in ${scripts[@]}; do
	$script.sh
done

termux-reload-settings

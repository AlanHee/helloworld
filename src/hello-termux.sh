#!/bin/bash
scripts=(
	termux-get-tools
	termux-set-full-screen
	termux-set-storage
	config-set-profile
	config-set-git
	config-set-vim
	config-set-ssh
	config-gen-sshkeys
	config-push-pubkey
	config-get-scripts
	termux-change-style
)

for script in ${scripts[@]}; do
	echo "Runing $script.sh ..."
	$script.sh
done

termux-reload-settings

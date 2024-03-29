#!/bin/bash
scripts=(
	termux-change-repo
	termux-install-tools
	termux-config-full-screen
	termux-config-storage
	config-user-name
	config-user-email
	config-remote-ip
	config-git
	config-vim
	config-ssh-keygen
	config-ssh-push-pub
	get-more-scripts
	termux-install-ubuntu
	termux-change-style
)

for script in ${scripts[@]}; do
	$script.sh
done

termux-reload-settings

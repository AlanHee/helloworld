#!/bin/bash
scripts=(
	termux-install-tools
	termux-set-full-screen
	termux-set-storage
	set-config
	set-git
	set-vim
	set-ssh
	set-ssh-keygen
	set-ssh-push-pub
	get-more-scripts
	termux-change-style
)

for script in ${scripts[@]}; do
	echo "Runing $script.sh ..."
	$script.sh
done

termux-reload-settings

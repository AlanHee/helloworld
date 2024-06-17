#!/bin/bash
scripts=(
	termux-install-tools
	termux-set-full-screen
	termux-set-storage
	set-config-name
	set-config-email
	set-config-remote-ip
	set-git
	set-vim
	ssh-keygen
	ssh-push-pub
	get-more-scripts
	termux-change-style
)

for script in ${scripts[@]}; do
	echo "Runing $script.sh ..."
	$script.sh
done

termux-reload-settings

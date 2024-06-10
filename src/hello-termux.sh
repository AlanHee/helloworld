#!/bin/bash
scripts=(
	termux-install-tools
	termux-set-full-screen
	termux-set-storage
	set-your-name
	set-your-email
	set-remote-ip
	set-git
	set-vim
	set-ssh-keygen
	set-ssh-push-pub
	set-more-scripts
	termux-change-style
)

for script in ${scripts[@]}; do
	echo "Runing $script.sh ..."
	$script.sh
done

termux-reload-settings

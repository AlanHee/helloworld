#!/bin/bash
scripts=(
	termux-change-repo
	termux-get-tools
	termux-config-full-screen
	termux-config-storage
	config-user-name
	config-user-email
	termux-config-remote-ip
	config-git
	config-vim
	config-ssh-keygen
	config-ssh-push-pub
	get-openvpn-client
	flutter-swith-host
)

for script in ${scripts[@]}; do
	$script.sh
done

termux-reload-settings

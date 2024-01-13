#!/bin/bash
scripts=(
	termux-change-repo
	termux-get-tools
	termux-config-full-screen
	termux-config-storage
	config-profile-settings
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

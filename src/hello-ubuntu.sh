#!/bin/bash
echo 'hello ubuntu!'
scripts=(
	ubuntu-get-tools
	config-profile-settings
	config-git
	config-neovim
	config-ssh-keygen
	ubuntu-get-dart
	ubuntu-get-dart-frog
	ubuntu-get-bt-panel
	ubuntu-get-vpn-server
	ubuntu-config-ports
)

for script in ${scripts[@]}; do
	bash $script.sh
done

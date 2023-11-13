#!/bin/bash
scripts=(
	config-profile-settings
	ubuntu-get-vpn-server
	)
scripts2=(
	config-profile-settings
	config-ssh-keygen
	config-git
	config-neovim
	ubuntu-get-vpn-server
	ubuntu-get-dart
	ubuntu-get-dart-frog
	ubuntu-get-flutter
	ubuntu-get-docker
	ubuntu-get-nosql-database
)

scripts1=(
	ubuntu-get-vpn-server
	ubuntu-get-tools
	config-profile-settings
	config-git
	config-neovim
	config-ssh-keygen
	ubuntu-get-dart
	ubuntu-get-dart-frog
	ubuntu-get-bt-panel
)

for script in ${scripts[@]}; do
	bash $script.sh
done

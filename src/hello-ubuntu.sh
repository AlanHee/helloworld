#!/bin/bash
scripts=(
	config-user-name
	config-user-email
	config-ssh-keygen
	config-git
	config-vim
	ubuntu-get-openvpn
	ubuntu-get-dart
	ubuntu-get-dart-frog
	ubuntu-get-flutter
	ubuntu-get-docker
)

for script in ${scripts[@]}; do
	bash $script.sh
done

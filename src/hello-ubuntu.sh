#!/bin/bash
scripts=(
	config-profile-settings
	ubuntu-get-openvpn
)
# scripts=(
# 	config-profile-settings
# 	config-ssh-keygen
# 	config-git
# 	config-vim
# 	ubuntu-get-vpn-server
# 	ubuntu-get-dart
# 	ubuntu-get-dart-frog
# 	ubuntu-get-flutter
# 	ubuntu-get-docker
# 	ubuntu-get-nosql-database
# )

for script in ${scripts[@]}; do
	bash $script.sh
done

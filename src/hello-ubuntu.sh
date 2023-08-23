#!/bin/bash
echo 'hello ubuntu!';
scripts=(
	ubuntu-get-tools
	ubuntu-get-dart
	ubuntu-get-dart-frog
	ubuntu-get-bt-panel
	ubuntu-get-vpn-server
	ubuntu-config-ports
	config-git
	config-neovim
	config-ssh-keygen
)

for script in ${scripts[@]}
do
  bash $script.sh
done

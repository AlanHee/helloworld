#!/bin/bash
echo 'hello ubuntu!';
scripts=(
	ubuntu-get-tools
	config-git
	config-neovim
	ubuntu-get-dart
	ubuntu-get-dart-frog
	ssh-key-gen
	ubuntu-get-bt-panel
	ubuntu-get-vpn-server
	ubuntu-config-ports
)

for script in ${scripts[@]}
do
  bash $script.sh
done

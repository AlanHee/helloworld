#!/bin/bash
echo 'hello ubuntu!';
scripts=(
	ubuntu-get-tools
	neovim-config-plugs
	ubuntu-get-dart
	ubuntu-get-dart-frog
	git-global-config
	git-auto-auth
	ssh-key-gen
	ubuntu-get-bt-panel
	ubuntu-get-vpn-server
	ubuntu-config-ports
)

for script in ${scripts[@]}
do
  bash $script.sh
done

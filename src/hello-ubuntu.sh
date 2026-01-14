#!/bin/bash
scripts=(
	config-set-profile
	config-set-git
	config-set-vim
	config-set-ssh
	config-gen-sshkeys
	config-push-pubkey
	config-get-scripts
	ubuntu-dart-get
	ubuntu-dart-frog-get
	ubuntu-server-openvpn
)

for script in ${scripts[@]}; do
	echo "Runing $script.sh ..."
	bash $script.sh
done

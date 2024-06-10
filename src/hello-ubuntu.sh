#!/bin/bash
scripts=(
	set-your-name
	set-your-email
	set-ssh-keygen
	set-git
	set-vim
	ubuntu-dart-get
	ubuntu-dart-frog-get
	ubuntu-openvpn-get
)

for script in ${scripts[@]}; do
	echo "Runing $script.sh ..."
	bash $script.sh
done

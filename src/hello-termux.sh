#!/bin/bash
echo 'hello termux!';
scripts=(
	termux-change-repo
	termux-get-tools
	termux-config-full-screen
	termux-config-remote-ip
	termux-config-storage
	neovim-config-plugs
	git-global-config
	git-auto-auth
	ssh-key-gen
	ssh-push-pub
	vpn-set-client
)

for script in ${scripts[@]}
do
  bash $script.sh
done
termux-reload-settings

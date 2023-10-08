#!/bin/bash
source $SRCHOME/pre-load-functions.sh

function getVimPlugManager() {
	echo "Installing vim-plug manager..."
	git clone https://github.com/junegunn/vim-plug
	mkdir -p ~/.config/nvim/autoload
	cp -f vim-plug/plug.vim ~/.config/nvim/autoload/plug.vim
	rm vim-plug -rf
}

if [ -e ~/.config/nvim/autoload/plug.vim ]; then
	yesOrNo "Override existed vim-plug?(y/n)  :" getVimPlugManager
fi

function getVimPlugs() {
	echo "Installing default plugs..."
	cd $PROFILE
	cp -f init.vim ~/.config/nvim/
	echo 'Restored your nvim profile'
	# update plugs
	nvim +PlugClean[!] +PlugUpdate +qa
}

if [ -e ~/.config/nvim/init.vim ]; then
	yesOrNo "Override existed init.vim settings?(y/n)  :" getVimPlugs
fi

#!/bin/bash
source funs.sh

function getPlugManager() {
	git clone https://github.com/junegunn/vim-plug
	mkdir -p ~/.config/nvim/autoload
	cp -f vim-plug/plug.vim ~/.config/nvim/autoload/plug.vim
	rm vim-plug -rf
}

if [ ~/.config/nvim/autoload/plug.vim ]; then
	yesOrNo "Override existed vim-plug?(y/n)  :" getPlugManager
fi

function getPlugs() {
	cd $SRC/profile
	cp -f init.vim ~/.config/nvim/
	nvim +PlugClean[!] +PlugUpdate +qa
}

if [ ~/.config/nvim/init.vim ]; then
	yesOrNo "Override existed init.vim settings?(y/n)  :" getPlugs
fi

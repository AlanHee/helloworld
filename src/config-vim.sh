#!/bin/bash
source funs.sh

function getPlugManager() {
	git clone https://github.com/junegunn/vim-plug
	mkdir -p ~/.config/nvim/autoload
	cp -f vim-plug/plug.vim ~/.vim/autoload/plug.vim
	rm vim-plug -rf
}

if [ ~/.vim/autoload/plug.vim ]; then
	yesOrNo "Override existed vim-plug?(y/n)  :" getPlugManager
fi

function getPlugs() {
	cd $SRC/profile
	cp -f .vimrc ~
	vim +PlugClean[!] +PlugUpdate +qa
}

if [ ~/.vimrc ]; then
	yesOrNo "Override existed .vimrc settings?(y/n)  :" getPlugs
fi
